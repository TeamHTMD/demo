using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class registration : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dangki_Click(object sender, EventArgs e)
        {
            var kiemtraten = dt.name_selectname(Textemail.Text);
            int yesno = kiemtraten.Count();
            int a = Textpass.Text.Length;
            if (Textemail.Text == "" || Textpass.Text == "" || Textlaipass.Text == "")
            {
                lblmk.Text = "Bạn không được để trống";
                Textemail.Focus();
            }
            else if (yesno > 0)
            {
                lblmk.Text = "Email đã được sử dụng. Vui lòng dùng email khác hoặc đăng nhập bằng email đã sử dụng";
                Textemail.Text = "";
            }
            else if (Textpass.Text == Textlaipass.Text && a > 8)
            {
                lblmk.Text = "Password tối đa 8 kí tự";
                Textlaipass.Text = "";
            }
            else if (Textpass.Text == Textlaipass.Text && a <= 8)
            {
                dt.name_insertinto(Textemail.Text, Textpass.Text);
                Response.Redirect("login.aspx");
            }
            else
            {
                lblmk.Text = "Nhập lại mật khẩu không đúng";
                Textlaipass.Text = "";
            }


            

        }

    }
}
            

       