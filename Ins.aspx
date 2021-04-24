<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ins.aspx.cs" Inherits="oragnic.Ins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #contact {
            color: #98bd68;
            box-shadow: 0 3px #98bd68;
        }

        #ins1 {
        }

        #ins_text {
            background-image: url(Image/data_image/ins/banner-shop.jpg);
            height: 200px;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            margin-bottom: 50px;
        }

            #ins_text h2 {
                text-transform: uppercase;
                color: #fff;
                margin-bottom: 15px;
            }

            #ins_text p {
                color: #fff;
                font-size: 15pt;
            }

        #ins_img {
            width: 90%;
            margin: 0 auto;
            display: flex;
        }

        .ims_img_min {
            width: 33%;
        }

            .ims_img_min img {
                width: 300px;
                padding: 20px;
            }

        #show_more {
            width: 90%;
            margin: 0 auto;
        }

        #show_more_min {
            text-align: center;
            margin: 70px 0;
        }

            #show_more_min a {
                padding: 20px 50px;
                font-size: 20pt;
                background: black;
                color: #fff;
                box-shadow: 0 2px 44px -4px grey;
                text-decoration: none;
                text-transform: uppercase;
            }

                #show_more_min a:visited {
                    color: white
                }

                #show_more_min a:hover {
                    background: #98bd68;
                    color: #fff;
                    text-transform: uppercase;
                    transition: 0.3s;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <div id="ins1">
            <div id="ins_text">
                <h2>Photo Instagram</h2>
                <p>Oragnic | <span style="color:#98bd68;">@vqh.2602</span></p>
            </div>
            <div id="ins_img">
                <div class="ims_img_min">
                    <img src="Image/data_image/ins/1.jpg" />
                    <img src="Image/data_image/ins/3.jpg" />
                </div>
                <div class="ims_img_min">
                    <img src="Image/data_image/ins/2.jpg" />
                    <img src="Image/data_image/ins/4.jpg" />
                    <img src="Image/data_image/ins/5.jpg" />
                </div>
                <div class="ims_img_min">
                    <img src="Image/data_image/ins/6.jpg" />
                    <img src="Image/data_image/ins/7.jpg" />
                </div>
                <div class="ims_img_min">
                    <img src="Image/data_image/ins/8.jpg" />
                </div>
            </div>

            <div id="show_more">
                <div id="show_more_min">
                    <a href ="https://www.instagram.com/vqh.2602/">nhiều hơn</a>
                </div>
            </div>

        </div>
    </div>
   
</asp:Content>
