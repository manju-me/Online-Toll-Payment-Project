<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminView.aspx.cs" Inherits="AdminView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Admin :: View </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/header1.jpg" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" Height="100px" Width="998px" />
            <marquee behaviour="alternate" style="z-index: 143; left: 2px; width: 1152px; position: absolute;
                top: 102px" scrollamount="3"><SPAN 
style="FONT-SIZE: 14pt;  COLOR: #0000ff; FONT-FAMILY: High Tower Text; BACKGROUND-COLOR: transparent">National 
Highway Athority Of India Welcomes you to Online Toll 
Plaza&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</SPAN></marquee>
        <asp:Panel ID="Panel1" runat="server" Height="324px" ScrollBars="Auto" Style="z-index: 101;
            left: 128px; position: absolute; top: 152px" Width="504px" Visible="False" HorizontalAlign="Center">
            &nbsp;
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Style="z-index: 100; left: 16px;
                position: absolute; top: 8px" Text="Toll Plaza Ticket Fares" Width="464px"></asp:Label>
            <asp:SqlDataSource ID="ONLine" runat="server" ConnectionString="<%$ ConnectionStrings:OTPConnectionString1 %>"
                SelectCommand="SELECT * FROM [TollFee]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px"
                CellPadding="3" DataSourceID="ONLine" GridLines="Vertical" Style="z-index: 102;
                left: 12px; position: absolute; top: 40px" ForeColor="Black">
                <FooterStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="From" HeaderText="From" SortExpression="From" />
                    <asp:BoundField DataField="to" HeaderText="to" SortExpression="to" />
                    <asp:BoundField DataField="KMS" HeaderText="KMS" SortExpression="KMS" />
                    <asp:BoundField DataField="Toll" HeaderText="Toll" SortExpression="Toll" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="#CCCCCC" />
            </asp:GridView>
            &nbsp;
        </asp:Panel>
        &nbsp; &nbsp;
        <asp:Image ID="Image1" runat="server" Height="328px" ImageUrl="~/Image/india_highway.jpg"
            Style="z-index: 102; left: 648px; position: absolute; top: 124px" Width="348px" />
        <asp:Panel ID="Panel2" runat="server" BackColor="White" Height="316px" Style="z-index: 103;
            left: 136px; position: absolute; top: 148px" Width="496px" Visible="False" HorizontalAlign="Center" ScrollBars="Auto">
            &nbsp;
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="Entire"
                ForeColor="Black" GridLines="Vertical" Style="z-index: 100; left: 40px; position: absolute;
                top: 80px">
                <FooterStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Vehicle" HeaderText="Vehicle" SortExpression="Vehicle" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                </Columns>
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="#CCCCCC" />
            </asp:GridView>
            &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="z-index: 101; left: 28px;
                position: absolute; top: 36px" Text="Select Type"></asp:Label>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="z-index: 104; left: 24px;
                position: absolute; top: 12px" Text="Rules Violeted by Vehicles" Width="432px"></asp:Label>
            &nbsp;
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                Style="z-index: 103; left: 120px; position: absolute; top: 36px">
                <asp:ListItem>Select One</asp:ListItem>
                <asp:ListItem>Today's</asp:ListItem>
                <asp:ListItem>Entire</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:SqlDataSource ID="Entire" runat="server" ConnectionString="<%$ ConnectionStrings:OTPConnectionString1 %>"
                SelectCommand="SELECT * FROM [RTOcomplaints] WHERE ([date] LIKE '%' + @date2 + '%')" >
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="date2" PropertyName="SelectedValue"
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/admin.aspx" Style="z-index: 104; left: 10px; position: absolute;
            top: 129px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/Login.aspx" Style="z-index: 105; left: 59px; position: absolute;
            top: 130px" Width="60px">Log Out</asp:HyperLink>
            <asp:Panel ID="Panel3" runat="server" BackColor="White" Height="300px" Style="z-index: 107;
                left: 144px; position: absolute; top: 152px" Width="488px" Visible="False" HorizontalAlign="Center" ScrollBars="Auto">
                &nbsp;
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                    Style="z-index: 100; left: 25px; position: absolute; top: 88px" AllowPaging="True" Height="6px" Width="433px" OnRowUpdated="GridView3_RowUpdated">
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTPConnectionString1 %>"
                    SelectCommand="SELECT [ID],[From], [to], [KMS], [Toll], [Amount] FROM [TollFee]"
                      UpdateCommand="Update TollFee set From=@From
                     to=@to,KMS=@KMS,Toll=@Toll,Amount=@Amount
                      where ID=@ID"></asp:SqlDataSource>
                    
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="z-index: 101; left: 40px;
                    position: absolute; top: 52px" Text="Select Type"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                Style="z-index: 102; left: 144px; position: absolute; top: 52px">
                    <asp:ListItem>Select One</asp:ListItem>
                    <asp:ListItem>This Week's</asp:ListItem>
                    <asp:ListItem>Entire</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="Shift" runat="server" ConnectionString="<%$ ConnectionStrings:OTPConnectionString1 %>"
                    SelectCommand="SELECT * FROM [TollFee]">
                </asp:SqlDataSource>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="z-index: 103; left: 20px;
                    position: absolute; top: 16px" Text="Shift Of the Employees" Width="444px"></asp:Label>
                <asp:Button ID="btnPrint" runat="server" OnClick="btnPrint_Click" Style="z-index: 105;
                    left: 296px; position: absolute; top: 48px" Text="Print Data" />
            </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
