<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex8_4GridViewDBUpdateDelete.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" PageSize="5">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="书名" SortExpression="Name" />
                <asp:BoundField DataField="Author" HeaderText="作者" SortExpression="Author" />
                <asp:BoundField DataField="Press" HeaderText="出版社" SortExpression="Press" />
                <asp:CommandField ButtonType="Button" HeaderText="操作" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" HeaderText="操作" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BookStorConnectionString %>" DeleteCommand="DELETE FROM [BookInfo] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Author] = @original_Author AND [Press] = @original_Press" InsertCommand="INSERT INTO [BookInfo] ([ID], [Name], [Author], [Press]) VALUES (@ID, @Name, @Author, @Press)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BookInfo]" UpdateCommand="UPDATE [BookInfo] SET [Name] = @Name, [Author] = @Author, [Press] = @Press WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Author] = @original_Author AND [Press] = @original_Press">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Author" Type="String" />
                <asp:Parameter Name="original_Press" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Press" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Press" Type="String" />
                <asp:Parameter Name="original_ID" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Author" Type="String" />
                <asp:Parameter Name="original_Press" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
