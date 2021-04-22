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
    public partial class admin_profile : System.Web.UI.Page
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
            String qry = "select * from admin_login where lid=@Id";

            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", Session["login"].ToString());
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
                string qry = "select * from admin_login where lid=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", lnk.CommandArgument.ToString());
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    dr.Read();
                    txtuname.Text = dr["username"].ToString();
                    txtuemailid.Text = dr["email"].ToString();
                    txtupass.Text = dr["password"].ToString();
                   



                    Session["id"] = lnk.CommandArgument.ToString();

                    dr.Close();

                }



                con.Close();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "editmodel", "$('#myModal').modal();", true);
            }
        }





        


        protected void update_Click(object sender, EventArgs e)
        {

           

            con.Open();
            string qry = "update admin_login set username=@Name,emailid=@Emailid,password=@Password where lid=@Id";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Name", txtuname.Text);
            cmd.Parameters.AddWithValue("@Emailid", txtuemailid.Text);
            cmd.Parameters.AddWithValue("@Password", txtupass.Text);
           
            cmd.Parameters.AddWithValue("@Id", Session["loginid"]);
            cmd.ExecuteNonQuery();
            fillrpt();
            con.Close();


        }


    }
}