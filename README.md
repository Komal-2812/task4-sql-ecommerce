Task 4: SQL for Data Analysis

📌 Objective
Perform SQL-based data analysis using an Ecommerce dataset with various query types including joins, aggregations, subqueries, views, and indexing.

🛠️ Tools Used
- MySQL Workbench
- Sample dataset: EcommerceSales.csv
  
✅ Features Implemented
- Basic Queries (SELECT, WHERE, ORDER BY)
- Aggregates (SUM, COUNT, AVG, MAX)
- GROUP BY + HAVING
- JOINs with lookup table (region managers)
- Subqueries
- Views
  
✅ SQL Features Implemented
   1. 🔎 Basic Queries
    - View all data
    - Filter orders by country, sales amount, discount, etc.
    - Sorting by Sales or Profit
     
   2. 📊 Aggregate Functions
    - `SUM()`, `AVG()`, `MAX()`, `COUNT()`
    - Total revenue, average profit, quantity statistics

   3. 📦 GROUP BY + HAVING
    - Summarize total sales and profit per category, subcategory, country, or region
    - Filter grouped data using `HAVING`

   4. 🔗 JOINS (with Lookup Tables)
    - Joined `ecommercesales` with `region_managers` to relate orders with regional managers
    - Performed `INNER JOIN`, `LEFT JOIN`, and simulated `RIGHT JOIN`

   5. 🧩 Subqueries
    - Subqueries inside `WHERE` and `IN` clauses
    - Correlated subqueries
    - Used for identifying top-selling products, profitable countries, and high-discount orders

   6. 👓 Views
    - Created virtual tables for:
      - High-value orders (`Sales > 1000`)
      - Loss-making orders (`Profit < 0`)
      - Region-wise sales summaries
      - Top 10 most profitable orders

