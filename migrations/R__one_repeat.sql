USE SCHEMA REP_VIEW;

CREATE OR REPLACE DYNAMIC TABLE TESTT
LAG = '1 minute'
WAREHOUSE = {{warehouse_name}}
AS
SELECT * FROM PUBLIC.Hello_world;


