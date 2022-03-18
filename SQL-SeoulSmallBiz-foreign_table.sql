create or replace foreign table "public"."salesforcasting_foreign" (
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
)
wrapper csv_fdw
options
(location ='/mnt/weka/sqream/salesforcsating_copy.csv',
 delimiter = ',',
 record_delimiter = '\n'
 );

select count(base_year_code) from salesforcasting_foreign;

select get_ddl('public.salesforcasting_foreign');


select * from salesforcasting_foreign;

select base_year_code, sum(quarterly_sales_amount), avg(quarterly_sales_amount)
from salesforcasting_foreign
group by base_year_code
order by base_year_code desc;

grant all on database seoulsmallbiz to mkbahk;

