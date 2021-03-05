<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminShift.aspx.cs" Inherits="AdminShift" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Toll Plaza :: Shift maintainance</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px; height: 101px; width: 1576px;" />
        <asp:Panel ID="Panel1" runat="server" Height="384px" Style="z-index: 101; left: 256px;
            position: absolute; top: 148px" Width="668px" BackColor="Teal">
            <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 8px; position: absolute;
                top: 4px" Text="Employee Type" Font-Size="14pt" ForeColor="White"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Style="z-index: 101;
                left: 184px; position: absolute; top: 8px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Select One</asp:ListItem>
                <asp:ListItem>Security</asp:ListItem>
                <asp:ListItem>Process Executive</asp:ListItem>
            </asp:DropDownList>
            <asp:Panel ID="Panel2" runat="server" Height="200px" ScrollBars="Auto" Style="z-index: 102;
                left: 180px; position: absolute; top: 168px" Width="388px">
                &nbsp; &nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                    Style="z-index: 100; left: 0px; position: absolute; top: 4px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTPConnectionString1 %>"
                    SelectCommand="SELECT [username], [Name], [Designation] FROM [Employee] WHERE ([Designation] = @Designation)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Designation" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:Panel>
            &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label2" runat="server" Font-Size="14pt" ForeColor="White" Style="z-index: 103;
                left: 8px; position: absolute; top: 32px" Text="Shifts"></asp:Label>
            <asp:Label ID="Label7" runat="server" Style="z-index: 104; left: 8px; position: absolute;
                top: 56px" Text="Time" Font-Size="14pt" ForeColor="White"></asp:Label>
            <asp:DropDownList ID="ddlShift" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlShift_SelectedIndexChanged"
                Style="z-index: 105; left: 184px; position: absolute; top: 36px">
                <asp:ListItem>Select One</asp:ListItem>
                <asp:ListItem>Morning</asp:ListItem>
                <asp:ListItem>Noon</asp:ListItem>
                <asp:ListItem>Night</asp:ListItem>
            </asp:DropDownList>
            &nbsp; &nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/calendar.gif"
                OnClick="ImageButton1_Click" Style="z-index: 106; left: 144px; position: absolute;
                top: 76px" TabIndex="3" />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                Font-Size="8pt" ForeColor="#003399" Height="176px" 
                OnSelectionChanged="Calendar1_SelectionChanged" Style="z-index: 107; left: 176px;
                position: absolute; top: 76px" Visible="False" Width="184px">
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <WeekendDayStyle BackColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                    Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            </asp:Calendar>
            <asp:Label ID="Label3" runat="server" Style="z-index: 108; left: 8px; position: absolute;
                top: 80px" Text="Select Date From" Font-Size="14pt" ForeColor="White"></asp:Label>
            <asp:Label ID="lblDateFrom" runat="server" Style="z-index: 109; left: 184px; position: absolute;
                top: 84px" Font-Size="13pt" ForeColor="White"></asp:Label>
            <asp:Label ID="lblDateTo" runat="server" Style="z-index: 110; left: 184px; position: absolute;
                top: 108px" Font-Size="13pt" ForeColor="White"></asp:Label>
            <asp:Label ID="Label4" runat="server" Style="z-index: 111; left: 8px; position: absolute;
                top: 104px" Text="Select Date To" Font-Size="14pt" ForeColor="White"></asp:Label>
            &nbsp;
            <asp:Panel ID="Panel3" runat="server" BorderColor="White" BorderStyle="Double" Height="60px"
                Style="z-index: 113; left: 352px; position: absolute; top: 88px" Width="300px">
            <asp:DropDownList ID="ddlSMorning" runat="server" Style="z-index: 100; left: 8px;
                position: absolute; top: 36px" Visible="False">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlSNoon" runat="server" Style="z-index: 101; left: 116px;
                position: absolute; top: 36px" Visible="False">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlSNight" runat="server" Style="z-index: 102; left: 216px;
                position: absolute; top: 36px" Visible="False">
            </asp:DropDownList>
                <asp:Label ID="Label5" runat="server" Font-Size="14pt" ForeColor="White" Style="z-index: 103;
                    left: 100px; position: absolute; top: -2px" Text="Security Guards" Height="8px"></asp:Label>
                <asp:Label ID="Label11" runat="server" ForeColor="White" Style="z-index: 104; left: 20px;
                    position: absolute; top: 16px" Text="Morning"></asp:Label>
                <asp:Label ID="Label12" runat="server" ForeColor="White" Style="z-index: 105; left: 140px;
                    position: absolute; top: 16px" Text="Noon"></asp:Label>
                <asp:Label ID="Label13" runat="server" ForeColor="White" Style="z-index: 107; left: 236px;
                    position: absolute; top: 16px" Text="Night"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" BorderColor="White" BorderStyle="Double" Height="56px"
                Style="z-index: 114; left: 352px; position: absolute; top: 12px" Width="300px">
            <asp:DropDownList ID="ddlMorning" runat="server" Style="z-index: 100; left: 8px;
                position: absolute; top: 32px" Visible="False">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlNoon" runat="server" Style="z-index: 101; left: 116px; position: absolute;
                top: 32px" Visible="False">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlNight" runat="server" Style="z-index: 102; left: 216px;
                position: absolute; top: 32px" Visible="False">
            </asp:DropDownList>
                <asp:Label ID="Label6" runat="server" Font-Size="14pt" ForeColor="White" Style="z-index: 103;
                    left: 88px; position: absolute; top: -2px" Text="Process Executive" Height="8px"></asp:Label>
                <asp:Label ID="Label8" runat="server" ForeColor="White" Style="z-index: 104; left: 20px;
                    position: absolute; top: 12px" Text="Morning"></asp:Label>
                <asp:Label ID="Label9" runat="server" ForeColor="White" Style="z-index: 105; left: 136px;
                    position: absolute; top: 12px" Text="Noon"></asp:Label>
                <asp:Label ID="Label10" runat="server" ForeColor="White" Style="z-index: 107; left: 236px;
                    position: absolute; top: 12px" Text="Night"></asp:Label>
            </asp:Panel>
            <asp:Label ID="lblTime" runat="server" Font-Size="13pt" ForeColor="White" Style="z-index: 116;
                left: 184px; position: absolute; top: 60px"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" BackColor="Black" ForeColor="White" Height="360px"
            Style="z-index: 102; left: 24px; position: absolute; top: 152px" Width="200px">
            <span style="font-size: 14pt; font-family: System"><span style="font-size: 13pt;
                font-family: Times New Roman Greek">&nbsp;Easy Steps to Allot shifts<br />
                <br />
                &nbsp;1. Select Employee Type.<br />
                &nbsp;2. Shift Shift.<br />
                &nbsp;3. Select Date.<br />
                &nbsp;4. Once above all the &nbsp;done, select the employee<br />
                &nbsp;5. Once selected, the select&nbsp; employee will be placed in Particular shifts and Particular
                Periods.<br />
                <br />
                Note: You can not select more than 5 employees.<br />
                Once shift alloted can not be altered!<br />
                Do not change the date untill all the allotment finished.</span><br />
            </span>
        </asp:Panel>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/AdminEmp.aspx" Style="z-index: 103; left: 796px; position: absolute;
            top: 112px">Edit Employee</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/admin.aspx" Style="z-index: 104; left: 744px; position: absolute;
            top: 112px">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/Login.aspx" Style="z-index: 106; left: 904px; position: absolute;
            top: 112px" Width="60px">Log Out</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
