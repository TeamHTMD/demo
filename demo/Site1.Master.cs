using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        demoDataContext dk = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            object uses = Session.Contents["idname"];
            string bem = Convert.ToString(uses);
            Rpuses.DataSource = dk.name_selectname(bem);
            Rpuses.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["language"] = false;
        }

        protected void eng_Click(object sender, ImageClickEventArgs e)
        {
            Session["language"] = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["search"] = txt_uses_search.Text;
            Response.Redirect("search.aspx?ket-qua-tim-kiem-cua " +txt_uses_search.Text);
           
            
        }
    }
}