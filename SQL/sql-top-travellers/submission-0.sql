WITH calculation AS (
    SELECT 
        user_id,
        SUM(distance) AS travelled_distance
    FROM rides
    GROUP BY user_id
)
SELECT 
    u.name,
    COALESCE(c.travelled_distance, 0) AS travelled_distance
FROM users u
LEFT JOIN calculation c
    ON u.id = c.user_id
ORDER BY travelled_distance DESC, u.name ASC;