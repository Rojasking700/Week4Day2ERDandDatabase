CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	name_ VARCHAR(25),
	age NUMERIC(3),
	email VARCHAR(25),
	rewards_member BOOLEAN
);

--DROP TABLE IF EXISTS cutomer- used because i miss spelled customer

SELECT *
FROM customer

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	seat VARCHAR(3),
	vip BOOLEAN,
	price NUMERIC(4,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

SELECT *
FROM tickets

CREATE TABLE ticket_movie(
	ticket_movie_id SERIAL PRIMARY KEY,
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id),
	movie_id INTEGER NOT NULL
)

SELECT *
FROM ticket_movie;

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	rating VARCHAR(4),
	category VARCHAR(10)
)

SELECT *
FROM movie;

CREATE TABLE Concessions(
	item_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	item_name VARCHAR(25),
	item_price NUMERIC(5,2),
	quantity INTEGER
)

SELECT *
FROM concessions

ALTER TABLE ticket_movie
ADD FOREIGN KEY(movie_id) REFERENCES movie(movie_id);




