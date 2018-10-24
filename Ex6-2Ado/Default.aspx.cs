using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace Ex6_2Ado
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlconn = "Server=.;DataBase=BookStor;user id=sa;password=gt1001";
            SqlConnection myConnection = new SqlConnection( sqlconn );
            myConnection.Open();

            SqlCommand myCommand = new SqlCommand("select * from BookInfo", myConnection);
            SqlDataReader myReader;
            myReader = myCommand.ExecuteReader();

            Response.Write("<h3>使用SqlReader对象查询数据库</h3>");
            Response.Write("<table border=1 cellspacing=0 cellpadding=2>");
            Response.Write("<tr bgcolor = yellow>");

            // 读标题
            for( int i = 0; i<myReader.FieldCount; ++i )
            {
                Response.Write("<td>"+myReader.GetName(i)+"</td>");
            }

            Response.Write("</tr>");

            // 显示表内容
            while( myReader.Read() )
            {
                Response.Write("<tr>");
                for( int i=0; i<myReader.FieldCount; ++i )
                {
                    Response.Write("<td>" + myReader[i].ToString() + "</td>");
                }
                Response.Write("</tr>");
            }
            Response.Write("</table>");

            myReader.Close();
            myConnection.Close();

        }
    }
}