<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vehicles.aspx.cs" Inherits="vehicles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title> Vehicles :: Information </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Panel ID="Panel1" runat="server" BackColor="Transparent" BorderColor="Black"
            BorderStyle="Groove" BorderWidth="10px" Height="260px" HorizontalAlign="Center"
            Style="z-index: 101; left: 56px; position: absolute; top: 128px" Width="884px">
            <asp:Label ID="Label1" runat="server" Font-Size="20pt" Style="z-index: 100; left: 0px;
                position: absolute; top: 0px" Text="Light Vehicles" Width="876px"></asp:Label>
            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/Image/light 3.jpg"
                Style="z-index: 101; left: 100px; position: absolute; top: 40px" />
            <asp:Image ID="Image2" runat="server" Height="172px" ImageUrl="~/Image/light 4.jpg"
                Style="z-index: 103; left: 544px; position: absolute; top: 44px" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BorderColor="Black" BorderStyle="Ridge" BorderWidth="10px"
            Height="420px" HorizontalAlign="Center" Style="z-index: 102; left: 56px; position: absolute;
            top: 424px" Width="884px">
            <asp:Label ID="Label2" runat="server" Font-Size="20pt" Style="z-index: 100; left: 0px;
                position: absolute; top: 0px" Text="Medium Vehicles" Width="876px"></asp:Label>
            <asp:Image ID="Image4" runat="server" Height="348px" ImageUrl="~/Image/light 2.jpg"
                Style="z-index: 101; left: 76px; position: absolute; top: 48px" />
            <asp:Image ID="Image5" runat="server" Height="348px" ImageUrl="~/Image/light 1.jpg"
                Style="z-index: 103; left: 468px; position: absolute; top: 48px" Width="364px" />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="10px"
            Height="564px" HorizontalAlign="Center" Style="z-index: 103; left: 56px; position: absolute;
            top: 876px" Width="884px">
            <asp:Label ID="Label3" runat="server" Font-Size="20pt" Style="z-index: 100; left: 0px;
                position: absolute; top: 0px" Text="Heavy Vehicles" Width="876px"></asp:Label>
            <asp:Image ID="Image8" runat="server" Height="224px" ImageUrl="~/Image/heavy 2.jpg"
                Style="z-index: 101; left: 20px; position: absolute; top: 324px" Width="328px" />
            &nbsp;
            <asp:Image ID="Image6" runat="server" Height="260px" ImageUrl="~/Image/Heavy 1.jpg"
                Style="z-index: 102; left: 8px; position: absolute; top: 44px" />
            <asp:Image ID="Image7" runat="server" Height="268px" ImageUrl="~/Image/heavy.jpg"
                Style="z-index: 103; left: 428px; position: absolute; top: 44px" Width="428px" />
            <asp:Image ID="Image9" runat="server" Height="240px" ImageUrl="~/Image/heavy 4.jpg"
                Style="z-index: 105; left: 460px; position: absolute; top: 320px" Width="344px" />
        </asp:Panel>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="Maroon"
            OnClick="LinkButton1_Click" Style="z-index: 105; left: 60px; position: absolute;
            top: 104px">Home</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
