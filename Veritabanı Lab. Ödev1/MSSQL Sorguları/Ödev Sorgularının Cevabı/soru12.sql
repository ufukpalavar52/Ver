SELECT DISTINCT student.name FROM student,buys,covers,studies
WHERE studies.student_no = buys.student_no AND 
buys.book_no = covers.book_no AND 
studies.subject_no = covers.subject_no AND 
student.student_no = studies.student_no
