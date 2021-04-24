using oragnic.Cms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oragnic
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["login"] == true)
            {
                Response.Redirect("Home.aspx");
            }
        }
        //dang nhap
        protected void Submit_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/App_Data/user.xml");
            List<User> list = XMLcode.getListMember(path);
            string email = Request.Form["email1"];
            string pass = Request.Form["pass1"];

            int x = 0;
            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].Email == email && list[i].Password == pass)
                {
                    //Tạo session
                    Session["login"] = true;
                    Session["email"] = list[i].Email;
                   // Session["password"] = list[i].Password;
                    Session["name"] = list[i].Name;
                    Session["sdt"] = list[i].Phone;
                    Session["add"] = list[i].Add;
                    Response.Redirect("Home.aspx");
                    x = 0;
                    
                }
                else
                {
                    x = 1;
                    
                }
            }
            if(x == 1)
            {
                Response.Write("<script> alert('Tài khoản không hợp lệ! Mời nhập lại.'); </script>");
            }

            if ((bool)Session["login"] == true)
            {
               
                Response.Redirect("Home.aspx");
            }

        }


        

    }
}