# Online-store-database
# Online Store Database (SQL)

## Description

This Online Store Database is a simple SQL project designed to manage customers, products, and orders in an online shopping system. It demonstrates basic database design and SQL operations using related tables.

## Features

- Stores customer information
- Maintains product details
- Records customer orders
- Uses primary and foreign keys
- Supports data insertion, updating, and deletion
- Demonstrates SQL JOIN queries

## Technologies Used

- SQL
- MySQL

## Database Structure

The project contains three tables:

- Customers
- Products
- Orders

## How to Run

1. Open MySQL Workbench or any SQL editor.
2. Create the database.
3. Execute the `create_tables.sql` file.
4. Execute the `insert_data.sql` file.
5. Run the queries from `queries.sql` to view and manage the data.

## Sample Queries

```sql
SELECT * FROM Customers;

SELECT * FROM Products;

SELECT * FROM Orders;

SELECT Customers.customer_name,
Products.product_name,
Orders.quantity
FROM Orders
JOIN Customers
ON Orders.customer_id = Customers.customer_id
JOIN Products
ON Orders.product_id = Products.product_id;
```

## Project Structure

```
Online-Store-Database/
│
├── Online_Store_database.sql
├── README.md
└── .gitignore
```

## Future Improvements

- Add Suppliers table
- Add Categories table
- Calculate total order value
- Implement inventory management
- Create views and stored procedures

## SQL Concepts Used

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- UPDATE
- DELETE
- WHERE
- INNER JOIN
- PRIMARY KEY
- FOREIGN KEY

## Author

[Mahima
](https://github.com/mahima-creator)
