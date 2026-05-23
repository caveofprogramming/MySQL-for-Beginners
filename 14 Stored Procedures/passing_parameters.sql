
use test;

show tables;

select * from books;

DELIMITER $$

CREATE PROCEDURE `ShowBooks`(in maxId int)
begin
select * from books where id < maxId;
end$$

DELIMITER ;

call ShowBooks(4);


