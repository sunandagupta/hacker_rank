/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It’s a triangle with 3 sides of equal length.
Isosceles: It’s a triangle with 2 sides of equal length.
Scalene: It’s a triangle with 3 sides of differing lengths.
Not a Triangle: The given values of A, B, and C don’t form a triangle.
Input Format
The TRIANGLES table is described as follows:

Column	Type
A	Integer
B	Integer
C	Integer

Each row in the table denotes the lengths of each of a triangle’s three sides.

Sample Input

A	B	C
20	20	23
20	20	20
20	21	22
13	14	30

Sample Output

Isosceles
Equilateral
Scalene
Not A Triangle

*/



SELECT
CASE 
    WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN A = B OR A = C OR B = C THEN 'Isosceles'
    ELSE 'Scalene'
  END
FROM TRIANGLES
