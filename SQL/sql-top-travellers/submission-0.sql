select u.name , coalesce(sum(r.distance),0) as travelled_distance
from users u left join rides r on u.id=r.user_id
group by u.id
order by travelled_distance desc,u.name asc


-- WITH calculation AS (
--     SELECT 
--         user_id,
--         SUM(distance) AS travelled_distance
--     FROM rides
--     GROUP BY user_id
-- )
-- SELECT 
--     u.name,
--     COALESCE(c.travelled_distance, 0) AS travelled_distance
-- FROM users u
-- LEFT JOIN calculation c
--     ON u.id = c.user_id
-- ORDER BY travelled_distance DESC, u.name ASC;