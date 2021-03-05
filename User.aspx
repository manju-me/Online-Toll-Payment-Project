<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Toll Plaza :: Home
    </title>
    <script type="text/javascript" language="javascript">
    function show()
        {            
             window.open("Vehicles.aspx","View"); 
        }
        </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        &nbsp;&nbsp;
        <asp:Panel ID="Panel3" runat="server" BackColor="Black" Height="420px" Style="z-index: 101;
            left: 80px; position: absolute; top: 140px" Width="836px" BorderColor="Black" BorderStyle="Outset" BorderWidth="5px">
            <marquee behaviour="alternate" style="z-index: 143; left: 0px; width: 836px; position: absolute;
                top: 0px" scrollamount="3">
                <span style="font-size: 14pt; color: #9900cc; font-family: High Tower Text">National
                    Highway Athority Of India Welcomes you to Online NHAI toll Plaza</span></marquee>
            <asp:Image ID="Image1" runat="server" Height="236px" ImageUrl="~/Image/usr.jpg"
                Style="z-index: 100; left: 524px; position: absolute; top: 40px" Width="288px" BackColor="Teal" />
            <asp:Label ID="lblVehicle" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 101;
                left: 624px; position: absolute; top: 228px" Width="172px"></asp:Label>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" Style="z-index: 102;
                left: 544px; position: absolute; top: 92px" Text="Address" Font-Size="13pt"></asp:Label>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 103;
                left: 544px; position: absolute; top: 148px" Text="Contact #"></asp:Label>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 104;
                left: 544px; position: absolute; top: 188px" Text="eMail"></asp:Label>
            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" Style="z-index: 105;
                left: 544px; position: absolute; top: 64px" Text="Name" Font-Size="13pt"></asp:Label>
            <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 106;
                left: 544px; position: absolute; top: 228px" Text="Vehicle #"></asp:Label>
            <asp:Label ID="lblName" runat="server" Font-Bold="True" ForeColor="Black" Style="z-index: 107;
                left: 624px; position: absolute; top: 60px" Width="172px" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lblAddress" runat="server" Font-Bold="True" ForeColor="Black" Height="44px"
                Style="z-index: 108; left: 624px; position: absolute; top: 92px" Width="176px" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lblContact" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 109;
                left: 624px; position: absolute; top: 148px" Width="176px"></asp:Label>
            <asp:Label ID="lblMail" runat="server" Font-Bold="True" ForeColor="White" Height="32px"
                Style="z-index: 110; left: 624px; position: absolute; top: 188px" Width="176px"></asp:Label>
            <asp:Label ID="Label12" runat="server" Style="z-index: 111; left: 28px; position: absolute;
                top: 44px" Text="Vehicle #" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White"></asp:Label>
            &nbsp;
            <asp:Label ID="Label14" runat="server" Style="z-index: 112; left: 28px; position: absolute;
                top: 300px" Text="Date of Journey" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White"></asp:Label>
            &nbsp; &nbsp;
            <asp:Label ID="Label16" runat="server" Style="z-index: 113; left: 28px; position: absolute;
                top: 272px" Text="Payment through" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White"></asp:Label>
            <asp:Label ID="Label17" runat="server" Style="z-index: 114; left: 28px; position: absolute;
                top: 184px" Text="Number of Toll Plaza" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White"></asp:Label>
            <asp:Label ID="Label18" runat="server" Style="z-index: 115; left: 28px; position: absolute;
                top: 244px" Text="Amount" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White"></asp:Label>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 116; left: 28px; position: absolute; top: 212px"
                Text="No of Kilometers"></asp:Label>
            <asp:Label ID="Label19" runat="server" Style="z-index: 117; left: 28px; position: absolute;
                top: 128px" Text="Returnig on Same day?" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White"></asp:Label>
            <asp:RadioButton ID="rdbYes" runat="server" Style="z-index: 118; left: 224px; position: absolute;
                top: 124px" Text="Yes" AutoPostBack="True" GroupName="1" OnCheckedChanged="rdbYes_CheckedChanged" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White" TabIndex="4" />
            <asp:RadioButton ID="rdbNo" runat="server" 
                Style="z-index: 119; left: 288px; position: absolute; top: 124px" Text="No" AutoPostBack="True" GroupName="1"  Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White" />
            &nbsp; &nbsp;
            <asp:Label ID="lblTollPlaza" runat="server" Style="z-index: 120; left: 228px; position: absolute;
                top: 184px" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White"></asp:Label>
            <asp:Label ID="lblAmount" runat="server" Style="z-index: 121; left: 228px; position: absolute;
                top: 244px" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White"></asp:Label>
            <asp:Label ID="lblPayment" runat="server" Style="z-index: 122; left: 228px; position: absolute;
                top: 272px" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="Black"></asp:Label>
            <asp:Label ID="lblDateofJourney" runat="server" Style="z-index: 123; left: 228px;
                position: absolute; top: 300px" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White"></asp:Label>
            &nbsp; &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/calendar.gif"
                OnClick="ImageButton1_Click" Style="z-index: 124; left: 188px; position: absolute;
                top: 296px" TabIndex="3" />
            &nbsp;
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                Font-Size="8pt" ForeColor="#003399" Height="160px" OnSelectionChanged="Calendar1_SelectionChanged"
                Style="z-index: 125; left: 356px; position: absolute; top: 188px" Visible="False"
                Width="164px" OnDayRender="Calendar1_DayRender">
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
            &nbsp;
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click1" Style="z-index: 126;
                left: 40px; position: absolute; top: 372px" Text="Print Ticket" ValidationGroup="a" />
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Style="z-index: 127;
                left: 260px; position: absolute; top: 372px" Text="Reset" ValidationGroup="a" />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Style="z-index: 128;
                left: 564px; position: absolute; top: 332px">Click here to edit your profile</asp:LinkButton>
            <asp:Label ID="Label13" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 129; left: 28px; position: absolute; top: 72px"
                Text="From"></asp:Label>
            <asp:Label ID="Label15" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 130; left: 28px; position: absolute; top: 100px"
                Text="To"></asp:Label>
            <asp:Label ID="lblres" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="Red" Style="z-index: 131; left: 52px; position: absolute; top: 328px"
                Width="260px"></asp:Label>
            <asp:DropDownList ID="ddlFrom" runat="server" AutoPostBack="True" Font-Bold="True"
                Font-Names="Franklin Gothic Book" ForeColor="MediumBlue" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged"
                Style="z-index: 132; left: 224px; position: absolute; top: 68px" TabIndex="2">
                <asp:ListItem>Select one</asp:ListItem>
                <asp:ListItem Value="Mumbai">Mumbai</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Satara</asp:ListItem>
                <asp:ListItem>Kolhapur</asp:ListItem>
                <asp:ListItem>Belgaum</asp:ListItem>
                <asp:ListItem>Hubli</asp:ListItem>
                <asp:ListItem>Haveri</asp:ListItem>
                <asp:ListItem>Chitradurga</asp:ListItem>
                <asp:ListItem>Tumkur</asp:ListItem>
                <asp:ListItem>Neelmangla</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" Font-Bold="True"
                Font-Names="Franklin Gothic Book" ForeColor="MediumBlue" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged"
                Style="z-index: 133; left: 224px; position: absolute; top: 96px" TabIndex="3">
                <asp:ListItem>Select one</asp:ListItem>
                <asp:ListItem Value="Mumbai">Mumbai</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Satara</asp:ListItem>
                <asp:ListItem>Kolhapur</asp:ListItem>
                <asp:ListItem>Belgaum</asp:ListItem>
                <asp:ListItem>Hubli</asp:ListItem>
                <asp:ListItem>Haveri</asp:ListItem>
                <asp:ListItem>Chitradurga</asp:ListItem>
                <asp:ListItem>Tumkur</asp:ListItem>
                <asp:ListItem>Neelmangla</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lblKms" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 134; left: 228px; position: absolute; top: 212px"></asp:Label>
            <asp:TextBox ID="txtVehicle" runat="server" 
                Style="z-index: 135; left: 224px; position: absolute; top: 44px" Width="140px" TabIndex="1"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 136; left: 228px; position: absolute; top: 20px"
                Text="Ex: KA 22 m 4394"></asp:Label>
            <asp:Label ID="Label3" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 137; left: 28px; position: absolute; top: 156px"
                Text="Vehicle Mode"></asp:Label>
            <asp:DropDownList ID="ddlVehicleMode" runat="server" AutoPostBack="True" Font-Bold="True"
                Font-Names="Franklin Gothic Book" ForeColor="MediumBlue" OnSelectedIndexChanged="ddlVehicleMode_SelectedIndexChanged"
                Style="z-index: 138; left: 224px; position: absolute; top: 152px" TabIndex="5">
                <asp:ListItem>Select one</asp:ListItem>
                <asp:ListItem>Light</asp:ListItem>
                <asp:ListItem>Medium</asp:ListItem>
                <asp:ListItem>Heavy</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required"
                Font-Bold="True" Style="z-index: 139; left: 376px; position: absolute; top: 44px" ControlToValidate="txtVehicle" ValidationGroup="a"></asp:RequiredFieldValidator>
            &nbsp;
            &nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 140;
                left: 148px; position: absolute; top: 372px" Text="Send SMS" ValidationGroup="a" />
            <asp:ImageButton ID="ImageButton2" runat="server" Height="24px" ImageUrl="~/Image/question.jpg"
                OnClick="ImageButton2_Click" Style="z-index: 141; left: 328px; position: absolute;
                top: 152px" Width="24px" />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" Style="z-index: 144;
                left: 232px; position: absolute; top: 272px" Text="Credit Card" Width="92px"></asp:Label>
        </asp:Panel>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="Maroon"
            NavigateUrl="~/Login.aspx" Style="z-index: 103; left: 908px; position: absolute;
            top: 108px" Width="96px">Log Out</asp:HyperLink>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="Maroon"
            OnClick="LinkButton1_Click" Style="z-index: 105; left: 816px; position: absolute;
            top: 108px">Edit Profile</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
