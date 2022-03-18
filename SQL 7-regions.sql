create or replace table public.regions
( 
	REGION_ID tinyint not null,
  	REGION_NAME text(32) not null
);

select * from regions;

copy public.regions
from wrapper csv_fdw
options (
	location = '/home/sqream/SampleDB/HR/regions.csv',
  	delimiter=',',
  	record_delimiter= '\r\n',
  	offset=2
);

select * from regions;