Select c.name,p."Description",so.S_order_date from client_master As c ,Sales_Order_Details As sod, Product_master As p
inner join Sales_Order As so ON  DATEDIFF(day,so.S_order_date,GETDATE()) > 10 
Where c.client_no = so.Client_no and so.S_order_no = sod.S_order_no and sod.Product_no = p.Product_no