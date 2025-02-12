SELECT DISTINCT
    branch,
    product_line
FROM {{ source('RAW', 'supermarket_sales') }}
