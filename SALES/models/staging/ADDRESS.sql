SELECT DISTINCT
    city
FROM {{source('RAW','supermarket_sales')}}