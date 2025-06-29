-- 1. View all records
SELECT * FROM ecommercesales;

-- 2. View orders where Sales > 1000
SELECT * FROM ecommercesales
WHERE Sales > 1000;

-- 3. Show only Product and Sales for German customers
SELECT Product, Sales FROM ecommercesales
WHERE Country = 'Germany';

-- ✅ 4. Show all unique product categories
SELECT DISTINCT Category FROM ecommercesales;

-- ✅ 5.Show orders made in India
SELECT * FROM ecommercesales
WHERE Country = 'India';

-- ✅ 6. Show orders made in India
SELECT * FROM ecommercesales
WHERE Country = 'India';
