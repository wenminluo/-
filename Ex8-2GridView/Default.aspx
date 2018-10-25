<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex8_2GridView.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="名称" SortExpression="Name" />
                <asp:BoundField DataField="Author" HeaderText="作者" SortExpression="Author" />
                <asp:BoundField DataField="Press" HeaderText="出版社" SortExpression="Press" />
            </Columns>
        </asp:GridView>
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStorConnectionString %>" SelectCommand="SELECT * FROM [BookInfo]"></asp:SqlDataSource>
    </form>
</body>
</html>
