<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmpShift.aspx.cs" Inherits="EmpShift" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Employee Shifts</title>
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
    <link href="" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Top.bmp" Style="z-index: 100;
            left: 0px; position: absolute; top: 0px" />
        <asp:Panel ID="Panel1" runat="server" Height="292px" Style="z-index: 101; left: 40px;
            position: absolute; top: 136px" Width="864px">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" />
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="CrystalReport3.rpt">
                </Report>
            </CR:CrystalReportSource>
        </asp:Panel>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin.aspx" Style="z-index: 103;
            left: 44px; position: absolute; top: 108px">Home</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
