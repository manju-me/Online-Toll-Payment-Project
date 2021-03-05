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
using System.Data.SqlClient;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;
using CrystalDecisions.CrystalReports;
using CrystalDecisions.CrystalReports.Engine;



public partial class EmpShift : System.Web.UI.Page
{
    string str,type;
    ReportDocument repdoc;
    protected void Page_Load(object sender, EventArgs e)
    {
        SQlCon.getcon();
        
        type = Request.QueryString["type"];

      
        str = "SELECT * FROM SHIFTS WHERE Dateto like '"+type+"%'";
        


        SqlDataAdapter da = new SqlDataAdapter(str, SQlCon.sqlcon);
        string path = Server.MapPath("~") + @"\CrystalReport3.rpt";
        repdoc = new ReportDocument();
        repdoc.Load(path);
        DataSet ds = new DataSet();
        da.Fill(ds, "Shifts");
        repdoc.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = repdoc;
    }
}
