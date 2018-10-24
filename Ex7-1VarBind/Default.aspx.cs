using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex7_1VarBind
{
    public partial class Default : System.Web.UI.Page
    {
        public string Name = "管理员";
        public DateTime LoginTime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.DataBind();
        }
    }
}