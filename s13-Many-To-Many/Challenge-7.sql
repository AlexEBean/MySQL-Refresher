SELECT title, r.rating, CONCAT(first_name, ' ', last_name) AS reviewer
    FROM series s
    JOIN reviews r
        ON s.id = r.series_id
	JOIN reviewers rr
        ON r.reviewer_id = rr.id
	ORDER BY title;