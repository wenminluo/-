using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Ex7_9RadioButtonListBind
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

            string str = RadioButtonList1.SelectedValue;
            string sqlstr = "Select * from BookInfo where Name='" + str + "'";
            //string sqlconn = "Data Source =(local)\\MSSQLLocal;AttachDbFilename =E:\\myc#test\\上机练习\\Ex6-3DataAdapter\\DBFile\\BookStor.mdf;Integrated Security=True;User Instance=True";
            string sqlconn = "Server=.;DataBase=BookStor;user id=sa;password=gt1001";
            SqlConnection myConnection = new SqlConnection(sqlconn);
            /*myConnection.Open();*/

            SqlDataAdapter sda = new SqlDataAdapter(sqlstr, myConnection);
            DataSet ds = new DataSet();
            sda.Fill(ds, "BookInfo");
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();


        }
    }
}