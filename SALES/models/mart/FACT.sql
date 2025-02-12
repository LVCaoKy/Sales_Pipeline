SELECT
    bill.invoice_id,
    cus_dim.Cus_id,
    add_dim.Add_id,
    product_dim.Pro_id,
    pay_dim.Pay_id,
    bill.unit_price,
    bill.quantity,
    bill.tax_5,
    bill.total,
    bill.cogs,
    bill.gross_margin_percentage,
    bill.gross_income,
    bill.rating
FROM {{source('RAW','supermarket_sales')}} as bill 
INNER JOIN {{ref('ADDRESS_DIM')}} as add_dim ON bill.city = add_dim.city
INNER JOIN {{ref('PRODUCT_DIM')}} as product_dim ON bill.product_line= product_dim.product_line and bill.branch = product_dim.branch
INNER JOIN {{ref('PAYMENT_DIM')}} as pay_dim ON bill.payment = pay_dim.payment
INNER JOIN {{ref('CUSTOMER_DIM')}} as cus_dim ON bill.customer_type = cus_dim.customer_type and bill.gender = cus_dim.gender
INNER JOIN {{ref('DATETIME_DIM')}} as date_dim ON bill.sale_date = date_dim.sale_date and bill.sale_time = date_dim.sale_time