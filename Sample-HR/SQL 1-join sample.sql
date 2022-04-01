select
  show_version();

---

select
  c.country_id,
  c.country_name,
  r.region_id,
  r.region_name
from
  countries c,
  regions r
where
  c.region_id = r.region_id
order by
  c.region_id,
  c.country_id;

---

select
  c.country_id,
  c.country_name,
  r.region_id,
  r.region_name
from
  countries as c
  inner join regions as r on c.region_id = r.region_id
where
  r.region_id = 1
order by
  c.region_id,
  c.country_id;

---

select
  c.country_id,
  c.country_name,
  r.region_id,
  r.region_name
from
  countries as c
  inner join (
    select
      region_id,
      region_name
    from
      regions
    where
      region_id = 1
  ) as r
order by
  c.region_id,
  c.country_id;
 ---