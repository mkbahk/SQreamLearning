create
or replace foreign table LogTable (
  start_marker VARCHAR(4),
  row_id BIGINT,
  timestamp DATETIME,
  message_level TEXT,
  thread_id TEXT,
  worker_hostname TEXT,
  worker_port INT,
  connection_id INT,
  database_name TEXT,
  user_name TEXT,
  statement_id INT,
  service_name TEXT,
  message_type_id INT,
  message TEXT,
  end_message VARCHAR(5)
) wrapper csv_fdw 
options 
(
  location = '/sqreamdb/sqream_storage/logs/*/sqream*.log',
  delimiter = '|',
  record_delimiter = '\n'
);


---에러가 발생함
select count(*) from logtable;

select message_type_id, count(*) from LogTable group by 1;

select message
from logtable
where message_type_id = 1010;