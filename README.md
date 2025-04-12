# 🛒 Retail Industry Project Using SQL

This project demonstrates how to use SQL for database creation, data insertion, and performing analytical queries in a retail industry context. It is designed to simulate a simplified retail environment with products, customers, and orders.

## 📂 Project Structure

| File Name                                | Description                                       |
|-----------------------------------------|---------------------------------------------------|
| `Retail_Industry_project.sql`           | SQL script to create tables for the retail model |
| `Queries_on_retail_industry_project.sql`| Script to insert data and run business queries    |

## 📌 Project Objectives

- Create a normalized relational database for a retail system
- Insert sample data into the database
- Run queries to generate insights such as:
  - Sales trends
  - Customer behavior
  - Popular products
  - Category-wise performance

## 🧱 Database Schema

The database consists of the following tables:

- **Products**: Stores product information (ID, name, category, price, stock)
- **Customers**: Stores customer details (ID, name, email, phone, address)
- **Orders**: Tracks orders placed (ID, customer, date, amount)
- **OrderDetails**: Tracks which products are in each order, their quantity, and cost

All necessary foreign key constraints have been added to maintain referential integrity.

## 🔽 How to Run

1. Create a new database named `retail_industry` in your SQL environment:
    ```sql
    CREATE DATABASE retail_industry;
    USE retail_industry;
    ```

2. Run the `Retail_Industry_project.sql` file to create the schema:
    ```sql
    SOURCE Retail_Industry_project.sql;
    ```

3. Run the `Queries_on_retail_industry_project.sql` file to insert data and execute queries:
    ```sql
    SOURCE Queries_on_retail_industry_project.sql;
    ```
    
