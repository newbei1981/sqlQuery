/* Task : Write a SQL query to find all duplicate emails in a table named Person */

use training_tasks;
drop table person;
create table person(id int, Email varchar(255));
insert into Person (Id, Email) values ('1', 'a@b.com');
insert into Person (Id, Email) values ('2', 'c@d.com');
insert into Person (Id, Email) values ('3', 'a@b.com');
select email from person group by email having count(*) > 1;
