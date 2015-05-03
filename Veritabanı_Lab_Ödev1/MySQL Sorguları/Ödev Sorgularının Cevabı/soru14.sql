SELECT student.`name` , SUM(book.price) AS Ödediği_Ücret 
FROM student,buys,book WHERE book.book_no=buys.book_no AND buys.student_no = student.student_no
GROUP BY buys.student_no HAVING SUM(book.price) > 200;
