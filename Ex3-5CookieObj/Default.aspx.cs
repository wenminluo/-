using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex3_5CookieObj
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if( Request.Cookies["ID"]!=null 
                && Request.Cookies["PWD"]!=null )
            {
                string id = Request.Cookies["ID"].Value.ToString();
                string pwd = Request.Cookies["PWD"].Value.ToString();

                Response.Redirect("New.aspx?ID="
                                  + id+"&PWD="
                                  +pwd);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 设置Cookie信息
            if( CheckBox1.Checked )
            {
                Response.Cookies["ID"].Expires = new DateTime(2018, 12, 30);
                Response.Cookies["PWD"].Expires = new DateTime(2018, 12, 30);
                Response.Cookies["ID"].Value = TextBox1.Text;
                Response.Cookies["PWD"].Value = TextBox2.Text;
            }

            Response.Redirect("New.aspx?ID=" +TextBox1.Text
                              +"&PWD=" + TextBox2.Text);
        }
    }
}