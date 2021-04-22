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
    public partial class invoice_report : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlDataReader dr;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string q = "select * from policy p,terminsu_pi tp,termbankdetails tb,terminsu_ai ta,termbankdpart tbd where p.policy_id=tp.plan_id and ta.tid=tp.id and ta.aid=tb.terminsu_ai_id and tp.id=tbd.tpid and tb.id=tbd.tbankid and tp.id=@id";
            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@id", Session["personalid"].ToString());
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["idate"] = dr["issuedate"];
                Session["pdate"] = dr["date"];
                Session["pname"] = dr["clientname"];
                Session["mn"] = dr["mobile"];
                Session["ad"] = dr["address"];
                Session["pn"] = dr["name"];
                Session["pno"] = dr["policy_no"];
                Session["t"] = dr["totalamnt"];
                Session["pa"] = dr["paidamnt"];
                Session["ra"] = dr["remainamnt"];
                dr.Close();
            }
            con.Close();
            idate.Text = Session["idate"].ToString();
            paydate.Text = Session["pdate"].ToString();
            name.Text = Session["pname"].ToString();
            imobileno.Text = Session["mn"].ToString();
            iaddress.Text = Session["ad"].ToString();
            policyname.Text = Session["pn"].ToString();
            pno.Text = Session["pno"].ToString();
            totalcost.Text = Session["t"].ToString();
            paidcost.Text = Session["pa"].ToString();
            rcost.Text = Session["ra"].ToString();
        }
    }
}