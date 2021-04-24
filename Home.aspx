<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="oragnic.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    /********************************/
    #home {
    color: #98bd68;
    box-shadow: 0 3px #98bd68;
}

    /* banner slideshow */
    #Banner_slideshow {
        height: 800px;
    }

    .Slideshow_Main {
        width: 100%;
        position: absolute;
    }

    .mySlides {
        width: 100%;
        height: 800px;
        position: relative;
        top: -100px;
        z-index: -99;
        animation: fade-in 2s;
    }

    @keyframes fade-in {
        from {
            opacity: 0.5;
        }

        to {
            opacity: 1;
        }
    }

    #text_slideshow {
        position: relative;
        top: -640px;
        text-align: center;
    }

        #text_slideshow h1 {
            text-transform: uppercase;
            font-family: 'Josefin Sans';
            font-size: 70pt;
            color: white;
            margin-bottom: 20px;
        }

        #text_slideshow h2 {
            color: white;
            margin-bottom: 40px;
        }

        #text_slideshow p a {
            color: white;
            padding: 15pt 30pt 15pt 30pt;
            border-radius: 25px;
            font-size: 17pt;
            background: #98bd68;
            text-decoration: none;
        }

            #text_slideshow p a:hover {
                color: white;
                padding: 15pt 50pt 15pt 50pt;
                border-radius: 30px;
                font-size: 17pt;
                background: #5ba100;
                transition: 0.3s;
            }

    /********************************/
    /*gioi thieu */
    #gioithieu_min, #gioithieu_text {
        width: 70%;
        margin: 0 auto;
        text-align: center;
        display: flex;
        justify-content: space-around;
    }

    .gioithieu_min_span {
        width: 50px;
        height: 50px;
        font-size: 35pt;
        padding: 30px;
        border-radius: 100%;
        border: double gray;
    }

    .gioithieu_text_min {
        margin-top: 15px;
        text-transform: uppercase;
    }

        .gioithieu_text_min > p {
            margin-top: 15px;
            color: gray;
        }

    .gioithieu_min_span1_color {
        background: #e4b2d7;
    }

    .gioithieu_min_span2_color {
        background: #dcc697;
    }

    .gioithieu_min_span3_color {
        background: #a2d2e1;
    }

    .gioithieu_min_span4_color {
        background: #ddd68f;
    }

    #gioithieu_min span:hover {
        background: #98bd68;
        color: #fff;
        transition: 0.3s;
    }

    /* san pham dang giam gia */
    #sale_main_text {
        width: 90%;
        margin: 0 auto;
        text-align: center;
        margin-top: 100px;
    }

        #sale_main_text h2 {
            font-size: 25pt;
            text-transform: uppercase;
            margin-bottom: 15px;
            color: #98bd68
        }

        #sale_main_text hr {
            width: 7%;
            margin: 0 auto;
            margin-top: 10px;
            height: 1px;
            color: #98bd68;
            background: #98bd68;
        }


    /* sản phẩm sale */
    #sale_main_sanpham {
        width: 90%;
        margin: 0 auto;
    }

    .sale_main_sanpham_min {
        display: flex;
        justify-content: space-around;
        margin: 0 40px;
    }

    .sale_main_sanpham_min_sp {
        width: 20%;
        /* padding: 50px; */
        border: solid 1px #e8e8e8;
        border-radius: 5%;
        margin: 40px 0;
    }

        .sale_main_sanpham_min_sp a {
            text-decoration: none;
        }

            .sale_main_sanpham_min_sp a:visited {
                text-decoration: none;
                color: black;
            }

    .sale_main_sanpham_min_sp_text {
        text-align: center;
        margin: 20px 0;
        color:black;
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

    .sale_main_sanpham_min_sp_text_img {
        padding: 10px;
        overflow: hidden;
        border-radius: 7%;
    }

        .sale_main_sanpham_min_sp_text_img img {
            width: 100%;
            border-radius: 7%;
            object-fit: cover;
        }

    .sale_main_sanpham_min_sp:hover {
        box-shadow: 0 0 10px 4px rgb(189, 189, 189);
        transition: 0.3s;
        object-fit: cover;
        transform: scale(1.2);
    }

    .sale_main_sanpham_min_sp_text_img img:hover {
        box-shadow: 0 0 10px 4px rgb(189, 189, 189);
        transition: 0.3s;
        object-fit: cover;
        transform: scale(1.2);
    }

    /****************************************************************/
    /*San pham noi bat*/
    #sanpham_noibat_text {
        margin: 0 auto;
        width: 90%;
    }

    #sanpham_noibat_text_min {
        text-align: center;
        margin: 100px 0 0 0;
    }

        #sanpham_noibat_text_min h4 {
            color: #98bd68;
            font-size: 17pt;
        }

        #sanpham_noibat_text_min h3 {
            text-transform: uppercase;
            font-size: 25pt;
            margin: 35px 0;
        }

            #sanpham_noibat_text_min h3:hover {
                text-transform: uppercase;
                font-size: 35pt;
                color: #98bd68;
                text-shadow: 0 3px rgb(189 189 189);
                transition: 0.3s;
            }

    .sanpham_noibat_sp_min {
        width: 90%;
        margin: 0 auto;
        display: flex;
        flex-wrap: wrap;
        flex-direction: row;
        justify-content: center;
        margin-top: 40px;
    }

    .sanpham_noibat_sp_min_sp {
        width: 20%;
        /* padding: 50px; */
        border: solid 1px #e8e8e8;
        border-radius: 5%;
        margin: 10px 10px 10px 10px;
    }

    .sanpham_noibat_sp_min_sp:hover {
        box-shadow: 0 0 10px 4px rgb(189, 189, 189);
        transition: 0.3s;
        object-fit: cover;
    }

    .sanpham_noibat_sp_min_sp hr {
        width: 20%;
        margin: 0 auto;
        margin-top: 20px;
        height: 1px;
        color: #98bd68;
        background: #98bd68;
    }
    .sanpham_noibat_sp_min_sp a {
                text-decoration: none;
                color: black;
     }
        .sanpham_noibat_sp_min_sp a:visited {
            text-decoration: none;
            color: black;
        }

/*---------------------------------------------------------------- */
/* ads video */
.ads_video{
  background-image: url(Image/back-video.jpg);
  padding: 50px 0;
  margin-top: 100px;
}
#ads_video_container{ 
  width: 90%;
  margin: 0 auto;
  display: flex;

}
#ads_video_container_video{  
  width: 50%;
  text-align: center;

}
#ads_video_container_video video{
    width:600px;
  border-radius: 20px;
}
#ads_video_container_text{
  width: 50%;
  margin: 0 auto;

}
#ads_video_container_text h2{
  
  text-transform: uppercase;
  font-size: 20pt;
  margin-top: 30px;
  word-spacing: 10px;
  line-height: 50px;

}
    #ads_video_container_text p {
        margin-top: 12px;
        word-spacing: 10px;
        line-height: 30px;
        font-size: 17pt;
    }
#ads_video_container_text span{
  color: #98bd68;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- Banner slideshow-->
    <div id='Banner_slideshow'>
        <!-- Thẻ Chứa Slideshow -->
        <div class="Slideshow_Main">
            <img class="mySlides" src="../../Image/bn1.jpg" alt="">
            <img class="mySlides" src="../../Image/bn2.jpg" alt="">
            <img class="mySlides" src="../../Image/bn3.jpg" alt="">
            <div id='text_slideshow'>
                <h1>100% Fresh & Organic Foods</h1>
                <h2>We deliver organic vegetables & fruits</h2>
                <p><a href="#sanpham_noibat">View</a></p>
            </div>
        </div>
    </div>

    <!-- Giới thiệu-->
    <div id='gioithieu'>
        <div id='gioithieu_min'>
            <span class="gioithieu_min_span gioithieu_min_span1_color"><i class="fa-duotone fa-truck-fast"></i></span>
            <span class="gioithieu_min_span gioithieu_min_span2_color"><i class="fa-duotone fa-crate-apple"></i></span>
            <span class="gioithieu_min_span gioithieu_min_span3_color"><i class="fa-duotone fa-medal"></i></span>
            <span class="gioithieu_min_span gioithieu_min_span4_color"><i class="fa-duotone fa-headset"></i></span>
        </div>
        <div id='gioithieu_text'>
            <div class="gioithieu_text_min">
                <h3>FREE SHIPPING</h3>
                <p>đơn hàng từ 500VND</p>
            </div>
            <div class="gioithieu_text_min">
                <h3>Tươi mới</h3>
                <p>sản phẩm tươi mới</p>
            </div>
            <div class="gioithieu_text_min">
                <h3>Chất lượng</h3>
                <p>Chất lượng cao nhất</p>
            </div>
            <div class="gioithieu_text_min">
                <h3>Hỗ trợ</h3>
                <p>Luôn Hỗ trợ 24/24h </p>
            </div>
        </div>
    </div>

    <!--sản phẩm giảm giá-->
    <div id='sale_main'>
        <div id="sale_main_text">
            <h2>Sản Phẩm Đang Giảm Giá</h2>
            <p>Best Products On Sale</p>
            <hr />
        </div>
        <div id="sale_main_sanpham">
            <!--<div id="sale_main_sanpham_min_id" class="sale_main_sanpham_min" runat="server">
                <!-- xử lý sản phẩm hiện sale 
            </div> -->
            <div class="sale_main_sanpham_min" >
                <asp:ListView id="ListView1" runat="server">
                    <ItemTemplate>
                 <div class="sale_main_sanpham_min_sp">
                     <a href='Chitietsanpham.aspx?id=<%# Eval("blogId")%>'> 
                    <div class="sale_main_sanpham_min_sp_text">
                     <h2><%# Eval("name") %></h2>
                    <h3><%# Eval("sale") %></h3>
                    <p><%# Eval("money") %></p>
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

    <!-- sản phẩm nổi bật -->
    <div id='sanpham_noibat'>
        <div id='sanpham_noibat_text'>
            <div id='sanpham_noibat_text_min'>
                <h4>Featured Products</h4>
                <h3>sản phẩm nổi bật</h3>
                <p>Những sản phẩm tươi nhất, được trồng tại những nông trại đạt tiêu chuẩn vietgap</p>
            </div>
        </div>
        <div id='sanpham_noibat_sp'>
            <!-- 
            <div class='sanpham_noibat_sp_min' id="sanpham_noibat_sp_min_id" runat="server">
            </div> -->
            <div class='sanpham_noibat_sp_min' >
                <asp:ListView ID="ListViewsp_noibat" runat="server">
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
    <!-- ads video -->
     <div id='ads_video' runat="server" class='ads_video'>
        <div id='ads_video_container'>
            <div id='ads_video_container_video'>
                <video src='Image/ads.mp4' loop preload='none' controls autoplay muted></video>
            </div> 
            <div id='ads_video_container_text'>
                <h2>"<span>ORGANIC</span> Không chạy theo xu hướng,<br/><span>ORGANIC</span> tiến tới truyền thống"</h2>
                <p>Đã có thời cả loài người yêu thích mọi thứ từ tự nhiên. 
                    Đã có một thời khi thiên nhiên phục vụ con người tốt nhất.
                    Ngày xưa khi thức ăn được dùng làm thuốc chữa bệnh.
                    Ngày xưa khi thực phẩm được nuôi trồng trong tự nhiên tươi sạch nhất...</p>
            </div>
        </div>
    </div>

        
    
   


<script>
    // xử lý banner chạy qua các ảnh
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) { myIndex = 1 }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 3000); // Change image every 2 seconds
    }
</script>


</asp:Content>
