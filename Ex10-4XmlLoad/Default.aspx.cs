using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Ex10_4XmlLoad
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("XMLFile.xml"));
            
            XmlNode root = doc.DocumentElement;

            XmlNodeList nodeList = root.SelectNodes("//basic");
            foreach( XmlNode xmlNode in nodeList )
            {
                XmlNodeList list = xmlNode.ChildNodes;
                foreach (XmlNode xmlNode1 in list)
                {
                    Response.Write(xmlNode1.InnerText);
                    Response.Write(" ");
                }

                Response.Write(@"<br\>");

            }
        }
    }
}