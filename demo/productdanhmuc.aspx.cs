using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class productdanhmuc : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            danhmuc1.DataSource = dt.danhmuc_selectall();
            danhmuc1.DataBind();
            int id = Convert.ToInt32(Request["iddanhmuc"]);
            rptittle.DataSource = dt.danhmuc_selectid(id);
            rptittle.DataBind();
                rpsanphamdanhmuc.DataSource = dt.sanpham_selectiddanhmuc(id);
            rpsanphamdanhmuc.DataBind();
        }
    }
}