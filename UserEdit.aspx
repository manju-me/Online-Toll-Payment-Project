<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserEdit.aspx.cs" Inherits="UserEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Toll Plaza :: Profile Edit</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 101;
            left: 0px; position: absolute; top: 0px" />
        <asp:Panel ID="Panel1" runat="server" BackColor="Black" ForeColor="White" Height="372px"
            HorizontalAlign="Center" Style="z-index: 102; left: 32px; position: absolute;
            top: 140px" Width="944px" BorderColor="White" BorderStyle="Groove">
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Height="12px" Style="z-index: 100; left: 28px; position: absolute; top: 28px"
                Text="Name"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 101; left: 28px; position: absolute; top: 56px" Text="Address"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 102; left: 28px; position: absolute; top: 108px" Text="City"></asp:Label>
            <asp:Label ID="State" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 103; left: 28px; position: absolute; top: 140px" Text="State"></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 104; left: 28px; position: absolute; top: 184px" Text="Vehicle #"></asp:Label>
            <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 105; left: 28px; position: absolute; top: 216px" Text="Contact #"></asp:Label>
            <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 106; left: 28px; position: absolute; top: 248px" Text="eMail "></asp:Label>
            <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 107; left: 448px; position: absolute; top: 16px" Text="UserName"></asp:Label>
            <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 108; left: 448px; position: absolute; top: 56px" Text="Password"></asp:Label>
            <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 109; left: 448px; position: absolute; top: 96px" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" BorderColor="Navy" BorderStyle="None" Style="z-index: 110;
                left: 112px; position: absolute; top: 24px" TabIndex="1"></asp:TextBox>
            <asp:TextBox ID="txtAddress" runat="server" Height="36px" Style="z-index: 111; left: 112px;
                position: absolute; top: 56px" TextMode="MultiLine" Width="208px" TabIndex="2"></asp:TextBox>
            <asp:TextBox ID="txtCIty" runat="server" Style="z-index: 112; left: 112px; position: absolute;
                top: 108px" TabIndex="3"></asp:TextBox>
            <asp:TextBox ID="txtState" runat="server" Style="z-index: 113; left: 112px; position: absolute;
                top: 140px" TabIndex="4"></asp:TextBox>
            <asp:TextBox ID="txtVehicle" runat="server" Style="z-index: 114; left: 112px; position: absolute;
                top: 184px" Width="120px" TabIndex="5"></asp:TextBox>
            <asp:TextBox ID="txtContact" runat="server" AutoCompleteType="Disabled" CausesValidation="True"
                MaxLength="10" Style="z-index: 115; left: 112px; position: absolute; top: 216px" TabIndex="6"></asp:TextBox>
            <asp:TextBox ID="txtMail" runat="server" Style="z-index: 116; left: 112px; position: absolute;
                top: 248px" TabIndex="7"></asp:TextBox>
            <asp:TextBox ID="txtusername" runat="server" Style="z-index: 117; left: 592px; position: absolute;
                top: 16px" Enabled="False" TabIndex="8"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 118; left: 592px; position: absolute;
                top: 52px" Width="148px" TabIndex="9"></asp:TextBox>
            <asp:TextBox ID="txtConPass" runat="server" Style="z-index: 119; left: 592px; position: absolute;
                top: 92px" Width="148px" TabIndex="10"></asp:TextBox>
            <asp:TextBox ID="txtCredit" runat="server" Style="z-index: 120; left: 592px; position: absolute;
                top: 132px" TabIndex="11" Width="148px"></asp:TextBox>
            <asp:TextBox ID="txtBankname" runat="server" Style="z-index: 121; left: 592px; position: absolute;
                top: 164px" TabIndex="12" Width="148px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name Required" SetFocusOnError="True" Style="z-index: 122; left: 280px;
                position: absolute; top: 24px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress"
                ErrorMessage="Address Required" SetFocusOnError="True" Style="z-index: 123; left: 332px;
                position: absolute; top: 64px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCIty"
                ErrorMessage="City Required" SetFocusOnError="True" Style="z-index: 124; left: 296px;
                position: absolute; top: 112px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtState"
                ErrorMessage="State Required" SetFocusOnError="True" Style="z-index: 125; left: 296px;
                position: absolute; top: 144px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtVehicle"
                ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" Style="z-index: 126;
                left: 296px; position: absolute; top: 184px">Vehicle number Required</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtContact"
                ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" Style="z-index: 127;
                left: 296px; position: absolute; top: 216px">Mobile # Required</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtusername"
                ErrorMessage="User name Required" SetFocusOnError="True" Style="z-index: 128;
                left: 776px; position: absolute; top: 16px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password Required" SetFocusOnError="True" Style="z-index: 129;
                left: 776px; position: absolute; top: 48px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtConPass"
                ErrorMessage="Password Required" SetFocusOnError="True" Style="z-index: 130;
                left: 776px; position: absolute; top: 96px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtBankAcc"
                ErrorMessage="Bank Account# Required" SetFocusOnError="True" Style="z-index: 131;
                left: 776px; position: absolute; top: 200px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtBankname"
                ErrorMessage="Bank Name Required" SetFocusOnError="True" Style="z-index: 132;
                left: 776px; position: absolute; top: 164px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtCredit"
                ErrorMessage="Creditcard Required" SetFocusOnError="True" Style="z-index: 144;
                left: 776px; position: absolute; top: 132px"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                ControlToValidate="txtConPass" ErrorMessage="Password Mismatch" SetFocusOnError="True"
                Style="z-index: 134; left: 776px; position: absolute; top: 72px"></asp:CompareValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail"
                ErrorMessage="Enter valid Mail" SetFocusOnError="True" Style="z-index: 135; left: 296px;
                position: absolute; top: 248px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:Label ID="lblResult" runat="server" Font-Bold="False" Font-Names="Consolas"
                ForeColor="Red" Style="z-index: 136; left: 448px; position: absolute; top: 244px"
                Width="384px"></asp:Label>
            <asp:Button ID="btnSave" runat="server" Style="z-index: 137;
                left: 396px; position: absolute; top: 296px" Text="Save" OnClick="btnSave_Click" TabIndex="14" />
            <asp:Button ID="btnReset" runat="server"  Style="z-index: 138;
                left: 472px; position: absolute; top: 296px" Text="Cancel" OnClick="btnReset_Click" TabIndex="15" />
            <asp:Label ID="Label4" runat="server" Style="z-index: 139; left: 112px; position: absolute;
                top: 164px" Text="Ex: KA-22 M4394"></asp:Label>
            <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 140; left: 448px; position: absolute; top: 136px" Text="Creditcard"></asp:Label>
            <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 141; left: 448px; position: absolute; top: 168px" Text="Bank Name"></asp:Label>
            <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Bookman Old Style"
                Style="z-index: 142; left: 448px; position: absolute; top: 200px" Text="Bank Account No"></asp:Label>
            <asp:TextBox ID="txtBankAcc" runat="server" Style="z-index: 143; left: 592px; position: absolute;
                top: 200px" TabIndex="13" Width="148px"></asp:TextBox>
            &nbsp;&nbsp;
        </asp:Panel>
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/Login.aspx" Style="z-index: 103; left: 912px; position: absolute;
            top: 112px" Width="60px">Log Out</asp:HyperLink>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="Maroon"
            OnClick="LinkButton1_Click" Style="z-index: 105; left: 860px; position: absolute;
            top: 112px">Home</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
