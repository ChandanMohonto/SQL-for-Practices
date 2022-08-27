-- Create a database named class_one_assignment
CREATE DATABASE class_one_assignment;
 
 USE class_one_assignment;
 
 -- creat a table
 CREATE TABLE customers(
 id INT AUTO_INCREMENT,
 First_Name VARCHAR(50) NOT NULL,
 Last_Name VARCHAR(50) NOT NULL,
 Date_Of_Birth DATE NOT NULL,
 Phone VARCHAR(25) NOT NULL,
 Address VARCHAR(80) NOT NULL,
 City VARCHAR(80) NOT NULL,
 State VARCHAR(50) NOT NULL,
 Points VARCHAR(25) NOT NULL,
 PRIMARY KEY(id)
 );
 
 -- showing the table
SELECT * FROM customers;

-- insert data into the customers tablr
INSERT INTO customers(First_Name, Last_Name, Date_Of_Birth, Phone, Address, City, State, Points) VALUES
( 'Babara' , 'MacCaffrey' , '1986-03-28' , '781-932-9754' , '0 Sage Terrace' , 'Waltham' , 'MA' , '2273'),
( 'Ines' , 'Brushfield' , '1986-04-13' , '  804-427-9456' , '14187 Commercial Trail' , 'Hampton' , 'VA' , '947'), 
( 'Freddi' , 'Boagey' , '1985-02-07' , '719-724-7869' , '251 Springs Junction' , 'Colorado Springs' , 'CO' , '2967'), 
( 'Ambur' , 'Roseburgh' , '1974-04-14' , '407-231-8017' , '30 Arapahoe Terrace' , 'Orlando' , ' FL','457'), 
( 'Clemmie' , 'Betchley' , '1973-11-07' , ' ' , ' 5 Spohn Circle' , 'Arlington' , 'TX' , '3675') 
;  

-- showing the whole table
SELECT * FROM customers;

-- 4. Show only 2 members whose points are more than 1000
SELECT * FROM customers HAVING Points >1000;

-- 5. Find the customers whose age is from 1980 to 1990 or points less than 1000. 
-- less than 1000
SELECT * FROM customers HAVING Points <1000;

-- customers whose age is from 1980 to 1990
SELECT * FROM customers WHERE Date_Of_Birth BETWEEN '1980-01-01' AND '1990-12-31';

-- 6. Order the customers by points in ascending and descending order. 
-- ascending 
SELECT * FROM customers ORDER BY Points ASC;

-- descending order
SELECT * FROM customers ORDER BY Points DESC;

-- 7. Find the customer whose name contains 'burgh' using like and regexp.
-- 'burgh' using like 
SELECT * FROM customers WHERE First_Name  LIKE '%burgh%' OR Last_Name LIKE '%burgh%';

-- name contains 'burgh' using regexp.
SELECT * FROM customers WHERE First_Name REGEXP '(burgh)' OR Last_Name REGEXP '(burgh)' ;

-- 8. Find the customer who does not have a phone number. 
SELECT * FROM customers WHERE Phone = '';

-- 9. Change the 'Date of Birth' column name into 'dob'.

ALTER TABLE customers RENAME COLUMN Date_Of_Birth TO dob;

-- 10. Find the max point holder customer.
 SELECT MAX(Points) FROM customers;

-- 11. Execute a query for the following scenario:
SELECT  First_Name, Last_Name, Points,
CASE
	WHEN Points <=999 THEN 'bronze members'
	WHEN Points <=1999 THEN 'silver members'
	WHEN Points <=2999 THEN 'gold members'
	ELSE 'platinum members'
END AS member_type FROM customers;















 
