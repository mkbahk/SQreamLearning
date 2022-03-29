select
  *
from
  countries;
---
insert into
  countries
values
  ('KR', 'South Korea', 3);
---
select
  *
from
  countries
where
  country_id = 'KR';
---
delete from
  countries
where
  country_id = 'KR';
---
SELECT
  t.table_name
FROM
  sqream_catalog.delete_predicates dp
  JOIN sqream_catalog.tables t ON dp.table_id = t.table_id
GROUP BY
  1;
---
SELECT
  delete_predicate
FROM
  sqream_catalog.delete_predicates dp
  JOIN sqream_catalog.tables t ON dp.table_id = t.table_id
WHERE
  t.table_name = 'countries';
---
select cleanup_chunks('public','countries');
---
select * from sqream_catalog.tables where table_name = 'countries';
---
select cleanup_extents('public','countries');