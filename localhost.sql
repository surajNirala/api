-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2018 at 02:19 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.1.12-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eapi`
--
CREATE DATABASE IF NOT EXISTS `eapi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eapi`;

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
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(26, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(27, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(28, '2016_06_01_000004_create_oauth_clients_table', 1),
(29, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(30, '2017_12_28_091235_create_products_table', 1),
(31, '2017_12_28_091303_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7fd7eba2d6a423d35529a255ab9555a970d62e7ea2bff98e9ff0a479ac0c719d0a0e573776a41875', 2, 2, NULL, '[]', 0, '2018-01-02 05:26:10', '2018-01-02 05:26:10', '2019-01-02 10:56:10'),
('bd9b5852888430fb9d111ef08de71c53a28c45dc6d8d9fa3ca90c0e7592c4d344a150a9b7bf37c72', 2, 2, NULL, '[]', 0, '2018-01-02 04:53:13', '2018-01-02 04:53:13', '2019-01-02 10:23:13'),
('e0564aff08325adc65281ede24da58ed5dcbfca8f07d90ef82d0b80848140398213de2cd219d4c2f', 2, 2, NULL, '[]', 0, '2018-01-02 04:51:41', '2018-01-02 04:51:41', '2019-01-02 10:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '6byPYTVASuGp3LNBGtXxnvXwu9k4AsskKAn7foXr', 'http://localhost', 1, 0, 0, '2018-01-02 04:19:43', '2018-01-02 04:19:43'),
(2, NULL, 'Laravel Password Grant Client', 'DHZIP59RZLZo8T4ptchnhPPSwmCRAi3AoCcdQG3Q', 'http://localhost', 0, 1, 0, '2018-01-02 04:19:44', '2018-01-02 04:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-01-02 04:19:44', '2018-01-02 04:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('30dd3b8060899aadebd91b766d75767c9326c3297f7448ef4042bccd4346df75e96a107875014d4e', '7fd7eba2d6a423d35529a255ab9555a970d62e7ea2bff98e9ff0a479ac0c719d0a0e573776a41875', 0, '2019-01-02 10:56:10'),
('525ccdc03020cc87d2177b1ebf8a59fb2a982d3ef0d228dadae5955ecaeda173a35c46840ca9b071', 'bd9b5852888430fb9d111ef08de71c53a28c45dc6d8d9fa3ca90c0e7592c4d344a150a9b7bf37c72', 0, '2019-01-02 10:23:13'),
('bbbd7461fc677b352d36ed0695c191bc6f707446a32d338ebd3b4ca4c72711d151afc0e35615bae5', 'e0564aff08325adc65281ede24da58ed5dcbfca8f07d90ef82d0b80848140398213de2cd219d4c2f', 0, '2019-01-02 10:21:42');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'praesentium', 'Sint magnam et qui facilis voluptatem deserunt suscipit provident. Deleniti adipisci voluptate est cupiditate voluptatum consequatur sunt. Debitis ut non suscipit tempora. Nihil iste facere quis eligendi.', 892, 4, 11, 4, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(2, 'nam', 'Minus nam ut similique. Rerum quia fuga non expedita. Accusamus quidem ut non odit consequatur id at.', 554, 3, 41, 3, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(3, 'officia', 'Delectus minus laudantium dolores quaerat animi enim sint. Consectetur sint eligendi dicta minima. Molestiae dignissimos aut sapiente quo beatae quam.', 566, 4, 2, 1, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(4, 'porro', 'Deserunt quis dicta nostrum aut molestiae necessitatibus. Est incidunt consequuntur quia dolore cupiditate quo animi.', 364, 3, 40, 3, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(5, 'vel', 'Et sequi nemo tempore. Voluptas sequi ut voluptate est ut ut et repellendus. Veritatis accusamus recusandae dolorem et deserunt voluptas tenetur.', 727, 1, 20, 2, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(6, 'deserunt', 'Asperiores occaecati animi expedita exercitationem. Enim vitae sint consequuntur qui consequuntur. Qui quia enim est. At ut minima praesentium et at et suscipit.', 367, 3, 56, 4, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(7, 'motoxspluss', 'this is nice phone', 15000, 15, 20, 2, '2018-01-02 04:21:07', '2018-01-02 05:37:38'),
(8, 'quaerat', 'Natus ab assumenda maxime non omnis provident repellendus. Impedit sapiente magnam voluptas. Eius qui at et ipsa.', 897, 9, 44, 3, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(9, 'qui', 'Maiores eos eligendi excepturi atque qui aut ab. Qui voluptas sint saepe fuga eius amet quod. Voluptas et inventore et non qui dolore. Quam alias quae repellat.', 973, 7, 57, 3, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(10, 'aspernatur', 'Quibusdam eius nulla nisi quasi odit est. Qui aperiam facere doloremque fuga deserunt. Illo repellat sint architecto voluptatem. Sit et voluptatem maiores.', 818, 9, 46, 1, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(11, 'aperiam', 'Laudantium consectetur aut est ut quia. Exercitationem quaerat ducimus ipsa dolorem ipsum eum ut. Voluptates veritatis sed dolores et nihil dignissimos. Accusamus autem velit repudiandae facilis perspiciatis non.', 753, 1, 3, 5, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(12, 'sit', 'Vel facere iste iusto. Iusto quia vero labore inventore porro quo ut assumenda. Optio porro officiis et sed.', 201, 8, 45, 4, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(13, 'perspiciatis', 'Explicabo velit deleniti quia aperiam consequatur eos ab aspernatur. Alias sit omnis aperiam est. Unde inventore aut beatae eum.', 558, 7, 13, 1, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(14, 'ullam', 'Cumque nesciunt aliquam earum voluptate aut ex. Animi recusandae ullam recusandae atque quia ipsam. Sit voluptatem ipsam et soluta repudiandae illo totam omnis.', 955, 0, 2, 1, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(15, 'quo', 'Ipsum voluptatem vel qui optio eligendi. Tempora qui velit quod quisquam. Excepturi id ut dolor et aut. Quam officiis nobis velit dolorum dolorum est et.', 643, 3, 45, 3, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(16, 'voluptatem', 'Sed suscipit itaque nihil sed fugiat. Dolor ut rerum expedita ut dolore et eveniet. Et quo sapiente molestias magnam occaecati. Facilis itaque placeat quae sunt voluptates non eos consectetur.', 693, 0, 26, 4, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(17, 'eos', 'Dignissimos ab velit odit alias consequuntur. Aperiam aut explicabo aspernatur doloribus aliquid.', 931, 5, 11, 4, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(18, 'est', 'Eaque minus molestiae sint autem. Reiciendis nobis quidem voluptates praesentium. Provident aut perferendis nesciunt atque quae.', 144, 5, 22, 4, '2018-01-02 04:21:07', '2018-01-02 04:21:07'),
(19, 'voluptatem', 'Dolores quam incidunt iste omnis. Voluptas accusamus voluptas odio et voluptatibus quia. Maiores voluptate optio qui recusandae. Praesentium molestiae dolor ut nihil doloremque explicabo ut.', 915, 9, 37, 5, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(20, 'eum', 'Possimus maiores repellendus voluptate. Dicta est nesciunt est qui nam error repudiandae. In voluptatibus ipsa voluptatem quia consequatur quidem consequatur natus.', 823, 3, 11, 5, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(21, 'quia', 'Non odit corporis temporibus culpa dolorum ex. Aliquid et animi doloribus eaque sapiente dignissimos.', 738, 6, 48, 3, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(22, 'voluptas', 'Qui libero porro odit. Delectus nesciunt est voluptatem omnis esse eos eos. Illum aut et necessitatibus dolorem qui molestias.', 526, 3, 19, 4, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(23, 'ea', 'Veniam provident ut deserunt illum quas nostrum maxime. Modi nostrum sed non assumenda quis. Aut minima libero aut sit deleniti impedit molestiae.', 760, 2, 50, 4, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(24, 'necessitatibus', 'Illum ducimus saepe voluptatem. Repudiandae cum sint nihil. Voluptatem rem veniam inventore. Dolorem aperiam porro voluptatem voluptatibus omnis ut dolorem corrupti.', 238, 4, 11, 1, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(25, 'motoxspluss', 'this is nice phone', 15000, 15, 20, 2, '2018-01-02 04:21:08', '2018-01-02 05:38:23'),
(26, 'corrupti', 'Doloremque et beatae quo mollitia beatae eaque. Perferendis minima eum dolores pariatur. Minima magnam et neque reprehenderit ut qui debitis.', 862, 5, 29, 3, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(27, 'tempora', 'Reiciendis totam error provident sint pariatur nihil rerum. Nisi et dolorum est cum sint animi quasi.', 170, 7, 42, 2, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(28, 'minus', 'Enim optio aliquid consequuntur eaque. Sunt molestias ducimus aut iusto. Sint occaecati hic consectetur a nemo sit assumenda. Libero quia quas soluta vel ipsa.', 707, 1, 7, 4, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(29, 'aperiam', 'Quasi non consectetur neque est. Aperiam qui voluptatem pariatur et dignissimos molestiae. Qui illo sunt amet ullam maxime. Facilis alias recusandae temporibus rerum et aliquam.', 358, 2, 26, 2, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(30, 'motoxspluss', 'this is nice phone', 15000, 15, 20, 2, '2018-01-02 04:21:08', '2018-01-07 23:25:22'),
(31, 'sunt', 'Dignissimos id aliquid dolorum accusantium neque veritatis. Facilis sunt numquam deserunt recusandae laudantium aspernatur minima ad. Quidem asperiores sit labore rerum tempore quibusdam.', 631, 6, 48, 3, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(32, 'cumque', 'Voluptatem neque aliquid ipsam sint impedit dicta illo illum. Nihil maxime expedita ut ut ea voluptas. Consequatur dolorem in eum deserunt inventore. Fugiat repellat temporibus occaecati voluptatum.', 793, 3, 39, 5, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(33, 'autem', 'Cumque exercitationem recusandae eveniet quo sunt accusamus maxime. Officiis suscipit et officiis molestiae qui. Incidunt et consequuntur enim qui exercitationem ipsa. Consequatur commodi voluptatem omnis animi perferendis est.', 628, 5, 44, 3, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(34, 'molestiae', 'Officiis velit nihil omnis aut nesciunt. Maxime impedit aut repellendus explicabo exercitationem cumque quas neque.', 674, 3, 27, 3, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(35, 'sequi', 'Id quia et quas quia rerum tempora libero. Reiciendis quisquam ut et provident modi qui. Fugit aut dolore ut optio et. Error sed magni et facere.', 949, 0, 27, 1, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(36, 'porro', 'Tenetur qui excepturi soluta dignissimos facilis. Vero saepe deserunt qui. Tempora aperiam sint est repellat doloribus quae neque.', 650, 6, 29, 1, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(37, 'suscipit', 'Minus alias aspernatur ratione sed laboriosam sit et. Enim aut quis cupiditate iste eligendi voluptas. Dolores autem optio unde ab ea optio repudiandae. Ut itaque maiores omnis omnis temporibus beatae porro et.', 376, 8, 44, 4, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(38, 'fugiat', 'Laborum quis voluptatem ut et. Praesentium quo aperiam illum velit aperiam qui quia. Eos voluptatem magnam nisi tempore ducimus.', 282, 8, 39, 4, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(39, 'voluptatibus', 'Deleniti quia dolore incidunt sed molestiae. A nam aut sequi numquam. Qui similique eaque veniam officia ut et. Facere quam aliquam placeat ad tempora doloremque voluptas.', 890, 0, 2, 4, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(40, 'vel', 'Et possimus nam vel similique ut sed numquam. Et repellendus qui vel ut voluptate. Quas unde expedita illum tempora aliquid.', 458, 9, 21, 5, '2018-01-02 04:21:08', '2018-01-02 04:21:08'),
(41, 'fugit', 'Enim facilis tempora ipsum molestiae. Sunt sequi in et consectetur ad et quod eum. Et reiciendis at quia expedita eligendi.', 337, 8, 17, 2, '2018-01-02 04:21:09', '2018-01-02 04:21:09'),
(42, 'nesciunt', 'Sint qui ipsum ipsa distinctio. Qui suscipit voluptatem dolorem tempora quaerat. Perferendis sunt dolorum ratione.', 452, 3, 7, 3, '2018-01-02 04:21:09', '2018-01-02 04:21:09'),
(43, 'consequatur', 'Impedit similique perspiciatis voluptatem illum. Officiis quisquam odio itaque quis voluptatem eos harum. Fuga dolores at totam impedit.', 476, 6, 22, 5, '2018-01-02 04:21:09', '2018-01-02 04:21:09'),
(44, 'fuga', 'At est doloremque qui sint non est. Laboriosam molestiae non sint non aliquam. Perspiciatis omnis ad harum vitae.', 373, 4, 48, 4, '2018-01-02 04:21:09', '2018-01-02 04:21:09'),
(45, 'qui', 'Asperiores ut eveniet tempora incidunt unde eum recusandae. Et vero aut repellendus placeat expedita ullam. Quas dolore fuga sapiente cumque consectetur.', 702, 1, 52, 5, '2018-01-02 04:21:09', '2018-01-02 04:21:09'),
(46, 'et', 'Expedita consequatur odit aut beatae deserunt ad. Quo enim sequi deleniti quo velit quia. Dignissimos neque quod est et.', 581, 7, 55, 2, '2018-01-02 04:21:09', '2018-01-02 04:21:09'),
(47, 'inventore', 'Deleniti doloribus numquam minus dolor incidunt. Eum a eveniet ad alias itaque consequuntur expedita.', 414, 0, 32, 2, '2018-01-02 04:21:09', '2018-01-02 04:21:09'),
(48, 'eligendi', 'Tenetur distinctio et quibusdam iusto magni illum. Eos et qui assumenda ea consequatur et. Repellendus ut quis ut expedita alias et aut nihil.', 319, 7, 39, 2, '2018-01-02 04:21:09', '2018-01-02 04:21:09'),
(49, 'optio', 'Veniam fugit illum voluptatum illum et. Modi aut et maxime quo quaerat. Minima vitae quisquam impedit sequi.', 384, 8, 37, 3, '2018-01-02 04:21:09', '2018-01-02 04:21:09'),
(50, 'ut', 'Ab ad sed quos dolorum. Ut quae enim cupiditate aperiam. Et quia consequuntur ratione praesentium quis quia. Dolore quod culpa repellat qui eos saepe commodi.', 888, 4, 47, 1, '2018-01-02 04:21:09', '2018-01-02 04:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `customer`, `review`, `star`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Cheyenne Koss', 'Fugiat ratione natus ducimus et. Dolorum nobis nobis quia omnis minima. Velit error labore quis. Enim omnis voluptatem natus quo inventore atque.', 1, 41, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(2, 'Michaela Corkery', 'Dicta maiores iure quasi. Libero voluptas autem distinctio cumque omnis omnis. Rem sed doloribus est sunt.', 3, 13, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(4, 'Pasquale Hills II', 'Ipsum neque dicta expedita eos et esse. Voluptatem magni sit est non eaque dignissimos. Expedita minus ipsam est nulla doloremque porro aliquid libero. Sint soluta rerum voluptas praesentium est et perspiciatis non.', 2, 38, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(5, 'Miss Jazmin Schultz', 'Debitis debitis perferendis ut explicabo porro expedita. Vel sunt quia alias natus voluptatem perferendis amet tempora. Qui dolor sed impedit in atque odit aut dolor. Rerum nihil natus aut nesciunt sint. Mollitia reiciendis sapiente tempora provident amet omnis officiis.', 1, 2, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(6, 'Rhiannon Reichel', 'Fugit ut amet voluptatum. Quia voluptas vel in iure ut molestias amet. Officia magnam dolorum tempora in minima non accusantium. Sed non voluptatum ea quo est et nihil.', 1, 33, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(7, 'Vesta Schiller', 'Nemo ipsum fugit quia. In ut est aliquid tenetur incidunt aut hic.', 1, 7, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(8, 'Mrs. Alexane Flatley', 'Dignissimos cumque voluptas vitae harum. Praesentium occaecati ab sit esse architecto optio. Qui quia et nisi id totam ut.', 5, 38, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(9, 'Antonia Greenfelder', 'A totam fugit possimus eveniet qui. Debitis in ut dicta. Nemo aut aspernatur et nihil tempore aut eos nisi. Voluptatum corrupti aut repellendus sed maiores.', 5, 22, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(10, 'Bradford Vandervort III', 'Ut blanditiis nihil molestiae et temporibus dolorem. Culpa et neque voluptas ipsum. Quo dolorum dolores in minus. Ut maiores molestias sit deleniti perspiciatis et. Enim ipsum assumenda voluptatibus ipsam sunt voluptas repudiandae.', 2, 23, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(11, 'Anthony Kutch', 'Laudantium eaque et doloribus aut laudantium minus. Nemo sed cupiditate velit aut sequi ut. Corrupti id voluptate laboriosam laboriosam suscipit.', 1, 22, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(12, 'Mr. Rodger Towne II', 'Qui sed velit rerum accusantium corporis. Aspernatur eius incidunt omnis qui rerum. Voluptas omnis sapiente corrupti architecto. Sapiente temporibus maiores sit similique.', 0, 30, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(13, 'Maybell Krajcik', 'Qui et necessitatibus qui labore aut consectetur aliquid. Vel vel hic autem eos alias. Rerum rerum voluptatem repudiandae cum.', 3, 28, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(14, 'Dr. Darien Schultz I', 'Omnis ullam ut sit ex quo atque. Sed cum dolor nisi error dolorem eos. Quam quia amet animi excepturi amet harum. Et omnis dolores magni occaecati.', 2, 10, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(15, 'Levi Runte', 'Nulla modi et ex ea minus in omnis. Qui corporis velit explicabo itaque laudantium voluptatum quibusdam. Hic aperiam commodi omnis quod ut et. Repudiandae accusamus dolor nemo in dolorem facilis voluptates.', 3, 34, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(16, 'Velva Lynch', 'Quisquam sint culpa sequi nesciunt minima. Dolorem qui molestiae earum odio. Eos praesentium velit tempore earum veniam dolor. Laudantium non assumenda labore sed ut quod labore ratione.', 1, 7, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(17, 'Ena Weber', 'Accusamus est et et. Excepturi sequi qui laborum consectetur perspiciatis unde quaerat sit. Repellendus adipisci voluptatum officia velit harum commodi.', 5, 34, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(18, 'Prof. Grayce Rogahn III', 'Quia et ut ipsam temporibus. Minus dolorum hic delectus.', 3, 33, '2018-01-02 04:21:10', '2018-01-02 04:21:10'),
(19, 'Corbin Cassin', 'Similique autem dolor nesciunt sed voluptas ut. Non est quibusdam eveniet eius qui deleniti hic. Quia earum nostrum culpa et laudantium doloremque.', 2, 7, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(20, 'Dr. Candido Turner DDS', 'Placeat quia et eos voluptas totam dolore. Architecto et aut temporibus error officia.', 0, 6, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(21, 'Quinton Bednar', 'Repudiandae ea ipsa excepturi ullam blanditiis. Et fuga repudiandae aut maxime cumque suscipit. Perspiciatis sed velit modi. Voluptatum quas et repudiandae sunt praesentium quia veniam.', 5, 29, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(22, 'Zechariah Lueilwitz Jr.', 'Dicta qui consequatur cum consectetur. Temporibus animi maiores suscipit nemo eos rem consequuntur at. Aut qui impedit tempora ab ut. Reprehenderit non dolores consectetur rerum.', 4, 30, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(23, 'Mrs. Mollie Mueller MD', 'Amet mollitia est nesciunt perferendis magnam quisquam est. Et eveniet explicabo quod quia.', 2, 34, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(24, 'Johan Stoltenberg', 'Enim optio molestiae ut tempore fuga minima. Vitae voluptatem consectetur enim omnis sit quibusdam. Vel maiores et rerum sint autem.', 0, 46, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(25, 'Prof. Sheridan Homenick DVM', 'Nisi aut et natus rem nisi et et minima. Laboriosam nihil saepe iure et est et autem. Est et ducimus sed est sequi quis.', 0, 8, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(26, 'Elsa Grimes', 'Placeat libero qui doloremque. Deserunt corrupti sint labore corrupti velit vitae. Inventore voluptas aut eligendi molestiae aliquam. Praesentium accusamus tempore iusto officiis laborum quo aut.', 3, 5, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(27, 'Jaylin Ratke', 'Ipsam amet aut quod. Dolorem nihil quod eveniet et soluta dolores et. Enim qui eveniet quos assumenda expedita rem in. Optio iure quae et nemo eum et porro.', 5, 46, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(28, 'Cara Dickens', 'Repellat nihil et ex et et. Voluptates molestias quia et a. Est ratione corporis quis placeat et neque facere. Fugit autem in veritatis veritatis.', 0, 44, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(29, 'Chase Boyer', 'Quo veritatis ratione velit. Consequatur consequatur illo atque voluptas minus. Voluptatem pariatur sed ut voluptatem a culpa officiis. Est dolorem suscipit neque dolor blanditiis omnis sapiente.', 1, 47, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(30, 'Lela Simonis', 'In a velit aut quis debitis. Sit accusantium in omnis consequuntur aliquam alias ut rerum. Laborum ratione ipsam laborum deleniti necessitatibus architecto maiores.', 4, 49, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(31, 'Chloe Stroman', 'Neque dolorum incidunt quae rerum molestiae et. Eveniet laudantium quos fuga delectus quibusdam consequuntur. Perferendis officia et dolor esse aut. Facilis sequi maxime tenetur qui odio nam. Soluta ea asperiores deleniti quia illo iusto.', 5, 38, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(32, 'Javonte White', 'Est molestiae laborum et non delectus eum. Voluptas est quas sequi non totam dolorem. Quaerat asperiores est autem. Molestiae et rerum omnis qui.', 2, 25, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(33, 'Armani Collier', 'Corporis omnis est voluptatem fugit maiores. Dolor laboriosam optio sint dolorum quam cupiditate. Dolor iste sit culpa molestiae sit sequi cumque ut.', 1, 36, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(34, 'Leo Mertz', 'Nobis aut et commodi cum dolorum tenetur ea aliquid. Adipisci sunt ut nisi repellat deleniti.', 2, 27, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(35, 'Prof. Kaelyn Lebsack DVM', 'Nulla molestiae expedita quo nisi alias provident. Et ab et ut ad esse ex hic. Quo velit voluptatem dolor dolor vero ullam et nesciunt.', 1, 37, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(36, 'Juston Flatley', 'Repellat et sit porro debitis qui voluptatem illo. Laudantium dolor voluptatum error qui. Odit laborum beatae dolorem non similique error quidem.', 1, 15, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(37, 'Otis Von', 'Omnis commodi laudantium aut modi numquam. Optio tempore esse et ullam esse. Error et et est unde. Molestias eaque nihil tempore eum corrupti.', 5, 27, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(38, 'Dr. Floy Klein', 'Ducimus est et placeat aliquam. Reiciendis sed non voluptatum ducimus vero reprehenderit veritatis delectus. Numquam sit ab dolorum autem enim velit dolorem. Blanditiis reprehenderit sit porro at qui excepturi similique.', 2, 45, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(39, 'Frances Price V', 'Eaque doloremque rerum sint adipisci. Quisquam vero nihil reprehenderit ex reiciendis. Sint sit natus est perferendis. Velit ullam animi dicta.', 4, 45, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(40, 'Emely Quigley', 'Adipisci modi voluptate voluptates voluptas qui modi et. Aut unde ducimus placeat voluptatibus est laborum rem. Laudantium assumenda veniam ad molestias.', 3, 18, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(41, 'Vida Schmidt', 'At repudiandae qui non pariatur nam tempora. Rem dolores fugit impedit aut officia tempora. Totam quia tenetur nihil quis. Dolor eum aliquam vero.', 1, 44, '2018-01-02 04:21:11', '2018-01-02 04:21:11'),
(42, 'Toy Legros', 'Iusto est debitis tenetur et id eum. Consequatur iste repudiandae exercitationem possimus et labore. Voluptatem repellat cumque eos tempora nulla inventore. Reprehenderit aut ea iusto odit enim.', 4, 37, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(43, 'Chaim Willms PhD', 'Laboriosam excepturi eos dolores officia. Esse dolor aut quia ipsam earum magni et. Corrupti eos tenetur exercitationem quo.', 1, 13, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(44, 'Lillie Runolfsdottir', 'Rerum et accusamus provident recusandae et sed laudantium quisquam. Aut quia temporibus occaecati ad labore voluptatem sit. Veritatis ut libero eius nam illo modi porro.', 1, 15, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(45, 'Delmer Huel MD', 'Quia alias nostrum aut sit beatae sed ut. Soluta veniam dolore nulla dolorum molestiae. Eos tenetur totam et corporis enim voluptas et dicta. Veritatis qui fugit minima eos officiis inventore.', 2, 7, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(46, 'Prof. Ellie O\'Keefe', 'Rem asperiores amet aliquid recusandae voluptatum nulla. Sint expedita ea ipsam dolorem eum dolorem eos excepturi. Ut recusandae magnam vitae facilis ut.', 4, 42, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(47, 'Deshawn Walsh', 'Dolore sequi impedit facere animi. Sit temporibus sint nostrum et veritatis ut rerum error.', 0, 26, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(48, 'Wilhelmine Hayes', 'Commodi necessitatibus porro rerum consequatur accusantium earum. Consectetur ex aut earum voluptas consequatur quidem dolore. Laboriosam pariatur et et eveniet porro recusandae error voluptatem. Rerum quia laudantium quia ratione totam incidunt.', 2, 7, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(49, 'Prof. Helga Dickens', 'Porro modi et assumenda. Et tenetur quaerat et sit similique. Reprehenderit rerum ex quos qui suscipit.', 2, 40, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(50, 'Dr. Everette Ledner III', 'Rerum est laborum ea maxime qui fugit molestiae. Explicabo quia et non ea qui ut sunt. Ea temporibus iusto ea voluptates nam adipisci sapiente nihil. Unde ea nam dolores. Dolores molestiae omnis maiores placeat deleniti corrupti ut tempore.', 4, 43, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(51, 'Janessa Mante', 'Suscipit dolores nihil rerum hic sit. Soluta quam aperiam rerum veritatis nobis itaque facere. Nostrum qui tempore quo id non. Sit unde ut ab fugiat.', 2, 24, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(52, 'Sylvester Nicolas', 'Sit voluptatibus quis aut minus. Perspiciatis quae quo enim nobis qui. Atque magnam veritatis sed illo. Earum dolorum id adipisci alias dicta aut aut sint.', 0, 31, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(53, 'Dr. Letha Robel', 'Sunt quia corrupti quia iusto qui rerum. Et iste et quae qui.', 2, 17, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(54, 'Gus Hermiston', 'Sunt ex cupiditate illo adipisci ut quas dicta aut. Ut a doloremque rerum iure asperiores. Consequatur rerum officiis nesciunt velit iure est. Quam eaque recusandae pariatur quas.', 0, 7, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(55, 'Abdullah Swift', 'Recusandae minima repudiandae aspernatur cumque. Dolores quia expedita aspernatur. Non sed officiis molestias architecto ex pariatur ut. Sapiente assumenda ducimus quo et cumque odit totam et.', 3, 50, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(56, 'Emile Mitchell', 'Non dolores magnam libero et rerum et. Ab atque quo repudiandae nihil. Similique natus nam quasi dolorem consequatur libero.', 1, 18, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(57, 'Constance Jenkins', 'Sed labore nihil voluptate pariatur ratione ea. Odit ut non aut repellat qui eaque facilis dolorum. Unde et et et.', 4, 44, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(58, 'Dr. Alvina Koelpin IV', 'Quas quia odio ab consequatur quia ea. Quos dignissimos cum vel inventore veniam error voluptas. Commodi occaecati eligendi dolor aut cumque nam eos.', 2, 37, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(59, 'Elias Kertzmann', 'Facilis commodi inventore quidem ea dolorum voluptate. Magnam non numquam dolorem provident nulla consequatur. Earum est exercitationem doloribus sunt debitis. Nobis dolorem dolore veniam cumque iste.', 3, 29, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(60, 'Mr. Enos Brakus', 'Quis sint dignissimos dolorum laboriosam enim. Quia aut dolorum recusandae enim itaque quia suscipit. Tenetur eius laudantium alias quisquam id rem. Velit modi saepe ut et qui.', 1, 16, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(61, 'Ottis Friesen', 'Repellat non sed quam esse ut saepe natus. Ullam culpa voluptatem tempore maiores.', 2, 39, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(62, 'Taya Beahan', 'Adipisci animi nobis temporibus vel molestiae dolorem alias. Similique voluptas nulla natus eveniet et tempora quo.', 5, 43, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(63, 'Dr. Laurel Schiller', 'Omnis aut at dolorum eligendi hic. Officia enim eius eum vel animi. Est voluptas repudiandae aut et fugit sunt.', 0, 45, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(64, 'Rosetta Kuhlman', 'Ipsam voluptates omnis suscipit possimus id quibusdam. Modi tenetur non vel aut eaque delectus. Fuga quo accusamus nihil. Non harum et quaerat aut iusto et dolores rerum. Voluptatem aliquam alias possimus.', 4, 50, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(65, 'Liliane Hagenes', 'Qui cumque magni in adipisci ut eos. Est rem ut saepe minima autem perferendis voluptatem. Excepturi dolor est est autem tempore deleniti harum atque. Iure quos dolores modi et impedit.', 1, 14, '2018-01-02 04:21:12', '2018-01-02 04:21:12'),
(66, 'Dr. Shane Bashirian', 'Maiores sequi optio et ut in nisi. Recusandae iste amet quas molestiae id aut. Et sequi similique vitae aliquam cum officia.', 5, 22, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(67, 'Brooks Mosciski', 'Voluptatem sint cum cumque delectus non. Natus error cumque dolor enim accusantium exercitationem soluta et.', 5, 26, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(68, 'Devonte Towne', 'Corrupti alias mollitia mollitia a deleniti. Est facere id et aut. Eum dolor eos officiis magni ipsa accusantium.', 4, 21, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(69, 'Theo Sporer', 'Et expedita et itaque et voluptatem dignissimos. Sint ut pariatur sed sed. Non quo laboriosam consectetur pariatur voluptas modi. Recusandae illo et quod rerum voluptas.', 5, 40, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(70, 'Dr. Rosario Schoen', 'In perferendis sit ut quia quo quasi omnis. Nemo optio molestiae molestiae sit. Ipsam sed corrupti voluptatem provident quisquam minima.', 5, 35, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(71, 'Nora Osinski DVM', 'Quo sint blanditiis dicta quis ad. Itaque est quis eius eos. Et error animi nobis consectetur incidunt magni odit. Ipsum at repudiandae quam deleniti fugiat culpa itaque. Nemo rerum voluptates commodi sed sed dolorem eos.', 0, 39, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(72, 'Ms. Cleora Buckridge MD', 'Sint sit repellendus et optio est. Id et eum cupiditate enim in itaque. Distinctio incidunt sit aliquam eius.', 4, 49, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(73, 'Rosa Vandervort', 'Non impedit consequatur a consequatur aperiam voluptatibus minus. Laboriosam voluptatem hic vel commodi. Labore sed ipsum explicabo minus.', 0, 24, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(74, 'Collin Maggio', 'Deleniti et quidem suscipit adipisci. Esse possimus eius commodi maxime. Ut possimus quisquam corporis nam repellendus qui quo. Voluptatem et dolore nam voluptate omnis. Consequatur omnis qui molestias dignissimos doloremque qui.', 4, 16, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(75, 'Arlie Crist', 'Laboriosam officia est adipisci nobis. Excepturi asperiores maiores qui provident. Sint harum quo ipsam ipsam. Molestiae quasi voluptatem culpa iure voluptatem non.', 3, 14, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(76, 'Alexie Gaylord', 'Alias ut dignissimos eligendi fugit quae quam iste a. Repellendus in officia dicta dolores vitae non enim. Quaerat neque veniam aspernatur corporis delectus aut aut. Maxime impedit sunt aut nobis dicta exercitationem deleniti.', 3, 16, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(77, 'Matilda Buckridge', 'Ipsum iusto sed at dolor et rerum ea minus. Voluptatum iure delectus occaecati possimus. Quo laboriosam laboriosam impedit tempora quo enim.', 3, 9, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(78, 'Angelita O\'Kon', 'Iste sit veniam eveniet numquam. Aut odio commodi quibusdam. Tenetur quis molestiae aperiam ut est et.', 5, 50, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(79, 'Quincy Parker', 'Voluptatem quia ut et nemo atque ut. Velit ratione velit cumque tempore mollitia et. Sunt quasi dolor voluptas corrupti. Nihil sit quia unde quis.', 1, 35, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(80, 'Bridie Walter', 'Et quia aut aut doloribus aut. Vero suscipit quam non quia et voluptas aut. Atque commodi rem ut est beatae corporis. Tempore similique ipsum deserunt.', 0, 46, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(81, 'Miss Julie Greenholt', 'Laudantium natus eum molestiae eum voluptatem nisi suscipit. Aliquid dolores quisquam sunt impedit. Ut quia sed consequuntur fuga et.', 1, 14, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(82, 'Desmond Corwin PhD', 'Architecto magni odit quia et culpa odio. Quis accusamus fugiat suscipit similique iure. Eos ipsa est reprehenderit quo occaecati quos. Neque et dignissimos voluptatem iusto commodi eaque.', 3, 8, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(83, 'Hunter Herzog', 'Quisquam sequi neque earum quis. Quia quibusdam blanditiis a culpa enim aut. Cum nisi veniam commodi quis sapiente aperiam.', 2, 31, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(84, 'Nathanial Schimmel', 'Et earum expedita rem provident rerum. Consequuntur nemo ut neque quo rem. Rem perferendis est facere et saepe non et.', 4, 25, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(85, 'Dr. Yolanda Haag', 'Eius et qui et sequi. Id perferendis dicta voluptatibus sed ipsam est. Ab natus aliquam qui. Quidem sit laudantium voluptas placeat.', 1, 29, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(86, 'Dorcas Lang', 'Quia sit rerum sit incidunt. Ad amet totam autem consectetur eaque aut. Exercitationem quo sapiente qui debitis occaecati ipsum.', 4, 1, '2018-01-02 04:21:13', '2018-01-02 04:21:13'),
(87, 'Sheila Jacobi', 'Dicta quia est provident quasi similique harum sit. Est velit repellat vero vero necessitatibus et ea. Quisquam in ut sequi quisquam.', 4, 7, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(88, 'Alvis Reilly', 'Rerum odit quia ratione aliquid nostrum. Necessitatibus quod odit aut quo reprehenderit facilis tempora molestias. Odit repellat veniam ut ab at. Et est iure ratione.', 4, 39, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(89, 'Mr. Cleve Jenkins DVM', 'Itaque nulla vero et a occaecati et culpa. Accusantium et voluptas corporis enim aspernatur voluptatem. Voluptatibus et voluptas ut voluptatum sint esse.', 5, 35, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(90, 'Mr. Lincoln Considine DDS', 'Aut eaque et sint ut. Odio vel amet amet provident eligendi eius. Nihil vel saepe aspernatur atque ut reprehenderit.', 3, 6, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(91, 'Mrs. Rosalinda Upton', 'Iste facere ut aut debitis consequatur est. Hic sint earum culpa nulla perspiciatis sed. Quia error maiores provident.', 2, 38, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(92, 'Tess King DDS', 'Neque dicta necessitatibus quibusdam pariatur reiciendis itaque. Praesentium et aliquam dolorem dolores qui aut. Voluptates deleniti maiores quas tenetur. Pariatur pariatur rerum eius dolorem dicta possimus sit quis. Eligendi quisquam rerum sed cupiditate ad atque quidem sapiente.', 0, 30, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(93, 'Roberto Bosco I', 'Minima qui consectetur doloremque aliquam tenetur. Dicta ut tempore eos provident minus. Tenetur vel tempore iusto omnis itaque qui. Ad qui repudiandae non quam repudiandae.', 5, 41, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(94, 'Demetrius Schumm', 'Consequatur quos iusto eius quas optio. Molestias repellendus ut ipsum et officia officia. Quia dolores aut recusandae.', 2, 28, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(95, 'Prof. Joaquin Schoen IV', 'Debitis magnam cum aliquid inventore. Magni adipisci ex dignissimos voluptas maiores. Illo sunt esse esse et.', 2, 25, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(96, 'Nettie Schumm', 'Perferendis eligendi praesentium et tenetur placeat et ratione perspiciatis. Iusto dolorum quos cupiditate consectetur. Error officiis consequatur voluptatem vero. Recusandae praesentium sint porro sint quaerat consectetur.', 3, 27, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(97, 'Imelda Ernser III', 'Consequatur et quibusdam aut. Repudiandae quam animi voluptas ut modi non. Laborum dolor quam eveniet molestiae tempora. Commodi esse temporibus soluta dolorem laudantium impedit id.', 2, 20, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(98, 'Albina Little', 'Culpa occaecati in cumque qui cupiditate adipisci repudiandae. Dolorem aut voluptatibus optio quam necessitatibus iusto. Omnis dolore rerum quod iure quas.', 3, 26, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(99, 'Prof. Orland Spinka MD', 'Nihil dolorum consequuntur voluptatibus natus in ut. Ut quia deleniti voluptate dolorem nemo quaerat. Recusandae quo quo rerum dignissimos esse.', 0, 4, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(100, 'Chaya Lowe', 'Quas et expedita accusantium est recusandae doloremque. Laudantium voluptatem dolores saepe delectus ut consequatur est. Dolorem soluta cum sunt laudantium itaque.', 3, 17, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(101, 'Dr. Deion Herzog II', 'Nulla quas voluptatem ipsum dolores officiis. Perspiciatis ex voluptatum ullam recusandae. Ratione qui et quia ratione provident et.', 2, 15, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(102, 'Gia Daniel V', 'Optio eaque culpa sint animi. Magnam odit unde minima corrupti. Et neque voluptatem in. Ipsum architecto aut voluptate.', 2, 39, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(103, 'Hildegard Russel V', 'Et sint labore dolor occaecati. Enim laborum non adipisci modi commodi minus sit. Optio est sunt possimus qui in culpa nobis accusamus. Omnis earum aut alias officia minima aspernatur dignissimos.', 4, 24, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(104, 'Dr. Beatrice Emmerich', 'Ut qui aut quo est. Animi aperiam ullam praesentium recusandae excepturi. Veritatis quisquam omnis quam est nemo rerum voluptatem. Dolorum temporibus dolorem commodi qui tempore. Eius consectetur laboriosam excepturi vel ut vel minus.', 5, 22, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(105, 'Theron Armstrong Sr.', 'Deserunt veniam beatae voluptatem in tempora. Aut voluptatem necessitatibus ea voluptatem autem. Et laborum atque voluptatem cupiditate at.', 5, 25, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(106, 'Roger Schroeder', 'Aut doloribus nobis rerum qui praesentium delectus ut. Blanditiis recusandae architecto enim. Maiores nostrum fuga eaque totam. Est voluptatem provident similique tempore rerum reprehenderit reprehenderit quaerat.', 2, 7, '2018-01-02 04:21:14', '2018-01-02 04:21:14'),
(107, 'Kiana Champlin', 'Repellat hic quos quo omnis eligendi reiciendis adipisci. Cum repudiandae debitis vel adipisci qui quia tempore.', 4, 9, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(108, 'Celestine Bauch', 'Perspiciatis quidem tempore eligendi voluptas rem est sint. Porro et rerum est perferendis nam.', 2, 23, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(109, 'Aurelie Dietrich', 'Ea occaecati deserunt voluptates et eveniet expedita et. Tempore voluptatum vel aut rerum illo. Temporibus ducimus quod vitae delectus vitae ut. Voluptatibus deserunt quasi eius voluptates eos molestiae eligendi aut.', 0, 17, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(110, 'Clark Tillman V', 'Eum voluptas ratione dicta optio harum id quas. Quasi nihil molestiae qui. Et voluptatem cumque repellat exercitationem.', 5, 40, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(111, 'Jamison Lindgren', 'Laudantium sequi odio dolores pariatur ullam rem optio eveniet. Excepturi qui totam vero qui. Mollitia doloremque molestiae et et amet tempora voluptatem.', 5, 10, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(112, 'Alvis Barrows', 'Quia dicta aspernatur eveniet magni. Neque est ad ipsam officia voluptatem debitis. Tenetur natus hic molestias delectus est.', 3, 21, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(113, 'Grace Koelpin', 'Commodi et aliquam sit earum quis voluptatem. Ratione sed et deleniti omnis velit facilis. Ut qui sunt itaque. Recusandae qui quia qui cumque. Omnis voluptates cumque quos culpa quia ea.', 0, 15, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(114, 'Vicenta Feest', 'Aut voluptas adipisci fugit quia in esse. Necessitatibus id vitae aut exercitationem ut. Similique sunt aut sit reprehenderit vel. Impedit omnis iste sequi. Tenetur delectus placeat nobis dolores.', 1, 2, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(115, 'Ardith Conn V', 'Et quibusdam quia et blanditiis recusandae et ducimus. Eum qui aperiam ea incidunt et non qui.', 3, 29, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(116, 'Prof. Jules Reilly V', 'Tempora soluta ab deleniti labore sapiente. Et quia quia non dignissimos. Eaque quidem tempore veritatis eaque.', 0, 4, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(117, 'Laura Kshlerin', 'Esse omnis a et enim. Rem quisquam dolor incidunt modi eaque voluptas. Tempore quis voluptatibus rem eius perferendis vitae. Perferendis quibusdam in cum repellat sint est.', 2, 26, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(118, 'Zula Price', 'Aliquam ut inventore cumque. Et sit neque autem tenetur maiores alias repudiandae. Et quia qui ducimus sit voluptatem eaque sunt. Voluptatibus beatae ipsa deserunt vel.', 5, 4, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(119, 'Drake Torphy', 'Pariatur numquam quo recusandae totam architecto non amet. Iusto sequi nemo minus iste. Autem qui similique voluptatem impedit non repudiandae.', 0, 48, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(120, 'Hollie Kuhic', 'Accusamus ipsa aut quis minus nobis aut. Doloremque voluptas et qui assumenda dicta at et. Ut nobis quis natus quos sit aut. Natus aut dolore qui neque temporibus.', 2, 16, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(121, 'Cassandre Pfeffer', 'Rerum molestias doloribus rerum ex consequatur fuga. Impedit qui molestiae nostrum eveniet veniam est eos. Dignissimos nesciunt ea adipisci.', 1, 43, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(122, 'Pierce Crooks PhD', 'Corporis voluptatum est atque id deleniti qui. Sequi aut omnis quaerat repellat quis asperiores distinctio quis. Praesentium fuga cupiditate sunt exercitationem excepturi laudantium. Enim accusamus ullam dolorem consequuntur dolorem ipsum ex.', 3, 47, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(123, 'Adonis Kuhic', 'Et sit excepturi earum qui sint nam. Corporis officia quis accusantium voluptas sint eius adipisci animi. Ut rerum autem et cum. Dolorem et eveniet voluptatum et libero.', 2, 9, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(124, 'Clement Douglas', 'Voluptatem quidem magni vel omnis. Asperiores sit quod consequatur sed. Quae aut ab sit illo dignissimos. Aut autem consequatur facere.', 1, 3, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(125, 'Justus Morar Sr.', 'Itaque facilis voluptas quis earum. Aut recusandae dolor labore. Laboriosam rerum ut possimus doloribus quia sed at repellendus. Rerum amet dolorem impedit labore sapiente.', 2, 34, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(126, 'Ms. Bernadette Lemke DDS', 'Facere quasi quo sint. Facilis nemo accusantium quisquam est.', 2, 6, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(127, 'Regan Abbott', 'Quae aut iure qui aut consequatur laborum perferendis. Modi magni fugit laboriosam ipsam. Provident et qui rem alias vel.', 0, 2, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(128, 'Oscar O\'Conner', 'Incidunt in quaerat illo sed occaecati. Distinctio omnis provident corporis natus minus. Aut repellendus in doloribus sapiente. Rerum ut illum tempora velit temporibus.', 5, 16, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(129, 'Dr. Samara Schamberger DDS', 'Praesentium atque quis esse quo nesciunt commodi non. Deleniti quidem dolore iure voluptatem ea ut nesciunt. Dolore rerum enim rerum dolores dolores.', 4, 40, '2018-01-02 04:21:15', '2018-01-02 04:21:15'),
(130, 'Merl Kozey', 'Vel minus doloremque facilis ipsum laudantium eius. Reiciendis est nisi quas. Cum quisquam voluptatem repellendus numquam. Ea natus aut in est.', 4, 21, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(131, 'Prof. Francisca Sauer', 'Ea dolore sunt labore alias eos. Quo dolor ut et deserunt incidunt aut ut. Accusantium aliquam deserunt ut.', 4, 19, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(132, 'Amelie Keeling', 'Adipisci quasi corporis doloribus est quis error. Maiores cum nam quo. Sequi quia amet vel neque nostrum id repellat minima. Ut enim voluptates neque corrupti. Temporibus dolor tempora maiores odit.', 1, 50, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(133, 'Lennie Christiansen', 'Nesciunt error aut et cum omnis. Voluptas repudiandae ea ullam quod neque voluptates. Est neque et quas sint deleniti similique.', 0, 22, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(134, 'Hilario Durgan IV', 'A nobis iure et ut. Est ut voluptate veritatis blanditiis vel. Et doloribus ut qui molestiae voluptatem deleniti corrupti. Aut explicabo maxime praesentium non nemo dolorum.', 5, 9, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(135, 'Kailyn Jaskolski', 'Sequi excepturi impedit similique perspiciatis saepe. Mollitia molestiae perspiciatis temporibus ullam rerum accusantium.', 0, 3, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(136, 'Rene Gerlach', 'Voluptate itaque dolor doloribus rerum aliquid. Nemo unde a ut ab quaerat sequi. Architecto fugit voluptatum accusamus soluta molestiae officia vitae.', 4, 35, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(137, 'Otilia Rowe', 'Eum aspernatur autem consequatur expedita fugiat architecto blanditiis exercitationem. Omnis ut aperiam laboriosam adipisci autem vel voluptatem. Est et molestias cumque non ea.', 3, 25, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(138, 'Rebekah Smitham', 'Voluptatem et earum veniam culpa quod. Eos iusto sit quis sit. Sunt dignissimos expedita blanditiis modi doloremque aspernatur qui veritatis. Fugit asperiores quisquam quaerat sit placeat. Architecto cum ipsam quidem et.', 4, 36, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(139, 'Prof. Barrett Lindgren MD', 'Amet sint tempore voluptas earum et aut laborum. Dolore consequuntur ipsum voluptatem sit molestias ipsam optio. Aperiam enim tempora ex corporis quia quisquam. Sit dicta odio esse optio. Quas est impedit error dolorem aut ipsa.', 1, 28, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(140, 'Dahlia Halvorson', 'Autem incidunt illum nam id qui dolorum. Iusto consequatur cum eum fugit molestiae vitae dignissimos rerum. Molestias quod sed temporibus ad quo sapiente vel. Non quia ea nostrum ut.', 2, 35, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(141, 'Mr. Consuelo Zboncak MD', 'Sit aliquam ut tempore doloremque et voluptates consectetur. Perferendis velit officiis cupiditate et voluptas at. Exercitationem error accusamus et dicta sunt non. Reprehenderit rerum dolore eligendi id sit. Sed ea voluptas suscipit a quis.', 5, 47, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(142, 'Cheyenne Fisher', 'Dolorum numquam repellendus accusantium voluptatum. Sed sequi architecto adipisci modi ad. Iste autem omnis quia magni repudiandae deserunt reprehenderit. Qui quia magni hic et et.', 5, 10, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(143, 'Prof. Issac Schuppe', 'Ut architecto pariatur ad. Sunt pariatur et id officia ut aspernatur est. Rerum veniam quam similique aut beatae nemo. Esse placeat repellat consectetur corporis doloribus est suscipit nam.', 4, 3, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(144, 'Muhammad McDermott', 'Aut aut labore ut voluptate. Aut cum placeat non corporis. Vel odio voluptatem vitae non.', 0, 39, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(145, 'Turner Bailey', 'Quo velit consequuntur ab rerum asperiores deleniti maiores. Voluptatum sint corporis dolorem voluptatibus dignissimos quia commodi. Animi quia quam qui iure.', 2, 45, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(146, 'Darrin Beier', 'Quis numquam nam iure nisi aut. Numquam cupiditate nulla nemo dicta cumque. Reprehenderit quia quia quia.', 5, 2, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(147, 'Ms. Michaela Terry Sr.', 'Et ut dolores veniam accusantium ipsum dolores tenetur. Magnam dolorum maiores sit rem voluptatem. Officiis ea voluptatem dolor a blanditiis debitis.', 5, 16, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(148, 'Misael Daugherty', 'Harum ducimus voluptas non tempore corrupti. Et id itaque reiciendis a quisquam quaerat ratione ad. Occaecati inventore debitis deleniti ducimus consequatur qui vel odit. Qui laudantium necessitatibus voluptas qui.', 5, 20, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(149, 'Prof. Javier Wisoky', 'Nobis dolorem nemo quis qui. Id sed dolorem odit velit consequatur voluptate enim. Dolorum eos et quas dolor distinctio qui quia. Et nemo et id iure sint quos libero.', 5, 32, '2018-01-02 04:21:16', '2018-01-02 04:21:16'),
(150, 'Ms. Anissa Kuhic DDS', 'Assumenda et ducimus dignissimos qui. Quia porro nihil delectus illo deserunt.', 0, 46, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(151, 'Cicero Gutmann', 'Nulla ullam soluta rerum facere id optio facilis. In vero eos est et.', 4, 49, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(152, 'Orion Wilkinson', 'Saepe et rem harum vel. Et dolorem eaque qui assumenda. Veritatis possimus delectus optio et. Ullam necessitatibus corrupti quidem aut minus.', 4, 25, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(153, 'Ella Bednar', 'Nostrum natus qui consequatur impedit doloribus. Sunt temporibus qui ut sed. Non molestiae voluptatem nesciunt consectetur sunt adipisci molestiae.', 1, 18, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(154, 'Myrtice Rempel', 'Est quia modi esse qui non recusandae a. Et officia et alias ipsa soluta. Id corporis quia velit sed eaque.', 1, 15, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(155, 'Reuben O\'Conner MD', 'Quasi exercitationem distinctio earum facere maxime est aut. Consectetur dolore culpa repellendus ea. Cum ad iusto voluptas sunt perferendis.', 3, 46, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(156, 'Anabel Rowe', 'Qui incidunt dolorem debitis quos eaque. Dolorem dolorem facilis laboriosam ut. Corporis omnis voluptate laboriosam. Ut et delectus non natus voluptatem dignissimos beatae.', 0, 48, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(157, 'Cierra Kub', 'Praesentium qui minus aut voluptas vero atque. Autem sit ullam animi fugit. Voluptatem et perspiciatis adipisci expedita ipsum molestias fuga blanditiis. Cumque temporibus praesentium quam nostrum consequuntur tempora iste.', 5, 2, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(158, 'Fermin Schimmel', 'Quia mollitia rerum sunt beatae occaecati. Expedita recusandae consequatur eos vel pariatur distinctio. Quia numquam cum ipsa consequatur quia vero doloremque id. Quod et et eligendi molestiae et nesciunt.', 5, 21, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(159, 'Alayna Smitham', 'In quasi quod est numquam. Consectetur voluptatem explicabo excepturi dolore debitis necessitatibus quidem eum. Error animi provident enim iure. Nostrum beatae voluptatem id et ab.', 1, 34, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(160, 'Dr. Jess Mayert', 'Veniam dolorem deserunt distinctio illum amet. Temporibus labore enim nam et sint culpa. Consequatur vel accusantium id est sint aliquid.', 2, 47, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(161, 'Miss Chanel Kihn', 'Placeat rerum reiciendis est amet omnis a. Provident non doloribus vel rerum consequatur quis est voluptatem. Cumque qui ut provident labore voluptatibus ipsa quia voluptas.', 3, 15, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(162, 'Mrs. Lilyan Marquardt', 'Quaerat blanditiis provident voluptas quisquam nihil. Enim quibusdam quos eveniet sed reprehenderit quia.', 5, 25, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(163, 'Gardner Hirthe', 'Quisquam consequatur eaque et perspiciatis facilis repellendus dolorem. Quasi ad odit ut rerum illo est porro. Quam fuga molestias veritatis est et ut placeat. Illum sint aliquid blanditiis vero repellendus.', 4, 30, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(164, 'Fleta Padberg', 'Dolor maiores nihil vitae est voluptatibus sequi. Laudantium aliquid quas eos minima nam error non. Sint autem fugiat quis perferendis rem. Corrupti vitae rerum tempora maiores excepturi nesciunt.', 0, 24, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(165, 'Dr. Declan Boehm Sr.', 'Laboriosam dolor recusandae alias velit nihil. Exercitationem suscipit molestias eum sit itaque et culpa. Ab et sunt impedit fuga molestiae aspernatur. Soluta aliquid dicta omnis exercitationem.', 3, 2, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(166, 'Dr. Albina Schuster', 'Porro sequi et quo omnis natus similique. Qui temporibus provident quidem placeat exercitationem mollitia tempora. Et voluptates quasi ex animi ut dicta aut. Dignissimos aperiam sunt hic a explicabo incidunt animi.', 3, 14, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(167, 'Amparo Howell', 'Voluptas omnis aspernatur nisi dolore placeat excepturi voluptatibus consequatur. Voluptas ut similique nihil ducimus qui. Qui enim quis consectetur esse eos voluptates.', 4, 16, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(168, 'Lennie Ruecker', 'Amet molestiae aliquid sint sit officiis vel quia. Adipisci recusandae expedita quam numquam voluptas consequuntur. Expedita delectus maxime minima rerum porro suscipit.', 4, 5, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(169, 'Constantin Legros', 'Et molestiae praesentium labore saepe amet. At debitis culpa sint voluptatem. Tenetur non magnam nobis nesciunt iste consequatur at voluptatibus.', 4, 43, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(170, 'Miss Bria Gleason', 'Quis totam sunt repellendus rerum veritatis itaque. Qui neque voluptas sed id. Et ut vel tempora optio ullam. Perspiciatis occaecati dolores et minus dolorem aliquid voluptate.', 4, 39, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(171, 'Americo Weber PhD', 'Perferendis voluptatem eos ea et. Perferendis vel asperiores sit laudantium aut. Nesciunt et corporis voluptas illo.', 5, 41, '2018-01-02 04:21:17', '2018-01-02 04:21:17'),
(172, 'Kirk Lakin', 'Quasi maiores possimus enim. Eos enim iure ex necessitatibus. Rerum dolor suscipit numquam sint id repellat voluptatem eos. Consequuntur nemo numquam qui ut.', 0, 18, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(173, 'Jess Jakubowski', 'Nihil officia totam vitae voluptatem earum asperiores voluptatem molestiae. Tempora sed sed et facere commodi provident. Voluptatem nihil sed fuga nam itaque officiis.', 1, 27, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(174, 'Enid Auer Jr.', 'Numquam quaerat iste et dolores. Numquam quos sunt mollitia facere dolores. Et sed quibusdam voluptas quia ut et saepe. Aspernatur nihil ut itaque. Porro nihil cum officia nam at ipsam sed.', 2, 31, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(175, 'Consuelo Stiedemann', 'Architecto consequatur ratione quo ut et. At impedit sunt numquam voluptas nemo fuga iusto voluptas. Sint sunt voluptate illum ea ad quibusdam deleniti. Animi consequuntur doloribus qui ullam. Optio delectus accusantium aliquid.', 4, 15, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(176, 'Dr. Carmine Prohaska II', 'Sed consequatur ipsum officiis rerum. Sed tempore distinctio tenetur quasi molestiae accusantium. Autem eveniet accusamus cum voluptas voluptatem sed rem. Dolorem est nemo consequatur ut.', 0, 11, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(177, 'Brian Trantow III', 'Veniam beatae et neque. Voluptas sequi possimus officiis quo distinctio explicabo. Ut ipsum nisi unde id et in.', 5, 4, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(178, 'Cleora Marvin Sr.', 'Quos sunt sit iure cupiditate. Quos et dolore tenetur labore est accusantium aut optio. Neque aut facilis eos non laboriosam placeat ea nobis.', 0, 31, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(179, 'Lelia Lueilwitz', 'Assumenda est et occaecati placeat enim in nisi. Suscipit reprehenderit reprehenderit possimus ut. Consequatur aut qui magnam est incidunt blanditiis est. Deleniti expedita velit velit voluptas dignissimos numquam.', 4, 12, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(180, 'Lonie Schmeler', 'Doloribus quis et consequatur eius. Enim dignissimos aut ut error nobis unde. Esse doloribus et unde illum dicta non. Odit quasi voluptas magnam.', 5, 44, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(181, 'Dr. Magdalen Legros', 'Officia et dolor error neque qui quis. Molestiae commodi impedit eius quia autem. Quis quos vel aspernatur quia dicta neque et. Cum et consectetur quo doloremque explicabo fugit. Aut sed dignissimos atque vel fuga voluptas.', 5, 8, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(182, 'Mrs. Ashlee Durgan DDS', 'Cumque saepe illum praesentium et. Optio deserunt eum eum non voluptatem. Ea rerum unde hic doloribus. Eveniet voluptate accusamus magni.', 2, 37, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(183, 'Madisyn Rice', 'Cumque voluptates sed mollitia. Ipsum et sequi id cupiditate nobis illo ex. Labore ut magni molestias est reiciendis facilis.', 0, 11, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(184, 'Miss Jolie Frami II', 'Est et suscipit perspiciatis modi magnam ipsa porro sint. Autem vero hic quaerat. Est ex et exercitationem ut optio. Id dicta ex unde placeat ut.', 3, 50, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(185, 'Ms. Laila Bruen', 'Voluptas dolores voluptas et dolorem. Quia est voluptatum fugiat pariatur est quasi iste. Omnis officia eius quasi similique et atque. Rerum voluptas quia dignissimos neque. Eum eos id est asperiores accusamus laboriosam.', 0, 1, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(186, 'Sydni Gerlach I', 'Nobis commodi et mollitia non omnis temporibus. Suscipit officiis maiores omnis esse. Veritatis soluta enim sint nisi culpa hic. Laborum exercitationem atque et delectus.', 4, 38, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(187, 'Deshaun Hammes', 'Voluptate ex pariatur est minima qui et. Aut voluptatem dolorum facilis sed mollitia libero qui. Enim commodi est minus et. Et tempora magnam dolores quasi et eum temporibus quidem. Officiis nihil eos adipisci vel.', 5, 4, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(188, 'Marlen Schoen Jr.', 'Vel ipsum voluptatem nihil deleniti unde voluptatem aut. Vitae deleniti ab ducimus facere quibusdam. Fugiat consectetur cumque voluptatem sit blanditiis repellendus. Quam dolorem porro distinctio dicta vel eum possimus.', 5, 2, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(189, 'Jarred DuBuque', 'Qui ad tempora maiores ducimus. Dolores at incidunt sit veniam eos est magni. Optio quam ab quas cumque hic.', 2, 33, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(190, 'Mrs. Ursula Kiehn', 'Eaque aliquam quae voluptatem voluptas enim ad. Distinctio sapiente unde omnis.', 3, 1, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(191, 'Tania Morissette', 'Veritatis assumenda nemo aut laudantium laborum aperiam numquam alias. Ratione rem magni neque adipisci. Pariatur pariatur voluptate ipsam aut vel aut amet. Corrupti suscipit exercitationem omnis.', 1, 45, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(192, 'Zander Kuhn', 'Minima rerum non omnis et consequatur deserunt. Corrupti facere explicabo voluptates earum.', 3, 30, '2018-01-02 04:21:18', '2018-01-02 04:21:18'),
(193, 'Polly Torp', 'Sed assumenda omnis eos ratione perspiciatis quae. Molestias molestias debitis alias dolores tempore. Culpa eos repudiandae et tenetur voluptas in omnis cum.', 5, 16, '2018-01-02 04:21:19', '2018-01-02 04:21:19'),
(194, 'Waino Kulas', 'Corporis iure illo consectetur assumenda voluptas. Illo quos aut et repudiandae cum id.', 5, 21, '2018-01-02 04:21:19', '2018-01-02 04:21:19'),
(195, 'Mrs. Kelsie Parker', 'Ab maiores laborum quia nemo ut maiores. Blanditiis velit dolorum iusto repellat.', 4, 33, '2018-01-02 04:21:19', '2018-01-02 04:21:19'),
(196, 'Barton Bashirian', 'Provident quasi iusto labore sint perspiciatis. Exercitationem quo maiores veniam sit et explicabo. Omnis expedita harum quisquam officia harum iure incidunt. Repellendus et doloremque quae eos voluptates nulla quo.', 0, 33, '2018-01-02 04:21:19', '2018-01-02 04:21:19'),
(197, 'Terence Gerhold', 'Porro iusto consequatur omnis dignissimos. Voluptatem ut et quis dignissimos praesentium.', 5, 17, '2018-01-02 04:21:19', '2018-01-02 04:21:19'),
(198, 'Raleigh Will', 'Vel quod eaque labore accusamus quis. Dolor illo quibusdam a non illo omnis ea accusantium. In sit eveniet sit facere.', 1, 20, '2018-01-02 04:21:19', '2018-01-02 04:21:19'),
(199, 'Nadia Sawayn Jr.', 'Adipisci et non neque aut. Velit aliquam nulla adipisci quos doloremque molestiae maxime. Suscipit iure odit voluptatibus qui reiciendis.', 4, 4, '2018-01-02 04:21:19', '2018-01-02 04:21:19'),
(200, 'Araceli Greenfelder', 'Sapiente id quos iusto. Accusamus iste harum repudiandae quis ratione.', 1, 36, '2018-01-02 04:21:19', '2018-01-02 04:21:19'),
(201, 'suraj', 'this is very good phone', 5, 38, '2018-01-02 06:56:03', '2018-01-02 06:56:03'),
(202, 'suraj', 'this is very good phone', 5, 38, '2018-01-02 07:00:07', '2018-01-02 07:00:07'),
(203, 'suraj', 'this is test', 4, 38, '2018-01-05 06:03:12', '2018-01-05 06:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samanta Walsh', 'schamberger.rosario@example.org', '$2y$10$tw94oZxRaHzZqrb8G7gyAe9PHFMyMlr.EwCO0MoHGMKffTfT1kbie', 'IrLph0b4O6', '2018-01-02 04:21:06', '2018-01-02 04:21:06'),
(2, 'Pauline Homenick', 'reymundo82@example.com', '$2y$10$tw94oZxRaHzZqrb8G7gyAe9PHFMyMlr.EwCO0MoHGMKffTfT1kbie', 'LBAAsYOR0r', '2018-01-02 04:21:06', '2018-01-02 04:21:06'),
(3, 'Miss Teresa Keebler I', 'lizeth.abernathy@example.com', '$2y$10$tw94oZxRaHzZqrb8G7gyAe9PHFMyMlr.EwCO0MoHGMKffTfT1kbie', 'yVh1NnaE2k', '2018-01-02 04:21:06', '2018-01-02 04:21:06'),
(4, 'Mr. Jonathan Hegmann', 'ssauer@example.org', '$2y$10$tw94oZxRaHzZqrb8G7gyAe9PHFMyMlr.EwCO0MoHGMKffTfT1kbie', 'eRzN3bhdDF', '2018-01-02 04:21:06', '2018-01-02 04:21:06'),
(5, 'Osbaldo Ziemann', 'paxton.stokes@example.net', '$2y$10$tw94oZxRaHzZqrb8G7gyAe9PHFMyMlr.EwCO0MoHGMKffTfT1kbie', '40R6ZyQMQL', '2018-01-02 04:21:07', '2018-01-02 04:21:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
--
-- Database: `hestabit`
--
CREATE DATABASE IF NOT EXISTS `hestabit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hestabit`;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arival` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `departure` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `children` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `car_registration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `key_logs`
--

CREATE TABLE `key_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `park` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plot_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_in` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `key_out` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2017_12_28_051752_create_guests_table', 1),
(25, '2017_12_28_055545_create_key_logs_table', 1);

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_email_unique` (`email`);

--
-- Indexes for table `key_logs`
--
ALTER TABLE `key_logs`
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
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `key_logs`
--
ALTER TABLE `key_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `passport_auth`
--
CREATE DATABASE IF NOT EXISTS `passport_auth` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `passport_auth`;

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'IYR4Y8ML4zWBX3SLnFl8nk3D0eXgHMXcIw284ngQ', 'http://localhost', 1, 0, 0, '2017-12-29 07:19:34', '2017-12-29 07:19:34'),
(2, NULL, 'Laravel Password Grant Client', '0UoiZzYlUz7PlIAjZaojf1Jlv3rdDMAUE7xmuVZL', 'http://localhost', 0, 1, 0, '2017-12-29 07:19:34', '2017-12-29 07:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-12-29 07:19:34', '2017-12-29 07:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `social`
--
CREATE DATABASE IF NOT EXISTS `social` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `social`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `comment_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment_content`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 9, 'Corrupti tempora reprehenderit repudiandae blanditiis numquam quos. Corrupti provident ut inventore in hic. Pariatur iste id eum id asperiores nemo. Voluptatem itaque at recusandae pariatur.', '1', '2018-01-18 00:08:19', '2018-01-18 00:08:19'),
(2, 1, 5, 'Dolore fugiat sapiente ipsam odit. Animi cum quibusdam mollitia maiores. Et eveniet excepturi quisquam quasi et delectus.', '1', '2018-01-18 00:08:19', '2018-01-18 00:08:19'),
(3, 2, 8, 'Magni voluptas sed aliquam at. Dicta corporis quia molestiae est voluptatem unde hic aut. Veniam itaque aut rerum nulla adipisci ex impedit. Soluta facere id distinctio reiciendis omnis ullam.', '1', '2018-01-18 00:08:19', '2018-01-18 00:08:19'),
(4, 2, 6, 'Assumenda aut nemo est libero incidunt et eligendi. Accusantium exercitationem qui praesentium architecto hic. Animi et atque magnam doloribus quaerat.', '1', '2018-01-18 00:08:19', '2018-01-18 00:08:19'),
(5, 4, 7, 'Doloremque aut quas reiciendis. Perferendis provident dolorem rem ut. Quas veniam corporis occaecati nobis. Facilis deserunt assumenda et ipsa. Id rerum deserunt architecto voluptas tempora dolorum repellat voluptatem.', '1', '2018-01-18 00:08:19', '2018-01-18 00:08:19'),
(6, 5, 10, 'Aut est dicta neque error quod. Repudiandae aut soluta voluptatem quo culpa earum quasi quis. Aut quia nobis est commodi.', '1', '2018-01-18 00:08:19', '2018-01-18 00:08:19'),
(7, 4, 10, 'Sint repudiandae voluptatem nemo repellat dignissimos quibusdam. Repellendus est pariatur veniam expedita quos aliquid illo debitis.', '1', '2018-01-18 00:08:19', '2018-01-18 00:08:19'),
(8, 5, 4, 'Consequatur fugit vel rerum ducimus libero maxime. Voluptatem et doloribus illum tempore sed impedit. Et vel qui fugiat. Provident nihil impedit omnis.', '1', '2018-01-18 00:08:19', '2018-01-18 00:08:19'),
(9, 2, 7, 'Nemo assumenda et harum temporibus dolorum et. Voluptatum neque et ipsa rerum qui. Impedit recusandae veritatis rerum ipsa expedita. Blanditiis vel tempore placeat sit ipsum fuga. Quia qui dicta dolor dolorem reiciendis eveniet.', '1', '2018-01-18 00:08:19', '2018-01-18 00:08:19'),
(10, 2, 1, 'Dolor eos sit quisquam cupiditate. Voluptatum eum hic dolores excepturi molestiae qui dolores quod. Quo voluptatem voluptatem autem laudantium dignissimos voluptate dignissimos eum. Alias et illum quia eos vel.', '1', '2018-01-18 00:08:19', '2018-01-18 00:08:19');

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
(3, '2018_01_17_180239_create_posts_table', 1),
(4, '2018_01_17_183909_create_comments_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `like` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_content`, `post_file`, `status`, `like`, `dislike`, `created_at`, `updated_at`) VALUES
(1, 5, 'Non quis quasi et sed. Architecto omnis autem sunt molestiae consequatur. Praesentium est ipsum esse nulla rerum. Mollitia beatae aut voluptatibus vel.', 'public/post_images/285c2cbf49e513012bfaf1cd9d063310.jpg', '1', 2, 6, '2018-01-18 00:08:18', '2018-01-18 00:08:18'),
(2, 2, 'Nulla hic nemo eligendi aut nam animi. Quo eveniet explicabo totam deleniti qui ut delectus. Aliquid dolorem aspernatur omnis impedit. Eligendi sequi ea minima et. Natus at sint veniam quam velit beatae officia a. In sint laborum et qui.', 'public/post_images/c1bd3ad27e07966d31c53049cd3a452c.jpg', '1', 6, 8, '2018-01-18 00:08:18', '2018-01-18 00:08:18'),
(3, 3, 'Hic aut id optio iste eos iste harum sapiente. Iusto autem amet eaque aut deleniti eos. Eos repellendus quod voluptas aut odio. Non natus omnis porro harum aut quia.', 'public/post_images/d8966e8564dc827e6a3e5af17222aaef.jpg', '1', 2, 9, '2018-01-18 00:08:18', '2018-01-18 00:08:18'),
(4, 2, 'Nisi quas ab iusto velit. Soluta minus deleniti voluptates voluptatibus eveniet accusamus beatae amet. Omnis non labore voluptas facilis exercitationem laboriosam est. Nam animi veniam illo placeat eaque eos.', 'public/post_images/4c334149cd61ce2dae02c9cc557a087b.jpg', '1', 5, 0, '2018-01-18 00:08:18', '2018-01-18 00:08:18'),
(5, 4, 'Illo corporis et est ipsam. Et dicta in sint. Non quia velit non nesciunt. Ratione deserunt assumenda autem sed sequi. Quo adipisci sit laudantium aut quidem sit. Provident omnis consequatur nihil. Quia ex aperiam id nam est non dolore.', 'public/post_images/c13846de6df779f88dfbe4bb21946327.jpg', '1', 6, 5, '2018-01-18 00:08:18', '2018-01-18 00:08:18'),
(6, 2, 'Esse cupiditate voluptas quibusdam ut aut. Et culpa tempore officiis illum assumenda impedit voluptatem. Praesentium voluptates delectus id qui nam. Molestias officiis id asperiores rerum molestiae.', 'public/post_images/814769e601cf5a2290f599ace514c9c8.jpg', '1', 8, 0, '2018-01-18 00:08:18', '2018-01-18 00:08:18'),
(7, 3, 'Id distinctio tempore fugiat at accusantium doloribus excepturi. Eaque qui sit tempora iusto reiciendis. Similique eligendi omnis quisquam.', 'public/post_images/d3b0df8f4277cbffbcc32523188308ba.jpg', '1', 2, 5, '2018-01-18 00:08:18', '2018-01-18 00:08:18'),
(8, 5, 'Quisquam et quo ut voluptas maiores in quam. Aut neque blanditiis suscipit esse. Odio excepturi nobis mollitia quia quia.', 'public/post_images/680e587e5aa638ed19944797f6e990e2.jpg', '1', 3, 7, '2018-01-18 00:08:18', '2018-01-18 00:08:18'),
(9, 5, 'Possimus molestiae amet dicta laborum. Id voluptatum molestias voluptas aspernatur. Quos quidem excepturi voluptatem veniam.', 'public/post_images/5ecfbc5014d2fe332e4d44a9588a28c0.jpg', '1', 5, 1, '2018-01-18 00:08:19', '2018-01-18 00:08:19'),
(10, 3, 'Voluptatem voluptas qui quisquam nemo accusantium quas. Reprehenderit est doloribus quam provident sunt recusandae. Rerum assumenda quaerat et quibusdam quia. Unde ab rerum quis et id iure expedita.', 'public/post_images/5d627e3c341461b049b7352b922c71ad.jpg', '1', 0, 6, '2018-01-18 00:08:19', '2018-01-18 00:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `role` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `profile_image`, `cover_image`, `mobile`, `username`, `email`, `password`, `dop`, `city`, `country`, `status`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Luz', 'Schumm', 'public/images/4694c26f40ae15e612015896bf5cc301.jpg', 'https://lorempixel.com/820/312/?46142', '+1 (817) 968-7248', 'wuckert.dianna', 'grimes.wilburn@hotmail.com', '$2y$10$V76irRf2AwSNM5mEQ1ixputeDNl16ibni0gVt8UVDa.fv3YCh8L.G', '1988-10-24 23:35:04', 'Florenciostad', 'Norway', '1', 1, 'LDFlu0EljW', '2018-01-18 00:08:09', '2018-01-18 00:08:09'),
(2, 'Suzanne', 'Ferry', 'public/images/d61c5c1c0365bbe265b0bb423cbec09c.jpg', 'https://lorempixel.com/820/312/?17266', '(903) 354-7973', 'vgislason', 'qsmitham@hotmail.com', '$2y$10$bwRJxOlunhNyHzjjCAE6hOwEqlq80ms1nUzzsk86j8G8Jj0GfbhHu', '1989-01-11 21:45:33', 'Hermistonhaven', 'Denmark', '1', 1, '6QjwGV9Bpi', '2018-01-18 00:08:09', '2018-01-18 00:08:09'),
(3, 'Lew', 'Stoltenberg', 'public/images/96112f4e00c4c87649e6e94c9e232f31.jpg', 'https://lorempixel.com/820/312/?82549', '676-253-8622', 'emerald.moore', 'verla38@yahoo.com', '$2y$10$v6FEmuGXCRaXZW9vQ8u4ruBOsEff185/mOFpwhwpwOBhdEoTZaSvq', '1990-12-10 05:39:40', 'Josefaton', 'Ghana', '1', 1, 'Yzacy5M5ey', '2018-01-18 00:08:09', '2018-01-18 00:08:09'),
(4, 'Maybell', 'Dickens', 'public/images/b774f65e19bc016605d5edfe5e150759.jpg', 'https://lorempixel.com/820/312/?88282', '675.239.9310 x000', 'wuckert.rick', 'runolfsson.omer@gmail.com', '$2y$10$Z5Mk9TR2HYlTscBfwrEYxerWxtDrXOUZv5pDGuOyK7ZNkoEfNhmgm', '1981-03-22 20:51:28', 'North Jaquanport', 'Belize', '1', 1, 'f218gvJqmF', '2018-01-18 00:08:09', '2018-01-18 00:08:09'),
(5, 'Kacey', 'Cronin', 'public/images/87b4b784df54d4be8f2e5b6ae25b0997.jpg', 'https://lorempixel.com/820/312/?19289', '831.973.0168 x93864', 'aking', 'karli.wisozk@hotmail.com', '$2y$10$ILa1cGGHKK8tIPU5BizVHu/JYv9/VyPX/NWiPIM.oOmU34jIlF6C2', '1990-07-14 16:38:11', 'North Yessenia', 'India', '1', 1, 'ivAjKj2ReX', '2018-01-18 00:08:09', '2018-01-18 00:08:09'),
(6, 'pratap', 'singh', NULL, NULL, NULL, NULL, 'vijay@gmail.com', '$2y$10$.GWcL37T4qkRvVt0GXvs0uIT9PbiI5xxHi0ixaJP1XhXsDwau30Zq', '18-11-1995', NULL, NULL, '1', 1, NULL, '2018-01-18 05:24:52', '2018-01-18 05:24:52'),
(7, 'pratap', 'singh', NULL, NULL, NULL, NULL, 'vijayy@gmail.com', '$2y$10$teyHdJWRv9PdmQirvWWjAevBvDObqtNuA5IGfPV4t0RybPy0dNN36', '18-11-1995', NULL, NULL, '1', 1, NULL, '2018-01-18 05:51:56', '2018-01-18 05:51:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `test_api`
--
CREATE DATABASE IF NOT EXISTS `test_api` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test_api`;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `departure` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `children` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `car_registration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `user_id`, `name`, `lead_name`, `address`, `telephone`, `email`, `arrival`, `departure`, `children`, `adult`, `car_registration`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hunter Morar Jr.', 'Rubye Hansen IV', '62127 Gorczany Ville Suite 227\nBetsyshire, OH 33747', 9887540430, 'isaias65@example.org', '2018-01-11 10:01:35', '2018-01-11 10:01:35', 0, 4, '42529001', 'Delectus tempora culpa inventore aliquid illo fugiat sit assumenda.', '2018-01-11 04:31:35', '2018-01-11 04:31:35'),
(2, 1, 'Abigale Walsh', 'Mrs. Loyce Kunde', '906 Parisian Avenue Suite 037\nOndrickamouth, NJ 30540-3960', 9847293035, 'eryn28@example.net', '2018-01-11 10:01:35', '2018-01-11 10:01:35', 6, 0, '56617863', 'Et velit nihil ut et ut rerum.', '2018-01-11 04:31:35', '2018-01-11 04:31:35'),
(4, 1, 'suraj', 'lead_name', 'Loni Ghaziabad', 8285164189, 'dummy@gmail.com', '2016-12-31 18:50:01', '2016-12-31 18:50:01', 2, 2, '82851641', 'this is testing only', '2018-01-12 05:09:44', '2018-01-12 05:09:44'),
(6, 3, 'suraj update', 'vijay', 'Loni Ghaziabad', 8285164189, 'test@update.com', '2017-01-01 04:40:00', '2017-01-01 04:40:01', 2, 25, '82851641', 'this is testing', '2018-01-14 23:21:22', '2018-01-15 06:24:34'),
(16, 3, 'suraj update', 'vijay', 'Loni Ghaziabad', 8285164189, 'kamall@update.com', '2017-01-01 04:40:00', '2017-01-01 04:40:01', 2, 25, '82851641', 'this is testing', '2018-01-15 06:23:39', '2018-01-15 06:44:10'),
(17, 3, 'suraj', 'lead_name', 'Loni Ghaziabad', 8285164189, 'dummy1@gmail.com', '2016-12-31 18:50:01', '2016-12-31 18:50:01', 2, 2, '82851641', 'this is testing only', '2018-01-15 06:30:59', '2018-01-15 06:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `key_logs`
--

CREATE TABLE `key_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `guest_id` int(10) UNSIGNED DEFAULT NULL,
  `park` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plot_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_in` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `key_out` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `key_logs`
--

INSERT INTO `key_logs` (`id`, `user_id`, `guest_id`, `park`, `plot_number`, `type`, `key_in`, `key_out`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '355 Ritchie Underpass Apt. 505', '863', 'guest', '2018-01-11 10:01:35', '2018-01-11 10:01:35', '2018-01-11 04:31:35', '2018-01-11 04:31:35'),
(2, 1, NULL, '7762 Hobart Valley', '51239', 'electrician', '2018-01-11 10:01:35', '2018-01-11 10:01:35', '2018-01-11 04:31:35', '2018-01-11 04:31:35'),
(3, 2, NULL, '80231 Hane Mountains Suite 103', '92850', 'plumber', '2018-01-11 10:01:35', '2018-01-11 10:01:35', '2018-01-11 04:31:35', '2018-01-11 04:31:35'),
(4, 2, NULL, '89156 Brendon Passage', '79868', 'carpenter ', '2018-01-11 10:01:35', '2018-01-11 10:01:35', '2018-01-11 04:31:35', '2018-01-11 04:31:35'),
(5, 2, NULL, 'delhi', '852369', 'painter', '2018-01-14 18:30:01', '2018-01-14 18:30:01', '2018-01-11 05:45:15', '2018-01-15 07:26:56'),
(23, 3, 16, 'delhi', '852369', 'painter', '2018-01-14 18:30:01', '2018-01-14 18:30:01', '2018-01-15 06:23:40', '2018-01-15 07:06:50'),
(24, 3, 17, 'delhi', '852369', 'painter', '2018-01-14 18:30:01', '2018-01-14 18:30:01', '2018-01-15 06:30:59', '2018-01-15 07:28:28'),
(25, 3, 17, 'delhi', '852369', 'painter', '2018-01-14 18:30:01', '2018-01-14 18:30:01', '2018-01-15 06:31:23', '2018-01-15 07:24:25'),
(26, 4, NULL, 'noida', '25896', 'lightman', '2018-01-09 18:30:00', '2018-01-09 18:30:00', '2018-01-16 03:34:25', '2018-01-16 03:34:25'),
(28, 4, NULL, 'new delhi', '896', 'technician', '2018-01-15 18:30:00', '2018-01-15 18:30:00', '2018-01-16 23:05:47', '2018-01-17 05:19:01'),
(29, 4, NULL, 'new delhi', '896', 'technician', '2018-01-15 18:30:00', '2018-01-15 18:30:00', '2018-01-16 23:05:55', '2018-01-17 05:19:07'),
(30, 4, NULL, 'noida', '741852', 'plumber', '2016-12-31 18:30:00', '2017-12-31 18:30:00', '2018-01-17 03:40:48', '2018-01-17 03:40:48'),
(31, 4, NULL, 'new delhi', '896', 'technician', '2018-01-15 18:30:00', '2018-01-15 18:30:00', '2018-01-17 04:49:44', '2018-01-17 05:51:31'),
(32, 4, NULL, 'delhi', '123654', 'plumber', '2016-12-31 18:30:00', '2017-12-31 18:30:00', '2018-01-17 04:50:30', '2018-01-17 04:50:30'),
(33, 4, NULL, 'delhi', '123654', 'plumber', '2016-12-31 18:30:00', '2017-12-31 18:30:00', '2018-01-17 04:53:52', '2018-01-17 04:53:52'),
(34, 4, NULL, NULL, NULL, NULL, '2018-01-17 11:28:22', '2018-01-17 11:28:22', '2018-01-17 05:58:22', '2018-01-17 05:58:22'),
(35, 4, NULL, NULL, NULL, NULL, '2018-01-17 11:29:04', '2018-01-17 11:29:04', '2018-01-17 05:59:04', '2018-01-17 05:59:04'),
(36, 4, NULL, NULL, NULL, NULL, '2018-01-17 11:29:17', '2018-01-17 11:29:17', '2018-01-17 05:59:17', '2018-01-17 05:59:17');

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
(45, '2014_10_12_000000_create_users_table', 1),
(46, '2014_10_12_100000_create_password_resets_table', 1),
(47, '2018_01_03_045520_create_guests_table', 1),
(48, '2018_01_03_045706_create_key_logs_table', 1);

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `status`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'suraj Nirala', 'suraj@yahoo.com', '$2y$10$n9qWCi3DckdHCsKQ2LY8y.5cPxHv1yGRHGLYqowNrEWI5PdE0gbaq', 1, '1', 'Kl24ENKobdr1Mjoq2DpT', 'b9PUKKIRtg', '2018-01-11 04:31:34', '2018-01-11 04:31:34'),
(2, 'Vijay Pratap', 'vijay@hotmail.com', '$2y$10$QguNN8joH2tQSdWsBcncPO/Tg1u/Jsg7si0EnjG1U3cz05nv36Nn6', 2, '1', 'Uogo2BrxkRFjappjKgg2', 'MZpUwmKBrv', '2018-01-11 04:31:34', '2018-01-11 04:31:34'),
(3, 'vikesh', 'vikesh@gmail.com', '$2y$10$suTKnus2uOlM05t0t4ICVudQOw2R73oj6.f2Zjxa.CrN8kRuLyvKi', 1, '1', NULL, NULL, '2018-01-11 04:54:03', '2018-01-11 04:54:03'),
(4, 'suraj', 'suraj@gmail.com', '$2y$10$zK7KMN8EpzCTx5OqogDvNulPTwtrSIykZ4RCqWEZYfZhtYMr6php.', 2, '1', NULL, NULL, '2018-01-16 03:31:11', '2018-01-16 03:31:11'),
(5, 'demo user', 'surajgmail.com', '$2y$10$zsPn7ilvg60vC88TRaWzJuefaH4yNGzh4UcDSGoZtHQF0R6p/UFFm', 1, '1', NULL, NULL, '2018-01-16 22:48:32', '2018-01-16 22:48:32'),
(6, 'demo user', 'surajjgmail.com', '$2y$10$lnZzyUBKTox3039SouU1FOtnFJgzaksuuT8.BGKwgYxpQPRQV/Tie', 1, '1', NULL, NULL, '2018-01-16 22:51:48', '2018-01-16 22:51:48'),
(7, 'prince', 'prince@gmail.com', '$2y$10$G5IP3PxdOt2KebzFtTzR3eeMFfXBkiyUQ9785ol6QvEWVozo8f2.C', 1, '1', NULL, NULL, '2018-01-16 22:59:08', '2018-01-16 22:59:08'),
(8, '9845', 'suraj@gmail.comm', '$2y$10$JMEdyP1iwe3ZIT.DeqahMuWyZbXqQkiakq8G6tEKkv3Xw6nN8h4uq', 1, '1', NULL, NULL, '2018-01-17 01:35:02', '2018-01-17 01:35:02'),
(9, 'suraj', 'suraj@gmail.commm', '$2y$10$9EKqMNgQXiA0liL9hO14BuLoV1jBhzvPfody02o91AROea.6Xs6pu', 1, '1', NULL, NULL, '2018-01-17 01:35:56', '2018-01-17 01:35:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guests_user_id_index` (`user_id`);

--
-- Indexes for table `key_logs`
--
ALTER TABLE `key_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key_logs_user_id_index` (`user_id`),
  ADD KEY `key_logs_guest_id_index` (`guest_id`);

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
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `key_logs`
--
ALTER TABLE `key_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
