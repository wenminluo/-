using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Ex10_3XmlCreate
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();
            doc.LoadXml("<basic>"
                         + "<ID>1</ID>"
                         + "<NAME>三国演义</NAME>"
                         + "<AUTHOR>罗贯中</AUTHOR>"
                         + "<PUBLISH>人民文学出版社</PUBLISH>"
                         +"</basic>");
            doc.Save(Server.MapPath("XMLFile.xml"));
        }
    }
}