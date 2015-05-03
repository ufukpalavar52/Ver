SELECT DISTINCT student.`name` from studies,student,`subject` 
Where student.student_no = studies.student_no 
AND `subject`.subject_no = studies.subject_no and `subject`.stitle='Veritabanları' 
AND student.department_no = 1; 