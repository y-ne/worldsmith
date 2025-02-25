-- monitor connection
SELECT * FROM pg_stat_activity;

-- disconnect all connection
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE pid <> pg_backend_pid()
AND datname = 'your_database_name';
