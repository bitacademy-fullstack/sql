-- 집계

select  *
   from salaries
 where emp_no = 10060;  
 
select  avg(salary) 
   from salaries
 where emp_no = 10060;  
 
 
     select  emp_no, avg(salary), sum(salary), max(salary) 
       from salaries
 group by emp_no;
 
 
 -- 현재 급여중에 최고 급여는?
 select avg(salary), min(salary), max(salary)
  from salaries
where to_date = "9999-1-1";

-- 사원별 직책 변경 회수
select * 
  from titles
   


  
  
  
   
 
