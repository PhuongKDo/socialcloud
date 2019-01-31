-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2017 at 04:59 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialcloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends_control`
--

CREATE TABLE `friends_control` (
  `id` int(11) NOT NULL,
  `req_sen_id` int(11) NOT NULL,
  `req_rec_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friends_control`
--

INSERT INTO `friends_control` (`id`, `req_sen_id`, `req_rec_id`, `status`) VALUES
(1, 1, 51, 1),
(2, 2, 51, 1),
(3, 3, 51, 1),
(4, 4, 51, 1),
(5, 5, 51, 1),
(6, 6, 51, 1),
(7, 7, 51, 1),
(8, 8, 51, 1),
(9, 9, 51, 1),
(10, 10, 51, 1),
(11, 11, 51, 1),
(12, 12, 51, 1),
(13, 13, 51, 1),
(14, 14, 51, 1),
(15, 15, 51, 1),
(16, 16, 51, 1),
(17, 17, 51, 1),
(18, 18, 51, 1),
(19, 19, 51, 1),
(20, 20, 51, 1),
(21, 21, 51, 1),
(22, 22, 51, 1),
(23, 23, 51, 1),
(24, 24, 51, 1),
(25, 25, 51, 1),
(26, 26, 51, 1),
(27, 27, 51, 1),
(28, 28, 51, 1),
(29, 29, 51, 1),
(30, 30, 51, 1),
(31, 40, 51, 1),
(32, 41, 51, 1),
(33, 42, 51, 1),
(34, 43, 51, 1),
(35, 44, 51, 1),
(36, 45, 51, 1),
(37, 46, 51, 1),
(38, 47, 51, 1),
(39, 48, 51, 1),
(40, 49, 51, 1),
(41, 50, 51, 1),
(42, 38, 51, 1),
(43, 30, 51, 1),
(44, 31, 51, 1),
(45, 32, 51, 1),
(46, 33, 51, 1),
(47, 34, 51, 1),
(48, 35, 51, 1),
(49, 36, 51, 1),
(50, 37, 51, 1);

-- --------------------------------------------------------

--
-- Table structure for table `likes_control`
--

CREATE TABLE `likes_control` (
  `like_owner_id` int(11) NOT NULL,
  `like_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes_control`
--

INSERT INTO `likes_control` (`like_owner_id`, `like_post_id`) VALUES
(51, 1),
(51, 2),
(51, 3),
(51, 4),
(51, 5),
(51, 6),
(51, 7),
(51, 50),
(51, 8),
(51, 10),
(51, 11),
(51, 33),
(51, 29),
(51, 30),
(51, 1),
(2, 2),
(4, 3),
(7, 4),
(9, 5),
(11, 3),
(22, 7),
(23, 50),
(23, 8),
(11, 14),
(23, 1),
(45, 2),
(46, 22),
(22, 4),
(12, 5),
(49, 6),
(22, 7),
(3, 50),
(24, 8),
(6, 10),
(2, 1),
(39, 22),
(41, 3),
(27, 4),
(50, 5),
(22, 6),
(24, 7),
(25, 50),
(26, 8),
(34, 22),
(38, 1),
(26, 2),
(39, 3),
(41, 4),
(44, 5),
(43, 6),
(48, 7),
(23, 50),
(25, 8),
(26, 13);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `owner_id`, `content`, `created_at`) VALUES
(1, 6, 'The best and most beautiful things in the world cannot be seen or even touched is they must be felt with the heart', '2017-04-09 19:35:55'),
(2, 3, 'Keep love in your heart because life without it is like a sunless garden when the flowers are dead', '2017-04-09 19:35:55'),
(3, 4, 'It is during our darkest moments that we must focus to see the light', '2017-04-09 19:35:55'),
(4, 2, 'Try to be a rainbow in someones cloud', '2017-04-09 19:35:55'),
(5, 5, 'Find a place inside where theres joy and the joy will burn out the pain', '2017-04-09 19:35:55'),
(6, 19, 'Nothing is impossible the word itself says Im possible', '2017-04-09 19:35:55'),
(7, 21, 'Dont judge each day by the harvest you reap but by the seeds that you plant', '2017-04-09 19:35:55'),
(8, 28, 'The only thing necessary for the triumph of evil is for good men to do nothing', '2017-04-09 19:35:55'),
(9, 51, 'One of the most beautiful qualities of true friendship is to understand and to be understood', '2017-04-09 19:35:55'),
(10, 30, 'Where there is love there is life', '2017-04-09 19:35:55'),
(11, 41, 'Love is composed of a single soul inhabiting two bodies', '2017-04-09 19:35:55'),
(12, 21, 'Do not go where the path may lead is go instead where there is no path and leave a trail', '2017-04-09 19:35:55'),
(13, 22, 'Success is not final and failure is not fatal', '2017-04-09 19:35:55'),
(14, 24, 'It is the courage to continue that counts', '2017-04-09 19:35:55'),
(15, 11, 'Do all things with love', '2017-04-09 19:35:55'),
(16, 15, 'Love isnt something you find', '2017-04-09 19:35:55'),
(17, 16, 'life it goes on', '2017-04-09 19:35:55'),
(18, 17, 'Change your thoughts and you change your world.', '2017-04-09 19:35:55'),
(19, 18, 'Education is the most powerful weapon which you can use to change the world.', '2017-04-09 19:35:55'),
(20, 19, 'Today you are you! That is truer than true! There is no one alive who is you-er than you!', '2017-04-09 19:35:55'),
(21, 23, 'The future belongs to those who believe in the beauty of their dreams.', '2017-04-09 19:35:55'),
(22, 11, 'Believe you can and youre halfway there.', '2017-04-09 19:35:55'),
(23, 10, 'The pessimist complains about the wind, the optimist expects it to change; the realist adjusts the sails.', '2017-04-09 19:35:55'),
(24, 12, 'Happiness resides not in possessions, and not in gold, happiness dwells in the soul.', '2017-04-09 19:35:55'),
(25, 13, 'Lifes most persistent and urgent question is, What are you doing for others?', '2017-04-09 19:35:55'),
(26, 21, 'Whoever is happy will make others happy too.', '2017-04-09 19:35:55'),
(27, 23, 'Tell me and I forget, Teach me and I remember. Involve me and I learn.', '2017-04-09 19:35:55'),
(28, 22, 'Everything has beauty, but not everyone sees it.', '2017-04-09 19:35:55'),
(29, 29, 'The only true wisdom is in knowing you know nothing.', '2017-04-09 19:35:55'),
(30, 27, 'Life isnt about finding yourself, Life is about creating yourself.', '2017-04-09 19:35:55'),
(31, 23, 'Life is not a problem to be solved, but a reality to be experienced.', '2017-04-09 19:35:55'),
(32, 29, 'You dont choose your family, They are Gods gift to you, as you are to them.', '2017-04-09 19:35:55'),
(33, 45, 'Friends show their love in times of trouble, not in happiness.', '2017-04-09 19:35:55'),
(34, 50, 'A single rose can be my garden... a single friend, my world.', '2017-04-09 19:35:55'),
(35, 49, 'We know what we are, but know not what we may be.', '2017-04-09 19:35:55'),
(36, 37, 'We love life, not because we are used to living but because we are used to loving.', '2017-04-09 19:35:55'),
(37, 35, 'Its not what you look at that matters, its what you see.', '2017-04-09 19:35:55'),
(38, 31, 'All our dreams can come true, if we have the courage to pursue them.', '2017-04-09 19:35:55'),
(39, 19, 'Spread love everywhere you go. Let no one ever come to you without leaving happier.', '2017-04-09 19:35:55'),
(40, 28, 'When we are no longer able to change a situation - we are challenged to change ourselves.', '2017-04-09 19:35:55'),
(41, 25, 'Problems are not stop signs, they are guidelines.', '2017-04-09 19:35:55'),
(42, 12, 'Always remember that you are absolutely unique. Just like everyone else.', '2017-04-09 19:35:55'),
(43, 19, 'Wise men speak because they have something to say; Fools because they have to say something.', '2017-04-09 19:35:55'),
(44, 28, 'Wise men speak because they have something to say; Fools because they have to say something.', '2017-04-09 19:35:55'),
(45, 11, 'If opportunity doesnt knock, build a door.', '2017-04-09 19:35:55'),
(46, 19, 'The secret of getting ahead is getting started.', '2017-04-09 19:35:55'),
(47, 45, 'There is only one happiness in this life, to love and be loved.', '2017-04-09 19:35:55'),
(48, 42, 'There is nothing on this earth more to be prized than true friendship.', '2017-04-09 19:35:55'),
(49, 22, 'A leader is one who knows the way, goes the way, and shows the way.', '2017-04-09 19:35:55'),
(50, 12, 'Very little is needed to make a happy life; it is all within yourself, in your way of thinking.', '2017-04-09 19:35:55'),
(51, 51, 'Repost: \r\n				User: Caroline \r\n				Feed: The best and most beautiful things in the world cannot be seen or even touched is they must be felt with the heart \r\n				Posted: 2017-04-09 19:35:55', '2017-04-19 21:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `post_reply_id` int(11) NOT NULL,
  `reply_content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `owner_id`, `post_reply_id`, `reply_content`, `created_at`) VALUES
(1, 3, 5, 'I am always doing things I canâ€™t do. That is how I get to do them', '2017-04-20 07:33:41'),
(2, 51, 2, 'It is not what we take up, but what we give up, that makes us rich.', '2017-04-20 07:33:55'),
(3, 15, 2, 'You can do anything, but not everything. ', '2017-04-20 07:34:19'),
(4, 22, 3, 'Thinking will not overcome fear but action will. ', '2017-04-20 07:34:35'),
(5, 23, 4, 'We read the world wrong and say that it deceives us.', '2017-04-20 07:34:48'),
(6, 45, 5, 'You miss 100 percent of the shots you never take.', '2017-04-20 07:34:58'),
(7, 23, 6, 'He is the happiest, be he king or peasant, who finds peace in his home. ', '2017-04-20 07:35:08'),
(8, 12, 7, 'Your work is to discover your work and then, with all your heart, to give yourself to it.', '2017-04-20 07:35:21'),
(9, 12, 8, 'In order to be effective truth must penetrate like an arrow â€“ and that is likely to hurt. ', '2017-04-20 07:35:32'),
(10, 11, 42, 'You must be the change you wish to see in the world. ', '2017-04-20 07:35:43'),
(11, 51, 34, 'As long as youâ€™re going to be thinking anyway, think big.', '2017-04-20 07:35:56'),
(12, 51, 29, 'Decide that you want it more than you are afraid of it. ', '2017-04-20 07:36:06'),
(13, 2, 20, 'The world makes way for the man who knows where he is going.', '2017-04-20 07:36:19'),
(14, 23, 28, 'What may be done at any time will be done at no time. ', '2017-04-20 07:37:27'),
(15, 45, 27, 'If you dont have a competitive advantage, dont compete.', '2017-04-20 07:37:34'),
(16, 2, 24, 'If your ship doesnâ€™t come in, swim out to meet it!', '2017-04-20 07:37:46'),
(17, 2, 25, 'Be yourself everyone else is taken', '2017-04-20 07:36:19'),
(18, 23, 33, 'Dig the well before you are thirsty', '2017-04-20 07:37:27'),
(19, 5, 42, 'At first dreams seem impossible, then improbable, then inevitable', '2017-04-20 07:37:46'),
(20, 2, 12, 'Science is a wonderful thing if one does not have to earn one’s living at it', '2017-04-20 07:36:19'),
(21, 23, 13, 'There’s no next time. It’s now or never', '2017-04-20 07:37:27'),
(22, 45, 12, 'Innovation distinguishes between a leader and a follower', '2017-04-20 07:37:34'),
(23, 3, 42, 'Don’t go around saying the world owes you a living and the world owes you nothing. It was here first', '2017-04-20 07:37:46'),
(24, 2, 20, 'What may be done at any time will be done at no time', '2017-04-20 07:36:19'),
(25, 7, 33, 'As a well-spent day brings happy sleep, so a life well spent brings happy death', '2017-04-20 07:37:27'),
(26, 45, 39, 'Identify your problems but give your power and energy to solutions', '2017-04-20 07:37:34'),
(27, 22, 42, 'My life is my message', '2017-04-20 07:37:46'),
(28, 23, 9, 'Everything that irritates us about others can lead us to an understanding of ourselves', '2017-04-20 07:37:27'),
(29, 45, 39, 'Everything that irritates us about others can lead us to an understanding of ourselves', '2017-04-20 07:37:34'),
(30, 2, 20, 'One person with a belief is equal to a force of 99 who have only interests', '2017-04-20 07:36:19'),
(31, 27, 2, 'Failure defeats losers failure inspires winners', '2017-04-20 07:37:27'),
(32, 29, 39, 'Love is friendship, set on fire', '2017-04-20 07:37:34'),
(33, 5, 42, 'Anyone who has never made a mistake has never tried anything new', '2017-04-20 07:37:46'),
(34, 2, 20, 'Do what you love and the money will follow.', '2017-04-20 07:36:19'),
(35, 23, 1, 'A soul that sees beauty may sometimes walk alone', '2017-04-20 07:37:27'),
(36, 26, 39, 'He who has no patience has nothing', '2017-04-20 07:37:34'),
(37, 45, 42, 'The more you loose yourself in something bigger than yourself, the more energy you will have.', '2017-04-20 07:37:46'),
(38, 11, 21, 'All our dreams can come true if we have the courage to pursue them', '2017-04-20 07:37:27'),
(39, 45, 39, 'Do your work, and you shall reinforce yourself', '2017-04-20 07:37:34'),
(40, 2, 20, 'There aint no easy way out', '2017-04-20 07:36:19'),
(41, 23, 2, 'Death is nothing but to live defeated and inglorious is to die daily', '2017-04-20 07:37:27'),
(42, 45, 7, 'It takes courage to grow up and turn out to be who you really are', '2017-04-20 07:37:34'),
(43, 45, 42, 'Courage is a kind of salvation', '2017-04-20 07:37:46'),
(44, 2, 20, 'You will not do incredible things without an incredible dream', '2017-04-20 07:36:19'),
(45, 2, 48, 'Opportunity is missed by most people because it is dressed in overalls and looks like work', '2017-04-20 07:37:27'),
(46, 1, 3, 'We are what we repeatedly do; excellence, then, is not an act but a habit', '2017-04-20 07:37:34'),
(47, 22, 6, 'The only thing that saves us from bureaucracy is its inefficiency', '2017-04-20 07:37:46'),
(48, 4, 33, 'In life, as in football, you won’t go far unless you know where the goalposts are', '2017-04-20 07:37:27'),
(49, 45, 39, 'A happy family is but an earlier heaven', '2017-04-20 07:37:34'),
(50, 44, 32, 'Cat god', '2017-04-20 07:37:34'),
(51, 51, 42, 'If your ship doesnâ€™t come in, swim out to meet it!', '2017-04-20 02:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `email`, `location`, `created`, `username`) VALUES
(15, 'Elizabeth', 'Lee', '$2y$10$Ih5GrTBpzETf5ggf3uKSHezqGHScR.D3CVwUhN5EthW4FL0Qw/I3.', 'elizabeth@ymail.com', 'Idaho', '2017-04-20 04:24:00', 'Elizabeth'),
(16, 'Ella', 'Rodriguez', '$2y$10$2zJmHshMeDMArBetOAWlB.68Czl/uwpa.udARIcrzEFD0etMWIp5C', 'ella@ymail.com', 'Alaska', '2017-04-20 04:24:45', 'Ella'),
(17, 'Emily', 'Garcia', '$2y$10$3DQLRIIzXlHcZBU38wmwN.VkFt7MK6IOHBtxV84HbxFxe0veLvCwW', 'emily@ymail.com', 'Alabama', '2017-04-20 04:25:14', 'Emily'),
(18, 'Emma', 'Robinson', '$2y$10$4euBdokFWvet6DDymcEOj.sZJPVd1Y2wM.Q16DProc1jMaLR2RRUS', 'emma@gmail.com', 'Colorado', '2017-04-20 04:26:11', 'Emma'),
(19, 'Faith', 'Walker', '$2y$10$PPa4MWYtaEwMz6LPMjxUQOkisZ5e17nC4SqfwaQlS3FAkOf2p5Vw.', 'faith@gmail.com', 'Alaska', '2017-04-20 04:26:40', 'Faith'),
(20, 'Felicity', 'Jones', '$2y$10$dk32Q1jfu5C9N.IgUAQXtu/.I.VMQCQL3tYDhd1bje6DW8SIS0HyC', 'felicity@edu.com', 'Delaware', '2017-04-20 04:27:18', 'Felicity'),
(21, 'Fiona', 'Brown', '$2y$10$Nw/cOER9EknfGeEshgZgU.kvmoTX6oz2168gMgae3Srtu456SIEPS', 'fiona@edu.com', 'Nevada', '2017-04-20 04:27:41', 'Fiona'),
(22, 'Gabriella', 'Taylor', '$2y$10$d3Nvd2SbV4T3cpUKbxRFfuHM9PdeFwxZc1uE2Ioq.ml6LQ4I8hFqW', 'gabriella@edu.com', 'Minnesota', '2017-04-20 04:33:24', 'Gabriella'),
(23, 'Grace', 'Miller', '$2y$10$oeyIMIkWaNZHVPnOd/dQw.IzYOgU5mEfjl1UOZzBJZdMEV65/ot/S', 'grace@gmail.com', 'Oregon', '2017-04-20 04:33:52', 'Grace'),
(24, 'Hannah', 'Smith', '$2y$10$uxktTu1GlBN.dJW0xFEGQO58V2zEcp33Lcvg/QsruUGruvnOdzR5W', 'hannah@ymail.com', 'Texas', '2017-04-20 04:34:15', 'Hannah'),
(25, 'Heather', 'Lewis', '$2y$10$jnPobv/e01rdHold9ZQeQOPF51VkBp9dY//7RaQL.6nhVNS3uRx/S', 'heather@gmail.com', 'Orgeon', '2017-04-20 04:35:30', 'Heather'),
(26, 'Cameron', 'Walker', '$2y$10$w4Xff5HOOuFCPGKsi4wFuub9EDkCs4nNuW7cMaSUSY2KzEGTiDp8y', 'cameron@ymail.com', 'Idaho', '2017-04-20 04:35:52', 'Cameron'),
(27, 'Carl', 'Lee', '$2y$10$XsVnmt74/jlfi9XEzFgVSe0GfG0EHmuGWpLdU6jVjPnhnqng.kVI2', 'carl@edu.com', 'Vermont', '2017-04-20 04:36:14', 'Carl'),
(28, 'Colin', 'Robinson', '$2y$10$gQr4LS98X5e2HICnkgzSFuUfPd3bzRTNlpnXumKeQZ8/6fM/0X.1q', 'colin@gmail.com', 'Utah', '2017-04-20 04:38:42', 'Colin'),
(29, 'Charles', 'Martinez', '$2y$10$7K0Lp/pnl5xKbBFjM0SEeu0OjeHfyuxNjUswlue17P6DpxjyFoSwq', 'charles@gmail.com', 'North Carolina', '2017-04-20 04:40:00', 'Charles'),
(30, 'Christian', 'Lewis', '$2y$10$8SNxNC8aqEmr1Bv0y/Uqce4m9vjWPsqiTPOW1tB7hArHBkYX5wemO', 'christian@gmail.com', 'Tennessee', '2017-04-20 04:44:00', 'Christian'),
(31, 'Christopher', 'Walker', '$2y$10$/vrCJD7dX5pLA9nQe.Voyuu.ejO0ev046ik2y9n66U8DTohlHwgKS', 'christopher@gmail.com', 'Alabama', '2017-04-20 04:44:32', 'Christopher'),
(32, 'Connor', 'Miller', '$2y$10$w79k0YDbAvSLJFOuvUfCv.fiQuMtCh71iIrdcqDp/qhg9I9SNwe0G', 'connor@edu.com', 'Arizona', '2017-04-20 04:44:52', 'Connor'),
(33, 'Dan', 'Anderson', '$2y$10$gzMrYGblIxRUXZR/eBvrouAhp1cI0.2S1NF26vCbSfXZ4f5paGxYi', 'dan@gmail.com', 'North Darkota', '2017-04-20 04:45:15', 'Dan'),
(34, 'David', 'Moore', '$2y$10$z/rlbGQoCCr8cwYbUC26Sewt76qogRJVPyPSkmCkFMyZ1EYmg9lMW', 'david@ymail.com', 'Wyoming', '2017-04-20 04:47:26', 'David'),
(35, 'Dominic', 'Anderson', '$2y$10$iE6N6DObfJY46M5mxACPOuaXDKdYaQejkc.e.n1z9kben2AXEOsma', 'dominic@gmail.com', 'Utah', '2017-04-20 04:47:42', 'Dominic'),
(36, 'Eren', 'Clark', '$2y$10$Ul78Cv1n15dd19X60FHgt.Ygn.BKSeX.gGnKeiijTmZ5S8j2a.4Vq', 'eren@ymail.com', 'Tennessee', '2017-04-20 04:48:12', 'Eren'),
(37, 'Edward', 'Robinson', '$2y$10$vIb80f96Nje6KqaPGNboKOiFhWy5iIYKePt4pqejeyWlTe7WLL7xq', 'edward@gmail.com', 'Arkansas', '2017-04-20 04:48:38', 'Edward'),
(38, 'Eric', 'Taylor', '$2y$10$thTpXxvPVfRroU9XaqOLmezDvGeSUYfjWWFBKrqCUbvu3lg0MeWEK', 'eric@edu.com', 'Kentucky', '2017-04-20 04:49:01', 'Eric'),
(39, 'Evan', 'Williams', '$2y$10$AE0z..w7FDYXKbC/IbUNWOr4GEFV0YNaR0IJJ8Vjeaednl5xaYaKS', 'evan@gmail.com', 'Hawaii', '2017-04-20 04:49:18', 'Evan'),
(40, 'Frank', 'Brown', '$2y$10$5oJdalcTaNLYn7QKPWcWTO3EIAfLygJdYjCKPgQEqAk8DgTi9BgBq', 'frank@edu.com', 'Alabama', '2017-04-20 04:49:42', 'Frank'),
(41, 'Gavin', 'Jager', '$2y$10$CEuunUjYqHgROr92DjAVQ.MdeETUEgyIaNBQnOkDzrOFOEgOME0du', 'gavin@edu.com', 'Alaska', '2017-04-20 04:50:04', 'Gavin'),
(42, 'Gordon', 'Clark', '$2y$10$xkBd0iMuuy/qhQjUSLb78.WKjWmgvjOAt9UX.gygdUn2HMmZA5Ruy', 'gordon@ymail.com', 'Texas', '2017-04-20 04:50:27', 'Gordon'),
(43, 'Harry', 'Jackson', '$2y$10$L9mph3JjEqBmmGZyIQhO7udWQcVSCJHT0fNxjVwMggs.tjAuR9mQm', 'harry@gmail.com', 'California', '2017-04-20 04:50:55', 'Harry'),
(44, 'Ian', 'Moore', '$2y$10$ExdHB25qej6bdQdhorzYVOCjyf9oQfFqUvCT95kDqMA7j.eRwDmBy', 'ian@gmail.com', 'Iowa', '2017-04-20 04:51:18', 'Ian'),
(45, 'Isaac', 'Miller', '$2y$10$CRpRdNeyOfJN5oRIgUfuZePzOte2iGnK2cGZGOCgl0UeekIQs1h2C', 'isaac@gmail.com', 'Kentucky', '2017-04-20 04:51:40', 'Isaac'),
(46, 'Jack', 'Harris', '$2y$10$Vm9UM0I9PXejhkslUM8mWOgBGRkJDOv1tM4pGHE0zqXZrWappySmK', 'jack@gmail.com', 'Oregon', '2017-04-20 04:51:57', 'Jack'),
(47, 'Jacob', 'Walker', '$2y$10$5W4f8ufFk7QRoUbY2oox4eszUbMpOWFLbbspikwEw6XQHuAI9Z/KO', 'jacob@ymail.com', 'Oregon', '2017-04-20 04:52:15', 'Jacob'),
(48, 'Jake', 'Lee', '$2y$10$5Pck/cPmwS09H5stvhCM8.klvXujuN09kZOcOTy8/wF7/LFHGZ7dO', 'jake@gmail.com', 'Tennessee', '2017-04-20 04:52:35', 'Jake'),
(49, 'James', 'Anderson', '$2y$10$0W9l4NoVzkqCKh0mBrHQLeama.FF7k..IaqDFtNlkS9/vWjqQBMmS', 'james@edu.com', 'Nevada', '2017-04-20 04:52:50', 'James'),
(50, 'Jason', 'Jones', '$2y$10$EB7v.Gr.KR7frmH3bHzX2uo5.DCHn1bCjiyREd8gBfxQ41Zw055v2', 'jason@gmail.com', 'Colorado', '2017-04-20 04:53:08', 'Jason'),
(51, 'OG', 'OG', '$2y$10$ApDRYB.IGO3kxpaSpvAm8.ffOLLZP/P750aOJhXZO1JzGCOgb4cXy', 'cat@god.com', 'Heaven', '2017-04-20 04:53:55', 'Cat'),
(14, 'Dorothy', 'Miller', '$2y$10$HyWMm/sbBkJneaQ0gHJ94upKlRICUMeUVMYGsdJzJTmHdSZX.IjiS', 'dorothy@hotmail.com', 'Texas', '2017-04-20 04:13:57', 'Dorothy'),
(13, 'Donna', 'Jager', '$2y$10$rEEAg6Zzm8f/54Q33IWBhOXCRlT2o2VZVsiUbDpwS6LtBDdjhlG5q', 'donna@ymail.com', 'Rhode Island', '2017-04-20 04:13:33', 'Donna'),
(12, 'Diane', 'White', '$2y$10$9LqoYwcqOebMYzOsVwD0uuxfqkP0vWbam.ropVZb.HoBMETqv4.hu', 'diane@gmail.com', 'Vermont', '2017-04-20 04:13:04', 'Diane'),
(11, 'Diana', 'Clark', '$2y$10$8QX7hIy1UaQbZgzrAz5ZfOKmZ6jRBMKHgtJDl6qQDZJVTpODNDuiy', 'diana@gmail.com', 'Virginia', '2017-04-20 04:12:36', 'Diana'),
(10, 'Deirdre', 'Thomas', '$2y$10$4xPXVZwGPpMfLrPNmeAFjOINAKRU0Gfv6BJvjBNA9PjFJXO//v4P.', 'deirdre@gmail.com', 'New Jersey', '2017-04-20 04:12:02', 'Deirdre'),
(9, 'Claire', 'Jackson', '$2y$10$Rle2bGd.V4vNkInW5Ss9ae4Jj7WbcOYPHSf0fY1QOB2I9NHC8OuGG', 'claire@gmail.com', 'Delaware', '2017-04-20 04:11:21', 'Claire'),
(3, 'Bella', 'Lee', '$2y$10$q9jnfjeoLD0QkQ7pk5f/MuW/Mc6EcC/VmN.C8XTt19QAfhw5t67NS', 'bella@gmail.com', 'California', '2017-04-20 04:05:24', 'Bella'),
(4, 'Bernadette', 'Clark', '$2y$10$K9wc7IEMmSvob4cxQrk6/udDCa.kEOPx3QU40IODZB78aLncGce.6', 'bernadette@gmail.com', 'New Hampshire', '2017-04-20 04:06:04', 'Bernadette'),
(5, 'Carol', 'Martinez', '$2y$10$kGwLoR.LrnTC2wQkYAdNmeIa6bbiVjC/NMt0QlQb/qualThOh.Id2', 'carol@gmail.com', 'Maryland', '2017-04-20 04:07:44', 'Carol'),
(6, 'Caroline', 'Davis', '$2y$10$N.VHWA9u96bxA/jxCrY9Eenu3O9G5NHPMUdeu3csKaWw4qbexPnmy', 'caroliane@gmail.com', 'Missouri', '2017-04-20 04:09:25', 'Caroline'),
(7, 'Carolyn', 'Davis', '$2y$10$a1Vk3W.IyPXFgWJpVyjzfuZwy75igO.HH24O3YoqRZDMw08vEiima', 'carolyn@gmail.com', 'Missouri', '2017-04-20 04:10:37', 'Carolyn'),
(8, 'Chloe', 'Brown', '$2y$10$nF.PbzG6I3pFdZr/.Nazs.upgUJGRS4lq60WVoRFbC3R/Q4vdCrNO', 'chloe@gmail.com', 'Arkansas', '2017-04-20 04:11:01', 'Chloe'),
(2, 'Ava', 'Brown', '$2y$10$LOImaUSJ7lhoiljHnC1EZuk2cjBm7WF91BgQt19rO4OOhhas2GRlW', 'ava@gmail.com', 'Delaware', '2017-04-20 04:04:59', 'Ava'),
(1, 'Audrey', 'Smith', '$2y$10$GhZlERNzJZZIYAQ03rt6zuJQ49QfEXmE2H087n4thIzlUD4HDrSOC', 'audrey@gmail.com', 'Maine', '2017-04-20 04:04:31', 'Audrey');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends_control`
--
ALTER TABLE `friends_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends_control`
--
ALTER TABLE `friends_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
