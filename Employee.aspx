<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Online Toll Plazaz :: Employee</title>
    <script type="text/javascript" language="javascript">
    function show()
        {            
            window.open("Vehicles.aspx","View");     
        }
        </script>
    <script language="javascript"> function getMessage() { var ans; ans=window.confirm('Data did not found. Take an action?'); document.getElementById("TextBox1").value=ans; return true;} </script>
</head>
<body bgcolor="#000000" style="background-color: #FF3300">
    <form id="form1" runat="server">
    <div style="background-color: #FF3300">
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px; width: 1607px; height: 88px;" />
            <marquee behaviour="alternate" style="z-index: 143; left: 2px; width: 1152px; position: absolute;
                top: 98px" scrollamount="3"><SPAN 
style="FONT-SIZE: 14pt; COLOR: #0000ff; FONT-FAMILY: High Tower Text; BACKGROUND-COLOR: transparent">National 
Highway Athority Of India Welcomes you to Online Toll 
Plaza&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</SPAN></marquee>
        <asp:Panel ID="Panel3" runat="server" BackColor="Black" BorderColor="Maroon" BorderStyle="Solid"
            BorderWidth="5px" Height="392px" Style="z-index: 101; left: 68px; position: absolute;
            top: 136px; background-color: #CC3300;" Width="400px">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 100; left: 24px; position: absolute; top: 32px"
                Text="Vehicle #" BackColor="Transparent"></asp:Label>
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 101; left: 24px; position: absolute; top: 64px"
                Text="From" BackColor="Transparent"></asp:Label>
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 102; left: 24px; position: absolute; top: 288px"
                Text="Date of Journey" BackColor="Transparent"></asp:Label>
            &nbsp;
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 103; left: 24px; position: absolute; top: 92px"
                Text="To" BackColor="Transparent"></asp:Label>
            <asp:Label ID="Label3" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 104; left: 24px; position: absolute; top: 172px"
                Text="Vehicle Mode"></asp:Label>
            &nbsp;&nbsp;
            <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 105; left: 24px; position: absolute; top: 232px"
                Text="# of Toll Plaza" BackColor="Transparent"></asp:Label>
            <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 106; left: 24px; position: absolute; top: 260px"
                Text="Amount" BackColor="Transparent"></asp:Label>
            &nbsp; &nbsp; &nbsp;
            <asp:Label ID="lblTollPlaza" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 107; left: 160px; position: absolute;
                top: 228px" BackColor="Black"></asp:Label>
            <asp:Label ID="lblAmount" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 108; left: 160px; position: absolute;
                top: 260px" BackColor="Black"></asp:Label>
            &nbsp;
            <asp:Label ID="lblDateofJourney" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 109; left: 160px; position: absolute;
                top: 288px" BackColor="Black"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="ddlFrom" runat="server" AutoPostBack="True" Font-Bold="True"
                Font-Names="Franklin Gothic Book" ForeColor="White"
                 Style="z-index: 110; left: 160px;
                position: absolute; top: 56px" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged" BackColor="Black" TabIndex="2">
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
            &nbsp; &nbsp; &nbsp;
            <asp:Button ID="btnSave" runat="server"  Style="z-index: 111;
                left: 92px; position: absolute; top: 344px" Text="Submit" OnClick="btnSave_Click" ValidationGroup="a" TabIndex="6" />
            <asp:Button ID="btnReset" runat="server"  Style="z-index: 112;
                left: 188px; position: absolute; top: 344px" Text="Reset" OnClick="btnReset_Click" ValidationGroup="a" TabIndex="7" />
            &nbsp;
            <asp:TextBox ID="txtVehicle" runat="server" Style="z-index: 113; left: 160px; position: absolute;
                top: 28px" Width="140px" BackColor="Black" ForeColor="White" TabIndex="1"></asp:TextBox>
            <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" Font-Bold="True"
                Font-Names="Franklin Gothic Book" ForeColor="White" 
                Style="z-index: 114; left: 160px;
                position: absolute; top: 88px" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged" BackColor="Black" TabIndex="3">
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
            </asp:DropDownList><asp:DropDownList ID="ddlVehicleMode" runat="server" AutoPostBack="True" Font-Bold="True"
                Font-Names="Franklin Gothic Book" ForeColor="White" 
                Style="z-index: 115; left: 160px;
                position: absolute; top: 168px" OnSelectedIndexChanged="ddlVehicleMode_SelectedIndexChanged" BackColor="Black" TabIndex="5">
                <asp:ListItem>Select one</asp:ListItem>
                <asp:ListItem>Light</asp:ListItem>
                <asp:ListItem>Medium</asp:ListItem>
                <asp:ListItem>Heavy</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="ddlFrom"
                ControlToValidate="ddlTo" ErrorMessage="From City & to City Should not be same"
                Operator="NotEqual" Style="z-index: 116; left: 20px; position: absolute; top: 116px" BackColor="Black" Font-Bold="True" ValidationGroup="a"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVehicle"
                ErrorMessage="* Required" Style="z-index: 117; left: 312px; position: absolute;
                top: 24px" BackColor="Black" Font-Bold="True" Height="24px" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:Label ID="Label1" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 118; left: 24px; position: absolute; top: 204px"
                Text="# of KMs"></asp:Label>
            <asp:Label ID="lblKms" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 119; left: 160px; position: absolute;
                top: 200px"></asp:Label>
            <asp:Label ID="Label2" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 120; left: 164px; position: absolute; top: 8px"
                Text="Ex: KA 22 m 4394"></asp:Label>
            <asp:Label ID="Label4" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 121; left: 24px; position: absolute; top: 144px"
                Text="Type"></asp:Label>
            <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True" Font-Bold="True"
                Font-Names="Franklin Gothic Book" ForeColor="White" 
                Style="z-index: 122; left: 160px;
                position: absolute; top: 140px" OnSelectedIndexChanged="ddlType_SelectedIndexChanged" BackColor="Black" TabIndex="4">
                <asp:ListItem>Select one</asp:ListItem>
                <asp:ListItem>One way</asp:ListItem>
                <asp:ListItem>Two Way</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Red" Height="24px"
                Style="z-index: 123; left: 20px; position: absolute; top: 316px" Width="368px"></asp:Label>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="24px" ImageUrl="~/Image/question.jpg"
                OnClick="ImageButton2_Click" Style="z-index: 125; left: 264px; position: absolute;
                top: 168px" Width="24px" />
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" Height="120px"
            Style="z-index: 102; left: 572px; position: absolute; top: 140px; background-color: #CC3300;" Width="344px" BackColor="Black" BorderColor="DarkRed" BorderStyle="Groove">
            <asp:Label ID="Label5" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 100; left: 20px; position: absolute; top: 36px"
                Text="Vehicle #"></asp:Label>
            <asp:TextBox ID="txtOLvehicle" runat="server" Style="z-index: 101; left: 116px; position: absolute;
                top: 36px" Width="140px"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Franklin Gothic Book"
                ForeColor="White" Style="z-index: 102; left: 116px; position: absolute; top: 12px"
                Text="Ex: KA 22 m 4394"></asp:Label>
            <asp:Button ID="btnOPSubmit" runat="server" OnClick="btnOPSubmit_Click" Style="z-index: 103;
                left: 100px; position: absolute; top: 76px" Text="Submit" EnableTheming="True" ValidationGroup="5" />
            <asp:Button ID="btnAction" runat="server" OnClick="btnAction_Click" Style="z-index: 104;
                left: 168px; position: absolute; top: 76px" Text="Take Action" Visible="False" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOLvehicle"
                ErrorMessage="Required" Style="z-index: 106; left: 276px; position: absolute;
                top: 36px" ValidationGroup="5"></asp:RequiredFieldValidator>
        </asp:Panel>
        &nbsp; &nbsp;
        <asp:Panel ID="Panel2" runat="server" BackColor="Black" Height="184px" Style="z-index: 103;
            left: 576px; position: absolute; top: 296px; background-color: #CC3300;" Width="340px" BorderColor="Maroon" BorderStyle="Groove" BorderWidth="5px" ForeColor="White" Visible="False">
            <asp:Label ID="Label7" runat="server" Style="z-index: 100; left: 28px; position: absolute;
                top: 16px" Text="From" Font-Bold="True" Font-Size="13pt"></asp:Label>
            <asp:Label ID="Label8" runat="server" Style="z-index: 101; left: 28px; position: absolute;
                top: 48px" Text="To" Font-Bold="True" Font-Size="13pt"></asp:Label>
            <asp:Label ID="Label16" runat="server" Style="z-index: 102; left: 28px; position: absolute;
                top: 136px" Text="Type" Font-Bold="True" Font-Size="13pt"></asp:Label>
            <asp:Label ID="Label9" runat="server" Style="z-index: 103; left: 28px; position: absolute;
                top: 80px" Text="Amount" Font-Bold="True" Font-Size="13pt"></asp:Label>
            <asp:Label ID="Label10" runat="server" Style="z-index: 104; left: 28px; position: absolute;
                top: 108px" Text="Date of Journey" Font-Bold="True" Font-Size="13pt"></asp:Label>
            &nbsp;
            <asp:Label ID="lblFrom" runat="server" Style="z-index: 105; left: 152px; position: absolute;
                top: 12px" Font-Bold="True" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lblTo" runat="server" Style="z-index: 106; left: 152px; position: absolute;
                top: 44px" Font-Bold="True" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lblOLamount" runat="server" Style="z-index: 107; left: 152px; position: absolute;
                top: 76px" Font-Bold="True" Font-Size="13pt"></asp:Label>
            <asp:Label ID="lblOLDOJ" runat="server" Style="z-index: 108; left: 152px; position: absolute;
                top: 108px" Font-Bold="True" Font-Size="13pt"></asp:Label>
            &nbsp;
            <asp:Label ID="lblType" runat="server" Style="z-index: 109; left: 152px; position: absolute;
                top: 140px" Font-Bold="True" Font-Size="13pt"></asp:Label>
        </asp:Panel>
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" ForeColor="Maroon"
            Height="8px" NavigateUrl="~/Login.aspx" Style="z-index: 107; left: 862px; position: absolute;
            top: 121px" Width="60px">Log Out</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
