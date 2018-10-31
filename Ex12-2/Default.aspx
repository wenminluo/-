<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex12_2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">



        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />

        <table style="width: 225px; background-image: url(image/主题背景图片.gif)" border="1">
            <tr>
                <td><span class="style1"><strong>欢迎光临本网</strong></span></td>
            </tr>
            <tr>
                <td style="height: 2px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"
                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="105px">
                        <asp:ListItem Value="Themes1">黄色主题日历</asp:ListItem>
                        <asp:ListItem Value="Themes1">蓝色主题日历</asp:ListItem>
                    </asp:DropDownList><strong>博客日历</strong>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style4"><strong>最新博客列表</strong></td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.google.com"
                        Style="font-size: small">个人日记</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://www.google.com" style="font-size:small">天下杂侃</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.google.com" style="font-size:small">
                        情感天地
                    </asp:HyperLink>
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
