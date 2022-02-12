<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="demo.download" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="download">
          <h4>
              <asp:Label ID="lbltb1" runat="server" Text="" ForeColor="White" Font-Size="X-Large" BackColor="Red"></asp:Label>
             
          </h4>
          <asp:Repeater ID="rpdanhmuc" runat="server">
              <ItemTemplate>
                   <h2 class="home_title"> <%#  Eval("danhmuc") %></h2>
              </ItemTemplate>
          </asp:Repeater>
                <asp:Repeater ID="rpsanpham1" runat="server" OnItemCommand="rpsanpham1_ItemCommand"   >
              <ItemTemplate>
                  
                <h2 class="download_name"> <%# Eval("sanpham") %></h2>
                <span class="downloaded">Lượt tải : <%# Eval("luottai") %></span>
                <span class="downloaded">Đánh giá : <%# Eval("rate") %></span>
                  <h4 class="preview"> Giới thiệu</h4>
                 <div class="img_product"> <%# Eval("noidung") %></div>
                 <h3 class="downloaded"> bạn cần vip <%# Eval("download") %> để tải về</h3>
             
                 <div class="download_download">
                 <span class="text_download"> cảm ơn bạn đã tải xuống tài liệu: </span>
                 
                     <asp:LinkButton ID="linkdownload" CommandName="Download" CommandArgument='<%# Eval("linktai") %>' runat="server"><%# Eval("linktai")%></asp:LinkButton>
                           
             </div>
              
                 </ItemTemplate>
           </asp:Repeater>      
         
    </div>
</asp:Content>
