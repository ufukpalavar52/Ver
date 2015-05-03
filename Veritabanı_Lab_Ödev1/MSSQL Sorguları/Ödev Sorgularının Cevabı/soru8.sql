SELECT book.name AS Kitaplar from book 
Where book."first-author" = (Select TOP 1 book."first-author"  
FROM book  GROUP BY book."first-author" ORDER BY COUNT(*) DESC);