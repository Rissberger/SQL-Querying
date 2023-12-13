-- Comments in SQL Start with dash-dash --
-- Add a product with the name "chair"
INSERT INTO products (name, price, can_be_returned) 
VALUES ('chair', 44.00, false);

-- Add a product with the name "stool"
INSERT INTO products (name, price, can_be_returned)
 VALUES ('stool', 25.99, true);

-- Add a product with the name "table"
INSERT INTO products (name, price, can_be_returned)
 VALUES ('table', 124.00, false);

-- Display all rows and columns
SELECT * FROM products;

-- Display all product names
SELECT name FROM products;

-- Display names and prices of products
SELECT name, price FROM products;

-- Add a new product with the name "lamp"
INSERT INTO products (name, price, can_be_returned)
 VALUES ('lamp', 30.00, true);

-- Display products that can be returned
SELECT * FROM products WHERE can_be_returned = true;

-- Display products with price less than 44.00
SELECT * FROM products WHERE price < 44.00;

-- Display products priced between 22.50 and 99.99
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

-- $20 off sale: Decrease prices by $20
UPDATE products SET price = price - 20;

-- Remove products priced less than $25
DELETE FROM products WHERE price < 25;

-- Post-sale: Increase remaining prices by $20
UPDATE products SET price = price + 20;

-- New policy: Everything is returnable
UPDATE products SET can_be_returned = true;
