<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin_uses.aspx.cs" Inherits="demo.admin_uses" ValidateRequest="false" EnableEventValidation="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Content Wrapper. Contains page content -->
 
  <!-- /.content-wrapper -->
    <div class="content-wrapper">
          <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Người dùng</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Người dùng</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
 <section class="content">
        <div class="container-fluid">
   
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    
                        <div class="input-group">
                            <asp:TextBox ID="txtad_uses_search" CssClass="form-control form-control-lg" placeholder="Tìm kiếm" runat="server"></asp:TextBox>
                            <button type="submit" class="btn btn-lg btn-default">
                                    <i class="fa fa-search"></i>
                                </button>
                        </div>
                  
                  
                </div>
            </div>
        </div>
    </section>
        

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Danh sách người dùng</h3>
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
          
     <asp:GridView ID="grad_uses" runat="server" CellPadding="3" GridLines="None" Width="100%" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1"
         OnSelectedIndexChanged="grad_uses_SelectedIndexChanged" AllowPaging="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Height="16px" CssClass="table table-striped projects">
         <Columns>
             <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email"  >
             <ItemStyle Width="30%" />
             </asp:BoundField>
             <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" >
             <ItemStyle Width="20%" />
             </asp:BoundField>
             <asp:BoundField DataField="downloaded" HeaderText="downloaded" SortExpression="downloaded" >
             <ItemStyle Width="20%" />
             </asp:BoundField>
             <asp:BoundField DataField="adm" HeaderText="adm" SortExpression="adm" >
             <ItemStyle Width="20%" />
             </asp:BoundField>
             <asp:CommandField SelectText="Chọn" ShowSelectButton="True" ControlStyle-CssClass="btn btn-info btn-sm" >
<ControlStyle CssClass="btn btn-info btn-sm"></ControlStyle>
             </asp:CommandField>
         </Columns>
         <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
         <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
         <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
         <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
         <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White"  />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#594B9C" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#33276A" />
     </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usesConnectionString %>" InsertCommand="INSERT INTO name(email, password, downloaded, adm) VALUES (@email, @password, @downloaded, @adm)" SelectCommand="SELECT * FROM [name]" FilterExpression="email like '%{0}%'"
             DeleteCommand="DELETE FROM name WHERE (email = @email)" UpdateCommand="UPDATE name SET password = @password, downloaded = @downloaded, adm = @adm, email = @email WHERE (email = @email)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="txtadmail" Name="email" PropertyName="Text" />
            </DeleteParameters>
         <InsertParameters>
             <asp:ControlParameter ControlID="txtadmail" Name="email" PropertyName="Text" />
             <asp:ControlParameter ControlID="txtad_pass" Name="password" PropertyName="Text" />
             <asp:ControlParameter ControlID="txtad_down" Name="downloaded" PropertyName="Text" />
             <asp:ControlParameter ControlID="txtad_adm" Name="adm" PropertyName="Text" />
         </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtad_pass" Name="password" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtad_down" Name="downloaded" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtad_adm" Name="adm" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtadmail" Name="email" PropertyName="Text" />
            </UpdateParameters>
            <FilterParameters>
                <asp:ControlParameter  ControlID="txtad_uses_search" Name="email" PropertyName="Text"/>
            </FilterParameters>
     </asp:SqlDataSource>
              
            </div>
    
        <div class="admin_sp_form">
            <asp:Label ID="lblad_tb" runat="server" BackColor="Red" Font-Size="Large"  ForeColor="White"></asp:Label>
            </div>
<div class="admin_sp_form">
     <asp:Label ID="Label1" runat="server" Text="Email:" ></asp:Label>
        <asp:TextBox ID="txtadmail" runat="server" TextMode="Email" CssClass="form_admin_sp "></asp:TextBox>
     
     
     <asp:Label ID="Label2" runat="server" Text="Password: " ></asp:Label>
     <asp:TextBox ID="txtad_pass" runat="server"  CssClass="form_admin_sp "></asp:TextBox>
    
    
     <asp:Label ID="Labe3" runat="server" Text="Quyền download" ></asp:Label>
        <div class="admin_sp_form_dl">
     <asp:TextBox ID="txtad_down" runat="server" CssClass="form_admin_sp " ></asp:TextBox>
     <asp:Label ID="Label6" runat="server" Text="0, 1 hoặc 2"></asp:Label>
        </div>
        
     <asp:Label ID="Label4" runat="server" Text="Quyền admin:" ></asp:Label>
            <div class="admin_sp_form_dl">
     <asp:TextBox ID="txtad_adm" runat="server" CssClass="form_admin_sp "></asp:TextBox>
     <asp:Label ID="Label3" runat="server" Text="0 hoặc 1"></asp:Label>
      </div>
     <asp:Button ID="btnboqua" CssClass="btn btn-secondary btn-sm" runat="server"  OnClick="btnboqua_Click" Text="Bỏ qua" />
     <asp:Button ID="btnadd" CssClass="btn btn-primary btn-sm" runat="server"  OnClick="btnadd_Click" Text="Lưu" Width="68px" />
     
     <asp:Button ID="btn_u_xoa" CssClass="btn btn-danger btn-sm" runat="server" OnClick="btn_u_xoa_Click" Text="Xóa" Visible="False" Width="67px" />
     
            </div>
</div>
            </section>
            </div>
    
</asp:Content>
