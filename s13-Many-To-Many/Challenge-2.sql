SELECT title, AVG(rating) AS avg_rating
    FROM series s
    JOIN reviews r
        ON s.id = r.series_id
	GROUP BY title
    -- GROUP BY s.id also works
    ORDER BY avg_rating;