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
  "country" TEXT,
  "description" TEXT
);

INSERT INTO "destinations" ("id", "city", "country", "description") VALUES
(1,'San Jose','Costa Rica', 'Known for its incredible biodiversity and commitment to conservation, Costa Rica is a nature lovers paradise in Central America. It boasts lush rainforests, active volcanoes, and pristine beaches on both the Pacific and Caribbean coasts. Visitors can enjoy thrilling outdoor activities such as ziplining, surfing, and wildlife spotting, while also experiencing the pura vida lifestyle and warm hospitality of the Costa Rican people.'),
(2,'Manille','Philippines', 'The Philippines is an archipelago of over 7,000 islands, offering breathtaking natural beauty and a rich cultural heritage. With pristine beaches, crystal-clear waters, and vibrant coral reefs, it is a paradise for beach lovers and divers. The country is also home to bustling cities like Manila, where visitors can explore historical sites, sample diverse cuisine, and experience the warm and hospitable Filipino culture.'),
(3,'Ciudad Guatemala','Guatemala', 'Located in Central America, is a captivating country known for its rich Mayan heritage, stunning landscapes, and vibrant culture. The country is home to ancient ruins such as Tikal, where visitors can immerse themselves in the fascinating history of the Mayan civilization. Guatemala natural beauty is evident in its breathtaking volcanic peaks, lush rainforests, and picturesque lakes, including Lake Atitlán, surrounded by charming indigenous villages. The colonial city of Antigua is a UNESCO World Heritage site, offering cobblestone streets, colorful buildings, and impressive churches. With its warm and welcoming people, Guatemala invites travelers to explore its diverse landscapes and experience its vibrant traditions.'),
(4,'Quito','Ecuador', 'Nestled in the heart of South America, Ecuador is a country of incredible biodiversity and stunning landscapes. From the towering peaks of the Andes to the lush Amazon rainforest and the pristine Galapagos Islands, Ecuador offers a wide range of natural wonders. Visitors can explore colonial cities like Quito, hike through volcanoes, discover indigenous markets, and experience the unique culture of this diverse country.'),
(5,'Bangkok','Thailand', 'Known for its vibrant culture, stunning beaches, and bustling cities, Thailand is a captivating country in Southeast Asia. From the bustling streets of Bangkok to the idyllic islands of Phuket and Krabi, Thailand offers a diverse range of experiences. Visitors can explore ancient temples, indulge in delicious street food, and immerse themselves in the warm hospitality of the Thai people.'),
(6,'Bali','Indonesia', 'With its sprawling archipelago of more than 17,000 islands, Indonesia is a diverse and enchanting country in Southeast Asia. From the famous island of Bali with its stunning beaches and vibrant cultural scene, to the ancient temples of Borobudur and Prambanan in Java, and the lush rainforests of Borneo, Indonesia offers a wealth of natural and cultural attractions. Visitors can immerse themselves in the vibrant traditions, sample diverse cuisines, and explore unique landscapes, making Indonesia a truly captivating destination.');

-- Hotels

CREATE TABLE IF NOT EXISTS "hotels" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "destination_id" INTEGER NULL,
  "review" REAL,
  "price" REAL NOT NULL,
  "description" TEXT
);

INSERT INTO "hotels" ("id", "name", "destination_id", "review", "price", "description") VALUES
(1,'Pura Vida', 1, 9, 30, 'Indulge in pure luxury at our exquisite hotel, where personalized service, opulent accommodations, and a tranquil spa sanctuary await, ensuring an unforgettable stay.'),
(2,'Good view', 2, 8, 40, 'Immerse yourself in paradise at our beachfront oasis, where pristine white sands, turquoise waters, and world-class amenities create the perfect setting for a blissful and rejuvenating vacation.'),
(3,'Amigos', 3, 6, 15, 'Experience the epitome of urban sophistication at our stylish hotel, offering sleek design, contemporary comforts, and a prime location in the heart of the city, catering to discerning travelers seeking an unforgettable urban escape.'),
(4,'Buenas', 4, 7, 45, 'Escape to the tranquility of the mountains at our charming lodge, nestled amidst breathtaking natural beauty, where cozy accommodations, warm hospitality, and outdoor adventures await, providing an idyllic getaway for nature enthusiasts.'),
(5,'Same Same', 5, 10, 60, 'Step back in time and embrace the allure of yesteryears at our elegant manor, where historic charm, lavish accommodations, and impeccable service combine to create an enchanting stay in a bygone era.'),
(6,'Mai Pen Rai', 5, 5, 54, 'Create lifelong memories at our family-friendly resort, where endless entertainment options, spacious accommodations, and a myriad of activities for all ages ensure a delightful vacation experience for the whole family.'),
(7,'Vida Loca', 1, 9, 29, 'Embrace sustainable luxury at our eco-conscious retreat, where eco-friendly practices, organic cuisine, and breathtaking surroundings harmonize to offer a guilt-free and rejuvenating escape into nature.'),
(8,'Good food', 6, 8, 75, 'Experience the perfect blend of business and leisure at our sophisticated hotel, offering state-of-the-art facilities, seamless connectivity, and elegant accommodations, catering to the needs of modern business travelers seeking comfort and productivity.');

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