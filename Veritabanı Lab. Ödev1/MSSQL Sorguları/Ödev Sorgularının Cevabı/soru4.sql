Select publisher.name AS Yayýncýlýk, COUNT(*) AS Kitap_Adet  
FROM book ,publisher 
WHERE publisher.publisher_no = book.publisher_no  
AND "year" BETWEEN  '1999-01-01' AND  '2003-01-01'
GROUP BY publisher.name 
HAVING COUNT(*)<6 