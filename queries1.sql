/* Task : Write a SQL query for a report that provides the following information for each person in the 
Person table, regardless if there is an address for each of those people:
FirstName, LastName, City, State */

create database training_tasks;
use training_tasks;
create table Person (PersonId int, FirstName varchar(255), LastName varchar(255));
create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255));
insert into Person (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen');
insert into Address (AddressId, PersonId, City, State) values ('1', '1', 'New York City', 'New York');
select FirstName, LastName, city, state from person, address where person.personId = address.personId