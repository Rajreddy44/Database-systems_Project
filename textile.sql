insert into customer(Customer_Id,Customer_Name,Phone_Number,Textilestore_Store_Id)values('Cus-700','Smith','9542102009','Store-4');
insert into product(Product_id,Brand_Name,Cost,Customer_Customer_id)values('P-569','Reebok','1000.12','Cus-700');
update billing set quantity=100 where Billing_Id='B-578';
update Customer set Customer_name='John Williams' where Customer_Id='Cus-456';
delete from customer where customer_Id='Cus-700';
select * from customer;
select customer_name,Brand_name,Cost from Customer C,Product P where C.customer_Id=P.Customer_customer_id;
select Store_name,Contact_number,employee_Id,Employee_name,Employee_hire_date from TextileStore T,Employee E where T.Store_id=E.Textilestore_store_id;
select * from Customer C,Product P where C.Customer_id=P.Customer_customer_id;