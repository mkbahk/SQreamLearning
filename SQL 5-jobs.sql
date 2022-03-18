create or replace table public.jobs
( 
    job_id text(16) not null,
    job_title text(32) not null,  
	min_salary int not null,
	max_salary int not null
);

select * from jobs;

copy public.jobs
from wrapper csv_fdw
options (
	location = '/home/sqream/SampleDB/HR/jobs.csv',
  	delimiter=',',
  	record_delimiter= '\r\n',
  	offset=2
);

select * from jobs;