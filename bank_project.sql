CREATE TABLE Customers(
    customer_id INT,
    name VARCHAR(200),
    age INT,
    city VARCHAR(500)
);
INSERT INTO customers values
(1,'karthi','22','salem'),
(2,'keni','23','mumbai'),
(3,'ven','22','london');
SELECT * FROM Customers;

CREATE TABLE ACCOUNTS(
    account_id INT,
    customer_id INT,
    account_type VARCHAR(500),
    balance INT
);
INSERT INTO ACCOUNTS values
(110,1,'saving',2000),
(111,2,'current',5200),
(112,3,'current',2500);
SELECT*FROM accounts;
    
CREATE TABLE Transactions(
    transcation_id INT,
    account_id INT,
    amount INT,
    transaction_type VARCHAR(50),
    transcation_date Date
);
INSERT INTO TRANSACTIONS values
(1,110,2000,'deposit','2006-08-12'),
(2,111,5200,'saving','2005-12-08'),
(3,112,20000,'Deposit','2026-02-02'),
(4,113,10000,'Withdraw','2026-02-05');
SELECT*FROM Transactions;

SELECT c.name,a.account_type,a.balance
FROM ACCOUNTS a 
JOIN Customers c 
ON a.customer_id = c.customer_id;

SELECT sum(amount) AS total_transaction
FROM Transactions
WHERE transaction_type ='deposit';


SELECT c.name,
       SUM(t.amount) AS total_transaction
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
JOIN Customers c ON a.customer_id = c.customer_id
GROUP BY c.name;

SELECT c.name, a.balance
FROM ACCOUNTS a
JOIN Customers c 
ON a.customer_id = c.customer_id
ORDER BY a.balance asc
LIMIT 1;

SELECT c.name, a.balance
FROM ACCOUNTS a 
JOIN Customers c 
ON A.customer_id=C.customer_id
ORDER BY A.balance desc
LIMIT 1;
