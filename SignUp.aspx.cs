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
using System.Net.Mail;
using System.IO;
using System.Net;
using System.Text;

public partial class SignUp : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SQlCon.getcon();
        string str = "SELECT * FROM Login WHERE Userid='" + txtusername.Text + "'";
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.Read())
        {
            lblResult.Text = "User name already Exists, Please try some other user id";
        }
        else
        {
            if (validation())
            {
                SQlCon.closecon();
                SQlCon.getcon();
                
                Random rnd = new Random();
                string  type="user";
                
                
                str = "INSERT INTO Login VALUES('" + txtusername.Text + "','" + txtPassword.Text + "','"+type+"')";
                SQlCon.insert(str);

                str = "INSERT INTO UserMaster VALUES('"+txtusername.Text+"','"+txtPassword.Text+"','"+txtName.Text+"','"+txtAddress.Text+"','"+txtContact.Text+"','"+txtMail.Text+"','"+txtVehicle.Text+"','"+txtCIty.Text+"','"+txtState.Text+"','Blank','Blank','Blank')";
                SQlCon.insert(str);
                Response.Write("<script language=\"javascript\"> alert('Account Created Successfully')</script>");


                string mailto = txtMail.Text;
                string sub = "NHAI Account Creation";
                string msg = "Hi " + txtName.Text + ",\n\nThis is regarding Your NHAI account Creation\n\nPlease be informed that your National Highway Authority of India account has been created.\n\nKidly verify your Account details:\n\n\tUserName: " + txtusername.Text + "\n\tPassword: " + txtPassword.Text + "\n\nRegards,\nNational Highway Authority of India";

              /*  MailMessage message = new MailMessage("nationalhighwayindia@gmail.com", mailto, sub, msg);
                SmtpClient emailClient = new SmtpClient("smtp.gmail.com");
                System.Net.NetworkCredential SMTPUserInfo = new System.Net.NetworkCredential("nationalhighwayindia@gmail.com", "onlinetoll");
                emailClient.UseDefaultCredentials = false;
                emailClient.Credentials = SMTPUserInfo;
                emailClient.EnableSsl = true;
                emailClient.Send(message);*/


                clear();
                Response.Redirect("Login.aspx");
            }
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

    public void clear()
    {
        txtAddress.Text="";
        txtCIty.Text="";
        txtConPass.Text="";
        txtContact.Text="";
        txtMail.Text="";
        txtName.Text="";
        txtPassword.Text="";
        txtState.Text = "";
        txtusername.Text="";
        txtVehicle.Text="";
        lblResult.Text = "";
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        clear();
    }
}
