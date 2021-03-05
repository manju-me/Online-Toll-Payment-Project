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

public partial class UserEdit : System.Web.UI.Page
{
    string str = "",userid;
    protected void Page_Load(object sender, EventArgs e)
    {
        userid = Request.QueryString["userid"];
        SQlCon.closecon();
        SQlCon.getcon();
        if (!IsPostBack)
        {
            str = "SELECT * FROM UserMaster WHERE Userid='"+userid+"'";
            SQlCon.getReader(str);

            if (SQlCon.sqlrdr.Read())
            {
                txtusername.Text = SQlCon.sqlrdr.GetString(0);
                txtPassword.Text = txtConPass.Text = SQlCon.sqlrdr.GetString(1);
                txtName.Text=SQlCon.sqlrdr.GetString(2);
                txtAddress.Text=SQlCon.sqlrdr.GetString(3);
                txtContact.Text=SQlCon.sqlrdr.GetString(4);
                txtMail.Text=SQlCon.sqlrdr.GetString(5);
                txtVehicle.Text=SQlCon.sqlrdr.GetString(6);
                txtCIty.Text=SQlCon.sqlrdr.GetString(7);
                txtState.Text=SQlCon.sqlrdr.GetString(8);
                txtCredit.Text=SQlCon.sqlrdr.GetString(9);
                txtBankname.Text=SQlCon.sqlrdr.GetString(10);
                txtBankAcc.Text = SQlCon.sqlrdr.GetString(11);
            }
        }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SQlCon.closecon();
        SQlCon.getcon();
        if (validation())
        {
            str = "UPDATE UserMaster SET Password='" + txtPassword.Text + "',Name='" + txtName.Text + "', Address='" + txtAddress.Text + "',Contact='" + txtContact.Text + "',";
            str = str + "Mail='" + txtMail.Text + "',Vehicle='" + txtVehicle.Text + "',City='" + txtCIty.Text + "',State='" + txtState.Text + "',Creditcard='" + txtCredit.Text + "',Bankname='" + txtBankname.Text + "',BankAccNo='" + txtBankAcc.Text + "' WHERE userid='"+userid+"'";

            SQlCon.update(str);
            Response.Redirect("User.aspx?userid=" + userid);
        }
    }

    bool validation()
    {
        if (txtContact.Text.Length != 10)
        {
            lblResult.Text = "Kindly Enter the 10 Digit Mobile #"; return false;
        }
        else
        {
            long no;
            try
            {
                no = Convert.ToInt64(txtContact.Text);
            }

            catch (Exception ex) { lblResult.Text = "Enter numerical values for Phone no"; txtContact.Focus(); return false; }
        }
        lblResult.Text = "";
        return true;
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx?userid=" + userid);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx?userid=" + userid);
    }
}
