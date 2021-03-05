<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserFP.aspx.cs" Inherits="UserFP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Toll Plaza :: Forgot Password?</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: -2px" />
        <asp:Image ID="Image1" runat="server" Height="428px" ImageUrl="~/Image/800px-DelhiFlyover_EDITED.jpg"
            Style="z-index: 101; left: 4px; position: absolute; top: 120px" Width="480px" />
        <marquee behaviour="alternate" scrollamount="3" style="font-weight: normal; font-size: 10mm;
            z-index: 103; left: 4px; text-transform: capitalize; width: 996px; color: white;
            font-style: normal; position: absolute; top: 96px; background-color: teal; font-variant: normal;
            text-decoration: none">
            <span style="font-size: 14pt; color: #ffffff; font-family: High Tower Text">If your
                mobile number and email are registered, then only you can receive a password...</span></marquee>
        <asp:Panel ID="Panel1" runat="server" BackColor="#E0E0E0" BorderColor="Black" BorderStyle="Groove"
            Height="192px" HorizontalAlign="Justify" Style="z-index: 104; left: 548px; position: absolute;
            top: 164px" Width="396px">
            <asp:Label ID="Label1" runat="server" BackColor="#FF8080" Font-Bold="True" Font-Names="Palatino Linotype"
                Style="z-index: 100; left: 0px; position: absolute; top: 0px" Text="You will receive password only when your mobile number and eMail are registered with National Highway Authority of India Online Toll Plaza"
                Width="396px"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Style="z-index: 101;
                left: 72px; position: absolute; top: 84px" Text="Username : "></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" Style="z-index: 102; left: 188px; position: absolute;
                top: 84px"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Style="z-index: 103;
                left: 172px; position: absolute; top: 140px" Text="Submit" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername"
                ErrorMessage="* Username Required" Style="z-index: 104; left: 136px; position: absolute;
                top: 112px" Width="136px"></asp:RequiredFieldValidator>
            <asp:Label ID="lblResult" runat="server" Font-Bold="True" ForeColor="Red" Style="z-index: 106;
                left: 135px; position: absolute; top: 111px"></asp:Label>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
