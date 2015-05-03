Create table Sales_Order(
  S_order_no varchar(6) NOT NULL primary key,
  S_order_date date NOT NULL,
  Client_no varchar(6) NOT NULL ,
  Dely_add varchar(6) NULL,
  Salesman_no varchar(6) NOT NULL, 
  Dely_type char NOT NULL Default 'F' Check(Dely_type in ('P','F')) ,
  Billed_yn char NOT NULL  Check(Billed_yn in ('N','Y')) ,
  Dely_date date NOT NULL  ,
  Order_status varchar(10) NULL,
  Constraint sales_cl_fk foreign key(Client_no) references client_master(client_no),
  Constraint sales_sn_fk foreign key(Salesman_no) references Salesman_Master(salesman_no)
)


