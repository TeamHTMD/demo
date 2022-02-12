<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="demo.help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="help">
                <form action="#" enctype="text/plain" method="POST" role="form">
                <h4 class="help_help"> HỖ TRỢ</h4>
                <div class="help_meta"></div>
                <span class="help_header"> Nếu bạn cần hỗ trợ, hãy gửi thông tin vào biểu mẫu dưới đây. Chúng tôi sẽ cố gắng phản hồi sớm nhất ! </span>
                  <div class="help_inner">
                    <div class="help_group">
                        <input type="text" class="help_input" placeholder="Name">
                    </div>
                    <div class="help_group">
                    <input type="text" class="help_input" placeholder="Email">
                     </div>
                    <div class="help_group">
                   <textarea class= " help_form"  id="message" placeholder="Nội dung tin nhắn" required rows="7" cols="80"></textarea>
                     </div>
                  </div>
                  <button class="btn btn--primary btn_help" type="submit">Gửi đi</button>
                 </form>
            </div>
</asp:Content>
