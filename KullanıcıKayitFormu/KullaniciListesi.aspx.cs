using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace KullanıcıKayitFormu
{
    public partial class KullaniciListesi : System.Web.UI.Page
    {
        static string connectionstring = ConfigurationManager.ConnectionStrings["Kullanici"].ToString();
        SqlConnection con = new SqlConnection(connectionstring);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                if (Session["Login"] != null)
                {
                    lbl_session.Text = "Sayın " + Session["Login"].ToString();
                    Grid_Doldur();
                }
                else
                {
                    Response.Redirect("Default.aspx");

                }

            }

        }

        private void Grid_Doldur()
        {
            
            SqlDataAdapter adap = new SqlDataAdapter("select * from tbl_user", con);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            grd_kullanici.DataSource = dt;
            grd_kullanici.DataBind();
        }

        protected void grd_kullanici_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}