USE SCHEMA PUBLIC;

create or replace function pi_udf()
  returns float
  as '3.15::FLOAT';

create or replace function second_udf()
  returns float
  as '3.14::FLOAT';