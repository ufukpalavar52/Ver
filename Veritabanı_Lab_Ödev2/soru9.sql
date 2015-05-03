Create view gunlukSiparis 
AS Select c.name,c.city,c."state",so.S_order_date,so.S_order_no,so.Salesman_no,so.Dely_date,p."Description" 
from client_master As c
inner join Sales_Order AS so ON so.S_order_date = FORMAT(getdate(),'yyy-MM-d') and c.client_no = so.Client_no
inner join Sales_Order_Details As sod ON sod.S_order_no = so.S_order_no
inner join Product_master As p ON p.Product_no = sod.Product_no   