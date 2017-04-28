show tables;

--drop table
drop table pet;

-- create table
create table pet(
	name varchar(20),
	owner varchar(20),
	species varchar(20),
	gender char(1),
	death date,
	birth date
);

desc pet;

-- insert
 insert 
   into pet
values ( 'fluffy', 'harold', 'cat', 'f', '1990-02-03', null );

 insert 
   into pet(name, species)
values ( 'fluffy', 'dog' );

-- delete
delete from pet;
   
-- update

  
-- select
select name, owner, species, gender, birth, death from pet;  

  select name, owner, species, gender, birth, death 
   from pet  
 where name = "Bowser"; 
 
 select *
    from pet
  where birth >= "1998-1-1"; 
  	
 select *
    from pet
  where species = "dog" 
     and gender = "f";
	 
select *
  from pet	  
where species = "snake"
     or species = "bird";
	   	
   select name, birth
     from pet
order by birth desc;
  		
   select name, birth
     from pet
order by birth asc;
	
select  name, birth, death
  from pet
where death is not null;

select name
   from pet
 where name like "b%";
   
select name
   from pet
 where name like "%y";
 
select name
   from pet
 where name like "%c%";
 
select name
   from pet
 where name like "S___";
 
 select count(*)
  from pet; 
 
select count(name)
  from pet; 

select count(death)
  from pet; 
		
-- load data
load data local infile "d:/pet.txt" into table pet
fields terminated by "," 
lines terminated by "\n";

