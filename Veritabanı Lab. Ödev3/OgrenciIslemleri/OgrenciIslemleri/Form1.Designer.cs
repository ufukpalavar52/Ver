namespace OgrenciIslemleri
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.ogrenciID = new System.Windows.Forms.TextBox();
            this.soyad = new System.Windows.Forms.TextBox();
            this.dogumTarih = new System.Windows.Forms.TextBox();
            this.adres = new System.Windows.Forms.RichTextBox();
            this.telefon = new System.Windows.Forms.TextBox();
            this.vize = new System.Windows.Forms.TextBox();
            this.final = new System.Windows.Forms.TextBox();
            this.OgrenciEkle = new System.Windows.Forms.Button();
            this.bolum = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.ad = new System.Windows.Forms.TextBox();
            this.ogrenciList = new System.Windows.Forms.DataGridView();
            this.ListSayi = new System.Windows.Forms.Button();
            this.Listele = new System.Windows.Forms.Button();
            this.ogrenciSayisi = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.bolumID = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.ogrenciList)).BeginInit();
            this.SuspendLayout();
            // 
            // ogrenciID
            // 
            this.ogrenciID.Location = new System.Drawing.Point(91, 246);
            this.ogrenciID.Name = "ogrenciID";
            this.ogrenciID.Size = new System.Drawing.Size(198, 20);
            this.ogrenciID.TabIndex = 0;
            // 
            // soyad
            // 
            this.soyad.Location = new System.Drawing.Point(91, 298);
            this.soyad.Name = "soyad";
            this.soyad.Size = new System.Drawing.Size(198, 20);
            this.soyad.TabIndex = 2;
            // 
            // dogumTarih
            // 
            this.dogumTarih.Location = new System.Drawing.Point(91, 324);
            this.dogumTarih.Name = "dogumTarih";
            this.dogumTarih.Size = new System.Drawing.Size(198, 20);
            this.dogumTarih.TabIndex = 3;
            // 
            // adres
            // 
            this.adres.Location = new System.Drawing.Point(91, 350);
            this.adres.Name = "adres";
            this.adres.Size = new System.Drawing.Size(198, 96);
            this.adres.TabIndex = 5;
            this.adres.Text = "";
            // 
            // telefon
            // 
            this.telefon.Location = new System.Drawing.Point(91, 461);
            this.telefon.Name = "telefon";
            this.telefon.Size = new System.Drawing.Size(191, 20);
            this.telefon.TabIndex = 6;
            // 
            // vize
            // 
            this.vize.Location = new System.Drawing.Point(352, 275);
            this.vize.Name = "vize";
            this.vize.Size = new System.Drawing.Size(191, 20);
            this.vize.TabIndex = 8;
            // 
            // final
            // 
            this.final.Location = new System.Drawing.Point(352, 301);
            this.final.Name = "final";
            this.final.Size = new System.Drawing.Size(191, 20);
            this.final.TabIndex = 9;
            // 
            // OgrenciEkle
            // 
            this.OgrenciEkle.Location = new System.Drawing.Point(352, 327);
            this.OgrenciEkle.Name = "OgrenciEkle";
            this.OgrenciEkle.Size = new System.Drawing.Size(117, 23);
            this.OgrenciEkle.TabIndex = 10;
            this.OgrenciEkle.Text = "Ekle";
            this.OgrenciEkle.UseVisualStyleBackColor = true;
            this.OgrenciEkle.Click += new System.EventHandler(this.OgrenciEkle_Click);
            // 
            // bolum
            // 
            this.bolum.Location = new System.Drawing.Point(352, 246);
            this.bolum.Name = "bolum";
            this.bolum.Size = new System.Drawing.Size(191, 20);
            this.bolum.TabIndex = 11;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 249);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(61, 13);
            this.label1.TabIndex = 12;
            this.label1.Text = "Öğrenci No";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 275);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(20, 13);
            this.label2.TabIndex = 13;
            this.label2.Text = "Ad";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 301);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 13);
            this.label3.TabIndex = 14;
            this.label3.Text = "Soyad";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 327);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 13);
            this.label4.TabIndex = 15;
            this.label4.Text = "Doğum Tarihi";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(15, 353);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(34, 13);
            this.label5.TabIndex = 16;
            this.label5.Text = "Adres";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(15, 464);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(60, 13);
            this.label6.TabIndex = 17;
            this.label6.Text = "Telefon No";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(299, 249);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(47, 13);
            this.label7.TabIndex = 18;
            this.label7.Text = "BolumID";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(299, 278);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(27, 13);
            this.label8.TabIndex = 19;
            this.label8.Text = "Vize";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(299, 304);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(29, 13);
            this.label9.TabIndex = 20;
            this.label9.Text = "Final";
            // 
            // ad
            // 
            this.ad.Location = new System.Drawing.Point(91, 272);
            this.ad.Name = "ad";
            this.ad.Size = new System.Drawing.Size(198, 20);
            this.ad.TabIndex = 21;
            // 
            // ogrenciList
            // 
            this.ogrenciList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ogrenciList.Location = new System.Drawing.Point(18, 13);
            this.ogrenciList.Name = "ogrenciList";
            this.ogrenciList.Size = new System.Drawing.Size(1032, 150);
            this.ogrenciList.TabIndex = 22;
            // 
            // ListSayi
            // 
            this.ListSayi.Location = new System.Drawing.Point(868, 278);
            this.ListSayi.Name = "ListSayi";
            this.ListSayi.Size = new System.Drawing.Size(83, 23);
            this.ListSayi.TabIndex = 24;
            this.ListSayi.Text = "Öğrenci Sayısı";
            this.ListSayi.UseVisualStyleBackColor = true;
            this.ListSayi.Click += new System.EventHandler(this.ListSayi_Click);
            // 
            // Listele
            // 
            this.Listele.Location = new System.Drawing.Point(198, 167);
            this.Listele.Name = "Listele";
            this.Listele.Size = new System.Drawing.Size(148, 23);
            this.Listele.TabIndex = 25;
            this.Listele.Text = "Öğrencileri Listele";
            this.Listele.UseVisualStyleBackColor = true;
            this.Listele.Click += new System.EventHandler(this.Listele_Click);
            // 
            // ogrenciSayisi
            // 
            this.ogrenciSayisi.Location = new System.Drawing.Point(868, 249);
            this.ogrenciSayisi.Name = "ogrenciSayisi";
            this.ogrenciSayisi.Size = new System.Drawing.Size(118, 20);
            this.ogrenciSayisi.TabIndex = 26;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(877, 468);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(122, 13);
            this.label10.TabIndex = 27;
            this.label10.Text = "Ufuk Palavar Tasarımıdır";
            // 
            // bolumID
            // 
            this.bolumID.Location = new System.Drawing.Point(78, 169);
            this.bolumID.Name = "bolumID";
            this.bolumID.Size = new System.Drawing.Size(100, 20);
            this.bolumID.TabIndex = 28;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(15, 172);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(47, 13);
            this.label11.TabIndex = 29;
            this.label11.Text = "BolumID";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1074, 519);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.bolumID);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.ogrenciSayisi);
            this.Controls.Add(this.Listele);
            this.Controls.Add(this.ListSayi);
            this.Controls.Add(this.ogrenciList);
            this.Controls.Add(this.ad);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.bolum);
            this.Controls.Add(this.OgrenciEkle);
            this.Controls.Add(this.final);
            this.Controls.Add(this.vize);
            this.Controls.Add(this.telefon);
            this.Controls.Add(this.adres);
            this.Controls.Add(this.dogumTarih);
            this.Controls.Add(this.soyad);
            this.Controls.Add(this.ogrenciID);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.ogrenciList)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox ogrenciID;
        private System.Windows.Forms.TextBox soyad;
        private System.Windows.Forms.TextBox dogumTarih;
        private System.Windows.Forms.RichTextBox adres;
        private System.Windows.Forms.TextBox telefon;
        private System.Windows.Forms.TextBox vize;
        private System.Windows.Forms.TextBox final;
        private System.Windows.Forms.Button OgrenciEkle;
        private System.Windows.Forms.TextBox bolum;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox ad;
        private System.Windows.Forms.DataGridView ogrenciList;
        private System.Windows.Forms.Button ListSayi;
        private System.Windows.Forms.Button Listele;
        private System.Windows.Forms.TextBox ogrenciSayisi;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox bolumID;
        private System.Windows.Forms.Label label11;
    }
}

