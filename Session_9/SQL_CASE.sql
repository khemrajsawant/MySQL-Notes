-- CREATE A DATABASE sesion_9_case

DROP DATABASE IF EXISTS sesion_9_case;

CREATE DATABASE  sesion_9_case;
USE sesion_9_case;
CREATE TABLE case_examples (
OrderID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Quantity INT,
price INT
 );

INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (140, FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (140, FLOOR( RAND() * (200-100) + 100));


SELECT * FROM case_examples;

SELECT OrderID, Quantity,
CASE WHEN Quantity > 140 THEN 'The quantity is greater than 140'
WHEN Quantity = 140 THEN 'The quantity is 140'
ELSE 'The quantity is under 140'
END AS QuantityText
FROM case_examples;