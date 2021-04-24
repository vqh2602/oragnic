using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using oragnic.Cms;
namespace oragnic
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String path = Server.MapPath("~/App_Data/post_sale.xml");
            List<Post> postList = XMLcode.GetListBlogInXML(path);
            List<Post> postListsp_noibat = new List<Post>();
            ListView1.DataSource = postList.Take(4);
            ListView1.DataBind();
    
            Random rnd = new Random();

            for (int i = 0; i < 8; i++)
            {
                int index = rnd.Next(5, 33);
                if (postList[index].Group != "sale")
                {
                    postListsp_noibat.Add(postList[index]);

                }

            }
            ListViewsp_noibat.DataSource = postListsp_noibat;
            ListViewsp_noibat.DataBind();



            /* List<Post> spnoibat = ClassXML.GetListBlogInXML(path);
             String disPlay = "";
             string spnoibatdisplay = "";

             //lấy sản phẩm trong arr xml nhãn là sale
             for (int i = 0; i <= postList.Count - 1; i++)
             {
                 if(postList[i].check() == 1)
                 {
                     disPlay += postList[i].getHtml();
                 }

             }
             sale_main_sanpham_min_id.InnerHtml = disPlay;

             //lấy vài sản phẩm nổi bật

             Random rnd = new Random();

             for (int i = 5; i <= 12; i++)
             {
                 int index = rnd.Next(5,33);
                 if (spnoibat[index].checkspnoibat() == 1)
                 {
                     spnoibatdisplay += spnoibat[index].getHtmlspnoibat();
                 }

             }
             sanpham_noibat_sp_min_id.InnerHtml = spnoibatdisplay;
                 */
            //UserControlpanel.Controls.Add(Page.LoadControl("~/Cms/Home/WebUserControl_Home.ascx"));
        }
    }
}