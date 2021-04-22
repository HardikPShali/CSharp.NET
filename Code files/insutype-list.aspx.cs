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
    public partial class insutype_list : System.Web.UI.Page
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

                fillrpt();
            }
        }

        public void fillrpt()
        {
            String qry = "select * from insu_type";
            cmd = new SqlCommand(qry, con);
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();
        }


        protected void edit_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "select * from insu_type where insu_type_id=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", lnk.CommandArgument.ToString());
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    dr.Read();
                    txttype.Text = dr["type"].ToString();



                    Session["id"] = lnk.CommandArgument.ToString();

                    dr.Close();

                }



                con.Close();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#myModal').modal();", true);
            }
        }

        protected void del_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "delete from insu_type where insu_type_id=@id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(lnk.CommandArgument.ToString()));
                cmd.ExecuteNonQuery();
                fillrpt();
                con.Close();

            }
        }


        protected void update_Click(object sender, EventArgs e)
        {


            con.Open();
            string qry = "update insu_type set type=@Type where insu_type_id=@Id";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Type", txttype.Text);
            cmd.Parameters.AddWithValue("@Id", Session["id"]);
            cmd.ExecuteNonQuery();
            fillrpt();
            con.Close();


        }
    }
}