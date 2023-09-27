USE SCHEMA DEMO;

create or replace function pi_udf()
  returns float
  as '3.14::FLOAT';
  
create function i_udf()
 returns int
 as '1::INT';