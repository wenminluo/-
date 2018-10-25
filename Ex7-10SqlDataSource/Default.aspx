<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex7_10SqlDataSource.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" AutoPostBack="True">
        </asp:DropDownList>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BookStorConnectionString %>" SelectCommand="SELECT [Name] FROM [BookInfo]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="Press" HeaderText="Press" SortExpression="Press" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BookStorConnectionString %>" SelectCommand="SELECT * FROM [BookInfo] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
