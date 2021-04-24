using oragnic.Cms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oragnic
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
        }


        protected void search(object sender, EventArgs e)
        {
            String path = Server.MapPath("~/App_Data/post_sale.xml");
            List<Post> postList = XMLcode.GetListBlogInXML(path);
            List<Post> postListsp_noibat = new List<Post>();

            String text = Request.Form["search"];
            foreach (Post pst in postList)
            {
                //ToLower() :Chuyển chuỗi sang chữ thường
                if (pst.Name.ToLower().IndexOf(text.ToLower()) != -1)
                {
                    postListsp_noibat.Add(pst);
                }
            }
            ListViewsp_search.DataSource = postListsp_noibat;
            ListViewsp_search.DataBind();

            search_ketqua_h2.InnerText = "Kết quả tìm kiếm sản phẩm: ";
            search_ketqua_span.InnerText = text;

        }
    }
}