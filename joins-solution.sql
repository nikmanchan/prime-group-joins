## Tasks
-- 1. Get all customers and their addresses.
SELECT * FROM "customers"
JOIN "addresses" ON "addresses"."customer_id"="customers"."id";
-- 2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM "orders"
JOIN "line_items" ON "line_items"."order_id"="orders"."id";
-- 3. Which warehouses have cheetos?
SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id"="warehouse"."id"
JOIN "products" ON "products"."id"="warehouse_product"."product_id"
WHERE "description" = 'cheetos';
-- 4. Which warehouses have diet pepsi?
SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id"="warehouse"."id"
JOIN "products" ON "products"."id"="warehouse_product"."product_id"
WHERE "description" = 'diet pepsi';
-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT "customers"."last_name", COUNT("orders"."address_id") FROM "customers"
JOIN "addresses" ON "addresses"."customer_id"="customers"."id"
JOIN "orders" ON "orders"."address_id"="addresses"."id"
GROUP BY "customers"."last_name";
-- 6. How many customers do we have?
SELECT "customers"."id", 
 COUNT ("customers"."id")
FROM
 "customers"
GROUP BY
"customers"."id";
-- 7. How many products do we carry?
SELECT COUNT ("products"."id")
FROM
 "products";
 
-- 8. What is the total available on-hand quantity of diet pepsi?
SELECT SUM("warehouse_product"."on_hand") FROM "warehouse_product"
JOIN "products" ON "products"."id"= "warehouse_product"."product_id"
WHERE "description" = 'diet pepsi';







-- Practice Selectors
SELECT * FROM "customers"
JOIN "addresses" ON "addresses"."customer_id"="customers"."id"
JOIN "orders" ON "orders"."address_id"="addresses"."id";

SELECT * FROM "addresses"
JOIN "orders" ON "orders"."address_id"="addresses"."id";

SELECT * FROM "orders"
JOIN "line_items" ON "line_items"."order_id"="orders"."id";

