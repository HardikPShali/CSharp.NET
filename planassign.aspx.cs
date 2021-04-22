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
    public partial class planassign : System.Web.UI.Page
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
            
            if (Panel2.Visible == true)
            {
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                
            }
        }

     
        protected void save_Click(object sender, EventArgs e)
        {
           
            if (txtname.Text != "" && gender.Text != "" && ls.Text != "" && bdate.Text != "" && mno.Text != "" && edu.Text != "")
            {
                Panel3.Visible = true;

                Panel2.Visible = false;
            }

            if (txtname.Text == "")
            {

                Label1.Text = "Enter Your Full Name";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label1.Text = "";
            }
            if (gender.Text == "Gender")
            {

                Label6.Text = "Gender Required !";
                Label6.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label6.Text = "";
            }
            if (ls.Text == "Your life stage")
            {

                Label7.Text = "Select Your Life Stage";
                Label7.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label7.Text = "";
            }
            if (edu.Text == "Education")
            {

                Label8.Text = "Select Your Education";
                Label8.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label8.Text = "";
            }
            if (bdate.Text == "")
            {

                Label2.Text = "Select Your Birthdate";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label2.Text = "";
            }
            if (mno.Text == "")
            {

                Label3.Text = "Enter Mobile Number";
                Label3.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label3.Text = "";
            }
            
        }
        protected void save1_Click(object sender, EventArgs e)
        {
            if (smokey.Checked || smokeyn.Checked)
            {
                Panel4.Visible = true;
                Panel3.Visible = false;
                Panel2.Visible = false;
                
            }
            else
            {
                Label4.Text = "Select If You Smoke Or Not";
                Label4.ForeColor = System.Drawing.Color.Red;
               
            }
            if (smokey.Checked || smokeyn.Checked && Label4.Text == "Select If You Smoke Or Not")
            {
                Label4.Text = "";
            }
            
        }
        protected void save2_Click(object sender, EventArgs e)
        {
            if (annualincome.Text != "Select Annual Income")
            {
                Panel5.Visible = true;
                Panel4.Visible = false;
                Panel3.Visible = false;
                Panel2.Visible = false;
                Label5.Text = "";
            }
            else
            {
                Label5.Text = "Select Your Annual Income";
                Label5.ForeColor = System.Drawing.Color.Red;
            
            }
            
        }
      
        protected void save3_Click(object sender, EventArgs e)
        {
          
            string smokeyes = smokey.Checked.ToString();

            Session["cover"] = Cover.Text.ToString();
            string smokeyno = smokeyn.Checked.ToString();
            if (smokey.Checked == true)
            {
                con.Open();
                string qry = "insert into terminsu_pi(clientname,gender,lifestage,bday,mobile,education,smoke,income,cover,coverage,isdelete,loginid,insu_cust_id,isexpire)  values(@clientname,@gender,@lifestage,@bday,@mobile,@education,@smoke,@income,@cover,@coverage,@isdelete,@loginid,@insu_cust_id,@isexpire)";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@clientname", txtname.Text.ToString());
                cmd.Parameters.AddWithValue("@gender", gender.Text.ToString());
                cmd.Parameters.AddWithValue("@lifestage", ls.Text.ToString());
                cmd.Parameters.AddWithValue("@bday", bdate.Text.ToString());
                cmd.Parameters.AddWithValue("@mobile", mno.Text.ToString());
                cmd.Parameters.AddWithValue("@education", edu.Text.ToString());
                cmd.Parameters.AddWithValue("@smoke", smokey.Text.ToString());
                cmd.Parameters.AddWithValue("@income", annualincome.Text.ToString());
                cmd.Parameters.AddWithValue("@cover", Cover.Text.ToString());
                cmd.Parameters.AddWithValue("@coverage", cage.Text.ToString());
                cmd.Parameters.AddWithValue("@isdelete", '0');
                cmd.Parameters.AddWithValue("@loginid", Session["login"].ToString());
                cmd.Parameters.AddWithValue("@insu_cust_id", DateTime.Now.ToString("ddMMyyyyhhmmss"));
                cmd.Parameters.AddWithValue("@isexpire", '0');




                int i = cmd.ExecuteNonQuery();



                con.Close();
                if (i > 0)
                {
                    con.Open();
                    string q1 = "select id from terminsu_pi order by id desc";
                    cmd = new SqlCommand(q1, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["termid"] = dr["id"];

                        dr.Close();
                    }
                    string q15 = "select mobile from terminsu_pi order by id desc";
                    cmd = new SqlCommand(q15, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["termmobile"] = dr["mobile"];

                        dr.Close();
                    }
                    string q4 = "select insu_cust_id from terminsu_pi order by id desc";
                    cmd = new SqlCommand(q4, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["insucustid"] = dr["insu_cust_id"];
                        dr.Close();
                    }
                    string q5 = "select cover from terminsu_pi order by id desc";
                    cmd = new SqlCommand(q5, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["covera"] = dr["cover"];
                        dr.Close();
                    }


                    string q9 = "select clientname from terminsu_pi order by id desc";
                    cmd = new SqlCommand(q9, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["cname"] = dr["clientname"];
                        dr.Close();
                    }
                    Response.Redirect("~/terminsu.aspx");
                    con.Close();
                }

            }
            
               
            
            else
            {
                con.Open();
                string qry = "insert into terminsu_pi(clientname,gender,lifestage,bday,mobile,education,smoke,income,cover,coverage,isdelete,loginid,insu_cust_id,isexpire)  values(@clientname,@gender,@lifestage,@bday,@mobile,@education,@smoke,@income,@cover,@coverage,@isdelete,@loginid,@insu_cust_id,@isexpire)";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@clientname", txtname.Text.ToString());
                cmd.Parameters.AddWithValue("@gender", gender.Text.ToString());
                cmd.Parameters.AddWithValue("@lifestage", ls.Text.ToString());
                cmd.Parameters.AddWithValue("@bday", bdate.Text.ToString());
                cmd.Parameters.AddWithValue("@mobile", mno.Text.ToString());
                cmd.Parameters.AddWithValue("@education", edu.Text.ToString());
                cmd.Parameters.AddWithValue("@smoke", smokeyn.Text.ToString());
                cmd.Parameters.AddWithValue("@income", annualincome.Text.ToString());
                cmd.Parameters.AddWithValue("@cover", Cover.Text.ToString());
                cmd.Parameters.AddWithValue("@coverage", cage.Text.ToString());
                cmd.Parameters.AddWithValue("@isdelete", '0');
                cmd.Parameters.AddWithValue("@loginid", Session["login"].ToString());
                cmd.Parameters.AddWithValue("@insu_cust_id", DateTime.Now.ToString("ddMMyyyyhhmmss"));
                cmd.Parameters.AddWithValue("@isexpire", '0');
                 int i=cmd.ExecuteNonQuery();
       
                con.Close();
                if (i > 0)
                {
                      con.Open();
                    string q2 = "select id from terminsu_pi order by id desc";
                    cmd = new SqlCommand(q2, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["termid"] = dr["id"];
                        dr.Close();
                    }
                    string q3 = "select insu_cust_id from terminsu_pi order by id desc";
                    cmd = new SqlCommand(q3, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["insucustid"] = dr["insu_cust_id"];
                        dr.Close();
                    }
                    string q6 = "select cover from terminsu_pi order by id desc";
                    cmd = new SqlCommand(q6, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["covera"] = dr["cover"];
                        dr.Close();
                    }
                    string q16 = "select mobile from terminsu_pi order by id desc";
                    cmd = new SqlCommand(q16, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["termmobile"] = dr["mobile"];

                        dr.Close();
                    }
                    string q10 = "select clientname from terminsu_pi order by id desc";
                    cmd = new SqlCommand(q10, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["cname"] = dr["clientname"];
                        dr.Close();
                    }
                    Response.Redirect("~/terminsu.aspx");
                    con.Close();
                }
               
              
            }
            

        }
        protected void save4_Click(object sender, EventArgs e)
        {

            if (txtiname.Text != "" && txtmobileno.Text != "" && txtemailid.Text != "" && txtcity.Text != "" && txtcity.Text != "")
            {


                con.Open();
                string qry = "insert into health_insu(clientname,mobileno,emailid,city,suminsured) values('" + txtiname.Text + "','" + txtmobileno.Text + "','" + txtemailid.Text + "','" + txtcity.Text + "','" + ddlsuminsured.Text + "')";
                cmd = new SqlCommand(qry, con);

                int i;
                i = cmd.ExecuteNonQuery();

                con.Close();

                if (i > 0)
                {
                    con.Open();
                    string q1 = "select hid from health_insu order by hid desc";
                    cmd = new SqlCommand(q1, con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["healthinsuid"] = dr["hid"];

                        dr.Close();
                    }
                    Response.Redirect("hicp.aspx");
                }

            }
            else
            {
                if (txtiname.Text == "")
                {

                    Label9.Text = " Name Required !";
                    Label9.ForeColor = System.Drawing.Color.Red;



                }
                else
                {
                    Label9.Text = "";
                }
                if (txtmobileno.Text == "")
                {

                    //Label2.Text = "Company Name Required !";
                    Label10.Text = "Mobile No. Required !";
                    Label10.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label10.Text = "";
                }
                if (txtemailid.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label11.Text = "Email Address Required !";
                    Label11.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label11.Text = "";
                }
                if (txtcity.Text == "")
                {


                    Label12.Text = "City Required !";
                    Label12.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label12.Text = "";
                }

            }


        }
    }
}