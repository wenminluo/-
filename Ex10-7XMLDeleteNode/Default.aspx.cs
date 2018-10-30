using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;


namespace Ex10_7XMLDeleteNode
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = new DataSet();
                ds.ReadXml(Server.MapPath("XMLFile.xml"));
                GridView1.DataSource = ds;
                GridView1.DataBind();

                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "NAME";
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("XMLFile.xml"));

            XmlElement root = doc.DocumentElement;
            XmlNodeList node = root.SelectNodes("descendant::basic[NAME="+DropDownList1.Text.Trim()+"]");

            foreach( XmlNode n in node )
            {
                root.RemoveChild(n);
            }

            Response.Write("<script>alert('删除节点成功!')</script>");
            doc.Save(Server.MapPath("XMLFile.xml"));
        }
    }
}