SELECT *
	FROM users u
    LEFT JOIN comments c
		ON u.id = c.user_id
	WHERE c.user_id IS NULL;