-- users/  purchases /  purchase_items /  products

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------
-- 1. [Using max/min]: SELECT max(price) FROM products;
-- 2. [Using count]: SELECT count(*) FROM users;
-- 3. [Using sum]: SELECT sum(price) FROM purchase_items;
-- 4. [Using avg]: SELECT avg(price) FROM purchase_items;
--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------
-- 1. Find the total number of purchases.
SELECT COUNT(*) FROM PURCHASES;
--(or this line) SELECT * FROM PURCHASES;

-- 2. Find the average price of the items in the products table.
SELECT * FROM PRODUCTS;

SELECT AVG(PRICE) FROM PRODUCTS;

-- 3. Find the maximum price from the products that are NOT a
--    computer.
SELECT * FROM PRODUCTS;
SELECT MAX(PRICE) FROM PRODUCTS WHERE TITLE NOT LIKE '% Computer';

-- 4. Find the number of users with Gmail email addresses.
SELECT * FROM USERS;
SELECT COUNT(EMAIL) FROM USERS WHERE EMAIL LIKE '%@gmail.com';

-- 5. Using the purchase_items table, find the total dollar value of
--    all items with state "Returned".
SELECT * FROM PURCHASE_ITEMS;
SELECT SUM(PRICE) FROM PURCHASE_ITEMS WHERE STATUS = 'Returned';

-- 6. Find the average price of all products containing the word
--    "Book" in their title.
SELECT * FROM PRODUCTS;
SELECT * FROM PRODUCTS WHERE TITLE LIKE '% Book';
SELECT AVG(PRICE) FROM PRODUCTS WHERE TITLE LIKE '% Book';
----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------
-- 1. You use multiple aggregation functions in one SELECT. Using
--    only one query,
--    find the min(), max() and avg() of the prices in the product
--    table.
SELECT MIN(PRICE), MAX(PRICE), AVG(PRICE) FROM PRODUCTS;

-- 2. In one query, find the difference between the price of the most
--    expensive and least expensive product.
SELECT MAX(PRICE) FROM PRODUCTS;
SELECT MIN(PRICE) FROM PRODUCTS;
SELECT MAX(PRICE) -  MIN(PRICE) FROM PRODUCTS;