#Finding all the people whose duration to reach the destination takes 5 or more days.

SELECT
	FNAME,
    LNAME,
    EMAIL
FROM
	END_USER
WHERE
	EMAIL IN
    (
		SELECT
			USER_EMAIL
		FROM
			CRUISE_TRIP
		WHERE
			DATEDIFF(ARRIVAL_DATE,DEPART_DATE) >= 5
	)
	