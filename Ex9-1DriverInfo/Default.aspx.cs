using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace Ex9_1DriverInfo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = TextBox1.Text;
            DriveInfo di = new DriveInfo(str);

            Response.Write("<h4>获取本地驱动器信息</h4>");

            Response.Write("驱动器的名称为:"+di.Name+@"<br\>");
            Response.Write("驱动器的类型为:" +di.DriveType.ToString()+ @"<br\>");
            Response.Write("目前驱动器可用空间为:"+di.AvailableFreeSpace.ToString()+@"<br\>");
            Response.Write("驱动器文件系统的名称为:"+di.DriveFormat+@"<br\>");
            Response.Write("驱动器总的空间为:"+di.TotalSize.ToString()+@"<br\>");

        }
    }
}