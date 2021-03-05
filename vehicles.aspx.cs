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

public partial class vehicles : System.Web.UI.Page
{
    string userid;
    protected void Page_Load(object sender, EventArgs e)
    {
        userid = Request.QueryString["userid"];

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (userid == "Employee")
        {
            Response.Redirect("Employee.aspx");
            return;
        }
        
        Response.Redirect("User.aspx?userid="+userid+"");

    }
}
