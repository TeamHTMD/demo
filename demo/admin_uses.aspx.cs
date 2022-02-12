using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace demo
{
    public partial class admin_uses : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        
        void clear()
        {
            txtadmail.Text = txtad_adm.Text = txtad_down.Text = txtad_pass.Text = "";
            txtadmail.Enabled = true;
            btn_u_xoa.Visible = false;
        }
        protected void btnboqua_Click(object sender, EventArgs e)
        {
            clear();
        }
        bool checknull()
        {
            if (txtadmail.Text == "" || txtad_pass.Text == "" || txtad_down.Text == "" || txtad_adm.Text == "")
                return true;
            else return false;
        }
        bool checkdownload()
        {
            int dl = Convert.ToInt32(txtad_down.Text);
            if (dl >= 0 && dl <= 2) return true;
            else return false;

        }
        bool checkad()
        {
            int dl = Convert.ToInt32(txtad_adm.Text);
            if (dl == 0 || dl == 1) return true;
            else return false;
        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
            var kiemtraten = dt.name_selectname(txtadmail.Text);
            int yesno = kiemtraten.Count();
            int a = txtad_pass.Text.Length;
            if (checknull())
            {
                lblad_tb.Text = "Bạn không được để trống";
                txtadmail.Focus();
            }
            else if (yesno > 0)
            {
                lblad_tb.Text = "Email đã được sử dụng. Vui lòng dùng email khác hoặc đăng nhập bằng email đã sử dụng";
                txtadmail.Text = "";
            }
            else if (a > 8)
            {
                lblad_tb.Text = "Password tối đa 8 kí tự";

            }
            else if (checkad() == false) lblad_tb.Text = "Xem lại quyền admin";
            else if (checkdownload() == false) lblad_tb.Text = "Xem lại quyền download";
            else
            {
                SqlDataSource1.Insert();
                lblad_tb.Text = "Đã thêm: " + txtadmail.Text;
            }
            if (txtadmail.Enabled==false)
            {
                SqlDataSource1.Update();
                lblad_tb.Text = "Đã cập nhật: "+ txtadmail.Text;
            }
            clear();
        }

        protected void grad_uses_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtadmail.Text = grad_uses.SelectedRow.Cells[0].Text;
            txtad_pass.Text= grad_uses.SelectedRow.Cells[1].Text;
            txtad_down.Text= grad_uses.SelectedRow.Cells[2].Text;
            txtad_adm.Text= grad_uses.SelectedRow.Cells[3].Text;
            txtadmail.Enabled = false;
            btn_u_xoa.Visible = true;
        }

        protected void btn_u_xoa_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            lblad_tb.Text = "Đã xóa: "+txtadmail.Text;
            clear();
        }
    }
}