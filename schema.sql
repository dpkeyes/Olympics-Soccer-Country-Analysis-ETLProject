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
	country TEXT,
	neutral TEXT,
	season TEXT
);

CREATE TABLE athletes(
	id INT PRIMARY KEY,
	name TEXT,
	sex TEXT,
	age FLOAT,
	height FLOAT,
	weight FLOAT,
	team TEXT,
	NOC TEXT,
	games TEXT,
	year INT,
	season TEXT,
	city TEXT,
	sport TEXT,
	event TEXT,
	medal TEXT
);

CREATE TABLE regions (
	NOC INT PRIMARY KEY,
	country_code TEXT,
	country TEXT
);

CREATE TABLE summer(
	id INT PRIMARY KEY,
	year INT,
	city TEXT,
	sport TEXT,
	discipline TEXT,
	athlete TEXT,
	country TEXT,
	gender TEXT,
	event TEXT,
	medal TEXT
);

CREATE TABLE winter(
	id INT PRIMARY KEY,
	year INT,
	city TEXT,
	sport TEXT,
	discipline TEXT,
	athlete TEXT,
	country TEXT,
	gender TEXT,
	event TEXT,
	medal TEXT
);

CREATE TABLE country(
	country_name TEXT PRIMARY KEY,
	country_code TEXT,
	year INT,
	gdp_growth_annual FLOAT,
	gdp_per_cap FLOAT,
	gdp_per_cap_growth_annual FLOAT,
	gini_index FLOAT,
	pop_density FLOAT,
	pop_growth_annual FLOAT,
	pop_total INT
);