using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class admin_sp : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grad_sp.DataBind();
               
            }
        }

        protected void grad_sp_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtad_tenfile.Text = grad_sp.SelectedRow.Cells[1].Text;
           
            txtad_download.Text= grad_sp.SelectedRow.Cells[4].Text;
            btnad_sp_xoa.Visible = true;
        }
        void reset()
        {
            txtad_tenfile.Text = txtad_gioithieu.Text = txtad_download.Text = "";
            btnad_sp_xoa.Visible = false;
          
        }
        bool checknull()
        {
            if (txtad_tenfile.Text == "" || txtad_gioithieu.Text == "" || txtad_download.Text == "") return true;
            else return false;
        }
        bool checkdownload()
        {
            int dl = Convert.ToInt32(txtad_download.Text);
            if (dl >= 0 && dl <= 2) return true;
            else return false;
            
        }
       
        protected void btn_upload_Click(object sender, EventArgs e)
        {
            

            if (checknull()) lblad_tb_sp.Text = "Không được để trống";
            else if (checkdownload() == false) lblad_tb_sp.Text = "Xem lại quyền download";
          
            else if (fuad_file.HasFile && checknull() == false)
            {
                int filesize= fuad_file.PostedFile.ContentLength;
                if (filesize > 10485760) lblad_tb_sp.Text = "file lớn hơn 10MB";
                else
                {
                    
                    int download = Convert.ToInt32(txtad_download.Text);
                    int danhmuc = Convert.ToInt32(drl_ad_danhmuc.SelectedValue);
                    fuad_file.PostedFile.SaveAs(Server.MapPath("~/File/") + fuad_file.FileName);

                    dt.sanpham_insert(txtad_tenfile.Text, txtad_gioithieu.Text, download, danhmuc, fuad_file.FileName);
                    lblad_tb_sp.Text = " Đã thêm :" + txtad_tenfile.Text;

                }
            }
            else lblad_tb_sp.Text = "Chưa có file ";
        }

        protected void btnad_sp_xoa_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            reset();
        }

        

       
        protected void grad_sp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/File/") + e.CommandArgument);
                Response.End();
            }
        }

        

        

        protected void btnad_sp_search_Click1(object sender, EventArgs e)
        {
     
     
        }
    }
}