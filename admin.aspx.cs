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


public partial class admin : System.Web.UI.Page
{
    string str;
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
                if (ddlDesignation.SelectedItem.Text != "Security")
                {
                    SQlCon.closecon();
                    SQlCon.getcon();
                    str = "INSERT INTO Login VALUES('" + txtusername.Text + "','" + txtPassword.Text + "','employee')";
                    SQlCon.insert(str);
                }

                SQlCon.closecon();
                SQlCon.getcon();
                str = "INSERT INTO employee VALUES('" + txtName.Text + "','" + txtAddress.Text + "','" + txtCIty.Text + "','" + txtState.Text + "','" + txtContact.Text + "','" + txtMail.Text + "','" + txtusername.Text + "','" + txtPassword.Text + "','"+txtSalary.Text+"','"+ddlDesignation.SelectedItem.Text+"','"+Image1.ImageUrl+"')";
                SQlCon.insert(str);

                string mailto = txtMail.Text;
                string sub = "NHAI Account Creation";
                string msg = "Hi " + txtName.Text + ",\n\nThis is regarding Your NHAI account Creation\n\nPlease be informed that your National Highway Authority of India account has been created.\n\nKidly verify your Account details:\n\n\tUserName: " + txtusername.Text + "\n\tPassword: " + txtPassword.Text + "\n\nRegards,\nNational Highway Authority of India";

              /*  MailMessage message = new MailMessage("onlinetoll@gmail.com", mailto, sub, msg);
                SmtpClient emailClient = new SmtpClient("smtp.gmail.com");
                System.Net.NetworkCredential SMTPUserInfo = new System.Net.NetworkCredential("onlinetoll", "aptechbelgaum100");
                emailClient.UseDefaultCredentials = false;
                emailClient.Credentials = SMTPUserInfo;
                emailClient.EnableSsl = true;
                emailClient.Send(message); */

                Response.Write("<script language=\"javascript\"> alert('Account Created Successfully')</script>");
                btnReset_Click(null, null);

            }
        }
    }

    bool validation()
    {
        if (ddlDesignation.SelectedItem.Text == "Select one")
        {
            lblResult.Text = "Please select Employee designation"; return false;
        }else 
        if (txtContact.Text.Length != 10)
        {
            lblResult.Text = "Kindly Enter the 10 Digit Mobile #"; return false;
        }
        else
        {
            long no,no1;
            try
            {
                no = Convert.ToInt64(txtContact.Text);
            }

            catch (Exception ex) { lblResult.Text = "Enter numerical values for Phone no"; txtContact.Focus(); return false; }

            try
            {
                no1 = Convert.ToInt64(txtSalary.Text);
            }
            catch (Exception ex) { lblResult.Text = "Enter numerical values for Salary"; txtSalary.Focus(); return false; }
            lblResult.Text = "";
            return true;
        }
   
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Month")
        {
            DropDownList2.Visible = true;
            Label5.Visible = true;
        }
        else if (DropDownList1.SelectedItem.Text == "Today")
        {
            //if(SQlCon.sqlcon.State==ConnectionState.Open)
            //SQlCon.closecon();

            DropDownList2.Visible = false;
            Label5.Visible = false;

            SQlCon.getcon();
            long amount=0;

            str = "SELECT * FROM Onlinetoll WHERE dateofjourney='"+DateTime.Now.ToShortDateString()+"'";
            SQlCon.getReader(str);

            if (SQlCon.sqlrdr.HasRows)
            {
                
                while (SQlCon.sqlrdr.Read())
                {
                    amount +=Convert.ToInt64( SQlCon.sqlrdr.GetString(5));
                }
            }
            SQlCon.closecon();
            SQlCon.getcon();

            str = "SELECT * FROM Manualtoll WHERE date='" + DateTime.Now.ToShortDateString() + "'";
            SQlCon.getReader(str);

            if (SQlCon.sqlrdr.HasRows)
            {
                
                while (SQlCon.sqlrdr.Read())
                {
                    amount += Convert.ToInt64(SQlCon.sqlrdr.GetString(3));
                }
            }
            lblTotal.Text = ""+amount+" Rupees";
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int val = DropDownList2.SelectedIndex;
        long amount=0;
        SQlCon.getcon();

        str = "SELECT * FROM Manualtoll WHERE date like '"+val+"%'";
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.HasRows)
        {

            while (SQlCon.sqlrdr.Read())
            {
                amount += Convert.ToInt64(SQlCon.sqlrdr.GetString(3));
            }
        }

        SQlCon.closecon();
        SQlCon.getcon();

        str = "SELECT * FROM Onlinetoll WHERE dateofjourney like'" + val + "%'";
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.HasRows)
        {

            while (SQlCon.sqlrdr.Read())
            {
                amount += Convert.ToInt64(SQlCon.sqlrdr.GetString(5));
            }
        }

        lblTotal.Text = "" + amount + " Rupees";
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        long amount=0;
        SQlCon.getcon();
        str = "SELECT * FROM Onlinetoll WHERE dateofjourney like '%%2011'";
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.HasRows)
        {

            while (SQlCon.sqlrdr.Read())
            {
                amount += Convert.ToInt64(SQlCon.sqlrdr.GetString(5));
            }
        }

        SQlCon.closecon();
        SQlCon.getcon();
        str = "SELECT * FROM Manualtoll WHERE date like '%%2011'";
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.HasRows)
        {

            while (SQlCon.sqlrdr.Read())
            {
                try
                {
                    amount += Convert.ToInt64(SQlCon.sqlrdr.GetString(3));
                }
                catch (Exception ex){}
            }
        }

        lblTotal.Text = "" + amount + " Rupees";
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtAddress.Text = "";
        txtCIty.Text="";
        txtConPass.Text="";
        txtContact.Text="";
        txtMail.Text="";
        txtName.Text="";
        txtPassword.Text="";
        txtSalary.Text="";
        txtState.Text="";
        txtusername.Text = "";
        lblResult.Text = "";
        txtName.Focus();
        Image1.ImageUrl = "";
        ddlDesignation.ClearSelection();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminView.aspx?type=RTO");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminView.aspx?type=Toll");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminView.aspx?type=Shifts");
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string fn = Path.GetFileName(File1.PostedFile.FileName),path;


        path = Server.MapPath("~") + @"\Image\" + fn;
        try
        {
            File1.PostedFile.SaveAs(path);
            Image1.ImageUrl = @"Image\" + fn;
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
    }
    
}
