SELECT 
    ROW_NUMBER() OVER () AS Cus_id, 
    *
FROM {{ ref('CUSTOMER') }}