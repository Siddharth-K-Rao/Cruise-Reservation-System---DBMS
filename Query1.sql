#Write a query to find the number of guests travelling along with the person who has booked the tickets and is not an agent and show the departure and the arrival date.

SELECT 
	USER_EMAIL,
    NO_OF_GUESTS,
    DEPART_DATE,
    ARRIVAL_DATE
FROM
	CRUISE_TRIP 
WHERE 
	USER_EMAIL IN 
    (	
		SELECT 
			EMAIL 
		FROM
			END_USER 
		WHERE 
			TYPE_OF_USER ='NORMAL'
	) 
GROUP BY
	USER_EMAIL;
    
