<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="oragnic.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #search a i{
                color: #98bd68;
        }



            /* sản phẩm sale */


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

           /*San pham noi bat*/

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


        #search_1 {
            width: 90%;
            margin: 0 auto;
        }

        #search_input {
            text-align: center;
            margin: 50px 0;
        }

            #search_input hr {
                margin: 20px 0;
            }

        #search_input_text {
            padding: 13px;
            width: 400px;
        }

        #search_input_text_submit {
            padding: 13px;
            background: none;
            color: #98bd68;
            border: solid 1.5px #98bd68;
        }

            #search_input_text_submit:hover {
                padding: 13px;
                background: #98bd68;
                color: #fff;
                border: solid 1.5px #98bd68;
            }

        #search_ketqua{
            
    display: flex;
    justify-content: center;

        }
        #search_ketqua_h2 {
            text-align: center;
            text-transform: uppercase;
        }

            #search_ketqua_span {
                text-align: center;
                text-transform: uppercase;
                color: #98bd68;
                margin-left: 10px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="search_1">
        <div id="search_input">
            <input type="text" placeholder="Nhập Nội Dung Tìm Kiếm . . ." name="search" value="" id="search_input_text"/>
            <asp:Button runat="server" Text="Tìm Kiếm" onclick="search" id="search_input_text_submit" ClientIDMode="Static"/>
            <hr />
        </div>
        <div id="search_ketqua">
            <h2 id="search_ketqua_h2" runat="server" ClientIDMode="Static"></h2>
            <h2 id="search_ketqua_span" runat="server" ClientIDMode="Static"></h2>
        </div>
        <div>
            <div id='sanpham_noibat_sp'>
                <!-- 
            <div class='sanpham_noibat_sp_min' id="sanpham_noibat_sp_min_id" runat="server">
            </div> -->
                <div class='sanpham_noibat_sp_min'>
                    <asp:ListView ID="ListViewsp_search" runat="server">
                        <ItemTemplate>
                            <div class="sanpham_noibat_sp_min_sp">
                                <a href='Chitietsanpham.aspx?id=<%# Eval("blogId")%>'>
                                    <div class="sale_main_sanpham_min_sp_text">
                                        <h2><%# Eval("name") %></h2>
                                        <h3><%# Eval("sale") %></h3>
                                        <hr />
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

    </div>
</asp:Content>
