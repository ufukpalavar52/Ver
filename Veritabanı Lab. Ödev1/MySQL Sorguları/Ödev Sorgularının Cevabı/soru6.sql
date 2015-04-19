SELECT publisher.`name`, COUNT(*) Kitap_Adeti 
FROM publisher,(SELECT book.`year`,publisher_no from book WHERE `year` BETWEEN '2002-01-01' AND '2003-01-01') 
AS a INNER JOIN (SELECT book.`year`,publisher_no from book WHERE `year` BETWEEN '2003-01-01' AND '2004-01-01') AS b ON  
a.publisher_no = b.publisher_no WHERE publisher.publisher_no=a.publisher_no
GROUP BY publisher.`name`