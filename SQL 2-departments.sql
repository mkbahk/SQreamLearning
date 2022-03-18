create or replace table public.departments
( 
	department_id smallint not null,
	department_name text(32) not null,
	manager_id smallint,
  	location_id smallint not null
);

select * from departments;

copy public.departments
from wrapper csv_fdw
options (
	location = '/home/sqream/SampleDB/HR/departments.csv',
  	delimiter=',',
  	record_delimiter= '\r\n',
  	offset=2
);

select * from departments;