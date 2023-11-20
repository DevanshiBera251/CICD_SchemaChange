USE SCHEMA PUBLIC;

--CREATE or replace view PLATFORM_EVENT_FACT_V_VIEW as select * from Hello_world;
--CREATE or replace view PLATFORM_EVENT_FACT_V_VIEW_NEW as select * from Hello_world;

create or replace function second_udf()
  returns float
  as '3.11::FLOAT';  

use schema REP_VIEW;

CREATE OR REPLACE DYNAMIC TABLE TEST1
LAG = '1 minute'
WAREHOUSE = {{warehouse_name}}
AS
SELECT * FROM Hello_world;
