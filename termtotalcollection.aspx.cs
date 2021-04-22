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
using System.Drawing;
using System.Text;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using ClosedXML.Excel;

namespace InsuranceHub
{

    public partial class termtotalcollection : System.Web.UI.Page
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
            fillrpt();
        }
        public void fillrpt()
        {
            String qry = "select * from policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where p.policy_id=tp.plan_id and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id";
            cmd = new SqlCommand(qry, con);
            dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            rpt.DataSource = dt;
            rpt.DataBind();
         

        }


        protected void search_Click(object sender, EventArgs e)
        {
         
           if (pno.Text != "" && mno.Text != "" && from.Text != "" && to.Text != "")
           {
               string query = "select * from  policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where  p.policy_id=tp.plan_id and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id and p.policy_no like '" + pno.Text + "%' and tp.mobile like '" + mno.Text + "%' and tb.date >= '" + from.Text.ToString() + "' and tb.date <=  '" + to.Text.ToString() + "'";
               SqlDataAdapter da = new SqlDataAdapter(query, con);
               cmd = new SqlCommand(query, con);
               dt = new DataTable();
               adp = new SqlDataAdapter(cmd);
               adp.Fill(dt);
               rpt.DataSource = dt;
               rpt.DataBind();
           }
           else if (pno.Text != "" && mno.Text != "")
           {
               string query = "select * from  policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where  p.policy_id=tp.plan_id and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id and p.policy_no like '" + pno.Text + "%' and tp.mobile like '" + mno.Text + "%'";
               SqlDataAdapter da = new SqlDataAdapter(query, con);
               cmd = new SqlCommand(query, con);
               dt = new DataTable();
               adp = new SqlDataAdapter(cmd);
               adp.Fill(dt);
               rpt.DataSource = dt;
               rpt.DataBind();

           }
           else if (pno.Text != "")
           {
               string q = "select * from  policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where p.policy_id=tp.plan_id and p.policy_no like @p and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id";
               SqlDataAdapter da = new SqlDataAdapter(q, con);
               cmd = new SqlCommand(q, con);
               cmd.Parameters.AddWithValue("@p", pno.Text.ToString());
               dt = new DataTable();
               adp = new SqlDataAdapter(cmd);
               adp.Fill(dt);
               rpt.DataSource = dt;
               rpt.DataBind();
           }
           else if (from.Text != "" && to.Text != "")
           {

               string query = "select * from  policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where p.policy_id=tp.plan_id and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id and tb.date >= '" + from.Text.ToString() + "' and tb.date <=  '" + to.Text.ToString() + "'";
               SqlDataAdapter da = new SqlDataAdapter(query, con);
               cmd = new SqlCommand(query, con);
               dt = new DataTable();
               adp = new SqlDataAdapter(cmd);
               adp.Fill(dt);
               rpt.DataSource = dt;
               rpt.DataBind();
           }

           else if (from.Text != "")
           {

               string query = "select * from  policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where p.policy_id=tp.plan_id and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id and tb.date >= '" + from.Text.ToString() + "'";
               SqlDataAdapter da = new SqlDataAdapter(query, con);
               cmd = new SqlCommand(query, con);
               dt = new DataTable();
               adp = new SqlDataAdapter(cmd);
               adp.Fill(dt);
               rpt.DataSource = dt;
               rpt.DataBind();

           }


           else if (mno.Text != "")
           {
               string query = "select * from  policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where p.policy_id=tp.plan_id and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id and tp.mobile like '" + mno.Text + "%'";
               SqlDataAdapter da = new SqlDataAdapter(query, con);
               cmd = new SqlCommand(query, con);
               dt = new DataTable();
               adp = new SqlDataAdapter(cmd);
               adp.Fill(dt);
               rpt.DataSource = dt;
               rpt.DataBind();

           }


           else
           {
           }
            
       

        }

        protected void pdf_Click(object sender, EventArgs e)
        {
            string qry = "select policy_no as PolicyNo,clientname as Name,gender as Gender,lifestage as LifeStage,bday as Birthdate,mobile as MobileNo,education as Education,smoke as Smoke,income as Income,occupation as Occupation,address as Address,amount as Amount,date as PaymentDate from  policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where  p.policy_id=tp.plan_id and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id and p.policy_no like '" + pno.Text + "%' and tp.mobile like '" + mno.Text + "%' and p.policy_no like @p and tb.date >= '" + from.Text.ToString() + "' and tb.date <=  '" + to.Text.ToString() + "' and tb.date >= '" + from.Text.ToString() + "' and tp.mobile like '" + mno.Text + "%'";
            con.Open();
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@p", pno.Text.ToString());
            DataTable dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            //adp.Fill(ds2);
            adp.Fill(dt);

            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    StringBuilder sb = new StringBuilder();

                    //Generate Invoice (Bill) Header.
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='0'>");
                    sb.Append("<tr>");
                    sb.Append("<td>");
                    sb.Append("<img src='" + Server.MapPath(".").ToString() + "\\assets\\dist\\img\\logo2.png' width='150'>");
                    sb.Append("</td>");
                    sb.Append("<td>");
                    sb.Append("</td>");
                    //sb.Append("<td> <h1> InsuranceHub </h1></td>");
                    sb.Append("<td> <h1>InsuranceHub</h1><br><h4> Date : " + DateTime.Now + " </h4> </td></tr><br>");
                    sb.Append("<tr><td align='center' colspan = '3'>Report Period : " + from.Text + " <b>TO</b> " + to.Text + "</td></tr>");
                    sb.Append(" </table>");
                    sb.Append("<br><br>");

                    //Generate Invoice (Bill) Items Grid.

                    foreach (DataRow row in dt.Rows)
                    {
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<table border = '1'>");
                            sb.Append("<tr>");
                            sb.Append("<td style='background-color: #D20B0C'>");
                            sb.Append(column.ColumnName);
                            sb.Append(":");
                            sb.Append("");
                            //sb.Append("<br>");
                            sb.Append("</td>");
                            sb.Append("<td>");
                            sb.Append(row[column]);


                            sb.Append("</td>");

                            sb.Append("</tr>");
                            sb.Append("</table>");
                        }

                    }
                    //Export HTML String as PDF.
                    StringReader sr = new StringReader(sb.ToString());
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    htmlparser.Parse(sr);
                    pdfDoc.Close();
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=Project_Report_" + DateTime.Now.Date.ToString("dd/MM/yyyy") + ".pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Write(pdfDoc);
                    Response.End();
                }
            }

            //Session["pro_id"] = ds.Tables[0].Columns["crm_id"].ToString();
            con.Close();
        }


        protected void excel_Click(object sender, EventArgs e)
        {
            string qry = "select policy_no,clientname,gender,lifestage,bday,mobile,education,smoke,income,occupation,address,amount,date from  policy p,terminsu_pi tp,terminsu_ai ta,termbankdetails tb where  p.policy_id=tp.plan_id and tp.id=ta.tid and ta.aid=tb.terminsu_ai_id and p.policy_no like '" + pno.Text + "%' and tp.mobile like '" + mno.Text + "%' and p.policy_no like @p and tb.date >= '" + from.Text.ToString() + "' and tb.date <=  '" + to.Text.ToString() + "' and tb.date >= '" + from.Text.ToString() + "' and tp.mobile like '" + mno.Text + "%'";
            con.Open();
            cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@p", pno.Text.ToString());
            DataTable dt = new DataTable();
            adp = new SqlDataAdapter(cmd);
            //adp.Fill(ds2);
            adp.Fill(dt);


            try
            {
                XLWorkbook wb = new XLWorkbook();
                dt.TableName = "Project_Report";
                wb.Worksheets.Add(dt);
                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.AddHeader("content-disposition", "attachment;filename=Project_Report_" + DateTime.Now.Date.ToString("dd/MM/yyyy") + ".xlsx");
                using (MemoryStream MyMemoryStream = new MemoryStream())
                {
                    wb.SaveAs(MyMemoryStream);
                    MyMemoryStream.WriteTo(Response.OutputStream);
                    HttpContext.Current.Response.Flush();
                    HttpContext.Current.Response.SuppressContent = true;
                    HttpContext.Current.ApplicationInstance.CompleteRequest();
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
        protected void print_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            if (lnk != null)
            {
                con.Open();
                string qry = "select id from terminsu_pi where id=@Id";
                cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(lnk.CommandArgument.ToString()));
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {

                    dr.Read();
                    Session["personalid"] = lnk.CommandArgument.ToString();

                    dr.Close();

                }
            }
            con.Close();
            Response.Redirect("invoice-report.aspx");

        }

    }

}