
select @total := sum(transaction_value) from sales;
insert into sales_history (recorded, total) values (now(), @total);




select * from sales_history;

explain insert into sales_history (recorded, total) values (now(), (select sum(transaction_value) from sales));


