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