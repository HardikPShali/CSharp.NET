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
    public partial class insurance_list : System.Web.UI.Page
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
                ddlinsu();
                ddlcmp();
                
           }
            fillrpt();
        }
        public void fillrpt()
        {
            String qry = "select p.policy_id,p.policy_no,p.name as pname,i.type,c.name as cname,p.issuedate,p.validity,p.no_of_person,p.total_adult,p.no_of_son,p.no_of_daughter,p.sum_insured,p.cost from policy p,insu_type i,comp_reg c where p.insu_type_id=i.insu_type_id and p.insu_comp_id=c.comp_id";
            cmd = new SqlCommand(qry, con);
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();
        }

        protected void del_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "delete from policy where poilicy_id=@id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(lnk.CommandArgument.ToString()));
                cmd.ExecuteNonQuery();
                fillrpt();
                con.Close();

            }
        }
        protected void ddlinsu()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from insu_type", con);
            cmd.CommandType = CommandType.Text;
           
             txtinsutype.DataSource = cmd.ExecuteReader();
             txtinsutype.DataTextField = "type";
             txtinsutype.DataValueField = "insu_type_id";
             txtinsutype.DataBind();

            con.Close();

        }
        protected void ddlcmp()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from comp_reg", con);
            cmd.CommandType = CommandType.Text;
            ddlcomp.DataSource = cmd.ExecuteReader();
            ddlcomp.DataTextField = "name";
            ddlcomp.DataValueField = "comp_id";
            ddlcomp.DataBind();
            
            con.Close();

        }
        protected void edit_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "select p.policy_id,p.policy_no,p.name as pname,i.type,c.name as cname,p.issuedate,p.validity,p.no_of_person,p.total_adult,p.no_of_son,p.no_of_daughter,p.sum_insured,p.cost from policy p,insu_type i,comp_reg c where p.insu_type_id=i.insu_type_id and p.insu_comp_id=c.comp_id and policy_id=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", lnk.CommandArgument.ToString());
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    dr.Read();
                    txtpno.Text = dr["policy_no"].ToString();
                    txtpname.Text = dr["pname"].ToString();
                    //txtinsutype.Text = dr["type"].ToString();
                    //ddlcomp.Text = dr["cname"].ToString();
                    txtissuedate.Text = dr["issuedate"].ToString();
                    txtvalidity.Text = dr["validity"].ToString();
                    txtnoofp.Text = dr["no_of_person"].ToString();
                    txtadult.Text = dr["total_adult"].ToString();
                    txtson.Text = dr["no_of_son"].ToString();
                    txtdaughter.Text = dr["no_of_daughter"].ToString();
                    txtsuminsured.Text = dr["sum_insured"].ToString();
                    txtcost.Text = dr["cost"].ToString();
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
           
            string qry = "update policy set policy_no=@policy_no,name=@name,insu_type_id=@insu_type_id,insu_comp_id=@insu_comp_id,issuedate=@issuedate,validity=@validity,no_of_person=@no_of_person,total_adult=@total_adult,no_of_son=@no_of_son,no_of_daughter=@no_of_daughter,sum_insured=@sum_insured,cost=@cost  where policy_id=@Id";
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@policy_no", txtpno.Text);
            cmd.Parameters.AddWithValue("@name", txtpname.Text);
            cmd.Parameters.AddWithValue("@insu_type_id", txtinsutype.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@insu_comp_id", ddlcomp.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@issuedate", txtissuedate.Text);
            cmd.Parameters.AddWithValue("@validity", txtvalidity.Text);
            cmd.Parameters.AddWithValue("@no_of_person", txtnoofp.Text);
            cmd.Parameters.AddWithValue("@total_adult", txtadult.Text);
            cmd.Parameters.AddWithValue("@no_of_son", txtson.Text);
            cmd.Parameters.AddWithValue("@no_of_daughter", txtdaughter.Text);
            cmd.Parameters.AddWithValue("@sum_insured", txtsuminsured.Text);
            cmd.Parameters.AddWithValue("@cost", txtcost.Text);
            cmd.Parameters.AddWithValue("@Id", Session["id"]);
            cmd.ExecuteNonQuery();
            fillrpt();
            con.Close();
        }

        
    }
}