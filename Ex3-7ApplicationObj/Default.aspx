<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex3_7ApplicationObj.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="用户名:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="记住我" />
    
    </div>
        <asp:Label ID="Label2" runat="server" Text="密  码:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 9px" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
    </form>
</body>
</html>
