using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ex3_2_RequestObj
{
    public partial class New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /////
            //string s1 = Server.HtmlEncode("<p>稳定点</p>");
            //string s2 = Server.HtmlDecode("<p>稳定点</p>");
            /////


            Response.Write("用户名:" + Request.QueryString["username"] + "<br>");
            Response.Write("密 码:" + Request.QueryString["password"] + "<br>");
        }
    }
}