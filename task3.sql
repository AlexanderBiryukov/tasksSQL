/*
 SCHEMA:
 */
Create table If Not Exists Employee
(
    Id        int,
    Name      varchar(255),
    Salary    int,
    ManagerId int
);
Truncate table Employee;
insert into Employee (Id, Name, Salary, ManagerId)
values ('1', 'Joe', '70000', '3');
insert into Employee (Id, Name, Salary, ManagerId)
values ('2', 'Henry', '80000', '4');
insert into Employee (Id, Name, Salary, ManagerId)
values ('3', 'Sam', '60000', 'None');
insert into Employee (Id, Name, Salary, ManagerId)
values ('4', 'Max', '90000', 'None');

/*
 Given the Employee table, write a SQL query that finds out employees who earn more than their managers.
 For the above table, Joe is the only employee who earns more than his manager.
 */

select name as Employee
from employee
where salary > (select salary
                from employee as manager
                where manager.id = employee.managerid);

/*
 or is this solution
 */

select e.name as Employee
from employee as e
         join employee as m on e.managerid = m.id
where e.salary > m.salary;

/*
  employee
----------
 Joe
(1 строка)
 */