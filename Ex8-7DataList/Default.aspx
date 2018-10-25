<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex8_7DataList.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatDirection="Horizontal">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
            <%--    Author:
                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                <br />
                Press:
                <asp:Label ID="PressLabel" runat="server" Text='<%# Eval("Press") %>' />
                <br />--%>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName ="Select" Text="查看" ></asp:LinkButton>
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
           <%-- <SelectedItemTemplate>
                ID:<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID","{0}") %>' />
                <br />
                Name:<asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name","{0}") %>' />
                <br />
                Author:<asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>'' ></asp:Label>
                <br />
                Press:<asp:Label ID="PressLabel" runat="server" Text='<%# Eval("Press") %>'' ></asp:Label>
                <br />
            </SelectedItemTemplate>--%>
            
        </asp:DataList>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStorConnectionString %>" SelectCommand="SELECT * FROM [BookInfo]"></asp:SqlDataSource>
    </form>
</body>
</html>
