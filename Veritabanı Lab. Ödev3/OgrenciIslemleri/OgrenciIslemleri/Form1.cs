using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Microsoft.SqlServer;
using System.Data.SqlClient;
using System.Data.Sql;


namespace OgrenciIslemleri
{
    public partial class Form1 : Form
    {

        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection conection = new SqlConnection(); 


        private void OgrenciEkle_Click(object sender, EventArgs e)
        {
            try
            {
                conection.ConnectionString = "Server=USER\\UFUK;Database=Ogrenci;Trusted_Connection=true;";
                conection.Open();
                SqlParameter no = new SqlParameter("@no", ogrenciID.Text);
                SqlParameter isim = new SqlParameter("@ad", ad.Text);
                SqlParameter soyisim = new SqlParameter("@soyad", soyad.Text);
                SqlParameter tarih = new SqlParameter("@tarih", dogumTarih.Text);
                SqlParameter addres = new SqlParameter("@adres", adres.Text);
                SqlParameter tel = new SqlParameter("@tel", telefon.Text);
                SqlParameter bolumId = new SqlParameter("@bolum", bolum.Text);
                SqlParameter vizeNotu = new SqlParameter("@vize", vize.Text);
                SqlParameter finalNotu = new SqlParameter("@final", final.Text);
                String sql = "Exec ogrenciEkleme @no,@ad,@soyad,@tarih,@adres,@tel,@bolum,@vize,@final";
                SqlCommand cmd = new SqlCommand(sql, conection);

                cmd.Parameters.Add(no);
                cmd.Parameters.Add(isim);
                cmd.Parameters.Add(soyisim);
                cmd.Parameters.Add(tarih);
                cmd.Parameters.Add(addres);
                cmd.Parameters.Add(tel);
                cmd.Parameters.Add(bolumId);
                cmd.Parameters.Add(vizeNotu);
                cmd.Parameters.Add(finalNotu);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);


                MessageBox.Show("Kayıtlanma Başarılı");
                conection.Close();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);

            }
        }

        private void ListSayi_Click(object sender, EventArgs e)
        {
            try
            {
                conection.ConnectionString = "Server=USER\\UFUK;Database=Ogrenci;Trusted_Connection=true;";
                conection.Open();
                String sql = "Exec ToplamOgrenciSayisi";
                SqlCommand cmd = new SqlCommand(sql, conection);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ogrenciSayisi.Text = dt.Rows[0]["Toplam_Ogrenci_Sayisi"].ToString();
                conection.Close();


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);

            }


        }

        private void Listele_Click(object sender, EventArgs e)
        {
            try
            {
                conection.ConnectionString = "Server=USER\\UFUK;Database=Ogrenci;Trusted_Connection=true;";
                conection.Open();
                String sql = "Exec OgrenciListesi";
                SqlCommand cmd = new SqlCommand(sql, conection);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ogrenciList.DataSource = dt;
                conection.Close();

               
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);

            }

        }
    }
}
