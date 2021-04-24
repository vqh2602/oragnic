using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using oragnic.Cms;
namespace oragnic
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["login"] == true)
            {
                Response.Redirect("Home.aspx");
            }
        }
        protected void SignUp_Click(object sender, EventArgs e)
        {
            String name = Request.Form["name"];
            String pass = Request.Form["pass"];
            String email = Request.Form["email"];
            String phone = Request.Form["phone"];
            String add = Request.Form["add"];

            if (name != "" && pass != "" && email != "" && phone != "" && add != "")
            {
                User user = new User();
                user.Name = name;
                user.Password = pass;
                user.Email = email;
                user.Add = add;
                user.Phone = phone;
                string path = Server.MapPath("~/App_Data/user.xml");
                if (XMLcode.AddMemberToList(user, path))
                {         
                    Response.Write("<script> var result = confirm('Đăng kí hoàn tất! bạn có muốn đăng nhập?');if (result){window.location='Login.aspx';}else{alert('ok!');} </script>");
                    //Response.Redirect("LogIn.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Lỗi đăng kí!. email hoặc số điện thoai đã tồn tại'); </script>");
                }
            }
            else { Response.Write("<script> alert('Lỗi đăng kí!. không được để trống thông tin'); </script>"); }

        }


        
    }
}