-- INNER JOIN: Show each order with its region manager
SELECT e.OrderID, e.Region, r.ManagerName
FROM ecommercesales e
INNER JOIN region_managers r
ON e.Region = r.Region;

-- LEFT JOIN: Show all orders, even if no region manager is assigned
SELECT e.OrderID, e.Region, r.ManagerName
FROM ecommercesales e
LEFT JOIN region_managers r
ON e.Region = r.Region;

-- RIGHT JOIN (optional): Show all region managers and their orders (if any)
-- Note: MySQL does not support RIGHT JOIN on non-InnoDB engines, simulate with LEFT JOIN reversed
SELECT r.Region, r.ManagerName, e.OrderID
FROM region_managers r
LEFT JOIN ecommercesales e
ON r.Region = e.Region;

--  JOIN with GROUP BY: Total sales per region manager
SELECT r.ManagerName, r.Region, SUM(e.Sales) AS total_sales
FROM ecommercesales e
JOIN region_managers r ON e.Region = r.Region
GROUP BY r.ManagerName, r.Region;

--  JOIN to count how many orders each manager handled
SELECT r.ManagerName, COUNT(e.OrderID) AS total_orders
FROM region_managers r
LEFT JOIN ecommercesales e ON r.Region = e.Region
GROUP BY r.ManagerName;


