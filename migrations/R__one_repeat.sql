USE SCHEMA DEMO;

create or replace function pi_udf()
  returns float
  as '3.14::FLOAT';

CREATE PROCEDURE SelectAllEmployees
AS
BEGIN
SELECT * FROM EMPLOYEE
END;

