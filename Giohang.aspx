<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="oragnic.Giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #giohangmain a i{
             color: #98bd68;
        }
        #text_giohang {
            width: 90%;
            text-align: center;
            margin: 0 auto;
            margin-top: 125px;
            margin-bottom: 60px;
        }

            #text_giohang h2 {
                text-transform: uppercase;
                font-size: 25pt;
            }

                #text_giohang h2:hover {
                    text-transform: uppercase;
                    font-size: 25pt;
                    color: #98bd68;
                    transition: 0.3s;
                }

            #text_giohang hr {
                width: 10%;
                margin: 0 auto;
                height: 2px;
                /* border: none; */
                margin-top: 10px;
                /* color: black; */
                background: #98bd68;
            }

        .giohang {
            margin-top: 100px;
            display: flex;
            flex-wrap: wrap;
            flex-direction: row;
            width: 90%;
            margin: 0 auto;
            justify-content: center;
        }

        .giohang_min_sp {
            display: flex;
            /*width: 600px;*/
            align-items: center;
            /*border-right: solid 1px;*/
            padding: 10px;
            border-radius: 10px;
        }

        .giohang_min_sp_img img {
            width: 200px;
            border-radius: 30px;
        }

        .giohang_min_sp_text {
            padding: 60px 40px;
        }

            .giohang_min_sp_text h2:hover {
                color: #98bd68;
                transition: 0.3s;
            }

            .giohang_min_sp_text h2, .giohang_min_sp_text h3 {
                margin-bottom: 10px;
            }

        .giohang_min_sp input {
            background: none;
            border: solid 1.5px;
            padding: 10px;
            color: #98bd68;
        }

            .giohang_min_sp input:hover {
                background: #98bd68;
                border: solid 1.5px;
                padding: 10px;
                color: #fff;
            }

        .tongtien_min_chitiet {
            width: 90%;
            margin: 0 auto;
        }

            .tongtien_min_chitiet hr, .tongtien_min_chitiet h2, .tongtien_min_chitiet h3, .tongtien_min_chitiet h4 {
                margin-bottom: 20px;
            }

            .tongtien_min_chitiet p {
                text-align: end;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

  
    <div runat="server">
        <div id="text_giohang" >
            <h2>Giỏ Hàng của bạn</h2>
            <hr />
        </div>
        <div class="giohang">
            <%--<div class="giohang_min" id="giohang" runat="server">
            </div>--%>
            <asp:ListView id="ListViewgh" runat="server">
                    <ItemTemplate>
                        <div class='giohang_min_sp' >
                            <div class='giohang_min_sp_img'>
                                <a href='Chitietsanpham.aspx?id=<%# Eval("masp")%>'>
                                    <img src='<%# Eval("imgsp")%>' /></a>
                            </div>

                            <div class='giohang_min_sp_text'>
                                <p>Mã: <%# Eval("id")%></p>
                                <h2>Tên sản phẩm: <%# Eval("tensp")%></h2>
                                <h3>Đơn giá (kg): <%# Eval("gia")%></h3>
                                <span>
                                    
                                    <p>Số Lượng: <%# Eval("sl")%></p>
                                    
                                </span>
                                
                            </div>
                            <!-- xoá sp lấy id từ listview -->
                            <asp:Button ID="Button1" runat="server" Text="Xoá" OnCommand="Button_Click" CommandArgument=<%# Eval("id")%>/>
                        </div>

                   </ItemTemplate>
                </asp:ListView>
        </div>
    </div>

<%--        <div>
            <p>Mã :</p>
            <input id="masp_giohang" min="0" value="0" runat="server" />
            <p>Số lượng: </p>
            <input id="masp_giohang_sl" min="0" value="0" runat="server" type="number"/>
            <asp:Button ID="Buttongh" runat="server" Text="Cap nhat" OnClick="Delete_sp" />
            <p>Nếu số lượng = 0 thì có nghĩa bạn sẽ xoá sản phẩm</p>
        </div>--%>

    <div id="tongtien">
        <div id="tongtien_min" class="tongtien_min" runat="server">
  
        </div>
    </div>

    </div>


</asp:Content>
