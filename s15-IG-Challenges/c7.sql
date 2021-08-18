SELECT 
    u.username
FROM users u
JOIN likes l
	ON u.id = l.user_id
GROUP BY u.username
HAVING COUNT(*) = (
					SELECT Count(*) 
					FROM   photos
					);