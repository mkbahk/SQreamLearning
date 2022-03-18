create or replace table public.employees
( 
	employee_id 	smallint not null,
	first_name 		text(32) not null,
  	last_name 		text(32) not null,
  	email			text(64) not null,
    phone_number 	text(32),
    hire_date 		date not null,
    job_id 			text(16),
    salary			int,
    commission_pct 	numeric(15,3),
	manager_id 		smallint,
  	department_id 	smallint
);

select * from employees;

copy public.employees
from wrapper csv_fdw
options (
	location = '/home/sqream/SampleDB/HR/employees.csv',
  	delimiter=',',
  	record_delimiter= '\r\n',
  	offset=2
);

select * from employees;