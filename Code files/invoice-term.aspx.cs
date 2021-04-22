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
    public partial class invoice_term : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlDataReader dr;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            double gst = Convert.ToDouble(Session["cost"].ToString());
            double tax = gst * 18 / 100;
            double total = gst + tax;


            name.Text = Session["cname"].ToString();
            imobileno.Text = Session["termmobile"].ToString();
            iaddress.Text = Session["termaddress"].ToString();
            idate.Text = Session["idate"].ToString();
            paydate.Text = Session["paydate"].ToString();
            policyname.Text = Session["policyname"].ToString();
            pno.Text = Session["pno"].ToString();
            si.Text = Session["sumi"].ToString();
            txtgst.Text = tax.ToString();
            cost.Text = Session["cost"].ToString();
            totalcost.Text = total.ToString();
            gtotal.Text = total.ToString();

            con.Open();
            string qry = "update termbankdetails set amount=@amount where id=@ID";

            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", Session["termbankid"].ToString());

            cmd.Parameters.AddWithValue("@amount", total.ToString());
            int i;
            i = cmd.ExecuteNonQuery();

            con.Close();
         


        }
        //protected void dash_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Dashboard.aspx");
        //}
    }
}