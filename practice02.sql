-- 문제1
select max(salary) as "최고임금",
         min(salary) as "최저임금",
		 (max(salary) - min(salary) ) as "최고임금 - 최저임금"
  from salaries;

-- 문제2
select date_format(max( hire_date), "%Y년 %m월 %d일" )
  from employees;
  
-- 문제3
select date_format(min( hire_date), "%Y년 %m월 %d일" )
  from employees; 
  
-- 문제4
select  avg( salary )
  from salaries
 where to_date="9999-1-1";
 
-- 문제5
select  max( salary ), min( salary )
  from salaries
 where to_date="9999-1-1";

--문제6
select floor( period_diff( date_format( now(), "%Y%m"), date_format( max(birth_date), "%Y%m") ) /12  ) as "제일 어린 사원 나이",
		floor( period_diff( date_format( now(), "%Y%m"), date_format( min(birth_date), "%Y%m") ) /12  ) as "최고 연장자  사원 나이"
  from employees;
    

     
  
  
  