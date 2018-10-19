using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex3_6SessionObj
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Request.QueryString["userid"].ToString();
            Response.Write(""+user+",欢迎您!");
        }
    }
}