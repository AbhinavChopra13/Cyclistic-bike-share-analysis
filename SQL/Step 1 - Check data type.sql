SELECT 
    m.name AS table_name,
    p.name AS column_name,
    p.type AS data_type
FROM sqlite_master AS m
JOIN pragma_table_info(m.name) AS p
WHERE m.type = 'table'
ORDER BY p.name,m.name;