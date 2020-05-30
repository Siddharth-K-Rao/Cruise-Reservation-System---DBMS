#Finding the most commonly booked type of room.

SELECT
	ROOM_TYPE,
    COUNT(*) AS TOTAL
FROM
	STATEROOM
WHERE 
	AVAILABILITY = 'UNAVAILABLE'
GROUP BY ROOM_TYPE
ORDER BY TOTAL DESC;
