<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex7_1VarBind.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>变量的绑定</h3>
        你好：<asp:Label ID ="Label1" runat="server" Text="<%#Name%>"></asp:Label><br/>
        登录时间：<asp:Label ID="Label2" runat="server" Text="<%#LoginTime%>"></asp:Label>
    </form>
</body>
</html>
