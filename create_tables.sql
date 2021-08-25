DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS items CASCADE;
DROP TABLE IF EXISTS purchases;

CREATE TABLE users (
	userId SERIAL PRIMARY KEY,
	age SMALLINT CHECK (age>0)
);

CREATE TABLE items (
	itemId SERIAL PRIMARY KEY,
	price money NOT NULL
);

CREATE TABLE purchases (
	purchaseId SERIAL PRIMARY KEY,
	userId SERIAL REFERENCES users(userId) ON DELETE CASCADE,
    itemId SERIAL REFERENCES items(itemId) ON DELETE CASCADE,
  	purchaseDate DATE
);

INSERT INTO users(age)
VALUES (18),(20),(25),(26),(30),(35),(45);

INSERT INTO items(price)
VALUES (200),(100),(1.99),(99.99),(50.99),(70.99),(90.99);

INSERT INTO purchases(userId, itemId, purchaseDate)
VALUES 
(3,1,'2020-01-1'),
(1,3,'2020-09-12'),
(2,4,'2020-09-12'),
(3,1,'2020-09-12'),
(4,2,'2020-09-13'),
(5,7,'2020-09-13'),
(6,6,'2020-09-13'),
(7,5,'2020-09-13'),

(1,5,'2021-08-12'),
(2,6,'2021-08-12'),
(3,3,'2021-08-12'),
(4,2,'2021-08-13'),
(5,1,'2021-08-13'),
(6,7,'2021-08-13'),
(7,4,'2021-08-13');
