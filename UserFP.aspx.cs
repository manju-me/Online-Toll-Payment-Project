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

public partial class UserFP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string pass,mail,mobileno,sub,msg,name;
        //SQlCon.closecon();
        SQlCon.getcon();

        string str = "SELECT * FROM UserMaster WHERE Userid='"+txtUsername.Text+"'";
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.Read())
        {
            pass = SQlCon.sqlrdr.GetString(1);
            mobileno = SQlCon.sqlrdr.GetString(4);
            mail = SQlCon.sqlrdr.GetString(5);
            name = SQlCon.sqlrdr.GetString(2);

            sub = "NHAI Password Recovery";
            msg = "Hi "+name+",\n\n This is with reference to your National Highway Authority of India Account.\n\nAs per your request your Account password is retrieved please check the below password.\n\nPassword : "+pass+"\n\nRegards,\nNational Highway Authority of India";

            // Sending mail

            MailMessage message = new MailMessage("onlinetoll@gmail.com", mail, sub, msg);
            SmtpClient emailClient = new SmtpClient("smtp.gmail.com");
            System.Net.NetworkCredential SMTPUserInfo = new System.Net.NetworkCredential("onlinetoll", "aptechbelgaum100");
            emailClient.UseDefaultCredentials = false;
            emailClient.Credentials = SMTPUserInfo;
            emailClient.EnableSsl = true;
            emailClient.Send(message);

            // Sending SMS

            string msg1 = "Hi, Your NHAI Password is '"+pass+"'";
            string path = "http://www.chandnas.co.in/pushsms.php?username=rajesh160776&password=pass@123&sender=test&to=" + mobileno + "&message=" + msg1;


            WebRequest myWebRequest = WebRequest.Create(path);
            WebResponse myWebResponse = myWebRequest.GetResponse();
            Stream ReceiveStream = myWebResponse.GetResponseStream();
            Encoding encode = System.Text.Encoding.GetEncoding("utf-8");
            StreamReader readStream = new StreamReader(ReceiveStream, encode);
            string strResponse = readStream.ReadToEnd();



            Response.Write("<script language=\"javascript\"> alert('Password has been sent to your mobile & email id')</script>");
           
            Response.Redirect("Login.aspx");
        }
        else
        {
            lblResult.Text = "Invalid Username";
        }



       
        
    }
}
