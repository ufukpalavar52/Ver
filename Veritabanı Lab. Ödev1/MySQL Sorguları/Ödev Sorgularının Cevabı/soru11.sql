SELECT student.`name` ,department.departmentname from department, student,buys,cover 
WHERE student.department_no != 1 and 
student.student_no=buys.student_no and buys.book_no = cover.book_no and
student.department_no = department.department_no AND 
cover.subject_no=(SELECT subject_no FROM `subject` Where stitle='Ağlar');