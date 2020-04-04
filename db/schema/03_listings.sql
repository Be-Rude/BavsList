-- DROP TABLE IF EXISTS listings CASCADE;

CREATE TABLE listings (
	id SERIAL PRIMARY KEY NOT NULL,
	user_id INTEGER REFERENCES users(id) ON CASCADE DELETE,
	title VARCHAR(255) NOT NULL,
	description VARCHAR(255) NOT NULL,
	image VARCHAR(255) NOT NULL,
	date_created DATE NOT NULL,
	is_sold BOOLEAN NOT NULL DEFAULT FALSE,
	price INTEGER NOT NULL DEFAULT 0,
	behaviour VARCHAR(255) NOT NULL,
	category VARCHAR(255) NOT NULL
);
