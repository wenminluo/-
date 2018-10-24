<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex7_9RadioButtonListBind.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>绑定数据到RadioButtonList</h3>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack ="true"
            RepeatDirection="Horizontal" onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>三国演义</asp:ListItem>
            <asp:ListItem>唐诗三百首</asp:ListItem>
            <asp:ListItem>水浒传</asp:ListItem>
            <asp:ListItem>射雕英雄传</asp:ListItem>
            <asp:ListItem>鬼吹灯</asp:ListItem>
        </asp:RadioButtonList><br />
        <asp:DataGrid ID="DataGrid1" runat="server" ></asp:DataGrid>
    </form>
</body>
</html>
