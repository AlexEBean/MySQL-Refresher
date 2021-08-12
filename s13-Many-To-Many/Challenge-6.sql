SELECT first_name, last_name, IFNULL(COUNT(rating), 0) AS COUNT, IFNULL(MIN(rating), 0) AS MIN, IFNULL(MAX(rating), 0) AS MAX, IFNULL(AVG(rating), 0) AS AVG,
	-- -- IF(Count(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS  also works in this case where there are only two outcomes
    CASE
		WHEN COUNT(rating) > 0
			THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
    FROM reviewers rr
    LEFT JOIN reviews r
        ON rr.id = r.reviewer_id
    GROUP BY last_name, first_name;

--  POWER USER bonus

SELECT first_name, last_name, IFNULL(COUNT(rating), 0) AS COUNT, IFNULL(MIN(rating), 0) AS MIN, IFNULL(MAX(rating), 0) AS MAX, IFNULL(AVG(rating), 0) AS AVG,
    CASE
		WHEN COUNT(rating) >= 10
			THEN 'POWER USER'
		WHEN COUNT(rating) > 0
			THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
    FROM reviewers rr
    LEFT JOIN reviews r
        ON rr.id = r.reviewer_id
    GROUP BY last_name, first_name;