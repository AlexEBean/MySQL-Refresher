SELECT CURDATE(); -- gives current DATE

SELECT CURTIME(); -- gives current TIME

SELECT NOW(); -- gives current DATETIME

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Toaster', CURDATE(), CURTIME(), NOW());