SELECT DISTINCT student.`name` FROM student,buys,cover,studies
WHERE studies.student_no = buys.student_no AND buys.book_no = cover.book_no AND studies.subject_no = cover.subject_no 
AND student.student_no = studies.student_no
