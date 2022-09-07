

--- create table for staff


CREATE TABLE staff (
	staff_id SERIAL PRIMARY KEY NOT NULL,
	staff_fname VARCHAR(50) NOT NULL,
	staff_lname VARCHAR(50) NOT NULL,
	staff_username VARCHAR(100) NOT NULL,
	staff_email VARCHAR(120) NOT NULL,
	staff_dob DATE NOT NULL,
	staff_position VARCHAR(100) NOT NULL
);


--- insert data into staff table


INSERT INTO staff (staff_fname, staff_lname, staff_username, staff_email, staff_dob, staff_position)
VALUES (
	'Lewis', 'Daniel', 'ldaniel', 'lewis.daniel@scb.com', '1968-03-14', 'manager'),
	('Colleen', 'Drake', 'cdrake', 'collen.drake@scb.com', '1976-10-25', 'general staff'),
	('Rose', 'Ryan', 'rryan', 'rose.ryan@scb.com', '1979-12-23', 'general staff'),
	('Christine', 'Nelson', 'cnelson', 'christine.nelson@scb.com', '1987-04-09', 'general staff'),
	('Kerrie', 'Smith', 'ksmith', 'kerrie.smith@scb.com', '1992-12-26', 'general staff'
);


--- create table for customer


CREATE TABLE customer (
	cust_id SERIAL PRIMARY KEY NOT NULL,
	cust_fname VARCHAR(50) NOT NULL,
	cust_lname VARCHAR(50) NOT NULL,
	cust_address VARCHAR(60) NOT NULL,
	cust_postcode VARCHAR(8) NOT NULL,
	cust_phone TEXT NOT NULL,
	cust_email VARCHAR(120) NULL
);


--- insert data into customer table


INSERT INTO customer (cust_fname, cust_lname, cust_address, cust_postcode, cust_phone, cust_email)
VALUES (
	'Carol', 'Daniels', '48 Montagu Road, Datchet', 'SL39DW', '+44 1632 960243', 'caroldaniels@gmail.com'),
	('Katy', 'Keene', '75 Thorndike, Slough', 'SL21SR', '+44 1632 960649', 'katykeen@gmail.com'),
	('John', 'Doe', '84 Chancery Lane, London', 'WC2A1DL', '+44 1632 960629', 'johndoe@gmail.com'),
	('Michael', 'Hunter', '34 Clarkston Road, Carterton', 'OX183SP', '+44 1632 960561', 'michaelhunter@gmail.com'),
	('Jack', 'Lee', '70 Turreff Avenue, Donnington', 'TF28HE', '+44 7222 649668', 'jacklee@outlook.com'),
	('Mia', 'Adams', '27 Oxleys, Olney', 'MK465PJ', '+44 7911 232698', 'miaadams@outlook.com'),
	('Jackie', 'Ryan', '8 Corseley Road, Groombridge', 'TN39RH', '+44 7457 397615', 'jackieryan@outlook.com'),
	('Eren', 'Yeager', '53 Cowslip Road, Broadstone', 'BH189QZ', '+44 7153 651034', 'erenyeager@outlook.com'),
	('Thomas', 'Shelby', '141 High Street, Lincoln', 'LN57PJ', '+44 7317 609597', 'thomasshelby@icloud.com'),
	('Jack', 'Astner', '69 Cockeral Lane, Brighton', 'NE14ABJ', '+44 7700 054142', 'jackastner@icloud.com'),
	('Harry', 'Tudor', '54 West End, Haddenham', 'CB63TE', '+44 7457 172705', 'harrytudor@icloud.com'),
	('Paul', 'Mabbot', '71 Napier Road, Wolverhampton', 'WV23DX', '+44 7249 486162', 'paulmabbot@icloud.com'
);


--- create table for vet


CREATE TABLE vet (
	vet_id SERIAL PRIMARY KEY NOT NULL,
	vet_clinic VARCHAR(12) NOT NULL,
	vet_postcode VARCHAR(8) NOT NULL,
	vet_phone TEXT NOT NULL
);


--- insert data into vet table


INSERT INTO vet (vet_clinic, vet_postcode, vet_phone)
VALUES (
	'Good Vet', 'CH88SR', '0161 496 0298'),
	('Happy Vet', 'PE235SX', '0117 496 0753'),
	('Nice Vet', 'N149FL', '0161 496 0735'),
	('Great Vet', 'CF465HD', '0131 496 0923'),
	('Okay Vet', 'LL535RP', '0131 496 0422'
);

--- create table for food


CREATE TABLE food (
	food_id SERIAL PRIMARY KEY NOT NULL,
	food_type VARCHAR(40) NOT NULL
);


--- insert data into food table


INSERT INTO food (food_type) VALUES ('Small dog shelf dry food 50kg bag');
INSERT INTO food (food_type) VALUES ('Small dog organic dry food 50kg bag');
INSERT INTO food (food_type) VALUES ('Medium dog shelf dry food 50kg bag');
INSERT INTO food (food_type) VALUES ('Medium dog organic dry food 50Kg bag');
INSERT INTO food (food_type) VALUES ('Large dog shelf dry food 50kg bag');
INSERT INTO food (food_type) VALUES ('Large dog organic dry food 50kg bag');


--- create table for kennel


CREATE TABLE kennel (
	kennel_id SERIAL PRIMARY KEY NOT NULL,
	capacity INT NOT NULL
);


--- insert data into kennel table


INSERT INTO kennel (capacity)
VALUES (
	1),
	(1),
	(1),
	(1),
	(1),
	(1),
	(1),
	(1),
	(1),
	(2),
	(2),
	(2
);


--- create table for dog


CREATE TABLE dog (
	dog_id SERIAL PRIMARY KEY NOT NULL,
	dog_name VARCHAR(20) NOT NULL,
	dog_breed VARCHAR(30) NOT NULL,
	dog_size VARCHAR(6) NOT NULL,
	behaviours_notes VARCHAR(30) NOT NULL,
	feeding_amount VARCHAR(25) NOT NULL, 
	feeding_times VARCHAR(25) NOT NULL,
	flea_treatment DATE NOT NULL,
	drop_off DATE NOT NULL,
	pick_up DATE NOT NULL,
	vaccine_date DATE NOT NULL,
	microchip_serial VARCHAR(15) NOT NULL,
	microchip_db_link VARCHAR(36) NOT NULL
);


--- insert data into dog table


INSERT INTO dog (dog_name, dog_breed, dog_size, behaviours_notes, feeding_amount, feeding_times, flea_treatment, pick_up, drop_off, vaccine_date, microchip_serial, microchip_db_link)
VALUES (
	'Govenor', 'Labrador', 'Medium', 'N/A', 'Three scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-18', '2022-02-26', '2021-05-03', '372935320535511', 'https://www.chipworks.co.uk/'),
	('Mr. Tickle', 'Pit Bull', 'Medium', 'N/A', 'Four scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-19', '2022-02-24', '2021-05-06', '942042004865273', 'https://www.identibase.co.uk/'),
	('Bob', 'Dachshund', 'Small', 'N/A', 'Four scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-18', '2022-02-23', '2021-06-11', '695971006920731', 'https://mypethq.io/microchip-search/'),
	('Sid', 'Beagle', 'Medium', 'N/A', 'Three scoops dry food', 'Feed at 8am, 1pm and 5pm', '2021-04-13', '2022-02-16', '2022-02-23', '2021-06-20', '258624099157149', 'https://www.petlog.org.uk/'),
	('Zeus', 'Doberman', 'Large', 'N/A', 'Four scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-23', '2022-02-25', '2021-07-09', '910520491127991', 'https://www.chipworks.co.uk/'),
	('Jaspa', 'Labrador', 'Medium', 'N/A', 'Three scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-23', '2022-02-24', '2021-07-20', '498977986239345', 'https://www.identibase.co.uk/'),
	('Bailey', 'Jack Russel', 'Small', 'N/A', 'Four scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-23', '2022-02-24', '2021-08-26', '558254205202913', 'https://mypethq.io/microchip-search/'),
	('Jack', 'Jack Russel', 'Small', 'Epileptic, meds provided', 'Four scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-23', '2022-02-24', '2021-09-09', '292888890497409', 'https://www.petlog.org.uk/'),
	('Charlie', 'Dalmation', 'Medium', 'N/A', 'Three scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-23', '2022-02-24', '2021-09-22', '783224774347688', 'https://www.chipworks.co.uk/'),
	('Bruce', 'Staffordshire Bull Terrier', 'Medium', 'N/A', 'Four scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-23', '2022-02-24', '2021-09-25', '216129153157080', 'https://www.chipworks.co.uk/'),
	('Max', 'English Springer Spaniel', 'Medium', 'N/A', 'Three scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-23', '2022-02-24', '2021-09-29', '430906552039068', 'https://www.identibase.co.uk/'),
	('Lassie', 'Irish Wolf Hound', 'Large', 'N/A', 'Four scoops dry food', 'Feed at 8am, 1pm and 5pm', '2021-04-13', '2022-02-23', '2022-02-24', '2021-10-08', '793345945847850', 'https://www.identibase.co.uk/'),
	('G', 'Poodle', 'Medium', 'N/A', 'Three scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-23', '2022-02-24', '2021-10-26', '134970747941849','https://www.petlog.org.uk/'),
	('Smudge', 'Corgi', 'Small', 'N/A', 'Three scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-23', '2022-02-24', '2021-11-26', '310639712996141', 'https://www.petlog.org.uk/'),
	('Rat', 'Chihuahua', 'Small', 'Can be aggressive', 'Three scoops dry food', 'Feed at 8am and 5pm', '2021-04-13', '2022-02-23', '2022-02-24', '2021-12-09', '337698119948673', 'https://mypethq.io/microchip-search/'
);


--- alter dog table to create foreign keys for cust_id, vet_id. kennel_id, staff_id, and food_id to reference primary keys for customer, vet, kennel, staff, and food tables


ALTER TABLE dog ADD cust_id INT REFERENCES customer (cust_id);
ALTER TABLE dog ADD vet_id INT REFERENCES vet (vet_id);
ALTER TABLE dog ADD kennel_id INT REFERENCES kennel (kennel_id);
ALTER TABLE dog ADD staff_id INT REFERENCES staff (staff_id);
ALTER TABLE dog ADD food_id INT REFERENCES food (food_id);


--- assign id values for the foreign keys to be linked to the primary keys, follows the order of the ALTER TABLE statments


UPDATE dog SET cust_id = 1 WHERE dog_id = 1;
UPDATE dog SET cust_id = 2 WHERE dog_id = 2;
UPDATE dog SET cust_id = 3 WHERE dog_id = 3;
UPDATE dog SET cust_id = 4 WHERE dog_id = 4;
UPDATE dog SET cust_id = 5 WHERE dog_id = 5;
UPDATE dog SET cust_id = 6 WHERE dog_id = 6;
UPDATE dog SET cust_id = 7 WHERE dog_id = 7;
UPDATE dog SET cust_id = 8 WHERE dog_id = 8;
UPDATE dog SET cust_id = 9 WHERE dog_id = 9;
UPDATE dog SET cust_id = 10 WHERE dog_id = 10;
UPDATE dog SET cust_id = 10 WHERE dog_id = 11;
UPDATE dog SET cust_id = 11 WHERE dog_id = 12;
UPDATE dog SET cust_id = 11 WHERE dog_id = 13;
UPDATE dog SET cust_id = 12 WHERE dog_id = 14;
UPDATE dog SET cust_id = 12 WHERE dog_id = 15;

UPDATE dog SET vet_id = 1 WHERE dog_id = 1;
UPDATE dog SET vet_id = 1 WHERE dog_id = 2;
UPDATE dog SET vet_id = 1 WHERE dog_id = 3;
UPDATE dog SET vet_id = 5 WHERE dog_id = 4;
UPDATE dog SET vet_id = 2 WHERE dog_id = 5;
UPDATE dog SET vet_id = 2 WHERE dog_id = 6;
UPDATE dog SET vet_id = 1 WHERE dog_id = 7;
UPDATE dog SET vet_id = 3 WHERE dog_id = 8;
UPDATE dog SET vet_id = 4 WHERE dog_id = 9;
UPDATE dog SET vet_id = 1 WHERE dog_id = 10;
UPDATE dog SET vet_id = 1 WHERE dog_id = 11;
UPDATE dog SET vet_id = 3 WHERE dog_id = 12;
UPDATE dog SET vet_id = 3 WHERE dog_id = 13;
UPDATE dog SET vet_id = 5 WHERE dog_id = 14;
UPDATE dog SET vet_id = 5 WHERE dog_id = 15;

UPDATE dog SET kennel_id = 1 WHERE dog_id = 1;
UPDATE dog SET kennel_id = 9 WHERE dog_id = 2;
UPDATE dog SET kennel_id = 8 WHERE dog_id = 3;
UPDATE dog SET kennel_id = 7 WHERE dog_id = 4;
UPDATE dog SET kennel_id = 6 WHERE dog_id = 5;
UPDATE dog SET kennel_id = 5 WHERE dog_id = 6;
UPDATE dog SET kennel_id = 4 WHERE dog_id = 7;
UPDATE dog SET kennel_id = 3 WHERE dog_id = 8;
UPDATE dog SET kennel_id = 2 WHERE dog_id = 9;
UPDATE dog SET kennel_id = 10 WHERE dog_id = 10;
UPDATE dog SET kennel_id = 10 WHERE dog_id = 11;
UPDATE dog SET kennel_id = 11 WHERE dog_id = 12;
UPDATE dog SET kennel_id = 11 WHERE dog_id = 13;
UPDATE dog SET kennel_id = 12 WHERE dog_id = 14;
UPDATE dog SET kennel_id = 12 WHERE dog_id = 15;

UPDATE dog SET staff_id = 1 WHERE dog_id = 1;
UPDATE dog SET staff_id = 2 WHERE dog_id = 2;
UPDATE dog SET staff_id = 3 WHERE dog_id = 3;
UPDATE dog SET staff_id = 4 WHERE dog_id = 4;
UPDATE dog SET staff_id = 1 WHERE dog_id = 5;
UPDATE dog SET staff_id = 2 WHERE dog_id = 6;
UPDATE dog SET staff_id = 3 WHERE dog_id = 7;
UPDATE dog SET staff_id = 4 WHERE dog_id = 8;
UPDATE dog SET staff_id = 1 WHERE dog_id = 9;
UPDATE dog SET staff_id = 2 WHERE dog_id = 10;
UPDATE dog SET staff_id = 3 WHERE dog_id = 11;
UPDATE dog SET staff_id = 4 WHERE dog_id = 12;
UPDATE dog SET staff_id = 1 WHERE dog_id = 13;
UPDATE dog SET staff_id = 2 WHERE dog_id = 14;
UPDATE dog SET staff_id = 3 WHERE dog_id = 15;

UPDATE dog SET food_id = 2 WHERE dog_id = 3; 
UPDATE dog SET food_id = 2 WHERE dog_id = 7;
UPDATE dog SET food_id = 2 WHERE dog_id = 8;
UPDATE dog SET food_id = 1 WHERE dog_id = 14;
UPDATE dog SET food_id = 1 WHERE dog_id = 15;
UPDATE dog SET food_id = 3 WHERE dog_id = 1;
UPDATE dog SET food_id = 3 WHERE dog_id = 2;
UPDATE dog SET food_id = 3 WHERE dog_id = 4;
UPDATE dog SET food_id = 4 WHERE dog_id = 6;
UPDATE dog SET food_id = 3 WHERE dog_id = 9;
UPDATE dog SET food_id = 4 WHERE dog_id = 10;
UPDATE dog SET food_id = 3 WHERE dog_id = 13;
UPDATE dog SET food_id = 5 WHERE dog_id = 5;
UPDATE dog SET food_id = 6 WHERE dog_id = 12;
UPDATE dog SET food_id = 4 WHERE dog_id = 11;


--- join 1 
SELECT vet_clinic, vet_phone, dog_name, behaviours_notes, vaccine_date, cust_phone FROM vet
JOIN dog ON vet.vet_id = dog.vet_id
JOIN customer ON dog.cust_id = customer.cust_id
WHERE behaviours_notes = 'Epileptic, meds provided';

--- join 2
SELECT kennel.kennel_id, dog_name, dog_breed, dog_size, behaviours_notes, microchip_serial, cust_fname, cust_phone, cust_email FROM kennel
JOIN dog ON kennel.kennel_id = dog.kennel_id
JOIN customer ON dog.cust_id = customer.cust_id
WHERE behaviours_notes = 'Can be aggressive';


--- join 3
SELECT staff_fname, staff_username, staff_position, dog_name, dog_breed, dog_size, feeding_times, feeding_amount, food_type FROM staff
JOIN dog on staff.staff_id = dog.staff_id
JOIN food ON dog.food_id = food.food_id
WHERE feeding_times = 'Feed at 8am, 1pm and 5pm';


--- join 4
SELECT dog_name, drop_off, pick_up, cust_fname, cust_lname FROM customer
JOIN dog ON customer.cust_id = dog.cust_id
WHERE pick_up >= '2022-02-23';

