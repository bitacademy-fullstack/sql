SELECT * FROM departments;

SELECT emp_no AS no,
       concat(first_name, " ", last_name) AS name,
       gender,
       hire_date AS hireDate
  FROM employees;
  
  -- DISTINCT
  select count(title) from titles;
  
  select count(distinct title) from titles;

-- cf distinct column과 다른 column을 projection 하는 경우  
  select distinct title, from_date from titles;
  
  
  