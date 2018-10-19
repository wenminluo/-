<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Example3_1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script language="c#" runat="server">
        void Page_Init(Object sender, EventArgs e)
        {
            Interest.Items.Add("文学");
            Interest.Items.Add("旅游");
            Interest.Items.Add("音乐");
        }

        void AddToList_Click( Object sender, EventArgs e )
        {
            Interest.Items.Add(Text1.Value);
        }

    </script>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    请选择你的爱好?<br/>
    <select id="Interest" runat="server"></select>
    <p>向列表中添加爱好</p>
    <input type ="text" id ="Text1" runat ="server" />
    <input type="button" runat="server" value="添加" 
      onserverclick="AddToList_Click"/>

    </div>
    </form>
</body>
</html>
