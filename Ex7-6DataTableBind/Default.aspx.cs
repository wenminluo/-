using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ex7_6DataTableBind
{
    public partial class Default : System.Web.UI.Page
    {
        private double m_dInterst;
        private double m_dTotal;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();

                dt.Columns.Add(new DataColumn("月份", typeof(int)));
                dt.Columns.Add(new DataColumn("现存款数", typeof(float)));
                dt.Columns.Add(new DataColumn("利息", typeof(float)));
                dt.Columns.Add(new DataColumn("本息和", typeof(float)));


                DataRow dr;
                for (int i = 0; i <= 11; ++i)
                {
                    if (i == 0)
                    {
                        m_dInterst = 0;
                        m_dTotal = 1000;
                    }
                    else
                    {
                        m_dInterst = (m_dTotal * 0.03);
                        m_dTotal = (1000 + m_dInterst + m_dTotal);
                    }

                    dr = dt.NewRow();
                    dr[0] = i + 1;
                    dr[1] = 1000;
                    dr[2] = m_dInterst;
                    dr[3] = m_dTotal;
                    dt.Rows.Add(dr);

                }

                DataGrid1.DataSource = dt;
                DataGrid1.DataBind();

            }
        }
    }
}