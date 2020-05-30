INSERT INTO LOCATION
	(ZIP,P_STATE,CITY,COUNTRY)
VALUES
	(400707,'Maharashtra','Mumbai','India'),
    (700043,'West Bengal','Kolkata','India'),
    (530035,'Andhra Pradesh','Visakapatnam','India'),
    (116656,'Dubai','Dubai Maritime City','United Arab Emirates'),
    (90056,'California','Los Angeles','United States of America'),
    (22800,'Baja California','Ensenada','Mexico'),
    (119963,'Central Business District','Tanjong Pagar','Singapore'),
    (4178,'Queensland','Brisbane','Australia'),
    (2000,'New South Wales','Sydney','Australia'),
    (30123,'Venice','Venice','Italy');
    
    
INSERT INTO PORTS
	(PORT_ID,PORT_NAME,PORT_SIZE,ZIP)
VALUES
	('INBOM','Mumbai Port Trust','Large',400707),
    ('INCCU','Kolkata Port Trust','Large',700043),
    ('INVTZ','Visakapatnam Port Trust','Large',530035),
    ('AEDXB','Port Rashid','Large',116656),
    ('USLAX','Los Angeles Harbor','Very Large',90056),
    ('MXESE','Port of Ensenada','Medium',22800),
    ('SGSIN','Port of Singapore','Very Large',119963),
    ('AUBNE','Port of Brisbane','Medium',4178),
    ('AUSYD','Port of Sydney','Large',2000),
    ('ITVCE','Port of Venice','Large',30123);
    
    
INSERT INTO CRUISE_COMPANY
	(COMPANY_ID,COMPANY_NAME)
VALUES
	('CCL','Carnival Cruise Line'),
    ('DCL','Disney Cruise Line'),
    ('PC','Princess Cruises'),
    ('WC','Windstar Cruises'),
    ('CC','Celebrity Cruises'),
    ('RCL','Royal Caribbean International'),
    ('HAL','Holland America Line'),
    ('OL','Orient Lines'),
    ('SC','Star Cruises'),
    ('NCL','Norwegian Cruise Line');
    
    
INSERT INTO CRUISE
	(CRUISE_NO,CAPACITY,CRUISE_NAME,COMPANY)
VALUES
	('CCL857',2124,'Carnival Paradise','CCL'),
    ('DCL564',2713,'Disney Magic','DCL'),
    ('PC426',3080,'Crown Princess','PC'),
    ('WC492',148,'Wind Spirit','WC'),
    ('CC376',2170,'Celebrity Infinity','CC'),
    ('RCL185',3114,'Explorer of the Seas','RCL'),
    ('HAL634',1404,'Rotterdam','HAL'),
    ('OL245',820,'Marco Polo','OL'),
    ('SC937',1900,'Star Pisces','SC'),
    ('NCL391',3963,'Norwegian Getaway','NCL');
    
    
INSERT INTO CRUISE_PORT_ACCESS
	(PORTS,CRUISE_SHIP)
VALUES
	('USLAX','DCL564'),
    ('AUBNE','WC492'),
    ('AUSYD','RCL185'),
    ('MXESE','SC937'),
    ('SGSIN','CC376'),
    ('INVTZ','CC376'),
    ('INBOM','WC492'),
    ('USLAX','CCL857'),
    ('ITVCE','NCL391'),
    ('MXESE','CCL857');
    
    
INSERT INTO STATEROOM
	(CRUISE_SHIP,ROOM_NO,AVAILABILITY,ROOM_TYPE,DECK)
VALUES
	('DCL564','R324','AVAILABLE','Interior Upper/Lower','Riviera'),
    ('WC492','A063','AVAILABLE','Ocean View Upper/Lower','Atlantic'),
    ('RCL185','L126','AVAILABLE','Ocean View Upper/Lower','Lido'),
    ('SC937','P575','AVAILABLE','Ocean View Upper/Lower','Promenade'),
    ('CC376','M149','AVAILABLE','Interior Upper/Lower','Main'),
    ('CC376','U634','AVAILABLE','Ocean View Upper/Lower','Upper'),
    ('WC492','A314','AVAILABLE','Ocean View Upper/Lower','Atlantic'),
    ('CCL857','E273','AVAILABLE','Interior Upper/Lower','Empress'),
    ('NCL391','R555','AVAILABLE','Suite Upper/Lower','Riviera'),
    ('CCL857','E183','AVAILABLE','Suite Upper/Lower','Empress'),
    ('DCL564','R444','AVAILABLE','Interior Upper/Lower','Riviera'),
    ('CCL857','A091','AVAILABLE','Ocean View Upper/Lower','Atlantic'),
    ('WC492','P007','AVAILABLE','Suite Upper/Lower','Promenade'),
    ('SC937','L319','AVAILABLE','Interior Upper/Lower','Lido'),
    ('RCL185','E777','AVAILABLE','Ocean View Upper/Lower','Empress');
    
    
INSERT INTO END_USER
	(EMAIL,FNAME,LNAME,PHONE,TYPE_OF_USER)
VALUES
	('krao.siddharth@gmail.com','Siddharth','Rao','8123333693','Normal'),
    ('sheldon.cooper@bazinga.com','Sheldon','Cooper','7608588185','Normal'),
    ('ajey.nagar@gmail.com','Ajey','Nagar','9632587413','Normal'),
    ('leonard.hofstader@yahoo.com','Leonard','Hofstader','7606535301','Normal'),
    ('rajesh.koothrapali@gmail.com','Rajesh','Koothrapali','7606535301','Normal'),
    ('howard.wolowitz@outlook.com','Howard','Wolowitz','7606480202','Normal'),
    ('heisenberg@gmail.com','Walter','White','4516468282','Agent'),
    ('akash4802@gmail.com','Akash','Yadav','9874125634','Normal'),
    ('navneethnav16@gmail.com','Navneeth','Holla','8524567931','Normal'),
    ('amy.fowler@outlook.com','Amy','Fowler','7606535300','Normal');
    
    
INSERT INTO CRUISE_TRIP
	(CRUISE_TRIP_ID,NO_OF_GUESTS,ARRIVAL_PORT,ARRIVAL_DATE,DEPART_PORT,DEPART_DATE,USER_EMAIL)
VALUES
	('siddharth04sep',4,'MXESE',str_to_date('2020,10,27 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'USLAX',str_to_date('2020,10,23 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'krao.siddharth@gmail.com'),
   ('ajey17sep',5,'SGSIN',str_to_date('2020,11,27 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'INBOM',str_to_date('2020,11,22 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'ajey.nagar@gmail.com'),
	('leonard11aug',2,'ITVCE',str_to_date('2020,11,03 12,00,00',
	'%Y,%m,%d %h,%i,%s') ,'USLAX',str_to_date('2020,10,27 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'leonard.hofstader@yahoo.com'),
	('sheldon23aug',2,'USLAX',str_to_date('2020,10,31 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'MXESE',str_to_date('2020,10,27 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'sheldon.cooper@bazinga.com'),
	('rajesh17may',2,'MXESE',str_to_date('2020,10,27 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'USLAX',str_to_date('2020,10,23 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'rajesh.koothrapali@gmail.com'),
    ('howard24july',4,'SGSIN',str_to_date('2020,12,27 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'INVTZ',str_to_date('2020,12,23 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'howard.wolowitz@outlook.com'),
    ('akash04aug',4,'SGSIN',str_to_date('2020,12,31 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'INVTZ',str_to_date('2020,12,27 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'akash4802@gmail.com'),
    ('amy26aug',2,'SGSIN',str_to_date('2020,10,25 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'INBOM',str_to_date('2020,10,18 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'amy.fowler@outlook.com'),
    ('navneeth16jun',4,'SGSIN',str_to_date('2020,10,25 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'AUSYD',str_to_date('2020,10,18 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'navneethnav16@gmail.com'),
    ('walter15aug',1,'AEDXB',str_to_date('2020,11,27 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'ITVCE',str_to_date('2020,11,22 12,00,00',
	'%Y,%m,%d %h,%i,%s'),'heisenberg@gmail.com');
    
    
INSERT INTO FARE
	(CRUISE_TRIP_ID,TOTAL,PRICE_PER_PERSON,CURRENCY,DISCOUNT,TAX)
VALUES
	('walter15aug',492,492,'$',10,15),
    ('navneeth16jun',2540,635,'$',10,15),
    ('amy26aug',984,492,'$',10,15),
    ('akash04aug',1032,258,'$',10,15),
    ('leonard11aug',1140,570,'$',10,15),
    ('siddharth04sep',1968,492,'$',10,15),
    ('sheldon23aug',984,492,'$',10,15),
    ('rajesh17may',984,492,'$',10,15),
    ('howard24july',1032,258,'$',10,15),
    ('ajey17sep',1680,336,'$',10,15);
    
    
INSERT INTO TRAVELLER
	(PHONE,FNAME,LNAME,COUNTRY)
VALUES
	('8123333693','Siddharth','Rao','India'),
    ('7608588185','Sheldon','Cooper','USA'),
    ('9632587413','Ajey','Nagar','India'),
    ('7606535301','Leonard','Hofstader','USA'),
    ('7606535301','Rajesh','Koothrapali','USA'),
    ('7606480202','Howward','Wolowitz','USA'),
    ('4516468282','Walter','White','Mexico'),
    ('9874125634','Akash','Yadav','India'),
    ('8524567931','Navneeth','Holla','India'),
    ('7606535300','Amy','Fowler','USA');
    
    
INSERT INTO TRAVELLER_ITINERARY
	(CRUISE_TRIP_ID,ROOM_NO,CRUISE_SHIP)
VALUES
	('ajey17sep','A063','WC492'),
    ('howard24july','M149','CC376'),
    ('rajesh17may','E183','CCL857'),
    ('sheldon23aug','P575','SC937'),
    ('siddharth04sep','E273','CCL857'),
    ('leonard11aug','R324','DCL564'),
    ('akash04aug','U634','CC376'),
    ('amy26aug','A314','WC492'),
    ('navneeth16jun','L126','RCL185'),
    ('walter15aug','R555','NCL391');
    

