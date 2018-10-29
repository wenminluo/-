using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Ex9_2DiverInfoAll
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                foreach( DriveInfo di in DriveInfo.GetDrives() )
                {
                    TreeNode node = new TreeNode();
                    node.Value = di.Name;
                    if( di.IsReady )
                    {
                        node.Text = di.Name + "可用空间为：" + di.AvailableFreeSpace + "字节";
                    }
                    else
                    {
                        node.Text = di.Name + "没有准备好!";
                    }

                    this.TreeView1.Nodes.Add(node);
                }
            }
        }
    }
}