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

    public partial class add_hospital : System.Web.UI.Page
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
                //fillrpt();


                if (Session["user"] == null)
                {

                    Response.Redirect("Login.aspx");
                }
            }
        }
        //   public void fillrpt()
        //{
        //    String qry = "select * from hospital";
        //    cmd = new SqlCommand(qry, con);
        //    dt = new DataTable();
        //    adp = new SqlDataAdapter(cmd);
        //    adp.Fill(dt);
        //    rpt.DataSource = dt;
        //    rpt.DataBind();
        //}

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (txtlicence.HasFile)
            {
                if (txtname.Text != "" && txtadd.Text != "" && txtemail.Text != "" && txtcwebsite.Text != "" && txtcity.Text != "" && txtcpincode.Text != "" && txtcontact.Text != "")
                {
                    string ext = Path.GetExtension(txtlicence.FileName);
                    string path = "~/Upload/hospital/" + txtname.Text + txtlicence.FileName + ext;
                    txtlicence.SaveAs(Server.MapPath(path).ToString());


                    con.Open();
                    string qry = "insert into hospital  values (@Name,@Address,@Emailid,@Website,@City,@Pincode,@Image,@Contact)";
                    cmd = new SqlCommand(qry, con);
                    cmd.Parameters.AddWithValue("@Name", txtname.Text);
                    cmd.Parameters.AddWithValue("@Address", txtadd.Text);
                    cmd.Parameters.AddWithValue("@Emailid", txtemail.Text);
                    cmd.Parameters.AddWithValue("@Website", txtcwebsite.Text);
                    cmd.Parameters.AddWithValue("@City", txtcity.Text);
                    cmd.Parameters.AddWithValue("@Pincode", txtcpincode.Text);


                    cmd.Parameters.AddWithValue("@Image", path);



                    cmd.Parameters.AddWithValue("@Contact", txtcontact.Text);
                    int i;
                    i = cmd.ExecuteNonQuery();

                    con.Close();
                    if (i > 0)
                    {
                        Response.Redirect("hospital-list.aspx");

                    }
                }
            }
            else
            {
                if (txtname.Text == "")
                {

                    Label1.Text = "Hospital Name Required !";
                    Label1.ForeColor = System.Drawing.Color.Red;



                }
                else
                {
                    Label1.Text = "";
                }
                if (txtadd.Text == "")
                {

                    //Label2.Text = "Company Name Required !";
                    Label2.Text = "Hospital Address Required !";
                    Label2.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label2.Text = "";
                }
                if (txtemail.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label3.Text = "Email Address Required !";
                    Label3.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label3.Text = "";
                }
                if (txtcwebsite.Text == "")
                {


                    Label4.Text = "Website Required !";
                    Label4.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label4.Text = "";
                }
                if (txtcity.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label5.Text = "City Name Required !";
                    Label5.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label5.Text = "";
                }
                if (txtcpincode.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label6.Text = "Pincode Name Required !";
                    Label6.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label6.Text = "";
                }
                if (txtlicence.FileName == "")
                {


                    Label7.Text = "Hospital Image Required !";
                    Label7.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label7.Text = "";
                }
                if (txtcontact.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label8.Text = "Contact Number Required !";
                    Label8.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label8.Text = "";
                }
            }
        }
        protected void cancel_Click(object sender, EventArgs e)
        {
            txtname.Text = string.Empty;
            txtadd.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtcwebsite.Text = string.Empty;
            txtcity.Text = string.Empty;
            txtcpincode.Text = string.Empty;

            txtcontact.Text = string.Empty;


        }
    }
}