using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace Ex7_3SetBind
{
    public partial class Default : System.Web.UI.Page
    {
        protected ArrayList myArray = new ArrayList();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                myArray.Add("春天:Spring");
                myArray.Add("夏天:Summer");
                myArray.Add("秋天:Autumn");
                myArray.Add("冬天:Winter");
                DataGrid1.DataBind();
            }
        }
    }
}