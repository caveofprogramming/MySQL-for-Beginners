use test;

select * from accounts;


start transaction;

set @withdraw = 500;
set @account = 1;

select balance from accounts where id=@account for update;

-- Check that the balance is bigger than the withdrawal amount

update accounts set balance = balance - @withdraw where id=@account;

commit;


