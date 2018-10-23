<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex4_3ImageButtonObj.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style ="width:13%;text-align:center" border ="1" >
        <tr>
            <td class="style2">友情链接</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:ImageButton ID="ImageButton1" runat="server"
                     ImageUrl ="~/Image/baidu.jpg" onclick="ImageButton1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:ImageButton ID="ImageButton3" runat="server"
                     ImageUrl ="~/Image/sogou.jpg" Width="194px" onclick="ImageButton3_Click" />
                <asp:BulletedList ID="BulletedList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:BulletedList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="你输入的身份证号码格式错误" ValidationExpression="\d{17}[\d][X]|\d{15}"></asp:RegularExpressionValidator>
                <asp:ImageButton ID="ImageButton2" runat="server"
                     ImageUrl ="~/Image/guge.jpg" width="194px" onclick="ImageButton2_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
