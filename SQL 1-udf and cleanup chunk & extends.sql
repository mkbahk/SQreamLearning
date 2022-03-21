create table "public"."salesforcasting" (
  "base_year_code" smallint not null,
  "base_quarterly_code" tinyint not null,
  "business_district_division_code" text(1) not null,
  "business_district_classification_code_name" text(8) not null,
  "business_district_code" text(7) not null,
  "business_district_code_name" text(24) not null,
  "service_industry_code" text(8) not null,
  "service_industry_code_name" text(24) not null,
  "quarterly_sales_amount" bigint not null,
  "quarterly_sales_number_of_cases" int not null,
  "weekday_sales_ratio" tinyint not null,
  "weekend_sales_ratio" tinyint not null,
  "monday_sales_ratio" tinyint not null,
  "tuesday_sales_ratio" tinyint not null,
  "wednesday_sales_ratio" tinyint not null,
  "thursday_sales_ratio" tinyint not null,
  "friday_sales_ratio" tinyint not null,
  "saturday_sales_ratio" tinyint not null,
  "sunday_sales_ratio" tinyint not null,
  "time_period_00_06_sales_ratio" tinyint not null,
  "time_period_06_11_sales_ratio" tinyint not null,
  "time_period_11_14_sales_ratio" tinyint not null,
  "time_period_14_17_sales_ratio" tinyint not null,
  "time_period_17_21_sales_ratio" tinyint not null,
  "time_period_21_24_sales_ratio" smallint not null,
  "male_sales_ratio" tinyint not null,
  "female_sales_ratio" tinyint not null,
  "age_10_sales_ratio" tinyint not null,
  "age_20_sales_ratio" tinyint not null,
  "age_30_sales_ratio" tinyint not null,
  "age_40_sales_ratio" tinyint not null,
  "age_50_sales_ratio" tinyint not null,
  "age_60_above_sales_ratio" tinyint not null,
  "weekday_sales_amount" bigint not null,
  "weekend_sales_amount" bigint not null,
  "monday_sales_amount" bigint not null,
  "tuesday_sales_amount" bigint not null,
  "wednesday_sales_amount" bigint not null,
  "thursday_sales_amount" bigint not null,
  "friday_sales_amount" bigint not null,
  "saturday_sales_amount" bigint not null,
  "sunday_sales_amount" bigint not null,
  "time_period_00_06_sales_amount" bigint not null,
  "time_period_06_11_sales_amount" bigint not null,
  "time_period_11_14_sales_amount" bigint not null,
  "time_period_14_17_sales_amount" bigint not null,
  "time_period_17_21_sales_amount" bigint not null,
  "time_period_21_24_sales_amount" bigint not null,
  "male_sales_amount" bigint not null,
  "female_sales_amount" bigint not null,
  "age_10_sales_amount" bigint not null,
  "age_20_sales_amount" bigint not null,
  "age_30_sales_amount" bigint not null,
  "age_40_sales_amount" bigint not null,
  "age_50_sales_amount" bigint not null,
  "age_60_above_sales_amount" bigint not null,
  "weekday_sales_number_of_cases" int not null,
  "weekend_sales_number_of_cases" int not null,
  "monday_sales_number_of_cases" int not null,
  "tuesday_sales_number_of_cases" int not null,
  "wednesday_sales_number_of_cases" int not null,
  "thursday_sales_number_of_cases" int not null,
  "friday_sales_number_of_cases" int not null,
  "saturday_sales_number_of_cases" int not null,
  "sunday_sales_number_of_cases" int not null,
  "time_period_06_sales_number_of_cases" int not null,
  "time_period_11_sales_number_of_cases" int not null,
  "time_period_14_sales_number_of_cases" int not null,
  "time_period_17_sales_number_of_cases" int not null,
  "time_period_21_sales_number_of_cases" int not null,
  "time_period_24_sales_number_of_cases" int not null,
  "male_sales_number_of_cases" int not null,
  "female_sales_number_of_cases" int not null,
  "age_10_sales_number_of_cases" int not null,
  "age_20_sales_number_of_cases" int not null,
  "age_30_sales_number_of_cases" int not null,
  "age_40_sales_number_of_cases" int not null,
  "age_50_sales_number_of_cases" int not null,
  "age_60_and_over_sales_number_of_cases" int not null,
  "number_of_stores" smallint not null
);

select
  *
from
  salesforasting;

select
  get_ddl('public.salesforcasting');

copy public.salesforcasting
from
  wrapper csv_fdw options (
    location = '~/SampleDB/CommercialInfoK/SeoulSmallBizAreaSalesForcasting/SeoulSmallBizAreaSalesForcasting_*.csv',
    delimiter = ',',
    record_delimiter = '\r\n',
    offset = 2,
    continue_on_error = true,
    error_log = 'input_error.log'
  );

select
  *
from
  salesforcasting;

select
  base_year_code,
  sum(quarterly_sales_amount),
  avg(quarterly_sales_amount)
from
  salesforcasting
group by
  base_year_code
order by
  base_year_code desc;

select
  show_version();

select
  show_cluster_nodes();

select
  get_license_info();

select
  show_subscribed_instances();

select
  show_connections();

select
  list_utility_functions();

select
  show_server_status();

select
  show_locks();

select
  show_db_info('seoulsmallbiz');

---get statement_id

select
  show_server_status();

---Query Plan을 보여줌

select
  show_node_info(4779);

select
  show_server_status();

select
  stop_statement(5228);

select
  show_connections();

select
  connection_stop_statement(3988);

---에러발생, 메뉴얼에도 안나옴(2022/03/21)

select
  data_diag(1, '/sqreamdb/sqream_storage/databases/seoulsmallbiz/tables/6/0/0-9997');

select
  data_diag(12, '/sqreamdb/sqream_storage/databases/seoulsmallbiz/tables/6/0/0-9997');

--can not remove key, file exists, data_diag()는 SQream문서파일에 검색이 않됨

select
  *
from
  sqream_catalog.tables
where
  table_name = 'salesforcasting';

select
  1
from
  public.salesforcasting;

select
  1;

select
  count(*)
from
  sqream_catalog.md_deleted_files;

select
  export_leveldb_stats('/tmp/mkbahk_exports_leveldb_states.txt');

select
  reset_leveldb_stats();

select
  export_statement_queue_stats('/tmp/mkbahk_export_statement_queue_stats.txt');

select
  get_open_snapshots_statements('/tmp/mkbahk_opensnapshot_stats.txt');

select
  get_statement_locks('select base_year_code, sum(quarterly_sales_amount), avg(quarterly_sales_amount) from salesforcasting group by base_year_code order by base_year_code desc');

select
  count(*)
from
  sqream_catalog.chunks;

select
  get_license_info();

select
  show_server_status();

select
  show_instance_services('worker_5001');

select
  key_evaluate('view_light', 'seoulsmallbiz', 'public.salesforcasting');

select
  show_version();

select
  data_diag(1, 'seoulsmallbiz', 'public.salesforcasting');

select
  data_diag(12, '/sqreamdb/sqream_storage/databases/seoulsmallbiz/tables/6/0/0-9995');

select
  rows_count_correction('public', 'salesforcasting', 'correct');

select
  cleanup_chunks('public', 'salesforcasting');

---Error executing statement: value '1001238' is too long for column 'business_district_code@vcblob' of type TEXT(7)

select
  count(*)
from
  salesforcasting
where
  business_district_code = '1001238';

---783960

select
  cleanup_extents('public', 'salesforcasting');

---Error executing statement: Can not execute cleanup_extents on table because there are mixed chunks. Please execute cleanup_chunks and try again.

select
  rows_count_correction('public', 'salesforcasting', 'correct');

---delete가 일어났는데 아직 클린업되지 않는 테이블 찾기

---List tables that haven’t been cleaned up

SELECT
  t.table_name
FROM
  sqream_catalog.delete_predicates dp
  JOIN sqream_catalog.tables t ON dp.table_id = t.table_id
GROUP BY
  1;

---Identify predicates for clean-up

SELECT
  delete_predicate
FROM
  sqream_catalog.delete_predicates dp
  JOIN sqream_catalog.tables t ON dp.table_id = t.table_id
WHERE
  t.table_name = 'salesforcasting';

---Triggering a cleanup

-- Chunk reorganization (aka SWEEP)

SELECT
  CLEANUP_CHUNKS('public', 'salesforcasting');

---executed

-- Delete leftover files (aka VACUUM)

SELECT
  CLEANUP_EXTENTS('public', 'salesforcasting');

---executed

SELECT
  delete_predicate
FROM
  sqream_catalog.delete_predicates dp
  JOIN sqream_catalog.tables t ON dp.table_id = t.table_id
WHERE
  t.table_name = 'salesforcasting';