problem 1:Recyclable and Low Fat Products
link:https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50
problem:1757. 
select product_id from Products
where low_fats="Y" and recyclable="Y"

problem 2:FIND CUSTOMER REFEREE
link:https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
select name from Customer
where referee_id!=2 or referee_id is null;


problem 3:Big Countries
link:https://leetcode.com/problems/big-countries/?envType=study-plan-v2&envId=top-sql-50

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

problem 9:
problem:Rising temperature
link:https://leetcode.com/problems/rising-temperature/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select w1.id from Weather w1,Weather w2
where datediff(w1.recordDate,w2.recordDate)=1 and w1.temperature>w2.temperature;


problem 10:
problem:Average time of process per machine
link:https://leetcode.com/problems/average-time-of-process-per-machine/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select machine_id,round(avg(end_time-start_time),3) as processing_time
from (select machine_id,process_id,
max(case when activity_type="start" then timestamp end) as start_time,
max(case when activity_type="end" then timestamp end) as end_time
from Activity
group by machine_id,process_id
) as process_durations
group by machine_id ;





problem 11:
problem:Employee Bonus
link:https://leetcode.com/problems/employee-bonus/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select e.name,b.bonus from Employee e  left join Bonus b
on e.empId=b.empId
where b.bonus<1000 or b.bonus is null;


problem 12:
problem:Students and Examinations
link:https://leetcode.com/problems/students-and-examinations/?envType=study-plan-v2&envId=top-sql-50
SELECT
    S.student_id
    ,S.student_name
    ,SU.subject_name
    ,COUNT(E.student_id) attended_exams
FROM Students S
CROSS JOIN Subjects SU
LEFT JOIN Examinations E
    ON S.student_id = E.student_id
    AND SU.subject_name = E.subject_name

GROUP BY S.student_id, S.student_name, SU.subject_name
ORDER BY S.student_id, S.student_name, SU.subject_name
;



problem 13:
problem:managers with atleast 5 direct reports
link:https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select e.name from Employee e  join Employee m on
e.id=m.managerId
group by m.managerId
having count(e.id)>=5;




problem:14
problem:Confirmation Rate
link:https://leetcode.com/problems/confirmation-rate/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select s.user_id, 
coalesce(round(sum(case when c.action="confirmed" then 1 else  0 
end)/nullif(count(c.action),0),2),0) confirmation_rate
from Signups s left join Confirmations c on
s.user_id=c.user_id
group by s.user_id;


problem:15
problem:not boring movies
link:https://leetcode.com/problems/not-boring-movies/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select id,movie,description,rating from Cinema
where id%2=1 and description !='boring'
order by rating desc;


problem:16
problem:Avg selling price
link:https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select p.product_id,case when coalesce(sum(u.units),0)=0 then 0 else round(sum(u.units*p.price)/(sum(u.units)),2) end average_price
from Prices p left join
UnitsSold u on p.product_id=u.product_id and u.purchase_date>=p.start_date
and u.purchase_date<=p.end_date
group by p.product_id;




problem:17
problem:project employees I
link:https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select p.project_id,round(avg(e.experience_years),2) average_years from Project p
join Employee e on 
p.employee_id=e.employee_id
group by p.project_id;





problem:18
problem:percentage of users attended the contest
link:https://leetcode.com/problems/percentage-of-users-attended-a-contest/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select r.contest_id,round(
count(r.user_id)/(select count(*) from Users)*100,2)
percentage from Users u join 
Register r on 
u.user_id=r.user_id

group by r.contest_id
order by percentage desc,r.contest_id ;




problem:19
problem:queries quality
link:https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50
select
query_name,
round(avg(cast(rating as decimal) / position), 2) as quality,
round(sum(case when rating < 3 then 1 else 0 end) * 100 / count(*), 2) as poor_query_percentage
from
queries
group by
query_name;




problem:20
problem:monthly_transaction I
link:https://leetcode.com/problems/monthly-transactions-i/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT 
    LEFT(trans_date, 7) AS month,
    country, 
    COUNT(id) AS trans_count,
    SUM(state = 'approved') AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM((state = 'approved') * amount) AS approved_total_amount
FROM 
    Transactions
GROUP BY 
    month, country;



problem:21
problem:immediate food delivery II
link:https://leetcode.com/problems/immediate-food-delivery-ii/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
SELECT
    customer_id,
    MIN(order_date) AS orderD,
    MIN(customer_pref_delivery_date) AS deliD
FROM delivery
GROUP BY customer_id;





problem:22
problem:game play analysis
link:https://leetcode.com/problems/game-play-analysis-iv/?envType=study-plan-v2&envId=top-sql-50
 select round(count(distinct a.player_id)/ (select count(distinct player_id)from Activity),2) fraction FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity a
    GROUP BY player_id
) f
ON a.player_id = f.player_id

WHERE a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY);

\


problem:23
problem:number of unique subject taught by teacher_id
link:https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select teacher_id, count(distinct subject_id) cnt from Teacher
group by teacher_id
order by teacher_id;


problem:24
problem:User Activity for the Past 30 Days I
link:https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select activity_date,count(distinct user_id) from Activity
where activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY)
AND '2019-07-27'
group by activity_date;




problem:25
problem:Product Sales Analysis III
link:https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select s1.product_id,s2.first_year,s1.quantity,s1.price from Sales s1 join (select product_id,min(year) first_year from Sales  group by product_id ) s2
on s1.year=s2.first_year
and s1.product_id=s2.product_id;



problem:26
problem:Classes With at Least 5 Students
link:https://leetcode.com/problems/classes-with-at-least-5-students/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select class from Courses
group by class
having count(student)>=5;
>>>>>>> 1c5beef (update: save latest project changes)





problem:27
problem:Find Followers Count
link:https://leetcode.com/problems/find-followers-count/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
select user_id,count(follower_id) followers_count from Followers
group by user_id
order by followers_count asc;






problem:28
problem:Biggest Single Number
link:https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below
with cte as (select num from MyNumbers 
group by num
having count(num)=1)
select max(num) num from cte;






problem:29
problem:Customers Who Bought All Products
link:https://leetcode.com/problems/customers-who-bought-all-products/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select customer_id from (select count(distinct p.product_key),c.customer_id from Product p  join Customer c
on c.product_key=p.product_key
group by c.customer_id
having count(distinct c.product_key)=(select count(*) from Product)) a;

problem:30
problem:The Number of Employees Which Report to Each Employee
link:https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select m.employee_id,m.name,count(e.reports_to) reports_count,round(avg(e.age)) average_age from Employees as e join Employees m
on e.reports_to=m.employee_id
group by m.employee_id
order by m.employee_id;






problem:31
problem:Primary Department for Each Employee
link:https://leetcode.com/problems/primary-department-for-each-employee/submissions/2179821738/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
with cte as (select employee_id,department_id,primary_flag,count(*) over (partition by employee_id) as dept_count from Employee)
 select employee_id,department_id from cte
where primary_flag="Y" or dept_count=1;




problem:32
problem:Triangle Judgement
link:https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select x,y,z,
case when x+y>z and y+z>x and z+x>y then 'Yes' else 'No'
end as triangle from Triangle;


problem :33
problem:Consecutive numbers
link:https://leetcode.com/problems/consecutive-numbers/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2
    ON l1.id = l2.id -1
JOIN Logs l3
    ON l2.id = l3.id -1
    WHERE l1.num = l2.num
  AND l2.num = l3.num;
-- Add your condition here






problem :34
problem:Product Price at a Given Date
https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50

select product_id,new_price as price from Products  where(product_id,change_date)  in (select product_id,max(change_date) from Products
where change_date <='2019-08-16'
group by product_id)
union all
select distinct  product_id,10 as price from Products  where product_id not in (select product_id from Products
where change_date<='2019-08-16'
);




problem:35
problem:Last Person to Fit in the Bus
link:https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
with cte as (select person_name,
sum(weight) over(order by turn)as total_weight  
from Queue)

select person_name from cte
where total_weight<=1000
order by total_weight desc limit 1;
