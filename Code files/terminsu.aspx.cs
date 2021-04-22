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
    public partial class terminsu : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlDataReader dr;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("Login.aspx");
                }


            }

            fillrpt();
        }
        public void fillrpt()
        {
            String qry = "select p.policy_id,p.policy_no,p.name as pname,i.type,c.name as cname,c.image,p.issuedate,p.validity,p.no_of_person,p.total_adult,p.no_of_son,p.no_of_daughter,p.sum_insured,p.cost from policy p,insu_type i,comp_reg c where p.insu_type_id='5' and  p.insu_type_id=i.insu_type_id and p.insu_comp_id=c.comp_id";
            cmd = new SqlCommand(qry, con);
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();
        }
        protected void buy_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "update terminsu_pi set plan_id=@pid where id=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", Session["termid"].ToString());
                cmd.Parameters.AddWithValue("@pid", Convert.ToInt32(lnk.CommandArgument.ToString()));
                int i;
                i = cmd.ExecuteNonQuery();
               
                fillrpt();
                con.Close();
                if (i > 0)
                {
                    con.Open();
                    string q1 = "select * from policy where policy_id=@ID";
                    cmd = new SqlCommand(q1, con);
                    cmd.Parameters.AddWithValue("@ID",Convert.ToInt32(lnk.CommandArgument.ToString()));
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["policyname"] = dr["name"];
                        Session["pno"] = dr["policy_no"];
                        Session["idate"] = dr["issuedate"];
                        dr.Close();
                    }

                    Response.Redirect("termeligibitycheck.aspx");

                }
              
            }
        }

    }
}