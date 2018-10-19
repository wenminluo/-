using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 上机练习
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 保证作用域代码只在首次加载运行
            if( !IsPostBack )
            {
                Label1.Text = "我的第一个ASP.NET 4.0 网页！";
                Label2.Text = "欢迎来到ASP.NET 4.0的世界";
            }
            
        }
    }
}