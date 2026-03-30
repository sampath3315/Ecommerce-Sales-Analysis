CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE sales (
    row_id INT,order_id VARCHAR(50),order_date DATE,ship_date DATE,ship_mode VARCHAR(50),customer_id VARCHAR(50),customer_name VARCHAR(100),segment VARCHAR(50),
    country VARCHAR(50),city VARCHAR(50),state VARCHAR(50),postal_code VARCHAR(20),region VARCHAR(50),product_id VARCHAR(50),
    category VARCHAR(50),sub_category VARCHAR(50),product_name VARCHAR(255),sales FLOAT);
SELECT * FROM sales LIMIT 10;
SELECT COUNT(*) FROM sales;
SELECT SUM(sales) AS total_revenue FROM sales;
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,SUM(sales) AS revenue FROM sales GROUP BY month ORDER BY month;
SELECT product_name, SUM(sales) AS revenue FROM sales GROUP BY product_name ORDER BY revenue DESC LIMIT 5;
SELECT customer_name, SUM(sales) AS total_spent FROM sales GROUP BY customer_name ORDER BY total_spent DESC LIMIT 10;
SELECT category, SUM(sales) AS total_sales FROM sales GROUP BY category;
SELECT region, SUM(sales) AS total_sales FROM sales GROUP BY region;
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(sales) AS revenue FROM sales GROUP BY month ORDER BY revenue DESC LIMIT 1;
