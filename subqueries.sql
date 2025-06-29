-- Countries where total sales exceed ₹10,000
SELECT DISTINCT Country
FROM ecommercesales
WHERE Country IN (
  SELECT Country
  FROM ecommercesales
  GROUP BY Country
  HAVING SUM(Sales) > 1000 );
  -- Products with average discount greater than 0.2 (20%)
SELECT DISTINCT Product
FROM ecommercesales
WHERE Product IN (
  SELECT Product
  FROM ecommercesales
  GROUP BY Product
  HAVING AVG(Discount) > 0.1
);

-- Top 5 highest-profit orders using a subquery
-- Top 5 profit orders using JOIN instead of IN + LIMIT
SELECT e.*
FROM ecommercesales e
JOIN (
  SELECT Profit
  FROM ecommercesales
  ORDER BY Profit DESC
  LIMIT 5
) AS top_profits
ON e.Profit = top_profits.Profit;

-- Products where total profit exceeds ₹500
SELECT DISTINCT Product
FROM ecommercesales
WHERE Product IN (
  SELECT Product
  FROM ecommercesales
  GROUP BY Product
  HAVING SUM(Profit) > 500
);

-- Regions with heavy order volume
SELECT DISTINCT Region
FROM ecommercesales
WHERE Region IN (
  SELECT Region
  FROM ecommercesales
  GROUP BY Region
  HAVING COUNT(*) > 50
);
