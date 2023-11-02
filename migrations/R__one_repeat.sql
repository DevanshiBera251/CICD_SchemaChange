USE SCHEMA PUBLIC;

--CREATE or replace view PLATFORM_EVENT_FACT_V_VIEW as select * from Hello_world;
--CREATE or replace view PLATFORM_EVENT_FACT_V_VIEW_NEW as select * from Hello_world;

create or replace function second_udf()
  returns float
  as '3.11::FLOAT';