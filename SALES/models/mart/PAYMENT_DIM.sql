SELECT 
    ROW_NUMBER() OVER () AS Pay_id, 
    *
FROM {{ ref('PAYMENT') }}