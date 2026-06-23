mysql> CREATE DATABASE OnlinestoreDB;
Query OK, 1 row affected (0.13 sec)

mysql> USE OnlinestoreDB;
Database changed
mysql> CREATE TABLE Customers(Customer_id INT PRIMARY KEY,Customer_name VARCHAR(50), City VARCHAR(50));
Query OK, 0 rows affected (0.14 sec)

mysql> CREATE TABLE Products(Product_id INT PRIMARY KEY,Product_name VARCHAR(50),Price DECIMAL(10,2));
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Orders(Order_id INT PRIMARY KEY,Customer_id INT,Product_id INT,quantity INT,FOREIGN KEY(Customer_id)REFERENCES Customers(Customer_id),FOREIGN KEY(Product_id) REFERENCES Products(Product_id));
Query OK, 0 rows affected (0.09 sec)

mysql> INSERT INTO Customers VALUES(101,'Madhu','Chennai'),(102,'Rahul','Bangalore'),(103,'Ananya','Hyderabad'),(104,'Kavin','Coimbatore'),(105,'Priya','Madurai');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0


mysql> INSERT INTO PRODUCTS VALUES (1,'Laptop',55000),(2,'Keyboard',1200),(3,'Mouse',800),(4,'Headphones',2500),(5,'Webcame',3000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0


mysql> INSERT INTO Orders VALUES(1001,101,1,1),(1002,102,3,2),(1003,103,2,1),(1004,104,5,1),(1005,105,4,2);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Customers;
+-------------+---------------+------------+
| Customer_id | Customer_name | City       |
+-------------+---------------+------------+
|         101 | Madhu         | Chennai    |
|         102 | Rahul         | Bangalore  |
|         103 | Ananya        | Hyderabad  |
|         104 | Kavin         | Coimbatore |
|         105 | Priya         | Madurai    |
+-------------+---------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Products;
+------------+--------------+----------+
| Product_id | Product_name | Price    |
+------------+--------------+----------+
|          1 | Laptop       | 55000.00 |
|          2 | Keyboard     |  1200.00 |
|          3 | Mouse        |   800.00 |
|          4 | Headphones   |  2500.00 |
|          5 | Webcame      |  3000.00 |
+------------+--------------+----------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Orders;
+----------+-------------+------------+----------+
| Order_id | Customer_id | Product_id | quantity |
+----------+-------------+------------+----------+
|     1001 |         101 |          1 |        1 |
|     1002 |         102 |          3 |        2 |
|     1003 |         103 |          2 |        1 |
|     1004 |         104 |          5 |        1 |
|     1005 |         105 |          4 |        2 |
+----------+-------------+------------+----------+
5 rows in set (0.00 sec)

mysql> SELECT Customers.Customer_name,Products.product_name,Orders.quantity FROM Orders JOIN Customers ON Orders.Customer_id=Customers.Customer_id JOIN Products ON orders.product_id=products.product_id;
+---------------+--------------+----------+
| Customer_name | product_name | quantity |
+---------------+--------------+----------+
| Madhu         | Laptop       |        1 |
| Rahul         | Mouse        |        2 |
| Ananya        | Keyboard     |        1 |
| Kavin         | Webcame      |        1 |
| Priya         | Headphones   |        2 |
+---------------+--------------+----------+
5 rows in set (0.01 sec)

mysql> SELECT * FROM Products WHERE Price>2000;
+------------+--------------+----------+
| Product_id | Product_name | Price    |
+------------+--------------+----------+
|          1 | Laptop       | 55000.00 |
|          4 | Headphones   |  2500.00 |
|          5 | Webcame      |  3000.00 |
+------------+--------------+----------+
3 rows in set (0.00 sec)

mysql> UPDATE Products SET Price=60000 WHERE Product_id=1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT Count(*)AS Total_Customers FROM Customers;
+-----------------+
| Total_Customers |
+-----------------+
|               5 |
+-----------------+
1 row in set (0.01 sec)

mysql> SELECT AVG(Price)AS Average_price FROM Products;
+---------------+
| Average_price |
+---------------+
|  13500.000000 |
+---------------+
1 row in set (0.00 sec)

mysql> SELECT SUM(quantity)AS Total_Items_Sold FROM Orders;
+------------------+
| Total_Items_Sold |
+------------------+
|                7 |
+------------------+
1 row in set (0.00 sec)

mysql> DELETE  FROM Orders WHERE Order_id=1005;
Query OK, 1 row affected (0.01 sec)