/* SCHEMA: */
Create table If Not Exists Employee
(
    Id     int,
    Salary int
);
Truncate table Employee;
insert into Employee (Id, Salary)
values ('1', '100');
insert into Employee (Id, Salary)
values ('2', '200');
insert into Employee (Id, Salary)
values ('3', '300');

/*
 Write a SQL query to get the second highest salary from the Employee table.
 */

select salary as SecondHighestSalary
from employee
order by salary desc
limit 1 offset 1;

/*
  secondhighestsalary
---------------------
                 200
(1 строка)
 */