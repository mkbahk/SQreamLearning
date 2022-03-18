create or replace table public.locations
( 
	LOCATION_ID smallint not null,
  	STREET_ADDRESS text(128) not null,
  	POSTAL_CODE text(16) not null,
  	CITY text(32) not null,
  	STATE_PROVINCE text(32),
  	COUNTRY_ID text(2) not null
);

select * from locations;

copy public.locations
from wrapper csv_fdw
options (
	location = '/home/sqream/SampleDB/HR/locations.csv',
  	delimiter=',',
  	record_delimiter= '\r\n',
  	offset=2
);

select * from locations;