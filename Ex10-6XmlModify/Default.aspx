<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex10_6XmlModify.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>修改 XML 文档</h3>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        请选择节点<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"></asp:DropDownList>
        新节点名<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Buton1" runat="server" Text="修改" OnClick="Buton1_Click" />
    </form>
</body>
</html>
