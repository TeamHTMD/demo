<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin1.aspx.cs" Inherits="demo.admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
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

    <!-- Main content -->
    <section class="content">

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
          <table class="table table-striped projects">
              <thead>
                  <tr>
                      <th style="width: 1%">
                          #
                      </th>
                      <th style="width: 20%">
                          Tên người dùng
                      </th>
                      <th style="width: 30%">
                          Mật khẩu
                      </th>
                      <th>
                      Quyền download                 
                      </th>
                      <th>
                          Quền quản trị
                      </th>
                      <th style="width: 20%">
                      </th>
                  </tr>
              </thead>
              <asp:Repeater ID="rpadmin_uses" runat="server">
                  <ItemTemplate>
                       <tbody>
                
                      <td>
                          #
                      </td>
                      <td>
                          <a>
                             <%# Eval("email") %>
                          </a>
                         
                      </td>
                      <td>
                          <ul class="list-inline">
                              <small>
                              <%# Eval("password") %>
                          </small>
                          </ul>
                      </td>
                      <td class="project_progress">
                          
                          <small>
                              <%# Eval("downloaded") %>
                          </small>
                      </td>
                      <td class="project-state">
                          <span class="badge badge-success"> <%# Eval("adm") %></span>
                      </td>
                      <td class="project-actions text-right">
                          
                          <a class="btn btn-info btn-sm" href="#">
                              <i class="fas fa-pencil-alt">
                              </i>
                              Edit
                          </a>
                          <a class="btn btn-danger btn-sm" href="#">
                              <i class="fas fa-trash">
                              </i>
                              Delete
                          </a>
                      </td>
                  </tr>
              
              </tbody>
                  </ItemTemplate>
              </asp:Repeater>
              
          </table>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>
