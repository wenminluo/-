<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex9_4Search.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 131px">
    <form id="form1" runat="server">
        <asp:Label ID="Label3" runat="server" Font-Size="9pt" Text="文件夹路径"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Font-Size="9pt" Width="144px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Size="9pt" Width="80px" Text="检索" OnClick="Button1_Click" /><br />
        <asp:Label ID="Label4" runat="server" Font-Size="9pt" Text="文件和目录"></asp:Label>
        <asp:ListBox ID="ListBox1" runat="server" Height="176px" Width="150px"></asp:ListBox>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        
    </form>
</body>
</html>
