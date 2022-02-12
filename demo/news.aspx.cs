using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class news : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        { 
            rpbantin.DataSource = dt.bantin_selectall();
            rpbantin.DataBind();
            Rpchitiet.DataSource = dt.chitiet_selectnew();
            Rpchitiet.DataBind();
            
        }
    }
}