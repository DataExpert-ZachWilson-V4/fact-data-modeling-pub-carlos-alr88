CREATE OR REPLACE TABLE host_activity_reduced (
    host varchar,
    metric_name varchar,
    metric_array array(integer),
    month_start varchar
)
WITH (
    FORMAT = 'PARQUET', PARTITIONING = ARRAY['metric_name', 'month_start']
)