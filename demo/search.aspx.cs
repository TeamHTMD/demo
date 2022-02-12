using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           /* object uses = Session.Contents["search"];
            string bem = Convert.ToString(uses);
            rpsearch.DataSource = dt.sanpham_searchbyname(bem);
            rpsearch.DataBind();*/
        }
    }
}