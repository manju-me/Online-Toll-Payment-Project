using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Data.Sql;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using CrystalDecisions.CrystalReports;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;
using System.Data.SqlClient;

public partial class ManualReport : System.Web.UI.Page
{
    string vehicle, date, from, to, km, amount,str,type;
    ReportDocument repdoc;


    protected void Page_Load(object sender, EventArgs e)
    {
        vehicle = Request.QueryString["vehicle"];
        date = Request.QueryString["date"];
        from = Request.QueryString["from"];
        to = Request.QueryString["to"];
        km = Request.QueryString["km"];
        amount = Request.QueryString["amount"];
        type = Request.QueryString["type"];
        

        if (type == "manual")
        {

          
            str = "SELECT * FROM ManualToll WHERE vehicle='" + vehicle + "' and kilometers='" + km + "' and amount='" + amount + "' and date='" + date + "' and [from]='" + from + "' and [to]='" + to + "' ";
            SQlCon.getcon();

            
            SqlDataAdapter da = new SqlDataAdapter(str, SQlCon.sqlcon);
            string path = Server.MapPath("~") + @"\Employeeticket.rpt";
            repdoc = new ReportDocument();
            repdoc.Load(path);
            DataSet ds = new DataSet();
            da.Fill(ds, "ManualToll");
            repdoc.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = repdoc;
        }
        else if (type == "online")
        {

            str = "SELECT * FROM ManualToll WHERE vehicle='" + vehicle + "' and kilometers='" + km + "' and amount='" + amount + "' and date='" + date + "' and [from]='" + from + "' and [to]='" + to + "' ";
            SQlCon.getcon();


            SqlDataAdapter da = new SqlDataAdapter(str, SQlCon.sqlcon);
            string path = Server.MapPath("~") + @"\Employeeticket.rpt";
            repdoc = new ReportDocument();
            repdoc.Load(path);
            DataSet1 ds = new DataSet1();
            da.Fill(ds, "OnlineToll");
            repdoc.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = repdoc;
        }

    }
}
