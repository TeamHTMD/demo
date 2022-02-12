using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class download : System.Web.UI.Page
    {
        demoDataContext dt = new demoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            int idsanpham = Convert.ToInt32(Request["idsanpham"]);
            int iddanhmuc = Convert.ToInt32(Request["iddanhmuc"]);
            rpsanpham1.DataSource = dt.sanpham_selectid(idsanpham);
            rpdanhmuc.DataSource = dt.danhmuc_selectid(iddanhmuc);
            rpdanhmuc.DataBind();
            rpsanpham1.DataBind();
           
        }

        protected void rpsanpham1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                int idsanpham = Convert.ToInt32(Request["idsanpham"]);
                int? download = null;
                dt.sanpham_download(idsanpham, ref download);
                if (download == null)
                {
                    download = 0;
                }
                int gt = Convert.ToInt32(download);
                object uses = Session.Contents["idname"];
                string bem = Convert.ToString(uses);
                var dl = dt.name_download(bem, gt);
                int kt = dl.Count();
                if ((download == 0) || (kt > 0))
                {

                    int? downloaded = null;
                    dt.sabpham_luottai(idsanpham, ref downloaded);
                    if (downloaded == null)
                    {
                        downloaded = 0;
                    }
                    int so = Convert.ToInt32(downloaded) + 1;
                    dt.sanpham_updatelt(idsanpham, so);
                    Response.Clear();
                    Response.ContentType = "application/octect-stream";
                    Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                    Response.TransmitFile(Server.MapPath("~/File/") + e.CommandArgument);
                    Response.End();


                }
                else
                {
                    lbltb1.Text = "Tải xuống thất bại. Xem lại đăng nhập hoặc nâng cấp tài khoản";
                }

            }
        }

    }
}