-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2018 at 07:14 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--
-- Creation: May 24, 2018 at 03:12 PM
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `comment_subject` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_bin NOT NULL,
  `comment_text` text NOT NULL,
  `comment_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_subject`, `comment_text`, `comment_created`, `comment_author`) VALUES
  (1, 'Esimene kommentaar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ultricies sit amet urna at hendrerit. Nullam ultricies dolor ante. Nunc sodales lacus ut ultrices congue. Nulla auctor eros ac eros consectetur volutpat. Nulla luctus velit vel urna lobortis pulvinar. Duis hendrerit massa ut ligula tristique, nec scelerisque metus suscipit. ', '2018-05-24 15:37:55', 'Ilona'),
  (2, 'Teine komeentaar', 'Duis hendrerit massa ut ligula tristique, nec scelerisque metus suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et tellus ex. Morbi mattis pellentesque iaculis. Nullam varius vestibulum dictum. Integer semper risus feugiat iaculis commodo. Morbi gravida et nibh vel tincidunt. Fusce vulputate eleifend nibh in feugiat. Fusce non iaculis nibh, a scelerisque lectus. ', '2018-05-24 15:37:55', 'Kati'),
  (3, 'Kolmas kommentaaaar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', '2018-05-24 08:37:55', 'Nati'),
  (4, 'JNE', ' Phasellus ultricies sit amet urna at hendrerit. Nullam ultricies dolor ante. Nunc sodales lacus ut ultrices congue. Nulla auctor eros ac eros consectetur volutpat. Nulla luctus velit vel urna lobortis pulvinar. Duis hendrerit massa ut ligula tristique, nec scelerisque metus suscipit. ', '2018-05-24 15:37:55', 'Mati'),
  (5, 'Viies', 'Viiiiimane kommentaar', '2018-05-24 15:37:55', 'Pati');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--
-- Creation: Apr 19, 2018 at 11:16 AM
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
  (1, 'First Post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce aliquet finibus libero ut volutpat. Proin erat tortor, pretium ac vestibulum ultrices, sagittis vitae libero. Sed a congue tortor, rhoncus convallis neque. Mauris quis mi tincidunt, consequat purus vel, consequat nisi. Suspendisse potenti. Proin sit amet ipsum volutpat sem porta fermentum eget ut nulla. Sed hendrerit tristique nisi, suscipit euismod nunc feugiat a. Suspendisse sed laoreet quam. Curabitur mollis sed sapien ac elementum. Integer tincidunt est eu sapien pretium, sit amet mollis tortor elementum.', '2018-04-19 11:17:29', 1),
  (2, 'Second Post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce aliquet finibus libero ut volutpat. Proin erat tortor, pretium ac vestibulum ultrices, sagittis vitae libero. Sed a congue tortor, rhoncus convallis neque. Mauris quis mi tincidunt, consequat purus vel, consequat nisi. Suspendisse potenti. Proin sit amet ipsum volutpat sem porta fermentum eget ut nulla. Sed hendrerit tristique nisi, suscipit euismod nunc feugiat a. Suspendisse sed laoreet quam. Curabitur mollis sed sapien ac elementum. Integer tincidunt est eu sapien pretium, sit amet mollis tortor elementum.', '2018-04-19 11:17:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--
-- Creation: May 24, 2018 at 03:16 PM
--

DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE `post_comments` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `comment_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`post_id`, `comment_id`) VALUES
  (1, 1),
  (1, 3),
  (2, 2),
  (2, 4),
  (2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--
-- Creation: Apr 19, 2018 at 07:16 PM
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `tag_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`) VALUES
  (1, 0),
  (1, 1),
  (1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--
-- Creation: Apr 19, 2018 at 07:12 PM
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
  (1, 'tag1'),
  (2, 'tag2'),
  (3, 'tag3');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--
-- Creation: Apr 09, 2018 at 01:42 PM
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `translation_id` int(10) UNSIGNED NOT NULL,
  `phrase` varchar(191) NOT NULL,
  `language` char(3) NOT NULL,
  `translation` varchar(191) DEFAULT NULL,
  `controller` varchar(15) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`translation_id`, `phrase`, `language`, `translation`, `controller`, `action`) VALUES
  (1, 'Action', 'en', '{untranslated}', 'welcome', 'index'),
  (2, 'Server returned response in an unexpected format', 'en', '{untranslated}', 'global', 'global'),
  (3, 'Forbidden', 'en', '{untranslated}', 'global', 'global'),
  (4, 'Server returned an error', 'en', '{untranslated}', 'global', 'global'),
  (5, 'Action', 'en', '{untranslated}', 'halo', 'index'),
  (6, 'Logout', 'en', '{untranslated}', 'global', 'global'),
  (7, 'Settings', 'en', '{untranslated}', 'global', 'global'),
  (8, 'Logged in as', 'en', '{untranslated}', 'global', 'global'),
  (9, 'Log out', 'en', '{untranslated}', 'global', 'global'),
  (10, 'Action', 'et', '{untranslated}', 'welcome', 'index'),
  (11, 'Log out', 'et', '{untranslated}', 'global', 'global'),
  (12, 'Server returned response in an unexpected format', 'et', '{untranslated}', 'global', 'global'),
  (13, 'Forbidden', 'et', '{untranslated}', 'global', 'global'),
  (14, 'Server returned an error', 'et', '{untranslated}', 'global', 'global'),
  (15, 'Please sign in', 'et', '{untranslated}', 'global', 'global'),
  (16, 'Email', 'et', '{untranslated}', 'global', 'global'),
  (17, 'Password', 'et', '{untranslated}', 'global', 'global'),
  (18, 'Sign in', 'et', '{untranslated}', 'global', 'global'),
  (19, 'Please sign in', 'en', '{untranslated}', 'global', 'global'),
  (20, 'Email', 'en', '{untranslated}', 'global', 'global'),
  (21, 'Password', 'en', '{untranslated}', 'global', 'global'),
  (22, 'Sign in', 'en', '{untranslated}', 'global', 'global'),
  (23, 'Oops...', 'en', '{untranslated}', 'global', 'global'),
  (24, 'Close', 'en', '{untranslated}', 'global', 'global'),
  (25, 'Server returned an error. Please try again later ', 'en', '{untranslated}', 'global', 'global'),
  (26, 'Wrong username or password', 'en', '{untranslated}', 'global', 'global');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Apr 09, 2018 at 01:42 PM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `is_admin`, `password`, `email`, `deleted`, `name`) VALUES
  (1, 1, '$2y$10$vTje.ndUFKHyuotY99iYkO.2aHJUgOsy2x0RMXP1UmrTe6CQsKbtm', 'demo@example.com', 0, 'Demo User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`post_id`,`comment_id`) USING BTREE,
  ADD UNIQUE KEY `comment_id` (`comment_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`post_id`,`tag_id`) USING BTREE,
  ADD UNIQUE KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`translation_id`),
  ADD UNIQUE KEY `language_phrase_controller_action_index` (`language`,`phrase`,`controller`,`action`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `translation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`);

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `tag` (`tag_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
