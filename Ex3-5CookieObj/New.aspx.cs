using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex3_5CookieObj
{
    public partial class New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if( Request.QueryString["ID"]!=null
                && Request.QueryString["PWD"] != null)
            {
                Response.Write("" + Request.QueryString["ID"] + "欢迎光临本网站");
            }
        }
    }
}