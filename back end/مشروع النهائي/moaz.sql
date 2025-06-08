-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17 ديسمبر 2022 الساعة 19:54
-- إصدار الخادم: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moaz`
--

-- --------------------------------------------------------

--
-- بنية الجدول `circles`
--

CREATE TABLE `circles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `circle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `count_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `court_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `circles`
--

INSERT INTO `circles` (`id`, `circle_name`, `company_id`, `count_id`, `created_at`, `updated_at`, `court_name`) VALUES
(1, 'qwaider', 1, 1, NULL, NULL, NULL),
(9, 'kk', 1, 1, '2022-12-15 19:11:53', '2022-12-15 19:11:53', NULL),
(13, 'MOAZ2022', NULL, NULL, '2022-12-17 11:35:04', '2022-12-17 11:35:04', NULL),
(14, 'd', NULL, NULL, '2022-12-17 11:36:25', '2022-12-17 11:36:25', NULL),
(15, 'd', NULL, NULL, '2022-12-17 11:37:48', '2022-12-17 11:37:48', NULL),
(16, 'd', NULL, NULL, '2022-12-17 11:38:03', '2022-12-17 11:38:03', NULL),
(17, 'mmkk', NULL, NULL, '2022-12-17 11:38:14', '2022-12-17 11:38:14', NULL),
(18, 'mmkk', NULL, NULL, '2022-12-17 11:38:21', '2022-12-17 11:38:21', NULL),
(19, 'mmkk', NULL, NULL, '2022-12-17 11:38:54', '2022-12-17 11:38:54', NULL),
(20, 'MOAZ2022', NULL, NULL, '2022-12-17 12:05:44', '2022-12-17 12:05:44', NULL),
(21, 'MOAZ2022', NULL, NULL, '2022-12-17 12:06:55', '2022-12-17 12:06:55', NULL),
(22, 'MOAZ', NULL, NULL, '2022-12-17 12:07:03', '2022-12-17 12:07:03', NULL),
(23, 'MOAZ', NULL, NULL, '2022-12-17 12:08:28', '2022-12-17 12:08:28', NULL),
(24, 'MOAZ2022', NULL, NULL, '2022-12-17 12:08:34', '2022-12-17 12:08:34', NULL),
(25, 'MOAZ2022', NULL, NULL, '2022-12-17 12:08:34', '2022-12-17 12:08:34', NULL),
(26, 'MOAZ', NULL, NULL, '2022-12-17 12:11:25', '2022-12-17 12:11:25', NULL),
(27, 'MOAZ', NULL, NULL, '2022-12-17 12:12:44', '2022-12-17 12:12:44', NULL),
(28, 'MOAZ', NULL, NULL, '2022-12-17 12:12:44', '2022-12-17 12:12:44', NULL),
(29, 'MOAZ', NULL, NULL, '2022-12-17 12:14:57', '2022-12-17 12:14:57', NULL),
(30, 'noor', NULL, NULL, '2022-12-17 12:15:03', '2022-12-17 12:15:03', NULL),
(31, 'MOAZ2022', NULL, NULL, '2022-12-17 12:18:12', '2022-12-17 12:18:12', 'moaz qwaider'),
(32, 'MOAZ2023', NULL, NULL, '2022-12-17 12:19:07', '2022-12-17 12:19:07', 'moaz qwaider'),
(33, 'MOAZ2023', NULL, NULL, '2022-12-17 12:19:13', '2022-12-17 12:19:13', 'moaz qwaider'),
(34, 'MOAZ', NULL, NULL, '2022-12-17 13:13:44', '2022-12-17 13:13:44', 'moaz qwaider'),
(41, 'mmkk', NULL, NULL, '2022-12-17 13:25:39', '2022-12-17 13:25:39', 'NOOR2022'),
(42, 'MOAZ2022', NULL, NULL, '2022-12-17 13:33:48', '2022-12-17 13:33:48', 'NOOR2022');

-- --------------------------------------------------------

--
-- بنية الجدول `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `companies`
--

INSERT INTO `companies` (`id`, `owner_id`, `company_name`, `company_phone`, `company_address`, `image`, `created_at`, `updated_at`) VALUES
(1, 68, 'Santiago Grant', '(252) 331-5908', '748 Carol Club\nDorthamouth, OK 01843', 'Rem quam consequatur sed itaque consequatur in. Qui aut dolor eveniet ab fugit. Sit autem eius enim dolores deserunt et vel. Enim aut quidem quo sit dolore illum. Nam nam est dignissimos laborum.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(2, 12, 'Prof. Rebeca Witting', '(727) 446-7231', '843 Cole Glen\nNorth Verdiehaven, MT 05431', 'Nihil illo quos nostrum expedita provident illo. Deleniti consectetur et veritatis eligendi. Doloremque dolorem laboriosam autem animi eveniet beatae impedit.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(3, 47, 'Mr. Furman Keebler', '1-605-802-5839', '93927 Rohan Landing Suite 641\nOdessaton, WI 18122-2844', 'Ipsam quisquam itaque non corrupti ut consequuntur omnis iure. Unde explicabo autem quo illo. Perspiciatis eligendi ipsum voluptatibus pariatur. Id ad quibusdam et nisi id.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(5, 28, 'Mr. Juston Hamill III', '+1 (689) 423-1579', '43205 Haag Courts\nWest Precious, SD 83503', 'Molestias odit vero est. Sequi repellat consequatur at dolorem mollitia voluptas quis. Explicabo dolorem est id officiis. Voluptatem nostrum et provident.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(6, 20, 'Rickey Thompson', '+1-551-748-6218', '425 Gusikowski Ports\nHegmannberg, MD 29533', 'Odit neque culpa nihil aliquid a doloribus neque. Id neque et laudantium corporis dignissimos consequuntur illo accusamus. Quae quidem non repellendus eos veniam. Eius iste quis dolore delectus.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(7, 8, 'Kenyatta Dare Sr.', '262-845-5210', '52538 Lenora Extension\nNorth Samarachester, SD 87719-1618', 'Porro quia sequi error sit. Non ut repellat in eius. Modi excepturi veritatis rerum veniam.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(8, 50, 'Destini Stamm', '+1-351-965-5698', '7029 Considine Road\nWest Osvaldostad, MD 83952-6961', 'Inventore eveniet impedit amet similique amet dolorum. Eligendi ea quod quas eos qui rerum. Asperiores nam nihil eius molestiae. Unde quia quia natus dolore nostrum.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(9, 4, 'Mr. Marques Quitzon Sr.', '+1.680.631.8915', '2841 Cole Green\nLittelview, KY 31620-6777', 'Quas voluptatem magni iusto nesciunt neque cumque est. Veniam incidunt qui omnis nihil sequi autem ab. Aliquam possimus sunt quia voluptas.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(10, 67, 'Yasmine Marvin', '(857) 449-5433', '1234 Anthony Overpass Apt. 340\nHarleyshire, NH 48124', 'Deleniti eius unde optio sunt nam corporis. Labore illum molestiae reiciendis perspiciatis eius autem. Dolores id optio assumenda dolores.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(11, 67, 'Carmen Luettgen', '+1 (660) 932-4381', '18773 Vickie Summit Apt. 210\nWest Kayceeville, MD 20667-0975', 'Sapiente nulla consequuntur ducimus. Voluptatem enim assumenda modi molestias accusantium voluptas.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(12, 62, 'Dayton Williamson', '+1-267-577-5431', '52059 McDermott Plaza Suite 070\nEast Tillmanmouth, OK 95911', 'Aut voluptas officia eius corrupti. Optio sit magnam aliquid non. In architecto ut reprehenderit ad non aut.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(13, 67, 'Ramiro Lang', '341-478-1959', '7365 Sven Stream Suite 570\nBetsychester, VT 14546-4099', 'Est deserunt dolores ipsum dicta placeat itaque consequatur. Sed et dolorem aliquam. Aut numquam consequatur quo blanditiis deleniti. Sit voluptatem deserunt aut est iusto.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(14, 26, 'Landen Emard', '+1-925-651-6435', '534 Ursula Shoal\nPort Clevebury, VA 06231-2323', 'Iste id fugit omnis incidunt et qui optio. Ipsam incidunt in provident voluptatem ut et aliquid. Recusandae voluptatem sint tempore. Dolores quas qui magni totam impedit aut.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(15, 12, 'Verona Ankunding', '1-754-651-4599', '82815 Pacocha Streets Apt. 340\nWest Candida, WI 46736-1452', 'Corporis officiis ut in voluptatem omnis ab et. Explicabo fugit quia sequi tempore voluptas et. Ea est iure aut laudantium laborum quos asperiores.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(16, 58, 'Madeline Nicolas', '1-732-745-7959', '603 Flatley Pass\nMurazikfurt, NJ 14844', 'Ut porro quia sit occaecati. Tempore officia nisi quia. Sed reprehenderit illum ducimus. Quia at aut dolorem mollitia.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(17, 60, 'Braxton Runolfsdottir', '+1-816-757-4487', '357 Hand Path Suite 579\nLeilaland, ME 82262', 'Natus enim et dolores non. Asperiores dolor qui qui et numquam dolorum enim. Culpa optio molestiae error numquam aspernatur.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(18, 81, 'Myrna Mann', '1-860-233-9132', '550 Herman Rapids\nKassulketown, CA 24360', 'Blanditiis laboriosam minus excepturi nesciunt doloremque. Consequatur praesentium quia nam et. Tenetur omnis distinctio minus. Dolores qui dignissimos alias expedita dicta.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(19, 74, 'Marcus Gutmann', '986-907-9320', '55492 Joanny Green Apt. 013\nNew Eddieville, VT 98716-2201', 'Sit est occaecati quia velit et. Nemo reprehenderit aperiam qui porro enim vel. Facilis consectetur ad esse deserunt.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(20, 65, 'Mrs. Brenda Shields', '(681) 405-8698', '3782 Stoltenberg Bypass Suite 052\nUrsulaland, OH 03449', 'Consequatur illo sint aliquid eum odit magnam et. Sequi nesciunt porro et ut. Sint dolores nihil vel doloremque ipsum possimus.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(21, 2, 'Araceli Davis', '+1-872-280-6903', '9618 Schamberger Fall\nDavionview, VA 11431-3261', 'Ad laboriosam et voluptatum. Optio fugiat quo aut alias et. Velit nostrum sint pariatur perferendis nemo. Nisi mollitia molestiae et. Consectetur ratione magnam iste.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(22, 98, 'Jevon Powlowski', '(831) 889-1798', '699 Schaden Via\nEast Amandaburgh, VA 99623-7600', 'Nulla natus cupiditate debitis numquam nihil tempora a. Nesciunt consequuntur facere omnis optio iusto.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(23, 65, 'Prof. Alvah Schmeler DDS', '+1.518.535.8449', '49845 Glen Mountain\nNorth Alexandrea, MD 35555-7022', 'Quis tempora ipsa reprehenderit quo minima. Nulla voluptates sed possimus. Autem eveniet iure tenetur minima at dolorem est. Modi inventore dicta odit eaque.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(24, 23, 'Vicente Walter', '(606) 321-6219', '688 Kuhn Turnpike Apt. 989\nWest Andreanne, CO 76706-6429', 'Aut facere fugit enim eum ducimus expedita commodi. Dicta est veritatis mollitia. Iste aliquam cum maiores odio omnis in.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(25, 32, 'Prof. Deion VonRueden DDS', '(520) 899-7555', '49939 Zboncak Spur\nSouth Viva, VA 19028', 'Similique quis itaque maxime fuga vitae. Tempora quasi nesciunt est enim voluptate explicabo. Id laudantium labore est maiores.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(26, 80, 'Elijah Hintz', '+1-757-969-5620', '5150 Zion Forest\nGailmouth, ME 54900', 'Provident perferendis fugiat ab sequi explicabo sunt deleniti aut. Suscipit quisquam quo quisquam ipsam voluptatibus qui voluptatem autem. At eum doloribus quos cupiditate eius ipsam fugiat.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(27, 72, 'Bill Hahn', '(731) 724-9894', '78908 Sipes Stream Apt. 785\nEmeliaview, SC 45395-9128', 'Corrupti sint quas mollitia nam eum sequi qui. Ducimus quia excepturi voluptate. Cumque blanditiis voluptates voluptatem beatae totam voluptas.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(28, 19, 'Luis Hahn II', '(947) 652-3300', '864 Brook Extensions Apt. 510\nNew Adeline, LA 79503', 'Quos ut aut voluptates est. Et voluptas sed nihil cumque molestiae. Repudiandae iusto impedit quis aut dolorum.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(29, 27, 'Flavie Hagenes', '+1 (706) 783-6859', '912 Aliya Mews\nSelinaburgh, WV 44104', 'Nihil id nulla consequatur et necessitatibus consectetur. Libero ipsam unde quia assumenda quod. Modi culpa fuga qui quam.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(30, 58, 'Carolyn Emmerich', '1-820-275-5213', '86306 Warren Points\nRosaliaborough, GA 52408-6002', 'Et natus et adipisci dignissimos animi nihil. Reprehenderit deserunt voluptas dolorem sequi autem aliquam. Ad cupiditate deleniti distinctio enim occaecati et atque quae.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(31, 17, 'Gloria Rice', '(515) 533-1349', '765 Antonio Fort Suite 568\nJanellefurt, KS 89573', 'Et id assumenda voluptatem est. Pariatur est voluptates eveniet ut. Dolores possimus quaerat et dignissimos quis voluptate ex. Voluptatem ab ea est sed quasi eveniet consectetur.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(32, 22, 'Jamir Bashirian Jr.', '+1-346-990-0273', '870 Gibson Village\nAufderharfurt, MN 88853-2998', 'Molestiae maiores dolores architecto dolor voluptate vel. Vel rem qui vero animi. Eos voluptatem provident quam aspernatur commodi consequatur ea.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(33, 98, 'Brad Dickens', '+12407223381', '852 Wiza Circle\nRosenbaummouth, AK 04229-7289', 'Aut id deleniti doloremque laudantium. Accusantium magni explicabo sit aspernatur.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(34, 16, 'Marta Beahan', '309-955-5182', '9993 Brekke Gateway\nHyattstad, DC 58497', 'Sit consectetur quas quasi minus. Eveniet et architecto facilis. Odit deleniti ut ratione est aut beatae. Recusandae officiis ratione sed suscipit.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(35, 84, 'Dr. Bertha Pollich', '+15133073807', '26217 Howell Path\nSpinkafort, HI 70381-1931', 'Maiores quis quis dicta ratione non id ut. Qui rerum sint sit. Sit atque vitae odio. Similique sequi deleniti ad. Rerum voluptates est et fugiat odit.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(36, 100, 'Ignatius Herzog', '878.666.7812', '490 Dejah Camp Apt. 342\nHalvorsonbury, WY 33491-0873', 'Et dicta et incidunt reiciendis provident sapiente. Aut ut qui qui repellat pariatur minus. Aut omnis voluptas voluptas velit tempora.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(37, 10, 'Reina Lehner', '+12147694871', '5896 Kiehn Canyon\nDavisshire, TN 68542', 'Alias voluptas ullam nisi adipisci. Omnis qui et molestias aliquam. Neque sit laborum atque perferendis voluptatem delectus quis. Dolorum quidem ut reiciendis nesciunt quia.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(38, 20, 'Alexandria Koss', '(678) 675-5770', '5852 Genevieve Field Suite 959\nWest Sally, AZ 40665', 'Non asperiores corrupti nisi. Qui ut doloribus et ullam consequuntur. Aperiam ullam et quibusdam sunt. Molestiae a dolorum dignissimos dolorum. Ut omnis qui provident et quidem alias voluptatum.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(39, 63, 'Dr. Alexie Weissnat', '510.540.4472', '30459 Emerald Square\nLake Kasandra, RI 76016', 'Id nihil voluptate voluptatem cupiditate. Eum deleniti quis nihil voluptatibus quae et. Omnis ratione est fugiat sed magni vero ut.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(40, 60, 'Edyth Beatty', '+1-989-334-1908', '609 Otto Islands\nNorth Gracechester, IN 01072', 'Aspernatur autem velit velit natus cupiditate. Nobis a error aut. Assumenda rerum quisquam ex qui illo quos. Qui repellendus suscipit ex ratione vero. Ipsam et tempore eos ea.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(41, 29, 'Aaron Jones PhD', '+1 (870) 252-8019', '46222 Daron Turnpike\nWest Cooperland, MS 43786-5346', 'Animi facilis adipisci ipsam non id sed illum ratione. Et quisquam odit reprehenderit occaecati fugiat. Fugit perspiciatis rerum et et numquam et aut.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(42, 94, 'Imogene Bruen', '+1-540-657-3933', '86038 Lowe Cove\nNorth Randallville, MA 42328', 'Earum quae temporibus et dicta. Iure et facilis nam expedita qui.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(43, 48, 'Prof. Mark Osinski', '484-588-0057', '471 Schmidt Glens\nNew Filiberto, NH 39170-0159', 'Rerum consequuntur nihil sunt ipsam provident hic. Corrupti est accusantium qui. Dolorem id id reiciendis harum iure.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(44, 24, 'Dr. Elyssa Hill', '+19739326375', '359 Ricky Way Suite 982\nEast Ruth, TX 27908-3733', 'Ipsum excepturi et repellat quis officiis voluptatem nemo. Ea quibusdam eum harum cupiditate qui laudantium facilis. Itaque sunt blanditiis voluptate odio. Recusandae ut omnis eum.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(45, 6, 'Mr. Kayden Gottlieb PhD', '740-621-5643', '642 Bergnaum Field\nLake Noblemouth, HI 50184', 'Nam debitis optio dolorem libero. Fugiat eaque ad eligendi at magni. Voluptatem id velit veniam nihil optio asperiores.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(46, 10, 'Dr. Syble Murphy Sr.', '+18306286592', '580 Bette Stream\nTrentonfort, IL 66592-2633', 'Quia non reprehenderit consequuntur in delectus. Omnis dolores ad deleniti et.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(47, 7, 'Frederik Mayer', '+1.847.796.0079', '5617 Fernando Crossing Apt. 271\nNew Blanchefurt, NJ 67469-9929', 'Asperiores rem modi vero voluptatem quae corporis. Non cumque minus qui culpa modi exercitationem. Quod neque nesciunt magnam ea enim non cum. Temporibus hic omnis vitae illum error voluptas nostrum.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(48, 13, 'Ms. Queen Blick DVM', '+14234199047', '187 Hans Pine\nWest Kraig, NJ 57306-8943', 'Id odit sint qui facere repudiandae. Ex vel optio sed. Ratione non porro sunt exercitationem.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(49, 75, 'Lydia Aufderhar', '+1 (520) 820-1864', '3480 Brant Walks Suite 148\nJaquelinberg, LA 53496-9361', 'Inventore quod aliquid et eius sed. Minus necessitatibus ut accusamus quia ipsa perspiciatis fuga esse. Sequi est quasi dignissimos ut tenetur animi tempora in. Qui molestiae unde atque.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(50, 72, 'Veda Jakubowski Jr.', '770.944.5649', '365 Gerhold Run Apt. 729\nPort Kasey, OH 59236', 'Qui unde similique accusantium et. Animi et voluptatum placeat laborum molestias. Non consectetur veritatis aut voluptatem.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(51, 12, 'Orland Mohr', '+1.513.832.7651', '136 Monty Tunnel Apt. 059\nSauerburgh, WA 64695', 'Delectus repudiandae eum dicta. Repudiandae qui maxime est repudiandae earum. Aperiam repudiandae repellendus rerum reiciendis. Fuga consequatur aspernatur omnis qui dolore mollitia iure.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(52, 69, 'Mr. Deven Schaden DDS', '(364) 705-7885', '363 Madge Flats\nPort Quincy, AK 58215-6693', 'Neque accusamus blanditiis dignissimos excepturi et dolores qui. Consequuntur ipsa nihil dolorem culpa. Minus unde est ut adipisci voluptatem nihil.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(53, 12, 'Mrs. Leann Adams', '252-258-2682', '270 Karlie Extension Suite 628\nGibsonburgh, MI 21665-7545', 'Quas esse nam dignissimos enim natus nemo neque ea. Hic sit eius ducimus earum soluta.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(54, 98, 'Arch Mayert', '+1 (580) 934-4877', '586 Renner Plains\nNorth Isac, NC 39616-1445', 'Pariatur aliquid velit et officia autem. Labore molestiae sit tempora at molestiae nisi. Facilis eos soluta est vel. Explicabo veritatis quam laboriosam sit nam et voluptatum.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(55, 25, 'Conor Lesch', '913.438.4919', '82856 Brielle Isle\nNew Eladioland, IN 53445', 'Repellat vel officiis explicabo quam qui blanditiis ut et. Tempora qui aut perspiciatis alias nostrum explicabo delectus. Enim et consequatur non cum autem quo.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(56, 99, 'Jarod Rath', '414-699-5799', '677 Robel Crescent Suite 583\nNew Xander, PA 43179', 'Possimus repudiandae natus qui nam nulla. Autem vel recusandae provident possimus. Aut perferendis in adipisci et nostrum incidunt.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(57, 64, 'Ms. Filomena Kassulke', '(520) 997-5548', '893 Kautzer Stravenue Apt. 530\nLake Terrellton, CT 55848-9226', 'Eos neque dolore eum expedita dolorem sed. Sunt distinctio saepe recusandae dolorem totam. Id laborum ut sit magni odit sit. Et sit sint qui quis.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(58, 49, 'Johnny Trantow', '312-220-1012', '9484 Considine Turnpike\nBeckerton, FL 73683-6789', 'Et harum et nam qui. Pariatur quo libero illum molestiae. Porro necessitatibus sunt illum possimus.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(59, 43, 'Prof. Kristofer Kunde DDS', '+12708062243', '17509 Tavares Ranch Apt. 804\nBeckerstad, HI 68689-2112', 'Amet doloribus molestias laborum non quaerat autem. Debitis accusamus sit doloremque. Quos soluta dolores alias eum nihil dolores.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(60, 64, 'Connor Padberg', '234-714-9504', '885 Quigley Parkways\nMrazstad, FL 10424-4803', 'Voluptatem consequatur est voluptate. Dolores fugit quos voluptatem at ea tempora vel. Ullam est eaque autem qui.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(61, 60, 'Isabel White', '+1-570-283-0687', '7933 Murazik Mission Apt. 664\nSouth Norma, MA 88696', 'Tenetur et vel aut nostrum molestiae qui. Molestiae ipsum voluptatem qui sed non ut dicta est. Vel non voluptate molestiae architecto.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(62, 73, 'Catharine Batz', '234.952.8033', '54769 Piper Common\nKilbackfort, SD 96675', 'Voluptatem non illo dolores delectus qui placeat pariatur. Architecto et aut ipsum cumque aut officiis dolorem aut. Nihil ab quas illo eum illo. Quas reprehenderit aliquid dolorem nihil.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(63, 51, 'Prof. Jaqueline Emard', '(854) 602-7103', '4174 Reggie Stravenue\nEast Wilton, ND 01798-7761', 'Dolore praesentium nobis ab ducimus dolore qui dolore. Quisquam esse aut consequatur sunt vero non. Et rerum voluptatem commodi dolor. Distinctio quibusdam quis id distinctio repellat odit est.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(64, 78, 'Eloisa Wiegand', '+1.660.722.7537', '854 Trantow Streets\nNorth Lillie, OR 24328-7178', 'Officiis aut debitis minus in. Quis quasi aut debitis unde. Sapiente sequi quam nulla itaque occaecati ullam et. Adipisci dicta aut sed tempora beatae ut.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(65, 58, 'Dr. Sedrick Dietrich', '1-912-482-8174', '81010 Goldner Lodge\nFisherview, OH 12534-0261', 'Et inventore et quaerat possimus animi voluptas qui. Molestiae repellat praesentium repudiandae incidunt tempora vitae eum. Expedita dolore non quis quia itaque a.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(66, 78, 'Otto Haag', '(847) 547-1188', '1594 Jerrod Burgs\nHenryborough, ND 71507-6054', 'Provident repellat voluptas reprehenderit odio veniam similique et id. Suscipit sed nam eum et quidem expedita sint. Consequatur neque iure quasi at molestiae est.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(67, 82, 'Hollis Jerde', '815-798-6541', '71779 Micheal Gateway\nGilbertoton, AK 94336-8186', 'Voluptatum sequi optio accusantium esse earum consequatur vel. Beatae quas et harum sunt. Soluta itaque aliquam sit earum eos iure sunt. Esse ea enim neque et consequatur.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(68, 20, 'Heloise Purdy', '+1-323-614-5383', '8626 Turner Island Suite 258\nNew Reedland, OH 67010-7432', 'Maxime velit quis esse ratione facere voluptatum. Hic id non sed officiis qui eius enim. Nihil commodi perferendis fugiat repudiandae et ex rerum.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(69, 87, 'Miss Lisa Fay', '743.915.4968', '485 Urban Plaza\nSouth Deionburgh, NC 52486-8999', 'Similique sunt qui et. Soluta voluptatum occaecati excepturi veniam est. Sit quasi perspiciatis commodi adipisci. Voluptatem consequuntur maiores velit rerum.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(70, 9, 'Wanda Mohr', '+15343981025', '46163 Adrienne Plains Suite 048\nWest Brennon, PA 86424', 'Enim eum iure perspiciatis non doloremque minima. Voluptatem ipsum eius distinctio. Est quis nesciunt totam eligendi fugiat laudantium aut.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(71, 69, 'Prof. Dolly Padberg II', '+13144126595', '6939 Hyatt Parkways\nMaymiebury, PA 55836', 'Distinctio et aut accusantium fuga numquam magnam sunt. Dolores non nulla illum sit vel. Hic consequuntur culpa ea fugit libero blanditiis nostrum aut.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(72, 36, 'Ms. Monica Orn PhD', '+1.415.289.1812', '527 Israel Drive\nHoegerside, IN 53803', 'Quia ad nesciunt aut molestias deleniti aliquid. Ea vel unde modi itaque quos tempore. Sapiente nihil et laudantium sequi nihil quis aut. Incidunt vitae non sint.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(73, 29, 'Alberta Romaguera MD', '862-923-3045', '3399 Amely Ferry\nPort Elsefurt, TN 57795', 'Voluptatem blanditiis ut autem rem. Vero amet quia quidem sint tempore. Qui aperiam sunt corrupti. Dolore nisi et autem nesciunt aut perferendis iusto saepe. Sed aperiam porro officiis saepe.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(74, 35, 'Kali Ankunding DDS', '1-716-414-5522', '53175 Eleonore Court Suite 213\nNew Violet, WA 98147-9655', 'Delectus quae quo culpa repellendus fugiat sit omnis. Debitis eos eius voluptas dolores. Cumque officia quia fugiat dolor et sit facilis. Libero culpa deleniti qui non perferendis ut numquam nisi.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(75, 30, 'Denis Kilback', '352-948-6829', '37362 Emie Prairie Suite 495\nStewartfurt, OR 88312', 'Aperiam asperiores eligendi nam delectus eius accusantium. Quas possimus qui error et quod ut sit. Est nulla dicta beatae laudantium magni. Rerum excepturi sed soluta sed ut.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(76, 84, 'Abraham Effertz', '1-239-742-3840', '96319 Jacobs Walk Suite 522\nWest Liana, HI 68586-6490', 'Aliquid eos saepe qui consequatur delectus. Expedita magnam facere nostrum provident dolores qui ea. Et numquam eos quia. Velit neque repellendus adipisci est.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(77, 45, 'Titus Koelpin', '+1-341-672-2972', '4237 Johns Rapid Suite 446\nWest Brown, WY 65034', 'Rem consequatur nulla doloribus provident numquam error eos sed. Provident debitis quam quo quia. Illo aperiam esse facere qui numquam ut. Dolores molestiae ab veritatis aliquam facilis.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(78, 51, 'Christa Brekke II', '(276) 585-5850', '10868 Kassulke Oval Suite 514\nMalikaport, IA 78658', 'Nam enim at repellat et ad sed odio tempora. Id qui maiores aut vel alias dolores voluptatem. Tenetur sed aut et assumenda quidem ut.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(79, 5, 'Alice Dickens', '+1.920.626.1524', '56852 Rosamond Extension\nEast Califurt, MN 57875-6952', 'Quo dolor a omnis corrupti consequuntur. Neque dignissimos veniam qui aut distinctio.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(80, 80, 'Emilia Cassin', '830-279-6007', '9355 Kuhlman Crossing\nPort Angela, WI 17719-4813', 'Accusantium eaque harum eos recusandae consequuntur illum id. Dignissimos beatae nisi saepe sed. Maxime dolorum sit quasi voluptas enim.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(81, 92, 'Josue Green', '+1-586-221-5046', '14175 Kris Crest\nEast Sister, PA 50952-8663', 'Vitae optio consequuntur qui quis repellat dolor vitae. Aut debitis incidunt deserunt aut nostrum in. Aspernatur sit voluptates vero sunt vitae est mollitia. Quia ut in expedita.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(82, 7, 'Dr. Frederique Blanda DVM', '(434) 640-9509', '382 Terry Summit Suite 444\nErnestinamouth, MS 10408', 'Sequi provident et fugiat similique facilis eos dicta dignissimos. Est modi officia consequatur qui deleniti exercitationem et. Reprehenderit et qui ducimus quae labore numquam voluptatem.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(83, 36, 'Gerson Schroeder', '650-431-3525', '1981 Cordia Burg\nLake Emmyberg, OK 15797-8155', 'Doloribus est ut animi commodi enim rerum consectetur. Aut neque facere vitae et. Saepe cum sit consequatur voluptas.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(84, 50, 'Alisa Paucek', '+1-930-446-4851', '2184 Franecki Via Suite 823\nNew Lukasborough, MD 82765-5153', 'Nostrum amet omnis qui similique doloremque vel praesentium. Blanditiis facere magnam aut consequuntur.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(85, 88, 'Nasir Smitham', '1-651-594-4774', '5643 Hessel Street Apt. 080\nPort Kelly, OK 91526', 'Perferendis magnam at cum pariatur nulla et. Sunt incidunt reprehenderit veritatis consequuntur in. Quod illum rerum temporibus dolor corporis. Voluptatem rerum sit repellat in ut enim officia.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(86, 97, 'Ronny Herman PhD', '+1-838-794-6671', '46597 Reinger Hills Suite 836\nLake Erich, OH 87297-2234', 'Dicta sed error omnis quia odio nisi. Et libero et consequatur veniam illum inventore. Dolores facere voluptas quaerat. Earum molestias quam ut nemo aut qui enim.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(87, 54, 'Dr. Lelia Kub', '225.810.9654', '99059 Shyanne Lock\nRippinborough, NV 82615', 'Nisi quis sunt porro. Sed dicta consequatur nisi voluptas. Animi dolores reprehenderit a in aperiam facere harum.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(88, 2, 'Mrs. Myrtie Nolan IV', '1-628-892-0746', '454 Destini Valley\nEast Treyland, DC 28311-3416', 'Sed suscipit voluptatibus est eligendi. Vel quaerat voluptate eaque et. Neque vitae quibusdam ea inventore sint cum. Deserunt ut dolor temporibus minus autem voluptatum quia doloribus.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(89, 2, 'Presley Sipes', '+1-479-719-7603', '6776 Schimmel Locks\nGiovaniborough, OR 40138', 'Est earum est et ea nostrum dolor. Magnam ut voluptate et molestias neque. Consectetur vel id modi a quo ut.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(90, 52, 'Gianni Jacobi', '+1-717-956-6964', '46863 Marcos Ramp\nFriedrichhaven, TX 03422-5953', 'Nesciunt reprehenderit suscipit voluptates nisi placeat. Recusandae dolores illum totam consequatur voluptatem. Non ratione amet sapiente dolor alias laborum nihil. Vitae sunt nostrum aut accusamus.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(91, 97, 'Bernie Osinski', '959-831-0081', '1647 Hermann Green Suite 215\nWest Alexanderside, KS 18805', 'Neque praesentium aut eos eligendi voluptatem sed. Rerum occaecati aspernatur illum vitae pariatur atque quae. Et sit sint blanditiis libero. Enim et nisi magni non quibusdam.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(92, 74, 'Rodolfo Anderson', '620.813.3411', '1022 Mills Drive\nNew Aubreyview, IL 58704-3686', 'Qui qui velit necessitatibus molestias asperiores. Consectetur assumenda fuga est nesciunt. Consequatur aspernatur delectus et aut rerum et nihil.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(93, 43, 'Ms. Melba Kozey II', '+1-802-815-2851', '727 Maribel Plain Suite 596\nDuBuqueland, RI 46536-9243', 'Laborum quo aut et iusto saepe cumque. Est qui aspernatur nesciunt quaerat natus dolorem. Minus et explicabo culpa autem porro fugit sunt dicta.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(94, 41, 'Arlo Swaniawski', '(332) 682-8460', '9171 Carolanne Alley\nNiaview, CT 94525-0743', 'Labore ut et ut quis non. Ex animi dolor laborum aut. Tempora voluptate quasi similique temporibus.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(95, 88, 'Brenda Will', '1-347-612-5496', '5021 Antonia Springs Apt. 756\nWest Fiona, WY 51644', 'Repellendus velit autem illum voluptatibus. Voluptas delectus enim sequi et voluptas aspernatur possimus. Vitae perspiciatis adipisci et autem aut vero.', '2022-12-15 17:57:07', '2022-12-15 17:57:07'),
(96, 28, 'Osbaldo Steuber', '941.819.8143', '7278 Trantow Flat Apt. 948\nRippinton, WV 88770', 'Amet quia ipsum minima impedit molestias incidunt. Itaque aliquid aut eligendi delectus doloremque et accusamus. Et quos sit voluptates cum earum voluptas soluta.', '2022-12-15 17:57:08', '2022-12-15 17:57:08'),
(97, 79, 'Prof. Santa Keebler', '706-465-0630', '89042 Orie Lake Apt. 935\nWest Harvey, NH 87474', 'Fugit dolore deleniti eius repellendus. Autem ut hic quis possimus voluptates qui autem. Id ut nam nihil eum saepe.', '2022-12-15 17:57:08', '2022-12-15 17:57:08'),
(98, 54, 'Era Stanton', '425-637-3302', '971 Jaquan Mill Apt. 889\nPort Newell, OH 34779-7905', 'Deleniti ducimus eveniet cupiditate esse. Quam ut voluptatibus qui voluptatem eum saepe. Eos deleniti nemo aut iste. Et ut error voluptatibus.', '2022-12-15 17:57:08', '2022-12-15 17:57:08'),
(99, 56, 'Conor Toy', '534-288-6731', '6935 Mason Orchard\nGottliebmouth, NC 01299-9337', 'Commodi quasi nam rerum fugit alias. Sequi et similique qui repellat dolor in dolor. Quae sint eos numquam quis harum.', '2022-12-15 17:57:08', '2022-12-15 17:57:08'),
(100, 13, 'Wellington Jerde', '+1-617-582-8989', '439 Mercedes Points Suite 269\nWunschmouth, NC 30289', 'Odit fugiat officia sint magnam quasi. Officia minima molestiae beatae voluptas eius quia quas enim. Molestiae quasi eaque dolor et.', '2022-12-15 17:57:08', '2022-12-15 17:57:08');

-- --------------------------------------------------------

--
-- بنية الجدول `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('company','person') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nicename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'أفغنستان', 'Afghanistan', 'AFG', '4', 93, NULL, NULL),
(2, 'AL', 'ألبانيا', 'Albania', 'ALB', '8', 355, NULL, NULL),
(3, 'DZ', 'الجزائر', 'Algeria', 'DZA', '12', 213, NULL, NULL),
(4, 'AS', 'ساموا الأمريكية', 'American Samoa', 'ASM', '16', 1684, NULL, NULL),
(5, 'AD', 'أندورا', 'Andorra', 'AND', '20', 376, NULL, NULL),
(6, 'AO', 'أنغولا', 'Angola', 'AGO', '24', 244, NULL, NULL),
(7, 'AI', 'أنغيلا', 'Anguilla', 'AIA', '660', 1264, NULL, NULL),
(8, 'AQ', 'أنتاركتيكا', 'Antarctica', NULL, NULL, 0, NULL, NULL),
(9, 'AG', 'أنتيغوا وبربودا', 'Antigua and Barbuda', 'ATG', '28', 1268, NULL, NULL),
(10, 'AR', 'الأرجنتين', 'Argentina', 'ARG', '32', 54, NULL, NULL),
(11, 'AM', 'أرمينيا', 'Armenia', 'ARM', '51', 374, NULL, NULL),
(12, 'AW', 'أروبا', 'Aruba', 'ABW', '533', 297, NULL, NULL),
(13, 'AU', 'أستراليا', 'Australia', 'AUS', '36', 61, NULL, NULL),
(14, 'AT', 'النمسا', 'Austria', 'AUT', '40', 43, NULL, NULL),
(15, 'AZ', 'أذربيجان', 'Azerbaijan', 'AZE', '31', 994, NULL, NULL),
(16, 'BS', 'البهاما', 'Bahamas', 'BHS', '44', 1242, NULL, NULL),
(17, 'BH', 'البحرين', 'Bahrain', 'BHR', '48', 973, NULL, NULL),
(18, 'BD', 'بنغلاديش', 'Bangladesh', 'BGD', '50', 880, NULL, NULL),
(19, 'BB', 'بربادوس', 'Barbados', 'BRB', '52', 1246, NULL, NULL),
(20, 'BY', 'بيلاروسيا', 'Belarus', 'BLR', '112', 375, NULL, NULL),
(21, 'BE', 'بلجيكا', 'Belgium', 'BEL', '56', 32, NULL, NULL),
(22, 'BZ', 'بيليز', 'Belize', 'BLZ', '84', 501, NULL, NULL),
(23, 'BJ', 'بنين', 'Benin', 'BEN', '204', 229, NULL, NULL),
(24, 'BM', 'برمودا', 'Bermuda', 'BMU', '60', 1441, NULL, NULL),
(25, 'BT', 'بوتان', 'Bhutan', 'BTN', '64', 975, NULL, NULL),
(26, 'BO', 'بوليفيا', 'Bolivia', 'BOL', '68', 591, NULL, NULL),
(27, 'BA', 'البوسنة والهرسك', 'Bosnia and Herzegovina', 'BIH', '70', 387, NULL, NULL),
(28, 'BW', 'بوتسوانا', 'Botswana', 'BWA', '72', 267, NULL, NULL),
(29, 'BV', 'جزيرة بوفيت', 'Bouvet Island', NULL, NULL, 0, NULL, NULL),
(30, 'BR', 'البرازيل', 'Brazil', 'BRA', '76', 55, NULL, NULL),
(31, 'IO', 'إقليم المحيط البريطاني الهندي', 'British Indian Ocean Territory', NULL, NULL, 246, NULL, NULL),
(32, 'BN', 'بروناي دار السلام', 'Brunei Darussalam', 'BRN', '96', 673, NULL, NULL),
(33, 'BG', 'بلغاريا', 'Bulgaria', 'BGR', '100', 359, NULL, NULL),
(34, 'BF', 'بوركينا فاسو', 'Burkina Faso', 'BFA', '854', 226, NULL, NULL),
(35, 'BI', 'بوروندي', 'Burundi', 'BDI', '108', 257, NULL, NULL),
(36, 'KH', 'كمبوديا', 'Cambodia', 'KHM', '116', 855, NULL, NULL),
(37, 'CM', 'الكاميرون', 'Cameroon', 'CMR', '120', 237, NULL, NULL),
(38, 'CA', 'كندا', 'Canada', 'CAN', '124', 1, NULL, NULL),
(39, 'CV', 'كيب فيردي', 'Cape Verde', 'CPV', '132', 238, NULL, NULL),
(40, 'KY', 'جزر كايمان', 'Cayman Islands', 'CYM', '136', 1345, NULL, NULL),
(41, 'CF', 'جمهورية افريقيا الوسطى', 'Central African Republic', 'CAF', '140', 236, NULL, NULL),
(42, 'TD', 'تشاد', 'Chad', 'TCD', '148', 235, NULL, NULL),
(43, 'CL', 'شيلي', 'Chile', 'CHL', '152', 56, NULL, NULL),
(44, 'CN', 'الصين', 'China', 'CHN', '156', 86, NULL, NULL),
(45, 'CX', 'جزيرة الكريسماس', 'Christmas Island', NULL, NULL, 61, NULL, NULL),
(46, 'CC', 'جزر كوكوس (كيلينغ)', 'Cocos (Keeling) Islands', NULL, NULL, 672, NULL, NULL),
(47, 'CO', 'كولومبيا', 'Colombia', 'COL', '170', 57, NULL, NULL),
(48, 'KM', 'جزر القمر', 'Comoros', 'COM', '174', 269, NULL, NULL),
(49, 'CG', 'الكونغو', 'Congo', 'COG', '178', 242, NULL, NULL),
(50, 'CD', 'جمهورية الكونغو الديمقراطية', 'Congo, the Democratic Republic of the', 'COD', '180', 242, NULL, NULL),
(51, 'CK', 'جزر كوك', 'Cook Islands', 'COK', '184', 682, NULL, NULL),
(52, 'CR', 'كوستاريكا', 'Costa Rica', 'CRI', '188', 506, NULL, NULL),
(53, 'CI', 'ساحل العاج', 'Cote D\'Ivoire', 'CIV', '384', 225, NULL, NULL),
(54, 'HR', 'كرواتيا', 'Croatia', 'HRV', '191', 385, NULL, NULL),
(55, 'CU', 'كوبا', 'Cuba', 'CUB', '192', 53, NULL, NULL),
(56, 'CY', 'قبرص', 'Cyprus', 'CYP', '196', 357, NULL, NULL),
(57, 'CZ', 'الجمهورية التشيكية', 'Czech Republic', 'CZE', '203', 420, NULL, NULL),
(58, 'DK', 'الدنمارك', 'Denmark', 'DNK', '208', 45, NULL, NULL),
(59, 'DJ', 'جيبوتي', 'Djibouti', 'DJI', '262', 253, NULL, NULL),
(60, 'DM', 'دومينيكا', 'Dominica', 'DMA', '212', 1767, NULL, NULL),
(61, 'DO', 'جمهورية الدومنيكان', 'Dominican Republic', 'DOM', '214', 1809, NULL, NULL),
(62, 'EC', 'الاكوادور', 'Ecuador', 'ECU', '218', 593, NULL, NULL),
(63, 'EG', 'مصر', 'Egypt', 'EGY', '818', 20, NULL, NULL),
(64, 'SV', 'السلفادور', 'El Salvador', 'SLV', '222', 503, NULL, NULL),
(65, 'GQ', 'غينيا الإستوائية', 'Equatorial Guinea', 'GNQ', '226', 240, NULL, NULL),
(66, 'ER', 'إريتريا', 'Eritrea', 'ERI', '232', 291, NULL, NULL),
(67, 'EE', 'إستونيا', 'Estonia', 'EST', '233', 372, NULL, NULL),
(68, 'ET', 'أثيوبيا', 'Ethiopia', 'ETH', '231', 251, NULL, NULL),
(69, 'FK', 'جزر فوكلاند', 'Falkland Islands (Malvinas)', 'FLK', '238', 500, NULL, NULL),
(70, 'FO', 'جزر فاروس', 'Faroe Islands', 'FRO', '234', 298, NULL, NULL),
(71, 'FJ', 'فيجي ', 'Fiji', 'FJI', '242', 679, NULL, NULL),
(72, 'FI', 'فنلندا', 'Finland', 'FIN', '246', 358, NULL, NULL),
(73, 'FR', 'فرنسا', 'France', 'FRA', '250', 33, NULL, NULL),
(74, 'GF', 'غيانا الفرنسية', 'French Guiana', 'GUF', '254', 594, NULL, NULL),
(75, 'PF', 'بولينيزيا الفرنسية', 'French Polynesia', 'PYF', '258', 689, NULL, NULL),
(76, 'TF', 'المناطق الجنوبية لفرنسا', 'French Southern Territories', NULL, NULL, 0, NULL, NULL),
(77, 'GA', 'جابون', 'Gabon', 'GAB', '266', 241, NULL, NULL),
(78, 'GM', 'غامبيا', 'Gambia', 'GMB', '270', 220, NULL, NULL),
(79, 'GE', 'جورجيا', 'Georgia', 'GEO', '268', 995, NULL, NULL),
(80, 'DE', 'ألمانيا', 'Germany', 'DEU', '276', 49, NULL, NULL),
(81, 'GH', 'غانا', 'Ghana', 'GHA', '288', 233, NULL, NULL),
(82, 'GI', 'جبل طارق', 'Gibraltar', 'GIB', '292', 350, NULL, NULL),
(83, 'GR', 'اليونان', 'Greece', 'GRC', '300', 30, NULL, NULL),
(84, 'GL', 'الأرض الخضراء', 'Greenland', 'GRL', '304', 299, NULL, NULL),
(85, 'GD', 'غرينادا', 'Grenada', 'GRD', '308', 1473, NULL, NULL),
(86, 'GP', 'غوادلوب', 'Guadeloupe', 'GLP', '312', 590, NULL, NULL),
(87, 'GU', 'غوام', 'Guam', 'GUM', '316', 1671, NULL, NULL),
(88, 'GT', 'جواتيمالا', 'Guatemala', 'GTM', '320', 502, NULL, NULL),
(89, 'GN', 'غينيا', 'Guinea', 'GIN', '324', 224, NULL, NULL),
(90, 'GW', 'غينيا بيساو', 'Guinea-Bissau', 'GNB', '624', 245, NULL, NULL),
(91, 'GY', 'غويانا', 'Guyana', 'GUY', '328', 592, NULL, NULL),
(92, 'HT', 'هايتي', 'Haiti', 'HTI', '332', 509, NULL, NULL),
(93, 'HM', 'قلب الجزيرة وجزر ماكدونالز', 'Heard Island and Mcdonald Islands', NULL, NULL, 0, NULL, NULL),
(94, 'VA', 'الفاتيكان', 'Holy See (Vatican City State)', 'VAT', '336', 39, NULL, NULL),
(95, 'HN', 'هندوراس', 'Honduras', 'HND', '340', 504, NULL, NULL),
(97, 'HU', 'هنغاريا', 'Hungary', 'HUN', '348', 36, NULL, NULL),
(98, 'IS', 'أيسلندا', 'Iceland', 'ISL', '352', 354, NULL, NULL),
(99, 'IN', 'الهند', 'India', 'IND', '356', 91, NULL, NULL),
(100, 'ID', 'إندونيسيا', 'Indonesia', 'IDN', '360', 62, NULL, NULL),
(101, 'IR', 'إيران, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', '364', 98, NULL, NULL),
(102, 'IQ', 'العراق', 'Iraq', 'IRQ', '368', 964, NULL, NULL),
(103, 'IE', 'إيرلندا', 'Ireland', 'IRL', '372', 353, NULL, NULL),
(105, 'IT', 'إيطاليا', 'Italy', 'ITA', '380', 39, NULL, NULL),
(106, 'JM', 'جامايكا', 'Jamaica', 'JAM', '388', 1876, NULL, NULL),
(107, 'JP', 'اليابان', 'Japan', 'JPN', '392', 81, NULL, NULL),
(108, 'JO', 'الأردن', 'Jordan', 'JOR', '400', 962, NULL, NULL),
(109, 'KZ', 'كازاخستان', 'Kazakhstan', 'KAZ', '398', 7, NULL, NULL),
(110, 'KE', 'كينيا', 'Kenya', 'KEN', '404', 254, NULL, NULL),
(111, 'KI', 'كيريباتي', 'Kiribati', 'KIR', '296', 686, NULL, NULL),
(112, 'KP', 'كوريا، الجمهورية الشعبية الديمقراطية', 'Korea, Democratic People\'s Republic of', 'PRK', '408', 850, NULL, NULL),
(113, 'KR', 'جمهورية كوريا', 'Korea, Republic of', 'KOR', '410', 82, NULL, NULL),
(114, 'KW', 'الكويت', 'Kuwait', 'KWT', '414', 965, NULL, NULL),
(115, 'KG', 'قرغيزستان', 'Kyrgyzstan', 'KGZ', '417', 996, NULL, NULL),
(116, 'LA', 'جمهورية لاو الديمقراطية الشعبية', 'Lao People\'s Democratic Republic', 'LAO', '418', 856, NULL, NULL),
(117, 'LV', 'لاتفيا', 'Latvia', 'LVA', '428', 371, NULL, NULL),
(118, 'LB', 'لبنان', 'Lebanon', 'LBN', '422', 961, NULL, NULL),
(119, 'LS', 'ليسوتو', 'Lesotho', 'LSO', '426', 266, NULL, NULL),
(120, 'LR', 'ليبيريا', 'Liberia', 'LBR', '430', 231, NULL, NULL),
(121, 'LY', 'الجماهيرية العربية الليبية', 'Libyan Arab Jamahiriya', 'LBY', '434', 218, NULL, NULL),
(122, 'LI', 'ليختنشتاين', 'Liechtenstein', 'LIE', '438', 423, NULL, NULL),
(123, 'LT', 'ليثوانيا', 'Lithuania', 'LTU', '440', 370, NULL, NULL),
(124, 'LU', 'لوكسمبورغ', 'Luxembourg', 'LUX', '442', 352, NULL, NULL),
(125, 'MO', 'ماكاو', 'Macao', 'MAC', '446', 853, NULL, NULL),
(126, 'MK', 'مقدونيا ، جمهورية يوغسلاف السابقة', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', 389, NULL, NULL),
(127, 'MG', 'مدغشقر', 'Madagascar', 'MDG', '450', 261, NULL, NULL),
(128, 'MW', 'ملاوي', 'Malawi', 'MWI', '454', 265, NULL, NULL),
(129, 'MY', 'ماليزيا', 'Malaysia', 'MYS', '458', 60, NULL, NULL),
(130, 'MV', 'جزر المالديف', 'Maldives', 'MDV', '462', 960, NULL, NULL),
(131, 'ML', 'مالي', 'Mali', 'MLI', '466', 223, NULL, NULL),
(132, 'MT', 'مالطا', 'Malta', 'MLT', '470', 356, NULL, NULL),
(133, 'MH', 'جزر مارشال', 'Marshall Islands', 'MHL', '584', 692, NULL, NULL),
(134, 'MQ', 'مارتينيك', 'Martinique', 'MTQ', '474', 596, NULL, NULL),
(135, 'MR', 'موريتانيا', 'Mauritania', 'MRT', '478', 222, NULL, NULL),
(136, 'MU', 'موريشيوس', 'Mauritius', 'MUS', '480', 230, NULL, NULL),
(137, 'YT', 'مايوت', 'Mayotte', NULL, NULL, 269, NULL, NULL),
(138, 'MX', 'المكسيك', 'Mexico', 'MEX', '484', 52, NULL, NULL),
(139, 'FM', 'ميكرونيسيا ', 'Micronesia, Federated States of', 'FSM', '583', 691, NULL, NULL),
(140, 'MD', 'جمهورية مولدوفا', 'Moldova, Republic of', 'MDA', '498', 373, NULL, NULL),
(141, 'MC', 'موناكو', 'Monaco', 'MCO', '492', 377, NULL, NULL),
(142, 'MN', 'منغوليا', 'Mongolia', 'MNG', '496', 976, NULL, NULL),
(143, 'MS', 'مونتسيرات', 'Montserrat', 'MSR', '500', 1664, NULL, NULL),
(144, 'MA', 'المغرب', 'Morocco', 'MAR', '504', 212, NULL, NULL),
(145, 'MZ', 'موزامبيق', 'Mozambique', 'MOZ', '508', 258, NULL, NULL),
(146, 'MM', 'ميانمار', 'Myanmar', 'MMR', '104', 95, NULL, NULL),
(147, 'NA', 'ناميبيا', 'Namibia', 'NAM', '516', 264, NULL, NULL),
(148, 'NR', 'ناورو', 'Nauru', 'NRU', '520', 674, NULL, NULL),
(149, 'NP', 'النيبال', 'Nepal', 'NPL', '524', 977, NULL, NULL),
(150, 'NL', 'هولندا', 'Netherlands', 'NLD', '528', 31, NULL, NULL),
(151, 'AN', 'جزر الأنتيل الهولندية', 'Netherlands Antilles', 'ANT', '530', 599, NULL, NULL),
(152, 'NC', 'كاليدونيا الجديدة', 'New Caledonia', 'NCL', '540', 687, NULL, NULL),
(153, 'NZ', 'نيوزيلاندا', 'New Zealand', 'NZL', '554', 64, NULL, NULL),
(154, 'NI', 'نيكاراغوا', 'Nicaragua', 'NIC', '558', 505, NULL, NULL),
(155, 'NE', 'النيجر', 'Niger', 'NER', '562', 227, NULL, NULL),
(156, 'NG', 'نيجيريا', 'Nigeria', 'NGA', '566', 234, NULL, NULL),
(157, 'NU', 'نيوي', 'Niue', 'NIU', '570', 683, NULL, NULL),
(158, 'NF', 'جزيرة نورفولك', 'Norfolk Island', 'NFK', '574', 672, NULL, NULL),
(159, 'MP', 'جزر ماريانا الشمالية', 'Northern Mariana Islands', 'MNP', '580', 1670, NULL, NULL),
(160, 'NO', 'النرويج', 'Norway', 'NOR', '578', 47, NULL, NULL),
(161, 'OM', 'عمان', 'Oman', 'OMN', '512', 968, NULL, NULL),
(162, 'PK', 'باكستان', 'Pakistan', 'PAK', '586', 92, NULL, NULL),
(163, 'PW', 'بالاو', 'Palau', 'PLW', '585', 680, NULL, NULL),
(164, 'PS', 'فلسطين', 'Palestine', NULL, NULL, 970, NULL, NULL),
(165, 'PA', 'بنما', 'Panama', 'PAN', '591', 507, NULL, NULL),
(166, 'PG', 'بابوا غينيا الجديدة', 'Papua New Guinea', 'PNG', '598', 675, NULL, NULL),
(167, 'PY', 'باراغواي', 'Paraguay', 'PRY', '600', 595, NULL, NULL),
(168, 'PE', 'بيرو', 'Peru', 'PER', '604', 51, NULL, NULL),
(169, 'PH', 'فيلبيني', 'Philippines', 'PHL', '608', 63, NULL, NULL),
(170, 'PN', 'بيتكيرن', 'Pitcairn', 'PCN', '612', 0, NULL, NULL),
(171, 'PL', 'بولندا', 'Poland', 'POL', '616', 48, NULL, NULL),
(172, 'PT', 'البرتغال', 'Portugal', 'PRT', '620', 351, NULL, NULL),
(173, 'PR', 'بورتوريكو', 'Puerto Rico', 'PRI', '630', 1787, NULL, NULL),
(174, 'QA', 'قطر', 'Qatar', 'QAT', '634', 974, NULL, NULL),
(175, 'RE', 'ريونيون', 'Reunion', 'REU', '638', 262, NULL, NULL),
(176, 'RO', 'رومانيا', 'Romania', 'ROM', '642', 40, NULL, NULL),
(177, 'RU', 'روسيا', 'Russian Federation', 'RUS', '643', 70, NULL, NULL),
(178, 'RW', 'رواندا', 'Rwanda', 'RWA', '646', 250, NULL, NULL),
(179, 'SH', 'سانت هيلينا', 'Saint Helena', 'SHN', '654', 290, NULL, NULL),
(180, 'KN', 'سانت كيتس ونيفيس', 'Saint Kitts and Nevis', 'KNA', '659', 1869, NULL, NULL),
(181, 'LC', 'سانت لوسيا', 'Saint Lucia', 'LCA', '662', 1758, NULL, NULL),
(182, 'PM', 'سانت بيير وميكلون', 'Saint Pierre and Miquelon', 'SPM', '666', 508, NULL, NULL),
(183, 'VC', 'سانت فنسنت وجزر غرينادين', 'Saint Vincent and the Grenadines', 'VCT', '670', 1784, NULL, NULL),
(184, 'WS', 'ساموا', 'Samoa', 'WSM', '882', 684, NULL, NULL),
(185, 'SM', 'سان مارينو', 'San Marino', 'SMR', '674', 378, NULL, NULL),
(186, 'ST', 'ساو تومي وبرينسيبي', 'Sao Tome and Principe', 'STP', '678', 239, NULL, NULL),
(187, 'SA', 'المملكة العربية السعودية', 'Saudi Arabia', 'SAU', '682', 966, NULL, NULL),
(188, 'SN', 'السنغال', 'Senegal', 'SEN', '686', 221, NULL, NULL),
(190, 'SC', 'سيشل', 'Seychelles', 'SYC', '690', 248, NULL, NULL),
(191, 'SL', 'سيراليون', 'Sierra Leone', 'SLE', '694', 232, NULL, NULL),
(192, 'SG', 'سنغافورة', 'Singapore', 'SGP', '702', 65, NULL, NULL),
(193, 'SK', 'سلوفاكيا', 'Slovakia', 'SVK', '703', 421, NULL, NULL),
(194, 'SI', 'سلوفينيا', 'Slovenia', 'SVN', '705', 386, NULL, NULL),
(195, 'SB', 'جزر سليمان', 'Solomon Islands', 'SLB', '90', 677, NULL, NULL),
(196, 'SO', 'الصومال', 'Somalia', 'SOM', '706', 252, NULL, NULL),
(197, 'ZA', 'جنوب أفريقيا', 'South Africa', 'ZAF', '710', 27, NULL, NULL),
(198, 'GS', 'جورجيا الجنوبية وجزر ساندويتش الجنوبية', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0, NULL, NULL),
(199, 'ES', 'إسبانيا', 'Spain', 'ESP', '724', 34, NULL, NULL),
(200, 'LK', 'سيريلانكا', 'Sri Lanka', 'LKA', '144', 94, NULL, NULL),
(201, 'SD', 'السودان', 'Sudan', 'SDN', '736', 249, NULL, NULL),
(202, 'SR', 'سورينام', 'Suriname', 'SUR', '740', 597, NULL, NULL),
(203, 'SJ', 'سفالبارد ويان ماين', 'Svalbard and Jan Mayen', 'SJM', '744', 47, NULL, NULL),
(204, 'SZ', 'سوازيلاند', 'Swaziland', 'SWZ', '748', 268, NULL, NULL),
(205, 'SE', 'السويد', 'Sweden', 'SWE', '752', 46, NULL, NULL),
(206, 'CH', 'سويسرا', 'Switzerland', 'CHE', '756', 41, NULL, NULL),
(207, 'SY', 'سوريا', 'Syrian Arab Republic', 'SYR', '760', 963, NULL, NULL),
(208, 'TW', 'تايوان', 'Taiwan, Province of China', 'TWN', '158', 886, NULL, NULL),
(209, 'TJ', 'طاجيكستان', 'Tajikistan', 'TJK', '762', 992, NULL, NULL),
(210, 'TZ', 'جمهورية تنزانيا المتحدة', 'Tanzania, United Republic of', 'TZA', '834', 255, NULL, NULL),
(211, 'TH', 'تايلاند', 'Thailand', 'THA', '764', 66, NULL, NULL),
(212, 'TL', 'تيمور ليستي', 'Timor-Leste', NULL, NULL, 670, NULL, NULL),
(213, 'TG', 'توجو', 'Togo', 'TGO', '768', 228, NULL, NULL),
(214, 'TK', 'توكيلاو', 'Tokelau', 'TKL', '772', 690, NULL, NULL),
(215, 'TO', 'تونغا', 'Tonga', 'TON', '776', 676, NULL, NULL),
(216, 'TT', 'ترينيداد وتوباغو', 'Trinidad and Tobago', 'TTO', '780', 1868, NULL, NULL),
(217, 'TN', 'تونس', 'Tunisia', 'TUN', '788', 216, NULL, NULL),
(218, 'TR', 'تركيا', 'Turkey', 'TUR', '792', 90, NULL, NULL),
(219, 'TM', 'تركمانستان', 'Turkmenistan', 'TKM', '795', 7370, NULL, NULL),
(220, 'TC', 'جزر تركس وكايكوس', 'Turks and Caicos Islands', 'TCA', '796', 1649, NULL, NULL),
(221, 'TV', 'توفالو', 'Tuvalu', 'TUV', '798', 688, NULL, NULL),
(222, 'UG', 'أوغندا', 'Uganda', 'UGA', '800', 256, NULL, NULL),
(223, 'UA', 'أوكرانيا', 'Ukraine', 'UKR', '804', 380, NULL, NULL),
(224, 'AE', 'الإمارات العربية المتحدة', 'United Arab Emirates', 'ARE', '784', 971, NULL, NULL),
(225, 'GB', 'المملكة المتحدة', 'United Kingdom', 'GBR', '826', 44, NULL, NULL),
(226, 'US', 'الولايات المتحدة الأمريكية', 'United States', 'USA', '840', 1, NULL, NULL),
(227, 'UM', 'جزر الولايات المتحدة البعيدة الصغرى', 'United States Minor Outlying Islands', NULL, NULL, 1, NULL, NULL),
(228, 'UY', 'أوروغواي', 'Uruguay', 'URY', '858', 598, NULL, NULL),
(229, 'UZ', 'أوزبيكستان', 'Uzbekistan', 'UZB', '860', 998, NULL, NULL),
(230, 'VU', 'فانواتو', 'Vanuatu', 'VUT', '548', 678, NULL, NULL),
(231, 'VE', 'فنزويلا', 'Venezuela', 'VEN', '862', 58, NULL, NULL),
(232, 'VN', 'فيتنام', 'Viet Nam', 'VNM', '704', 84, NULL, NULL),
(233, 'VG', 'جزر فيرجن البريطانية', 'Virgin Islands, British', 'VGB', '92', 1284, NULL, NULL),
(234, 'VI', 'جزر فيرجن ، الولايات المتحدة', 'Virgin Islands, U.s.', 'VIR', '850', 1340, NULL, NULL),
(235, 'WF', 'واليس وفوتونا', 'Wallis and Futuna', 'WLF', '876', 681, NULL, NULL),
(236, 'EH', 'الصحراء الغربية', 'Western Sahara', 'ESH', '732', 212, NULL, NULL),
(237, 'YE', 'اليمن', 'Yemen', 'YEM', '887', 967, NULL, NULL),
(238, 'ZM', 'زامبيا', 'Zambia', 'ZMB', '894', 260, NULL, NULL),
(239, 'ZW', 'زمب ـ ابوي', 'Zimbabwe', 'ZWE', '716', 263, NULL, NULL),
(240, 'RS', 'صربيا', 'Serbia', 'SRB', '688', 381, NULL, NULL),
(241, 'AP', 'منطقة آسيا والمحيط الهادئ', 'Asia / Pacific Region', '0', '0', 0, NULL, NULL),
(242, 'ME', 'مونتينيغرو', 'Montenegro', 'MNE', '499', 382, NULL, NULL),
(243, 'AX', 'جزر آلاند', 'Aland Islands', 'ALA', '248', 358, NULL, NULL),
(245, 'CW', 'كوراساو', 'Curacao', 'CUW', '531', 599, NULL, NULL),
(246, 'GG', 'جيرنسي', 'Guernsey', 'GGY', '831', 44, NULL, NULL),
(247, 'IM', 'جزيرة آيل أوف مان', 'Isle of Man', 'IMN', '833', 44, NULL, NULL),
(248, 'JE', 'جيرسي', 'Jersey', 'JEY', '832', 44, NULL, NULL),
(249, 'XK', 'كوسوفو', 'Kosovo', '---', '0', 381, NULL, NULL),
(250, 'BL', 'سانت بارتيليمي', 'Saint Barthelemy', 'BLM', '652', 590, NULL, NULL),
(252, 'SX', 'سينت مارتن', 'Sint Maarten', 'SXM', '534', 1, NULL, NULL),
(253, 'SS', 'جنوب السودان', 'South Sudan', 'SSD', '728', 211, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `courts`
--

CREATE TABLE `courts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `court_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `courts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `courts`
--

INSERT INTO `courts` (`id`, `court_name`, `created_at`, `updated_at`, `company_id`, `country_id`, `courts`) VALUES
(1, 'moaz', NULL, NULL, 1, 1, ''),
(8, 'moaz qwaider', '2022-12-16 15:02:22', '2022-12-16 15:02:22', NULL, NULL, 'المملكة العربية السعودية'),
(9, 'NOOR2022', '2022-12-16 15:02:45', '2022-12-16 15:02:45', NULL, NULL, 'المملكة العربية السعودية'),
(21, 'moaz qwaider', '2022-12-17 13:32:52', '2022-12-17 13:32:52', NULL, NULL, 'أذربيجان'),
(23, 'mqs', '2022-12-17 13:38:29', '2022-12-17 13:38:29', NULL, NULL, 'ساموا الأمريكية');

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_10_16_171336_create_countries_table', 1),
(5, '2022_10_16_171906_create_companies_table', 1),
(6, '2022_10_16_173402_create_contacts_table', 1),
(7, '2022_10_16_174434_create_courts_table', 1),
(8, '2022_10_17_000000_create_users_table', 1),
(9, '2022_10_22_124654_create_circles_table', 1),
(10, '2022_10_31_114323_create_permission_tables', 1),
(11, '2022_12_16_162258_add_countryname_to_courts_table', 2),
(13, '2022_12_17_145542_add_court_name_to_circles_table', 3);

-- --------------------------------------------------------

--
-- بنية الجدول `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'employee..list', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(2, 'employee..create', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(3, 'employee..adit', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(4, 'employee..delete', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(5, 'role..list', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(7, 'role..adit', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(8, 'role..delete', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(9, 'permission..list', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(10, 'permission..create', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(11, 'permission..adit', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(12, 'permission..delete', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38'),
(16, 'circle..Add', 'web', '2022-12-17 13:08:45', '2022-12-17 13:08:45'),
(17, 'circle..delete', 'web', '2022-12-17 13:09:17', '2022-12-17 13:09:17'),
(18, 'courts..delete', 'web', '2022-12-17 13:09:48', '2022-12-17 13:09:48'),
(19, 'courts ..Add', 'web', '2022-12-17 13:19:26', '2022-12-17 13:19:26');

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-12-15 17:58:38', '2022-12-15 17:58:38');

-- --------------------------------------------------------

--
-- بنية الجدول `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(16, 1),
(17, 1),
(18, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avater` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at,update_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `avater`, `created_at,update_at`, `phone`, `email`, `password`, `remember_token`, `company_id`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL, NULL, 'admin@gmail.com', '$2y$10$EiRPrPdjuUjjO7Hhx7kNIeOyU1QPaPNJ6miFwgmUTXx5e.VITwX/y', NULL, 1, 1, '2022-12-15 17:58:38', '2022-12-15 17:58:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `circles`
--
ALTER TABLE `circles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `circles_company_id_foreign` (`company_id`),
  ADD KEY `circles_count_id_foreign` (`count_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`),
  ADD KEY `contacts_company_id_foreign` (`company_id`),
  ADD KEY `contacts_country_id_foreign` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courts`
--
ALTER TABLE `courts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courts_company_id_foreign` (`company_id`),
  ADD KEY `courts_country_id_foreign` (`country_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_company_id_foreign` (`company_id`),
  ADD KEY `users_country_id_foreign` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `circles`
--
ALTER TABLE `circles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `courts`
--
ALTER TABLE `courts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `circles`
--
ALTER TABLE `circles`
  ADD CONSTRAINT `circles_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `circles_count_id_foreign` FOREIGN KEY (`count_id`) REFERENCES `courts` (`id`);

--
-- القيود للجدول `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `contacts_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- القيود للجدول `courts`
--
ALTER TABLE `courts`
  ADD CONSTRAINT `courts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `courts_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- القيود للجدول `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
