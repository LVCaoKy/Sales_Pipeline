# Sales_Pipeline
In this project, I analyze sales data and build a data pipeline model. I use Python, Pandas, dbt, PostgreSQL, and Airflow


YOU MUST CONNECT TO POSTGRESQL WITH COMMAND WHEN YOU ARE IN SALES_PINELINE:
dbt debug -- profiles-dir . 
- When you want run models , you can run command in powershell
dbt run --profiles_dir . --select <your name models>