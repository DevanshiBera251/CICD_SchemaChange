USE SCHEMA PUBLIC;

--CREATE or replace view PLATFORM_EVENT_FACT_V_VIEW as select * from Hello_world;
--CREATE or replace view PLATFORM_EVENT_FACT_V_VIEW_NEW as select * from Hello_world;

create or replace function second_udf()
  returns float
  as '3.12::FLOAT';  


USE SCHEMA REP_VIEW;

CREATE or replace TABLE Test
(
FIRST_NAME VARCHAR,
LAST_NAME VARCHAR
);
