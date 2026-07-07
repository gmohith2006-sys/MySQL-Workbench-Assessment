-- ============================================================
-- Week 3 Assessment Answers
-- Name : G. Mohit
-- ============================================================

-- ============================================================
-- FlipCart Products Database — Week 3 Assessment Dataset
-- The Unlox Academy · DA/DS Track
-- ============================================================
-- HOW TO RUN:
--   1. Open MySQL Workbench
--   2. File > Open SQL Script... > select this file
--   3. Press Ctrl+Shift+Enter to run all
--   4. Refresh Schemas panel — you should see 'flipcart' with 'products' table
--   5. Verify with: SELECT COUNT(*) FROM flipcart.products;  -- should return 30
-- ============================================================

CREATE DATABASE IF NOT EXISTS flipcart;
USE flipcart;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id       INT PRIMARY KEY,
    product_name     VARCHAR(80),
    category         VARCHAR(30),
    brand            VARCHAR(30),
    price            DECIMAL(10, 2),
    stock_quantity   INT,
    is_active        BOOLEAN,
    launched_date    DATE,
    avg_rating       DECIMAL(3, 2),
    discount_pct     INT
);

INSERT INTO products VALUES
-- Electronics (8 products)
(1,  'Sony Bravia 55 TV',        'Electronics', 'Sony',      65000.00,  12, TRUE,  '2022-05-10', 4.50, 15),
(2,  'Apple iPhone 15',           'Electronics', 'Apple',     79999.00,  25, TRUE,  '2023-09-22', 4.80,  5),
(3,  'boAt Airdopes 141',         'Electronics', 'boAt',       1499.00, 200, TRUE,  '2022-11-15', 4.20, 30),
(4,  'Xiaomi Redmi Buds 4',       'Electronics', 'Xiaomi',      799.00, 350, TRUE,  '2023-03-08', 4.00, 20),
(5,  'Samsung Galaxy Watch',      'Electronics', 'Samsung',   22999.00,  45, TRUE,  '2023-06-15', 4.40, 10),
(6,  'OnePlus Nord Buds 2',       'Electronics', 'OnePlus',    2199.00, 180, TRUE,  '2024-01-10', NULL, 25),
(7,  'JBL Flip 6 Speaker',        'Electronics', 'JBL',        4999.00,   0, TRUE,  '2022-07-20', 4.30, 15),
(8,  'Nokia 105',                 'Electronics', 'Nokia',      1499.00, 500, FALSE, '2019-01-15', 3.80,  0),
-- Apparel (6 products)
(9,  'Nike Air Max Shoes',        'Apparel',     'Nike',       8999.00,  65, TRUE,  '2023-02-20', 4.60, 20),
(10, 'Levis 511 Slim Jeans',      'Apparel',     'Levis',      2999.00, 120, TRUE,  '2022-08-15', 4.30, 30),
(11, 'Puma Essential T-Shirt',    'Apparel',     'Puma',       1299.00, 250, TRUE,  '2023-05-10', 4.10, 40),
(12, 'Van Heusen Formal Shirt',   'Apparel',     'Van Heusen', 1899.00,  90, TRUE,  '2022-09-25', 4.20, 25),
(13, 'Fabindia Cotton Kurti',     'Apparel',     'Fabindia',   2499.00,  75, TRUE,  '2024-02-01', NULL, 10),
(14, 'Adidas Track Pants',        'Apparel',     'Adidas',     3499.00, 130, TRUE,  '2023-01-15', 4.50, 15),
-- Home (5 products)
(15, 'Prestige Pressure Cooker',  'Home',        'Prestige',   1999.00,  85, TRUE,  '2022-06-10', 4.40, 20),
(16, 'Milton Water Bottle 1L',    'Home',        'Milton',      449.00, 400, TRUE,  '2023-03-15', 4.00, 25),
(17, 'Godrej Bedsheet Set',       'Home',        'Godrej',     1499.00, 150, TRUE,  '2023-08-20', 4.20, 30),
(18, 'IKEA Study Table',          'Home',        'IKEA',       5999.00,  40, TRUE,  '2024-01-20', NULL,  0),
(19, 'Havells Ceiling Fan',       'Home',        'Havells',    3299.00,  60, TRUE,  '2022-04-15', 4.30, 15),
-- Books (4 products)
(20, 'The Silent Patient',        'Books',       'Alex Michaelides', 399.00, 200, TRUE, '2020-07-15', 4.50, 20),
(21, 'Atomic Habits',             'Books',       'James Clear',      349.00, 350, TRUE, '2019-10-16', 4.70, 25),
(22, 'Rich Dad Poor Dad',         'Books',       'Robert Kiyosaki',  299.00, 180, TRUE, '2017-04-01', 4.40, 30),
(23, 'Sapiens',                   'Books',       'Yuval Harari',     499.00,  90, TRUE, '2018-11-15', 4.60, 15),
-- Beauty (4 products)
(24, 'Nykaa Matte Lipstick',      'Beauty',      'Nykaa',       599.00, 320, TRUE, '2023-04-10', 4.20, 20),
(25, 'Lakme Eye Liner',           'Beauty',      'Lakme',       299.00, 500, TRUE, '2022-05-20', 4.10, 25),
(26, 'Mamaearth Face Wash',       'Beauty',      'Mamaearth',   249.00, 400, TRUE, '2023-07-15', 4.30, 30),
(27, 'WOW Skin Vitamin C Serum',  'Beauty',      'WOW',         899.00,   0, TRUE, '2023-11-10', 4.50, 40),
-- Sports (3 products)
(28, 'Cosco Cricket Bat',         'Sports',      'Cosco',      1299.00,  45, TRUE, '2022-10-15', 4.00, 10),
(29, 'Yonex Badminton Racket',    'Sports',      'Yonex',      2499.00,  80, TRUE, '2023-06-20', 4.40, 15),
(30, 'Nivia Football Size 5',     'Sports',      'Nivia',       899.00, 120, TRUE, '2023-05-05', 4.20, 25);

-- Verify the data loaded
SELECT COUNT(*) AS total_products FROM products;
SELECT category, COUNT(*) AS count FROM products GROUP BY category ORDER BY count DESC;


-- ============================================================
-- SECTION A - THEORY (Multiple Choice)
-- ============================================================

-- A1. In MySQL, what is the relationship between a schema and a database?
-- Answer: c) Schema and database are the same thing in MySQL

-- A2. Which SQL command family does TRUNCATE TABLE belong to?
-- Answer: b) DDL (Data Definition Language)

-- A3. You are designing a table to store product prices for an e-commerce site (e.g. ₹299.50, ₹79,999.00). Which data type is the most appropriate?
-- Answer: b) DECIMAL

-- A4. You try to INSERT a row into an orders table with a customer_id that doesn't exist in the customers table. There is a foreign key constraint. What happens?
-- Answer: c) The INSERT fails with a foreign key constraint error

-- A5. Which of the following statements is TRUE about WHERE vs HAVING?
-- Answer: b) WHERE filters individual rows before aggregation; HAVING filters groups after aggregation

-- A6. What is the result of the query: SELECT * FROM products WHERE avg_rating = NULL;
-- Answer: a) Returns all rows where avg_rating is NULL

-- A7. What is the difference between COUNT(*) and COUNT(column_name)?
-- Answer: b) COUNT(*) counts all rows; COUNT(column_name) counts only non-NULL values in that column

-- A8. Which command permanently removes an entire table (both structure and data), and CANNOT be undone by ROLLBACK?
-- Answer: c) DROP TABLE table_name

-- ============================================================
-- SECTION B - OUTPUT PREDICTION
-- ============================================================

-- B1. What does this query return?
-- SELECT COUNT(*) FROM products WHERE category = 'Electronics';
-- Answer: This query returns a single number: the total count of products where the category is 'Electronics'.

-- B2. How many rows does this query return?
-- SELECT * FROM products WHERE price BETWEEN 1000 AND 3000;
-- Answer: This query returns all columns for products whose price is between 1000 and 3000 which is inclusive. The number of rows returned depends on the data in the 'products' table that satisfies this condition.

-- B3. What is the output of this query?
-- SELECT product_name FROM products WHERE category = 'Books' AND price < 400 ORDER BY price DESC LIMIT 1;
-- Answer: This query returns the product_name of the most expensive book that costs less than 400. It will return a single row with one column (product_name).

-- B4. How many rows does this query return?
-- SELECT * FROM products WHERE avg_rating IS NULL;
-- Answer: This query returns all columns for products that have a NULL value in the 'avg_rating' column. The number of rows returned depends on how many products in the 'products' table have a missing average rating.

-- B5. What single value does this query return?
-- SELECT MAX(price) FROM products WHERE category = 'Books';
-- Answer: This query returns the highest price among all products in the 'Books' category. It will return a single numerical value.

-- B6. What does this query return?
-- SELECT category, COUNT(*) FROM products WHERE is_active = TRUE GROUP BY category HAVING COUNT(*) > 4;
-- Answer: This query returns the categories that have more than 4 active products along with the count of active products in each of those categories. It will return multiple rows each with a category name and a count.

-- B7. What does the output look like?
-- SELECT product_name, CASE WHEN price < 500 THEN 'Budget' WHEN price < 5000 THEN 'Mid' ELSE 'Premium' END AS tier FROM products WHERE category = 'Beauty';
-- Answer: This query returns the product name and a 'tier' for each product in the 'Beauty' category. The tier is determined by the price: 'Budget' for prices less than 500, 'Mid' for prices less than 5000 (but 500 or more), and 'Premium' for prices 5000 or more. It will return multiple rows each with a product name and its corresponding tier.

-- B8. What does this query return?
-- SELECT product_name, COALESCE(avg_rating, 0) AS rating FROM products WHERE stock_quantity = 0;
-- Answer: This query returns the product name and its average rating (or 0 if the average rating is NULL) for all products that are out of stock (stock_quantity = 0). It will return multiple rows, each with a product name and its rating.

-- ============================================================
-- SECTION C - APPLIED SQL QUERIES
-- ============================================================

-- C1. Basic SELECT + WHERE + ORDER BY: Write a query to display all products with all columns.
SELECT * FROM products;

-- C2. Write a query that shows the product_name and price of all Books.
SELECT product_name, price FROM products WHERE category = 'Books';

-- C3. Write a query to list all products priced above ₹10,000, sorted from highest price to lowest.
SELECT * FROM products WHERE price > 10000 ORDER BY price DESC;

-- C4. Write a query to display the top 5 most expensive products in the Electronics category (show product name and price).
SELECT product_name, price FROM products WHERE category = 'Electronics' ORDER BY price DESC LIMIT 5;

-- C5. Write a query to list all products in either Electronics or Apparel category. Use the IN operator.
SELECT * FROM products WHERE category IN ('Electronics', 'Apparel');

-- C6. Write a query to find all products with a price between ₹500 and ₹2,000 (inclusive).
SELECT * FROM products WHERE price BETWEEN 500 AND 2000;

-- C7. Write a query to find all products whose product_name contains the word 'Watch'.
SELECT * FROM products WHERE product_name LIKE '%Watch%';

-- C8. Write a query to find all products whose brand starts with the letter 'S'.
SELECT * FROM products WHERE brand LIKE 'S%';

-- C9. Write a query to list all the unique categories in the products table.
SELECT DISTINCT category FROM products;

-- C10. Write a query to find the total number of products in the entire catalogue.
SELECT COUNT(*) AS total_products FROM products;

-- C11. Write a query to find the average price of all Books.
SELECT AVG(price) AS average_book_price FROM products WHERE category = 'Books';

-- C12. Write a single query that returns the maximum and minimum price across all products.
SELECT MAX(price) AS max_price, MIN(price) AS min_price FROM products;

-- C13. Write a query to count how many products are in each category.
SELECT category, COUNT(*) AS product_count FROM products GROUP BY category;

-- C14. Write a query to show the total stock quantity for each category.
SELECT category, SUM(stock_quantity) AS total_stock_quantity FROM products GROUP BY category;

-- ============================================================
-- ADVANCED SQL QUERIES
-- ============================================================

-- C15. Write a query to show the average price per category, sorted from highest average to lowest.
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category
ORDER BY average_price DESC;

-- C16. Write a query to show the count of products and the average price for each brand, showing only brands that have more than 1 product.
SELECT brand, COUNT(product_id) AS product_count, AVG(price) AS average_price
FROM products
GROUP BY brand
HAVING COUNT(product_id) > 1;

-- C17. Write a query to find categories that have more than 4 active products.
SELECT category
FROM products
WHERE is_active = TRUE
GROUP BY category
HAVING COUNT(product_id) > 4;

-- C18. Write a query to find the 3 most expensive products in the entire catalogue.
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 3;

-- C19. Write a query to find all categories where the average price is above ₹2,000.
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category
HAVING AVG(price) > 2000;

-- ============================================================
-- C6 - NULL HANDLING
-- ============================================================

-- C20. Write a query to list all products where the avg_rating is missing.
SELECT *
FROM products
WHERE avg_rating IS NULL;

-- C21. Write a query to show product_name and rating for all products. If avg_rating is NULL, display the text 'New Launch' instead.
SELECT
    product_name,
    COALESCE(avg_rating, 'New Launch') AS rating
FROM products;

-- ============================================================
-- C7 - CASE WHEN
-- ============================================================

-- C22. Write a query to display each product with a price_tier column classified as 'Budget' if price < ₹1,000, 'Mid' if price < ₹10,000, or 'Premium' if price >= ₹10,000.
SELECT
    product_name,
    price,
    CASE
        WHEN price < 1000 THEN 'Budget'
        WHEN price < 10000 THEN 'Mid'
        ELSE 'Premium'
    END AS price_tier
FROM products;

-- C23. For each category, write a query that shows the total product count and the count of 'Premium' products (price >= ₹10,000). Use SUM(CASE WHEN...).
SELECT
    category,
    COUNT(*) AS total_product_count,
    SUM(CASE WHEN price >= 10000 THEN 1 ELSE 0 END) AS premium_product_count
FROM products
GROUP BY category;

-- C24. Write a comprehensive query showing for each category (only categories with at least 3 products): total product count, count of active products, average price, and a category_tier column ('Cheap' if avg < ₹1500, 'Standard' if avg < ₹10000, 'Luxury' if avg >= ₹10000). Sort by average price descending.
SELECT
    category,
    COUNT(*) AS total_product_count,
    SUM(CASE WHEN is_active = TRUE THEN 1 ELSE 0 END) AS count_active_products,
    AVG(price) AS average_price,
    CASE
        WHEN AVG(price) < 1500 THEN 'Cheap'
        WHEN AVG(price) < 10000 THEN 'Standard'
        ELSE 'Luxury'
    END AS category_tier
FROM
    products
GROUP BY
    category
HAVING
    COUNT(*) >= 3
ORDER BY
    average_price DESC;
