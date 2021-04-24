<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Tatcasanpham.aspx.cs" Inherits="oragnic.Tatcasanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>     
        
                /********************************/
    #shop {
    color: #98bd68;
    box-shadow: 0 3px #98bd68;
}
     /********************************/    
.sale_main_sanpham_min_sp_text{
  text-align: center;
    margin: 20px 0;
}
.sale_main_sanpham_min_sp_text h2 {
  text-transform: uppercase;
  margin: 10px 0;
}
.sale_main_sanpham_min_sp_text h3 {
color: #98bd68;
}

.sale_main_sanpham_min_sp_text p {
  text-decoration: line-through;
  font-size: 10pt;
}
.sale_main_sanpham_min_sp_text_img{
  padding: 10px;
  overflow: hidden;
  border-radius: 7%;
}

.sale_main_sanpham_min_sp_text_img img {
  width: 100%;
  border-radius: 7%;
  object-fit: cover;
  }

.sale_main_sanpham_min_sp:hover{
  box-shadow: 0 0 10px 4px rgb(189, 189, 189);
  transition: 0.3s;
  object-fit: cover;
  transform: scale(1.2);
}
.sale_main_sanpham_min_sp_text_img img:hover{
  box-shadow: 0 0 10px 4px rgb(189, 189, 189);
  transition: 0.3s;
  object-fit: cover;
  transform: scale(1.2);

}
/*San pham noi bat*/
#sanpham_noibat_text{
    margin: 0 auto;
    width: 90%;
  }
  #sanpham_noibat_text_min{
    text-align: center;
    margin: 100px 0 0 0;
  }
  #sanpham_noibat_text_min h4{
    color: #98bd68;
      font-size: 17pt;
  }
  #sanpham_noibat_text_min h3{
    text-transform: uppercase;
    font-size: 25pt;
    margin: 35px 0;
  }

  
  .sanpham_noibat_sp_min{
    width: 90%;
    margin: 0 auto;
    display: flex;
    flex-wrap: wrap;
    flex-direction: row;
    justify-content: center;
    margin-top: 40px;
  }
  
  .sanpham_noibat_sp_min_sp{
    width: 20%;
    /* padding: 50px; */
    border: solid 1px #e8e8e8;
    border-radius: 5%;
    margin: 10px 10px 10px 10px;
  }
  .sale_main_sanpham_min_sp:hover{
    box-shadow: 0 0 10px 4px rgb(189, 189, 189);
    transition: 0.3s;
    object-fit: cover;
  }
  .sanpham_noibat_sp_min_sp hr{
    width: 20%;
    margin: 0 auto;
    margin-top: 20px;
    height: 1px;
    color: #98bd68;
    background: #98bd68;
  }

  .sanpham_noibat_sp_min_sp a{
      text-decoration:none;
      color:black
      
  }
    .sanpham_noibat_sp_min_sp a:visited{
      text-decoration:none;
      color:black
  }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id='sanpham_noibat'>
        <div id='sanpham_noibat_text'>
            <div id='sanpham_noibat_text_min'>
                <h4>Featured Products</h4>
                <h3 id="text_allsp" runat="server"></h3>
            </div>
        </div>
        <div id='sanpham_noibat_sp'>

            <div class='sanpham_noibat_sp_min'>
                <asp:ListView ID="ListViewsp_allsp_group" runat="server">
                    <ItemTemplate>

                        <div class="sanpham_noibat_sp_min_sp">
                            <a href='Chitietsanpham.aspx?id=<%# Eval("blogId")%>'> 
                    <div class="sale_main_sanpham_min_sp_text">
                     <h2><%# Eval("name") %></h2>
                    <h3><%# Eval("sale") %></h3>
                         <hr/>
                    </div>
                    <div class="sale_main_sanpham_min_sp_text_img">
                       <img src="<%# Eval("urlImage") %>" alt="" />  
                    </div>  
                         </a>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
</asp:Content>
