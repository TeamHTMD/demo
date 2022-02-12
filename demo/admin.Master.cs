using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class admin : System.Web.UI.MasterPage
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            object uses = Session.Contents["idname"];
            string bem = Convert.ToString(uses);
            rpadmin.DataSource = dt.name_selectname(bem);
            rpadmin.DataBind();
        }
    }
}