Declare @vizenot int , @isim nvarchar(50)
DECLARE @crs_not CURSOR
SET @crs_not = CURSOR FOR
Select vizenotu from tOgrenci where ad like '%a%' and ad like '%i%'
Open @crs_not
FETCH NEXT FROM @crs_not INTO @vizenot
While ( @@FETCH_STATUS = 0)
Begin
 
   if @vizenot >-1 and @vizenot < 96
      Update tOgrenci set vizenotu = (@vizenot+5)
	  WHERE CURRENT OF @crs_not 
FETCH NEXT FROM @crs_not INTO @vizenot
End
Set @crs_not = Cursor For

Select vizenotu from tOgrenci where ad like '%a%' and ad like '%i%'
Open @crs_not
FETCH NEXT FROM @crs_not INTO @vizenot
While ( @@FETCH_STATUS = 0)
Begin
   
   if @vizenot > 96
      Update tOgrenci set vizenotu = (@vizenot+(100-@vizenot))
	  WHERE CURRENT OF @crs_not 
FETCH NEXT FROM @crs_not INTO @vizenot
End
Set @crs_not = Cursor For


Select vizenotu from tOgrenci where ad not like '%a%' or ad not like '%i%'
Open @crs_not
FETCH NEXT FROM @crs_not INTO @vizenot
While ( @@FETCH_STATUS = 0)
Begin
   
   if @vizenot > 4
      Update tOgrenci set vizenotu = (@vizenot - 5)
	  WHERE CURRENT OF @crs_not 
FETCH NEXT FROM @crs_not INTO @vizenot
End

Select vizenotu,ad,ogrenciID from tOgrenci
close @crs_not
DEALLOCATE @crs_not 		
 

