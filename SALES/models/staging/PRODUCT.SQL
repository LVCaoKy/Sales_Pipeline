SELECT DISTINCT
    branch,
    product_line,
    unit_price
FROM {{ source('RAW', 'supermarket_sales') }}
