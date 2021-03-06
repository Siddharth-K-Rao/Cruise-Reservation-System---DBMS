CREATE TRIGGER ROOM_UPDATE
AFTER INSERT 
ON TRAVELLER_ITINERARY
FOR EACH ROW
UPDATE STATEROOM AS ST
SET AVAILABILITY = 'UNAVAILABLE' WHERE
NEW.ROOM_NO = ST.ROOM_NO AND NEW.CRUISE_SHIP = ST.CRUISE_SHIP;

DELIMITER $$
CREATE TRIGGER TAX_CHECK
BEFORE UPDATE
ON FARE
FOR EACH ROW
BEGIN
IF (NEW.TAX>15) THEN
	SET NEW.TAX = NEW.TAX;
ELSE
	SET NEW.TAX = 15;
END IF;
END $$
    