using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           /** danhmuc.DataSource = dt.danhmuc_selectall();
            danhmuc.DataBind(); 
            rpsanpham.DataSource = dt.sanpham_selectall();
            rpsanpham.DataBind(); */
        }
    }
}