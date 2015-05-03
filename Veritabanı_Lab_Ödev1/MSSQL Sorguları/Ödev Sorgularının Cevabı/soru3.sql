Select publisher.name As Kitap_ismi, COUNT(*) As Adet
FROM book ,publisher 
WHERE book.publisher_no = publisher.publisher_no
Group by publisher.name Order By publisher.name ASC

