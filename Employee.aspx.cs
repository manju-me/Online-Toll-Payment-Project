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
using System.Drawing;

public partial class Employee : System.Web.UI.Page
{
    string str;
    int amt;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDateofJourney.Text = DateTime.Now.ToShortDateString();
        ImageButton2.Attributes.Add("OnClick", "show()");
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
                lblTollPlaza.Text="";
                lblAmount.Text = "";
            }

        }
    }
    protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
    {
        amt = Convert.ToInt32(lblAmount.Text);
        if (ddlType.SelectedItem.Text == "Two Way")
           
            lblAmount.Text =Convert.ToInt32( Convert.ToInt32(amt * .50+amt)).ToString();
        ddlType.Enabled = false;
    }
    protected void ddlVehicleMode_SelectedIndexChanged(object sender, EventArgs e)
    {
        amt = Convert.ToInt32(lblAmount.Text);
        if(ddlVehicleMode.Text=="Medium")
            lblAmount.Text = Convert.ToInt32(Convert.ToInt32(amt * .15 + amt)).ToString();
        else if (ddlVehicleMode.Text == "Heavy")
            lblAmount.Text =Convert.ToInt32(Convert.ToInt32(amt * .25 + amt)).ToString();

        ddlVehicleMode.Enabled = false;
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        ddlVehicleMode.Enabled = true;
        ddlType.Enabled = true;
        ddlFrom.Enabled = true;
        ddlTo.Enabled = true;
        ddlFrom.ClearSelection();
        ddlTo.ClearSelection();
        ddlType.ClearSelection();
        ddlVehicleMode.ClearSelection();
        txtVehicle.Text = "";
        lblAmount.Text = "";
        lblKms.Text = "";
        lblTollPlaza.Text = "";
        Label11.Text = "";
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (validation())
        {
            SQlCon.closecon();
            SQlCon.getcon();
            str = "INSERT INTO ManualToll VALUES('" + txtVehicle.Text + "','" + lblKms.Text + "','" + lblTollPlaza.Text + "','" + lblAmount.Text + "','" + lblDateofJourney.Text + "','" + ddlFrom.SelectedItem.Text + "','" + ddlTo.SelectedItem.Text + "','" + ddlType.SelectedItem.Text + "','" + ddlVehicleMode.SelectedItem.Text + "')";
            SQlCon.insert(str);


            Response.Redirect("default.aspx?vehicle=" + txtVehicle.Text + "&km=" + lblKms.Text + "&date=" + lblDateofJourney.Text + "&from=" + ddlFrom.SelectedItem.Text + "&to=" + ddlTo.SelectedItem.Text + "&amount=" + lblAmount.Text + "&type=manual");
        }

    }
    protected void btnOPSubmit_Click(object sender, EventArgs e)
    {

        Panel2.Visible = true;
        SQlCon.getcon();
        str = "SELECT * FROM OnlineToll WHERE vehicle='"+txtOLvehicle.Text+"'";
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.Read())
        {
            DateTime doj;
            
            lblFrom.Text = SQlCon.sqlrdr.GetString(9);
            lblTo.Text = SQlCon.sqlrdr.GetString(10);
            lblOLamount.Text = SQlCon.sqlrdr.GetString(5);
            lblOLDOJ.Text = SQlCon.sqlrdr.GetString(7);
            
            lblType.Text = SQlCon.sqlrdr.GetString(10);

            doj = Convert.ToDateTime(lblOLDOJ.Text);
            

            string datej, monthj, yearj,str1=doj.ToShortDateString();
            string dated,monthd,yeard, str3=DateTime.Now.ToShortDateString();

            string[] split = str1.Split('-');
            datej=split[1];
            monthj = split[0];
            yearj=split[2];

            string[] split1 = str3.Split('-');
            dated = split1[1];
            monthd = split1[0];
            yeard = split1[2];



            if (monthd == monthj && yeard == yearj)
                if (dated == datej)
                {
                    Panel2.BackColor = Color.DarkSeaGreen;
                    btnAction.Visible = false;
                }
                else
                {
                    Panel2.BackColor = Color.IndianRed;
                    btnAction.Visible = true;

                }
        }
           
        else
        {
            Panel2.Visible = false;
            lblFrom.Text = "";
            lblTo.Text = "";
            lblOLamount.Text = "";
            lblOLDOJ.Text = "";
            lblType.Text = "";
            btnAction.Visible = true;
            Response.Write("<script language=\"javascript\"> alert('Data did not found.')</script>");

        }
    }

    protected void btnAction_Click(object sender, EventArgs e)
    {
        SQlCon.closecon();
        SQlCon.getcon();
        str = "SELECT * FROM RTOcomplaints WHERE Vehicle='"+txtOLvehicle.Text+"' and date='"+DateTime.Now.ToShortDateString()+"'";
        SQlCon.getReader(str);

        if (!SQlCon.sqlrdr.Read())
        {
            SQlCon.getcon();
            str = "INSERT INTO RTOcomplaints VALUES ('" + txtOLvehicle.Text + "','" + DateTime.Now.ToShortDateString() + "')";
            SQlCon.insert(str);
            txtOLvehicle.Text = "";
            Response.Write("<script language=\"javascript\"> alert('Action taken Message delivered to RTO')</script>");
        }
    }


    bool validation()
    {
        if (ddlFrom.SelectedItem.Text == "Select one")
        {
            ddlFrom.Focus(); Label11.Text = "Please select From";
        }
        else if (ddlTo.SelectedItem.Text == "Select one")
        {
            ddlTo.Focus(); Label11.Text = "Please Select To";
        }
        else if (ddlType.SelectedItem.Text == "Select one")
        {
            ddlType.Focus(); Label11.Text = "Please select Type";
        }
        else if (ddlVehicleMode.SelectedItem.Text == "Select one")
        {
            ddlVehicleMode.Focus(); Label11.Text = "Please select Vehicle Mode";
        }
        else
        { Label11.Text = ""; return true; }
        return false;
    }



    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("Vehicles.aspx?userid=Employee");
        ImageButton2.Attributes.Add("OnClick", "show()");
    }
}
