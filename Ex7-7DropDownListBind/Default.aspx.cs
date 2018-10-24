using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


namespace Ex7_7DropDownListBind
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ArrayList array = new ArrayList();
                array.Add("红色");
                array.Add("绿色");
                array.Add("黄色");

                DropDownList1.DataSource = array;
                DropDownList1.DataBind();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "你喜欢的颜色是：" + DropDownList1.SelectedValue;
        }
    }
}