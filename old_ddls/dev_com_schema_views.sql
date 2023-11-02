create or replace view DEV.AMBYINT_COM_SCHEMA.WELL_DM(
	WELL_ID,
	FIELD_NAME,
	DOWNHOLE_LOCATION,
	ORGANIZATION_ID,
	ORGANIZATION_NAME
) as
select wellid as well_id
, fieldname as field_name
, downholelocation as downhole_location
, "CLIENT.ORGANIZATIONID" as organization_id
, "CLIENT.ORGANIZATIONNAME" as organization_name
from trgt_wells;