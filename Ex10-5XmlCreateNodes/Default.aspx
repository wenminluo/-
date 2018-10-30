<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex10_5XmlCreateNodes.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    请输入节点的内容<br />
        编号：<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox><br />
        书名：<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox><br />
        作者：<asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox><br />
        出版社：<asp:TextBox ID="TextBox4" runat="server" Height="17px"
               Width="132px" ></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="创建" OnClick="Button1_Click"  />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

    </div>
    </form>
</body>
</html>
