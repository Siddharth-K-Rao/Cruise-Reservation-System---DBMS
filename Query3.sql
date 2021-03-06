# Finding all the passengers travelling in the month of October.

SELECT 
	EU.FNAME,
    EU.LNAME,
    CT.DEPART_DATE AS DEPARTURE
FROM
	END_USER AS EU
INNER JOIN CRUISE_TRIP AS CT
	ON EU.EMAIL = CT.USER_EMAIL
WHERE
	EU.EMAIL IN
    (
		SELECT
			CT.USER_EMAIL
		FROM 
			CRUISE_TRIP AS CT
		WHERE
			 CT.DEPART_DATE >= '20201001' AND CT.DEPART_DATE < '20201101'
	)
ORDER BY DEPARTURE ASC;