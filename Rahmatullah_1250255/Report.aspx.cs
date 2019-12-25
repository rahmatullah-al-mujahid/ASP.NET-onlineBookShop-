using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rahmatullah_1250255
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1 ds = new DataSet1();
            DataSet1TableAdapters.PublisherTableAdapter da = new DataSet1TableAdapters.PublisherTableAdapter();
            DataSet1.PublisherDataTable dt = (DataSet1.PublisherDataTable)ds.Tables["Publisher"];
            da.Fill(dt);
            DataSet1TableAdapters.BooksTableAdapter da1 = new DataSet1TableAdapters.BooksTableAdapter();
            DataSet1.BooksDataTable dt1 = (DataSet1.BooksDataTable)ds.Tables["Books"];
            da1.Fill(dt1);
            CrystalReport1 rpt = new CrystalReport1();

            rpt.SetDataSource(ds);
            //rpt.Refresh();

            this.CrystalReportViewer1.ReportSource = rpt;
        }
    }
}