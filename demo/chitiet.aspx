<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="demo.chitiet1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
                <div class="grid">
                    <div class="grid__row">
                        <div class="grid__column2">
                            <div class="category">
                                <h3 class="ca_heading">
                                    <i class="ca_heading_icon fas fa-list"></i>
                                     Danh Mục</h3>
                                <ul class="ca_list">
                                       <li class="ca_item"><a href="news.aspx" class="ca_item_link"> Mới nhất</a></li>
                                    <asp:Repeater ID="rpbantin" runat="server">
                                        <ItemTemplate><li class="ca_item">
                                        <a href="chitiet.aspx?idbantin=<%# Eval("idbantin") %>" class="ca_item_link"> <%# Eval("bantin") %></a>
                                    </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                   
                                </ul>
                            </div>
                        </div>
                      <div class="grid__column10">
                          <div class="home_pro">
                              <div class="home_filter">
                                  <h3 class="news_tieude">TIN TỨC</h3>
                              </div>
                                                           
                          </div>
                          <div class="home_products">
                              <div class="grid__row1">
                               
                                   
                                       <asp:Repeater ID="rpchitiet1" runat="server">
                                           <ItemTemplate>
                                                <div class="item_news">
                                                  
                                                   <a href="noidung.aspx?idchitiet=<%# Eval("idchitiet")%>&idbantin=<%# Eval("idbantin")%>" class="title_news"> <%# Eval("tieude")%>
                                                   </a>
                                                     <div class="thumb_art">
                                                        <picture>
                                                            <img style="left:10%;"  src="<%# Eval("linkart") %>" alt="" intrinsicsize="220x132">
                                                         </picture>

                                                    </div>
                                                   <p class="description"><%# Eval("description") %>
                                                    </p>
                                                    
                                                    </div>
                                           </ItemTemplate>
                                       </asp:Repeater>
                                
                            
                          </div>
                      </div>
                    </div>
                </div>
            </div>
            </article>
</asp:Content>
