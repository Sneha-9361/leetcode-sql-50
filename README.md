# LeetCode SQL 50 Solutions (MySQL)

Solutions, clean queries, and logic breakdowns for the **LeetCode Top SQL 50** study plan using MySQL 8.0.

---

## Progress Tracker

![Progress](https://img.shields.io/badge/Progress-38%20%2F%2050%20Completed-brightgreen?style=for-the-badge)

- **Status:** 38 / 50 Solved (76%)
- **Engine:** MySQL 8.0
- **Focus:** Data Engineering & Analytics interview preparation

---

## Solved Problems Log

| # | Problem Name | Difficulty | Key Concept | Solution |
|---|---|---|---|---|
| 1757 | Recyclable and Low Fat Products | Easy | Basic Filtering (`WHERE`) | `solutions/1757.sql` |
| 584 | Find Customer Referee | Easy | Handling `NULL` (`IS NULL`) | `solutions/584.sql` |
| 595 | Big Countries | Easy | Multiple Conditions (`OR`) | `solutions/595.sql` |
| 1148 | Article Views I | Easy | Deduplication (`DISTINCT`, `ORDER BY`) | `solutions/1148.sql` |
| 1683 | Invalid Tweets | Easy | String Length (`LENGTH()`) | `solutions/1683.sql` |
| 1378 | Replace Employee ID With The Unique Identifier | Easy | `LEFT JOIN` | `solutions/1378.sql` |
| 1068 | Product Sales Analysis I | Easy | `INNER JOIN` | `solutions/1068.sql` |
| 1581 | Customer Who Visited but Did Not Make Any Transactions | Easy | `LEFT JOIN` with `IS NULL` | `solutions/1581.sql` |
| 197 | Rising Temperature | Easy | Self Join, `DATEDIFF()` | `solutions/197.sql` |
| 1661 | Average Time of Process per Machine | Easy | Self Join, `AVG()`, `ROUND()` | `solutions/1661.sql` |
| 577 | Employee Bonus | Easy | `LEFT JOIN`, `NULL` check | `solutions/577.sql` |
| 1280 | Students and Examinations | Easy | `CROSS JOIN`, `LEFT JOIN`, `COUNT()` | `solutions/1280.sql` |
| 570 | Managers with at Least 5 Direct Reports | Medium | `GROUP BY`, `HAVING COUNT() >= 5` | `solutions/570.sql` |
| 1934 | Confirmation Rate | Medium | `LEFT JOIN`, `AVG(IF(...))` | `solutions/1934.sql` |
| 620 | Not Boring Movies | Easy | Modulo (`id % 2 != 0`) | `solutions/620.sql` |
| 1251 | Average Selling Price | Easy | `LEFT JOIN`, `ROUND()`, `IFNULL()` | `solutions/1251.sql` |
| 1075 | Project Employees I | Easy | `INNER JOIN`, `AVG()`, `ROUND()` | `solutions/1075.sql` |
| 1633 | Percentage of Users Attended a Contest | Easy | Subquery inside `SELECT` | `solutions/1633.sql` |
| 1211 | Queries Quality and Percentage | Easy | Conditional Aggregation | `solutions/1211.sql` |
| 1193 | Monthly Transactions I | Medium | `DATE_FORMAT()`, `SUM(IF(...))` | `solutions/1193.sql` |
| 1174 | Immediate Food Delivery II | Medium | Subquery with `MIN(order_date)` | `solutions/1174.sql` |
| 550 | Game Play Analysis IV | Medium | Self Join with `DATE_ADD()` | `solutions/550.sql` |
| 2356 | Number of Unique Subjects Taught by Each Teacher | Easy | `COUNT(DISTINCT ...)` | `solutions/2356.sql` |
| 1141 | User Activity for the Past 30 Days I | Easy | Date Window Filtering | `solutions/1141.sql` |
| 1070 | Product Sales Analysis III | Medium | Subquery matching `(product_id, year)` | `solutions/1070.sql` |
| 596 | Classes More Than 5 Students | Easy | `GROUP BY`, `HAVING COUNT() >= 5` | `solutions/596.sql` |
| 1729 | Find Followers Count | Easy | `GROUP BY`, `ORDER BY` | `solutions/1729.sql` |
| 619 | Biggest Single Number | Easy | Subquery with `COUNT() = 1` | `solutions/619.sql` |
| 1045 | Customers Who Bought All Products | Medium | `HAVING COUNT(DISTINCT) = (SELECT ...)`| `solutions/1045.sql` |
| 1731 | The Number of Employees Which Report to Each Employee | Easy | Self Join, `ROUND(AVG())` | `solutions/1731.sql` |
| 1789 | Primary Department for Each Employee | Easy | `UNION` / `COUNT() OVER()` | `solutions/1789.sql` |
| 610 | Triangle Judgement | Easy | Conditional `CASE WHEN` | `solutions/610.sql` |
| 180 | Consecutive Numbers | Medium | Self Join / Window `LEAD()` | `solutions/180.sql` |
| 1164 | Product Price at a Given Date | Medium | Subquery / `UNION` fallback | `solutions/1164.sql` |
| 1204 | Last Person to Fit in the Bus | Medium | Running Total `SUM() OVER()` | `solutions/1204.sql` |
| 1907 | Count Salary Categories | Medium | `UNION` with category buckets | `solutions/1907.sql` |
| 1978 | Employees Whose Manager Left the Company | Easy | Subquery with `NOT IN`, `WHERE salary < 30000` | `solutions/1978.sql` |
| 626 | Exchange Seats | Medium | `CASE WHEN`, `LEAD()`, `LAG()` | `solutions/626.sql` |

---

## Repository Structure

```text
leetcode-sql-50/
├── README.md
└── solutions/
    ├── 1757_recyclable_and_low_fat_products.sql
    ├── 1978_employees_whose_manager_left_the_company.sql
    ├── 626_exchange_seats.sql
    └── ...
