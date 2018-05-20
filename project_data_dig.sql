#PROJECT DATA DIG - TOP COUNTRIES BY POPULATION - use advanced SELECT queries to discover things about the data.

# used  average, max, and min values in the data
# numbers per category in the data (using HAVING)
# used ways to group the data values that don’t exist yet (using CASE)
# interesting ways are there to filter the data (using AND/OR)

/* Put your data in here and query it! */

CREATE TABLE population
       (id INTEGER PRIMARY KEY AUTOINCREMENT,
       country_name TEXT,
       people INTEGER,
       rank INTEGER);
       
INSERT INTO population (country_name, people,rank) VALUES ("China", 1384688986, 1);

INSERT INTO population (country_name, people,rank) VALUES ("India", 1296834042, 2);

INSERT INTO population (country_name, people,rank) VALUES ("USA", 329256465, 3);

INSERT INTO population (country_name, people,rank) VALUES ("Indonesia", 262787403 , 4);

INSERT INTO population (country_name, people,rank) VALUES ("Brazil", 208846892 , 5);

INSERT INTO population (country_name, people, rank) VALUES ("Pakistan", 207862518, 6);

INSERT INTO population(country_name, people, rank) VALUES ("Nigeria", 195300343, 7);

INSERT INTO population(country_name, people, rank) VALUES ("Bangladesh", 159453001, 8);

SELECT * FROM population;

SELECT SUM(people) FROM population;

SELECT ROUND(AVG(people)) FROM population;

SELECT country_name, MIN(people) FROM population;

SELECT country_name, MAX(people) FROM population;

SELECT * FROM population WHERE people > 1000000000 AND rank < 5;

SELECT * FROM population WHERE people < 1000000000 OR rank < 10;

SELECT country_name, people FROM population 
GROUP BY people HAVING people < 1000000000;

SELECT country_name, people, 
  CASE
   WHEN people > 1000000000
   THEN "Over Populated"
   
   WHEN people < 1000000000
   THEN "Densely populated"
   
   ELSE "Still populated"
   
   END AS "Category" 
FROM population;

SELECT  COUNT(*),
  CASE
   WHEN people > 1000000000
   THEN "Over Populated"
   
   WHEN people < 1000000000
   THEN "Densely populated"
   
   ELSE "Still populated"
   
   END AS "Category" 
FROM population
GROUP BY Category
