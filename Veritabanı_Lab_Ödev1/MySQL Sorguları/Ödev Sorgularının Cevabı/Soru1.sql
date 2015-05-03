SELECT book_no, book.`name` from book,publisher 
WHERE book.publisher_no = publisher.publisher_no and 
publisher.`name` like '%Pusula%' ORDER BY book.`year` ASC;
