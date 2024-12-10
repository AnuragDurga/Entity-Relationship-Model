CREATE TABLE Supplier (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(100),
    Supplier_no VARCHAR(10),
    Supplier_Location VARCHAR(100)
);
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_name VARCHAR(100),
    Price DECIMAL(10, 2),
    Quantity INT
);
CREATE TABLE Inventory (
    Inventory_ID INT PRIMARY KEY,
    Product_ID INT,
    Stock_Level INT,
    Location VARCHAR(100),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Address VARCHAR(150),
    Contact_no VARCHAR(10)
);
CREATE TABLE `Order` (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Quantity INT,
    Product_ID INT,
    Customer_ID INT,
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);
CREATE TABLE Product1 (
    Product_ID INT PRIMARY KEY,
    Product_name VARCHAR(100),
    Price INT,
    Quantity INT
);

#Inserting values into Supplier table
INSERT INTO Supplier (Supplier_ID, Supplier_Name, Supplier_no, Supplier_Location) VALUES
(001, 'ARUN', '1534524485', 'DELHI'),
(002, 'VARUN', '2571842871', 'UTTAR PRADESH'),
(003, 'RAHUL', '4828215729', 'UTTAR PRADESH'),
(004, 'SAHIL', '4268572921', 'HARYANA');

#Inserting values into Product table
INSERT INTO Product1 (Product_ID, Product_name, Price, Quantity) VALUES
(708, 'SAMSUNG GALAXY PHONE', 35000, 100),
(609, 'APPLE IPHONE', 75000, 200),
(304, 'APPLE IPAD', 68000, 150),
(405, 'APPLE MACBOOK', 120000, 75),
(507, 'ONEPLUS PHONE', 30000, 300);

#Inserting values into Inventory table
INSERT INTO Inventory (Inventory_ID, Product_ID, Stock_Level, Location) VALUES
(01, 708, 80, 'NOIDA'),
(02, 609, 150, 'NOIDA'),
(03, 304, 100, 'GURUGRAM'),
(04, 405, 50, 'GURUGRAM'),
(05, 507, 200, 'NOIDA');

#Inserting values into Customer table
INSERT INTO Customer (Customer_ID, Customer_Name, Address, Contact_no) VALUES
(101, 'AKSHAT', 'DELHI', '1110223333'),
(201, 'VIDHI', 'PUNJAB', '22233300444'),
(301, 'TANYA', 'HARYANA', '33344400555'),
(401, 'CHIRAG', 'UTTAR PRADESH', '4440550666'),
(501, 'RISHABH', 'HIMACHAL PRADESH', '55566000777');

#Inserting values into Order table
INSERT INTO `Order` (Order_ID, Order_Date, Quantity, Product_ID, Customer_ID) VALUES
(9876, '2024-01-01', 20, 708, 101),
(8765, '2024-01-02', 10, 609, 201),
(7654, '2024-01-03', 50, 304, 301),
(6543, '2024-01-04', 30, 405, 401),
(5432, '2024-01-05', 10, 507, 501);

#Manage Relationship (between Supplier and Product)
CREATE TABLE Manage (
    Supplier_ID INT,
    Product_ID INT,
    PRIMARY KEY (Supplier_ID, Product_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product1(Product_ID));

#Inserting values into Manage table (representing supplier-product relationships)
INSERT INTO Manage (Supplier_ID, Product_ID) VALUES
(001, 708),
(001, 609),
(002, 304), 
(002, 507),
(003, 405),
(003, 708),
(004, 507),
(004, 609);

select* from Customer;

DELIMITER //

CREATE PROCEDURE update_ph (IN sid VARCHAR(50), IN pho INT)
BEGIN
    UPDATE customer	
    SET customer_no = pho
    WHERE customer_id = sid;
END;
//

DELIMITER ;

DELIMITER //
CREATE PROCEDURE inventory_list1(IN cid VARCHAR(50))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE inventory_id VARCHAR(50);
    DECLARE inventory_cursor CURSOR FOR
        SELECT inventory_id from inventory WHERE Product_ID = cid;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    OPEN inventory_cursor;
    read_loop: LOOP
        FETCH inventory_cursor INTO inventory_id;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT('inventory: ', inventory_id) AS inventory;
    END LOOP;
    CLOSE inventory_cursor;
END;
//

DELIMITER ;
