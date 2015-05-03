SELECT student.name , SUM(book.price) AS Ödediði_Ücret 
FROM student,buys,book WHERE book.book_no=buys.book_no AND buys.student_no = student.student_no
GROUP BY student.name HAVING SUM(book.price) > 200;