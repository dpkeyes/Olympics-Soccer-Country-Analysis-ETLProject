CREATE TABLE soccer(
	id INT PRIMARY KEY,
	date DATE,
	year INT,
	month TEXT,
	home_team TEXT,
	away_team TEXT,
	home_score INT,
	away_score INT,
	tournament TEXT,
	city TEXT,
	country_name TEXT,
	neutral TEXT,
	season TEXT
);

CREATE TABLE athlete(
	id INT PRIMARY KEY,
	athlete_id INT, 
	last_name TEXT,
	first_name TEXT,
	sex TEXT,
	age FLOAT,
	height FLOAT,
	weight FLOAT,
	team TEXT,
	noc TEXT,
	year INT,
	season TEXT,
	city TEXT,
	sport TEXT,
	event TEXT,
	medal TEXT
);

CREATE TABLE regions (
	noc_1 TEXT,
	noc_2 TEXT,
	noc_3 TEXT,
	noc_4 TEXT,
	country_code TEXT,
	country_name TEXT PRIMARY KEY
);

CREATE TABLE summer(
	id INT PRIMARY KEY,
	year INT,
	city TEXT,
	sport TEXT,
	discipline TEXT,
	athlete_last_name TEXT,
	athlete_first_name TEXT,
	country_code TEXT,
	sex TEXT,
	event TEXT,
	medal TEXT
);

CREATE TABLE winter(
	id INT PRIMARY KEY,
	year INT,
	city TEXT,
	sport TEXT,
	discipline TEXT,
	athlete_last_name TEXT,
	athlete_first_name TEXT,
	country_code TEXT,
	sex TEXT,
	event TEXT,
	medal TEXT
);

CREATE TABLE country(
	country_name TEXT,
	country_code TEXT,
	year INT,
	gdp_growth_annual FLOAT,
	gdp_per_cap FLOAT,
	gdp_per_cap_growth_annual FLOAT,
	gini_index FLOAT,
	pop_density FLOAT,
	pop_growth_annual FLOAT,
	pop_total BIGINT,
	PRIMARY KEY(country_name, country_code, year)
);