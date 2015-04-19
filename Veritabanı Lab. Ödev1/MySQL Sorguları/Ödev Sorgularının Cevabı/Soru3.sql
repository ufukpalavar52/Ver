Select publisher.`name` AS Yayıncılık, COUNT(*) AS Adet  
FROM book ,publisher 
WHERE publisher.publisher_no = book.publisher_no
GROUP BY publisher.`name` ORDER BY publisher.`name` ASC
