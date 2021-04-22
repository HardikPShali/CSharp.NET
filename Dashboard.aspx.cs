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

    public partial class login : System.Web.UI.Page
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
                else
                {
                    Response.ClearHeaders();
                    Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                    Response.AddHeader("Pragma", "no-cache");
                }
             
                fillrpt();
                fillrpt1();
            }
            con.Open();
            string q = "select count(*) from terminsu_pi tp,terminsu_ai ta,termbankdetails tb where tp.id=ta.tid and ta.aid=tb.terminsu_ai_id and tb.date= DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0)";
            cmd = new SqlCommand(q, con);
            int count1=(int)cmd.ExecuteScalar();
            cnttoday.Text = Convert.ToString(count1);


            string q1 = "select count(*) from terminsu_pi tp,terminsu_ai ta,termbankdetails tb where tp.id=ta.tid and ta.aid=tb.terminsu_ai_id";
            cmd = new SqlCommand(q1, con);
            int count2 = (int)cmd.ExecuteScalar();
            cnttotal.Text = Convert.ToString(count2);



            string q2 = "select count(*) from policy p,terminsu_pi tp,termbankdetails tb,terminsu_ai ta,termbankdpart tbd where p.policy_id=tp.plan_id and ta.tid=tp.id and ta.aid=tb.terminsu_ai_id and tp.id=tbd.tpid and tb.id=tbd.tbankid and  tbd.partpay='0'";
            cmd = new SqlCommand(q2, con);
            int count3 = (int)cmd.ExecuteScalar();
            cntex.Text = Convert.ToString(count3);
          
            con.Close();

        }
        public void fillrpt()
        {
            String qry = "select * from policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where p.policy_id=tp.plan_id and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id and tb.date >= DATEADD(month, datediff(month, 0, getdate())-3, 0) AND tb.date <  DATEADD(DAY, DATEDIFF(day, 0, getdate()), 1) order by tp.clientname ASC";
            cmd = new SqlCommand(qry, con);
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();
        }

        public void fillrpt1()
        {
            String qry1 = "select * from policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where p.policy_id=tp.plan_id and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id and tb.date >= DATEADD(month, datediff(month, 0, getdate())-1, 0) AND tb.date <  DATEADD(DAY, DATEDIFF(day, 0, getdate()), 1) order by tp.clientname ASC";
            cmd = new SqlCommand(qry1, con);
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt1.DataSource = dt;
            rpt1.DataBind();
        }
        protected void renew_Click(object sender, EventArgs e)
        {
             LinkButton lnk = (LinkButton)sender;
             if (lnk != null)
             {
                 con.Open();
                 string q = "update terminsu_pi set isexpire=@e where id=@Id";
                 cmd = new SqlCommand(q, con);
                 cmd.Parameters.AddWithValue("@Id",lnk.CommandArgument.ToString());
                 cmd.Parameters.AddWithValue("@e","1");
                 int i=cmd.ExecuteNonQuery();

                 string q3 = "update terminsu_ai set isexpire=@ei where tid=@ID";
                 cmd = new SqlCommand(q3, con);
                 cmd.Parameters.AddWithValue("@ID", lnk.CommandArgument.ToString());
                 cmd.Parameters.AddWithValue("@ei", "1");
                 cmd.ExecuteNonQuery();
                 con.Close();
                 Response.Redirect("planassign.aspx");


                 con.Close();
                 if (i > 0)
                 {
                     Response.Redirect("planassign.aspx");
                 }

             }
        }

        protected void renew1_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string q1 = "update terminsu_pi  set isexpire=@e where id=@Id";
                cmd = new SqlCommand(q1, con);
                cmd.Parameters.AddWithValue("@Id", lnk.CommandArgument.ToString());
                cmd.Parameters.AddWithValue("@e", "1");
         
                int i=cmd.ExecuteNonQuery();


                string q2 = "update terminsu_ai set isexpire=@ei where tid=@ID";
                cmd = new SqlCommand(q2, con);
                cmd.Parameters.AddWithValue("@ID", lnk.CommandArgument.ToString());
                cmd.Parameters.AddWithValue("@ei", "1");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("planassign.aspx");
                    
                }
           
            }
        }
    }
