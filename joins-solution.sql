--1. Get all customers and their addresses.
--1. Answer = SELECT * FROM customers
--   JOIN addresses ON addresses.customer_id = customers.id;

--2. Get all orders and their line items.
--2. Answer = SELECT * FROM line_items
--   JOIN orders ON orders.id = line_items.id;

--3. Which warehouses have cheetos?
--3. Answer = SELECT * FROM warehouse
--   JOIN warehouse_product ON warehouse_product.warehouse_id = warehouse.id
--   JOIN products ON products.id = warehouse_product.product_id
--   WHERE products.id = 5;

--4. Which warehouses have diet pepsi?
--4. Answer = SELECT * FROM warehouse
--   JOIN warehouse_product ON warehouse_product.warehouse_id = warehouse.id
--   JOIN products ON products.id = warehouse_product.product_id
--   WHERE products.id = 6;

--5. Get the number of orders for each customer. 
--   NOTE: It is OK if those without orders are not included in results.
--5. Answer = SELECT customers.last_name, COUNT(*) FROM orders
--   JOIN addresses ON addresses.id = orders.address_id
--   JOIN customers ON customers.id = addresses.customer_id
--   GROUP BY customers.last_name;

-- 6. How many customers do we have?
-- 6. Answer = SELECT COUNT(*) FROM customers;

-- 7. How many products do we carry?
-- 7. Answer = SELECT COUNT(*) FROM products;

-- 8. What is the total available on-hand quantity of diet pepsi?
-- 8. Answer = SELECT on_hand, COUNT(*) FROM products
--    JOIN warehouse_product ON warehouse_product.product_id = products.id
--    WHERE products.description = 'diet pepsi'
--    GROUP BY warehouse_product.on_hand;