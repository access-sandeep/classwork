use sample_data;

select * from branches;

select * from transactions;


# Left join
select * from transactions left join branches
	on transactions.Branch_ID=branches.Branch_ID;


# select only few columns while joining
select transactions.Transaction_ID,
	transactions.Price,
	branches.Branch_name from transactions
	left join branches
	on transactions.Branch_ID=branches.Branch_ID;
    
# Right join
select * from transactions right join branches
	on transactions.Branch_ID=branches.Branch_ID;

# Inner join: only common keys will be selected
select * from transactions inner join branches
	on transactions.Branch_ID=branches.Branch_ID;

# Outer join: use left join + right join
select * from transactions left join branches
	on transactions.Branch_ID=branches.Branch_ID
    union
select * from transactions right join branches
	on transactions.Branch_ID=branches.Branch_ID;
 
use super_market;
select * from transactions left join branches
	on transactions.Branch_ID=branches.Branch_ID;

