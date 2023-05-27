# Filter rows by single value
select * from transactions where Branch_ID = 1;


# Count number of rows after filtering
select count(*) from transactions where Branch_ID=1;

select count(*) from transactions;

# Filter rows by multiple values
select * from transactions where Branch_ID in (1,2,3);

# Filter rows by range
select * from transactions where Price > 500 and Price <1000;

# Filter rows using multiple columns
select * from transactions where Customer_ID=1235 and Price>500;

# Filter rows by date column
select * from transactions where Purchase_Date="2020-05-02";



select * from transactions where Date(Purchase_Date)="2020-05-02";


# Filter rows between two dates
select count(*) from transactions where 
	Date(Purchase_Date) >= "2020-01-01" and Date(Purchase_Date) <= "2020-01-31";
    

select count(*) from transactions where 
	Date(Purchase_Date) between "2020-01-01" and "2020-01-31";


# Filter rows by date operations
select * from transactions 
	where month(Purchase_Date)=1 and year(Purchase_Date)=2020;



