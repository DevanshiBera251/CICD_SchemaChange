create or replace task DEV.AMBYINT_COM_SCHEMA.LOAD_PLATFORM_EVENT_TASK
	warehouse=DEV_AMBYINT_EVENT_INGESTION_WH_XS
	schedule='10 MINUTE'
	ERROR_ON_NONDETERMINISTIC_MERGE=false
	error_integration=TASK_NF
	when SYSTEM$STREAM_HAS_DATA('platform_event_stream')
	as INSERT INTO dev.ambyint_com_schema.PLATFORM_EVENT_FACT(
 id
 , correlation_id
 , context
 , aggregate_id
 , name
 , type
 , data
 , staged_date
)
SELECT dev.ambyint_com_schema.platform_event_fact_seq.nextval
       , correlation_id
       , context
       , aggregate_id
       , name
       , type
       , data
       , staged_date
   FROM dev.ambyint_com_schema.platform_event_stream pes
  WHERE aggregate_id IS NOT NULL;