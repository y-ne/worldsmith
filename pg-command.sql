-- monitor connection
SELECT * FROM pg_stat_activity;

-- disconnect all connection
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE pid <> pg_backend_pid()
AND datname = 'your_database_name';

-- information schema
SELECT 
    column_name,
    data_type,
    is_nullable,
    column_default,
    character_maximum_length,
    numeric_precision,
    numeric_scale
FROM information_schema.columns 
WHERE table_name = 'your_table_name'
ORDER BY ordinal_position;
