using oragnic.Cms;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

namespace oragnic
{
    public partial class Thongtinkhachhang1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["login"] == true)
            {
                xinchao.InnerText = "Xin Chào " + Session["Name"];
                thongtin_email.InnerText = "Email: " + Session["email"];
                thongtin_sdt.InnerText = "Số Điện Thoại: " + Session["sdt"];
                thongtin_add.InnerText = "Địa Chỉ: " + Session["add"];


            }
            else { Response.Redirect("Login.aspx"); }
        }

        protected void Dangxuat(object sender, EventArgs e) {  
                Session.Abandon();
              Response.Redirect("Login.aspx");
          }

        // hiện display đổi tên
        protected void addkh(object sender, EventArgs e)
        {
            thongtin_khachhang_thaydoi.Style["display"] = "block";
            thongtin_khachhang_thaydoipass.Style["display"] = "none";
        }

        // hiện display đổi pass
        protected void addpass(object sender, EventArgs e)
        {
            thongtin_khachhang_thaydoi.Style["display"] = "none";
            thongtin_khachhang_thaydoipass.Style["display"] = "block";
        }

        // đổi tên
        protected void change_name(object sender, EventArgs e)
        {

            string path = Server.MapPath("~/App_Data/user.xml");
            List<User> list = XMLcode.getListMember(path);

            string email = (string)Session["email"];
            String namenew = Request.Form["namenew"];
            String addnew = Request.Form["addnew"];
            bool test = false;
            if(namenew != "" && addnew != "")
            {
                foreach(User u in list)
                {
                    if(u.Email == email)
                    {
                        u.Name = namenew;
                        u.Add = addnew;

                        XmlSerializer writer = new XmlSerializer(typeof(List<User>));
                        FileStream _file = File.Create(path);
                        writer.Serialize(_file, list);
                        _file.Close();

                        // cập nhat sesion
                        Session["name"] = namenew;
                        Session["add"] = addnew;
                        test = true;
                    }
                }
            }
            else
            {
                Response.Write("<script> alert('Không để trống nội dung.'); </script>");
            }

            if(test == true)
            {
                Response.Write("<script> alert('Thành Công.'); </script>");
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                Response.Write("<script> alert('Không Thành Công.'); </script>");
            }


        }

        // đổi pass
        protected void change_pass(object sender, EventArgs e)
        {

            string path = Server.MapPath("~/App_Data/user.xml");
            List<User> list = XMLcode.getListMember(path);

            string email = (string)Session["email"];
            String passold = Request.Form["passold"];
            String passnew = Request.Form["passnew"];
            bool test = false;
            if (passold != "" && passnew != "")
            {
                foreach (User u in list)
                {
                    if (u.Email == email && u.Password == passold)
                    {
                        
                        u.Password = passnew;

                        XmlSerializer writer = new XmlSerializer(typeof(List<User>));
                        FileStream _file = File.Create(path);
                        writer.Serialize(_file, list);
                        _file.Close();

                        // cập nhat sesion
                        
                        test = true;
                    }
                }
            }
            else
            {
                Response.Write("<script> alert('Không để trống nội dung.'); </script>");
            }

            if (test == true)
            {
                Response.Write("<script> alert('Thành Công.'); </script>");
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                Response.Write("<script> alert('Không Thành Công.'); </script>");
            }


        }



    }
}