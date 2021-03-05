using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    string userid,password,type;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SQlCon.getcon();
        string str = "SELECT * FROM Login WHERE Userid='"+txtUser.Text+"'";
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.Read())
        {
            userid = SQlCon.sqlrdr.GetString(0);
            password = SQlCon.sqlrdr.GetString(1);
            type = SQlCon.sqlrdr.GetString(2);

            if (userid == txtUser.Text && password == txtPassword.Text)
            {
                if (type == "user")
                    Response.Redirect("User.aspx?userid="+userid);
                if (type == "employee")
                    Response.Redirect("Employee.aspx?userid="+userid);
                if (type == "admin")
                    Response.Redirect("Admin.aspx");
            }
            else
            {
                lblResult.Text = "User ID or Password incorrect";
            }
        }
        else
        {
            lblResult.Text = "User ID does not exists please Sign Up";
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtPassword.Text = "";
        txtUser.Text = "";
    }
}
