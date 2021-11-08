/*
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
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

Analysis
query CITY names ==> SELECT CITY
from STATION table ==> FROM STATION
ending with vowels ==> WHERE CITY REGEXP ‘[aeiou]$’
cannot contain duplicates ==> SELECT DISTINCT CITY
*/


SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '[aeiou]$';


/*
ALTERNATIVE SOLUTION
*/

SELECT DISTINCT CITY FROM STATION
WHERE RIGHT(CITY,1) IN ('a', 'e', 'i', 'o', 'u');
