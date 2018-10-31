using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex12_2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            string strTheme = Request.QueryString["theme"];
            if ( strTheme!=null )
            {
                if( "黄色日历主题"== strTheme )
                {
                    
                }
                else if( "蓝色日历主题" == strTheme )
                {

                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?theme="+DropDownList1.SelectedValue);
        }

    }
}