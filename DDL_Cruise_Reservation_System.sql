create schema ReservationSystems;
use ReservationSystems;

CREATE TABLE LOCATION(
ZIP INT NOT NULL,
P_STATE VARCHAR(50) NOT NULL,
CITY VARCHAR(50) NOT NULL,
COUNTRY VARCHAR(50) NOT NULL,
PRIMARY KEY(ZIP)
);


CREATE TABLE PORTS(
PORT_ID VARCHAR(10),
PORT_NAME VARCHAR(100) NOT NULL,
PORT_SIZE VARCHAR(50) NOT NULL,
ZIP INT NOT NULL,
PRIMARY KEY (PORT_ID),
FOREIGN KEY (ZIP) REFERENCES LOCATION(ZIP)
);


CREATE TABLE CRUISE_COMPANY(
COMPANY_ID VARCHAR(50) ,
COMPANY_NAME VARCHAR(100) NOT NULL,
PRIMARY KEY (COMPANY_ID)
);  


CREATE TABLE CRUISE(
CRUISE_NO VARCHAR(25) ,
CAPACITY INT NOT NULL,
CRUISE_NAME VARCHAR(100) NOT NULL,
COMPANY VARCHAR(50) NOT NULL,
PRIMARY KEY (CRUISE_NO),
FOREIGN KEY (COMPANY) REFERENCES CRUISE_COMPANY(COMPANY_ID)
);


CREATE TABLE CRUISE_PORT_ACCESS(
PORTS VARCHAR(25) NOT NULL,
CRUISE_SHIP VARCHAR(25) NOT NULL,
PRIMARY KEY (PORTS,CRUISE_SHIP),
FOREIGN KEY (PORTS) REFERENCES PORTS(PORT_ID) ON DELETE CASCADE,
FOREIGN KEY (CRUISE_SHIP) REFERENCES CRUISE(CRUISE_NO) ON DELETE CASCADE
);


CREATE TABLE STATEROOM(
CRUISE_SHIP VARCHAR(25) NOT NULL,
ROOM_NO VARCHAR(5) NOT NULL,
AVAILABILITY VARCHAR(15) DEFAULT 'AVAILABLE',
ROOM_TYPE VARCHAR(50) NOT NULL,
DECK VARCHAR(25) NOT NULL,
PRIMARY KEY (CRUISE_SHIP,ROOM_NO),
FOREIGN KEY (CRUISE_SHIP) REFERENCES CRUISE(CRUISE_NO) ON DELETE CASCADE,
CHECK (ROOM_TYPE = 'Interior Upper/Lower' OR ROOM_TYPE = 'Ocean View Upper/Lower' OR ROOM_TYPE = 'Suite Upper/Lower')
);


CREATE TABLE END_USER (
EMAIL VARCHAR(50) NOT NULL,
FNAME VARCHAR(25) NOT NULL,
LNAME VARCHAR(25) NOT NULL,
PHONE varchar(10) ,
TYPE_OF_USER VARCHAR(25) NOT NULL,
PRIMARY KEY (EMAIL),
CONSTRAINT CHK_END_USER CHECK (LENGTH(PHONE) = 10)
);


CREATE TABLE CRUISE_TRIP(
CRUISE_TRIP_ID VARCHAR(15) ,
NO_OF_GUESTS INT NOT NULL,
ARRIVAL_PORT VARCHAR(25) NOT NULL,
ARRIVAL_DATE DATE NOT NULL,
DEPART_PORT VARCHAR(25) NOT NULL,
DEPART_DATE DATE NOT NULL,
USER_EMAIL VARCHAR(50),
PRIMARY KEY (CRUISE_TRIP_ID),
FOREIGN KEY (USER_EMAIL) REFERENCES END_USER(EMAIL) ON DELETE SET NULL
);


CREATE TABLE FARE(
CRUISE_TRIP_ID VARCHAR(15) ,
TOTAL DECIMAL(9,2) NOT NULL,
PRICE_PER_PERSON DECIMAL(9,2) NOT NULL,
CURRENCY VARCHAR(5) NOT NULL,
DISCOUNT DECIMAL(4,2) NOT NULL,
TAX DECIMAL(5,2) NOT NULL,
PRIMARY KEY (CRUISE_TRIP_ID),
FOREIGN KEY (CRUISE_TRIP_ID) REFERENCES CRUISE_TRIP(CRUISE_TRIP_ID)ON DELETE CASCADE
);


CREATE TABLE TRAVELLER(
ID INT auto_increment PRIMARY KEY,
PHONE VARCHAR(10),
FNAME VARCHAR(25) NOT NULL,
LNAME VARCHAR(25) NOT NULL,
COUNTRY VARCHAR(25) NOT NULL,
CONSTRAINT CHK_TRAVELLER CHECK (LENGTH(PHONE) = 10)
);


CREATE TABLE TRAVELLER_ITINERARY(
ID INT auto_increment,
CRUISE_TRIP_ID VARCHAR(15) NOT NULL,
ROOM_NO VARCHAR(5),
CRUISE_SHIP VARCHAR(25),
PRIMARY KEY (ID,CRUISE_TRIP_ID,ROOM_NO,CRUISE_SHIP),
FOREIGN KEY (ID) REFERENCES TRAVELLER(ID),
FOREIGN KEY (CRUISE_TRIP_ID) REFERENCES CRUISE_TRIP(CRUISE_TRIP_ID) ON DELETE CASCADE,
FOREIGN KEY (CRUISE_SHIP,ROOM_NO) REFERENCES STATEROOM(CRUISE_SHIP,ROOM_NO)
);

