using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class noidung : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int idchitiet = Convert.ToInt32(Request["idchitiet"]);
            int id = Convert.ToInt32(Request["idbantin"]);
            rp1.DataSource = dt.chitiet_selectid(idchitiet);
            rp1.DataBind();
            rpnoidung.DataSource = dt.bantin_selectid(id);
            rpnoidung.DataBind();
            rprandom.DataSource = dt.chitiet_selectrandom(id);
            rprandom.DataBind();
        }
    }
}