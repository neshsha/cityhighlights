-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 12:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--
CREATE DATABASE IF NOT EXISTS `news` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `news`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galery_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `caption`, `image`, `galery_images`, `article`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Welcome to Paris', 'uploads/F9qtC5dkIhi54aVlimDwUkC4Bu4l6r0dypZiBt0g.jpeg', '[\"SMTABvyUaOYPugiCH2rniUr9Q5zq7Gq1X4g1jYfP.jpeg\",\"kLvbSo6Ydg5ZvWLPIYHnd20ZHz4X5pGdlz3XiXFs.jpeg\",\"z8copTzvMxUwOWqTcuhBlkng4GCRMcdLIAhHhuwp.jpeg\"]', 'Thomas Jefferson once said “a walk about Paris will provide lessons in history, beauty, and in the point of life.”\r\n\r\nThere’s a reason Paris is one of the most popular cities among travelers. Known as the “City of Light” or the “City of Love,” the streets of Paris overflow with culture, art, beauty, and history. Whether searching out Monet’s Water Lilies at Musée de l’Orangerie, climbing the many steps of Sacré-Cœur, standing before the Eiffel Tower in awe, or searching out the best crepes along the Seine, Paris is a city that captures the hearts of millions ever year.\r\n\r\nBelieve it or not though, Paris wasn’t always called “Paris,” and the Eiffel Tower wasn’t supposed to be a permanent fixture. Here are 10 interesting facts about Paris.\r\n\r\nThe Eiffel Tower was supposed to be a temporary installation, intended to stand for 20 years after being built for the 1889 World Fair.\r\nParis was originally a Roman City called “Lutetia.”\r\nIt’s believed that Paris only has one stop sign in the entire city.\r\nA flat in Paris was left unoccupied under lock and key for 70 years, but the rent was paid every month; when the renter passed away, a painting by Boldini valued at more than $2 million was found inside.\r\nThere are at least three replicas of the Statue of Liberty in Paris. The most famous of them exists on an island in the middle of the Seine and looks towards her sister statue in New York.\r\nThe main bell of the Notre Dame Cathedral is named Emmanuel and weighs over 13 tonnes.\r\nThere are 6,100 rues – or streets – in Paris; the shortest one, Rue des Degrés, is just 5.75 metres long and can be found in the 2nd arrondissement.\r\nThe French army was the first to use camouflage, which comes from the French verb “to make up for the stage.” The army began wearing camouflage in 1915 during World War I.\r\nThe first public screening of a movie was by French brothers Auguste and Louis Lumière in December 1895. They used their invention “the cinématographe” to show 10 films of about 50 seconds each.\r\nVisitors to the Eiffel Tower have to climb 1,665 steps to reach the top – unless they take the elevator! There are a mere 270 steps to reach the Basilica of the Sacré Cœur.', 2, '2020-07-11 07:45:50', '2020-07-11 07:45:50'),
(6, 'Hi Rome', 'uploads/CAHVzq8BSzvoajMZ6eKcHTCNeh36ZThmJC4TNiUJ.jpeg', '[\"XgR7hyT5P0f66o8aI1IlbcvptJ2PcYEPUb7OXs5T.jpeg\",\"e87VaPyKuspnnxiuPdyqNHZqoqgoxWBYLibeAiJo.jpeg\",\"oOrqtgOPwsMORBhW0LX5WDoIRkNTSpsqvabw5zDx.jpeg\"]', 'Rome is without doubt one the most beautiful cities in the world; every year millions of tourists come from around the world to admire the treasures and masterpieces of Roman art and architecture.\r\n\r\nRome is an enchanting city where you\'ll discover a romantic blend of culture and history spiced up with a vibrant street and nightlife. Add in to the mix delicious gastronomy and excellent Italian wines, and you have an inspiring and beautiful destination that our Rome travel guide will help you make the most of.\r\n\r\nThe beauties of Rome sprawl across its landscape and are a compelling blend of the ancient with the Renaissance. Classically imposing are the Colosseum and the Roman Forum while the austere exterior of the Pantheon belies its stunning interior. St Peter\'s Square and Basilica are Renaissance masterpieces while gloriously ornate fountains and statues greet you at every twist and turn of the city\'s streets.\r\n\r\nThe most iconic example is Salvi\'s Trevi Fountain. Dominating the small cobbled avenue in which it sits, this fountain is an outrageous example of over-the-top Baroque sculpture, and is immediately recognisable from its appearance in classic films such as \'Three Coins in a Fountain\' and Federico Fellini\'s screen masterpiece, \'La Dolce Vita\'.\r\n\r\nWhen you enter Rome\'s churches, cathedrals, museums, and galleries you\'ll find awe-inspiring paintings and sculptures that cover all the eras and great names of Western art. These range from Michelangelo\'s Sistine Chapel ceiling to frescoes by Raphael and paintings that show the skill of Caravaggio to the glorious fountains of Bernini. A trip to Rome, though, encompasses much more than a stroll through art and architecture. Sipping a coffee or aperitif in street cafes, or enjoying a glass of beer while you take in the vistas from terraces and piazzas are just as much a part of the tourist experience in this most romantic of cities.\r\n\r\nIt\'s easy to while away a whole day in The Vatican City, west of the River Tiber. When you do, you\'re entering the world\'s smallest state. Cross the Tiber and pass the imposing might of the Castel Sant\'Angelo before entering the Vatican along the Via Della Conciliazione. At the end, the vastness of St. Peter\'s Square with its grand Bernini colonnade and central obelisk opens up before you.\r\n\r\nAcross the square is St. Peter\'s Basilica topped by the tallest dome in the world. Taking the stairs or elevator to the viewing gallery is a must for splendid views of the Eternal City.\r\n\r\nWhile it\'s easy to fill a visit to Rome with the cultural wonders found in every guidebook, it also has a secret side. Some of the city\'s population of wild cats live pampered lives at the Torre Argentina excavation site, happily posing for the cameras of passers-by while the French-style gardens of Doria Pamphili near the Trastevere district are often overlooked by visitors. The final resting place of the English Romantics, Shelley and Keats is in Rome. They lie in the beautiful Protestant cemetery on Via Caio Cestio. With its grand marble monuments, it provides a peaceful respite from the city bustle.', 2, '2020-07-11 07:52:24', '2020-07-11 07:52:24'),
(7, 'Lovely Budapest', 'uploads/0Ag7xftGEk5XbQAtxdLR6mswl60XgFZruNFy8zA5.jpeg', '[\"c4uzWyznYlrgbkAs9Lhh6XqUZHGDi4SONthnjPz7.jpeg\",\"GFCsASM09ql0GwxaWrjlKkmlgDUFdLJlAMh7zyRj.jpeg\",\"477Lo01t6deHKIbigIINaebazApU3I95DKMDV4Xj.jpeg\"]', 'They call Budapest the Paris of the East and we certainly think it lives up to its reputation. It has elegant boulevards. It has so much beautiful architecture. But it has much more grit and edge thanks to its years under communist rule. Walking its streets you can quickly tell that Budapest is a dynamic and living city.\r\n\r\nOne thing that makes Budapest so dynamic is its mix of Western and Eastern Europe. The city is still transitioning, so more and more young Hungarians are breathing new and youthful life into this great city. It’s still a little rough around the edges but that just adds to its charm.\r\n\r\nCastle Hill and Architecture. You’ll love walking the streets while you’re admiring Budapest’s Art Noveau and other style buildings.\r\n\r\nDanube River. The banks of the Danube are listed as a Unesco World Heritage site so it’s a joy to take a stroll along the Danube (especially at night when everything is lit up).\r\n\r\nThe Thermal Baths. Budapest is world famous for their natural thermal baths and they’ve been attracting visitors since the Roman times. They’re still a popular draw for both tourists and locals alike.\r\n\r\nNightlife. Parties love Budapest — especially for the unique Ruin Bars (which we talk about more in depth later on) and the club scene.', 2, '2020-07-11 07:56:56', '2020-07-11 07:56:56'),
(8, 'Awesome Belgrade', 'uploads/ocqglzqfjShjKTtLREelzPJ3kOyQyCNnKN6dcICs.jpeg', '[\"vl7XoV5rvg2IPKLupiw7ouqz2UhKRjeGTsawGRQl.jpeg\",\"FvCKKAOweCNvcaMA7iHEK4hD5KWdpnfZ17QxJW2e.jpeg\",\"3VbqI5p4HPm6ut4uEiThy5rjmVQ0SxXT5Uglimev.jpeg\"]', 'Outspoken, adventurous, proud and audacious: Belgrade (\'White City\') is by no means a \'pretty\' capital, but its gritty exuberance makes it one of Europe\'s most happening cities. While it hurtles towards a brighter future, its chaotic past unfolds before your eyes: socialist blocks are squeezed between art nouveau masterpieces, and remnants of the Habsburg legacy contrast with Ottoman relics and socialist modernist monoliths. This is where the Sava and Danube Rivers kiss, an old-world culture that at once evokes time-capsuled communist-era Yugoslavia and new-world, EU-contending cradle of cool.\r\n\r\nGrandiose coffee houses and smoky dives pepper Knez Mihailova, a lively pedestrian boulevard flanked by historical buildings all the way to the ancient Belgrade Fortress. The riverside Savamala quarter has gone from ruin to resurrection, and is the city\'s creative headquarters (for now). Deeper in Belgrade\'s bowels are museums guarding the cultural, religious and military heritage of the country.', 2, '2020-07-11 08:01:55', '2020-07-11 08:01:55'),
(9, 'Greetings from Prague', 'uploads/L4OwaziKmWHNQZNSHNTxXrXGcuqRc31Svnc9sWpO.jpeg', '[\"OBFYNcOnnPtnLBaqsEnCc9C4PNQhLjDZp8j1PcWK.jpeg\",\"TwjqdFeKAoeKswhqng14X8BCNSzVJK2JwTCrKD0P.jpeg\",\"kD0PkUJm5MhJtzT3Hev5YVNzuWJz4BQRyBHdgla3.jpeg\"]', 'Prague is the equal of Paris in terms of beauty. Its history goes back a millennium. And the beer? The best in Europe.\r\n\r\nEuropean Hotspot\r\nThe 1989 Velvet Revolution that freed the Czechs from communism bequeathed to Europe a gem of a city to stand beside stalwarts such as Rome, Paris and London. Not surprisingly, visitors from around the world have come in droves, and on a hot summer\'s day it can feel like you’re sharing Charles Bridge with half of humanity. But even the crowds can’t take away from the spectacle of a 14th-century stone bridge, a hilltop castle and a lovely, lazy river – the Vltava – that inspired one of the most hauntingly beautiful pieces of 19th-century classical music, Smetana’s Moldau symphony.\r\n\r\nArt All Around\r\nPrague\'s art galleries may not have the allure of the Louvre, but Bohemian art offers much to admire, from the glowing Gothic altarpieces in the Convent of St Agnes, to the luscious art nouveau of Alfons Mucha, and the magnificent collection of 20th-century surrealists, cubists and constructivists in the Veletržní Palác. The weird and witty sculpture of David Černý punctuates Prague\'s public spaces, and the city itself offers a smorgasbord of stunning architecture, from the soaring verticals of Gothic and the exuberance of baroque to the sensual elegance of art nouveau and the chiselled cheekbones of cubist facades.\r\n\r\nWhere Beer is God\r\nThe best beer in the world just got better. Since the invention of Pilsner Urquell in 1842, the Czechs have been famous for producing some of the world\'s finest brews. But the internationally famous brand names – Urquell, Staropramen and Budvar – have been equalled, and even surpassed, by a bunch of regional Czech beers and microbreweries that are catering to a renewed interest in traditional brewing. Never before have Czech pubs offered such a wide range of brews – names you\'ll now have to get your head around include Kout na Šumavě, Primátor, Únětice and Matuška.\r\n\r\nUrban Explorations\r\nPrague\'s maze of cobbled lanes and hidden courtyards is a paradise for the aimless wanderer, always beckoning you to explore a little further. Just a few blocks away from the Old Town Square you can stumble across ancient chapels, unexpected gardens, cute cafes and old-fashioned bars with hardly a tourist in sight. One of the great joys of the city is its potential for exploration – neighbourhoods such as Vinohrady and Bubeneč can reward the urban adventurer with countless memorable cameos, from the setting sun glinting off church domes, to the strains of Dvořák wafting from an open window.', 2, '2020-07-11 08:07:02', '2020-07-11 08:07:02'),
(10, 'Bratislava Adventure', 'uploads/NGlPKsvCkvwBW8eQUMydYewJ8eJgvghP7IvAA9hX.jpeg', '[\"4TAY8y8W0Zp78D4qdH9j585BOLRazZ69MxX2pYHU.jpeg\",\"DTLUx4jA3HC5ckxpen9vH3qq1CYfSor0iQ4YtguE.jpeg\",\"gMdVo6YJzoBNei40zdyUJOfW4se8pmhd3l6q45AU.jpeg\"]', 'Slovakia\'s capital since the country\'s independence in 1993, Bratislava is a mosaic of illustrious history: a medieval and Gothic old town, baroque palaces commissioned by Hungarian nobles, and the crowning castle, rebuilt to Renaissance finery. Slicing through the city are stark-angled, communist-era blocks and a futurist bridge.\r\n\r\nRecent years have added a cast of outlandish statues, boutiques and modish cafes, eagerly sought out by visiting stag party groups and day trippers from Vienna. Many arrive purely to enjoy the uproarious nightlife, from rowdy beer halls to hidden nightclubs.\r\n\r\nDespite the march of modernism, Bratislava still has nature on its doorstep. The city banks the Danube River, only a few kilometres from the Austrian border. Rolling north are the Malé Karpaty (Small Carpathians), their lowlands draped with vineyards. Flitting between postcard-pretty, steely and gorgeously green, Bratislava never fails to intrigue.', 2, '2020-07-11 08:16:50', '2020-07-11 08:16:50'),
(11, 'Barcelona beauties', 'uploads/nKQMjZfE6dzucSxupB7OnJ8JlF2PBOLdpVju7lhW.jpeg', '[\"4B47igMje3xsxks9xTLFqLJrtcR9JL8ocZyXKhnB.jpeg\",\"JvUIn7eX8kjWWLpmfGdFc6MPQOfoQJX0C0angzIi.jpeg\",\"QzIq2BhyVYXf7t4U1KpIhDR0xArnO5lUMpKSuaLU.jpeg\"]', 'Barcelona is an enchanting seaside city with boundless culture, fabled architecture and a world-class drinking and dining scene.\r\n\r\nArchitecture of the Ages\r\nBarcelona\'s architectural treasures span 2000-plus years. Towering temple columns, ancient city walls and subterranean stone corridors provide a window into Roman-era Barcino. Fast forward a thousand years or so to the Middle Ages by taking a stroll through the shadowy lanes of the Gothic quarter, past tranquil plazas and soaring 14th-century cathedrals. In other parts of town bloom the sculptural masterpieces of Modernisme, a mix of ingenious and whimsical creations by Gaudí and his Catalan architectural contemporaries. Barcelona has also long inspired artists, including Pablo Picasso and Joan Miró, both of whom have major Barcelona museums devoted to their works.\r\n\r\nA Moveable Feast\r\nThe masters of molecular gastronomy – Albert Adrià, Carles Abellan et al – are part of the long and celebrated tradition of Catalan cooking. Simple, flavourful ingredients – seafood, jamón (cured ham), market-fresh produce – are transformed into remarkable delicacies and then served in captivating settings. Feast on hearty, rich paella at an outdoor table overlooking the sea or step back to the 1920s at an elegant art nouveau dining room. Barcelona\'s wide-ranging palate adds further complexity: Basque-style tapas bars, Galician seafood taverns, avant-garde Japanese restaurants and sinful chocolate shops are all essential parts of the culinary landscape.\r\n\r\nUnder the Iberian Sun\r\nThe deep blue Mediterranean beckons. Sun-drenched beaches make a fine backdrop to a jog, bike ride or long leisurely stroll along the seaside – followed by a refreshing dip. You can also enjoy the view from out on the water while kayaking, stand-up paddleboarding or taking it easy on a sunset cruise. Looming behind the city, the rolling forest-covered Collserola hills provide a scenic setting for hiking, mountain biking or just admiring the view. Closer to the city centre, hilltop Montjuïc offers endless exploring amid botanic and sculpture gardens, an old castle and first-rate museums with panoramic views at every turn.\r\n\r\nTwenty-four-hour Party People\r\nThe night holds limitless possibilities in Barcelona. Start with sunset drinks on a panoramic terrace or dig your heels in the sand at a rustic beachside chiringuito (temporary snack bar). As darkness falls, live music transforms the city: the rapid-fire rhythms of flamenco, brassy jazz spilling out of basements, and hands-in-the-air indie-rock at vintage concert halls. Towards midnight the bars fill. Take your pick from old-school taverns adorned with 19th-century murals, plush lounges in lamp-lit medieval chambers or boisterous cava bars. If you\'re still standing at 3am, hit the clubs and explore Barcelona\'s unabashed wild side.', 2, '2020-07-11 08:21:24', '2020-07-11 08:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_22_102759_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@gmail.com', NULL, '$2y$10$/4O2brinVvozG5THDsxDku47rrB85qrAjF7F.lypv2j5EqSVEVrsS', NULL, '2020-07-11 07:24:07', '2020-07-11 07:24:07'),
(2, 'Nenad Tosic', 'nenad@test.com', NULL, '$2y$10$LSnZ0KrfYAAw.WIyhKKlluCvJ7HxT0T6S2x6A0bQ71hnRFX5EbZKq', NULL, '2020-07-11 07:26:26', '2020-07-11 07:26:26'),
(3, 'aleksa', 'aleksa@gmail.com', NULL, '$2y$10$JjIRxtXq0g/BaJAM/W9ABOR2aNjPFhTiaIdfIjAgBTWRxt3mul9AG', NULL, '2020-07-11 08:24:45', '2020-07-11 08:24:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
