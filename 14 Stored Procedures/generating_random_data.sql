-- id
-- email: user1@caveofprogramming.com, user2@caveofprogramming.com, ...
-- random date
-- enabled (random boolean)

create table users (id int auto_increment primary key, email varchar(40) not null, registered date not null, 
active boolean default false);

use test;

select round(rand());

select date(now()) - interval floor(10000*rand()) day;


drop table if exists users;

show tables;



