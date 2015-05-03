Create table Salesman_Master(
  Salesman_no varchar(6) NOT NULL primary key,
  Sal_name varchar(20) NOT NULL,
  Adress varchar(40) NULL,
  City varchar(20) NOT NULL,
  "State" varchar(20) NULL,
  Pincode int NULL,
  Sal_amt int NOT NULL Check(Sal_amt not in(0)),
  Tgt_to_get int NOT NULL Check(Tgt_to_get not in(0)),
  Ytd_sales int NOT NULL Check(Ytd_sales not in(0)),
  Remarks varchar(30) NULL
)
GO


 
