Create Trigger KayitSilme On togrenci
After Delete
As
Begin
Declare @ogrenciID varchar(9)
Declare @ad varchar(50)
Declare @soyad varchar(50)
Declare @tarih date
Declare @adres varchar(50)
Declare @tel varchar(50)
Declare @bolumID int
Declare @vize int
Declare @final int 

Select @ogrenciID = ogrenciID from deleted
Select @ad = ad from deleted
Select @soyad = soyad from deleted
Select @tarih = dogumtarihi from deleted
Select @adres = adres from deleted
Select @tel = telefon from deleted
Select @bolumID = bolumID from deleted
Select @vize = vizenotu from deleted
Select @final = finalnotu from deleted

Insert Into tOgrenciYedek Values(@ogrenciID,@ad,@soyad,@tarih,@adres,@tel,@bolumID,@vize,@final)

End