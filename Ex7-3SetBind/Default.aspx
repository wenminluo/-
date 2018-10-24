<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex7_3SetBind.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>绑定到集合</h3>
    <asp:DataGrid id="DataGrid1" runat="server" DataSource="<%#myArray%>" ></asp:DataGrid>
    </form>
</body>
</html>
