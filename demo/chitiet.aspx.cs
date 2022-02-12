using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class chitiet1 : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int idbantin = Convert.ToInt32(Request["idbantin"]);
            rpbantin.DataSource = dt.bantin_selectall();
            rpbantin.DataBind();
            rpchitiet1.DataSource = dt.chitiet_selectidbantin(idbantin);
            rpchitiet1.DataBind();
        }
    }
}