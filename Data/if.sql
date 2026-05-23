
use test;

show tables;

select * from accounts;

drop procedure withdraw;

delimiter //

create procedure withdraw(in flag bool)
begin

	if flag=true then
		select "Hello";
	else
		select "Goodbye";
	end if;

end//

delimiter ;

call withdraw(true);

