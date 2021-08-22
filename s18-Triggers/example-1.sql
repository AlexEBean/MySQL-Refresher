CREATE DATABASE trigger_demo;

USE trigger_demo;

CREATE TABLE users (
     username VARCHAR(100),
     age INT
)

-- This works fine
INSERT INTO users(username, age) VALUES ('Bobby', 23)

DELIMITER $$

CREATE TRIGGER must_be_adult
     BEFORE INSERT ON users FOR EACH ROW
     BEGIN
          IF NEW.age < 18
          THEN
              SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Must be an adult!';
          END IF;
     END;
$$

DELIMITER ;

-- Results in error thanks to trigger and prevents insert
INSERT INTO users(username, age) VALUES ('Sally', 16)