Create Table client_master(
  client_no varchar(6) NOT NULL primary key,
  name varchar(20) NOT NULL,
  address1 varchar(30) NULL,
  address2 varchar(30)   NULL, 
  city varchar(15) NOT NULL,
  "state" varchar(15) NOT NULL,
  pincode int NULL,
  bal_due float NOT NULL,    
)
GO

Create Table Product_master(
  Product_no varchar(6) NOT NULL primary key,
  "Description" varchar(20) NOT NULL,
  Profit_Percent float NOT NULL,
  Unit_measure varchar(10) NOT NULL,
  Qty_on_hand int NOT NULL,
  Reoder_1v1Number int NOT NULL,
  Sell_price float NOT NULL,
  Cost_price float NOT NULL
)