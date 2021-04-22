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
    public partial class invoice_hireport : System.Web.UI.Page
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

            }
            pdetails();
            policydetails();
            mdetails();
        }
        public void policydetails()
        {
            con.Open();

            String qry = "select p.policy_no,p.name as pname,i.type,c.name as cname,p.sum_insured from health_insu h,policy p,insu_type i,comp_reg c where p.policy_id=h.policy_id and p.insu_type_id=i.insu_type_id and p.insu_comp_id=c.comp_id and hid=@Id";


            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", Session["phid"].ToString());
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {

                dr.Read();

                pno.Text = dr["policy_no"].ToString();
                ppname.Text = dr["pname"].ToString();
                pinsutype.Text = dr["type"].ToString();
                picompany.Text = dr["cname"].ToString();
                psi.Text = dr["sum_insured"].ToString();
               


                dr.Close();

            }
            con.Close();

        }
        public void pdetails()
        {
            con.Open();
            
            String qry = "select p.policy_no,h.clientname,h.gender,h.mobileno,h.emailid,h.dobi,h.address,p.cost,h.suminsured from health_insu h,policy p where p.policy_id=h.policy_id and hid=@Id";
            
           
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", Session["phid"].ToString());
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {

                dr.Read();

                ipno.Text = dr["policy_no"].ToString();
                ipname.Text = dr["clientname"].ToString();
                igender.Text = dr["gender"].ToString();
                imo.Text = dr["mobileno"].ToString();
                iemailid.Text = dr["emailid"].ToString();
                idob.Text = dr["dobi"].ToString();
                iname.Text = dr["clientname"].ToString();
                imobileno.Text = dr["mobileno"].ToString();
                iaddress.Text = dr["address"].ToString();
                tamount.Text=dr["cost"].ToString();

                dr.Close();

            }
            con.Close();
            double t=Convert.ToDouble(tamount.Text);
            double total = t *  18 / 100;
            double tt = t + total;
            gtotal.Text = tt.ToString();
       
        }

        public void mdetails()
        {
            String qry = "select * from himember where hid=@Id";
           // String qry = "select * from himember ";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Id", Session["phid"].ToString());
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();
        }
    }
}