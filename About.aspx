<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="oragnic.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
            #about {
                color: #98bd68;
                box-shadow: 0 3px #98bd68;
            }

            #about1 {
                width: 90%;
                margin: 0 auto;
            }

            #aboutmin h2 {
                text-align: center;
                margin: 50px;
                font-size: 30pt;
                text-transform: uppercase;
                color: #98bd68;
            }

            #aboutadd {
                display: flex;
                text-align: center;
                justify-content: center;
                width: 900px;
                margin: 0 auto;
                align-items: center;
                padding: 50px;
                background: #2c2c2c;
            }

            .aboutadd_min {
                display: flex;
                justify-content: center;
                width: 300px;
                /* padding: 50px; */
                /* background: #2c2c2c; */
                color: #fff;
            }

                .aboutadd_min i {
                    margin-right: 15px;
                }

            #aboutmap {
                margin: 50px 0;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="about1">
        <div id="aboutmin">
            <h2>About</h2>
        </div>
        <div id="aboutadd">
            <div class="aboutadd_min"><i class="fas fa-map-marker-alt"></i>
                 <p>102 Hoàng Đạo Thành, Kim Giang, Thanh Xuân, Hà Nội</p>
            </div>
            <div class="aboutadd_min"><i class="fas fa-phone"></i>
                <p>(+84).0965.674.033</p>
            </div>
            <div class="aboutadd_min"><i class="fas fa-envelope"></i>
                <p>Vqh2602@gmail.com</p>
            </div>
        </div>
        <div id="aboutmap">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3725.1879948224414!2d105.83655571476251!3d20.985099986022053!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1619250812646!5m2!1svi!2s" width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>

    </div>
</asp:Content>
