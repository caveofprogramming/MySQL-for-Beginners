start transaction;

select id from libraries where name="Nottingham" lock in share mode;

insert into books (title, library_id) values ("Painting for Beginners", 2);

commit;
