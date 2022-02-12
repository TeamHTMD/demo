<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true"  CodeBehind="admin_addnews.aspx.cs" Inherits="demo.admin_addnews" EnableEventValidation="false"  CodeFile="admin_addnews.aspx.cs" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="content-wrapper">
             <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Thêm tin tức </h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Thêm tin tức</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
            <section class="content">
      <!-- Default box -->
      <div class="card">  
        <div class="card-header">
            <h3 class="card-title">Thêm tin tức</h3>
             <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
              <i class="fas fa-times"></i>
            </button>
          </div>
         
        </div>
     
      <div class="card-body p-0">
    <div class="addnews">
        <asp:Label ID="lblad_news_tb" runat="server" Text="" Font-Size="Larger" ForeColor="White" BackColor="Red"></asp:Label>
    <h4> Danh mục </h4>
        <asp:DropDownList ID="drad_bantin" CssClass="form_admin_sp" runat="server" DataSourceID="SqlDataSource1" DataTextField="bantin" DataValueField="idbantin" Height="40px" Width="172px">
    </asp:DropDownList>
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usesConnectionString %>" SelectCommand="SELECT * FROM [bantin]"></asp:SqlDataSource>
    <br />
        
    <h4> Tiêu đề</h4>
    <asp:TextBox ID="txttieude" CssClass="form_admin_sp "  runat="server" Width="593px"></asp:TextBox>
    <h4> Giới thiệu</h4>
    <asp:TextBox ID="txtgioithieu" CssClass="form_admin_sp "  runat="server" Width="608px"></asp:TextBox>
    <h4>Nội dung</h4> 
           <CKEditor:CKEditorControl Id="txtnoidung" runat="server"> </CKEditor:CKEditorControl>
    
        <asp:Button ID="btnad_news_add" CssClass="btn btn-primary btn-sm btn-admin_form" runat="server" Text="Thêm" OnClick="btnad_news_add_Click"></asp:Button>
        </div>
       </div>
       </div>
           </section>

          </div>
   
</asp:Content>
