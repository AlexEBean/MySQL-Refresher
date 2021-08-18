SELECT CONCAT ((
			SELECT COUNT(DISTINCT username)
			FROM users u
			LEFT JOIN photos p
				ON u.id = p.user_id
			LEFT JOIN comments c
				ON u.id = c.user_id
			WHERE c.user_id IS NULL OR u.username IN (
															SELECT 
																u.username
															FROM users u
															JOIN likes l
																ON u.id = l.user_id
															GROUP BY u.username
															HAVING COUNT(*) = (
																				SELECT Count(*) 
																				FROM   photos
																				)
														)
		) / (SELECT Count(*) 
                          FROM   users) * 100, '%') AS PercentNeverCommentedOrCommentedOnEveryPhoto