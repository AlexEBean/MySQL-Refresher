SELECT t.tag_name, COUNT(*) AS count
	FROM tags t
    JOIN photo_tags pt
		ON t.id = pt.tag_id
	GROUP BY tag_name
    ORDER BY count DESC 
    LIMIT 5;