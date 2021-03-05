<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminEmp.aspx.cs" Inherits="AdminEmp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Toll Plaza :: Edit Employee Details</title>
    <script language="javascript"> function getMessage() { var ans; ans=window.confirm('Are you sure want to delete?'); document.getElementById("TextBox1").value=ans; return true;} </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px; width: 1271px; height: 99px;" />
        <asp:Panel ID="Panel1" runat="server" BackColor="Black" BorderColor="White" BorderStyle="Inset"
            BorderWidth="5px" ForeColor="White" Height="548px" HorizontalAlign="Center" Style="z-index: 101;
            left: 396px; position: absolute; top: 116px" Width="548px">
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Height="12px" Style="z-index: 100; left: 48px; position: absolute; top: 44px"
                Text="Name"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 101; left: 48px; position: absolute; top: 72px" Text="Address"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 102; left: 48px; position: absolute; top: 124px" Text="City"></asp:Label>
            <asp:Label ID="State" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 103; left: 48px; position: absolute; top: 156px" Text="State"></asp:Label>
            &nbsp;
            <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 104; left: 48px; position: absolute; top: 192px" Text="Contact #"></asp:Label>
            <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 105; left: 48px; position: absolute; top: 224px" Text="eMail "></asp:Label>
            <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 106; left: 48px; position: absolute; top: 256px" Text="UserName"></asp:Label>
            <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 107; left: 48px; position: absolute; top: 296px" Text="Password"></asp:Label>
            <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 108; left: 48px; position: absolute; top: 336px" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" BorderColor="Navy" BorderStyle="None" Style="z-index: 109;
                left: 192px; position: absolute; top: 36px" TabIndex="2"></asp:TextBox>
            <asp:TextBox ID="txtAddress" runat="server" Height="36px" Style="z-index: 110; left: 192px;
                position: absolute; top: 68px" TextMode="MultiLine" Width="208px" TabIndex="3"></asp:TextBox>
            <asp:TextBox ID="txtCIty" runat="server" Style="z-index: 111; left: 192px; position: absolute;
                top: 120px" TabIndex="4"></asp:TextBox>
            <asp:TextBox ID="txtState" runat="server" Style="z-index: 112; left: 192px; position: absolute;
                top: 152px" TabIndex="5"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="txtContact" runat="server" AutoCompleteType="Disabled" CausesValidation="True"
                MaxLength="10" Style="z-index: 113; left: 192px; position: absolute; top: 188px" TabIndex="6"></asp:TextBox>
            <asp:TextBox ID="txtMail" runat="server" Style="z-index: 114; left: 192px; position: absolute;
                top: 220px" TabIndex="7"></asp:TextBox>
            <asp:TextBox ID="txtusername" runat="server" Style="z-index: 115; left: 192px; position: absolute;
                top: 256px" Enabled="False" TabIndex="8"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 116; left: 192px; position: absolute;
                top: 292px" Width="116px" TabIndex="9"></asp:TextBox>
            <asp:TextBox ID="txtConPass" runat="server" Style="z-index: 117; left: 192px; position: absolute;
                top: 332px" Width="116px" TabIndex="10"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name Required" SetFocusOnError="True" Style="z-index: 118; left: 360px;
                position: absolute; top: 36px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress"
                ErrorMessage="Address Required" SetFocusOnError="True" Style="z-index: 119; left: 412px;
                position: absolute; top: 76px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCIty"
                ErrorMessage="City Required" SetFocusOnError="True" Style="z-index: 120; left: 376px;
                position: absolute; top: 124px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtState"
                ErrorMessage="State Required" SetFocusOnError="True" Style="z-index: 121; left: 376px;
                position: absolute; top: 156px" ValidationGroup="a"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtContact"
                ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" Style="z-index: 122;
                left: 376px; position: absolute; top: 188px" ValidationGroup="a">Mobile # Required</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtusername"
                ErrorMessage="User name Required" SetFocusOnError="True" Style="z-index: 123;
                left: 376px; position: absolute; top: 256px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password Required" SetFocusOnError="True" Style="z-index: 124;
                left: 376px; position: absolute; top: 292px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtConPass"
                ErrorMessage="Password Required" SetFocusOnError="True" Style="z-index: 125;
                left: 376px; position: absolute; top: 336px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                ControlToValidate="txtConPass" ErrorMessage="Password Mismatch" SetFocusOnError="True"
                Style="z-index: 126; left: 376px; position: absolute; top: 316px" ValidationGroup="a"></asp:CompareValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail"
                ErrorMessage="Enter valid Mail" SetFocusOnError="True" Style="z-index: 127; left: 376px;
                position: absolute; top: 220px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ValidationGroup="a"></asp:RegularExpressionValidator>
            <asp:Label ID="lblResult" runat="server" Font-Bold="False" Font-Names="Consolas"
                ForeColor="Red" Height="48px" Style="z-index: 128; left: 4px; position: absolute;
                top: 448px" Width="384px"></asp:Label>
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Style="z-index: 129;
                left: 164px; position: absolute; top: 508px" Text="Update" ValidationGroup="a" TabIndex="13" />
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="z-index: 130;
                left: 316px; position: absolute; top: 508px" Text="Reset" TabIndex="15" />
            &nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 131; left: 48px; position: absolute; top: 376px" Text="Salary"></asp:Label>
            <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 132; left: 48px; position: absolute; top: 404px" Text="Designation"></asp:Label>
            <asp:TextBox ID="txtSalary" runat="server" Style="z-index: 133; left: 192px; position: absolute;
                top: 372px" Width="80px" TabIndex="11"></asp:TextBox>
            <asp:DropDownList ID="ddlDesignation" runat="server" Style="z-index: 134; left: 192px;
                position: absolute; top: 404px" TabIndex="12">
                <asp:ListItem>Select one</asp:ListItem>
                <asp:ListItem>Security</asp:ListItem>
                <asp:ListItem>Process Executive</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSalary"
                ErrorMessage="Salary Required" SetFocusOnError="True" Style="z-index: 135; left: 376px;
                position: absolute; top: 372px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 136; left: 48px; position: absolute; top: 8px" Text="Employee ID"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="employee"
                DataTextField="username" DataValueField="username" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                Style="z-index: 137; left: 192px; position: absolute; top: 4px" TabIndex="1">
            </asp:DropDownList>
            <asp:SqlDataSource ID="employee" runat="server" ConnectionString="<%$ ConnectionStrings:OTPConnectionString1%>"
                SelectCommand="SELECT [username] FROM [Employee]"></asp:SqlDataSource>
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Style="z-index: 138;
                left: 244px; position: absolute; top: 508px" Text="Delete" TabIndex="14" />
        <asp:Image ID="Image1" runat="server" Height="136px" Style="z-index: 140; left: 392px;
            position: absolute; top: 400px" Width="132px" />
        </asp:Panel>
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="None"
            ForeColor="White" Style="z-index: 102; left: 64px; position: absolute; top: 280px"></asp:TextBox>
        &nbsp;
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/pd2402540.jpg"
            Style="z-index: 103; left: 20px; position: absolute; top: 140px; height: 481px; width: 342px;" />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/admin.aspx" Style="z-index: 104; left: 28px; position: absolute;
            top: 108px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/AdminShift.aspx" Style="z-index: 105; left: 92px; position: absolute;
            top: 108px">Manage Shifts</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/Login.aspx" Style="z-index: 106; left: 224px; position: absolute;
            top: 108px">Log Out</asp:HyperLink>
        &nbsp;
    
    </div>
    </form>
</body>
</html>
