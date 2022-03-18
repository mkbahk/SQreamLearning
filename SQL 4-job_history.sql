create or replace table public.job_history
( 
	employee_id smallint not null,
	start_date date not null,
	end_date date not null,
    job_id text(16) not null,
  	department_id smallint not null
);

select * from job_history;

copy public.job_history
from wrapper csv_fdw
options (
	location = '/home/sqream/SampleDB/HR/job_history.csv',
  	delimiter=',',
  	record_delimiter= '\r\n',
  	offset=2
);

select * from job_history;