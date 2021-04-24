using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using oragnic.Cms;

namespace oragnic
{
    public partial class Tatcasanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String path = Server.MapPath("~/App_Data/post_sale.xml");
            List<Post> postList = XMLcode.GetListBlogInXML(path);
            List<Post> postListsp_group = new List<Post>();

            if (Request.QueryString["id"] == "hoaqua")
            {
                text_allsp.InnerText = "Tất cả sản phẩm Trái cây";
            } else  if (Request.QueryString["id"] == "raucu")
                { text_allsp.InnerText = "Tất cả sản phẩm rau củ"; } 
            else { text_allsp.InnerText = "Tất cả sản phẩm skin"; }

           
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("/Home.aspx", true);

            }
            else
            {
                for (int i = 0; i <= postList.Count - 1; i++)
                {
                    if (postList[i].Group == Request.QueryString["id"])
                    {
                        postListsp_group.Add(postList[i]);
                    }
                }
            }

            ListViewsp_allsp_group.DataSource = postListsp_group;
            ListViewsp_allsp_group.DataBind();
        }
    }
}