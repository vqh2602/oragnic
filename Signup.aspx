<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="oragnic.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
                 #user a i {
            color:#98bd68;
        }
        .login-page {
            width: 70%;
            padding: 8% 0 0;
            margin: auto;
        }

        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 400px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

            .form input {
                font-family: "Roboto", sans-serif;
                outline: 0;
                background: #f2f2f2;
                width: 100%;
                border: 0;
                margin: 0 0 15px;
                padding: 15px;
                box-sizing: border-box;
                font-size: 14px;
            }

            .form_min input {
                font-family: "Roboto", sans-serif;
                text-transform: uppercase;
                outline: 0;
                background: #4CAF50;
                width: 100%;
                border: 0;
                padding: 15px;
                color: #FFFFFF;
                font-size: 14px;
                -webkit-transition: all 0.3 ease;
                transition: all 0.3 ease;
                cursor: pointer;
            }

                .form_min input:hover, .form_min input:active, .form_min input:focus {
                    background: #43A047;
                }

            .form .message {
                margin: 15px 0 0;
                color: #b3b3b3;
                font-size: 12px;
            }

                .form .message a {
                    color: #4CAF50;
                    text-decoration: none;
                }

            .form .register-form {
            display: block;
            }

        .container {
            position: relative;
            z-index: 1;
            max-width: 300px;
            margin: 0 auto;
        }

            .container:before, .container:after {
                content: "";
                display: block;
                clear: both;
            }

            .container .info {
                margin: 50px auto;
                text-align: center;
            }

                .container .info h1 {
                    margin: 0 0 15px;
                    padding: 0;
                    font-size: 36px;
                    font-weight: 300;
                    color: #1a1a1a;
                }

                .container .info span {
                    color: #4d4d4d;
                    font-size: 12px;
                }

                    .container .info span a {
                        color: #000000;
                        text-decoration: none;
                    }

                    .container .info span .fa {
                        color: #EF3B3A;
                    }

        #error_login {
            margin-top: 10px;
            color: red;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="login-page">
        <div class="form" >
           <form class="register-form"  id="signin" >
                
               <input type="text" placeholder="Name" id="name" name="name" value=""/>
                <input type="password" placeholder="Password" id="pass" name="pass" value=""/>
                <input type="email" placeholder="Email address" id="email" name="email" value=""/>
                <input type="tel" placeholder="Phone" id="phone" name="phone" value=""/>
                <input type="text" placeholder="Address" id="add" name="add" value=""/>
               <div class="form_min">
                    <asp:Button runat="server" Text="Sigup" onclick="SignUp_Click" />
               </div>
                
                <p class="message" >Already registered? <a href="Login.aspx">Sign In</a></p>
            </form>

            <p id="error_login"></p>
        </div>
    </div>






    <script>

        //kiemtraten
        function name_kiemtra() {
            var err = ['* Tên không đưoc để trống!', '<br/>* Địa chỉ không được để trống!', '<br/>* Password là bắt buộc!', '<br/>* Địa chỉ email không hợp lệ!', '<br/>* Số điện thoại không chứa kí tự hoặc không để trống!'];
            var chuoiloi = '';
            var x,y,z,t,k= 0;
            // kiem tra ten
            if (document.getElementById('name').value == '') {
                chuoiloi += err[0];
                x=1;
            }
            else {
                x=0;
                chuoiloi += '';
            }
            // kiem tra dia chi
            if (document.getElementById('add').value == '') {
                chuoiloi += err[1];
                y = 1;
            }
            else {
                y = 0;
                chuoiloi += '';
            }
            console.log(chuoiloi);
            if (document.getElementById('pass').value == '') {
                chuoiloi += err[2];
                z = 1;
            }
            else {
                z = 0;
                chuoiloi += '';
            }
            //ktra email
            var regExp = /^[A-Za-z][\w$.]+@[\w]+\.\w+$/;
            var email = document.getElementById("email").value;
            if (regExp.test(email)) {
                chuoiloi += '';
                t = 0;
            }
            else {
                chuoiloi += err[3];
                t = 1;
            }

            //ktra sdt
            var phone = document.getElementById("phone").value;
            var phoneno = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
            if (phone.match(phoneno)) {
                chuoiloi += '';
                k = 0;
            }
            else {
                chuoiloi += err[4];       
                k = 1;
            }

            var check = x + y + z + t + k;

            if (check == 0) {
                document.getElementById("error_login").innerHTML = chuoiloi;
                return true;
            } else {
                alert('Bạn đã nhập sai dữ liệu, kéo duống cuối để xem chi tiết lỗi');
                document.getElementById("error_login").innerHTML = chuoiloi;
                return false;
            }
        }







    </script>
</asp:Content>
