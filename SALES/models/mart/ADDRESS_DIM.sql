SELECT
    ROW_NUMBER() OVER () as Add_id,
    *
FROM {{ ref('ADDRESS') }}