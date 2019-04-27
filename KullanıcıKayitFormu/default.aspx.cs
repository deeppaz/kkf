using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace KullanıcıKayitFormu
{
    public partial class _default : System.Web.UI.Page
    {
        static string connectionstring = ConfigurationManager.ConnectionStrings["Kullanici"].ToString();
        SqlConnection con = new SqlConnection(connectionstring);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

            }

        }

        protected void imgbtn_kullanici_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KullaniciKart.aspx");

        }

        protected void btn_kullanici_Click(object sender, EventArgs e)
        {
            Response.Redirect("KullaniciKart.aspx");

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            try
            {
                lbl_link.Visible = false;
                lbl_mesaj.Visible = false;

                con.Open();

                string yenisifre = clsFunction.Encryptdata(txt_password.Text);
                string query = "select * from tbl_user where kullaniciad='" + txt_username.Text + "' and sifre='" + yenisifre + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter adap = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adap.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    lbl_mesaj.Visible = true;
                    lbl_mesaj.Text = "Hoş Geldiniz " + dt.Rows[0][1].ToString();
                    Session["Login"] = dt.Rows[0][1].ToString();
                    Temizle();

                }
                else
                {
                    lbl_mesaj.Visible = true;
                    lbl_mesaj.Text = "Kullanıcı adı ve şifreniz bulunamadı";
                    lbl_link.Visible = true;


                }



            
            }
            catch(Exception)
            {
                lbl_mesaj.Text = "Bilinmeyen bir Hata Oluştu. Tekrar Deneyiniz";

            }
            finally
            {
                con.Close();

            }
        }

        private void Temizle()
        {
            txt_password.Text = "";
            txt_username.Text = "";
         
        }

        protected void lbl_link_Click(object sender, EventArgs e)
        {
            Response.Redirect("KullaniciKart.aspx");
        }
    }
}