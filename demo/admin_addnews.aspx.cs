using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    
    public partial class admin_addnews : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void clear()
        {
            txtgioithieu.Text = txtnoidung.Text = txttieude.Text = "";
        }
        protected void btnad_news_add_Click(object sender, EventArgs e)
        {
            int idbantin = Convert.ToInt32(drad_bantin.SelectedValue);
            dt.chitiet_insertinto(idbantin, txttieude.Text, txtgioithieu.Text, txtnoidung.Text, DateTime.Now, null);
            /** dt.chitiet_insert(idbantin, txttieude.Text, txtgioithieu.Text, txtnoidung.Text, DateTime.Now, "null");*/
            clear();
            lblad_news_tb.Text = "Đã thêm tin mới";
        }
    }
}