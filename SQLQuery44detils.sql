SELECT*
FROM Employees;

select 
sum(salary)over(order by department)as total_salary
from employees;

update employees
set salary=10000
where EMP_ID=109;

SELECT
EMP_NAME,
DEPARTMENT,
SUM(SALARY) OVER (
    ORDER BY DEPARTMENT, EMP_NAME
    ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
) AS running_total
FROM Employees;


SELECT 
EMP_NAME,
SALARY,
DEPARTMENT,
AVG(SALARY) OVER (PARTITION BY DEPARTMENT) AS avg_salary
FROM Employees;


SELECT 
EMP_ID,
SUM(SALARY)OVER(PARTITION BY department)AS TOTAL_SALARY
FROM Employees;


