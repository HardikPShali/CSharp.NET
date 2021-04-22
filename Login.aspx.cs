using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace InsuranceHub
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlDataReader dr;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user"] = txtemail.Text;

            if (!IsPostBack)
            {
                if (Request.Cookies["userid"] != null)

                    txtemail.Text = Request.Cookies["userid"].Value;

                if (Request.Cookies["pwd"] != null)

                    txtpass.Attributes.Add("value", Request.Cookies["pwd"].Value);
                if (Request.Cookies["userid"] != null && Request.Cookies["pwd"] != null)
                    rememberme.Checked = true;
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (txtemail.Text != "" && txtpass.Text != "")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
                con.Open();
                string q = "select * from admin_login where email='" + txtemail.Text + "' and password='" + txtpass.Text + "' ";
                cmd = new SqlCommand(q, con);

                cmd.Parameters.AddWithValue("@email_id", txtemail.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtpass.Text.Trim());
                cmd.ExecuteNonQuery();
                int res = cmd.ExecuteNonQuery();
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    Session["login"] = dr["lid"].ToString();
                    Session["user"] = txtemail.Text;
                    Session["usern"] = dr["username"].ToString();
                    dr.Close();
                    if (rememberme.Checked == true)
                    {
                        Response.Cookies["userid"].Value = txtemail.Text;
                        Response.Cookies["pwd"].Value = txtpass.Text;
                        Response.Cookies["userid"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(15);
                    }

                    else
                    {

                        Response.Cookies["userid"].Expires = DateTime.Now.AddDays(-1);

                        Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(-1);

                    }
                    Response.Redirect("~/Dashboard.aspx");
                }
                else
                {
                    Label3.Text = "Incorrect Email and Password";
                    Label3.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                if (txtemail.Text == "")
                {

                    //Label2.Text = "Company Name Required !";
                    Label1.Text = "Email Required!";
                    Label1.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label1.Text = "";
                }
                if (txtpass.Text == "")
                {

                    //Label2.Text = "Company Name Required !";
                    Label2.Text = "Password Required!";
                    Label2.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label2.Text = "";
                }
            }

        }


        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/register.aspx");
        }
    }
}