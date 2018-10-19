<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex3_3ResponseObj.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        请选择你需要登录的网站<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>谷歌</asp:ListItem>
            <asp:ListItem>百度</asp:ListItem>
            <asp:ListItem>搜狗</asp:ListItem>
        </asp:DropDownList>
    </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 73px" Text="确定" />
        </p>
    </form>
</body>
</html>
