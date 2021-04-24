<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Chitietsanpham.aspx.cs" Inherits="oragnic.Chitietsanpham" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #chitiet_sp_container {
            width: 80%;
            margin: 0 auto;
            display: flex;
        }

        #chitiet_sp_container_img {
            width: 50%;
            margin-top: 40px;
            /* float: right; */
        }

            #chitiet_sp_container_img img {
                width: 500px;
                border-radius: 30px;
            }

        #chitiet_sp_container_text {
            margin-top: 90px;
            width: 50%;
        }

        #chitiet_sp_container_text_name h2 {
            font-size: 40pt;
            margin: 0;
            text-transform: uppercase;
        }

        #chitiet_sp_container_text_name h3 {
            font-size: 25pt;
            color: #98bd68;
            margin-top: 30px;
        }

        #chitiet_sp_container_text_name p {
            font-size: 15pt;
            color: gray;
            margin: 50px 0;
        }

        .cart_value button {
            background: none;
            border: solid 1px gray;
            padding: 13px 20px;
            /* font-size: 10pt; */
        }

        .cart_value input {
            background: none;
            border: solid 1px gray;
            padding: 13px 20px;
            text-align: center;
        }

        .cart_add {
            margin-top: 20px;
        }

            .cart_add p {
                margin: 10px 0;
            }

            .cart_add span {
                background: black;
                padding: 20px;
                border-radius: 30px;
                color: white;
            }

                .cart_add span i {
                    margin-right: 10px;
                }

                .cart_add span input {
                    border: none;
                    background: none;
                    color: white;
                    font-size: 15pt;
                }

                .cart_add span:hover {
                    background: #98bd68;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id='chitiet_sp'>
        <div id='chitiet_sp_container'>
            <div id='chitiet_sp_container_img'>
                <img id="Image1" src="./" runat="server" alt='' />
            </div>
            <div id='chitiet_sp_container_text'>
                <div id='chitiet_sp_container_text_name'>
                    <h2 id="namesp" runat="server"></h2>
                    <h3 id="salesp" runat="server"></h3>
                    <p id="chitiettext" runat="server"></p>
                </div>
                <div id='chitiet_sp_container_text_cart'>
                    <div>
                        <div class='cart_value'>

                            <button onclick='tru()'>-</button>
                            <input id="input_value" type="number" name='input_buy' value='0' runat="server" />
                            <button onclick='cong()'>+</button>
                        </div>
                        <div class='cart_add'>
                            <p>Số lượng và giá tiền được tính theo kg</p>
                            <div style="margin-top: 40px;">
                                <span>
                                    <i class="fa-light fa-cart-plus"></i>
                                    <asp:Button runat="server" Text="Thêm Vào Giỏ" OnClick="Buy_Click" />
                                </span>
                            </div>





                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>



    <script>
        function tru() {

            if (document.getElementById('<%=input_value.ClientID%>').value <= 0) {
                document.getElementById('<%=input_value.ClientID%>').value = 0;
            }
            else document.getElementById('<%=input_value.ClientID%>').value--;

        }
        function cong() {
            document.getElementById('<%=input_value.ClientID%>').value++;
            console.log(document.getElementById('<%=input_value.ClientID%>').value);
        }

    </script>
</asp:Content>
