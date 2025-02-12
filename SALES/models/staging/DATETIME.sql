SELECT DISTINCT
    sale_date,
    EXTRACT(MONTH FROM sale_date) AS month,
    EXTRACT(DAY FROM sale_date) AS day,
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(HOUR FROM sale_time) AS hour,
    EXTRACT(MINUTE FROM sale_time) AS minute
FROM {{ source('RAW', 'supermarket_sales') }}
