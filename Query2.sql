#Write a query to find the total price of the person who is travelling to Singapore by arranging them from highest to lowest price.

SELECT
	CRUISE_TRIP_ID,
    CURRENCY,
    TOTAL AS TOTAL_PRICE
FROM 
	FARE
WHERE
	CRUISE_TRIP_ID IN
    (
		SELECT
			CRUISE_TRIP_ID
		FROM 
			CRUISE_TRIP
		WHERE
			ARRIVAL_PORT = 'SGSIN'
	)
ORDER BY
	TOTAL_PRICE DESC;