using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ex6_1DataSet
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable("Book");
            DataColumn dc = new DataColumn("BookNum", typeof(string));
            
            DataColumn dc1 = new DataColumn("BookName", typeof(string));
            DataColumn dc2 = new DataColumn("Author", typeof(string));
            DataColumn dc3 = new DataColumn("Press", typeof(string));

            dt.Columns.Add(dc);
            dt.Columns.Add(dc1);
            dt.Columns.Add(dc2);
            dt.Columns.Add(dc3);

            DataRow dr = dt.NewRow();
            dr["BookNum"] = "100001";
            dr["BookName"] = "西游记";
            dr["Author"] = "吴承恩";
            dr["Press"] = "人民文学出版社";
            dt.Rows.Add(dr);


            DataRow dr1 = dt.NewRow();
            dr1["BookNum"] = "100002";
            dr1["BookName"] = "三国演义";
            dr1["Author"] = "罗贯中";
            dr1["Press"] = "人民文学出版社";
            dt.Rows.Add(dr1);

            // 输出到网页
            Response.Write("<table bordercolor=green border=1 cellspacing=0 cellpadding=0 >");
            foreach( DataColumn col in dt.Columns )
            {
                Response.Write("<td bgcolor=yellow>" + col.ColumnName+"</td>");
            }

            foreach( DataRow myrow in dt.Rows  )
            {
                Response.Write("<tr>");
                foreach( DataColumn col in dt.Columns )
                {
                    Response.Write("<td>"+ myrow[col] +"</td>");
                }
                Response.Write("</tr>");
            }

            Response.Write("</table>");


        }
    }
}