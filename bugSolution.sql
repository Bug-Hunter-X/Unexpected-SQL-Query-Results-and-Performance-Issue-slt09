```sql
-- Solution using IS NOT NULL to handle NULL salaries
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL); 

-- Alternative solution using COALESCE to handle NULL salaries
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;

--Optimized query using indexes (requires creating indexes on department and salary columns beforehand)
--Ensure indexes are defined on 'department' and 'salary' columns for best results.
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```