using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex7_2ExpressionBind
{
    public partial class Default : System.Web.UI.Page
    {

        protected int sum = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                sum = GetSum();
            }

            Page.DataBind();
        }

        protected int GetSum()
        {
            for( int i = 0; i<100; ++i )
            {
                sum += i;
            }

            return sum;
        }

    }
}