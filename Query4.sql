#To find the list of all the passengers who have spent more than $1000 for their voyage along with the source and destination ports.

SELECT 
	CRUISE_TRIP_ID,
    DEPART_PORT AS DEPARTING_PORT,
    ARRIVAL_PORT AS DESTINATION,
    ARRIVAL_DATE AS ARRIVAL
FROM
	CRUISE_TRIP
WHERE
	CRUISE_TRIP_ID IN
    (
		SELECT
			CRUISE_TRIP_ID
		FROM 
			FARE
		WHERE 
			TOTAL >= 1000
	);

			