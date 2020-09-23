/*  Task :
Given the Employee table, write a SQL query that finds out employees who earn more than their managers.
For the above table, Joe is the only employee who earns more than his manager. */

use training_tasks;
alter table employee add Name varchar(255);
alter table employee add ManagerId int;
truncate table employee;
insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3');
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4');
insert into Employee (Id, Name, Salary) values ('3', 'Sam', '60000');
insert into Employee (Id, Name, Salary) values ('4', 'Max', '90000');

select b.name from employee a, employee b where a.id = b.managerId and a.salary < b.salary;


