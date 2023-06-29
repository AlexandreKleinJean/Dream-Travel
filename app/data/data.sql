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
  "image_general" TEXT,
  "image_restaurant" TEXT,
  "image_pool" TEXT,
  "description" TEXT
);

INSERT INTO "hotels" ("id", "name", "destinations_id", "cities_id", "review", "price", "image_general", "image_restaurant", "image_pool", "description") VALUES
(6, 'Sunset Paradise Resort', 2, 13, 8, 180, 'g3', 'r5', 'p8', 'Experience paradise at our luxurious beachfront resort. Bask in the golden rays of the sun as you relax on our pristine white sand beach. Our spacious and elegantly designed rooms offer stunning sunset views from private balconies. Indulge in a variety of water activities, from snorkeling to jet skiing. Savor gourmet cuisine at our beachfront restaurant and unwind by our infinity pool overlooking the turquoise waters. Sunset Paradise Resort is the epitome of tropical luxury.'),
(7, 'Mountain View Hotel', 6, 54, 7, 100, 'g6', 'r3', 'p6', 'Immerse yourself in breathtaking mountain vistas. Situated amidst lush greenery, Mountain View Hotel offers a serene and picturesque escape. Wake up to stunning sunrise views over the mountains from the comfort of your cozy room. Explore nearby hiking trails, go fishing in crystal-clear lakes, or simply relax in our peaceful garden. Delight your taste buds with locally sourced cuisine at our charming restaurant, and rejuvenate with a dip in our mountain-facing pool. Mountain View Hotel is a haven for nature enthusiasts.'),
(8, 'Urban Retreat', 3, 27, 9, 120, 'g8', 'r9', 'p1', 'Experience tranquility in the heart of the city. Step into our urban oasis and leave the hustle and bustle behind. Our modern and stylish rooms provide a comfortable and quiet refuge from the urban jungle. Enjoy a delightful meal at our trendy rooftop restaurant with panoramic city views. Unwind at our rooftop pool and lounge area, where you can soak up the sun or sip on refreshing cocktails. Urban Retreat offers a perfect blend of city convenience and relaxation.'),
(9, 'Beachside Haven', 2, 13, 9, 160, 'g1', 'r8', 'p2', 'Discover a slice of paradise by the sea. Beachside Haven offers a tranquil and idyllic escape on a pristine sandy beach. Immerse yourself in luxury with our spacious and elegantly appointed accommodations. Indulge in world-class cuisine at our beachfront restaurant, where fresh seafood and tropical flavors take center stage. Unwind by our infinity pool overlooking the azure ocean, or enjoy water sports and beach activities. Beachside Haven is the perfect destination for a beach lovers dream vacation.'),
(10, 'Rustic Retreat', 6, 54, 6, 90, 'g10', 'r7', 'p10', 'Experience rustic charm in a peaceful setting. Tucked away in the countryside, Rustic Retreat offers a cozy and intimate getaway. Stay in our charming cottages surrounded by lush greenery and tranquil gardens. Immerse yourself in outdoor activities such as horseback riding, hiking, and stargazing. Indulge in hearty and delicious farm-to-table cuisine at our on-site restaurant. Unwind by our outdoor fireplace or take a dip in our natural pool. Rustic Retreat provides a serene haven for those seeking peace and tranquility in nature.'),
(11, 'City Lights Hotel', 3, 27, 8, 150, 'g5', 'r2', 'p5', 'Immerse yourself in the vibrant energy of the city at City Lights Hotel. Located in the heart of downtown, our hotel offers easy access to popular attractions, shopping, and dining. Relax in our modern and stylish rooms with panoramic city views. Indulge in delectable cuisine at our on-site restaurant, known for its innovative menu and stylish ambiance. Unwind at our rooftop pool and lounge area, where you can enjoy breathtaking city skyline vistas. City Lights Hotel is the perfect choice for urban explorers.'),
(12, 'Seaside Retreat', 2, 13, 9, 200, 'g2', 'r10', 'p3', 'Escape to a peaceful retreat by the sea at Seaside Retreat. Nestled along a pristine coastline, our hotel offers breathtaking ocean views and direct beach access. Experience ultimate relaxation in our luxurious rooms and suites, designed with your comfort in mind. Delight your taste buds with fresh and locally sourced seafood at our seaside restaurant. Take a leisurely stroll along the shoreline or unwind by our beachfront infinity pool. Seaside Retreat is a sanctuary of serenity and natural beauty.'),
(13, 'Historic Grand Hotel', 1, 7, 7, 180, 'g7', 'r6', 'p9', 'Step into a world of timeless elegance at the Historic Grand Hotel. Located in the heart of a historic district, our hotel offers a glimpse into the citys rich heritage. Experience the charm of our beautifully appointed rooms and suites, adorned with antique furnishings and luxurious amenities. Indulge in gourmet cuisine at our elegant restaurant, known for its classic dishes and impeccable service. Relax in our grand lobby or take a stroll through the picturesque gardens. The Historic Grand Hotel is a captivating blend of history and luxury.'),
(14, 'Tropical Paradise Resort', 2, 13, 9, 220, 'g4', 'r4', 'p7', 'Discover a tropical paradise at our luxurious resort. Surrounded by lush palm trees and turquoise waters, Tropical Paradise Resort offers an idyllic getaway. Stay in our spacious and beautifully designed rooms with private balconies overlooking the ocean. Indulge in a variety of dining options, from beachfront restaurants to poolside bars. Unwind at our infinity pool with cascading waterfalls or relax on our private beach. Engage in water sports or rejuvenate at our spa. Tropical Paradise Resort is a haven of luxury and relaxation.'),
(15, 'Ski Chalet Retreat', 6, 54, 8, 160, 'g9', 'r1', 'p4', 'Escape to a cozy ski chalet nestled in the snow-capped mountains. Ski Chalet Retreat offers a warm and inviting atmosphere for winter enthusiasts. Experience the thrill of skiing or snowboarding on nearby slopes. After a day on the mountain, cozy up by the fireplace in our charming chalets. Indulge in hearty alpine cuisine at our rustic restaurant, featuring traditional dishes and warm beverages. Relax in our outdoor hot tub or sauna, surrounded by breathtaking mountain views. Ski Chalet Retreat is the perfect winter escape for relaxation and adventure.'),
(16, 'Mountain Lodge Retreat', 6, 54, 9, 180, 'g8', 'r3', 'p6', 'Escape to the tranquility of the mountains at Mountain Lodge Retreat. Nestled amidst towering peaks and pristine nature, our lodge offers a peaceful getaway. Experience the beauty of the surrounding wilderness from our cozy rooms with panoramic mountain views. Enjoy delicious meals made from locally sourced ingredients at our rustic restaurant. Explore hiking trails, go fishing in crystal-clear lakes, or simply relax on our outdoor terrace. Mountain Lodge Retreat is the ideal destination for nature lovers seeking serenity and adventure.'),
(17, 'Urban Oasis Hotel', 4, 32, 8, 130, 'g3', 'r7', 'p2', 'Discover an oasis of calm in the heart of the city at Urban Oasis Hotel. Located in a vibrant neighborhood, our hotel offers a peaceful retreat from the hustle and bustle. Relax in our modern and comfortable rooms, featuring contemporary design and amenities. Indulge in a variety of international cuisines at our on-site restaurant. Unwind at our rooftop pool and enjoy stunning views of the city skyline. With its convenient location and serene ambiance, Urban Oasis Hotel is the perfect choice for both business and leisure travelers.'),
(18, 'Coastal Boutique Hotel', 2, 13, 9, 190, 'g6', 'r8', 'p1', 'Experience coastal luxury at its finest at the Coastal Boutique Hotel. Situated along a picturesque shoreline, our boutique hotel offers a unique and personalized experience. Stay in elegantly decorated rooms with private balconies overlooking the ocean. Savor culinary delights at our gourmet restaurant, showcasing locally sourced ingredients. Relax by our infinity pool or take a leisurely walk on the sandy beach. With its attention to detail and intimate atmosphere, Coastal Boutique Hotel promises an unforgettable coastal escape.'),
(19, 'Beachside Resort', 2, 14, 9, 200, 'g16', 'r6', 'p2', 'Enjoy the ultimate beachfront vacation. Our resort offers luxurious accommodations and breathtaking views of the ocean. Relax on pristine sandy beaches and soak up the sun. Indulge in a variety of water sports and activities. Unwind in our spa and savor delicious cuisine at our beachfront restaurants.'),
(20, 'Lakeview Lodge', 4, 37, 8, 130, 'g11', 'r10', 'p8', 'Breathtaking lake views from every room. Experience tranquility and natural beauty at our lodge. Enjoy comfortable and spacious accommodations with rustic charm. Explore the surrounding wilderness and go hiking, fishing, or boating. Relax by the fireplace in our cozy lounge.'),
(21, 'Cityscape Hotel', 3, 29, 7, 90, 'g19', 'r1', 'p5', 'Discover the city from our modern hotel. Located in the heart of the bustling city, our hotel offers convenient access to attractions, shopping, and dining. Enjoy stylish and contemporary rooms with stunning cityscape views. Experience our rooftop bar and restaurant with panoramic vistas. Immerse yourself in the vibrant city life.'),
(22, 'Rustic Cabins', 6, 51, 6, 70, 'g1', 'r4', 'p9', 'Cozy cabins nestled in a peaceful forest. Escape the noise and stress of city life. Our cabins provide a serene retreat surrounded by nature. Enjoy hiking trails, wildlife spotting, and campfires under starry skies. Experience rustic charm with modern amenities for a comfortable stay.'),
(23, 'Secluded Hideaway', 1, 6, 9, 150, 'g18', 'r7', 'p3', 'Escape to a private retreat away from it all. Our hideaway offers exclusive accommodations in a secluded location. Experience peace and tranquility surrounded by nature. Relax in luxurious rooms with scenic views. Enjoy personalized services and unwind in our private spa.'),
(24, 'Lakeside Resort', 4, 36, 8, 180, 'g13', 'r2', 'p7', 'Unwind with stunning lakeside views. Our resort is located on the shores of a beautiful lake. Immerse yourself in the serenity of nature. Enjoy a wide range of activities, including swimming, kayaking, and fishing. Indulge in gourmet dining with panoramic lake views.'),
(25, 'Grand Plaza', 2, 10, 7, 140, 'g9', 'r5', 'p1', 'Experience luxury at its finest in the city. Our hotel offers opulent accommodations and world-class amenities. Enjoy spacious and elegantly designed rooms with modern comforts. Indulge in fine dining at our renowned restaurants. Discover upscale shopping and entertainment just steps away.'),
(26, 'Island Paradise', 5, 41, 6, 160, 'g7', 'r8', 'p4', 'Discover a tropical paradise on a secluded island. Escape to an idyllic destination surrounded by crystal-clear waters and pristine beaches. Experience luxurious villas with private pools and stunning ocean views. Dive into a world of underwater wonders or simply relax and soak up the sun.'),
(27, 'Charming B&B', 3, 25, 5, 120, 'g4', 'r3', 'p10', 'Enjoy a cozy and charming bed and breakfast.'),
(28, 'Ski Lodge', 6, 49, 9, 200, 'g14', 'r6', 'p2', 'Hit the slopes and cozy up in our ski lodge.'),
(29, 'Desert Retreat', 1, 3, 8, 130, 'g5', 'r10', 'p8', 'Escape to the tranquility of the desert.'),
(30, 'Modern Boutique', 2, 9, 7, 90, 'g15', 'r1', 'p5', 'Experience contemporary luxury in our boutique hotel.'),
(31, 'Garden Oasis', 1, 2, 6, 150, 'g2', 'r9', 'p3', 'Escape to a lush garden paradise.'),
(32, 'Urban Retreat', 3, 23, 9, 160, 'g6', 'r2', 'p7', 'Find tranquility in the heart of the city.'),
(33, 'Serenity Spa', 4, 35, 8, 120, 'g4', 'r5', 'p1', 'Indulge in relaxation at our spa retreat.'),
(34, 'Mountain View Inn', 6, 50, 7, 180, 'g9', 'r8', 'p4', 'Enjoy stunning mountain vistas from our inn.'),
(35, 'Cozy Cottage', 2, 15, 6, 100, 'g17', 'r3', 'p10', 'Experience a charming cottage getaway.'),
(36, 'Luxury Tower', 3, 30, 9, 200, 'g3', 'r6', 'p2', 'Unparalleled luxury in a towering hotel.'),
(37, 'Seaview Retreat', 1, 1, 8, 130, 'g11', 'r10', 'p8', 'Relax and rejuvenate with breathtaking sea views.'),
(38, 'Riverside Mansion', 4, 33, 7, 90, 'g19', 'r1', 'p5', 'Experience opulence in our riverside mansion.'),
(39, 'Quaint Inn', 5, 44, 6, 70, 'g1', 'r4', 'p9', 'Discover charm and comfort in our quaint inn.'),
(40, 'Desert Oasis', 1, 3, 9, 150, 'g18', 'r7', 'p3', 'Escape to an oasis of tranquility in the desert.'),
(41, 'Tropical Resort', 4, 38, 8, 180, 'g13', 'r2', 'p7', 'Experience paradise at our tropical resort.'),
(42, 'Cosmopolitan Hotel', 2, 16, 7, 140, 'g9', 'r5', 'p1', 'Immerse yourself in the vibrant city life.'),
(43, 'Island Hideaway', 5, 42, 6, 160, 'g7', 'r8', 'p4', 'Discover serenity on a secluded island.'),
(44, 'Countryside Retreat', 3, 24, 5, 120, 'g4', 'r3', 'p10', 'Escape to the peaceful countryside.'),
(45, 'Beachfront Paradise', 2, 17, 9, 200, 'g14', 'r6', 'p2', 'Experience luxury on the pristine beachfront.'),
(46, 'Alpine Chalet', 6, 48, 8, 130, 'g5', 'r10', 'p8', 'Cozy up in a charming chalet amidst the mountains.'),
(47, 'City View Hotel', 3, 31, 7, 90, 'g15', 'r1', 'p5', 'Enjoy stunning city views from our hotel.'),
(48, 'Rustic Farmhouse', 6, 53, 6, 70, 'g1', 'r4', 'p9', 'Experience rustic charm at our farmhouse.'),
(49, 'Tranquil Retreat', 1, 4, 9, 150, 'g16', 'r7', 'p3', 'Find tranquility and relaxation in our retreat.'),
(50, 'Lakeside Lodge', 4, 40, 8, 180, 'g13', 'r2', 'p7', 'Experience lakeside living at our lodge.'),
(51, 'Skyline Hotel', 2, 18, 7, 140, 'g9', 'r5', 'p1', 'Stay in style with panoramic city views.'),
(52, 'Paradise Island Resort', 5, 45, 6, 160, 'g7', 'r8', 'p4', 'Discover a paradise getaway on a private island.'),
(53, 'Quaint B&B', 3, 22, 5, 120, 'g4', 'r3', 'p10', 'Experience a cozy and charming bed and breakfast.'),
(54, 'Ski Resort', 6, 47, 9, 200, 'g14', 'r6', 'p2', 'Hit the slopes and relax in our resort.'),
(55, 'Desert Mirage', 1, 5, 8, 130, 'g5', 'r10', 'p8', 'Escape to the mystical beauty of the desert.'),
(56, 'Boutique Hotel', 2, 19, 7, 90, 'g15', 'r1', 'p5', 'Experience personalized luxury in our boutique hotel.'),
(57, 'Enchanted Manor', 5, 47, 6, 70, 'g1', 'r4', 'p9', 'Step into a fairytale at our enchanted manor.'),
(58, 'Seaside Retreat', 1, 6, 9, 150, 'g16', 'r7', 'p3', 'Escape to a serene seaside retreat.'),
(59, 'Lakefront Resort', 4, 41, 8, 180, 'g13', 'r2', 'p7', 'Experience luxury on the picturesque lakefront.'),
(60, 'Metropolitan Hotel', 2, 20, 7, 140, 'g9', 'r5', 'p1', 'Immerse yourself in the bustling city life.'),
(61, 'Private Island Hideaway', 5, 46, 6, 160, 'g7', 'r8', 'p4', 'Discover ultimate privacy on your own island.'),
(62, 'Rural Getaway', 3, 21, 5, 120, 'g4', 'r3', 'p10', 'Escape to a peaceful rural getaway.'),
(63, 'Beachfront Resort', 2, 21, 9, 200, 'g14', 'r6', 'p2', 'Enjoy a luxurious beachfront vacation.'),
(64, 'Mountain Cabin', 6, 49, 8, 130, 'g5', 'r10', 'p8', 'Cozy up in a charming cabin nestled in the mountains.'),
(65, 'Sky Tower Hotel', 3, 32, 7, 90, 'g15', 'r1', 'p5', 'Experience breathtaking views from our sky tower hotel.'),
(66, 'Country Cottage', 6, 54, 6, 70, 'g1', 'r4', 'p9', 'Find comfort and tranquility in our country cottage.'),
(67, 'Serenity Spa Retreat', 1, 7, 9, 150, 'g16', 'r7', 'p3', 'Indulge in pure relaxation at our spa retreat.'),
(68, 'Lakeview Lodge', 4, 42, 8, 180, 'g13', 'r2', 'p7', 'Enjoy stunning lake views from our lodge.'),
(69, 'Downtown Boutique Hotel', 2, 22, 7, 140, 'g9', 'r5', 'p1', 'Experience boutique luxury in the heart of the city.'),
(70, 'Tropical Island Retreat', 5, 49, 6, 160, 'g7', 'r8', 'p4', 'Escape to a tropical paradise on a secluded island.'),
(71, 'Vintage Inn', 3, 23, 5, 120, 'g4', 'r3', 'p10', 'Step back in time and enjoy a vintage stay.'),
(72, 'Ski Chalet', 6, 55, 9, 200, 'g14', 'r6', 'p2', 'Hit the slopes and relax in our cozy chalet.'),
(73, 'Sahara Oasis', 1, 8, 8, 130, 'g5', 'r10', 'p8', 'Escape to an oasis in the middle of the Sahara desert.'),
(74, 'Historic Manor', 4, 43, 7, 90, 'g19', 'r1', 'p5', 'Experience the grandeur of a historic manor.'),
(75, 'Riverside Retreat', 3, 24, 6, 70, 'g1', 'r4', 'p9', 'Find peace and serenity by the riverside.'),
(76, 'Beachside Villa', 2, 24, 9, 150, 'g16', 'r7', 'p3', 'Experience luxury in a private beachside villa.'),
(77, 'Mountain View Resort', 4, 44, 8, 180, 'g13', 'r2', 'p7', 'Enjoy breathtaking mountain views from our resort.'),
(78, 'City Center Hotel', 2, 25, 7, 140, 'g9', 'r5', 'p1', 'Stay in the heart of the city at our centrally located hotel.'),
(79, 'Paradise Beach Resort', 5, 50, 6, 160, 'g7', 'r8', 'p4', 'Discover paradise at our beachfront resort.'),
(80, 'Countryside Villa', 3, 25, 5, 120, 'g4', 'r3', 'p10', 'Escape to a luxurious countryside villa.'),
(81, 'Oceanfront Retreat', 1, 9, 9, 200, 'g14', 'r6', 'p2', 'Relax and unwind in our oceanfront retreat.'),
(82, 'Alpine Retreat', 6, 56, 8, 130, 'g5', 'r10', 'p8', 'Experience the charm of the alpine mountains in our retreat.'),
(83, 'Downtown View Hotel', 3, 26, 7, 90, 'g15', 'r1', 'p5', 'Enjoy stunning views of the downtown skyline from our hotel.'),
(84, 'Rustic Log Cabin', 6, 57, 6, 70, 'g1', 'r4', 'p9', 'Cozy up in a charming rustic log cabin.'),
(85, 'Tranquil Beach Resort', 1, 10, 9, 150, 'g16', 'r7', 'p3', 'Find tranquility at our beachfront resort.'),
(86, 'Lakeview Retreat', 4, 45, 8, 180, 'g13', 'r2', 'p7', 'Enjoy stunning lake views from our peaceful retreat.'),
(87, 'Modern City Hotel', 2, 27, 7, 140, 'g9', 'r5', 'p1', 'Experience modern luxury in the heart of the city.'),
(88, 'Tropical Paradise Retreat', 5, 51, 6, 160, 'g7', 'r8', 'p4', 'Escape to a tropical paradise at our secluded retreat.'),
(89, 'Charming Cottage', 3, 27, 5, 120, 'g4', 'r3', 'p10', 'Experience charm and coziness in our cottage.'),
(90, 'Ski-in Ski-out Resort', 6, 58, 9, 200, 'g14', 'r6', 'p2', 'Enjoy convenient ski-in ski-out access at our resort.'),
(91, 'Desert Hideaway', 1, 11, 8, 130, 'g5', 'r10', 'p8', 'Escape to a hidden oasis in the desert.'),
(92, 'Historic Inn', 4, 46, 7, 90, 'g19', 'r1', 'p5', 'Experience the charm of a historic inn.'),
(93, 'Riverside Cottage', 3, 28, 6, 70, 'g1', 'r4', 'p9', 'Find serenity in our cozy riverside cottage.'),
(94, 'Luxury Beach Villa', 2, 28, 9, 150, 'g16', 'r7', 'p3', 'Indulge in luxury at our beachfront villa.'),
(95, 'Mountain Lodge', 4, 47, 8, 180, 'g13', 'r2', 'p7', 'Experience comfort and relaxation in our mountain lodge.'),
(96, 'City Skyline Hotel', 2, 29, 7, 140, 'g9', 'r5', 'p1', 'Enjoy breathtaking views of the city skyline from our hotel.'),
(97, 'Private Island Resort', 5, 52, 6, 160, 'g7', 'r8', 'p4', 'Escape to your own private island resort.'),
(98, 'Rustic Mountain Retreat', 3, 29, 5, 120, 'g4', 'r3', 'p10', 'Experience the beauty of nature in our rustic mountain retreat.'),
(99, 'Beachfront Bungalow', 1, 12, 9, 200, 'g14', 'r6', 'p2', 'Relax and unwind in our beachfront bungalow.'),
(100, 'Alpine Resort', 6, 59, 8, 130, 'g5', 'r10', 'p8', 'Experience luxury and adventure in our alpine resort.'),
(101, 'Downtown Luxury Hotel', 3, 30, 7, 90, 'g15', 'r1', 'p5', 'Indulge in luxury at our downtown hotel.'),
(102, 'Cosy Log Cabin', 6, 60, 6, 70, 'g1', 'r4', 'p9', 'Cozy up in a charming log cabin.'),
(103, 'Seaside Villa', 1, 13, 9, 150, 'g16', 'r7', 'p3', 'Experience luxury in our seaside villa.'),
(104, 'Lakefront Retreat', 4, 48, 8, 180, 'g13', 'r2', 'p7', 'Enjoy a peaceful retreat with stunning lake views.'),
(105, 'Modern Boutique Hotel', 2, 31, 7, 140, 'g9', 'r5', 'p1', 'Experience modern elegance in our boutique hotel.'),
(106, 'Island Paradise Resort', 5, 53, 6, 160, 'g7', 'r8', 'p4', 'Escape to a tropical paradise at our island resort.'),
(107, 'Quaint Guesthouse', 3, 31, 5, 120, 'g4', 'r3', 'p10', 'Enjoy a cozy stay in our quaint guesthouse.'),
(108, 'Ski-in Ski-out Chalet', 6, 61, 9, 200, 'g14', 'r6', 'p2', 'Experience the ultimate ski-in ski-out vacation in our chalet.');



-- Flights

CREATE TABLE IF NOT EXISTS "flights" (
  "id" SERIAL PRIMARY KEY,
  "destinations_id" INTEGER NULL,
  "company" TEXT,
  "duration" INT,
  "day_id" INT,
  "day" TEXT,
  "time" INT,
  "price" INTEGER
);

INSERT INTO "flights" ("id","destinations_id", "company", "duration", "day_id", "day", "time", "price") VALUES
(1, 1, 'Luftansa', 12, 1, 'Monday', 08, 870),
(2, 1, 'Luftansa', 12, 1,'Monday', 12, 900),
(3, 1, 'Luftansa', 10, 1, 'Monday', 17, 1080),
(4, 1, 'Luftansa', 13, 3, 'Wednesday', 11, 950),
(5, 1, 'Luftansa', 10, 3, 'Wednesday', 16, 1120),
(6, 1, 'Luftansa', 15, 3, 'Wednesday', 22, 850),
(7, 1, 'Luftansa', 10, 5, 'Friday', 09, 1360),
(8, 1, 'Luftansa', 11, 5, 'Friday', 13, 1140),
(9, 1, 'Luftansa', 10, 7, 'Sunday', 18, 1430),
(10, 2, 'China Airlines', 17, 4, 'Thursday', 10, 1100),
(11, 2, 'China Airlines', 18, 3, 'Wednesday', 04, 1050),
(12, 2, 'China Airlines', 15, 2, 'Tuesday', 10, 1780),
(13, 2, 'China Airlines', 13, 6, 'Saturday', 12, 1890),
(14, 2, 'China Airlines', 13, 7, 'Sunday', 15, 2050),
(15, 2, 'China Airlines',19, 1, 'Monday', 01, 1460),
(16, 5, 'Thai Airlines',15, 1, 'Monday', 05, 690),
(17, 5, 'Thai Airlines',12, 1, 'Monday', 12, 860),
(18, 5, 'Thai Airlines',10, 1, 'Monday', 18, 1040),
(19, 5, 'Thai Airlines',15, 4, 'Thursday', 05, 620),
(20, 5, 'Thai Airlines',12,4, 'Thursday', 12, 880),
(21, 5, 'Thai Airlines',10, 4, 'Thursday', 18, 1000),
(22, 5, 'Thai Airlines',15, 2, 'Tuesday', 05, 630),
(23, 5, 'Thai Airlines',12, 2, 'Tuesday', 12, 880),
(24, 5, 'Thai Airlines',10, 2, 'Tuesday', 18, 1000),
(25, 5, 'Thai Airlines',15,6, 'Saturday', 05, 900),
(26, 5, 'Thai Airlines',12, 6, 'Saturday', 12, 1160),
(27, 5, 'Thai Airlines',10, 6, 'Saturday', 18, 1180),
(28, 3, 'Luftansa',18, 4, 'Thursday', 14, 690),
(29, 3, 'Luftansa',15, 4, 'Thursday', 22, 960),
(30, 3, 'Luftansa',18, 5, 'Friday', 14, 690),
(31, 3, 'Luftansa',15, 5, 'Friday', 22, 960),
(32, 3, 'Luftansa',18, 7, 'Sunday', 14, 1020),
(33, 3, 'Luftansa',15, 7, 'Sunday', 22, 1350),
(34, 6, 'Malaysia Airlines',19, 1, 'Monday', 04, 1750),
(35, 6, 'Malaysia Airlines',19, 3, 'Wednesday', 10, 1700),
(36, 6, 'Malaysia Airlines',19, 6, 'Saturday', 15, 2160),
(37, 4, 'American Airlines',15, 1, 'Monday', 09, 970),
(38, 4, 'American Airlines',12, 1, 'Monday', 15, 1480),
(39, 4, 'American Airlines',15, 4, 'Thursday', 09, 970),
(40, 4, 'American Airlines',12, 4, 'Thursday', 15, 1480),
(41, 4, 'American Airlines',16, 5, 'Friday', 09, 1040),
(42, 4, 'American Airlines',12, 5, 'Friday', 15, 1280),
(43, 4, 'American Airlines',16, 6, 'Saturday', 09, 1130);

/*------------------------------------------EVITER DUPLICATA DE KEY*/
SELECT setval('users_id_seq', (SELECT MAX(id) from "users"));
SELECT setval('cities_id_seq', (SELECT MAX(id) from "cities"));
SELECT setval('destinations_id_seq', (SELECT MAX(id) from "destinations"));
SELECT setval('hotels_id_seq', (SELECT MAX(id) from "hotels"));
SELECT setval('flights_id_seq', (SELECT MAX(id) from "flights"));