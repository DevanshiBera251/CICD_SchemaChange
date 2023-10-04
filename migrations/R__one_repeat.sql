USE SCHEMA PUBLIC;

create or replace function pi_udf()
  returns float
  as '3.18::FLOAT';

  create or replace function i_udf()
  returns int
  as '3::INT';

create or replace function Test_udf()
  returns int
  as '9::INT';