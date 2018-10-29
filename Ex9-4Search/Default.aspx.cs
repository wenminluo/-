using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Ex9_4Search
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if( Directory.Exists(TextBox1.Text) == false )
            {
                Label1.Text = "该文件不存在或路径错误!";
                return;
            }
            else
            {
                DirectoryInfo di = new DirectoryInfo(TextBox1.Text);
                FileSystemInfo[] dis = di.GetFileSystemInfos();
                if( dis.Length<1 )
                {
                    Label1.Text = "该文件夹是空文件夹";
                }
                else
                {
                    ListBox1.DataSource = dis;
                    ListBox1.DataBind();
                    Label1.Text = "检索成功，以上为该路径的文件和目录列表!";
                }
            }
        }
    }
}