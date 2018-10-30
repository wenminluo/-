<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex10_8XmlDataSource.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" DataSourceID="XmlDataSource1">
                <Columns>
                    <asp:TemplateField HeaderText="编号">
                        <ItemTemplate><%#XPath("ID") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="书名">
                        <ItemTemplate><%#XPath("NAME") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="作者">
                        <ItemTemplate><%#XPath("AUTHOR") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="出版社">
                        <ItemTemplate><%#XPath("PUBLISH") %></ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
        </div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
