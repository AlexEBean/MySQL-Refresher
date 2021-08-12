SELECT genre, AVG(rating) AS avg_rating
-- SELECT genre, ROUND(AVG(rating), 2) AS avg_rating would work for keeping the average to two decimal places
    FROM series s
    JOIN reviews r
        ON s.id = r.series_id
	GROUP BY genre;
