<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Thongtinkhachhang.aspx.cs" Inherits="oragnic.Thongtinkhachhang1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .context {
            width: 100%;
            position: absolute;
            top: 30vh;
        }

            .context h1 {
                text-align: center;
                color: #fff;
                font-size: 50px;
            }


        .area {
            background: linear-gradient(90deg, #4cb8c4 0%,#3cd3ad 100% );
            width: 100%;
            height: 100vh;
        }

        .circles {
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

            .circles li {
                position: absolute;
                display: block;
                list-style: none;
                width: 20px;
                height: 20px;
                background: rgba(255, 255, 255, 0.2);
                animation: animate 25s linear infinite;
                bottom: -150px;
            }

                .circles li:nth-child(1) {
                    left: 25%;
                    width: 80px;
                    height: 80px;
                    animation-delay: 0s;
                }


                .circles li:nth-child(2) {
                    left: 10%;
                    width: 20px;
                    height: 20px;
                    animation-delay: 2s;
                    animation-duration: 12s;
                }

                .circles li:nth-child(3) {
                    left: 70%;
                    width: 20px;
                    height: 20px;
                    animation-delay: 4s;
                }

                .circles li:nth-child(4) {
                    left: 40%;
                    width: 60px;
                    height: 60px;
                    animation-delay: 0s;
                    animation-duration: 18s;
                }

                .circles li:nth-child(5) {
                    left: 65%;
                    width: 20px;
                    height: 20px;
                    animation-delay: 0s;
                }

                .circles li:nth-child(6) {
                    left: 75%;
                    width: 110px;
                    height: 110px;
                    animation-delay: 3s;
                }

                .circles li:nth-child(7) {
                    left: 35%;
                    width: 150px;
                    height: 150px;
                    animation-delay: 7s;
                }

                .circles li:nth-child(8) {
                    left: 50%;
                    width: 25px;
                    height: 25px;
                    animation-delay: 15s;
                    animation-duration: 45s;
                }

                .circles li:nth-child(9) {
                    left: 20%;
                    width: 15px;
                    height: 15px;
                    animation-delay: 2s;
                    animation-duration: 35s;
                }

                .circles li:nth-child(10) {
                    left: 85%;
                    width: 150px;
                    height: 150px;
                    animation-delay: 0s;
                    animation-duration: 11s;
                }



        @keyframes animate {

            0% {
                transform: translateY(0) rotate(0deg);
                opacity: 1;
                border-radius: 0;
            }

            100% {
                transform: translateY(-1000px) rotate(720deg);
                opacity: 0;
                border-radius: 50%;
            }
        }

        .logout{           
    display: flex;
    margin-top:50px;
        }
        .logout span{
            margin:0 auto;
        }
        .logout span input{         
    background: none;
    border: none;
    padding: 20px;
    font-size: 20pt;
    color: white;
        }
       .logout span i{
           font-size: 20pt;
    margin-right: -10px;
    color:white;
       }
        /* thoong tin kh*/
        #thongtin_khachhang {
            margin: 0 auto;
            width: 90%;
            /* align-items: center; */
            text-align: center;
        }

        #thongtin_khachhang_min p{
            color: white;
            margin: 10px 0;
            font-size:15pt;
        }
        #thongtin_khachhang_thaydoi, #thongtin_khachhang_thaydoipass{
        display:none;    
        margin: 45px 0;
        }
        #thongtin_khachhang_thaydoi p,#thongtin_khachhang_thaydoipass p {
                color: #fc2a2a;
                margin-bottom:5px;
        }
        #thongtin_khachhang_thaydoi input, #thongtin_khachhang_thaydoipass input{
            padding: 10px;
    border-radius: 10px;
    border: none;
        }



        #thongtin_khachhang_menu span input{
            
    border: solid 1px white;
    background: none;
    color: white;
    padding: 10px;
    margin-top: 30px;
        }

                #thongtin_khachhang_menu span input:hover{
            
    background: white;
    color: #98bd68;
    transition:0.5s;
    border-radius:30px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <div class="context">
            <h1 runat="server" id="xinchao" OnClientClick="return false;">Xin Chào . . .</h1>
                <div id="thongtin_khachhang">
                    <div id="thongtin_khachhang_min" >
                        <p runat="server" id="thongtin_email">email: </p>
                        <p runat="server" id="thongtin_sdt">Số điện thoại: </p>
                        <p runat="server" id="thongtin_add">Địa Chỉ: </p>
                    </div>

                    <div id="thongtin_khachhang_thaydoi" ClientIDMode="Static" runat="server">                      
                        <p>*Vì bảo mật nên bạn không thể thay đổi số điện thoại và email</p>
                        <input type="text" placeholder="Tên mới" id="namenew" name="namenew" value=""/>
                        <input type="text" placeholder="Địa Chỉ mới" id="addnew" name="addnew" value=""/> 
                        <asp:Button runat="server" Text="Thay đổi"  onclick="change_name" />
                    </div>

                    <div id="thongtin_khachhang_thaydoipass" ClientIDMode="Static" runat="server">                       
                        <p>*Hãy nhập mật khẩu cũ và mật khẩu mới</p>
                        <input type="password" placeholder="Mật khẩu cũ" id="passold" name="passold" value=""/>
                        <input type="password" placeholder="Mật Khẩu mới" id="passnew" name="passnew" value=""/> 
                        <asp:Button runat="server" Text="Thay đổi" onclick="change_pass" />
                    </div>

                    <div id="thongtin_khachhang_menu">
                        <span>
                         <asp:Button runat="server" text="Thay đổi thông tin cá nhân" onclick="addkh"/>
                        <asp:Button runat="server" text="Thay đổi mật khẩu" onclick="addpass"/>
                        </span>
                    </div>
                    
                </div>
                <div class="logout">
                    <span>
                        <i class="fa-regular fa-arrow-right-from-bracket"></i>
                    
                    <asp:Button runat="server" Text="Đăng Xuất"  OnClick="Dangxuat"/>

                    </span>
                </div>
            
        </div>

        <div class="area">
            <ul class="circles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>

</asp:Content>
