<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex7_2ExpressionBind.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>绑定表达式</h3>
        求整数1到100的总和及平均数<br/>
        总和=<asp:Label ID="Label1" runat="server" text="<%#sum%>">"</asp:Label><br/>
        平均数=<asp:Label ID="Label2" runat="server" Text="<%#sum/10%>"></asp:Label>
    </form>
</body>
</html>
