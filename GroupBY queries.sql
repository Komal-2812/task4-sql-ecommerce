-- ✅ Show total sales grouped by Category
SELECT Category, SUM(Sales) AS total_sales
FROM ecommercesales
GROUP BY Category; 

-- ✅ Show total profit per Country
SELECT Country, SUM(Profit) AS total_profit
FROM ecommercesales
GROUP BY Country;

-- ✅ Show number of orders per Region
SELECT Region, COUNT(*) AS total_orders
FROM ecommercesales
GROUP BY Region;

-- ✅ Show average discount per SubCategory
SELECT Category, AVG(Discount) AS avg_discount
FROM ecommercesales
GROUP BY Category;

-- ✅ Show products with more than 5 orders and total sales above ₹5000
SELECT Product, COUNT(*) AS order_count, SUM(Sales) AS total_sales
FROM ecommercesales
GROUP BY Product
HAVING COUNT(*) > 5 AND SUM(Sales) > 5000;