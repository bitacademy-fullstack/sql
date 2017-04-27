-- 집계

select  *
   from salaries
 where emp_no = 10060;  
 
select  avg(salary) 
   from salaries
 where emp_no = 10060;  
 
 
 -- 사원별 평균 연봉
     select  emp_no, avg(salary)
       from salaries
 group by emp_no;
 
 
 -- 현재 급여중에 최고 급여는?
 select avg(salary), min(salary), max(salary)
  from salaries
where to_date = "9999-1-1";

-- 사원별 직책 변경 회수
    select emp_no, count(title)
      from titles
group by emp_no;  

-- 사원별 평균월급 중 20000 이상을 평균월급이 높은 순으로출력
     select  emp_no, avg(salary)
       from salaries
 group by emp_no
    having avg(salary) > 20000
 order by avg(salary) desc;	

     select a.title, avg(b.salary), count(a.emp_no)
      from titles a,  salaries b
    where a.emp_no = b.emp_no  -- 조인 조건 
       and  a.to_date = "9999-1-1"  -- select 조건 
       and  b.to_date = "9999-1-1" -- select 조건
group by a.title;    

  
  
  
   
 
