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

public partial class AdminEmp : System.Web.UI.Page
{
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        btnDelete.Attributes.Add("OnClick", "getMessage()");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        str = "SELECT * FROM Employee WHERE username='"+DropDownList1.SelectedItem.Text+"'";
        SQlCon.getcon();
        SQlCon.getReader(str);

        if (SQlCon.sqlrdr.Read())
        {
            txtName.Text = SQlCon.sqlrdr.GetString(0);
            txtAddress.Text = SQlCon.sqlrdr.GetString(1);
            txtCIty.Text = SQlCon.sqlrdr.GetString(2);
            txtState.Text = SQlCon.sqlrdr.GetString(3);
            txtContact.Text = SQlCon.sqlrdr.GetString(4);
            txtMail.Text = SQlCon.sqlrdr.GetString(5);
            txtusername.Text = SQlCon.sqlrdr.GetString(6);
            txtPassword.Text = txtConPass.Text = SQlCon.sqlrdr.GetString(7);
            txtSalary.Text = SQlCon.sqlrdr.GetString(8);
            ddlDesignation.SelectedItem.Text = SQlCon.sqlrdr.GetString(9);
            Image1.ImageUrl = SQlCon.sqlrdr.GetString(10);
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtAddress.Text = "";
        txtCIty.Text = "";
        txtConPass.Text = "";
        txtContact.Text = "";
        txtMail.Text = "";
        txtName.Text = "";
        txtPassword.Text = "";
        txtSalary.Text = "";
        txtState.Text = "";
        txtusername.Text = "";
        lblResult.Text = "";
        txtName.Focus();
        ddlDesignation.ClearSelection();
        DropDownList1.ClearSelection();
        Image1.ImageUrl = "";
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        btnDelete.Attributes.Add("OnClick", "getMessage()");
        if (TextBox1.Text == "true")
        {
            str = "DELETE Employee WHERE username='" + DropDownList1.SelectedItem.Text + "'";
            SQlCon.getcon();
            SQlCon.delete(str);
            str = "DELETE LOGIN WHERE Userid='" + DropDownList1.SelectedItem.Text + "'";
            SQlCon.getcon();
            SQlCon.delete(str);
            Response.Write("<script language=\"javascript\"> alert('Account deleted Successfully')</script>");
            btnReset_Click(null, null);
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (validation())
        {
            str = "UPDATE Employee SET name='" + txtName.Text + "',address='" + txtAddress.Text + "',city='" + txtCIty.Text + "',state='" + txtState.Text + "',contact='" + txtContact.Text + "',email='" + txtMail.Text + "',password='" + txtPassword.Text + "',salary='" + txtSalary.Text + "',designation='" + ddlDesignation.SelectedItem.Text + "' where username='" + DropDownList1.SelectedItem.Text + "'";
            SQlCon.getcon();
            SQlCon.update(str);
            Response.Write("<script language=\"javascript\"> alert('Account Updated Successfully')</script>");
            btnReset_Click(null, null);
        }
    }

    bool validation()
    {
        if (ddlDesignation.SelectedItem.Text == "Select one")
        {
            lblResult.Text = "Please select Employee designation"; return false;
        }
        else
            if (txtContact.Text.Length != 10)
            {
                lblResult.Text = "Kindly Enter the 10 Digit Mobile #"; return false;
            }
            else
            {
                long no, no1;
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
}
