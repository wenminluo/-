using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Ex6_4InsertDBData
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string sqlconn = "Data Source =(local)\\MSSQLLocal;AttachDbFilename =E:\\myc#test\\上机练习\\Ex6-3DataAdapter\\DBFile\\BookStor.mdf;Integrated Security=True;User Instance=True";
            string sqlconn = "Server=.;DataBase=BookStor;user id=sa;password=gt1001";
            SqlConnection myConnection = new SqlConnection(sqlconn);
            myConnection.Open();

            // 插入
            string sqlstr = "insert into BookInfo values('100011','诛仙','萧鼎','花山文艺出版社')";
            SqlCommand com = new SqlCommand(sqlstr, myConnection);
            com.ExecuteNonQuery();
            myConnection.Close();

            // 显示插入结果
            SqlCommand myCommand = new SqlCommand("select * from BookInfo", myConnection);
            SqlDataAdapter Adapter = new SqlDataAdapter();
            Adapter.SelectCommand = myCommand;
            DataSet myDs = new DataSet();

            Adapter.Fill(myDs);

            DataTable myTable = myDs.Tables[0];

            Response.Write("<h3>添加数据库记录</h3>");
            Response.Write("<table border =1 cellspacing =0 cellpadding=0>");
            Response.Write("<tr bgcolor = yellow>");

            // 表标题
            foreach (DataColumn myColumn in myTable.Columns)
            {
                Response.Write("<td>" + myColumn.ColumnName + "</td>");
            }

            Response.Write("</tr>");

            // 表内容
            foreach (DataRow myRow in myTable.Rows)
            {
                Response.Write("<tr>");
                foreach (DataColumn myColumn in myTable.Columns)
                {
                    Response.Write("<td>" + myRow[myColumn] + "</td>");
                }
                Response.Write("</tr>");
            }

            Response.Write("</table>");

            /*    myConnection.Close();*/

        }
    }
}