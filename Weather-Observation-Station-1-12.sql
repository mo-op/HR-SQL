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
SELECT distinct CITY 
FROM STATION 
where (CITY LIKE 'a%' 
    OR CITY LIKE 'e%' 
    OR CITY LIKE 'i%' 
    OR CITY LIKE 'o%'
    OR CITY LIKE 'u%'
)
#7
SELECT distinct CITY 
FROM STATION 
where (CITY LIKE '%a' 
    OR CITY LIKE '%e'
    OR CITY LIKE '%i'
    OR CITY LIKE '%o'
    OR CITY LIKE '%u'
)

#8
SELECT distinct CITY 
FROM STATION 
where (CITY LIKE 'a%' 
    OR CITY LIKE 'e%' 
    OR CITY LIKE 'i%' 
    OR CITY LIKE 'o%'
    OR CITY LIKE 'u%'
) AND (CITY LIKE '%a' 
    OR CITY LIKE '%e'
    OR CITY LIKE '%i'
    OR CITY LIKE '%o'
    OR CITY LIKE '%u'
)
#9
SELECT distinct CITY 
FROM STATION 
where(CITY NOT IN (SELECT CITY FROM STATION WHERE (CITY LIKE 'a%' 
    OR CITY LIKE 'e%' 
    OR CITY LIKE 'i%' 
    OR CITY LIKE 'o%'
    OR CITY LIKE 'u%'
)));
#^That is terrible code and mamma needs to learn her some regex 
#10
SELECT distinct CITY 
FROM STATION 
where(CITY NOT IN (SELECT CITY FROM STATION WHERE (CITY LIKE '%a' 
    OR CITY LIKE '%e'
    OR CITY LIKE '%i'
    OR CITY LIKE '%o'
    OR CITY LIKE '%u'
)));
#11
SELECT DISTINCT CITY
FROM STATION
WHERE (NOT(CITY  Like 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'O%' OR CITY LIKE 'I%' OR CITY LIKE 'U%'))
		OR 
	  (NOT (CITY LIKE '%a' OR CITY  LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u'))
ORDER BY CITY;
#12
SELECT DISTINCT CITY
FROM STATION
WHERE (NOT(CITY  Like 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'O%' OR CITY LIKE 'I%' OR CITY LIKE 'U%'))
		AND
	  (NOT (CITY LIKE '%a' OR CITY  LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u'))
ORDER BY CITY;
