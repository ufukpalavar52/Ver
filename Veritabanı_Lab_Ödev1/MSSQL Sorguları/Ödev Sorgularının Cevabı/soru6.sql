SELECT publisher.name, COUNT(*) Kitap_Adeti 
FROM publisher,(SELECT book."year",publisher_no from book WHERE "year" BETWEEN '2002-01-01' AND '2003-01-01') 
AS x INNER JOIN (SELECT book."year",publisher_no from book WHERE "year" BETWEEN '2003-01-01' AND '2004-01-01') AS y ON  
x.publisher_no = y.publisher_no WHERE publisher.publisher_no=x.publisher_no
GROUP BY publisher.name