<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex7_7DropDownListBind.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>DropDownList控件的数据绑定</h3>
        请选择你喜欢的颜色<br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>
        <br /><br /><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
