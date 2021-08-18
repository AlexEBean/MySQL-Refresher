SELECT username
	FROM users u
    JOIN photos p
		ON u.id = p.user_id
	JOIN likes l
		ON p.id = l.photo_id
        WHERE photo_id  = (
			SELECT photo_id
				FROM likes
				GROUP BY photo_id
				ORDER BY COUNT(*) DESC
				LIMIT 1)
		LIMIT 1;

-- This also works

SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- I like this one most

SELECT 
    u.username,
    p.id,
    p.image_url, 
    COUNT(*) AS total
FROM users u
JOIN photos p
	ON u.id = p.user_id
JOIN likes l
	ON p.id = l.photo_id
GROUP BY p.id
ORDER BY total DESC
LIMIT 1;