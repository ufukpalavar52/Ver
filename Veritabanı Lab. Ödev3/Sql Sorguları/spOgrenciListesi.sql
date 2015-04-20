Create Procedure OgrenciListesi
(@bolumId int) 
As
Begin
  
  Select *from tOgrenci where bolumId = @bolumId
End 