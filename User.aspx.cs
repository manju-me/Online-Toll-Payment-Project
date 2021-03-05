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

public partial class User : System.Web.UI.Page
{
    string userid,str, type;
    int amt;

    protected void Page_Load(object sender, EventArgs e)
    {
     userid  = Request.QueryString["userid"];

     string str;
        SQlCon.closecon();
        SQlCon.getcon();
        str = "SELECT * FROM UserMaster WHERE Userid='" + userid + "'";
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.Read())
        {

            if (SQlCon.sqlrdr.GetString(9) == "Blank" && SQlCon.sqlrdr.GetString(10) =="Blank" && SQlCon.sqlrdr.GetString(11) == "Blank")
            {
                Response.Redirect("UserPayment.aspx?userid=" + userid);

            }
            else
            {
                lblName.Text = SQlCon.sqlrdr.GetString(2);
                lblAddress.Text = SQlCon.sqlrdr.GetString(3);
                lblContact.Text = SQlCon.sqlrdr.GetString(4);
                lblMail.Text = SQlCon.sqlrdr.GetString(5);
                lblVehicle.Text = SQlCon.sqlrdr.GetString(6);
                lblPayment.Text = SQlCon.sqlrdr.GetString(9);
            }
           
        }
        ImageButton2.Attributes.Add("OnClick", "show()");

    }


        
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
      lblDateofJourney.Text = Calendar1.SelectedDate.Date.ToShortDateString();
        Calendar1.Visible = false;
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    
    
  
   
    protected void rdbYes_CheckedChanged(object sender, EventArgs e)
    {
       
        
        int amt = Convert.ToInt32(lblAmount.Text);
        amt=amt+amt* 50 / 100;
        lblAmount.Text = amt.ToString();
        rdbYes.Enabled = false;
        rdbNo.Enabled = false;

    }
    
    
   
    protected void btnReset_Click(object sender, EventArgs e)
    {
        ddlFrom.ClearSelection();
        ddlFrom.Enabled = true;
        ddlTo.ClearSelection();
        ddlTo.Enabled = true;
        ddlVehicleMode.ClearSelection();
        ddlVehicleMode.Enabled = true;
        rdbNo.Enabled = true;
        rdbYes.Enabled = true;

       
        lblDateofJourney.Text = "";
        lblAmount.Text = "";
        lblKms.Text="";
        lblTollPlaza.Text="";
        txtVehicle.Text = "";
        
    }

    public void enablecontrols()
    {
       
       
        rdbNo.Enabled = true;
        rdbYes.Enabled = true;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (validation())
        {
            SQlCon.closecon();
            SQlCon.getcon();
            
            if (rdbYes.Checked)
                type = "Two Way";
            else if (rdbNo.Checked)
                type = "One Way";

            str = "INSERT INTO onlinetoll VALUES('" + userid + "','" + txtVehicle.Text + "','" + lblKms.Text + "','" + ddlVehicleMode.Text + "','" + lblTollPlaza.Text + "','" + lblAmount.Text + "','" + lblPayment.Text + "','" + lblDateofJourney.Text + "','" + ddlFrom.SelectedItem.Text + "','" + ddlTo.SelectedItem.Text + "','" + type + "')";

            SQlCon.insert(str);

            
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserEdit.aspx?userid="+userid);
    }
 
    protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
    {
        SQlCon.getcon();
        str = "SELECT * FROM tollfee WHERE [from]='" + ddlFrom.SelectedItem.Text + "' and [to]='" + ddlTo.SelectedItem.Text + "'";
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.Read())
        {
            lblKms.Text = SQlCon.sqlrdr.GetString(2);
            lblTollPlaza.Text = SQlCon.sqlrdr.GetString(3);
            lblAmount.Text = SQlCon.sqlrdr.GetString(4);
            amt = Convert.ToInt32(SQlCon.sqlrdr.GetString(4));

            ddlFrom.Enabled = false;
            ddlTo.Enabled = false;
        }
        else
        {
            SQlCon.closecon();
            SQlCon.getcon();
            str = "SELECT * FROM tollfee WHERE [to]='" + ddlFrom.SelectedItem.Text + "' and [from]='" + ddlTo.SelectedItem.Text + "'";
            SQlCon.getReader(str);

            if (SQlCon.sqlrdr.Read())
            {
                lblKms.Text = SQlCon.sqlrdr.GetString(2);
                lblTollPlaza.Text = SQlCon.sqlrdr.GetString(3);
                lblAmount.Text = SQlCon.sqlrdr.GetString(4);
                ddlFrom.Enabled = false;
                ddlTo.Enabled = false;

            }
            else
            {
                lblKms.Text = "";
                lblTollPlaza.Text = "";
                lblAmount.Text = "";
            }

        }
    }
    protected void ddlVehicleMode_SelectedIndexChanged(object sender, EventArgs e)
    {
        amt = Convert.ToInt32(lblAmount.Text);
        if (ddlVehicleMode.Text == "Medium")
            lblAmount.Text = Convert.ToInt32(amt * .15 + amt).ToString();
        else if (ddlVehicleMode.Text == "Heavy")
            lblAmount.Text = Convert.ToInt32(amt * .25 + amt).ToString();

        ddlVehicleMode.Enabled = false;
    }

    bool validation()
    {
        if (lblDateofJourney.Text == "")
        {
            lblres.Text = "Date of Journey Required";
            Calendar1.Visible = true;
        }
        
        else
        { lblres.Text = ""; return true; }
        return false;
           
    }
    protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date.CompareTo(DateTime.Today) < 0)
        {
            e.Day.IsSelectable = false;
        }
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date.CompareTo(DateTime.Today) < 0)
        {
            e.Day.IsSelectable = false;
        }
    }
    protected void btnSave_Click1(object sender, EventArgs e)
    {
        if (validation())
        {
            btnSave_Click(null, null);
            Response.Redirect("UserTicket.aspx?vehicle=" + txtVehicle.Text + "&km=" + lblKms.Text + "&date=" + lblDateofJourney.Text + "&from=" + ddlFrom.SelectedItem.Text + "&to=" + ddlTo.SelectedItem.Text + "&amount=" + lblAmount.Text + "&type=manual&userid="+userid+"");
        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        btnSave_Click(null, null);

        string msg1 = "Hi, Your ticket booked. Vehicle:'"+txtVehicle.Text+"' Date:'"+lblDateofJourney.Text+"', From:'"+ddlFrom.SelectedItem.Text+"',To:'"+ddlTo.SelectedItem.Text+"'Amt:'"+lblAmount.Text+"' ";
        string path = "http://www.chandnas.co.in/pushsms.php?username=rajesh160776&password=pass@123&sender=test&to=" + lblContact.Text + "&message=" + msg1;


        WebRequest myWebRequest = WebRequest.Create(path);
        WebResponse myWebResponse = myWebRequest.GetResponse();
        Stream ReceiveStream = myWebResponse.GetResponseStream();
        Encoding encode = System.Text.Encoding.GetEncoding("utf-8");
        StreamReader readStream = new StreamReader(ReceiveStream, encode);
        string strResponse = readStream.ReadToEnd();

        btnReset_Click(null, null);

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("Vehicles.aspx?userid="+userid+"");
        ImageButton2.Attributes.Add("OnClick", "show()");

    }
}
