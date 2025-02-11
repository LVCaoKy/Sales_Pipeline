/* USE THIS CODE TO IMPORT DATE FROM FILE CSV TO POSTGRESQL*/
-- Create table to store RAW DATA
CREATE TABLE supermarket_sales (
    invoice_id TEXT PRIMARY KEY,
    branch TEXT,
    city TEXT,
    customer_type TEXT,
    gender TEXT,
    product_line TEXT,
    unit_price NUMERIC(10,2),
    quantity INTEGER,
    tax_5 NUMERIC(10,4),
    total NUMERIC(10,4), 
    sale_date DATE,
    sale_time TIME,
    payment TEXT,
    cogs NUMERIC(10,2),
    gross_margin_percentage NUMERIC(10,6),
    gross_income NUMERIC(10,4),
    rating NUMERIC(3,1)
);
-- import data from file csv to postgreSQL
COPY supermarket_sales(invoice_id, branch, city, customer_type, gender, product_line, 
                        unit_price, quantity, tax_5, total, sale_date, sale_time, 
                        payment, cogs, gross_margin_percentage, gross_income, rating)
FROM 'absolute/path/to/supermarket_sales.csv'
DELIMITER ',' CSV HEADER;
