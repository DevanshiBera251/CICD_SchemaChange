USE SCHEMA REP_VIEW;

CREATE OR REPLACE DYNAMIC TABLE TESTT
LAG = '1 minute'
WAREHOUSE = {{warehouse_name}}
AS
SELECT * FROM PUBLIC.Hello_world;


CREATE OR REPLACE DYNAMIC TABLE {{tab1}}
LAG = '3 minute'
WAREHOUSE = {{warehouse_name}}
AS
SELECT * FROM PUBLIC.Hello_world;


CREATE OR REPLACE DYNAMIC TABLE {{env_var('table2')}}
LAG = '2 minute'
WAREHOUSE = {{warehouse_name}}
AS
SELECT * FROM PUBLIC.Hello_world;


