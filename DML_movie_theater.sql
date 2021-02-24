INSERT INTO customer(
	name_,
	age,
	email,
	rewards_member
)
VALUES(
	'Jeff',
	18,
	'myNameIsJeff@meme.com',
	TRUE
);

SELECT *
FROM customer;
INSERT INTO customer(
	name_,
	age,
	email,
	rewards_member
)
VALUES(
	'Bob',
	46,
	'BobTheBuilder@cartoon.com',
	FALSE
);
INSERT INTO customer(
	name_,
	age,
	email,
	rewards_member
)
VALUES(
	'McLovin',
	25,
	'McLiovin@fakeID.com',
	TRUE
);

INSERT INTO tickets(
	seat,
	vip,
	price,
	customer_id
)
VALUES(
	'12C',
	FALSE,
	9.99,
	3
);

SELECT *
FROM tickets;

INSERT INTO movie(
	rating,
	category
)
VALUES(
	'R',
	'Horror'
)
SELECT *
FROM movie;

INSERT INTO ticket_movie(
	ticket_id,
	movie_id
)
VALUES(
	1,
	1
)
SELECT *
FROM ticket_movie;

-- just realized i didnt have a name for my movies
ALTER TABLE movie
ADD COLUMN movie_name VARCHAR(25);

UPDATE movie
SET movie_name = 'superbad'
WHERE movie_id = 1;

INSERT INTO concessions(
	customer_id,
	item_name,
	item_price,
	quantity
)
VALUES(
	1,
	'popcorn',
	5.99,
	1
)

SELECT *
FROM concessions;

