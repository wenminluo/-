using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Ex3_8ViewStateObj
{
    public partial class Default : System.Web.UI.Page
    {

        SqlConnection sqlcon;
        string strCon = @"Data Source=(local);Database=E:\myc#test\上机练习\Ex3-8ViewStateObj\DATABASE\ST_FLOWERPREARRANGE.MDF;Uid=sa;Pwd=585858";
        private int sum = 0; // 取指定列的数据和

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ViewState["SortOrder"] = "Name";
                ViewState["OrderDire"] = "ASC";
                bind();
            }
        }


        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            string sPage = e.SortExpression;
            if( ViewState["SortOrder"].ToString() == sPage )
            {
                if (ViewState["OrderDire"].ToString() == "Desc")
                    ViewState["OrderDire"] = "ASC";
                else
                    ViewState["OrderDire"] = "DESC";

            }
            else
            {
                ViewState["SortOrder"] = e.SortExpression;
            }
            bind();
        }

        public void bind()
        {
            sqlcon = new SqlConnection(strCon);
            string sqlstr = "select * from Flower";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);

            DataSet myds = new DataSet();
            myda.Fill(myds,"Flower");
            DataView view = myds.Tables["Flower"].DefaultView;

            string sort = (string)ViewState["SortOrder"] + "" + (string)ViewState["OrderDire"];
            view.Sort = sort;

            GridView1.DataSource = view;
            GridView1.DataBind();
            GridView1.ShowFooter = false;

        }


       
    }
}