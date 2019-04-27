using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace KullanıcıKayitFormu
{
    public partial class KullaniciKart : System.Web.UI.Page
    {
        static string connectionstring = ConfigurationManager.ConnectionStrings["Kullanici"].ToString();
        SqlConnection con = new SqlConnection(connectionstring);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

            }
        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            string yeni_sifre=clsFunction.Encryptdata(txt_sifre.Text);
            string query = "insert into tbl_user values('" + txt_ad.Text + "','" 
                + txt_adres.Text + "','" + ddl_meslek.SelectedItem.Text + "','" + txt_kullanici.Text + "','" + yeni_sifre + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}