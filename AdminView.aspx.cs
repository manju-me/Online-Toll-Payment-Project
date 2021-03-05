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

public partial class AdminView : System.Web.UI.Page
{
    string str;
    string day;
       
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["type"] == "RTO")
        {
            Panel2.Visible = true;
        }
        else if (Request.QueryString["type"] == "Shifts")
        {
            Panel3.Visible = true;
        }
        else if (Request.QueryString["type"] == "Toll")
        {
            Panel1.Visible = true;
        }
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Today's")
            DropDownList1.SelectedItem.Value = DateTime.Now.ToShortDateString();
        if (DropDownList1.SelectedItem.Text == "Entire")
            DropDownList1.SelectedItem.Value = "%";
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedItem.Text == "This Week's")
        {
            DateTime dd;
            dd = DateTime.Now;
            str = dd.DayOfWeek.ToString();
          
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
            DropDownList2.SelectedItem.Value = day;
        }
        if (DropDownList2.SelectedItem.Text == "Entire")
            DropDownList2.SelectedItem.Value = "%";
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmpShift.aspx?type="+DropDownList2.SelectedItem.Value+"");
    }
    protected void GridView3_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        //string LocName = GridView3.DataKeys[e.RowIndex].Values["Locations"].ToString();
        //TextBox txt1 = (TextBox)GridView3.Rows[e.RowIndex].FindControl("From");
        //TextBox txt2 = (TextBox)GridView3.Rows[e.RowIndex].FindControl("to");
        //TextBox txt3 = (TextBox)GridView3.Rows[e.RowIndex].FindControl("KMS");
        //TextBox txt4 = (TextBox)GridView3.Rows[e.RowIndex].FindControl("Toll");
        //TextBox txt5 = (TextBox)GridView3.Rows[e.RowIndex].FindControl("Amount");
        //con.Open();
        //SqlCommand cmd = new SqlCommand("UPDATE Quantity set Lamp_pro4='" + txt1.Text + "',Lamp_pro5='" + txt2.Text + "',AC_Profile5='" + txt3.Text + "' where Locations=" + LocName, con);
        //cmd.ExecuteNonQuery();
        //con.Close();

        //GridView2.EditIndex = -1;
        ////BindQuantity();
        //GridView2.DataBind();
 
    }
}
