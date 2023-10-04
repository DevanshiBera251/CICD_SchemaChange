USE SCHEMA PUBLIC;

create or replace function pi_udf()
  returns float
  as '3.18::FLOAT';

  create or replace function i_udf()
  returns float
  as '2::INT';