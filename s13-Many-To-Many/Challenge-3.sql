SELECT first_name, last_name, rating
    FROM reviewers rr
    JOIN reviews r
        ON rr.id = r.reviewer_id;