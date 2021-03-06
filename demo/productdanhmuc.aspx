<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="productdanhmuc.aspx.cs" Inherits="demo.productdanhmuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="products">
                <div class="grid">
                    <div class="grid__row">
                        <div class="grid__column2">
                            <div class="category">
                                <h3 class="ca_heading">
                                    <i class="ca_heading_icon fas fa-list"></i>
                                     Danh Mục</h3>
                                <ul class="ca_list">
                                    <li class="ca_item">
                                        <a href="product.aspx" class="ca_item_link"> Tất cả</a>
                                    </li>
                                    <asp:Repeater ID="danhmuc1" runat="server">
                                        <ItemTemplate>
                                            <li class="ca_item">
                                        <a href="productdanhmuc.aspx?iddanhmuc=<%# Eval("iddanhmuc") %>" class="ca_item_link"> <%# Eval("danhmuc") %></a>
                                                 </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                      <div class="grid__column10">
                         <div class="home_pro">
                              <div class="home_filter">
                                  <asp:Repeater ID="rptittle" runat="server">
                                      <ItemTemplate>
                                          <h3 class="tieude"> Sản Phẩm/<%# Eval("danhmuc") %></h3>
                                      </ItemTemplate>
                                  </asp:Repeater>
                              </div>
                              <div class="sapxep">
                                <span class="home_filter_lable"> Sắp xếp theo :</span>
                                <select name="" id="login_option">
                                  <option selected="selected"> Tất cả</option>
                                  <option> Mới nhất </option>
                                  <option> Đánh giá </option>
                                  <option> Lượt tải về </option>
                               </select>
                              </div>
                              
                          </div>
                          <div class="home_products">
                              <div class="grid__row1">
                                  <asp:ListView ID="rpsanphamdanhmuc" runat="server">
                                      <ItemTemplate>
                                          <div class="grid__column2-4">
                                           <div class="home-products-item">
                                            <div class="home-products-item__img" style="background-image: url(img/words.png);"></div>
                                            <a href="download.aspx?iddanhmuc=<%# Eval("iddanhmuc")%>&idsanpham=<%# Eval("idsanpham") %>" class="home-products-item-link"><%# Eval("sanpham" )%></a>
                                            <div class="home-products-item_evaluate">
                                            <a class="home-products-item_rate"> <%# Eval("rate" )%></a>
                                            <a class="home-products-item_download">lượt tải:<%#  Eval("luottai") %></a></div> 
                                         
                                      </div>
                                  </div>
                                      </ItemTemplate>
                                  </asp:ListView>
                                 
 
                              </div>
                              
                          </div>
                        
                      </div>
                    </div>
                </div>
            </div>
</asp:Content>
