#Query to find the number of days it takes to take to reach the destination from the source for every passenger.

SELECT
	EU.FNAME,
    EU.LNAME,
    CT.DEPART_PORT,
    CT.ARRIVAL_PORT,
    DATEDIFF(ARRIVAL_DATE,DEPART_DATE) AS DURATION
FROM
	CRUISE_TRIP AS CT
INNER JOIN END_USER AS EU
	ON CT.USER_EMAIL = EU.EMAIL	
    
    
    
