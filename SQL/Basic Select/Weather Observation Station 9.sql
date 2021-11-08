/*
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
Input Format
The STATION table is described as follows:

STATION
Field	Type
ID	NUMBER
CITY	VARCHAR2(21)
STATE	VARCHAR2(2)
LAT_N	NUMBER
LONG_W	NUMBER

*/


SELECT DISTINCT CITY FROM STATION
WHERE LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');


/*
ALTERNATIVE 
*/

	
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[^aeiou]';
