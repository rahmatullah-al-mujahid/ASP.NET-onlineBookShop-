using Rahmatullah_1250255.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rahmatullah_1250255.App_Pages
{
    public partial class EditBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HiddenField1.Value = Request.QueryString["id"];
                BooksDbContext db = new BooksDbContext();
                publishername.DataSource = db.Publishers.ToList();
                publishername.DataBind();
                var item = db.Books.AsEnumerable().First(x => x.BookId == int.Parse(Request.QueryString["id"]));
                bookname.Text = item.BookName;
                bookprice.Text = item.BookPrice.ToString();
                
                coverpage.ImageUrl = "/Images/" + item.CoverPage;

            }
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            BooksDbContext db = new BooksDbContext();
            var item = db.Books.AsEnumerable().First(x => x.BookId == int.Parse(HiddenField1.Value));
            if (picture.HasFile)
            {
                if (picture.PostedFile.ContentLength > 0)
                {
                    picture.PostedFile.SaveAs(Server.MapPath("~/Images/") + picture.FileName);
                    item.CoverPage = picture.FileName;
                    
                }
            }
            item.BookName = bookname.Text;
            item.BookPrice = decimal.Parse(bookprice.Text);
            db.SaveChanges();
            Response.Redirect("~/App_pages/Books.aspx");
        }
    }
}