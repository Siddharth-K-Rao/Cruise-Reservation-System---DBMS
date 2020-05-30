#Finding all the ships which can carry more than 2500 people.

SELECT
	CRUISE_NO,
    CRUISE_NAME,
    CAPACITY
FROM 
	CRUISE
WHERE 
	CAPACITY >= 2500
ORDER BY CAPACITY DESC;
