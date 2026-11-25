SELECT * FROM pizzas
SELECT *FROM orders
SELECT *FROM order_details
SELECT COUNT(*) AS total_pizza
FROM pizzas;
SELECT COUNT(*) AS total_order
FROM orders;
SELECT *
FROM pizzas
WHERE category ='veg'
SELECT *
FROM pizzas
WHERE category = 'Non-Veg';
SELECT *
FROM pizzas
WHERE price > 300;
SELECT * FROM pizzas
WHERE size='Large'
SELECT * FROM pizzas
WHERE price =(SELECT MIN (price)FROM pizzas);
SELECT * FROM pizzas
WHERE price=(SELECT MAX(price)FROM pizzas);
SELECT * FROM pizzas
ORDER BY price ASC
SELECT * FROM pizzas
 ORDER BY price DESC
SELECT * FROM pizzas
WHERE price BETWEEN 200 AND 400;
SELECT * FROM pizzas
WHERE pizza_name LIKE 'P%';
SELECT *
FROM orders
WHERE order_date >= '2025-01-01'
SELECT * FROM orders
WHERE order_date='2025-1-10'
SELECT * FROM pizzas
ORDER BY price ASC
limit 5;
SELECT *FROM orders 
WHERE order_time BETWEEN '11:00:00' AND '12:00:00';
SELECT * FROM pizzas
WHERE price >200
SELECT AVG(price) AS average_price
FROM pizzas;
SELECT MAX(price)AS Min_price 
FROM pizzas
SELECT MIN(price)AS Max_price
FROM pizzas
SELECT SUM(quantity) AS total_pizzas_sold
FROM order_details;
SELECT COUNT(pizza_name) AS pizzas_in_each_category
FROM pizzas
SELECT 
catagory,
AVG(category) AS total_category
FROM pizzas
GROUP BY catagory;
SELECT
    pizza_id,
    SUM(quantity) AS total_quantity_sold
FROM order_details
GROUP BY pizza_id;
SELECT *
FROM orders
INNER JOIN pizzas
ON order_id=pizza_id
SELECT *
FROM orders AS o
INNER JOIN pizzas AS p
ON o.order_id = p.pizza_id;
SELECT
    o.order_id,
    p.pizza_id
FROM orders AS o
INNER JOIN order_details AS od
ON o.order_id = od.order_id
INNER JOIN pizzas AS p
ON od.pizza_id = p.pizza_id;