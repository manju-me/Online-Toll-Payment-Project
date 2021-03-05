<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Toll Plaza :: Admin</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #000000">
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Panel ID="Panel1" runat="server" BackColor="Black" BorderColor="White" BorderStyle="Inset"
            BorderWidth="5px" ForeColor="White" Height="620px" HorizontalAlign="Center" Style="z-index: 101;
            left: 112px; position: absolute; top: 132px; background-color: #000000;" Width="548px">
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Height="12px" Style="z-index: 100; left: 48px; position: absolute; top: 28px"
                Text="Name"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 101; left: 48px; position: absolute; top: 56px" Text="Address"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 102; left: 48px; position: absolute; top: 108px" Text="City"></asp:Label>
            <asp:Label ID="State" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 103; left: 48px; position: absolute; top: 140px" Text="State"></asp:Label>
            &nbsp;
            <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 104; left: 48px; position: absolute; top: 176px" Text="Contact #"></asp:Label>
            <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 105; left: 48px; position: absolute; top: 208px" Text="eMail "></asp:Label>
            <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 106; left: 48px; position: absolute; top: 408px" Text="UserName"></asp:Label>
            <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 107; left: 48px; position: absolute; top: 448px" Text="Password"></asp:Label>
            <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 108; left: 48px; position: absolute; top: 488px" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" BorderColor="Navy" BorderStyle="None" Style="z-index: 109;
                left: 192px; position: absolute; top: 20px" TabIndex="1"></asp:TextBox>
            <asp:TextBox ID="txtAddress" runat="server" Height="36px" Style="z-index: 110; left: 192px;
                position: absolute; top: 52px" TextMode="MultiLine" Width="208px" TabIndex="2"></asp:TextBox>
            <asp:TextBox ID="txtCIty" runat="server" Style="z-index: 111; left: 192px; position: absolute;
                top: 104px" TabIndex="3"></asp:TextBox>
            <asp:TextBox ID="txtState" runat="server" Style="z-index: 112; left: 192px; position: absolute;
                top: 136px" TabIndex="4"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="txtContact" runat="server" AutoCompleteType="Disabled" CausesValidation="True"
                MaxLength="10" Style="z-index: 113; left: 192px; position: absolute; top: 172px" TabIndex="5"></asp:TextBox>
            <asp:TextBox ID="txtMail" runat="server" Style="z-index: 114; left: 192px; position: absolute;
                top: 204px" TabIndex="6"></asp:TextBox>
            <asp:TextBox ID="txtusername" runat="server" Style="z-index: 115; left: 207px; position: absolute;
                top: 412px" TabIndex="10" Width="132px"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 116; left: 208px; position: absolute;
                top: 448px" TextMode="Password" Width="132px" TabIndex="11"></asp:TextBox>
            <asp:TextBox ID="txtConPass" runat="server" Style="z-index: 117; left: 208px; position: absolute;
                top: 488px" TextMode="Password" Width="132px" TabIndex="12"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name Required" SetFocusOnError="True" Style="z-index: 118; left: 360px;
                position: absolute; top: 20px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress"
                ErrorMessage="Address Required" SetFocusOnError="True" Style="z-index: 119; left: 412px;
                position: absolute; top: 60px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCIty"
                ErrorMessage="City Required" SetFocusOnError="True" Style="z-index: 120; left: 376px;
                position: absolute; top: 108px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtState"
                ErrorMessage="State Required" SetFocusOnError="True" Style="z-index: 121; left: 376px;
                position: absolute; top: 140px" ValidationGroup="a"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtContact"
                ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" Style="z-index: 122;
                left: 376px; position: absolute; top: 172px" ValidationGroup="a">Mobile # Required</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtusername"
                ErrorMessage="User name Required" SetFocusOnError="True" Style="z-index: 123;
                left: 376px; position: absolute; top: 412px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password Required" SetFocusOnError="True" Style="z-index: 124;
                left: 376px; position: absolute; top: 448px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtConPass"
                ErrorMessage="Password Required" SetFocusOnError="True" Style="z-index: 125;
                left: 376px; position: absolute; top: 492px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                ControlToValidate="txtConPass" ErrorMessage="Password Mismatch" SetFocusOnError="True"
                Style="z-index: 126; left: 376px; position: absolute; top: 472px" ValidationGroup="a"></asp:CompareValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail"
                ErrorMessage="Enter valid Mail" SetFocusOnError="True" Style="z-index: 127; left: 376px;
                position: absolute; top: 204px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a"></asp:RegularExpressionValidator>
            <asp:Label ID="lblResult" runat="server" Font-Bold="False" Font-Names="Consolas"
                ForeColor="Red" Style="z-index: 128; left: 4px; position: absolute; top: 356px"
                Width="344px" Height="52px"></asp:Label>
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Style="z-index: 129;
                left: 144px; position: absolute; top: 532px" Text="Create" ValidationGroup="a" TabIndex="13" />
            <asp:Button ID="btnReset" runat="server"  Style="z-index: 130;
                left: 244px; position: absolute; top: 532px" Text="Reset" OnClick="btnReset_Click" TabIndex="14" />
            &nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 131; left: 48px; position: absolute; top: 240px" Text="Salary"></asp:Label>
            <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 132; left: 48px; position: absolute; top: 276px" Text="Designation"></asp:Label>
            <asp:TextBox ID="txtSalary" runat="server" Style="z-index: 133; left: 192px; position: absolute;
                top: 236px" Width="148px" TabIndex="7"></asp:TextBox>
            <asp:DropDownList ID="ddlDesignation" runat="server" Style="z-index: 134; left: 192px;
                position: absolute; top: 268px" TabIndex="8" >
                <asp:ListItem>Select one</asp:ListItem>
                <asp:ListItem>Security</asp:ListItem>
                <asp:ListItem>Process Executive</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSalary"
                ErrorMessage="Salary Required" SetFocusOnError="True" Style="z-index: 135; left: 376px;
                position: absolute; top: 236px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:Image ID="Image1" runat="server" Height="140px" Style="z-index: 136; left: 360px;
                position: absolute; top: 268px" Width="172px" />
            <input id="File1" runat="server" name="File1" style="z-index: 139; left: 136px; width: 80px;
                position: absolute; top: 328px; height: 24px" tabindex="41" type="file" />
            <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Names="MS Reference Sans Serif"
                Style="z-index: 137; left: 48px; position: absolute; top: 328px" Text="Image"></asp:Label>
            <asp:Button ID="btnUpload" runat="server" CausesValidation="False" EnableTheming="False"
                Height="24px" OnClick="btnUpload_Click" Style="z-index: 140; left: 248px; position: absolute;
                top: 328px" TabIndex="9" Text="Upload" UseSubmitBehavior="False" Width="76px" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BackColor="Teal" BorderColor="Indigo" BorderStyle="Solid"
            Height="164px" HorizontalAlign="Center" Style="z-index: 102; left: 700px; position: absolute;
            top: 136px" Width="216px">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                ForeColor="White" Style="z-index: 100; left: 32px; position: absolute; top: 40px"
                Text="Select"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="Transparent"
                ForeColor="Black" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                Style="z-index: 101; left: 84px; position: absolute; top: 36px">
                <asp:ListItem>Select One</asp:ListItem>
                <asp:ListItem>Today</asp:ListItem>
                <asp:ListItem>Month</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                ForeColor="White" Style="z-index: 102; left: 32px; position: absolute; top: 64px"
                Text="Month" Visible="False"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" BackColor="Transparent"
                ForeColor="Black" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                Style="z-index: 103; left: 84px; position: absolute; top: 64px" Visible="False">
                <asp:ListItem>Select One</asp:ListItem>
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True"
                Font-Names="Palatino Linotype" ForeColor="White" OnCheckedChanged="CheckBox1_CheckedChanged"
                Style="z-index: 104; left: 32px; position: absolute; top: 92px" Text="Get Complete Years" />
            <asp:Label ID="lblTotal" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                ForeColor="White" Style="z-index: 105; left: 32px; position: absolute; top: 124px"
                Width="148px"></asp:Label>
            <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="High Tower Text"
                Font-Size="14pt" ForeColor="White" Height="24px" Style="z-index: 107; left: 12px;
                position: absolute; top: 7px" Text="Collections" Width="192px"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" BackColor="LightSkyBlue" BorderColor="Black"
            BorderWidth="5px" Height="132px" Style="z-index: 103; left: 704px; position: absolute;
            top: 328px" Width="216px">
            <asp:Label ID="Label14" runat="server" Font-Size="16pt" Style="z-index: 100; left: 36px;
                position: absolute; top: 4px" Text="Manage employee"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 101; left: 44px; position: absolute;
                top: 44px" NavigateUrl="~/AdminShift.aspx">Manage Shifts</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" Style="z-index: 103; left: 44px; position: absolute;
                top: 76px" NavigateUrl="~/AdminEmp.aspx">Edit Employee Details</asp:HyperLink>
        </asp:Panel>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/AdminEmp.aspx" Style="z-index: 104; left: 708px; position: absolute;
            top: 112px">Edit Employee</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/AdminShift.aspx" Style="z-index: 105; left: 820px; position: absolute;
            top: 112px">Manage Shifts</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/Login.aspx" Style="z-index: 106; left: 932px; position: absolute;
            top: 112px" Width="60px">Log Out</asp:HyperLink>
        <asp:Panel ID="Panel4" runat="server" Height="124px" HorizontalAlign="Justify" Style="z-index: 107;
            left: 708px; position: absolute; top: 492px" Width="220px" BorderColor="Black" BorderStyle="Solid">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Style="z-index: 100;
                left: 8px; position: absolute; top: 32px" Width="204px">View Rules Violetd Vehicles</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Style="z-index: 101;
                left: 8px; position: absolute; top: 60px" Width="204px">View Rate Master</asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Style="z-index: 102;
                left: 8px; position: absolute; top: 88px" Width="204px">View Shifts</asp:LinkButton>
            <asp:Label ID="Label16" runat="server" Font-Size="16pt" Style="z-index: 104; left: 76px;
                position: absolute; top: 4px" Text="Records"></asp:Label>
        </asp:Panel>
        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="High Tower Text"
            Font-Size="20pt" Style="z-index: 109; left: 296px; position: absolute; top: 100px"
            Text="Add Employee"></asp:Label>
    
    </div>
    </form>
</body>
</html>
