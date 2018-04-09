-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 05:39 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lrvlapitest`
--
CREATE DATABASE IF NOT EXISTS `lrvlapitest` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lrvlapitest`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_author_foreign` (`author`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `author`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Alias neque non est quod consequatur impedit.', 'Ea molestiae pariatur in molestias sit molestiae omnis sed. Doloremque tempora corrupti rerum dolor quia sit. Quis velit qui ratione et nobis voluptas facere neque.', 1, '2018-04-02 19:13:10', '2018-04-02 19:13:10', NULL),
(2, 'Hic omnis ea in eos ipsa et est.', 'Dignissimos nisi amet quod necessitatibus repellendus voluptas. Sed ullam quis officiis qui hic. Harum sint debitis debitis molestiae omnis sunt nulla. Quas fugiat totam animi at nobis beatae ad.', 2, '2018-04-02 19:13:10', '2018-04-02 19:13:10', NULL),
(3, 'Qui enim molestiae nulla corrupti quos omnis.', 'Itaque molestiae omnis aut vel quas possimus id. Cum amet laborum ut totam modi aut porro.', 1, '2018-04-02 19:13:10', '2018-04-02 19:13:10', NULL),
(4, 'Assumenda est aut qui.', 'Quo corporis dignissimos in consequuntur. Inventore porro aut et. Molestias voluptate quos quia velit tempora cumque. Expedita est ea omnis rerum. At aut voluptatem tempora voluptatem illo voluptatum.', 1, '2018-04-02 19:13:10', '2018-04-02 19:13:10', NULL),
(5, 'Quia veritatis fugit voluptas atque.', 'Quasi quis eligendi soluta sint aspernatur fugiat. Rem dolores dolor sapiente et est. Ab dignissimos nihil eos neque labore voluptatem.', 1, '2018-04-02 19:13:10', '2018-04-02 19:13:10', NULL),
(6, 'Ut quidem et cum eum illo quia et.', 'Illum autem aut omnis illo molestias. Nihil tempore culpa minus ut consequuntur fugit. Enim provident mollitia delectus voluptas.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(7, 'Non sint explicabo voluptatum.', 'Dolorum qui voluptatum qui. Facilis quod atque modi ut aliquid. Aut quis velit id adipisci dolorem libero.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(8, 'Repellat sed aut nihil et laudantium.', 'Ut autem placeat officia cupiditate. Corporis unde necessitatibus sed magni dolores. Voluptate et quo quibusdam eius molestias.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(9, 'Omnis sunt eius facere velit accusamus inventore facere.', 'Repellat recusandae sit at dignissimos aut recusandae. Numquam blanditiis voluptatem laudantium exercitationem ut distinctio aut. Quia vel quam qui rerum ab tempore. Dicta corporis sit consequuntur optio aliquid ex.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(10, 'Sit non nihil aperiam.', 'Molestiae quibusdam aperiam blanditiis magni et explicabo. Perspiciatis et sint molestias tenetur dolore.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(11, 'Ut eum voluptas fugit reprehenderit autem.', 'Omnis earum vero excepturi quo odio necessitatibus sit ut. Dolore accusantium laborum et unde. Id ut nam sit quaerat libero nam culpa.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(12, 'Porro tempora sit et quos totam architecto consequuntur.', 'Aspernatur suscipit reiciendis eaque. In tenetur recusandae laboriosam assumenda. Dolor velit ut sint dicta.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(13, 'Architecto aperiam accusamus sed quia aut voluptate vel.', 'Repellendus illum ratione mollitia sit quis sed voluptatem. Culpa reiciendis assumenda at non expedita.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(14, 'Illum a amet dolor tenetur.', 'Molestiae dolorum consequatur voluptatem blanditiis. Tenetur deserunt quisquam vitae ullam quibusdam non necessitatibus. Modi eum rerum amet omnis error voluptatem eveniet. Repudiandae enim aperiam ut dolores qui accusamus tenetur.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(15, 'Et quo voluptas exercitationem molestiae.', 'Ipsa consectetur ut exercitationem ut neque amet. Quod reprehenderit quo est fugit consectetur et. Unde accusantium voluptatem porro quia. Temporibus voluptatibus numquam harum explicabo doloribus quis voluptatem.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(16, 'Necessitatibus aperiam id quia recusandae fugiat eum.', 'Nisi consequatur nihil asperiores soluta eveniet veritatis deserunt. Voluptas saepe incidunt eius quibusdam id non possimus. Repellat quos ut aut incidunt qui quibusdam.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(17, 'Dolores est ut nostrum aut nisi.', 'Ad eaque quisquam sed et aut quae. Qui qui provident quia consequatur dignissimos. Dolores qui fugit a earum pariatur ipsam occaecati impedit.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(18, 'Vel asperiores magni sed quis.', 'Quia hic laboriosam consequatur doloremque praesentium laborum. Modi est ea amet consequatur quia laudantium. Dolorum et itaque excepturi accusantium numquam quas consectetur.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(19, 'Aliquam rerum qui eius iste ipsam.', 'Rerum non ut sit magni omnis. Itaque recusandae omnis quia assumenda veritatis. At atque quibusdam sapiente sit totam.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(20, 'Maxime beatae aliquam modi soluta quis.', 'Esse quis dignissimos et nam numquam necessitatibus. Et quisquam cum et fugiat.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(21, 'Harum est vitae amet cumque maiores error corporis.', 'Sed aspernatur incidunt omnis ipsam. Aliquid ut quas sit repellat. Ea laudantium cupiditate dignissimos architecto. Nihil est sed et aperiam. Qui debitis illum velit et vitae.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(22, 'Dolores esse sunt non tenetur nesciunt.', 'Eum earum quae veniam dolorem quam ut ab. Voluptate quia nihil amet odit harum dolores. Eveniet mollitia voluptates omnis autem inventore. Non enim sed ut corporis.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(23, 'Officia asperiores quae animi sed non.', 'Beatae unde sit molestiae aut vel rem corrupti. Adipisci qui et tenetur. Magni in modi dolorum modi quo.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(24, 'Aspernatur qui et voluptas consequatur voluptatibus nam ea.', 'Unde illum rerum exercitationem animi sunt corporis aperiam. Perspiciatis non nemo a reiciendis necessitatibus repellendus quasi. Odio voluptas exercitationem optio illum voluptatem. Aut ea est qui sunt voluptas.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(25, 'Optio sit sapiente labore exercitationem.', 'Velit praesentium dolor voluptatem ea harum ut. Cum ea animi ut in libero dolorem fuga. Fugiat voluptatum sed occaecati commodi quia voluptatem temporibus fuga.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(26, 'Error officia dolorum tempora in in.', 'Sapiente placeat et est ullam. Veniam exercitationem aspernatur facere vitae aperiam. Eos sint dolor excepturi ipsa expedita dolores magni.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(27, 'Voluptatibus sint dolores inventore quis hic et.', 'Eum corrupti doloribus quae labore voluptatem dolorem. Doloribus cumque quia ut doloribus similique quis. Iste qui numquam odio aliquam veritatis minus et. Veritatis libero ut omnis facere tenetur.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(28, 'Nobis adipisci animi ab.', 'Enim quam alias asperiores voluptatem et tenetur. Ut ullam id molestias aut laborum. Quia consequuntur ut quam vel maiores omnis. Distinctio qui quia rerum harum enim.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(29, 'Vel est et modi iste quibusdam ut voluptas.', 'Non maiores expedita qui quis. Omnis molestiae sed dolores modi sint reiciendis. Aliquam est cum dolores deserunt quia provident. Temporibus id vero et dolor placeat exercitationem.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(30, 'Esse perspiciatis nostrum esse consectetur ipsam.', 'Dolorum nihil unde quaerat similique et. Sapiente nesciunt fugiat exercitationem qui velit eveniet. Odio magni itaque ab consequatur cupiditate similique autem. Consequuntur ea enim quia fuga consequatur.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(31, 'In itaque voluptatem unde at alias cumque impedit consequatur.', 'Pariatur odio earum soluta. Ratione cum voluptas commodi omnis. Dolor molestiae et modi fugiat est. Dolores aliquam ipsum sed illo et. Provident ipsa ratione odio atque fuga quos qui ea.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(32, 'Ut numquam consequuntur aut natus sunt dignissimos.', 'Delectus voluptates dolorum amet unde consequatur molestiae animi. Inventore reprehenderit atque sed dicta ea. A pariatur nulla sapiente et.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(33, 'Nihil voluptatem nobis at consectetur voluptatem.', 'Dolores nihil vel aut doloribus repellendus. Architecto aperiam reiciendis asperiores eaque sint ut repudiandae. Nihil earum ut debitis laudantium et ad. Consequatur qui reiciendis odit reprehenderit consequatur explicabo magni. Dolor rerum tempore sapiente.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(34, 'Architecto quos dicta in aut.', 'Cupiditate eligendi quod omnis. Quibusdam repellendus sequi enim sunt dolorum quasi explicabo. Aut voluptatibus minima quam nihil dolore. Ut cum sint et.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(35, 'Laborum explicabo aliquam porro ut qui asperiores.', 'Est qui quod sit occaecati. Corporis dolores magni aliquid et est molestiae velit cupiditate. Sit error vitae ut reprehenderit accusamus voluptate laudantium aut. Blanditiis qui laudantium quia corrupti assumenda. Modi unde asperiores provident totam quis maxime voluptas.', 2, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(36, 'Debitis optio accusantium impedit numquam.', 'Sed quae inventore eum eaque. Sed dolor ea natus atque. Cumque possimus id ab sed.', 1, '2018-04-02 19:13:11', '2018-04-02 19:13:11', NULL),
(37, 'Accusamus totam sed harum.', 'Suscipit eaque officiis unde qui aut sit voluptas. Et dignissimos corporis blanditiis magnam asperiores sit consectetur. Natus natus ut est. Voluptatibus voluptatum eius et consequatur suscipit.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(38, 'Tempore non dolore veniam et ut.', 'Iste dignissimos ut ut dolorem autem error voluptatem. Exercitationem quaerat commodi cum qui aut excepturi non. Facere quae sunt commodi rerum quisquam aut.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(39, 'Sequi deserunt porro voluptatem accusantium dolorem.', 'Blanditiis rem qui molestiae ducimus. Dolores non architecto maxime quo sit libero facilis. Porro et sint vitae laborum sed ut exercitationem.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(40, 'Ducimus ratione excepturi nam facilis laudantium perspiciatis.', 'Doloremque dolor rerum sint itaque totam iusto repellendus. Aut et quia id eos fuga. Voluptatem sunt dicta quos consequatur tempora quam.', 1, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(41, 'Voluptas esse non quas ducimus.', 'Amet voluptatum autem sit tempore recusandae iusto. Rerum sint fugit consequuntur eos ducimus sit architecto dolorem. Error fugiat iure nobis id blanditiis qui.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(42, 'Sunt ut architecto voluptate voluptatem.', 'Adipisci quae sed accusamus ut aut. Esse et error aspernatur sapiente et. Sit modi sit animi odio temporibus inventore nobis. Eos excepturi adipisci recusandae est commodi et itaque.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(43, 'Et voluptates necessitatibus iusto quo est explicabo.', 'Quaerat consequatur harum velit ab at. Fuga et aut rerum totam odio. Dolores asperiores nam animi et et amet aspernatur tempora.', 1, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(44, 'Debitis explicabo qui iste optio sit esse veritatis et.', 'Ut atque et est facilis est. Ipsum voluptates eaque ut similique accusantium. Autem atque optio error adipisci modi et vel sint. Praesentium ullam officia eos.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(45, 'Vel ducimus aut aut a qui.', 'Libero ea et quisquam consequuntur. Quam molestiae nemo numquam voluptates. Sint libero incidunt sit nihil vel dolorum.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(46, 'Sit dolores perferendis necessitatibus voluptates quidem quisquam.', 'Placeat voluptates eligendi autem quis sint voluptatem. Expedita vitae voluptatibus enim commodi. Quos doloremque quae voluptas est rem voluptas consequatur.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(47, 'Tempore error iste totam numquam doloribus esse.', 'Non quo excepturi porro reiciendis aspernatur. Dolores consequuntur debitis quis. Corporis nihil provident corporis voluptas consequuntur fugit. Quo modi voluptatem autem magnam quia ea.', 1, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(48, 'Dolor ea voluptate consequuntur sed voluptate molestias fugiat.', 'Et aut eveniet odit atque harum consequatur. Porro consequatur est itaque dolore quisquam. Aut dolor voluptatem rerum animi. Corporis vero eaque non.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(49, 'Reprehenderit unde eos accusantium dolore enim autem similique.', 'Sed quod dolore qui quaerat vel dolorem. Suscipit tempore est aspernatur et itaque. Soluta sequi reprehenderit excepturi assumenda est tenetur. Quaerat voluptatibus harum exercitationem.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL),
(50, 'Neque corrupti doloremque et.', 'Aliquid consequuntur dignissimos incidunt rerum. Voluptates ratione dolorum cupiditate eaque tempore. Reiciendis harum quasi ut tempora quis quo. Corporis enim quis adipisci deserunt. Perferendis harum sit beatae consequatur omnis aperiam dolorum est.', 2, '2018-04-02 19:13:12', '2018-04-02 19:13:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_city_id_foreign` (`city_id`),
  KEY `locations_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loc_cities`
--

DROP TABLE IF EXISTS `loc_cities`;
CREATE TABLE IF NOT EXISTS `loc_cities` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loc_cities_country_id_foreign` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loc_countries`
--

DROP TABLE IF EXISTS `loc_countries`;
CREATE TABLE IF NOT EXISTS `loc_countries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_25_125038_create_users_table', 1),
(2, '2018_03_29_145704_create_loc_countries_table', 1),
(3, '2018_03_29_145323_create_loc_cities_table', 2),
(4, '2018_03_27_103717_create_locations_table', 3),
(5, '2018_04_02_233947_create_articles_table', 4),
(7, '2018_04_05_113507_add_userid_to_locations_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`) VALUES
(1, 'Salman'),
(2, 'Tahreem');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `loc_cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `locations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loc_cities`
--
ALTER TABLE `loc_cities`
  ADD CONSTRAINT `loc_cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `loc_countries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
