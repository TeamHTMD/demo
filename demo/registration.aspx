<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="demo.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="wrapper">
                         <div class="reg_container">
                            <div class="login-form">
                                <div class="login_header">
                                <h3 class="login_heading"> Đăng ký</h3>
                                <a href="login.aspx"  class="login_switch">Đăng nhập</a>
                                 </div>
   
                            </div>
                            <div class="login-form_form">
                                <div class="login_group">
                                    <asp:TextBox ID="Textemail" CssClass="login_input" TextMode="Email" placeholder="Nhập email" runat="server"></asp:TextBox>
                                   
                                </div>
                                <div class="login_group">
                                     <asp:TextBox ID="Textpass" TextMode="password" CssClass="login_input" placeholder="Nhập mật khẩu" runat="server"></asp:TextBox>
                                  
                               </div>
                               <div class="login_group">
                                   <asp:TextBox ID="Textlaipass" TextMode="password" CssClass="login_input" placeholder="Xác nhận mật khẩu" runat="server"></asp:TextBox>
                                   
                               </div>
                              
                                    <h4> <asp:Label ID="lblmk" runat="server" Text=""></asp:Label></h4>
                               </div>
                               <div class="login_aside">
                                   <p class="policy-text"> Bằng việc đăng kí bạn đồng ý với
                                       <a href="" class="policy-link"> điều khoản dịch vụ</a> &
                                       <a href="" class="policy-link"> chính sách bảo mật</a>
                                   </p>
                               </div>
                               <div class="login_control">
                                   <button class="btn" onclick="back()">TRỞ VỀ</button>
                                   

                                   <asp:Button ID="dangki" CssClass="btn btn--primary" runat="server" Text="Đăng Kí" OnClick="dangki_Click" />
                                  
                               </div>
                             <div class="socials">
                             <a href="" class="with_icon">
                                <i class="fab fa-facebook-square"></i>
                                    Đăng nhập bằng facebook
                                </a>
                            <a href="" class="with_icon">
                                <i class="fab fa-google"></i>
                                    Đăng nhập bằng google
                            </a>
                                
                        </div>
                            </div>
                            
         </div>
</asp:Content>
