using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Ex10_5XmlCreateNodes
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("XMLFile.xml"));

            string str = "<ID>" + TextBox1.Text + "</ID>";
            string str1 = "<NAME>" + TextBox2.Text + "</NAME>";
            string str2 = "<AUTHOR>" + TextBox3.Text + "</AUTHOR>";
            string str3 = "<PUBLISH>" + TextBox4.Text + "</PUBLISH>";
            string str4 = "<DocumentElement><basic>" + str + str1 + str2 + str3
                         + "</basic></DocumentElement>";

            XmlDocument doc1 = new XmlDocument();
            doc1.LoadXml(str4);

            XmlNode node = doc.ImportNode(doc1.DocumentElement.LastChild, true);
            doc.DocumentElement.AppendChild(node);
            doc.Save(Server.MapPath("XMLFile.xml"));
            Label1.Text = "创建新节点成功！";
        }
    }
}