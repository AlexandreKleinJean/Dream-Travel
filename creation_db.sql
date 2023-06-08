DROP TABLE IF EXISTS "flights";
DROP TABLE IF EXISTS "hotels";
DROP TABLE IF EXISTS "destinations";
DROP TABLE IF EXISTS "users";

-- Users

CREATE TABLE IF NOT EXISTS "users" (
  "id" SERIAL PRIMARY KEY,
  "firstname" TEXT,
  "lastname" TEXT,
  "email" TEXT,
  "password" TEXT
);

INSERT INTO "users" ("id", "firstname", "lastname", "email", "password") VALUES
(1, 'Bambi', 'Bigcat', 'bambi@bigcat.com', '$2b$10$7vwYGrz2TGeyG4X8YnD9BOag9I.YKGUTJELs64qGmcK/syHu2BzTG'),
(2, 'Macaron', 'Smallcat', 'macaron@smallcat.com', '$2b$10$7vwYGrz2TGeyG4X8YnD9BOag9I.YKGUTJELs64qGmcK/syHu2BzTG');

-- Destinations

CREATE TABLE IF NOT EXISTS "destinations" (
  "id" SERIAL PRIMARY KEY,
  "city" TEXT,
  "country" TEXT
);

INSERT INTO "destinations" ("id", "city", "country") VALUES
(1,'San Jose','Costa Rica'),
(2,'Manille','Philippines'),
(3,'Ciudad Guatemala','Guatemala'),
(4,'Quito','Ecuador'),
(5,'Bangkok','Thailand'),
(6,'Bali','Indonesia');

-- Hotels

CREATE TABLE IF NOT EXISTS "hotels" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "destination_id" INTEGER NULL,
  "review" REAL,
  "price" REAL NOT NULL
);

INSERT INTO "hotels" ("id", "name", "destination_id", "review", "price") VALUES
(1,'Pura Vida', 1, 9, 30),
(2,'Good view', 2, 8, 40),
(3,'Amigos', 3, 6, 15),
(4,'Buenas', 4, 7, 45),
(5,'Same Same', 5, 10, 60),
(6,'Mai Pen Rai', 5, 5, 54),
(7,'Vida Loca', 1, 9, 29),
(8,'Good food', 6, 8, 75);

-- Flights

CREATE TABLE IF NOT EXISTS "flights" (
  "id" SERIAL PRIMARY KEY,
  "destination_id" INTEGER NULL,
  "company" TEXT,
  "duration" INT,
  "day_id" INT,
  "day" TEXT,
  "time" INT,
  "price" INTEGER
);

INSERT INTO "flights" ("id","destination_id", "company", "duration", "day_id", "day", "time", "price") VALUES
(1, 1, 'Luftansa', 12, 1, 'Monday', 8, 870),
(2, 1, 'Luftansa', 12, 1,'Monday', 12, 900),
(3, 1, 'Luftansa', 10, 1, 'Monday', 17, 1080),
(4, 1, 'Luftansa', 13, 3, 'Wednesday', 11, 950),
(5, 1, 'Luftansa', 10, 3, 'Wednesday', 16, 1120),
(6, 1, 'Luftansa', 15, 3, 'Wednesday', 22, 850),
(7, 1, 'Luftansa', 10, 5, 'Friday', 9, 1360),
(8, 1, 'Luftansa', 11, 5, 'Friday', 13, 1140),
(9, 1, 'Luftansa', 10, 7, 'Sunday', 18, 1430),
(10, 2, 'China Airlines', 17, 4, 'Thursday', 10, 1100),
(11, 2, 'China Airlines', 18, 3, 'Wednesday', 4, 1050),
(12, 2, 'China Airlines', 15, 2, 'Tuesday', 10, 1780),
(13, 2, 'China Airlines', 13, 6, 'Saturday', 12, 1890),
(14, 2, 'China Airlines', 13, 7, 'Sunday', 15, 2050),
(15, 2, 'China Airlines',19, 1, 'Monday', 1, 1460),
(16, 5, 'Thai Airlines',15, 1, 'Monday', 5, 690),
(17, 5, 'Thai Airlines',12, 1, 'Monday', 12, 860),
(18, 5, 'Thai Airlines',10, 1, 'Monday', 18, 1040),
(19, 5, 'Thai Airlines',15, 4, 'Thursday', 5, 620),
(20, 5, 'Thai Airlines',12,4, 'Thursday', 12, 880),
(21, 5, 'Thai Airlines',10, 4, 'Thursday', 18, 1000),
(22, 5, 'Thai Airlines',15, 2, 'Tuesday', 5, 620),
(23, 5, 'Thai Airlines',12, 2, 'Tuesday', 12, 880),
(24, 5, 'Thai Airlines',10, 2, 'Tuesday', 18, 1000),
(25, 5, 'Thai Airlines',15,6, 'Saturday', 5, 900),
(26, 5, 'Thai Airlines',12, 6, 'Saturday', 12, 1160),
(27, 5, 'Thai Airlines',10, 6, 'Saturday', 18, 1180),
(28, 3, 'Luftansa',18, 4, 'Thursday', 14, 690),
(29, 3, 'Luftansa',15, 4, 'Thursday', 22, 960),
(30, 3, 'Luftansa',18, 5, 'Friday', 14, 690),
(31, 3, 'Luftansa',15, 5, 'Friday', 22, 960),
(32, 3, 'Luftansa',18, 7, 'Sunday', 14, 1020),
(33, 3, 'Luftansa',15, 7, 'Sunday', 22, 1350),
(34, 6, 'Malaysia Airlines',19, 1, 'Monday', 4, 1750),
(35, 6, 'Malaysia Airlines',19, 3, 'Wednesday', 10, 1700),
(36, 6, 'Malaysia Airlines',19, 6, 'Saturday', 15, 2160),
(37, 4, 'American Airlines',15, 1, 'Monday', 9, 970),
(38, 4, 'American Airlines',12, 1, 'Monday', 15, 1480),
(39, 4, 'American Airlines',15, 4, 'Thursday', 9, 970),
(40, 4, 'American Airlines',12, 4, 'Thursday', 15, 1480),
(41, 4, 'American Airlines',16, 5, 'Friday', 9, 1040),
(42, 4, 'American Airlines',12, 5, 'Friday', 15, 1280),
(43, 4, 'American Airlines',16, 6, 'Saturday', 9, 1130);

/*------------------------------------------EVITER DUPLICATA DE KEY*/
SELECT setval('users_id_seq', (SELECT MAX(id) from "users"));
SELECT setval('destinations_id_seq', (SELECT MAX(id) from "destinations"));
SELECT setval('hotels_id_seq', (SELECT MAX(id) from "hotels"));
SELECT setval('flights_id_seq', (SELECT MAX(id) from "flights"));