using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Ex3_4ServerObj
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int i = int.Parse("12de");
        }

        protected void Page_Error( object sender, EventArgs e )
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("导致错误的 URL:<br/>");
            sb.Append(Server.HtmlEncode(Request.Url.ToString()));
            sb.Append("<br></br>");
            sb.Append("错误信息:<br/>");
            sb.Append(Server.GetLastError().ToString());
            Response.Write(sb.ToString());
            Server.ClearError();

        }
    }
}