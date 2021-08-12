SELECT title AS 'unreviewed_series'
    FROM series s
    LEFT JOIN reviews r
		ON s.id = r.series_id
	WHERE r.rating IS NULL;
