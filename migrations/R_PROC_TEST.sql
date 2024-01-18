CREATE OR REPLACE PROCEDURE DEV.PUBLIC.PROC_DEL_RECS_TEST()
RETURNS FLOAT
LANGUAGE SQL
AS
$$
BEGIN
  IF (CURRENT_DATABASE() ='DEV') THEN
    delete from TEST where ID < 2;
  END IF;
END;
$$
;

CALL DEV.PUBLIC.PROC_DEL_RECS_TEST();
DROP PROCEDURE DEV.PUBLIC.PROC_DEL_RECS_TEST();