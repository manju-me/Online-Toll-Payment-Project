<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Toll Plaza :: Log in</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/header1.jpg" Style="z-index: 100;
            left: 1px; position: absolute; top: 0px; height: 98px; width: 100%;" />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/india-national-highway-new.gif"
            Style="z-index: 101; left: 4px; position: absolute; top: 185px" Height="286px" Width="357px" BorderColor="Green" BorderStyle="Solid" BorderWidth="1px" />
            <marquee behaviour="alternate" style="z-index: 143; left: 1px; width: 1151px; position: absolute;
                top: 102px" scrollamount="3"><SPAN 
style="FONT-SIZE: 14pt; COLOR: white; FONT-FAMILY: High Tower Text; BACKGROUND-COLOR: transparent">National 
Highway Athority Of India Welcomes you to Online Toll 
Plaza&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</SPAN></marquee>
        
        <asp:Panel ID="Panel1" runat="server" BackColor="Purple" Height="180px" Style="z-index: 102;
            left: 394px; position: absolute; top: 282px" Width="356px" BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center" ForeColor="White">
            <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 8px; position: absolute;
                top: 68px" Text="Password" Font-Bold="True" Font-Names="High Tower Text" Font-Size="13pt"></asp:Label>
            <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 8px; position: absolute;
                top: 36px" Text="UserName" Font-Bold="True" Font-Names="High Tower Text" Font-Size="13pt"></asp:Label>
            <asp:TextBox ID="txtUser" runat="server" Style="z-index: 102; left: 100px; position: absolute;
                top: 36px" TabIndex="1" Width="136px"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 103; left: 100px; position: absolute;
                top: 68px" TabIndex="2" TextMode="Password" Width="136px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required"
                Style="z-index: 104; left: 268px; position: absolute; top: 36px" ControlToValidate="txtUser" Font-Bold="False" Font-Names="High Tower Text" Font-Size="13pt" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required"
                Style="z-index: 105; left: 268px; position: absolute; top: 68px" ControlToValidate="txtPassword" Font-Bold="False" Font-Names="High Tower Text" Font-Size="13pt" ValidationGroup="a"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <asp:Label ID="lblResult" runat="server" Font-Bold="True" ForeColor="Red" Style="z-index: 106;
                left: 12px; position: absolute; top: 96px" Width="332px"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 107; left: 15px; position: absolute;
                top: 146px" NavigateUrl="~/SignUp.aspx" ForeColor="White" Height="28px" ImageUrl="~/Image/create account.jpg" Width="146px">Create an Account?</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" Style="z-index: 108; left: 200px; position: absolute;
                top: 147px" Width="146px" NavigateUrl="~/UserFP.aspx" ForeColor="White" Height="28px" ImageUrl="~/Image/forgot.jpg">Forgot Password?</asp:HyperLink>
            <asp:Label ID="Label4" runat="server" BackColor="Purple" Font-Bold="True" Font-Italic="True"
                Font-Names="High Tower Text" Font-Size="X-Large" Height="24px" Style="z-index: 109;
                left: 4px; position: absolute; top: 4px" Text="Log In" Width="348px"></asp:Label>
            <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Small"
                Style="z-index: 110; left: 112px; position: absolute; top: 116px" Text="LogIn" OnClick="btnLogin_Click" TabIndex="3" ValidationGroup="a" />
            <asp:Button ID="btnReset" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Small"
                Style="z-index: 112; left: 192px; position: absolute; top: 116px" Text="Reset" TabIndex="4" OnClick="btnReset_Click" />
        </asp:Panel>
        <asp:Image ID="Image2" runat="server" Height="276px" ImageUrl="~/Image/pd2402540.jpg"
            Style="z-index: 104; left: 792px; position: absolute; top: 192px" Width="360px" />
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <img src="Image/finalbanner1.jpg" style="background-image: url(Image/finalbanner1.jpg); width: 1149px; position: absolute;
            height: 105px; background-color: transparent; left: 2px; top: 497px;" /></div>
    </form>
</body>
</html>
