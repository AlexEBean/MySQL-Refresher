SELECT title, rating
    FROM series s
    JOIN reviews r
        ON s.id = r.series_id;
    