-- 현재 Fai Bale이 근무하는 부서에서 근무하는 직원의 사번, 전체 이름을 출력해보세요.

-- 1)
 select b.dept_no
  from employees a, dept_emp b
where a.emp_no = b.emp_no
   and b.to_date = "9999-01-01"     
   and concat( a.first_name, ' ', a.last_name) = "Fai Bale"; 
   
-- 2)
 select a.emp_no, a.first_name
  from employees a, dept_emp b
where a.emp_no = b.emp_no    
   and b.to_date = "9999-01-01"     
   and b.dept_no = "d004"; 
   
-- subquery
 select a.emp_no, a.first_name
  from employees a, dept_emp b
where a.emp_no = b.emp_no    
   and b.to_date = "9999-01-01"     
   and b.dept_no = (  select b.dept_no
                               from employees a, dept_emp b
                             where a.emp_no = b.emp_no
                                and b.to_date = "9999-01-01"     
                                and concat( a.first_name, ' ', a.last_name) = "Fai Bale" );
								 
-- 서브 쿼리가 다중행인 경우 오류!!!   
 select a.emp_no, a.first_name
  from employees a, dept_emp b
where a.emp_no = b.emp_no    
   and b.to_date = "9999-01-01"     
   and b.dept_no = (  select dept_no from departments );

-- 현재 전체사원의 평균 월급보다 적은 급여를 받는 사원의  이름, 급여를 나타내세요.
 select a.first_name, b.salary
  from employees a, salaries b
where a.emp_no = b.emp_no
   and b.to_date = "9999-01-01"
   and b.salary < (  select avg(salary) 
   						   from salaries 
						 where to_date="9999-01-01" );
						 
						  
-- 현재 가장적은 평균 급여를 받고 있는 직책의 평균 급여를 구하세요.
-- = 직책별 가장 적은 평균 급여
-- 1) top-k
    select c.title, avg(a.salary) as avg_salary
      from salaries a, employees b, titles c 
    where a.emp_no = b.emp_no
       and b.emp_no = c.emp_no 
       and a.to_date="9999-01-01"
       and c.to_date="9999-01-01"
group by c.title
 order by avg_salary
      limit 0, 1;  

--2) from 절을 이용한 subquery
select min( avg_salary )
  from (     select c.title, avg(a.salary) as avg_salary
                from salaries a, employees b, titles c 
              where a.emp_no = b.emp_no
                 and b.emp_no = c.emp_no 
                 and a.to_date="9999-01-01"
                 and c.to_date="9999-01-01"
          group by c.title ) a;


-- 현재 급여가 50000 이상인 직원 이름 출력
-- 1) 조인으로 해결
 select a.first_name
   from employees a, salaries b
 where a.emp_no = b.emp_no
    and b.to_date = "9999-01-01"
    and b.salary > 50000;

--2) 서브쿼리 해결
 select first_name
  from employees 
where emp_no in (  select emp_no 
                            from salaries 
						  where to_date="9999-01-01" 
						    and salary > 50000 );
							
select first_name
  from employees 
where emp_no =any (  select emp_no 
                                 from salaries 
						       where to_date="9999-01-01" 
						          and salary > 50000 );							


-- 각 부서별로 최고 월급을 받는 직원의 이름과 월급 출력  






 