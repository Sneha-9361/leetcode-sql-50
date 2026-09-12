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
