<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPayment.aspx.cs" Inherits="UserPayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Toll Plaza :: Payment Details Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Panel ID="Panel1" runat="server" BackColor="Black" ForeColor="White" Height="240px"
            HorizontalAlign="Center" Style="z-index: 102; left: 192px; position: absolute;
            top: 120px" Width="660px">
            <asp:Label ID="lblInformation" runat="server" Font-Italic="False" Font-Names="High Tower Text"
                Height="28px" Style="z-index: 100; left: 20px; position: absolute; top: 8px"
                Width="596px" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Gautami" Font-Size="14pt"
                Style="z-index: 101; left: 68px; position: absolute; top: 56px" Text="16 Digit Credit card #"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Gautami" Font-Size="14pt"
                Style="z-index: 102; left: 68px; position: absolute; top: 88px" Text="Name of the Bank"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Gautami" Font-Size="14pt"
                Style="z-index: 103; left: 68px; position: absolute; top: 124px" Text="Bank Account #"></asp:Label>
            <asp:Label ID="lblresult" runat="server" Font-Names="Berlin Sans FB" ForeColor="Red"
                Style="z-index: 104; left: 72px; position: absolute; top: 160px" Width="352px"></asp:Label>
            <asp:TextBox ID="txtCreditcard" runat="server" Style="z-index: 105; left: 244px;
                position: absolute; top: 52px" Width="176px"></asp:TextBox>
            <asp:TextBox ID="txtBank" runat="server" Style="z-index: 106; left: 244px; position: absolute;
                top: 88px" Width="176px"></asp:TextBox>
            <asp:TextBox ID="txtBankAcc" runat="server" Style="z-index: 107; left: 244px; position: absolute;
                top: 124px" Width="176px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCreditcard"
                ErrorMessage="* Credit Card # Required" Style="z-index: 108; left: 440px; position: absolute;
                top: 52px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBank"
                ErrorMessage="* Name of the Bank Required" Style="z-index: 109; left: 440px;
                position: absolute; top: 88px" Width="184px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBankAcc"
                ErrorMessage="* Bank Account # Required" Style="z-index: 110; left: 440px; position: absolute;
                top: 124px"></asp:RequiredFieldValidator>
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Style="z-index: 111;
                left: 216px; position: absolute; top: 196px" Text="Save" />
            <asp:Button ID="btnClear" runat="server" Style="z-index: 113; left: 352px; position: absolute;
                top: 192px" Text="Clear" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
