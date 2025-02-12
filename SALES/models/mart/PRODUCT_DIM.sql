SELECT 
    ROW_NUMBER() OVER () AS Pro_id, 
    *
FROM {{ ref('PRODUCT') }}