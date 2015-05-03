Create table book(
  book_no int NOT NULL primary key,
  "name" varchar(50) NOT NULL,
  "first-author" varchar(50) NOT NULL,
  "year" date NULL,
  price float NOT NULL,
  publisher_no int,
  subject_no int
)
GO

Create table student(
  "student_no" varchar(11) NOT NULL primary key,
  "name" varchar(50) NOT NULL,
  department_no int NOT NULL
)
GO

Create table "subject"(
 subject_no int NOT NULL primary key,
 stitle varchar(50) NOT NULL
)
GO

Create table department(
 department_no int NOT NULL primary key,
 "departmentname" varchar(50) NOT NULL
)
GO

Create table publisher(
  publisher_no int NOT NULL primary key,
  "name" varchar(50) NOT NULL
)
GO

Create table Buys(
   student_no int NOT NULL,
   book_no int NOT NULL 
)
Go

Create table covers(
  subject_no int NOT NULL,
  book_no int NOT NULL
)
GO

Create table studies(
  "student_no" varchar(11) NOT NULL,
  subject_no int NOT NULL
)
