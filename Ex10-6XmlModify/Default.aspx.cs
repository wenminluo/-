using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

namespace Ex10_6XmlModify
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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

        protected void Buton1_Click(object sender, EventArgs e)
        {

            XmlDocument doc = new XmlDocument();
            doc.Load( Server.MapPath("XMLFile.xml") );
            XmlNodeList xnl = doc.SelectSingleNode("DocumentElement").ChildNodes;
            foreach( XmlNode xn in xnl )
            {
                XmlElement xe = (XmlElement)xn;
                if( xe.Name == "basic" )
                {
                    XmlNodeList xnlChild = xe.ChildNodes;
                    foreach( XmlNode xnChild in xnlChild )
                    {
                        XmlElement xeChild = (XmlElement)xnChild;
                        if( xeChild.Name =="NAME"
                            &&xeChild.InnerText==this.DropDownList1.SelectedValue.Trim())
                        {
                            xeChild.InnerText = TextBox1.Text.Trim();
                            Response.Write("<script>alert('修改成功')</script>");
                        }
                    }
                }
            }
            doc.Save(Server.MapPath("XMLFile.xml"));
            Response.Write("<script>location='Default.aspx'</script>");

        }
    }
}