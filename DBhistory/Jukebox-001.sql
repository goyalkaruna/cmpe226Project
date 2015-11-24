-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2015 at 04:18 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Jukebox`
--

-- --------------------------------------------------------

--
-- Table structure for table `Album`
--

CREATE TABLE IF NOT EXISTS `Album` (
  `album_id` int(32) NOT NULL,
  `title` varchar(64) NOT NULL,
  `image_id` int(32) NOT NULL,
  `publisher_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Album`
--

INSERT INTO `Album` (`album_id`, `title`, `image_id`, `publisher_id`) VALUES
(10001, 'Sample', 123, 456),
(10002, 'Star Wars', 3467456, 58453),
(28347235, 'This Land', 2342523, 567568);

-- --------------------------------------------------------

--
-- Table structure for table `AlbumSong`
--

CREATE TABLE IF NOT EXISTS `AlbumSong` (
  `album_song_id` int(32) NOT NULL,
  `song_id` int(32) NOT NULL,
  `album_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AlbumSong`
--

INSERT INTO `AlbumSong` (`album_song_id`, `song_id`, `album_id`) VALUES
(21, 22, 10001),
(24, 25, 10001),
(30, 31, 10002),
(50, 51, 52);

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE IF NOT EXISTS `Artist` (
  `artist_id` int(32) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Artist`
--

INSERT INTO `Artist` (`artist_id`, `name`) VALUES
(9001, 'James Cho'),
(9002, 'Yasuhiko Sasaki'),
(9003, 'Karuna Goyal'),
(9004, 'Dishant Kalyani');

-- --------------------------------------------------------

--
-- Table structure for table `ArtistAlbum`
--

CREATE TABLE IF NOT EXISTS `ArtistAlbum` (
  `artist_album_id` int(32) NOT NULL,
  `artist_id` int(32) NOT NULL,
  `album_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ArtistAlbum`
--

INSERT INTO `ArtistAlbum` (`artist_album_id`, `artist_id`, `album_id`) VALUES
(8001, 9001, 10001),
(8002, 9003, 10002),
(8003, 9002, 10003),
(4698166, 135132, 84912);

-- --------------------------------------------------------

--
-- Table structure for table `ArtistPerson`
--

CREATE TABLE IF NOT EXISTS `ArtistPerson` (
  `artist_person_id` int(32) NOT NULL,
  `artist_id` int(32) NOT NULL,
  `person_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ArtistPerson`
--

INSERT INTO `ArtistPerson` (`artist_person_id`, `artist_id`, `person_id`) VALUES
(4001, 9001, 1),
(585165, 548522, 326595),
(963696, 8525852, 74174),
(5485466, 456456, 12321);

-- --------------------------------------------------------

--
-- Table structure for table `ArtistSong`
--

CREATE TABLE IF NOT EXISTS `ArtistSong` (
  `artist_song_id` int(32) NOT NULL,
  `artist_id` int(32) NOT NULL,
  `song_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ArtistSong`
--

INSERT INTO `ArtistSong` (`artist_song_id`, `artist_id`, `song_id`) VALUES
(654615, 38745, 23467),
(654894, 54521, 98956),
(7678676, 34675464, 233454);

-- --------------------------------------------------------

--
-- Table structure for table `Audio`
--

CREATE TABLE IF NOT EXISTS `Audio` (
  `audio_id` int(32) NOT NULL,
  `data` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE IF NOT EXISTS `Genre` (
  `genre_id` int(32) unsigned NOT NULL,
  `type` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`genre_id`, `type`) VALUES
(100, 'HipHop'),
(110, 'Metal'),
(120, 'Rock'),
(180, 'Instrumental');

-- --------------------------------------------------------

--
-- Table structure for table `History`
--

CREATE TABLE IF NOT EXISTS `History` (
  `history_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `History`
--

INSERT INTO `History` (`history_id`, `user_id`) VALUES
(101, 1002),
(102, 1003);

-- --------------------------------------------------------

--
-- Table structure for table `HistorySong`
--

CREATE TABLE IF NOT EXISTS `HistorySong` (
  `history_song_id` int(4) NOT NULL,
  `played_at` varchar(15) NOT NULL,
  `history_id` int(4) NOT NULL,
  `song_id` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HistorySong`
--

INSERT INTO `HistorySong` (`history_song_id`, `played_at`, `history_id`, `song_id`) VALUES
(501, 'San Jose', 101, 1001),
(502, 'Cupertino', 106, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE IF NOT EXISTS `Image` (
  `image_id` int(32) NOT NULL,
  `data` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Image`
--

INSERT INTO `Image` (`image_id`, `data`) VALUES
(123, ''),
(84651, ''),
(658165, '');

-- --------------------------------------------------------

--
-- Table structure for table `Jukebox`
--

CREATE TABLE IF NOT EXISTS `Jukebox` (
  `jukebox_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Jukebox`
--

INSERT INTO `Jukebox` (`jukebox_id`, `user_id`) VALUES
(10000, 10000),
(10001, 10001),
(10002, 10002),
(10003, 10003),
(10004, 10004),
(10005, 10005),
(10006, 10006),
(10007, 10007),
(10008, 10008),
(10009, 10009),
(10010, 10010),
(10011, 10011),
(10012, 10012),
(10013, 10013),
(10014, 10014),
(10015, 10015),
(10016, 10016),
(10017, 10017),
(10018, 10018),
(10019, 10019);

-- --------------------------------------------------------

--
-- Table structure for table `JukeBoxUserAlbum`
--

CREATE TABLE IF NOT EXISTS `JukeBoxUserAlbum` (
  `jukebox_user_album_id` int(4) NOT NULL,
  `user_album_id` int(4) NOT NULL,
  `jukebox_id` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `JukeBoxUserAlbum`
--

INSERT INTO `JukeBoxUserAlbum` (`jukebox_user_album_id`, `user_album_id`, `jukebox_id`) VALUES
(1, 1001, 5001),
(2, 1009, 5002);

-- --------------------------------------------------------

--
-- Table structure for table `Lyrics`
--

CREATE TABLE IF NOT EXISTS `Lyrics` (
  `lyrics_id` int(4) NOT NULL,
  `text` text NOT NULL,
  `tag_id` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Lyrics`
--

INSERT INTO `Lyrics` (`lyrics_id`, `text`, `tag_id`) VALUES
(101, '"Feel Alright"\r\n\r\nI was born my papa''s son\r\nA wanderin'' eye and a smokin'' gun\r\nNow some of you would live through me\r\nLock me up and throw away the key\r\nOr just find a place to hide away\r\nHope that I''ll just go away\r\nI feel alright - I feel alright tonight\r\n\r\nI''ll bring you precious contraband\r\nAnd ancient tales from distant lands\r\nOf conquerors and concubines and\r\nConjurers from darker times\r\nBetrayal and conspiracy\r\nSacrilege and heresy\r\n\r\nI got every thing you wont or need\r\nYour darkest fear, your fondest dream\r\nI ask you questions, tell you lies\r\nCriticize and sympathize\r\nBe careful what you wish for friend\r\nBecause I''ve been to hell and now I''m back ', 'Feel Alright'),
(102, '"She Bad"\r\n\r\nIf you with it\r\n(Shake that, shake that)\r\n\r\nLate nights, no dress code\r\nShe stay fly like jets go\r\nDon''t have no reasons, ain''t got no M.O.\r\nSee her lifestyle stay bankrolled\r\nBut she work like it ain''t though\r\nYeah, she might get ratchet\r\nBut she know, she bad though\r\n\r\nShe know, she bad though\r\nShe know, she bad\r\nMonday thru Friday, she off in her zone\r\nCome Friday night then she know that it''s on\r\nCall her girls and she rolling up\r\nHit the party, it''s going up\r\n\r\nShake that, work that, move that, yeah\r\nShe a good girl, but you know she bad though\r\nOne time, two time, she can, oh, yeah\r\nShe a good girl, but you know she bad though', 'she bad'),
(103, '"Only Gets Better"\r\n\r\nLife has so many ways of letting us down\r\nInside the potion keep your feet on solid ground\r\nYour heart filled with doubt, you''re crying out\r\nAnd you just can''t seem to turn this thing around\r\n\r\nThere is hope when you can''t grow\r\nYou''re not alone, just smile let go\r\n\r\nWhen you start feeling life''s at an all-time low\r\nWhen you''re fresh out of cash and the moneys low\r\nDreams running out and your heart gets broke\r\nIt can only get better\r\n\r\nWhen the walls pull in and you just don''t know\r\nwhich way you gonna turn the way you gonna go\r\nThe heat turns off and the world gets cold\r\nIt can only get better\r\nIt can only get better', 'Only gets better');

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE IF NOT EXISTS `Person` (
  `person_id` int(4) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`person_id`, `name`) VALUES
(1, 'James Cho'),
(2, 'Arijit Singh');

-- --------------------------------------------------------

--
-- Table structure for table `Publisher`
--

CREATE TABLE IF NOT EXISTS `Publisher` (
  `publisher_id` int(64) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Publisher`
--

INSERT INTO `Publisher` (`publisher_id`, `name`, `address`) VALUES
(150, 'Rolling Stones', 'Los Angeles'),
(250, 'Poison', 'New York'),
(350, 'Fifty Cents', 'San Jose'),
(600, 'Indian Ocean', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE IF NOT EXISTS `Review` (
  `review_Id` int(100) NOT NULL,
  `score` int(3) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(100) NOT NULL,
  `song_id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Review`
--

INSERT INTO `Review` (`review_Id`, `score`, `description`, `user_id`, `song_id`) VALUES
(115, 2, 'Decent stuff.', 130, 135),
(230, 5, 'Excellent songs.', 240, 270),
(250, 4, 'It has a great collection of songs.', 300, 200),
(290, 4, 'Good collection.', 340, 440);

-- --------------------------------------------------------

--
-- Table structure for table `Song`
--

CREATE TABLE IF NOT EXISTS `Song` (
  `song_id` int(32) NOT NULL,
  `title_name` varchar(64) NOT NULL,
  `released_date` int(40) NOT NULL,
  `duration` int(64) NOT NULL,
  `language` varchar(32) NOT NULL,
  `genre_id` int(32) NOT NULL,
  `lyrics_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Song`
--

INSERT INTO `Song` (`song_id`, `title_name`, `released_date`, `duration`, `language`, `genre_id`, `lyrics_id`) VALUES
(301, 'I Love You', 2010, 3, 'English', 444, 475),
(302, 'Shalala', 2006, 4, 'English', 420, 425),
(305, 'Ibiza', 2003, 3, 'English', 510, 520),
(320, 'Shake It', 2011, 5, 'English', 430, 460);

-- --------------------------------------------------------

--
-- Table structure for table `Tag`
--

CREATE TABLE IF NOT EXISTS `Tag` (
  `tag_id` int(64) NOT NULL,
  `keyword` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tag`
--

INSERT INTO `Tag` (`tag_id`, `keyword`) VALUES
(306, 'I Love'),
(307, 'Shala'),
(445, 'Ibiz'),
(446, 'Shake');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `user_id` int(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(25) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(256) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10020 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`user_id`, `password`, `email`, `name`, `address`) VALUES
(10000, 'mary226', 'mary@example.com', 'mary', '10000 Washingon Av., SanJose, United States'),
(10001, 'taku226', 'taku@example.com', 'taku', '10001 Washingon Av., SanJose, United States'),
(10002, 'omkar226', 'omkar@example.com', 'omkar', '10002 Washingon Av., SanJose, United States'),
(10003, 'henry226', 'henry@example.com', 'henry', '10003 Washingon Av., SanJose, United States'),
(10004, 'jane226', 'jane@example.com', 'jane', '10004 Washingon Av., SanJose, United States'),
(10005, 'keiko226', 'keiko@example.com', 'keiko', '10005 Washingon Av., SanJose, United States'),
(10006, 'fred226', 'fred@example.com', 'fred', '10006 Washingon Av., SanJose, United States'),
(10007, 'woody226', 'woody@example.com', 'woody', '10007 Washingon Av., SanJose, United States'),
(10008, 'marine226', 'marine@example.com', 'marine', '10008 Washingon Av., SanJose, United States'),
(10009, 'barbara226', 'barbara@example.com', 'barbara', '10009 Washingon Av., SanJose, United States'),
(10010, 'laura226', 'laura@example.com', 'laura', '10010 Washingon Av., SanJose, United States'),
(10011, 'ichiro226', 'ichiro@example.com', 'ichiro', '10011 Washingon Av., SanJose, United States'),
(10012, 'ralph226', 'ralph@example.com', 'ralph', '10012 Washingon Av., SanJose, United States'),
(10013, 'dave226', 'dave@example.com', 'dave', '10013 Washingon Av., SanJose, United States'),
(10014, 'charlie226', 'charlie@example.com', 'charlie', '10014 Washingon Av., SanJose, United States'),
(10015, 'peter226', 'peter@example.com', 'peter', '10015 Washingon Av., SanJose, United States'),
(10016, 'elc226', 'elc@example.com', 'elc', '10016 Washingon Av., SanJose, United States'),
(10017, 'neil226', 'neil@example.com', 'neil', '10017 Washingon Av., SanJose, United States'),
(10018, 'elena226', 'elena@example.com', 'elena', '10018 Washingon Av., SanJose, United States'),
(10019, 'erika226', 'erika@example.com', 'erika', '10019 Washingon Av., SanJose, United States');

-- --------------------------------------------------------

--
-- Table structure for table `UserAlbum`
--

CREATE TABLE IF NOT EXISTS `UserAlbum` (
  `user album_id` int(25) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserAlbum`
--

INSERT INTO `UserAlbum` (`user album_id`, `title`) VALUES
(601, 'Blader'),
(602, 'Surfer'),
(603, 'Cruze'),
(604, 'Swift');

-- --------------------------------------------------------

--
-- Table structure for table `UserAlbumSong`
--

CREATE TABLE IF NOT EXISTS `UserAlbumSong` (
  `user album_song_id` int(64) NOT NULL,
  `song_id` int(64) NOT NULL,
  `user_album_id` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserAlbumSong`
--

INSERT INTO `UserAlbumSong` (`user album_song_id`, `song_id`, `user_album_id`) VALUES
(310, 320, 333),
(311, 321, 334),
(312, 324, 335),
(315, 325, 340);

-- --------------------------------------------------------

--
-- Table structure for table `Video`
--

CREATE TABLE IF NOT EXISTS `Video` (
  `video_id` int(32) NOT NULL,
  `data` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Album`
--
ALTER TABLE `Album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `AlbumSong`
--
ALTER TABLE `AlbumSong`
  ADD PRIMARY KEY (`album_song_id`);

--
-- Indexes for table `Artist`
--
ALTER TABLE `Artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `ArtistAlbum`
--
ALTER TABLE `ArtistAlbum`
  ADD PRIMARY KEY (`artist_album_id`);

--
-- Indexes for table `ArtistPerson`
--
ALTER TABLE `ArtistPerson`
  ADD PRIMARY KEY (`artist_person_id`);

--
-- Indexes for table `ArtistSong`
--
ALTER TABLE `ArtistSong`
  ADD PRIMARY KEY (`artist_song_id`);

--
-- Indexes for table `Audio`
--
ALTER TABLE `Audio`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `History`
--
ALTER TABLE `History`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `HistorySong`
--
ALTER TABLE `HistorySong`
  ADD PRIMARY KEY (`history_song_id`);

--
-- Indexes for table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `Jukebox`
--
ALTER TABLE `Jukebox`
  ADD PRIMARY KEY (`jukebox_id`);

--
-- Indexes for table `JukeBoxUserAlbum`
--
ALTER TABLE `JukeBoxUserAlbum`
  ADD PRIMARY KEY (`jukebox_user_album_id`);

--
-- Indexes for table `Lyrics`
--
ALTER TABLE `Lyrics`
  ADD PRIMARY KEY (`lyrics_id`);

--
-- Indexes for table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `Publisher`
--
ALTER TABLE `Publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`review_Id`);

--
-- Indexes for table `Song`
--
ALTER TABLE `Song`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `Tag`
--
ALTER TABLE `Tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `UserAlbum`
--
ALTER TABLE `UserAlbum`
  ADD PRIMARY KEY (`user album_id`);

--
-- Indexes for table `UserAlbumSong`
--
ALTER TABLE `UserAlbumSong`
  ADD PRIMARY KEY (`user album_song_id`);

--
-- Indexes for table `Video`
--
ALTER TABLE `Video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `History`
--
ALTER TABLE `History`
  MODIFY `history_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `HistorySong`
--
ALTER TABLE `HistorySong`
  MODIFY `history_song_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=503;
--
-- AUTO_INCREMENT for table `JukeBoxUserAlbum`
--
ALTER TABLE `JukeBoxUserAlbum`
  MODIFY `jukebox_user_album_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Lyrics`
--
ALTER TABLE `Lyrics`
  MODIFY `lyrics_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `Person`
--
ALTER TABLE `Person`
  MODIFY `person_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10020;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
