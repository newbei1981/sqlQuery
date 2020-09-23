/* Task : Write a SQL query to get the second highest salary from the Employee table. */

use training_tasks;
create table Employee (Id int, Salary int);
insert into Employee (Id, Salary) values ('1', '100');
insert into Employee (Id, Salary) values ('2', '200');
insert into Employee values ('3', '300');
select salary as SecondHighestSalary from employee where salary < (select max(salary) from employee) order by salary desc limit 1;