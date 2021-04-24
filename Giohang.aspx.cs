using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;
using oragnic.Cms;
namespace oragnic
{
    public partial class Giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((bool)Session["login"] == true)
            {
                String path = Server.MapPath("~/App_Data/buy.xml");
                List<Buy> postList = XMLcode.GetListBuy(path);
                List<Buy> postListnew = new List<Buy>();

                string mail = (string)Session["email"];
                string name = (string)Session["name"];
                string sdt = (string)Session["sdt"];
                string add = (string)Session["add"];

                foreach (Buy b in postList)
                {
                    if (b.Email == mail)
                    {
                        postListnew.Add(b);
                    }
                }



                String p = Server.MapPath("~/App_Data/post_sale.xml");
                List<Post> List = XMLcode.GetListBlogInXML(p);


                ListViewgh.DataSource = postListnew;
                ListViewgh.DataBind();
                //string tensp = "";
                //string gia = "";
                //string imgurl = "";

                float tongtien = 0;
                //foreach (Buy b in postListnew)
                //{
                //    foreach (Post c in List)
                //    {
                //        if (b.Masp == c.BlogID)
                //        {
                //            tensp = c.Name;
                //            gia = c.Sale;
                //            imgurl = c.UrlImage;

                //            giohang.InnerHtml += "<div class='giohang_min_sp' runat='server'>"
                //                                + "<div class='giohang_min_sp_img'><a href ='Chitietsanpham.aspx?id=" + b.Masp + "'>"
                //                                + "<img src='" + imgurl + "'/></a></div>"
                //                                + "<div class='giohang_min_sp_text'>" + "<h2>Tên sản phẩm: " + tensp + "</h2>"
                //                                + "<h3>Đơn giá (kg): " + gia + "</h3>" + "<p>Số Lượng: " + b.Sl + "</p>"
                //                                + "</div>"
                //                                + "<div class='giohang_min_sp_delete' id='giohang_delete' >"
                //                                + "<input type='submit' name='ctl00$ContentPlaceHolder1$Button1' value='Button' id='ContentPlaceHolder1_Button1'>"
                //                                + "</div>"
                //                                + "</div>";




                //            string[] arrListStr = gia.Split('đ');
                //            tongtien += float.Parse(arrListStr[0])*b.Sl;
                //        }
                //    }

                //}
                foreach (Buy b in postListnew)
                {
                    string[] arrListStr = b.Gia.Split('đ');
                    tongtien += float.Parse(arrListStr[0]) * b.Sl;

                }

                tongtien_min.InnerHtml = "<div class='tongtien_min_chitiet'> <hr/>"
                                        + "<h2>Họ Tên: " + name + "</h2>"
                                        + "<h3> Số Điện Thoại: " + sdt + "</h3>"
                                        + "<h4> Địa Chỉ: " + add + "</h4>"
                                        + "<p>Tổng tiền: " + (int)tongtien + " VND</p></div>";

            }
            else { Response.Write("<script> var result = confirm('Bạn chưa đăng nhập! bạn có muốn đăng nhập?');if (result){window.location='Login.aspx';}else{window.location='Home.aspx';} </script>"); }

        }

        //protected void Delete_sp(object sender, EventArgs e)
        //{

        //    //Response.Write("<script> alert('hi');</script>");
        //    String path = Server.MapPath("~/App_Data/buy.xml");
        //    List<Buy> list = XMLcode.GetListBuy(path);
        //    bool test = false;

        //    int id = int.Parse(masp_giohang.Value.ToString());
        //    int sl = int.Parse(masp_giohang_sl.Value.ToString());
        //    for (int i = 0; i < list.Count; i++)
        //    {
        //        if (list[i].Id == id)
        //        {
        //            if(sl == 0)
        //            {
        //                list.RemoveAt(i);
        //                test = true;
        //            }
        //             else { list[i].Sl = sl;
        //                test = true;
        //                    }
        //        }

        //    }


        //    if (test == true)
        //    {
        //        Response.Write("<script> alert('thay đổi sản phẩm thành công!'); </script>");
        //        XmlSerializer writer = new XmlSerializer(typeof(List<Buy>));
        //        FileStream _file = File.Create(path);
        //        writer.Serialize(_file, list);
        //        _file.Close();
        //    }
        //    else
        //    {
        //        Response.Write("<script> alert('Không thể thay đổi sản phẩm !'); </script>");
        //    }


        //}


        protected void Button_Click(object sender, CommandEventArgs e)
        {

            int id = Convert.ToInt32(e.CommandArgument);
            //Response.Write(id);

            String path = Server.MapPath("~/App_Data/buy.xml");
            List<Buy> list = XMLcode.GetListBuy(path);
            bool test = false;
            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].Id == id)
                {

                    list.RemoveAt(i);
                    test = true;

                }

            }


            if (test == true)
            {
                Response.Write("<script> alert('thay đổi sản phẩm thành công!'); </script>");
                XmlSerializer writer = new XmlSerializer(typeof(List<Buy>));
                FileStream _file = File.Create(path);
                writer.Serialize(_file, list);
                _file.Close();
                Response.Redirect("Giohang.aspx");
            }
            else
            {
                Response.Write("<script> alert('Không thể thay đổi sản phẩm !'); </script>");
            }




        }





        //protected void Button_Click_giam(object sender, CommandEventArgs e)
        //{

        //    int sl = Convert.ToInt32(e.CommandArgument);
        //    //Response.Write(id);

        //    String path = Server.MapPath("~/App_Data/buy.xml");
        //    List<Buy> list = XMLcode.GetListBuy(path);
        //    bool test = false;
        //    for (int i = 0; i < list.Count; i++)
        //    {
        //        if (list[i].Id == sl)
        //        {

        //            list.RemoveAt(i);
        //            test = true;

        //        }

        //    }


        //    if (test == true)
        //    {
        //        Response.Write("<script> alert('thay đổi sản phẩm thành công!'); </script>");
        //        XmlSerializer writer = new XmlSerializer(typeof(List<Buy>));
        //        FileStream _file = File.Create(path);
        //        writer.Serialize(_file, list);
        //        _file.Close();
        //        Response.Redirect("Giohang.aspx");
        //    }
        //    else
        //    {
        //        Response.Write("<script> alert('Không thể thay đổi sản phẩm !'); </script>");
        //    }




        //}
        //protected void Button_Click_tang(object sender, CommandEventArgs e)
        //{

        //    int id = Convert.ToInt32(e.CommandArgument);
        //    //Response.Write(id);

        //    String path = Server.MapPath("~/App_Data/buy.xml");
        //    List<Buy> list = XMLcode.GetListBuy(path);
        //    bool test = false;
        //    for (int i = 0; i < list.Count; i++)
        //    {
        //        if (list[i].Id == id)
        //        {

        //            list.RemoveAt(i);
        //            test = true;

        //        }

        //    }


        //    if (test == true)
        //    {
        //        Response.Write("<script> alert('thay đổi sản phẩm thành công!'); </script>");
        //        XmlSerializer writer = new XmlSerializer(typeof(List<Buy>));
        //        FileStream _file = File.Create(path);
        //        writer.Serialize(_file, list);
        //        _file.Close();
        //        Response.Redirect("Giohang.aspx");
        //    }
        //    else
        //    {
        //        Response.Write("<script> alert('Không thể thay đổi sản phẩm !'); </script>");
        //    }




        //}
    }
}

