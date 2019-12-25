using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rahmatullah_1250255.App_Pages
{
    public partial class Add_Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            if (picture.HasFile)
            {
                if (picture.PostedFile.ContentLength > 0)
                {
                    picture.PostedFile.SaveAs(Server.MapPath("~/Images/") + picture.FileName);
                }
            }
            dsbook.InsertParameters["PublisherId"].DefaultValue = publishername.SelectedValue;
            dsbook.InsertParameters["BookName"].DefaultValue = bookname.Text;
            dsbook.InsertParameters["BookPrice"].DefaultValue = bookprice.Text;
            dsbook.InsertParameters["CoverPage"].DefaultValue = picture.FileName;
            if (dsbook.Insert() > 0)
            {
                Label4.Text = "Data Inserted";
                publishername.SelectedValue = "Select one";
                bookname.Text = "";
                bookprice.Text = "";
            }
        }
    }
}