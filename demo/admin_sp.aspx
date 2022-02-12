<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin_sp.aspx.cs" Inherits="demo.admin_sp" ValidateRequest="false" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <!-- /.content-wrapper -->
    <div class="content-wrapper">
   
       <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Sản phẩm</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Sản phẩm</li>
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
                            <asp:TextBox ID="txtad_sp_search" CssClass="form-control form-control-lg" placeholder="Tìm kiếm" runat="server"></asp:TextBox>
                            <button type="submit" class="btn btn-lg btn-default">
                                    <i class="fa fa-search"></i>
                                </button>
                        </div>
                  
                  
                </div>
            </div>
        </div>
    </section>
        <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Danh sách sản phẩm</h3>
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
    <asp:GridView ID="grad_sp" runat="server" AutoGenerateColumns="False" DataKeyNames="idsanpham" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="grad_sp_SelectedIndexChanged"  AllowPaging="True" Width="100%" >
        <Columns>
            <asp:BoundField DataField="idsanpham" HeaderText="id" ReadOnly="True" SortExpression="idsanpham" >
            <ItemStyle Width="3%" />
            </asp:BoundField>
            <asp:BoundField DataField="sanpham" HeaderText="sanpham" SortExpression="sanpham" >
            <ItemStyle Width="30%" />
            </asp:BoundField>
            <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" >
            <ItemStyle Width="5%" />
            </asp:BoundField>
            <asp:BoundField DataField="luottai" HeaderText="luottai" SortExpression="luottai" >
            <ItemStyle Width="5%" />
            </asp:BoundField>
            <asp:BoundField DataField="download" HeaderText=" Quyền download" SortExpression="download" >
            <ItemStyle Width="5%" />
            </asp:BoundField>
            <asp:BoundField DataField="iddanhmuc" HeaderText="Danh mục" SortExpression="iddanhmuc" >
            <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Link download">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="false" CommandName="Download" CommandArgument='<%# Eval("linktai")%>' Text='<%# Eval("linktai") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" ControlStyle-CssClass="btn btn-info btn-sm" >
            <ItemStyle Width="5%" />
            </asp:CommandField>
        </Columns>
        
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerSettings FirstPageText="Trang đầu" LastPageText="Trang cuối" Mode="NextPreviousFirstLast" NextPageText="Tiếp" PreviousPageText="Trước" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usesConnectionString %>" SelectCommand="
SELECT*FROM sanpham" FilterExpression="sanpham like '%{0}%'" InsertCommand="INSERT INTO sanpham(idsanpham, sanpham, noidung, rate, luottai, download, iddanhmuc, linktai) VALUES (@idsanpham, @sanpham, @noidung, @rate, @luottai, @download, @iddanhmuc, @linktai)" ProviderName="<%$ ConnectionStrings:usesConnectionString.ProviderName %>" DeleteCommand="DELETE FROM sanpham WHERE (sanpham = @sanpham)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="txtad_tenfile" Name="sanpham" PropertyName="Text" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtad_tenfile" Name="sanpham" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtad_gioithieu" Name="noidung" PropertyName="Text" />
            <asp:Parameter DefaultValue="0" Name="rate" />
            <asp:Parameter DefaultValue="0" Name="luottai" />
            <asp:ControlParameter ControlID="txtad_download" Name="download" PropertyName="Text" />
            <asp:ControlParameter ControlID="drl_ad_danhmuc" Name="iddanhmuc" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="fuad_file" Name="linktai" PropertyName="FileBytes" />
        </InsertParameters>
      <FilterParameters>
          <asp:ControlParameter ControlID="txtad_sp_search" Name="sanpham" PropertyName="Text" />
      </FilterParameters>
             
        </asp:SqlDataSource>
               
               </div>
        <div class="admin_sp_form">
        <asp:Label ID="lblad_tb_sp"  runat="server" ForeColor="White"  BackColor="Red" Font-Size="Large"></asp:Label>
       </div>
        <div class="admin_sp_form">
    <asp:Label ID="Label1" runat="server"  Text="Tên file:" ></asp:Label>
    <asp:TextBox ID="txtad_tenfile" runat="server" width="400px"  CssClass="form_admin_sp " ></asp:TextBox>
    
    <asp:Label ID="Label2" runat="server" Text="Giới thiệu:" ></asp:Label>
    <asp:TextBox ID="txtad_gioithieu" runat="server" width="400px" Height="50px" CssClass="form_admin_sp "></asp:TextBox>
   <div class="admin_sp_form_dl">
    <asp:Label ID="Label3" runat="server" Text="Quyền download: "></asp:Label>
    <asp:TextBox ID="txtad_download" width="100px"  runat="server" CssClass="form_admin_sp "></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="0,1 hoặc 2"></asp:Label>
    </div>
    <asp:Label ID="Label4" runat="server" Text="Thuộc danh mục :" ></asp:Label>
        <asp:DropDownList ID="drl_ad_danhmuc" runat="server" CssClass="form_admin_sp" DataSourceID="SqlDataSource2" DataTextField="danhmuc" DataValueField="iddanhmuc" Height="36px" Width="156px" >
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:usesConnectionString %>"  SelectCommand="SELECT * FROM [danhmuc]"></asp:SqlDataSource>
  
    <asp:Label ID="Label5" runat="server" Text="File:"></asp:Label>
    <asp:FileUpload ID="fuad_file" CssClass="form_admin_sp" runat="server" />
        
    <asp:Button ID="btn_upload" runat="server" Text="Lưu" CssClass="btn btn-primary btn-sm btn-admin_form" OnClick="btn_upload_Click" />
        <asp:Button ID="btnad_sp_xoa" runat="server" OnClick="btnad_sp_xoa_Click" CssClass="btn btn-danger btn-sm btn-admin_form" Text="Xóa" Visible="False" />
        

    </div>
 </div>
            </section>
    

    
</div>
</asp:Content>
