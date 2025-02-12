SELECT DISTINCT
    customer_type,
    gender
FROM {{source('RAW','supermarket_sales')}}