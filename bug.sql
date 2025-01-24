```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might return unexpected results if the `salary` column allows NULL values.  Rows where `salary` is NULL will be excluded, even if they belong to the 'Sales' department.  This is because `NULL` is not considered greater than or less than any other value, it's simply unknown.

Another potential issue is that this query is not optimized for large datasets. The `WHERE` clause may not use an index efficiently.  