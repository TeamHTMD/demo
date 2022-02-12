<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="demo.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                      <div class="wrapper">
                        <div class="login_container">
                           <div class="login-form">
                               <div class="login_header">
                               <h3 class="login_heading"> Đăng nhập</h3>
                               <a href="registration.aspx"class="login_switch">Đăng ký</a>
                                </div>
  
                           </div>
                           <div class="login-form_form">
                               <div class="login_group">
          
                                   <asp:TextBox ID="txtuses" CssClass="login_input" placeholder="Nhập email" TextMode="Email" runat="server"></asp:TextBox>
                               </div>
                               <div class="login_group">
                                   
                                   <asp:TextBox ID="txtpass" CssClass="login_input" placeholder="Nhập password" TextMode="Password" runat="server"></asp:TextBox>
                              </div>
                               <h4>
                                   <asp:Label ID="lbltb" runat="server" Text=""></asp:Label>
                               </h4>
                              <div class="login_aside">
                                 <div class="login_help">
                                     <a href="" class="help_link forgot">Quên mật khẩu</a>
                                     <a href="" class="help_link"> Trợ giúp?</a>
                                 </div>
                              </div>
                              <div class="login_control">
                                  <button class="btn" onclick="back()">TRỞ VỀ</button>
                                   
                                  <asp:Button ID="dangnhap" CssClass="btn btn--primary" runat="server" Text="Đăng Nhập" OnClick="dangnhap_Click"   />
                              </div>
                           </div>
                             <div class="socials">
                            <a href="" class="with_icon">
                               <i class="fab fa-facebook-square"></i>
                                    Facebook
                               </a>
                           <a href="" class="with_icon">
                               <i class="fab fa-google"></i>
                                    Google
                           </a>
                               
                       </div>
                           </div>
                          
    </div>
                    
</asp:Content>
