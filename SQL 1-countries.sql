create or replace table public.countries
( 
	country_id text(2)not null,
	country_name text(32) not null,
	region_id tinyint not null
);

select * from countries;

select get_ddl('public.countries');

insert into countries 
values ('KR', 'Republic of Korea', 3);

copy public.countries
from wrapper csv_fdw
options (
	location = '/home/sqream/SampleDB/HR/countries2.csv',
  	delimiter=',',
  	record_delimiter= '\n',
  	offset=2
);

select * from countries;