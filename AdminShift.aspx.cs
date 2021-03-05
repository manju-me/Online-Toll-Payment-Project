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

public partial class AdminShift : System.Web.UI.Page
{
    string str;
    int i=1;
    CheckBox check;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       
    }
  
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        i += 1;
        if (i > 5)
            Label1.Text = "More than 5";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (lblDateFrom.Text != "")
        {

            if (SQlCon.type == "Process Executive")
            {
                if (SQlCon.dropdown == "Morning")
                    if (ddlMorning.Items.Count <= 4)
                    {
                        ddlMorning.Items.Add(GridView1.SelectedRow.Cells[1].Text);
                        GridView1.SelectedRow.Visible = false;
                        ddlMorning.Visible = true;
                        SQlCon.getcon();
                        str = "INSERT INTO shifts VALUES('" + GridView1.SelectedRow.Cells[1].Text + "','" + GridView1.SelectedRow.Cells[3].Text + "','"+lblTime.Text+"','" + lblDateFrom.Text + "','" + lblDateTo.Text + "')";
                        SQlCon.insert(str);
                        SQlCon.closecon();
                    }
                    else
                    {
                        SQlCon.type = "";
                        SQlCon.dropdown = "";
                    }

                if (SQlCon.dropdown == "Noon")
                    if (ddlNoon.Items.Count <= 4)
                    {
                        ddlNoon.Items.Add(GridView1.SelectedRow.Cells[1].Text);
                        GridView1.SelectedRow.Visible = false;
                        ddlNoon.Visible = true;
                        SQlCon.getcon();
                        str = "INSERT INTO shifts VALUES('" + GridView1.SelectedRow.Cells[1].Text + "','" + GridView1.SelectedRow.Cells[3].Text + "','" + lblTime.Text + "','" + lblDateFrom.Text + "','" + lblDateTo.Text + "')";
                        SQlCon.insert(str);
                        SQlCon.closecon();

                    }
                    else
                    {
                        SQlCon.type = "";
                        SQlCon.dropdown = "";
                    }
                if (SQlCon.dropdown == "Night")
                    if (ddlNight.Items.Count <= 4)
                    {
                        ddlNight.Items.Add(GridView1.SelectedRow.Cells[1].Text);
                        GridView1.SelectedRow.Visible = false;
                        ddlNight.Visible = true;
                        SQlCon.getcon();
                        str = "INSERT INTO shifts VALUES('" + GridView1.SelectedRow.Cells[1].Text + "','" + GridView1.SelectedRow.Cells[3].Text + "','" + lblTime.Text + "','" + lblDateFrom.Text + "','" + lblDateTo.Text + "')";
                        SQlCon.insert(str);
                        SQlCon.closecon();

                    }
                    else
                    {
                        SQlCon.type = "";
                        SQlCon.dropdown = "";
                    }
            }
            else
            {
                if (SQlCon.dropdown == "Morning")
                    if (ddlSMorning.Items.Count <= 4)
                    {
                        ddlSMorning.Items.Add(GridView1.SelectedRow.Cells[1].Text);
                        GridView1.SelectedRow.Visible = false;
                        ddlSMorning.Visible = true;
                        SQlCon.getcon();
                        str = "INSERT INTO shifts VALUES('" + GridView1.SelectedRow.Cells[1].Text + "','" + GridView1.SelectedRow.Cells[3].Text + "','" + lblTime.Text + "','" + lblDateFrom.Text + "','" + lblDateTo.Text + "')";
                        SQlCon.insert(str);
                        SQlCon.closecon();
                    }
                    else
                    {
                        SQlCon.type = "";
                        SQlCon.dropdown = "";
                    }

                if (SQlCon.dropdown == "Noon")
                    if (ddlSNoon.Items.Count <= 4)
                    {
                        ddlSNoon.Items.Add(GridView1.SelectedRow.Cells[1].Text);
                        GridView1.SelectedRow.Visible = false;
                        ddlSNoon.Visible = true;
                        SQlCon.getcon();
                        str = "INSERT INTO shifts VALUES('" + GridView1.SelectedRow.Cells[1].Text + "','" + GridView1.SelectedRow.Cells[3].Text + "','" + lblTime.Text + "','" + lblDateFrom.Text + "','" + lblDateTo.Text + "')";
                        SQlCon.insert(str);
                        SQlCon.closecon();
                    }
                    else
                    {
                        SQlCon.type = "";
                        SQlCon.dropdown = "";
                    }
                if (SQlCon.dropdown == "Night")
                    if (ddlSNight.Items.Count <= 4)
                    {
                        ddlSNight.Items.Add(GridView1.SelectedRow.Cells[1].Text);
                        GridView1.SelectedRow.Visible = false;
                        ddlSNight.Visible = true;
                        SQlCon.getcon();
                        str = "INSERT INTO shifts VALUES('" + GridView1.SelectedRow.Cells[1].Text + "','" + GridView1.SelectedRow.Cells[3].Text + "','" + lblTime.Text + "','" + lblDateFrom.Text + "','" + lblDateTo.Text + "')";
                        SQlCon.insert(str);
                        SQlCon.closecon();
                    }
                    else
                    {
                        SQlCon.type = "";
                        SQlCon.dropdown = "";
                    }
            }
        }
        else
        {
            Response.Write("<script language=\"javascript\"> alert('Please select the date')</script>");
        }
    }
    protected void ddlShift_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlShift.SelectedItem.Text == "Morning")
        {
            SQlCon.dropdown = "Morning";
            lblTime.Text = "06:00 am to 02:00 pm";
        }
        if (ddlShift.SelectedItem.Text == "Noon")
        { SQlCon.dropdown = "Noon"; lblTime.Text = "02:00 pm to 10:00 pm"; }
        if (ddlShift.SelectedItem.Text == "Night")
        { SQlCon.dropdown = "Night"; lblTime.Text = "10:00 pm to 06:00 am"; }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SQlCon.type = DropDownList1.SelectedItem.Text;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lblDateFrom.Text = Calendar1.SelectedDate.ToShortDateString();
        DateTime dd;
        dd = Convert.ToDateTime(lblDateFrom.Text);
       
        lblDateTo.Text = dd.AddDays(06).ToShortDateString();
        Calendar1.Visible = false;
       str= Calendar1.SelectedDate.DayOfWeek.ToString();
       string day;
       switch (str)
       {
           case "Monday": day = dd.AddDays(6).ToShortDateString(); break;
           case "Tuesday": day = dd.AddDays(5).ToShortDateString(); break;
           case "Wednesday": day = dd.AddDays(4).ToShortDateString(); break;
           case "Thursay": day = dd.AddDays(3).ToShortDateString(); break;
           case "Friday": day = dd.AddDays(2).ToShortDateString(); break;
           case "Saturday": day = dd.AddDays(1).ToShortDateString(); break;
           default: day = dd.ToShortDateString(); break;
       }

       str = "SELECT * FROM SHIFTS WHERE Dateto='"+day+"'";
       SQlCon.getcon();
       SQlCon.getReader(str);

       if (SQlCon.sqlrdr.Read())
       {
           Response.Write("<script language=\"javascript\"> alert('Shift Already Assigned on Select Date')</script>");
           GridView1.Enabled = false;
       }
       else
       {
           GridView1.Enabled = true;
       }
    }

   
}
