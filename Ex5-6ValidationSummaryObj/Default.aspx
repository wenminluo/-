<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex5_6ValidationSummaryObj.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
            BorderColor="Red" BorderStyle="Solid" BorderWidth="1px"
            ForeColor="#404040" HeaderText="所有错误信息提示"
            style="margin-top:0px" Width="196px" />
        
        <strong>注册</strong><br/><br/>
        用户名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="用户名必填" Display="None"></asp:RegularExpressionValidator>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        
            

        
            E-mail:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="格式错误" ValidationExpression="\w+([-.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Display ="None"></asp:RequiredFieldValidator><br/>
        
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <!--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="CompareValidator"></asp:CompareValidator>-->
        
            <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        
    </form>
</body>
</html>
