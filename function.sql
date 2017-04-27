-- 함수 연습

select upper( "seoUl" ), ucase( "Seoul" ) from dual;

SELECT concat(first_name, ' ',last_name), gender, hire_date
  FROM employees
 WHERE upper(last_name) = upper('AcTon'); 

select lower( "seoUl" ), lcase( "Seoul" ) from dual;

select substring( "ABCDEFGHIJKLMN",  3,  5 ) from dual;

select first_name, hire_date
  from employees
where substring(hire_date, 1, 4) = '1989';  

select lpad( "hi", 5, "*" ), rpad("hi", 5, "*") from dual;

SELECT emp_no, LPAD( cast(salary as char), 10, '*' )      
  FROM salaries     
 WHERE from_date like '2001-%'       
   AND salary < 70000;

select concat( "------", ltrim( "    hello    " ), "------" ) from dual;
select concat( "------", rtrim( "    hello    " ), "------" ) from dual;

select concat( "------", trim( both ' ' from "    hello    " ), "------" ) from dual;
select concat( "------", trim( both 'x' from "xxxhelloxxx" ), "------" ) from dual;
select concat( "------", trim( leading 'x' from "xxxhelloxxx" ), "------" ) from dual;
select concat( "------", trim( trailing 'x' from "xxxhelloxxx" ), "------" ) from dual;
   
