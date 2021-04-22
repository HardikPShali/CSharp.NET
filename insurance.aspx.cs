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
    public partial class insurance : System.Web.UI.Page
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
                subtype();
                ddlcompany();

                //fillrpt();

                if (Session["user"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        //public void fillrpt()
        //{
        //    String qry = "select * from policy";
        //    cmd = new SqlCommand(qry, con);
        //    dt = new DataTable();
        //    adp = new SqlDataAdapter(cmd);
        //    adp.Fill(dt);
        //    rpt.DataSource = dt;
        //    rpt.DataBind();

        //}


        protected void subtype()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from insu_type", con);
            cmd.CommandType = CommandType.Text;
            type.DataSource = cmd.ExecuteReader();
            type.DataTextField = "type";
            type.DataValueField = "insu_type_id";
            type.DataBind();
            
            con.Close();

        }
        protected void ddlcompany()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from comp_reg", con);
            cmd.CommandType = CommandType.Text;
            company.DataSource = cmd.ExecuteReader();
            company.DataTextField = "name";
            company.DataValueField = "comp_id";
            company.DataBind();
            
            con.Close();

        }

        protected void save_Click(object sender, EventArgs e)
        {
            if (txtpno.Text != "" && txtname.Text != "" && type.Text != "" && company.Text != "" && isuuedate.Text != "" && validity.Text != "" && person.Text != "" && adult.Text != "" && son.Text != "" && daughter.Text != "" && suminsured.Text != "" && cost.Text != "")
            {
                con.Open();
                string qry = "insert into policy  values('" + txtpno.Text + "','" + txtname.Text + "','" + type.Text + "','" + company.Text + "','" + isuuedate.Text + "','" + validity.Text + "','" + person.Text + "','" + adult.Text + "','" + son.Text + "','" + daughter.Text + "','" + suminsured.Text + "','" + cost.Text + "')";
                cmd = new SqlCommand(qry, con);

                int i;
                i = cmd.ExecuteNonQuery();

                con.Close();
                if (i > 0)
                {
                    Response.Redirect("insurance-list.aspx");

                }
            }
            else
            {
                if (txtpno.Text == "")
                {

                    Label1.Text = "Policy Number Required !";
                    Label1.ForeColor = System.Drawing.Color.Red;



                }
                else
                {
                    Label1.Text = "";
                }
                if (txtname.Text == "")
                {

                 
                    Label2.Text = "Policy Name Required !";
                    Label2.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label2.Text = "";
                }
                //if (type.Text == "--- Select Type ---")
                //{

                    
                //    Label12.Text = "Insurance type Required !";
                //    Label12.ForeColor = System.Drawing.Color.Red;


                //}
                //else
                //{
                //    Label12.Text = "";
                //}
                //if (company.Text == "--- Select company ---")
                //{


                //    Label3.Text = "Company Name Required !";
                //    Label3.ForeColor = System.Drawing.Color.Red;


                //}
                //else
                //{
                //    Label3.Text = "";
                //}
                if (isuuedate.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label4.Text = "Select Issue Date !";
                    Label4.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label4.Text = "";
                }
                if (validity.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label5.Text = "Select Validity Date !";
                    Label5.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label5.Text = "";
                }
                if (person.Text == "")
                {


                    Label6.Text = "Enter Number of person";
                    Label6.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label6.Text = "";
                }
                if (adult.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label7.Text = "Enter Number of Adults";
                    Label7.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label7.Text = "";
                }
                if (son.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label8.Text = "Enter Number of Son";
                    Label8.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label8.Text = "";
                }
                if (daughter.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label9.Text = "Enter Number of Daughter";
                    Label9.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label9.Text = "";
                }
                if (suminsured.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label10.Text = "Enter Sum Insured";
                    Label10.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label10.Text = "";
                }
                if (cost.Text == "")
                {

                    //Label1.Text = "Company Name Required !";
                    Label11.Text = "Enter Cost";
                    Label11.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    Label11.Text = "";
                }
            }
        }
        protected void cancel_Click(object sender, EventArgs e)
        {
            txtpno.Text = string.Empty;
            txtname.Text = string.Empty;
            //type.Text = string.Empty;
            //company.Text = string.Empty;
            isuuedate.Text = string.Empty;
            validity.Text = string.Empty;

            person.Text = string.Empty;
            adult.Text = string.Empty;
            son.Text = string.Empty;
            daughter.Text = string.Empty;
            suminsured.Text = string.Empty;
            cost.Text = string.Empty;



        }


    }
}