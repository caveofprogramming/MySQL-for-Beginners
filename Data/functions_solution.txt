1. Using any table, write a query that produces the following output, querying the number of rows in the table.

'Total: 5 records'

Modify the query so that it only adds the "s" to "records" if there is some number of records other than 1. For example:

'Total: 0 records'
'Total: 5 records'
'Total: 1 record'

Solution:
select concat("Total: ", cast(count(*) as char), " record", if(count(*) != 1, "s", "")) from books;

2. Using a table with a date column, format the dates in this format:

'31st of January, 2015 (Saturday)'

Set a variable to the value of one of the dates retrieved from this table, in this format.

Now format the date contained in the variable back into a date object.

Solution:
select * from dates;

select @thedate := date_format(date, "%D of %M, %Y (%W)") from dates;

select str_to_date(@thedate, "%D of %M, %Y (%W)");


3. The mathematician Kurt Gödel was born on April 28, 1906  and died on January 14, 1978.

Set text variables to these dates, in exactly this format.

Answer the following questions.

a) On what day of the week was Gödel born, and on what day did he die?
b) Exactly how old was Gödel when he died, in years, months and days?
c) If Gödel had lived to be 99 years, six months and three days old, what date would he have died on? What day of the week is this?

Solution:

set @born = "April 28, 1906";
set @died = "January 14, 1978";

select dayname(str_to_date(@born, "%M %d, %Y"));
select dayname(str_to_date(@died, "%M %d, %Y"));

select from_days(datediff(str_to_date(@died, "%M %d, %Y"), str_to_date(@born, "%M %d, %Y")));

select @newdied := str_to_date(@born, "%M %d, %Y") + interval 99 year + interval 6 month + interval 3 day;

select dayname(@newdied);




