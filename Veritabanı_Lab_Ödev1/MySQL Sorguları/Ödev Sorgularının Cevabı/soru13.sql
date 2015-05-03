SELECT book.`name` FROM book,`subject` 
WHERE book.subject_no = `subject`.subject_no AND `subject`.stitle = 'Veritabanları' 
ORDER BY book_no DESC Limit 1;