--DATA SPRINT MASTERSCHOOL PROJECT SQL QUERY (MOSES KOLLEH SESAY
----Quick EDA 

Select
  *
From
  activity
SELECT
  MIN(join_dt) AS experiment_start_date
FROM
  groups;

SELECT
  MAX(join_dt) AS experiment_end_date
FROM
  groups;

SELECT
  MIN(join_dt) AS experiment_start_date,
  MAX(join_dt) AS experiment_end_date,
  MAX(a.dt) AS last_activity_date
FROM
  groups g
  LEFT JOIN activity a ON g.uid = a.uid;

Select Distinct
  (count(id)) as total_users
from
  users
SELECT
  COUNT(DISTINCT uid) AS total_users
FROM
  groups;

--How many users were in the control and treatment groups?
Select distinct
  (count(uid)) as num_of_groups
from
  groups
group by
  group
SELECT
  "group",
  COUNT(DISTINCT uid) AS num_users
FROM
  groups
GROUP BY
  "group";

--What was the conversion rate of all users?
SELECT
  (
    CAST(COUNT(DISTINCT a.uid) AS FLOAT) / CAST(COUNT(DISTINCT g.uid) AS FLOAT)
  ) * 100 AS conversion_rate
FROM
  groups g
  LEFT JOIN activity a ON g.uid = a.uid;

--What is the user conversion rate for the control and treatment groups?
SELECT 
    g."group",
    (CAST(COUNT(DISTINCT a.uid) AS FLOAT) / CAST(COUNT(DISTINCT g.uid) AS FLOAT)) * 100 AS conversion_rate
FROM 
    groups g
LEFT JOIN 
    activity a ON g.uid = a.uid
GROUP BY 
    g."group";

--What is the average amount spent per user for the control and treatment groups, including users who did not convert?
SELECT 
    g."group",
    COALESCE(SUM(a.spent), 0) / COUNT(DISTINCT g.uid) AS avg_spent_per_user
FROM 
    groups g
LEFT JOIN 
    activity a ON g.uid = a.uid
GROUP BY 
    g."group";

--Why does it matter to include users who did not convert when calculating the average amount spent per user?


--Write a SQL query that returns: the user ID, the user’s country, the user’s gender, the user’s device type, 
--the user’s test group, whether or not they converted (spent > $0), and how much they spent in total ($0+).
SELECT 
    u.id AS user_id,
    u.country,
    u.gender,
    g.device AS device_type,
    g."group" AS test_group,
    CASE WHEN SUM(a.spent) > 0 THEN 1 ELSE 0 END AS converted,
    COALESCE(SUM(a.spent), 0) AS total_spent
FROM 
    users u
JOIN 
    groups g ON u.id = g.uid
LEFT JOIN 
    activity a ON u.id = a.uid
GROUP BY 
    u.id, u.country, u.gender, g.device, g."group";


-- * ANALYSIS FOR NOVELTY EFFECT

---- Metrics for users over time

SELECT 
    u.id AS user_id,
    u.country,
    u.gender,
    g.device AS device_type,
    g."group" AS test_group,
    g.join_dt AS join_date,
    CASE WHEN SUM(a.spent) > 0 THEN 1 ELSE 0 END AS converted,
    COALESCE(SUM(a.spent), 0) AS total_spent
FROM 
    users u
JOIN 
    groups g ON u.id = g.uid
LEFT JOIN 
    activity a ON u.id = a.uid
GROUP BY 
    u.id, u.country, u.gender, g.device, g."group", g.join_dt;


-- Average Amount Spent for Users who Converted Over Time:
SELECT 
      g.join_dt AS join_date, 
      g.group,
      COUNT(DISTINCT g.uid) AS total_users,
      COUNT(DISTINCT a.uid) AS paid_users,
      SUM(a.spent) AS total_spent
FROM 
    groups AS g
LEFT JOIN activity AS a ON g.uid = a.uid
GROUP BY 
        g.group,
        g.join_dt
ORDER BY 1;

-- User Metrics for Date Join:
SELECT 
      n.join_date,
      n.group,
      ROUND(CAST(SUM(n.paid_users) / MAX(n.total_users) * 100 AS
      DECIMAL(10,2)), 2) AS conversion_rate,
      ROUND(CAST(SUM(n.total_spent)/MAX(n.total_users) AS DECIMAL(10,2)),2) AS 
      average_spent
FROM(SELECT 
           g.join_dt AS join_date, 
           g.group,
           COUNT(DISTINCT g.uid) AS total_users,
           COUNT(DISTINCT a.uid) AS paid_users,
           SUM(a.spent) AS total_spent
      FROM 
           groups AS g
      LEFT JOIN activity AS a ON g.uid = a.uid
      GROUP BY 
              g.group,
              g.join_dt
      ORDER BY 1) AS n
GROUP BY 1, 2;

-- Date Difference for users that Converted
SELECT n.group, COUNT(n.user_id), n.date_difference
FROM(SELECT 
           a.uid AS user_id, 
     g.group,
     g.join_dt AS date_registered,
     a.dt AS date_converted,
     SUM(COALESCE(a.spent, 0)) AS total_spent_usd,
     a.dt - g.join_dt AS date_difference
      FROM groups AS g
JOIN activity AS a
ON g.uid = a.uid
GROUP BY 1,2,3,4) AS n
GROUP BY 1,3
ORDER BY 3;

