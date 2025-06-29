-- ✅ 1. Create a view for high-value orders (Sales > 1000)
CREATE VIEW high_value_orders AS
SELECT * FROM ecommercesales
WHERE Sales > 1000;
SELECT * FROM high_value_orders;
 
 -- ✅ 2. Create a view for loss-making orders (negative profit)
CREATE VIEW loss_orders AS
SELECT * FROM ecommercesales
WHERE Profit < 0;
SELECT * FROM loss_orders;

-- ✅ 3. Create a view to summarize total sales per region
CREATE VIEW region_sales_summary AS
SELECT Region, SUM(Sales) AS total_sales
FROM ecommercesales
GROUP BY Region;
SELECT * FROM region_sales_summary;

-- ✅ 4. Create a view showing top 10 profitable orders
CREATE VIEW top_10_orders_by_profit AS
SELECT * FROM ecommercesales
ORDER BY Profit DESC
LIMIT 10;
SELECT * FROM top_10_orders_by_profit;
