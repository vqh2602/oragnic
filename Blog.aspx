<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="oragnic.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #blog {
            color: #98bd68;
            box-shadow: 0 3px #98bd68;
        }

        #blog_main {
            width: 90%;
            margin: 0 auto;
        }

        .blog_main_min {
            box-shadow: 0 1px 7px 1px rgb(0 0 0 / 5%);
            border: 1px solid #eee;
            padding: 30px;
            margin: 70px 0 0 0;
            text-align: center;
        }

            .blog_main_min img {
                width: 100%;
                height: auto;
            }

            .blog_main_min h2 {
                padding: 30px;
            }

            .blog_main_min p {
                padding: 10px;
                margin-bottom: 30px;
            }

            .blog_main_min a {
                padding: 10px;
                border: solid 1px;
                /* margin: 30px 0; */
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="blog_main">
        <div class="blog_main_min">
            <img src="Image/data_image/ins/b1.jpg" />
            <h2>VENIAM NULLA DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT</h2>
            <p>Vestibulum porta iaculis felis, eget tristique ante egestas quis. Sed non quis, convallis felis. Etiam id elit id elit dapibus blandit. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, bu</p>
            <a>Read more</a>
        </div>
        <div  class="blog_main_min">
            <img src="Image/data_image/ins/b2.jpg" />
             <h2>VENIAM NULLA DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT</h2>
            <p>Vestibulum porta iaculis felis, eget tristique ante egestas quis. Sed non quis, convallis felis. Etiam id elit id elit dapibus blandit. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, bu</p>
            <a>Read more</a>
        </div>
        <div  class="blog_main_min">
            <img src="Image/data_image/ins/b3.jpg" />
            <h2>VENIAM NULLA DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT</h2>
            <p>Vestibulum porta iaculis felis, eget tristique ante egestas quis. Sed non quis, convallis felis. Etiam id elit id elit dapibus blandit. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, bu</p>
            <a>Read more</a>
        </div>
        <div  class="blog_main_min">
            <img src="Image/data_image/ins/b4.jpg" />
            <h2>VENIAM NULLA DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT</h2>
            <p>Vestibulum porta iaculis felis, eget tristique ante egestas quis. Sed non quis, convallis felis. Etiam id elit id elit dapibus blandit. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, bu</p>
            <a>Read more</a>
        </div>
        <div  class="blog_main_min">
            <img src="Image/data_image/ins/b5.jpg" />
            <h2>VENIAM NULLA DOLOR SIT AMET, CONSECTETUER ADIPISCING ELIT</h2>
            <p>Vestibulum porta iaculis felis, eget tristique ante egestas quis. Sed non quis, convallis felis. Etiam id elit id elit dapibus blandit. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, bu</p>
            <a>Read more</a>
        </div>
    </div>
</asp:Content>
