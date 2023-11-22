USE SCHEMA REP_VIEW;

BEGIN
  IF {{warehouse_name}} ='DEV' THEN
    CREATE or replace TABLE DEV_TBL(FIRST_NAME VARCHAR,LAST_NAME VARCHAR);
  ELSEIF {{warehouse_name}} ='QA' THEN
    CREATE or replace TABLE QA_TBL(FIRST_NAME VARCHAR,LAST_NAME VARCHAR);
  ELSE
    CREATE or replace TABLE PROD_TBL(FIRST_NAME VARCHAR,LAST_NAME VARCHAR);
  END IF;
END;