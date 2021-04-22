using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace InsuranceHub
{
    public partial class hishowplan : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlDataReader dr;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            fillrpt();
        }
        public void fillrpt()
        {
            String qry = "select p.policy_id,p.name as pname,c.image,p.sum_insured,p.cost from policy p,insu_type i,comp_reg c where p.insu_type_id='2' and p.insu_type_id=i.insu_type_id and p.insu_comp_id=c.comp_id and p.sum_insured<=@si ";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@si", Session["suminsu"].ToString());
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();
        }
        protected void buybtn_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "update health_insu set policy_id=@pid where hid=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", Session["healthinsuid"].ToString());
                cmd.Parameters.AddWithValue("@pid", Convert.ToInt32(lnk.CommandArgument.ToString()));
                int i;
                i = cmd.ExecuteNonQuery();

                fillrpt();
                con.Close();
                if (i > 0)
                {
                    con.Open();
                    String d = "select cost from policy where policy_id=@ID";
                    cmd = new SqlCommand(d, con);
                    cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(lnk.CommandArgument.ToString()));
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {

                        dr.Read();


                        Session["price"] = dr["cost"].ToString();
                        dr.Close();

                    }
                    Response.Redirect("hifd.aspx");

                }

            }
        }
    }
}