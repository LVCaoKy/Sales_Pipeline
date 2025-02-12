SELECT DISTINCT
    payment
FROM {{source('RAW','supermarket_sales')}}