#1
SELECT CITY, STATE 
FROM STATION  
ORDER BY CITY, STATE;
#2
#3
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0
ORDER BY CITY;
#4
SELECT COUNT(CITY)-COUNT(DISTINCT CITY)
FROM STATION
#5
SELECT CITY || ' ' || CITYLENGTH 
FROM (
SELECT CITY , LENGTH(CITY) AS CITYLENGTH
FROM STATION 
WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(CITY)) FROM STATION) 
ORDER BY CITY ) 
WHERE ROWNUM <= 1
UNION
SELECT CITY || ' ' || CITYLENGTH 
FROM (
SELECT CITY , LENGTH(CITY) AS CITYLENGTH
FROM STATION 
WHERE LENGTH(CITY) = (SELECT MIN(LENGTH(CITY)) FROM STATION) 
ORDER BY CITY ) 
WHERE ROWNUM <= 1 ;
#6
SELECT DISTINCT(CITY)
FROM STATION
WHERE CITY Like 'A%' OR  CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';
#7
#8
#9
#10
#11
#12

