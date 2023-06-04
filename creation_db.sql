DROP TABLE IF EXISTS "flights";
DROP TABLE IF EXISTS "hotels";

-- Hotels

CREATE TABLE IF NOT EXISTS "hotels" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "city" TEXT,
  "country" TEXT,
  "review" REAL,
  "price" REAL NOT NULL
);

INSERT INTO "hotels" ("id", "name", "city", "country", "review", "price") VALUES
(1,'Pura Vida','San José', 'Costa Rica', 9, 30),
(2,'Good view','Manille', 'Philippines', 8, 40),
(3,'Amigos','Guatemala', 'Guatemala', 6, 15),
(4,'Buenas','Quito', 'Ecuador', 7, 45),
(5,'Same Same','Chiang Mai', 'Thailand', 10, 60),
(6,'Mai Pen Rai','Koh-Lipe', 'Thailand', 5, 54),
(7,'Vida Loca','Tortugueiro', 'Costa Rica', 9, 29),
(8,'Good food','Bali', 'Indonesia', 8, 75);

-- Flights

CREATE TABLE IF NOT EXISTS "flights" (
  "id" SERIAL PRIMARY KEY,
  "destination" TEXT,
  "company" TEXT,
  "duration" INT,
  "day_id" INT,
  "day" TEXT,
  "time" INT,
  "price" REAL NOT NULL
);

INSERT INTO "flights" ("id","destination", "company", "duration", "day_id", "day", "time", "price") VALUES
(1,'Costa Rica', 'Luftansa', 12, 1, 'Monday', 8, 870),
(2,'Costa Rica', 'Luftansa', 12, 1,'Monday', 12, 900),
(3,'Costa Rica', 'Luftansa', 10, 1, 'Monday', 17, 1080),
(4,'Costa Rica', 'Luftansa', 13, 3, 'Wednesday', 11, 950),
(5,'Costa Rica', 'Luftansa', 10, 3, 'Wednesday', 16, 1120),
(6,'Costa Rica', 'Luftansa', 15, 3, 'Wednesday', 22, 850),
(7,'Costa Rica', 'Luftansa', 10, 5, 'Friday', 9, 1360),
(8,'Costa Rica', 'Luftansa', 11, 5, 'Friday', 13, 1140),
(9,'Costa Rica', 'Luftansa', 10, 7, 'Sunday', 18, 1430),
(10,'Philippines', 'China Airlines', 17, 4, 'Thursday', 10, 1100),
(11,'Philippines', 'China Airlines', 18, 3, 'Wednesday', 4, 1050),
(12,'Philippines', 'China Airlines', 15, 2, 'Tuesday', 10, 1780),
(13,'Philippines', 'China Airlines', 13, 6, 'Saturday', 12, 1890),
(14,'Philippines', 'China Airlines', 13, 7, 'Sunday', 15, 2050),
(15,'Philippines', 'China Airlines',19, 1, 'Monday', 1, 1460),
(16,'Thailand', 'Thai Airlines',15, 1, 'Monday', 5, 690),
(17,'Thailand', 'Thai Airlines',12, 1, 'Monday', 12, 860),
(18,'Thailand', 'Thai Airlines',10, 1, 'Monday', 18, 1040),
(19,'Thailand', 'Thai Airlines',15, 4, 'Thursday', 5, 620),
(20,'Thailand', 'Thai Airlines',12,4, 'Thursday', 12, 880),
(21,'Thailand', 'Thai Airlines',10, 4, 'Thursday', 18, 1000),
(22,'Thailand', 'Thai Airlines',15, 2, 'Tuesday', 5, 620),
(23,'Thailand', 'Thai Airlines',12, 2, 'Tuesday', 12, 880),
(24,'Thailand', 'Thai Airlines',10, 2, 'Tuesday', 18, 1000),
(25,'Thailand', 'Thai Airlines',15,6, 'Saturday', 5, 900),
(26,'Thailand', 'Thai Airlines',12, 6, 'Saturday', 12, 1160),
(27,'Thailand', 'Thai Airlines',10, 6, 'Saturday', 18, 1180),
(28,'Guatemala', 'Luftansa',18, 4, 'Thursday', 14, 690),
(29,'Guatemala', 'Luftansa',15, 4, 'Thursday', 22, 960),
(30,'Guatemala', 'Luftansa',18, 5, 'Friday', 14, 690),
(31,'Guatemala', 'Luftansa',15, 5, 'Friday', 22, 960),
(32,'Guatemala', 'Luftansa',18, 7, 'Sunday', 14, 1020),
(33,'Guatemala', 'Luftansa',15, 7, 'Sunday', 22, 1350),
(34,'Indonesia', 'Malaysia Airlines',19, 1, 'Monday', 4, 1750),
(35,'Indonesia', 'Malaysia Airlines',19, 3, 'Wednesday', 10, 1700),
(36,'Indonesia', 'Malaysia Airlines',19, 6, 'Saturday', 15, 2160),
(37,'Ecuador', 'American Airlines',15, 1, 'Monday', 9, 970),
(38,'Ecuador', 'American Airlines',12, 1, 'Monday', 15, 1480),
(39,'Ecuador', 'American Airlines',15, 4, 'Thursday', 9, 970),
(40,'Ecuador', 'American Airlines',12, 4, 'Thursday', 15, 1480),
(41,'Ecuador', 'American Airlines',16, 5, 'Friday', 9, 1040),
(42,'Ecuador', 'American Airlines',12, 5, 'Friday', 15, 1280),
(43,'Ecuador', 'American Airlines',16, 6, 'Saturday', 9, 1130);