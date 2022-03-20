select
  show_subscribed_instances();

select
  unsubscribed_service('sqream_5001', 'sqream');

select
  subscribed_service('sqream_5001', 'big_etl');

select
  subscribed_status();

select
  show_node_info(245);

select
  *
from
  sqream_catalog.tables;

select
  t.table_name,
  d.*
from
  sqream_catalog.delete_predicates d
  inner join sqream_catalog.tables t on d.table_id = t.table_id;
  
select * from sqream_catalog.databases;

select * from sqream_catalog.schemas;

select * from sqream_catalog.tables;

select * from sqream_catalog.columns where table_name like 'salesforcasting';

select * from sqream_catalog.views;

select * from sqream_catalog.external_tables;
select * from sqream_catalog.foreign_tables;

---없는 카탈로그
select * from sqream_catalog.udf;

select * from sqream_catalog.catalog_tables;

select * from sqream_catalog.tables where table_name like 'salesforcasting';

select count(*) from sqream_catalog.extents where database_name = 'seoulsmallbiz';

select count(*) from sqream_catalog.chunks where database_name = 'seoulsmallbiz';

select * from salesforcasting;

delete from salesforcasting
where base_year_code = 2014 and business_district_division_code = 'A';

select * from sqream_catalog.delete_predicates where database_name = 'seoulsmallbiz';

select * from sqream_catalog.roles;

select * from sqream_catalog.catalog_tables;
select * from sqream_catalog.role_memberships;
select * from sqream_catalog.table_permissions;
select * from sqream_catalog.database_permissions;
select * from sqream_catalog.schema_permissions;
select * from sqream_catalog.permission_types;

select * from sqream_catalog.tables;
select count(base_year_code) from salesforcasting;

select * from sqream_catalog.columns;

select * from sqream_catalog.extents;

select * from sqream_catalog.chunks where database_name = 'seoulsmallbiz';

select * from sqream_catalog.delete_predicates;

select show_locks();

SELECT show_cluster_nodes();
SELECT release_defunct_locks();

select show_cluster_nodes();
select show_subscribed_instances('normal_etl');
select show_subscribed_instances();

---러발생
select subscribed_service('worker_5004','cleanup_tool');
---에러발생
select show_subscribed_instances('big_etl');
select unsubscribe_service('worker_504','big_etl');

select show_connections();
