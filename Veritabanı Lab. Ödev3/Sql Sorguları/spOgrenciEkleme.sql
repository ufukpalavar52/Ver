Create procedure ogrenciEkleme(
@ogrenciID varchar(9),
@ad varchar(50),
@soyad varchar(50),
@dogumtarih date,
@adres varchar(50),
@telefon varchar(50),
@bolumID int,
@vize int,
@final int
)
as
Insert Into tOgrenci(ogrenciID, ad, soyad, dogumtarihi, adres, telefon, bolumID, vizenotu, finalnotu)
Values(@ogrenciID, @ad, @soyad, @dogumtarih, @adres, @telefon, @bolumID, @vize, @final)