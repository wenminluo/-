using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Ex7_5DataSetBind
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string sqlconn = "Data Source =(local)\\MSSQLLocal;AttachDbFilename =E:\\myc#test\\上机练习\\Ex6-3DataAdapter\\DBFile\\BookStor.mdf;Integrated Security=True;User Instance=True";
            string sqlconn = "Server=.;DataBase=BookStor;user id=sa;password=gt1001";
            SqlConnection myConnection = new SqlConnection(sqlconn);
            /*myConnection.Open();*/

            SqlCommand myCommand = new SqlCommand("select * from BookInfo", myConnection);

            SqlDataAdapter Adapter = new SqlDataAdapter();
            Adapter.SelectCommand = myCommand;
            DataSet myDs = new DataSet();

            Adapter.Fill(myDs);

            DataGrid1.DataSource = myDs;
            DataGrid1.DataBind();
        }
    }
}