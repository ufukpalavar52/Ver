SELECT student.name,department.departmentname from student,buys,covers,department 
WHERE student.department_no != 1 and student.student_no=buys.student_no and 
buys.book_no = covers.book_no and student.department_no =department.department_no 
and covers.subject_no=(SELECT subject_no FROM "subject" Where stitle='Aðlar');