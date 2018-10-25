<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex8_6Repeater.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h4>Repeat 模板显示数据</h4>
    <div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <tr>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem,"ID")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem,"Name")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem,"Author")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem,"Press")%>
                    </td>
                </tr>
            </ItemTemplate>
            <HeaderTemplate>
                <table border="1px">
                    <tr>
                        <td><b>编号</b></td>
                        <td><b>书名</b></td>
                        <td><b>作者</b></td>
                        <td><b>出版社</b></td>
                    </tr>
            </HeaderTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStorConnectionString %>" SelectCommand="SELECT * FROM [BookInfo]"></asp:SqlDataSource>
    </form>
</body>
</html>
