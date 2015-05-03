SELECT TOP 1 book.name FROM book,"subject" 
WHERE book.subject_no = "subject".subject_no AND "subject".stitle = 'Veritabanlari' 
ORDER BY book_no DESC;