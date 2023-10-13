USE SCHEMA PUBLIC;

create or replace function pi_udf()
  returns float
  as '3.15::FLOAT';

create or replace function second_udf()
  returns float
  as '3.14::FLOAT';

USE SCHEMA DEMO;
CREATE TABLE EMPLOYEE
(
FIRST_NAME VARCHAR,
LAST_NAME VARCHAR
);

USE SCHEMA PUBLIC;
create TABLE TESTING 
(
	FIRST_NAME VARCHAR(16777216),
	LAST_NAME VARCHAR(16777216)
);