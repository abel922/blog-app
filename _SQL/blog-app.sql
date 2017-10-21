-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2017 a las 15:41:24
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog-app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_20_112020_create_posts_table', 1),
(4, '2017_10_21_111413_add_user_id_to_posts', 2),
(5, '2017_10_21_114718_add_cover_image_to_posts', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(14, 'Kingom Hearts Post', '<p>The series starts with <strong>Kingdom Hearts</strong>, where a 14-year-old boy named Sora is separated from his friends Riku and Kairi when their world, Destiny Islands, is invaded by creatures known as the Heartless. During the invasion, Sora obtains a weapon called the Keyblade that allows him to fight the Heartless. He soon arrives in another world, Traverse Town, where he meets Donald Duck and Goofy, two emissaries from Disney Castle sent to find the Keyblade wielder under orders from their missing king, Mickey Mouse. The three band together and travel to different Disney-themed worlds, sealing the hearts of the worlds to prevent more Heartless from devouring the hearts of those worlds as they search for their companions. Along the way, they encounter a group of Disney villains led by Maleficent, who are controlling the Heartless to capture seven maidens called the Princesses of Heart, and use their power to open the door to Kingdom Hearts, the heart of all worlds. Though they eventually defeat Maleficent, the three discover a sentient Heartless named Ansem to be the true orchestrator of the worlds&#39; destruction. The three defeat Ansem and seal the door to Kingdom Hearts, but remain separated from Riku and King Mickey while Kairi remains home to await her friends&#39; return.</p>', '2017-10-21 10:40:34', '2017-10-21 10:40:34', 1, 'kingdom_hearts_remix_1508589634.jpg'),
(15, 'Supernatural', '<p>Supernatural is an American fantasy horror television series created by Eric Kripke. It was first broadcast on September 13, 2005, on The WB, and subsequently became part of successor The CW&#39;s lineup. Starring Jared Padalecki as Sam Winchester and Jensen Ackles as Dean Winchester, the series follows the two brothers as they hunt demons, ghosts, monsters, and other supernatural beings. The series is produced by Warner Bros. Television, in association with Wonderland Sound and Vision. Along with Kripke, executive producers have been McG, Robert Singer, Phil Sgriccia, Sera Gamble, Jeremy Carver, John Shiban, Ben Edlund and Adam Glass. Former executive producer and director Kim Manners died of lung cancer during production of the fourth season.</p>', '2017-10-21 10:46:22', '2017-10-21 10:56:45', 1, 'tumblr_static_7g3tfrbtiko440skw08og404w_1508590605.jpg'),
(16, 'Game of Thrones', '<p>Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss. It is an adaptation of A Song of Ice and Fire, George R. R. Martin&#39;s series of fantasy novels, the first of which is A Game of Thrones. It is filmed in Belfast and elsewhere in the United Kingdom, Canada, Croatia, Iceland, Malta, Morocco, Spain, and the United States. The series premiered on HBO in the United States on April 17, 2011, and its seventh season ended on August 27, 2017. The series will conclude with its eighth season premiering either in 2018 or 2019.</p>\r\n\r\n<p>Set on the fictional continents of Westeros and Essos, Game of Thrones has several plot lines and a large ensemble cast but centers on three primary story arcs. The first story arc centers on the Iron Throne of the Seven Kingdoms and follows a web of alliances and conflicts among the dynastic noble families either vying to claim the throne or fighting for independence from the throne. The second story arc focuses on the last descendant of the realm&#39;s deposed ruling dynasty, exiled and plotting a return to the throne. The third story arc centers on the longstanding brotherhood charged with defending the realm against the ancient threats of the fierce peoples and legendary creatures that lie far north, and an impending winter that threatens the realm.</p>', '2017-10-21 10:55:45', '2017-10-21 10:55:45', 2, 'game-of-thrones_mc4j_1508590545.jpg'),
(17, 'Star Wars', '<p>Star Wars is an American epic space opera media franchise, centered on a film series created by George Lucas. It depicts the adventures of various characters &quot;a long time ago in a galaxy far, far away&quot;.</p>\r\n\r\n<p>The franchise began in 1977 with the release of the film Star Wars (later subtitled Episode IV: A New Hope in 1981),&nbsp;which became a worldwide pop culture phenomenon. It was followed by the successful sequels The Empire Strikes Back (1980) and Return of the Jedi (1983); these three films constitute the original Star Wars trilogy. A prequel trilogy was released between 1999 and 2005, which received mixed reactions from both critics and fans. A sequel trilogy began in 2015 with the release of Star Wars: The Force Awakens. All seven films were nominated for Academy Awards (with wins going to the first two films) and have been commercial successes, with a combined box office revenue of over US$7.5 billion,&nbsp;making Star Wars the third highest-grossing film series.&nbsp;Spin-off films include the animated Star Wars: The Clone Wars (2008) and Rogue One (2016), the latter of which is the first in a planned series of anthology films.</p>', '2017-10-21 10:59:15', '2017-10-21 10:59:15', 2, '1200px-Star_Wars_Logo.svg_1508590755.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abel', 'abel19922@gmail.com', '$2y$10$OaR48.EztZ5hOshjSL5nXemWZ4ytw2pqasf3qSNWxsMzl4YVizHze', 'W9O6pun9umo0iS9Y3JwNLMLXYPrdPSDa0U5gxlUCeXIfgHemfv91uv8o5GPO', '2017-10-21 08:58:36', '2017-10-21 08:58:36'),
(2, 'User 2', 'user2@gmail.com', '$2y$10$KatNyyltxs.pnHTYzYeOTOuyUd07BPZolbgQ3ekSQTe.U129scfcK', '84ZMGHqYhhhlHNTppCQoaB45tAN0jIH0BImkhEbfL5Jym1IpnumYJIpzN3RH', '2017-10-21 09:27:06', '2017-10-21 09:27:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
