<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex3_8ViewStateObj.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <strong><span class="style1">鲜花信息</span></strong>
    <asp:GridView ID="GridView1" runat="server" onsorting="GridView1_Sorting" AllowSorting="true">
    </asp:GridView>
    </div>
    </form>
</body>
</html>
