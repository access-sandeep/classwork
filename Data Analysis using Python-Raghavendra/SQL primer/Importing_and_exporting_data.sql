create table branches(
	Branch_ID INT AUTO_INCREMENT PRIMARY KEY,
    Branch_name VARCHAR(50) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    Manager_Name VARCHAR(50),
    Latitude VARCHAR(20),
    Longitude VARCHAR(20)
);

create table transactions(
	Transaction_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Date DATETIME,
    Price DECIMAL,
    Branch_ID INT NOT NULL,
    FOREIGN KEY (Branch_ID) REFERENCES branches(Branch_ID)
);

INSERT INTO branches (Branch_name, Address, Manager_Name)
VALUES ("ABC", "US1", "John"),
		("CDE", "US2", "Peter");
        

















