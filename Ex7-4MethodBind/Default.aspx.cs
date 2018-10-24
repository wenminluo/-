using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace Ex7_4MethodBind
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ArrayList myArray = new ArrayList();
                myArray.Add(9);
                myArray.Add(-9);
                myArray.Add(10);
                myArray.Add(-10);
                DataList1.DataSource = myArray;
                DataList1.DataBind();

            }
        }

        public int AbsoluteValue( int number )
        {
            if (number > 0)
            {
                return number;
            }
            else if (number < 0)
            {
                return -number;
            }
            else
                return 0;
        }

    }
}