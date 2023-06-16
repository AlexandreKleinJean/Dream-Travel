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


-- Cities

CREATE TABLE IF NOT EXISTS "cities" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "destinations_id" INTEGER
);

INSERT INTO "cities" ("id", "name", "destinations_id") VALUES
(1, 'San José', 1),
(2, 'Limón', 1),
(3, 'Heredia', 1),
(4, 'Alajuela', 1),
(5, 'Cartago', 1),
(6, 'Liberia', 1),
(7, 'Puntarenas', 1),
(8, 'San Carlos', 1),
(9, 'Quepos', 1),
(10, 'Guápiles', 1),
(11, 'Manila', 2),
(12, 'Quezon City', 2),
(13, 'Davao City', 2),
(14, 'Cebu City', 2),
(15, 'Zamboanga City', 2),
(16, 'Antipolo', 2),
(17, 'Pasig', 2),
(18, 'Taguig', 2),
(19, 'Caloocan', 2),
(20, 'Cagayan de Oro', 2),
(21, 'Guatemala City', 3),
(22, 'Mixco', 3),
(23, 'Villa Nueva', 3),
(24, 'Quetzaltenango', 3),
(25, 'Escuintla', 3),
(26, 'San Juan Sacatepéquez', 3),
(27, 'Villa Canales', 3),
(28, 'Chinautla', 3),
(29, 'Petapa', 3),
(30, 'Chimaltenango', 3),
(31, 'Quito', 4),
(32, 'Guayaquil', 4),
(33, 'Cuenca', 4),
(34, 'Ambato', 4),
(35, 'Manta', 4),
(36, 'Loja', 4),
(37, 'Esmeraldas', 4),
(38, 'Portoviejo', 4),
(39, 'Machala', 4),
(40, 'Santo Domingo', 4),
(41, 'Bangkok', 5),
(42, 'Chiang Mai', 5),
(43, 'Pattaya', 5),
(44, 'Phuket', 5),
(45, 'Krabi', 5),
(46, 'Ayutthaya', 5),
(47, 'Hua Hin', 5),
(48, 'Nonthaburi', 5),
(49, 'Udon Thani', 5),
(50, 'Samut Prakan', 5),
(51, 'Jakarta', 6),
(52, 'Surabaya', 6),
(53, 'Medan', 6),
(54, 'Bandung', 6),
(55, 'Semarang', 6),
(56, 'Makassar', 6),
(57, 'Palembang', 6),
(58, 'Depok', 6),
(59, 'Tangerang', 6),
(60, 'Bekasi', 6);


-- Destinations

CREATE TABLE IF NOT EXISTS "destinations" (
  "id" SERIAL PRIMARY KEY,
  "country" TEXT,
  "description" TEXT
);

INSERT INTO "destinations" ("id", "country", "description") VALUES
(1, 'Costa Rica', 'Known for its incredible biodiversity and commitment to conservation, Costa Rica is a nature lovers paradise in Central America. It boasts lush rainforests, active volcanoes, and pristine beaches on both the Pacific and Caribbean coasts. Visitors can enjoy thrilling outdoor activities such as ziplining, surfing, and wildlife spotting, while also experiencing the pura vida lifestyle and warm hospitality of the Costa Rican people.'),
(2, 'Philippines', 'The Philippines is an archipelago of over 7,000 islands, offering breathtaking natural beauty and a rich cultural heritage. With pristine beaches, crystal-clear waters, and vibrant coral reefs, it is a paradise for beach lovers and divers. The country is also home to bustling cities like Manila, where visitors can explore historical sites, sample diverse cuisine, and experience the warm and hospitable Filipino culture.'),
(3, 'Guatemala', 'Located in Central America, is a captivating country known for its rich Mayan heritage, stunning landscapes, and vibrant culture. The country is home to ancient ruins such as Tikal, where visitors can immerse themselves in the fascinating history of the Mayan civilization. Guatemala natural beauty is evident in its breathtaking volcanic peaks, lush rainforests, and picturesque lakes, including Lake Atitlán, surrounded by charming indigenous villages. The colonial city of Antigua is a UNESCO World Heritage site, offering cobblestone streets, colorful buildings, and impressive churches. With its warm and welcoming people, Guatemala invites travelers to explore its diverse landscapes and experience its vibrant traditions.'),
(4, 'Ecuador', 'Nestled in the heart of South America, Ecuador is a country of incredible biodiversity and stunning landscapes. From the towering peaks of the Andes to the lush Amazon rainforest and the pristine Galapagos Islands, Ecuador offers a wide range of natural wonders. Visitors can explore colonial cities like Quito, hike through volcanoes, discover indigenous markets, and experience the unique culture of this diverse country.'),
(5, 'Thailand', 'Known for its vibrant culture, stunning beaches, and bustling cities, Thailand is a captivating country in Southeast Asia. From the bustling streets of Bangkok to the idyllic islands of Phuket and Krabi, Thailand offers a diverse range of experiences. Visitors can explore ancient temples, indulge in delicious street food, and immerse themselves in the warm hospitality of the Thai people.'),
(6, 'Indonesia', 'With its sprawling archipelago of more than 17,000 islands, Indonesia is a diverse and enchanting country in Southeast Asia. From the famous island of Bali with its stunning beaches and vibrant cultural scene, to the ancient temples of Borobudur and Prambanan in Java, and the lush rainforests of Borneo, Indonesia offers a wealth of natural and cultural attractions. Visitors can immerse themselves in the vibrant traditions, sample diverse cuisines, and explore unique landscapes, making Indonesia a truly captivating destination.');

-- Hotels

CREATE TABLE IF NOT EXISTS "hotels" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "destinations_id" INTEGER NULL,
  "cities_id" INTEGER NULL,
  "review" REAL,
  "price" REAL NOT NULL,
  "image" REAL,
  "description" TEXT
);

INSERT INTO "hotels" ("id", "name", "destinations_id", "cities_id", "review", "price", "image", "description") VALUES
(1, 'Hotel Serenity', 4, 32, 8, 150, 2, 'Experience luxury at its finest.'),
(2, 'Ocean View Resort', 2, 13, 6, 80, 5, 'Enjoy breathtaking sea panoramas.'),
(3, 'Alpine Lodge', 6, 54, 9, 120, 4, 'Cozy retreat amidst the mountains.'),
(4, 'City Lights Inn', 3, 27, 4, 70, 9, 'Affordable stay in the heart of the city.'),
(5, 'Tranquil Spa', 1, 8, 7, 200, 7, 'Unwind and rejuvenate your senses.'),
(6, 'Sunset Hotel', 5, 46, 5, 90, 15, 'Spectacular views of the setting sun.'),
(7, 'Paradise Resort', 1, 5, 3, 180, 20, 'Luxurious stay in a tropical paradise.'),
(8, 'Woodsy Lodge', 3, 28, 8, 100, 14, 'Embrace nature in a cozy ambiance.'),
(9, 'Budget Inn', 4, 39, 4, 75, 13, 'Comfortable and affordable accommodations.'),
(10, 'Urban Heights', 2, 12, 9, 95, 11, 'Stylish hotel in the heart of the city.'),
(11, 'Serene Resort', 5, 46, 6, 110, 8, 'Peaceful retreat with excellent amenities.'),
(12, 'Riverside Lodge', 1, 4, 7, 130, 4, 'Enjoy the tranquil riverside setting.'),
(13, 'Seaside Inn', 4, 34, 5, 85, 2, 'Cozy accommodations just steps from the beach.'),
(14, 'Mountain View Hotel', 6, 57, 9, 160, 18, 'Panoramic views of majestic mountains.'),
(15, 'The Oasis', 2, 14, 7, 120, 19, 'Escape to a tropical oasis of relaxation.'),
(16, 'Cosmopolitan Hotel', 3, 28, 6, 90, 1, 'Modern and stylish hotel in the city center.'),
(17, 'Golden Sands Resort', 1, 6, 4, 180, 6, 'Enjoy golden sandy beaches and clear waters.'),
(18, 'Forest Retreat', 5, 47, 8, 110, 5, 'Immerse yourself in nature tranquility.'),
(19, 'Harbor View Inn', 6, 52, 5, 95, 4, 'Scenic harbor views from the comfort of your room.'),
(20, 'Cozy Corner Motel', 4, 31, 7, 75, 17, 'Warm and cozy accommodations for a restful stay.'),
(21, 'Lakeside Resort', 2, 19, 6, 140, 14, 'Unwind by the serene lakeshore and enjoy water activities.'),
(22, 'Sunny Skies Hotel', 3, 27, 4, 80, 12, 'Bright and inviting hotel with friendly service.'),
(23, 'Tropical Breeze', 1, 5, 9, 200, 12, 'Experience the refreshing tropical breeze in this beachfront hotel.'),
(24, 'Mountain Lodge', 5, 47, 8, 100, 6, 'Escape to a peaceful mountain retreat with breathtaking views.'),
(25, 'Urban Chic', 2, 17, 7, 120, 7, 'Contemporary and stylish accommodations in the heart of the city.'),
(26, 'Secluded Hideaway', 6, 53, 5, 90, 3, 'Find peace and seclusion in this hidden gem.'),
(27, 'Harmony Hotel', 1, 1, 6, 170, 3, 'Experience harmony and tranquility in a luxurious setting.'),
(28, 'Whispering Pines Inn', 3, 26, 7, 95, 16, 'Cozy inn nestled amidst whispering pines.'),
(29, 'Seaview Resort', 4, 34, 4, 85, 14, 'Enjoy stunning ocean views at this seaside resort.'),
(30, 'Downtown Suites', 2, 11, 9, 110, 10, 'Chic and comfortable suites in the heart of downtown.'),
(31, 'Mountain Haven', 5, 50, 7, 130, 10, 'A haven of peace and serenity amidst majestic mountains.'),
(32, 'Serenade Hotel', 6, 60, 6, 80, 15, 'Indulge in a serene and relaxing stay at this charming hotel.'),
(33, 'Beachfront Bliss', 1, 1, 8, 190, 19, 'Experience pure bliss with direct access to the sandy beach.'),
(34, 'Rustic Cabin Retreat', 3, 30, 5, 75, 20, 'Escape to a cozy rustic cabin surrounded by nature.'),
(35, 'Sunshine Resort', 4, 40, 9, 150, 2, 'Bask in the sunshine and unwind at this idyllic resort.'),
(36, 'Urban Oasis', 2, 20, 4, 100, 1, 'Find an oasis of calm and relaxation in the bustling city.'),
(37, 'Nature Retreat', 5, 43, 8, 120, 3, 'Immerse yourself in the beauty of nature at this tranquil retreat.'),
(38, 'Tranquil Waters Hotel', 1, 2, 6, 160, 20, 'Experience serenity and tranquility by the peaceful waters.'),
(39, 'Charming Cottage', 6, 58, 7, 90, 16, 'Escape to a charming cottage and enjoy a cozy stay.'),
(40, 'Seaside Serenity', 4, 39, 5, 80, 11, 'Discover the serenity of the seaside at this peaceful retreat.'),
(41, 'Cityscape Suites', 2, 14, 8, 130, 10, 'Enjoy stunning cityscape views from the comfort of your suite.'),
(42, 'Majestic Peaks Lodge', 5, 50, 6, 100, 9, 'Experience the grandeur of majestic peaks at this lodge.'),
(43, 'Harbor Lights Inn', 1, 10, 7, 180, 19, 'Cozy inn with captivating harbor views and warm hospitality.'),
(44, 'Enchanted Forest Resort', 3, 22, 4, 85, 5, 'Discover enchantment and natural beauty at this forest resort.'),
(45, 'Sunset Shores Hotel', 4, 33, 9, 110, 5, 'Witness breathtaking sunsets at this beachfront hotel.'),
(46, 'Metropolitan Suites', 2, 13, 7, 140, 1, 'Experience luxury and sophistication in these stylish suites.'),
(47, 'Mountain View Manor', 5, 44, 8, 95, 18, 'Enjoy panoramic mountain views from the comfort of your room.'),
(48, 'Secluded Haven', 6, 55, 6, 75, 14, 'Escape to a secluded haven and embrace tranquility.'),
(49, 'Beachside Retreat', 1, 9, 8, 200, 12, 'Rejuvenate your soul with a relaxing beachside retreat.'),
(50, 'Cozy Cabin', 3, 22, 5, 90, 11, 'Experience the coziness of a charming cabin in the wilderness.'),
(51, 'Lakeside Paradise', 4, 31, 9, 170, 10, 'Experience paradise by the serene lakeside and indulge in luxury.'),
(52, 'City Lights Tower', 2, 14, 4, 120, 8, 'Enjoy breathtaking city views from the heights of this tower hotel.'),
(53, 'Valley View Lodge', 5, 47, 8, 130, 5, 'Experience the beauty of the valley from this serene lodge.'),
(54, 'Tranquil Gardens Inn', 1, 6, 6, 95, 2, 'Find peace and serenity in the beautiful gardens of this inn.'),
(55, 'Rustic Charm Retreat', 3, 27, 7, 160, 2, 'Escape to a retreat full of rustic charm and natural beauty.'),
(56, 'Seaview Heights', 4, 38, 5, 80, 19, 'Enjoy stunning views of the sea from the heights of this hotel.'),
(57, 'Cityscape Haven', 2, 11, 8, 150, 3, 'Find haven in the midst of the bustling cityscape at this hotel.'),
(58, 'Mountain Magic Resort', 5, 47, 6, 100, 20, 'Experience the magic of the mountains at this captivating resort.'),
(59, 'Coastal Retreat', 1, 8, 7, 180, 1, 'Unwind and recharge at this charming coastal retreat.'),
(60, 'Urban Deluxe', 2, 15, 4, 85, 9, 'Indulge in deluxe comfort and convenience in the urban setting.'),
(61, 'Enchanted Woods Lodge', 3, 23, 9, 110, 8, 'Discover enchantment and tranquility in the woods at this lodge.'),
(62, 'Sunset Paradise Resort', 5, 50, 7, 130, 4, 'Experience a slice of paradise with stunning sunset views.'),
(63, 'Riverfront Haven', 6, 60, 6, 90, 6, 'Escape to a peaceful haven by the tranquil riverfront.'),
(64, 'Beachfront Bliss Hotel', 1, 7, 8, 190, 4, 'Experience pure bliss with a beachfront location and luxury amenities.'),
(65, 'Countryside Villa', 3, 22, 5, 75, 16, 'Enjoy a relaxing stay in a charming countryside villa.'),
(66, 'Serenity Springs Resort', 4, 33, 9, 150, 15, 'Find serenity and relaxation in the natural springs of this resort.'),
(67, 'Urban Retreat', 2, 11, 6, 100, 4, 'Retreat from the urban hustle and bustle to a peaceful oasis.'),
(68, 'Mountain Escapes', 5, 41, 8, 120, 18, 'Escape to the mountains for an unforgettable natural retreat.'),
(69, 'Seaside Sands Resort', 1, 9, 7, 160, 13, 'Relax and rejuvenate at this beachfront resort with sandy shores.'),
(70, 'Cosmopolitan Haven', 2, 16, 4, 90, 10, 'Find haven in the cosmopolitan city with modern comforts.'),
(71, 'Wilderness Lodge', 3, 24, 9, 130, 8, 'Experience the wilderness at this rustic lodge surrounded by nature.'),
(72, 'Sunrise Bay Hotel', 4, 36, 5, 80, 4, 'Wake up to breathtaking sunrise views over the bay at this hotel.'),
(73, 'Harbor View Boutique', 1, 5, 8, 170, 3, 'Indulge in a boutique experience with picturesque harbor views.'),
(74, 'Tranquil Oasis Retreat', 6, 56, 6, 95, 1, 'Escape to a tranquil oasis and find peace in the serene surroundings.'),
(75, 'Coastal Breeze Inn', 4, 40, 7, 150, 9, 'Feel the coastal breeze and relax at this charming inn.'),
(76, 'Metropolitan Hideaway', 2, 13, 6, 110, 10, 'Find a hidden retreat in the heart of the bustling city.'),
(77, 'Majestic Valley Lodge', 5, 44, 5, 140, 5, 'Experience the majesty of the valley at this lodge nestled in nature.'),
(78, 'Seaside Sunset Hotel', 1, 8, 9, 120, 18, 'Enjoy stunning seaside sunsets from the comfort of this hotel.'),
(79, 'Downtown Delight', 2, 16, 8, 160, 1, 'Delight in the vibrant energy of downtown from this luxurious hotel.'),
(80, 'Mountain Serenity Retreat', 5, 47, 7, 110, 2, 'Find serenity and rejuvenation amidst the mountains at this retreat.'),
(81, 'Coastal Shores Resort', 1, 6, 4, 190, 3, 'Experience the beauty of coastal shores at this luxurious resort.'),
(82, 'Rustic Elegance Lodge', 3, 26, 5, 75, 11, 'Enjoy rustic elegance and charm at this serene lodge.'),
(83, 'Harmony Gardens Inn', 4, 36, 9, 130, 19, 'Immerse yourself in harmony and nature at this tranquil inn.'),
(84, 'Cityscape Charm', 2, 14, 6, 100, 17, 'Experience the charm of the cityscape from this cozy hotel.'),
(85, 'Enchanted Mountain Resort', 5, 42, 8, 120, 18, 'Escape to an enchanting mountain resort surrounded by natural beauty.'),
(86, 'Seaview Hideout', 1, 8, 7, 160, 14, 'Find seclusion and relaxation at this hidden gem with stunning seaviews.'),
(87, 'Modern Oasis', 2, 11, 4, 90, 20, 'Discover a modern oasis of tranquility in the heart of the city.'),
(88, 'Forest Haven Lodge', 3, 23, 9, 110, 8, 'Find haven in the peacefulness of the forest at this cozy lodge.'),
(89, 'Sunset Retreat', 4, 39, 5, 80, 6, 'Embrace the beauty of stunning sunsets at this peaceful retreat.'),
(90, 'Harbor Lights Tower', 1, 7, 8, 170, 5, 'Enjoy breathtaking harbor views from the heights of this tower hotel.'),
(91, 'Tranquil Woods Inn', 6, 60, 6, 95, 2, 'Experience tranquility and natural beauty in the serene woods.'),
(92, 'Seaside Escape', 4, 31, 7, 150, 1, 'Escape to a seaside paradise and unwind by the shimmering waters.'),
(93, 'Cityscape Serenity', 2, 20, 6, 110, 1, 'Find serenity amidst the vibrant cityscape at this elegant hotel.'),
(94, 'Mountain Bliss Lodge', 5, 50, 5, 140, 19, 'Experience pure bliss surrounded by the beauty of the mountains at this lodge.'),
(95, 'Coastal Paradise Hotel', 1, 10, 9, 120, 17, 'Indulge in a luxurious coastal paradise with breathtaking views.'),
(96, 'Downtown Luxury', 2, 20, 8, 160, 4, 'Experience luxury and sophistication in the heart of downtown.'),
(97, 'Mountain Meadows Retreat', 5, 49, 7, 110, 17, 'Find peace and serenity in the meadows of the majestic mountains.'),
(98, 'Seaview Tranquility', 1, 9, 4, 190, 12, 'Experience tranquility and serenity with stunning seaviews at this resort.'),
(99, 'Rustic Mountain Lodge', 3, 29, 5, 75, 12, 'Escape to a rustic lodge nestled in the beauty of the mountains.'),
(100, 'Urban Elegance', 2, 12, 9, 130, 18, 'Indulge in the elegance and sophistication of the urban setting.'),
(101,'Pura Vida', 1, 1, 9, 30, 10, 'Indulge in pure luxury at our exquisite hotel, where personalized service, opulent accommodations, and a tranquil spa sanctuary await, ensuring an unforgettable stay.'),
(102,'Good view', 2, 11, 8, 40, 9, 'Immerse yourself in paradise at our beachfront oasis, where pristine white sands, turquoise waters, and world-class amenities create the perfect setting for a blissful and rejuvenating vacation.'),
(103,'Amigos', 3, 22, 6, 15, 2, 'Experience the epitome of urban sophistication at our stylish hotel, offering sleek design, contemporary comforts, and a prime location in the heart of the city, catering to discerning travelers seeking an unforgettable urban escape.'),
(104,'Buenas', 4, 33, 7, 45, 1, 'Escape to the tranquility of the mountains at our charming lodge, nestled amidst breathtaking natural beauty, where cozy accommodations, warm hospitality, and outdoor adventures await, providing an idyllic getaway for nature enthusiasts.'),
(105,'Same Same', 5, 44, 10, 60, 13, 'Step back in time and embrace the allure of yesteryears at our elegant manor, where historic charm, lavish accommodations, and impeccable service combine to create an enchanting stay in a bygone era.'),
(106,'Mai Pen Rai', 5, 45, 5, 54, 13, 'Create lifelong memories at our family-friendly resort, where endless entertainment options, spacious accommodations, and a myriad of activities for all ages ensure a delightful vacation experience for the whole family.'),
(107,'Vida Loca', 1, 10, 9, 29, 11, 'Embrace sustainable luxury at our eco-conscious retreat, where eco-friendly practices, organic cuisine, and breathtaking surroundings harmonize to offer a guilt-free and rejuvenating escape into nature.'),
(108,'Good food', 6, 55, 8, 75, 5, 'Experience the perfect blend of business and leisure at our sophisticated hotel, offering state-of-the-art facilities, seamless connectivity, and elegant accommodations, catering to the needs of modern business travelers seeking comfort and productivity.');

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
SELECT setval('cities_id_seq', (SELECT MAX(id) from "cities"));
SELECT setval('destinations_id_seq', (SELECT MAX(id) from "destinations"));
SELECT setval('hotels_id_seq', (SELECT MAX(id) from "hotels"));
SELECT setval('flights_id_seq', (SELECT MAX(id) from "flights"));