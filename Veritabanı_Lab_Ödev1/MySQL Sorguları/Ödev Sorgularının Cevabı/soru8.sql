SELECT book.`name` AS Kitaplar from book 
Where book.`first-author` = (Select book.`first-author`  
FROM book  GROUP BY book.`first-author` ORDER BY COUNT(*) DESC Limit 1); 
