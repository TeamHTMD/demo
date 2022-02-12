<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="noidung.aspx.cs" Inherits="demo.noidung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="noidung_body"> <asp:Repeater ID="rpnoidung" runat="server">
        <ItemTemplate>
            <span class="nd_title">
                <%# Eval("bantin" )%>
            </span>
        </ItemTemplate>
    </asp:Repeater>
    <asp:Repeater ID="rp1" runat="server">
        <ItemTemplate>
            <h3 class="nd_tieude">
                <%# Eval("tieude") %>
            </h3>
            <p class="description">  <%# Eval("gioithieu") %></p>
             <p class="nd_home">  <%# Eval("noidung") %></p>
        </ItemTemplate>
    </asp:Repeater>
        <div class="new_random">
            <h3 class="new_random-header"> Tin ngẫu nhiên</h3>
            <asp:Repeater ID="rprandom" runat="server">
                <ItemTemplate>
                     <li class="new_random_list"><a href="noidung.aspx?idchitiet=<%# Eval("idchitiet")%>&idbantin=<%# Eval("idbantin")%>" class="new_random_link"> <%# Eval("tieude") %></a></li>
                </ItemTemplate>
            </asp:Repeater>
           
        </div>
        </div>
</asp:Content>
   
