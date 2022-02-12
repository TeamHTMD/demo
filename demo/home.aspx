<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="demo.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
      <div class="grid__row"> <div class="grid_home4">
                      <div class="home_board">
                          <p class="home_title4"> Top 5 tài liệu được tải nhiều nhất</p>
                           <ul>
                           
                               <asp:Repeater ID="rpsanphamtainhieunhat" runat="server">
                                   <ItemTemplate>
                                        <li class="home_item-list"><a class="home_item" href="download.aspx?iddanhmuc=<%# Eval("iddanhmuc")%>&idsanpham=<%# Eval("idsanpham") %>">(<%# Eval("luottai") %>)<%# Eval("sanpham") %> </a></li>
                                   </ItemTemplate>
                               </asp:Repeater>
                           </ul>
                      </div>
                      <div class="home_board">
                          <p class="home_title4"> Tin tức ngẫu nhiên</p>
                        <ul>
                           
                            <asp:Repeater ID="rphome_newsrandom" runat="server">
                                <ItemTemplate>
                                     <li><a href="noidung.aspx?idchitiet=<%# Eval("idchitiet")%>&idbantin=<%# Eval("idbantin")%>" class="home_item"> <%# Eval("tieude") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                      </div>
                </div>
             
           <div class="grid_home8">
               <div class="home_board">
                   <p class="home_title">Tài Liệu Mới Nhất</p>
                   <div class="home_board_sanpham">
                       <div class="grid__row1">
                    <asp:ListView ID="rpsanphammoinhat" runat="server">
                       <ItemTemplate>
                              <div class="grid__column2-4">
                                           <div class="home-products-item">
                                            <div class="home-products-item__img" style="background-image: url(img/words.png);"></div>
                                            <a href="download.aspx?iddanhmuc=<%# Eval("iddanhmuc")%>&idsanpham=<%# Eval("idsanpham") %>" class="home-products-item-link"><%# Eval("sanpham" )%></a>
                                            <div class="home-products-item_evaluate">
                                            <a class="home-products-item_rate"> <%# Eval("rate" )%></a>
                                            <a class="home-products-item_download">tải:<%#  Eval("luottai") %></a></div> 
                                         
                                      </div>
                                  </div>
                       </ItemTemplate>
                   </asp:ListView>
                       </div>
                   </div>
               </div>
                   <div class="home_board">
                       <p class="home_title"> Tin Tức Mới Cập Nhật</p>
                       <asp:Repeater ID="rphome_news" runat="server">
                           <ItemTemplate>
                              
                                                <div class="home_item_news">
                                                   <a href="noidung.aspx?idchitiet=<%# Eval("idchitiet")%>&idbantin=<%# Eval("idbantin")%>" class="title_news"> <%# Eval("tieude")%>
                                                   </a>
                                                     <div class="thumb_art-home">
                                                        <picture>
                                                            <img  src="<%# Eval("linkart") %>" alt="" intrinsicsize="220x132">
                                                         </picture>

                                                    </div>
                                                   <p class="description"><%# Eval("gioithieu") %>
                                                    </p>
                                                   
                                                    </div>
                                            
                           </ItemTemplate>
                       </asp:Repeater>
                   </div>
                </div>
            
              
          </div>
</asp:Content>
