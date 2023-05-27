# Select all the rows and columns
select * from super_market.transactions;

# select a database
use super_market;

# select all the rows and columns
select * from transactions;

# select only certain columns
select Customer_ID, Price from transactions;

# Rename columns while querying
select Customer_ID as Customer, Price from transactions;

# Limit the no. of rows
select * from transactions limit 3;

# Sort data by single column
select * from transactions order by Price desc limit 20;

# Sort data by multiple columns
select * from transactions order by Branch_ID asc, Price desc limit 200;