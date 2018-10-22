using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex3_7ApplicationObj
{
    public partial class Default : System.Web.UI.Page
    {

        private static readonly string[] users = new string[] { "admin", "user" };
        private int usertype(string userid)
        {
            if (userid == users[0])
                return 1;
            if (userid == users[1])
                return 2;
            else
                return 0;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid = TextBox1.Text.ToString();
            string pwd = TextBox2.Text.ToString();

            if (usertype(userid) == 1
                || usertype(userid) == 2)
            {
                Application.Lock();

                switch (usertype(userid).ToString())
                {
                    case "1":
                        Application["admin"] = Convert.ToInt32(Application["admin"]) + 1;
                        break;
                    case "2":
                        Application["user"] = Convert.ToInt32(Application["user"]) + 1;
                        break;
                    default:
                        Response.Write("<script>alert('对不起，你不是合法用户!')</script>");
                        break;
                }

                Application.UnLock();
            }

            Response.Redirect("Total.aspx?userid=" + userid);

        }
    }
}