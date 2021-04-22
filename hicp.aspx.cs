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

namespace InsuranceHub
{
    public partial class hicp : System.Web.UI.Page
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
            con.Open();
            string qry = "select * from health_insu where hid=@Id";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", Session["healthinsuid"].ToString());
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {

                dr.Read();

                txtname.Text = dr["clientname"].ToString();
                txtcontactno.Text = dr["mobileno"].ToString();
                txtemailid.Text = dr["emailid"].ToString();
                txtcity.Text = dr["city"].ToString();


                dr.Close();

            }
            con.Close();

        }

        protected void calculatepremium_Click(object sender, EventArgs e)
        {

            string a = RadioButton1.Checked.ToString();
            string b = RadioButton2.Checked.ToString();
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {

                if (a != "" && b != "" && txtpincode.Text != "" && txtstate.Text != "")
                {
                    con.Open();
                    string qry = "update health_insu set plantype=@Plantype,state=@state,pincode=@pincode,isdelete=@isd,insu_cust_id=@icid,loginid=@lid where hid=@Id";
                    cmd = new SqlCommand(qry, con);
                    if (RadioButton1.Checked)
                    {
                        cmd.Parameters.AddWithValue("@Plantype", RadioButton1.Text);
                    }

                    else if (RadioButton2.Checked)
                    {
                        cmd.Parameters.AddWithValue("@Plantype", RadioButton2.Text);
                    }

                    cmd.Parameters.AddWithValue("@State", txtstate.Text);
                    cmd.Parameters.AddWithValue("@Pincode", txtpincode.Text);
                    cmd.Parameters.AddWithValue("@isd", "0");
                    cmd.Parameters.AddWithValue("@lid", Session["login"].ToString());
                    cmd.Parameters.AddWithValue("@icid", DateTime.Now.ToString("ddMMyyyyhhmmss"));
                    cmd.Parameters.AddWithValue("@Id", Session["healthinsuid"]);
                    int i;
                    i = cmd.ExecuteNonQuery();

                    con.Close();




                    if (i > 0)
                    {
                        con.Open();
                        string q1 = "select * from health_insu order by hid desc";
                        cmd = new SqlCommand(q1, con);
                        dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            dr.Read();
                            Session["healthinsuid"] = dr["hid"];
                            Session["suminsu"] = dr["suminsured"];
                            Session["insucustid"] = dr["insu_cust_id"];
                            Session["ptype"] = dr["plantype"];
                            dr.Close();
                        }
                        Response.Redirect("hishowplan.aspx");
                    }
                }

                else
                {
                    if (!RadioButton1.Checked)
                    {

                        Label1.Text = "Please Select Gender !";
                        Label1.ForeColor = System.Drawing.Color.Red;



                    }
                    else if (!RadioButton2.Checked)
                    {
                        Label1.Text = "Please Select Gender !";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        Label1.Text = "";
                    }

                    if (txtstate.Text == "")
                    {

                        Label3.Text = " State Required !";
                        Label3.ForeColor = System.Drawing.Color.Red;



                    }
                    else
                    {
                        Label3.Text = "";
                    }
                    if (txtpincode.Text == "")
                    {

                        //Label2.Text = "Company Name Required !";
                        Label2.Text = "Pincode Required !";
                        Label2.ForeColor = System.Drawing.Color.Red;


                    }
                    else
                    {
                        Label2.Text = "";
                    }
                }
            }
        }
    }
}