using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using oragnic.Cms;

namespace oragnic
{
    public partial class Chitietsanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                String path = Server.MapPath("~/App_Data/post_sale.xml");
                List<Post> postList = XMLcode.GetListBlogInXML(path);
                List<Post> postListsp_noibat = new List<Post>();

            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("/Home.aspx", true);

            }
            else
            {
                for (int i = 0; i <= postList.Count-1; i++)
                    {
                        if (postList[i].BlogID == Request.QueryString["id"])
                        {
                            namesp.InnerText = postList[i].Name;
                            Image1.Src = postList[i].UrlImage;
                            salesp.InnerText = postList[i].Sale;
                            chitiettext.InnerText = postList[i].FullBlogHTML;
                        }
                    }
            }

        }

        protected void Buy_Click(object sender, EventArgs e)
        {

            if ((bool)Session["login"] == false)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
               

                int Sl = int.Parse(input_value.Value.ToString());
                string Masp = Request.QueryString["id"];
                string Email = (string)Session["email"];
                string gia = "";
                string img = "";
                string ten = "";


                // laays sp tu lisst sp
                String path1 = Server.MapPath("~/App_Data/post_sale.xml");
                List<Post> postList = XMLcode.GetListBlogInXML(path1);
                foreach (Post pst in postList)
                {
                    if(Masp == pst.BlogID)
                    {
                        gia = pst.Sale;
                        img = pst.UrlImage;
                        ten = pst.Name;
                    }
                }


                if (Sl > 0)
                {
                    Buy buy = new Buy();
                    buy.Email = Email;
                    buy.Masp = Masp;
                    buy.Sl = Sl;
                    buy.Imgsp = img;
                    buy.Tensp = ten;
                    buy.Gia = gia;
                    Random r = new Random();
                    buy.Id = r.Next(1000,999999999);
                    string path = Server.MapPath("~/App_Data/buy.xml");
                    String p = Server.MapPath("~/App_Data/user.xml");
                    // List<Buy> list = XMLcode.GetListBuy(path);

                    if (XMLcode.AddBuy(buy, path, p))
                    {
                        Response.Write("<script> alert('Thêm Giỏ Hàng Thành Công! '); </script>");                       
                    }
                    else
                    {
                        Response.Write("<script> alert('Lỗi thêm vào giỏ hàng! Bạn đã thêm sản phẩm này rồi.'); </script>");
                    }
                }
                else
                {
                    Response.Write("<script> alert('số lượng phải lớn hơn 0'); </script>");
                }

            }


        }

    }
}