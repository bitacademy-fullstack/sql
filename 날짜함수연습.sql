select curdate(), current_date from dual;
select curtime(), current_time from dual;
select now(), sysdate(), CURRENT_TIMESTAMP from dual;

select first_name, date_format(hire_date, "%Y년 %m월 %d일" )
 from employees;
 
select date_format( now(), "%Y-%m-%d %p %h:%i:%s" ) from dual;

select first_name, 
		 hire_date, 
		 concat( 
		 	cast( period_diff( date_format(now(), "%Y%m") , date_format(hire_date, "%Y%m"  )  ) as char ), 
			"개월" )  as "근무월수" 
  from employees;
  
select first_name,
         hire_date,
		 DATE_ADD( hire_date, interval 6 YEAR )
 from employees;
 
select concat( "현재 시간은 ", cast(now() as char), " 입니다" ) from dual;
select concat( "현재 시간은 ", date_format( now(), "%Y년 %m월 %d일" ), " 입니다" ) from dual;
   		 
select cast(1-2 as unsigned) from dual;
select cast(cast(1-2 as unsigned) as signed) from dual;
  
 
 
  