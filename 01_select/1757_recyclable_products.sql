problem 1:
link:https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50
problem:1757. Recyclable and Low Fat Products
select product_id from Products
where low_fats="Y" and recyclable="Y"

problem 2:
problem:FIND CUSTOMER REFEREE
link:https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
select name from Customer
where referee_id!=2 or referee_id is null;


problem 3:
link:https://leetcode.com/problems/big-countries/?envType=study-plan-v2&envId=top-sql-50
problem :Big Countries
select name,population,area from World
where population>=25000000 or area>=3000000;


problem 4:
problem:Article Views
link:https://leetcode.com/problems/article-views-i/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select distinct(author_id) as id from Views
where author_id=viewer_id
order by author_id asc;

problem 5:
problem:Invalid Tweets
link:https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50
select tweet_id from Tweets
where char_length(content)>15;

problem 6:
problem:Replace employee id with unique identifier
link:https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/?envType=study-plan-v2&envId=top-sql-50
select eu.unique_id,e.name from Employees e left join 
EmployeeUNI eu on
e.id=eu.id;

problem 7:
problem:Product Sales Analysis I
link:https://leetcode.com/problems/product-sales-analysis-i/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select p.product_name,s.year,s.price from Sales s join Product p
on p.product_id=s.product_id;



problem 8:
problem:Customer Who Visited but Did Not Make Any Transactions
link:https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
SELECT customer_id, COUNT(v.visit_id) as count_no_trans 
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id