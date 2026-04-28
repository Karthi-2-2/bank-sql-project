# 🏦 Bank SQL Project

## Overview
Basic SQL project demonstrating Customers, Accounts, and Transactions tables.

## Features
- Table creation
- Data insertion
- Joins
- Aggregate queries (SUM)
- Min & Max balance queries

## Files
- bank_project.sql

## Author
Karthikeyan

## Output Preview

![SQL Output](./output.png.jpeg)  

## How to Run

1. Open MySQL
2. Run bank_project.sql
3. Run SELECT queries

## Sample Queries

SELECT SUM(balance) FROM accounts;

SELECT MAX(balance) FROM accounts;

SELECT c.name, a.balance 
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id;
