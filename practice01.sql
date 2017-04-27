-- 문제1
 select concat( first_name, " ", last_name ) as "이름"
  from employees
where emp_no = 10944;

--문제2
    select concat( first_name, " ", last_name ) as "이름",
             gender as "성별",
	   	     hire_date as "입사일"
     from employees
order by hire_date asc;

--문제3
      select if(gender="M", "남자", "여자")  as "성별", 
	           count(emp_no)
       from employees
 group by gender;
 
 -- 문제4
   select count(*)
    from salaries
  where to_date = "9999-1-1";
    
-- 문제5
select count(*) 
  from departments;

-- 문제6
 select count(*) 
   from dept_manager
 where to_date="9999-1-1";  

-- 문제7
   select  dept_no, dept_name
     from departments
order by length(dept_name) desc;  

-- 문제8
 select count(*)
  from salaries
 where to_date = "9999-1-1"
    and salary > 120000;
	
-- 문제9
 select count(*)
  from titles
where to_date = "9999-1-1"
   and title = "Engineer";
 
-- 문제10   
    select title, from_date, to_date
      from titles
    where emp_no = 13250
order by from_date asc;
     	  


  

  		    