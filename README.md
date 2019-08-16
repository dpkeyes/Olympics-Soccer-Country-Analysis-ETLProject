## Goal
Practice ETL skills by extracting data from multiple sources, transforming that data using Pandas and SQLAlchemy, and loading the data into Postgres. 

![Olympic Data ERD](https://github.com/dpkeyes/etl-project/blob/master/images/olympic_data_erd.png?raw=true)

## Extract

Our team pulled data from 4 sources:
* [World Development Indicators](https://datacatalog.worldbank.org/dataset/world-development-indicators)
* [International Football Results from 1872 to 2019](https://www.kaggle.com/martj42/international-football-results-from-1872-to-2017)
* [120 years of Olympic History: Athletes and Results](https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results#noc_regions.csv)
* [Olympic Sports and Medals, 1896-2014](https://www.kaggle.com/the-guardian/olympic-games)

All data sources were available in CSV format from the source websites so we downloaded the data to our local directory and imported into a Jupyter Notebook using Pandas to perform the Transform and Load processes.

## Transform

After the datasets were loaded into Jupyter Notebooks, we needed to perform standard data cleansing: dropping unnecessary columns, renaming columns, changing data types, and creating new columns. More specific steps for various tables are as follows:

#### Country Data
The goal of this table was to obtain yearly World Development Indicator (WDI) data per country/country code. In order to accomplish that with the raw data provided by the WDI, it was necessary to first utilize the `pd.melt()` function of Pandas to create a row for each year and then use the `pd.pivot_table()`  function to get a column per each indicator.

#### Soccer Data
This data set for this table was already very clean, so not too much transformation was needed. However, we wanted to be able to filter this table by year and month, so the `date` column was split into two other columns to house the year and the month, which was converted from a numerical format to a text format. 

Then, in order to make this table easier to compare against the `summer` and `winter` tables, a `season` column was added. Months April through September were categorized as summer months, and months October through March were categorized as winter months. Then the index was reset to make the table comparable to the table created in Postgres before the data was loaded in.

#### Olympic Data
We decided to keep four out of the 5 tables here. Data transformation included splitting athlete names into first and last name columns, dropping unnecessary columns, adding unique id columns for primary keys, and joining the regions table with a subset from the `country` table in order to create our `regions` table with noc values, country code, and country name. Most notably, we had to add extra noc columns to ensure we could use country name as a primary key in the `regions` table.

## Load
To load all the data, we used the PostgreSQL driver, `psycopg2` to connect to the Postgres server. Individual passwords were then imported in from an external `config` file to complete the connection. After the engine was created, we then loaded each data frame into its corresponding table in the database. 
