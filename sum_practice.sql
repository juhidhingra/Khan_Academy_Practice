/* PROJECT : DESIGN A STORE */

CREATE TABLE shoemart
(id INTEGER, 
colorname TEXT,
quantity INTEGER,
price INTEGER);

INSERT INTO shoemart VALUES (0, "yellow", 23, 1000);
INSERT INTO shoemart VAlUES (2, "red", 5, 900);
INSERT INTO shoemart VALUES (4, "pink", 100, 690);
INSERT INTO shoemart VALUES (6, "black", 220, 300);
INSERT INTO shoemart VALUES (8, "orange", 80, 490);

SELECT * FROM shoemart;

SELECT SUM(quantity) FROM shoemart;

SELECT id, SUM(quantity) FROM shoemart GROUP BY id;

SELECT id, SUM(price) FROM shoemart GROUP BY id;

SELECT SUM(price) FROM shoemart;