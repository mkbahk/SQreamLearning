select get_ddl('public.countries');
select get_ddl('public.departments');
select get_ddl('public.employees');
select get_ddl('public.job_history');
select get_ddl('public.jobs');
select get_ddl('public.locations');
select get_ddl('public.regions');
---
COPY public.countries TO WRAPPER csv_fdw OPTIONS (LOCATION='/tmp/countries.csv', DELIMITER=',', HEADER = true );
COPY public.departments TO WRAPPER csv_fdw OPTIONS (LOCATION='/tmp/departments.csv', DELIMITER=',', HEADER = true );
COPY public.employees TO WRAPPER csv_fdw OPTIONS (LOCATION='/tmp/employees.csv', DELIMITER=',', HEADER = true );
COPY public.job_history TO WRAPPER csv_fdw OPTIONS (LOCATION='/tmp/job_history.csv', DELIMITER=',', HEADER = true );
COPY public.jobs TO WRAPPER csv_fdw OPTIONS (LOCATION='/tmp/jobs.csv', DELIMITER=',', HEADER = true );
COPY public.locations TO WRAPPER csv_fdw OPTIONS (LOCATION='/tmp/locations.csv', DELIMITER=',', HEADER = true );
COPY public.regions TO WRAPPER csv_fdw OPTIONS (LOCATION='/tmp/regions.csv', DELIMITER=',', HEADER = true );
---
create or replace table "public"."countries" ( "country_id" text(2) not null, "country_name" text(32) not null, "region_id" tinyint not null ) ;
create or replace table "public"."departments" ( "department_id" smallint not null, "department_name" text(32) not null, "manager_id" smallint null, "location_id" smallint not null ) ;
create or replace table "public"."employees" ( "employee_id" smallint not null, "first_name" text(32) not null, "last_name" text(32) not null, "email" text(64) not null, "phone_number" text(32) null, "hire_date" date not null, "job_id" text(16) null, "salary" int null, "commission_pct" numeric(15, 3) null, "manager_id" smallint null, "department_id" smallint null ) ;
create or replace table "public"."job_history" ( "employee_id" smallint not null, "start_date" date not null, "end_date" date not null, "job_id" text(16) not null, "department_id" smallint not null ) ;
create or replace table "public"."jobs" ( "job_id" text(16) not null, "job_title" text(32) not null, "min_salary" int not null, "max_salary" int not null ) ;
create or replace table "public"."locations" ( "location_id" smallint not null, "street_address" text(128) not null, "postal_code" text(16) not null, "city" text(32) not null, "state_province" text(32) null, "country_id" text(2) not null ) ;
create or replace table "public"."regions" ( "region_id" tinyint not null, "region_name" text(32) not null ) ;
---
COPY countries FROM WRAPPER csv_fdw OPTIONS ( LOCATION = '/home/sqream/Sample-HR/countries.csv', DELIMITER = ',' , RECORD_DELIMITER = '\n', OFFSET=2);
COPY departments FROM WRAPPER csv_fdw OPTIONS ( LOCATION = '/home/sqream/Sample-HR/departments.csv', DELIMITER = ',' , RECORD_DELIMITER = '\n', OFFSET=2);
COPY employees FROM WRAPPER csv_fdw OPTIONS ( LOCATION = '/home/sqream/Sample-HR/employees.csv', DELIMITER = ',' , RECORD_DELIMITER = '\n', OFFSET=2);
COPY job_history FROM WRAPPER csv_fdw OPTIONS ( LOCATION = '/home/sqream/Sample-HR/job_history.csv', DELIMITER = ',' , RECORD_DELIMITER = '\n', OFFSET=2);
COPY jobs FROM WRAPPER csv_fdw OPTIONS ( LOCATION = '/home/sqream/Sample-HR/jobs.csv', DELIMITER = ',' , RECORD_DELIMITER = '\n', OFFSET=2);
COPY locations FROM WRAPPER csv_fdw OPTIONS ( LOCATION = '/home/sqream/Sample-HR/locations.csv', DELIMITER = ',' , RECORD_DELIMITER = '\n', OFFSET=2);
COPY regions FROM WRAPPER csv_fdw OPTIONS ( LOCATION = '/home/sqream/Sample-HR/regions.csv', DELIMITER = ',' , RECORD_DELIMITER = '\n', OFFSET=2);