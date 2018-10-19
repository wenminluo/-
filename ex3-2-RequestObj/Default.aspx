<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ex3_2_RequestObj.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style2" style="text-align: left">
    
        用户名:<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 4px" Width="163px"></asp:TextBox>
    
    </div>
        <p class="auto-style2">
            密 码:<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 11px" Width="162px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 87px" Text="登录" />
    </form>
</body>
</html>
