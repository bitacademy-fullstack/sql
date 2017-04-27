select abs(-2), abs(2) from dual;
select mod(41, 3), 41%3 from dual;

select floor( 3.12 ), floor( - 3.12 ) from dual;
select ceiling( 3.12), ceiling( -3.12 ) from dual;
select round(-1.23), round(-1.58), round(1.58) from dual;
select round(1.298, 1), round(1.298, 0) from dual;
select pow( 2, 2), pow(2, 10), pow(10, 10) from dual;
select sign( -10 ), sign( 0 ), sign( 20000 ) from dual;
select greatest( 210, 10, 200, 1111), greatest( "Zsb", "zsb" ) from dual;
select least( 210, 10, 200, 1111), least( "Zsb", "zsb" ) from dual;