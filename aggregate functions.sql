-- 1. Count total number of orders
SELECT COUNT(*) AS total_orders FROM ecommercesales;

-- 2. Calculate total sales amount
SELECT SUM(Sales) AS total_sales FROM ecommercesales;

-- 3. Calculate average profit
SELECT AVG(Profit) AS avg_profit FROM ecommercesales;

-- 4. Show the total number of records (orders)
SELECT COUNT(*) AS total_orders FROM ecommercesales;

-- 5. Show the total revenue (sales amount)
SELECT SUM(Sales) AS total_revenue FROM ecommercesales;

-- 6. Show the average discount offered across all orders
SELECT AVG(Discount) AS average_discount FROM ecommercesales;


