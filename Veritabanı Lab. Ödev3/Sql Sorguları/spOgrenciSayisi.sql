Create Procedure ToplamOgrenciSayisi
As
Begin

 Select Count(ogrenciID) As Toplam_Ogrenci_Sayisi from tOgrenci

End    