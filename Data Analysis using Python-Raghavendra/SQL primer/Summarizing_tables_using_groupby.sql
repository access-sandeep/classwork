select * from transactions;

# Count number of transactions per customer
select count(*) from transactions group by Customer_ID;

select Customer_ID, count(*) from transactions group by Customer_ID;


# Rename columns while aggregating and also sort data after grouping
select Customer_ID, count(*) as total_transactions from transactions
	group by Customer_ID order by total_transactions desc;
    
# Identify Top 10 customers based on total sales 
select Customer_ID, sum(Price) as total_sales from transactions
	group by Customer_ID order by total_sales desc limit 10;
    

# Group by multiple columns
select Branch_ID, Purchase_Date, sum(Price) as total_sales from transactions
	group by Branch_ID, Purchase_Date 
    order by Branch_ID asc, Purchase_Date asc, total_sales desc;

# Group by multiple columns and aggregate using multiple columns
select Branch_ID, sum(Price) as total_sales, count(*) as total_transactions 
	from transactions
	group by Branch_ID
    order by total_sales desc;    
    

# Use filter while applying 
select Branch_ID, sum(Price) as total_sales, count(*) as total_transactions 
	from transactions
    where Date(Purchase_Date)="2020-05-01"
	group by Branch_ID
    order by total_sales desc; 
