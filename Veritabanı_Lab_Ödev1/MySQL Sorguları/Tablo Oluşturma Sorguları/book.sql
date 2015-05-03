CREATE TABLE `kitapevi`.`Book` (
  `book_no` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL,
  `firs-author` VARCHAR(45) NULL,
  `year` date NULL,
  `price` INT NULL,
  `publisher_no` INT NULL,
  `subject_no` INT NULL,
  PRIMARY KEY (`book_no`));
  