using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oragnic
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["login"] == true)
            {
                user.InnerHtml = "<a href='Thongtinkhachhang.aspx'><img style='width: 25pt;margin-bottom: -5px;' src='Styles/Masterpage/Image/user.svg' /></a>";
            }
            else
            {
                user.InnerHtml = "<a href='login.aspx'><i class='fa-regular fa-user'></i></a>";
            }


        }
    }
}