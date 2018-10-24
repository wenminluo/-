<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex7_4MethodBind.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>绑定到方法</h3>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                数字：<%#Container.DataItem%><br />
                绝对数字：<%#AbsoluteValue((int)Container.DataItem) %>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
