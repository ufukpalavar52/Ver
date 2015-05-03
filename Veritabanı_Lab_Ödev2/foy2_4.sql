Create table Sales_Order_Details(
  S_order_no varchar(6) NOT NULL,
  Product_no varchar(6) NOT NULL,
  Qty_order int NULL,
  Qty_disp int NULL,
  Product_rate int NULL,
  Constraint salesD_orno_fk foreign key(S_order_no) references Sales_Order(s_order_no),
  Constraint salesD_pno_fk foreign key(Product_no) references Product_master(Product_no)
)



