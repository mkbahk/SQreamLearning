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

select * from salesforasting;

select get_ddl('public.salesforcasting');


copy public.salesforcasting
from wrapper csv_fdw
options (
	location = '~/SampleDB/CommercialInfoK/SeoulSmallBizAreaSalesForcasting/SeoulSmallBizAreaSalesForcasting_*.csv',
  	delimiter=',',
  	record_delimiter= '\r\n',
  	offset=2,
  	continue_on_error = true,
    error_log = 'input_error.log'
);

select * from salesforcasting;

select base_year_code, sum(quarterly_sales_amount), avg(quarterly_sales_amount)
from salesforcasting
group by base_year_code
order by base_year_code desc;

