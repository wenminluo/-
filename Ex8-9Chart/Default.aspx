<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex8_9Chart.Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Chart ID="Chart1" runat="server">
            <series>
                <asp:Series Name="Series1" YValuesPerPoint="4">
                    <Points>
                        <asp:DataPoint  AxisLabel ="火箭" YValues="1" />
                        <asp:DataPoint  AxisLabel ="湖人" YValues="15" />
                        <asp:DataPoint  AxisLabel ="公牛" YValues="6" />
                        <asp:DataPoint  AxisLabel ="步行者" YValues="4" />
                        <asp:DataPoint  AxisLabel ="76 人" YValues="3" />
                        <asp:DataPoint  AxisLabel ="波士顿" YValues="3" />
                        <asp:DataPoint  AxisLabel ="骑士" YValues="3" />
                    </Points>
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
    <div>
    
    </div>
    </form>
</body>
</html>
