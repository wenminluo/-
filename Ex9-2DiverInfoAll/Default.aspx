<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex9_2DiverInfoAll.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h4>遍历所有本地驱动器</h4>
        <asp:TreeView ID="TreeView1" runat="server"></asp:TreeView>
    </div>
    </form>
</body>
</html>
