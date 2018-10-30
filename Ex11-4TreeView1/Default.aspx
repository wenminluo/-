<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex11_4TreeView1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server">
            <Nodes>
                <asp:TreeNode Text="管理系统" Value="管理系统">
                    <asp:TreeNode Text="企业管理" Value="企业管理">
                        <asp:TreeNode Text="公司简介" Value="公司简介"></asp:TreeNode>
                        <asp:TreeNode Text="员工管理" Value="员工管理"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="业务管理" Value="业务管理">
                        <asp:TreeNode Text="最新动态" Value="最新动态"></asp:TreeNode>
                        <asp:TreeNode Text="旅行排名" Value="旅行排名"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="资源管理" Value="资源管理">
                        <asp:TreeNode Text="旅游资源" Value="旅游资源"></asp:TreeNode>
                        <asp:TreeNode Text="合作单位" Value="合作单位"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
