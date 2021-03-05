using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Sql;
using System.Data.SqlClient;
//using CrystalDecisions.Shared;
//using CrystalDecisions.Web;
//using CrystalDecisions.CrystalReports;
//using CrystalDecisions.CrystalReports.Engine;

public partial class _Default : System.Web.UI.Page
{
    string str, vehicle, km, amount, date, from, to, da;
    //ReportDocument repdoc;
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    vehicle = Request.QueryString["vehicle"];
    //    km = Request.QueryString["km"];
    //    amount = Request.QueryString["amount"];
    //    date = Request.QueryString["date"];
    //    from = Request.QueryString["from"];
    //    to = Request.QueryString["to"];

    //    str = "SELECT * FROM ManualToll WHERE vehicle='" + vehicle + "' and kilometers='" + km + "' and amount='" + amount + "' and date='" + date + "' and [from]='" + from + "' and [to]='" + to + "' ";
        
    //    SQlCon.getcon();


    //    SqlDataAdapter da = new SqlDataAdapter(str, SQlCon.sqlcon);
    //    string path = Server.MapPath("~") + @"\CrystalReport.rpt";
    //    repdoc = new ReportDocument();
    //    repdoc.Load(path);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds, "ManualToll");
    //    repdoc.SetDataSource(ds);
    //    CrystalReportViewer1.ReportSource = repdoc;
    //}
}
