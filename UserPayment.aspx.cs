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

public partial class UserPayment : System.Web.UI.Page
{
    string str, userid;
    protected void Page_Load(object sender, EventArgs e)
    {
        SQlCon.closecon();
        SQlCon.getcon();
        userid = Request.QueryString["userid"];
         str = "SELECT * FROM UserMaster WHERE Userid='"+userid+"'";
            SQlCon.getReader(str);

            if (SQlCon.sqlrdr.Read())
            {
                lblInformation.Text = "Hi " + SQlCon.sqlrdr.GetString(2) + ", Kindly enter your Payment details to complete your account";
            }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (validation())
        {
            SQlCon.closecon();
            SQlCon.getcon();

            str = "UPDATE UserMaster SET creditcard='" + txtCreditcard.Text + "',Bankname='" + txtBank.Text + "',bankaccno='" + txtBankAcc.Text + "' WHERE userid='" + userid + "'";
            SQlCon.update(str);
            Response.Redirect("User.aspx?userid=" + userid);
        }
    }

    bool validation()
    {
        lblresult.Text = "";
        if (txtCreditcard.Text.Length != 16)
        {
            lblresult.Text = "Kindly enter 16 digit credit card number "; return false;
        }
        return true;
    }
}
