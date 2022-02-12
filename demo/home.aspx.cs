using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class home : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            rpsanphammoinhat.DataSource = dt.sanpham_home();
            rpsanphammoinhat.DataBind();
            rphome_news.DataSource = dt.chitiet_home();
            rphome_news.DataBind();
            rphome_newsrandom.DataSource = dt.chitiet_selectrandom(0);
            rphome_newsrandom.DataBind();
            rpsanphamtainhieunhat.DataSource = dt.sanpham_xephang();
            rpsanphamtainhieunhat.DataBind();
        }
    }
}