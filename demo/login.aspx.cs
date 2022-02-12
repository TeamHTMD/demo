using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class login : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dangnhap_Click(object sender, EventArgs e)
        {
            var dl = dt.name_search(txtuses.Text, txtpass.Text); 
            int kt = dl.Count();
            var check_ad = dt.name_checkad(txtuses.Text);
            int ktad = check_ad.Count();

            if (kt>0)
            {
                if (ktad > 0)
                {
                    Session["admin"] = true;
                    Session["idname"] = txtuses.Text;
                    Response.Redirect("admin_uses.aspx");
                    
                }
                else
                {
                    Session["login"] = true;
                    Session["idname"] = txtuses.Text;
                    Response.Redirect("home.aspx");
                }
            }
            else
            {
                lbltb.Text = "dang nhap that bai. dang nhap lai";
                txtuses.Focus();
            }

        }
    }
}