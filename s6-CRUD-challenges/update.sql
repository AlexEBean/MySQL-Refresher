SELECT * FROM shirts WHERE article = 'polo shirt';

UPDATE shirts
    SET shirt_size = 'L'
    WHERE article = 'polo shirt';

SELECT * FROM shirts WHERE article = 'polo shirt';



SELECT * FROM shirts WHERE last_worn = 15;

UPDATE shirts
    SET last_worn = 0
    WHERE last_worn = 15;

SELECT * FROM shirts WHERE last_worn = 15;

SELECT * FROM shirts WHERE last_worn=0;



SELECT * FROM shirts WHERE color = 'white';

UPDATE shirts
    SET shirt_size = 'XS',
        color = 'off white'
    WHERE color = 'white';

SELECT * FROM shirts WHERE color = 'white';
 
SELECT * FROM shirts WHERE color = 'off white';