<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Toll Plaza :: Sign Up</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Panel ID="Panel1" runat="server" Height="452px" Style="z-index: 101; left: 404px;
            position: absolute; top: 132px" Width="548px" BackColor="Black" ForeColor="White" HorizontalAlign="Center" BorderColor="White" BorderStyle="Inset" BorderWidth="5px">
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Height="12px" Style="z-index: 100;
                left: 48px; position: absolute; top: 36px" Text="Name" Font-Names="MS Reference Sans Serif"></asp:Label>
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Style="z-index: 136; left: -2px;
                position: absolute; top: 4px" Text="Sign up! NHAI" Width="548px"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Style="z-index: 102; left: 48px;
                position: absolute; top: 60px" Text="Address" Font-Names="MS Reference Sans Serif"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="False" Style="z-index: 103; left: 48px;
                position: absolute; top: 108px" Text="City" Font-Names="MS Reference Sans Serif"></asp:Label>
            <asp:Label ID="State" runat="server" Font-Bold="False" Style="z-index: 104; left: 48px;
                position: absolute; top: 140px" Text="State" Font-Names="MS Reference Sans Serif"></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Bold="False" Style="z-index: 105; left: 48px;
                position: absolute; top: 184px" Text="Vehicle #" Font-Names="MS Reference Sans Serif"></asp:Label>
            <asp:Label ID="Label6" runat="server" Font-Bold="False" Style="z-index: 106; left: 48px;
                position: absolute; top: 216px" Text="Contact #" Font-Names="MS Reference Sans Serif"></asp:Label>
            <asp:Label ID="Label7" runat="server" Font-Bold="False" Style="z-index: 107; left: 48px;
                position: absolute; top: 248px" Text="eMail " Font-Names="MS Reference Sans Serif"></asp:Label>
            <asp:Label ID="Label8" runat="server" Font-Bold="False" Style="z-index: 108; left: 48px;
                position: absolute; top: 280px" Text="UserName" Font-Names="MS Reference Sans Serif"></asp:Label>
            <asp:Label ID="Label9" runat="server" Font-Bold="False" Style="z-index: 109; left: 48px;
                position: absolute; top: 320px" Text="Password" Font-Names="MS Reference Sans Serif"></asp:Label>
            <asp:Label ID="Label10" runat="server" Font-Bold="False" Style="z-index: 110; left: 48px;
                position: absolute; top: 360px" Text="Confirm Password" Font-Names="MS Reference Sans Serif"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" Style="z-index: 111; left: 192px; position: absolute;
                top: 28px" BorderColor="Navy" BorderStyle="None"></asp:TextBox>
            <asp:TextBox ID="txtAddress" runat="server" Height="36px" Style="z-index: 112; left: 192px;
                position: absolute; top: 56px" TextMode="MultiLine" Width="208px"></asp:TextBox>
            <asp:TextBox ID="txtCIty" runat="server" Style="z-index: 113; left: 192px; position: absolute;
                top: 104px"></asp:TextBox>
            <asp:TextBox ID="txtState" runat="server" Style="z-index: 114; left: 192px; position: absolute;
                top: 136px"></asp:TextBox>
            <asp:TextBox ID="txtVehicle" runat="server" Style="z-index: 115; left: 192px; position: absolute;
                top: 180px" Width="120px"></asp:TextBox>
            <asp:TextBox ID="txtContact" runat="server" AutoCompleteType="Disabled" CausesValidation="True"
                MaxLength="10" Style="z-index: 116; left: 192px; position: absolute; top: 212px"></asp:TextBox>
            <asp:TextBox ID="txtMail" runat="server" Style="z-index: 117; left: 192px; position: absolute;
                top: 244px"></asp:TextBox>
            <asp:TextBox ID="txtusername" runat="server" Style="z-index: 118; left: 192px; position: absolute;
                top: 280px" ></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 119; left: 192px; position: absolute;
                top: 316px" TextMode="Password" Width="148px"></asp:TextBox>
            <asp:TextBox ID="txtConPass" runat="server" Style="z-index: 120; left: 192px; position: absolute;
                top: 356px" TextMode="Password" Width="148px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required"
                Style="z-index: 121; left: 360px; position: absolute; top: 28px" ControlToValidate="txtName" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address Required"
                Style="z-index: 122; left: 412px; position: absolute; top: 64px" ControlToValidate="txtAddress" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="City Required"
                Style="z-index: 123; left: 376px; position: absolute; top: 108px" ControlToValidate="txtCIty" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="State Required"
                Style="z-index: 124; left: 376px; position: absolute; top: 140px" ControlToValidate="txtState" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"
                Style="z-index: 125; left: 376px; position: absolute; top: 180px" ControlToValidate="txtVehicle" SetFocusOnError="True">Vehicle number Required</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"
                Style="z-index: 126; left: 376px; position: absolute; top: 212px" ControlToValidate="txtContact" SetFocusOnError="True">Mobile # Required</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="User name Required"
                Style="z-index: 127; left: 376px; position: absolute; top: 280px" ControlToValidate="txtusername" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Password Required"
                Style="z-index: 128; left: 376px; position: absolute; top: 316px" ControlToValidate="txtPassword" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Password Required"
                Style="z-index: 129; left: 376px; position: absolute; top: 360px" ControlToValidate="txtConPass" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Mismatch"
                Style="z-index: 130; left: 376px; position: absolute; top: 336px" ControlToCompare="txtPassword" ControlToValidate="txtConPass" SetFocusOnError="True"></asp:CompareValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid Mail"
                Style="z-index: 131; left: 376px; position: absolute; top: 244px" ControlToValidate="txtMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>
            <asp:Label ID="lblResult" runat="server" Font-Bold="False" Font-Names="Consolas"
                ForeColor="Red" Style="z-index: 132; left: 80px; position: absolute; top: 384px"
                Width="384px"></asp:Label>
            <asp:Button ID="btnSave" runat="server" Style="z-index: 133; left: 200px; position: absolute;
                top: 412px" Text="Save" OnClick="btnSave_Click" />
            <asp:Button ID="btnReset" runat="server" Style="z-index: 134; left: 296px; position: absolute;
                top: 412px" Text="Reset" OnClick="btnReset_Click" />
            <asp:Label ID="Label4" runat="server" Style="z-index: 135; left: 192px; position: absolute;
                top: 160px" Text="Ex: KA-22 M4394"></asp:Label>
        </asp:Panel>
        <marquee behaviour="alternate" style="z-index: 103; left: 0px; width: 1000px; position: absolute;
            top: 100px; font-weight: bold; color: white; font-style: normal; background-color: teal; font-variant: normal;">
            <span style="color: ghostwhite; background-color: #006666; font-size: 14pt;">Sign up
                for free!!! National Highway Authority of India</span></marquee>
        <asp:Image ID="Image1" runat="server" Height="472px" ImageUrl="~/Image/toll 1.jpg"
            Style="z-index: 104; left: 4px; position: absolute; top: 132px" Width="392px" />
    
    </div>
    </form>
</body>
</html>
