/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

Input Format
The STATION table is described as follows:

STATION
Field	Type
ID	NUMBER
CITY	VARCHAR2(21)
STATE	VARCHAR2(2)
LAT_N	NUMBER
LONG_W	NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude.

Sample Input
Let’s say that CITY only has four entries: DEF, ABC, PQRS and WXY

Sample Ouput

ABC 3
PQRS 4

Explanation
When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with the respective lengths 3, 3, 4 and 3. 
The longest-named city is obviously PQRS, but there are 3 options for shortest-named city; we choose ABC, because it comes first alphabetically.
*/


/*
Analysis
For the shortest city name, we can sort city names according to their length in ascending order, 
and for cities having the same length, sort with their names in alphabetical order. Then we output city name and its length of the first entry. So,

output city name and its length ==> SELECT CITY, LENGTH(CITY)
from STATION table ==> FROM STATION
sort with length in ascending order, name in alphabetical order ==>
ORDER BY LENGTH(CITY), CITY
output result of first entry ==> LIMIT 1


For the longest city name, we can sort city names with length in descending order. 
Then sort cities’ names in alphabetical order for those having the same length. Finally output city name and length of first entry. So,

output city name and length ==> SELECT CITY, LENGTH(CITY)
from STATION table ==> FROM STATION
sort with length in descending order, name in alphabetical order ==>
ORDER BY LENGTH(CITY) DESC, CITY
output result of first entry ==> LIMIT 1
*/



SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY), CITY
LIMIT 1;

SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY
LIMIT 1;
