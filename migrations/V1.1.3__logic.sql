USE SCHEMA REP_VIEW;

IF (CURRENT_DATABASE=='DEV')
    BEGIN
        CREATE or replace TABLE DEV_TBL(
        FIRST_NAME VARCHAR
        ,LAST_NAME VARCHAR
        )
    END
IF ELSE (CURRENT_DATABASE=='QA')
    BEGIN
        CREATE or replace TABLE QA_TBL(
        FIRST_NAME VARCHAR
        )
IF ELSE (CURRENT_DATABASE=='PROD')
    BEGIN
        CREATE or replace TABLE PROD_TBL(
        FIRST_NAME VARCHAR
        )
    END;
