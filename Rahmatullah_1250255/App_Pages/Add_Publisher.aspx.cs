using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rahmatullah_1250255.App_Pages
{
    public partial class Add_Publisher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            dspublisher.InsertParameters["publisherName"].DefaultValue = publisher.Text;
            if (dspublisher.Insert() > 0)
            {
                Label2.Text = "Data Inserted";
                publisher.Text = "";
            }
            
        }
    }
}