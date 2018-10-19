using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex3_3ResponseObj
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            switch(DropDownList1.SelectedIndex)
            {
                case 0:  // 谷歌
                    {
                        Response.Redirect("http://www.google.com");
                    }
                    break;
                case 1:  // 百度
                    {
                        Response.Redirect("http://www.baidu.com");
                    }
                    break;
                case 2:  // 搜狗
                    {
                        Response.Redirect("http://www.sougou.com");
                    }
                    break;
                default:
                    break;

            }
        }
    }
}