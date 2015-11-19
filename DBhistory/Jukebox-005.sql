-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2015 at 07:58 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `AlbumSong`
--

CREATE TABLE IF NOT EXISTS `AlbumSong` (
  `album_song_id` int(32) NOT NULL,
  `song_id` int(32) NOT NULL,
  `album_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE IF NOT EXISTS `Artist` (
  `artist_id` int(32) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ArtistAlbum`
--

CREATE TABLE IF NOT EXISTS `ArtistAlbum` (
  `artist_album_id` int(32) NOT NULL,
  `artist_id` int(32) NOT NULL,
  `album_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ArtistPerson`
--

CREATE TABLE IF NOT EXISTS `ArtistPerson` (
  `artist_person_id` int(32) NOT NULL,
  `artist_id` int(32) NOT NULL,
  `person_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ArtistSong`
--

CREATE TABLE IF NOT EXISTS `ArtistSong` (
  `artist_song_id` int(32) NOT NULL,
  `artist_id` int(32) NOT NULL,
  `song_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `genre_id` int(10) NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`genre_id`, `type`) VALUES
(1003, 'Classic'),
(1002, 'Jazz'),
(1005, 'Other'),
(1000, 'Pop'),
(1004, 'R&B'),
(1001, 'Rock');

-- --------------------------------------------------------

--
-- Table structure for table `History`
--

CREATE TABLE IF NOT EXISTS `History` (
  `history_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `HistorySong`
--

CREATE TABLE IF NOT EXISTS `HistorySong` (
  `history_song_id` int(4) NOT NULL,
  `played_at` varchar(15) NOT NULL,
  `history_id` int(4) NOT NULL,
  `song_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE IF NOT EXISTS `Image` (
  `image_id` int(32) NOT NULL,
  `data` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `jukebox_id` int(4) NOT NULL,
  `user_album_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `JukeBoxUserAlbum`
--

INSERT INTO `JukeBoxUserAlbum` (`jukebox_user_album_id`, `jukebox_id`, `user_album_id`) VALUES
(1000, 1000, 1000),
(1001, 1000, 1001),
(1002, 1000, 1002),
(1003, 1001, 1002),
(1004, 1001, 1003),
(1005, 1001, 1004),
(1006, 1002, 1004),
(1007, 1002, 1005),
(1008, 1002, 1006),
(1009, 1003, 1006),
(1010, 1003, 1007),
(1011, 1003, 1008),
(1012, 1004, 1008),
(1013, 1004, 1009),
(1014, 1004, 1010),
(1015, 1005, 1010),
(1016, 1005, 1011),
(1017, 1005, 1012),
(1018, 1006, 1012),
(1019, 1006, 1013),
(1020, 1006, 1014),
(1021, 1007, 1014),
(1022, 1007, 1015),
(1023, 1007, 1016),
(1024, 1008, 1016),
(1025, 1008, 1017),
(1026, 1008, 1018),
(1027, 1009, 1018),
(1028, 1009, 1019),
(1029, 1009, 1020),
(1030, 1010, 1020),
(1031, 1010, 1021),
(1032, 1010, 1022),
(1033, 1011, 1022),
(1034, 1011, 1023),
(1035, 1011, 1024),
(1036, 1012, 1024),
(1037, 1012, 1025),
(1038, 1012, 1026),
(1039, 1013, 1026),
(1040, 1013, 1027),
(1041, 1013, 1028),
(1042, 1014, 1028),
(1043, 1014, 1029),
(1044, 1014, 1030),
(1045, 1015, 1030),
(1046, 1015, 1031),
(1047, 1015, 1032),
(1048, 1016, 1032),
(1049, 1016, 1033),
(1050, 1016, 1034),
(1051, 1017, 1034),
(1052, 1017, 1035),
(1053, 1017, 1036),
(1054, 1018, 1036),
(1055, 1018, 1037),
(1056, 1018, 1038),
(1057, 1019, 1038),
(1058, 1019, 1039),
(1059, 1019, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `Lyrics`
--

CREATE TABLE IF NOT EXISTS `Lyrics` (
  `lyrics_id` int(4) NOT NULL,
  `text` text NOT NULL,
  `tag_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE IF NOT EXISTS `Person` (
  `person_id` int(4) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Publisher`
--

CREATE TABLE IF NOT EXISTS `Publisher` (
  `publisher_id` int(64) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `Song`
--

CREATE TABLE IF NOT EXISTS `Song` (
  `song_id` int(10) NOT NULL,
  `title` varchar(64) NOT NULL,
  `duration` int(8) NOT NULL,
  `language` varchar(16) NOT NULL,
  `genre_id` int(10) NOT NULL,
  `lyrics_id` int(10) NOT NULL,
  `audio_id` int(10) NOT NULL,
  `video_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Song`
--

INSERT INTO `Song` (`song_id`, `title`, `duration`, `language`, `genre_id`, `lyrics_id`, `audio_id`, `video_id`) VALUES
(1000, 'Neon', 263, 'English', 1, 0, 0, 0),
(1001, 'Say', 223, 'English', 1, 0, 0, 0),
(1002, 'Circus', 213, 'English', 1, 0, 0, 0),
(1003, 'Womanizer', 226, 'English', 1, 0, 0, 0),
(1004, 'I''m Not A Girl, Not Yet A Woman', 228, 'English', 1, 0, 0, 0),
(1005, 'Shake It Off', 241, 'English', 1, 0, 0, 0),
(1006, 'Wildest Dreams', 234, 'English', 1, 0, 0, 0),
(1007, 'Just Give Me a Reason', 242, 'English', 1, 0, 0, 0),
(1008, 'Call Me Maybe', 199, 'English', 1, 0, 0, 0),
(1009, 'A Little Bit Stronger', 278, 'English', 1, 0, 0, 0),
(1010, 'Bamboleo', 205, 'English', 1, 0, 0, 0),
(1011, 'Bohemian Rhapsody', 366, 'English', 1, 0, 0, 0),
(1012, 'We Will Rock You', 134, 'English', 1, 0, 0, 0),
(1013, 'Clarity', 275, 'English', 1, 0, 0, 0),
(1014, 'Jump', 241, 'English', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Tag`
--

CREATE TABLE IF NOT EXISTS `Tag` (
  `tag_id` int(64) NOT NULL,
  `keyword` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`user_id`, `password`, `email`, `name`, `address`) VALUES
(1, 'admin226', 'admin@example.com', 'admin', '1 Washinton Av., SanJose, UnitedStates'),
(1000, 'mary226', 'mary@example.com', 'mary', '1000 Washingon Av., SanJose, United States'),
(1001, 'taku226', 'taku@example.com', 'taku', '1001 Washingon Av., SanJose, United States'),
(1002, 'omkar226', 'omkar@example.com', 'omkar', '1002 Washingon Av., SanJose, United States'),
(1003, 'henry226', 'henry@example.com', 'henry', '1003 Washingon Av., SanJose, United States'),
(1004, 'jane226', 'jane@example.com', 'jane', '1004 Washingon Av., SanJose, United States'),
(1005, 'keiko226', 'keiko@example.com', 'keiko', '1005 Washingon Av., SanJose, United States'),
(1006, 'fred226', 'fred@example.com', 'fred', '1006 Washingon Av., SanJose, United States'),
(1007, 'woody226', 'woody@example.com', 'woody', '1007 Washingon Av., SanJose, United States'),
(1008, 'marine226', 'marine@example.com', 'marine', '1008 Washingon Av., SanJose, United States'),
(1009, 'barbara226', 'barbara@example.com', 'barbara', '1009 Washingon Av., SanJose, United States'),
(1010, 'laura226', 'laura@example.com', 'laura', '1010 Washingon Av., SanJose, United States'),
(1011, 'ichiro226', 'ichiro@example.com', 'ichiro', '1011 Washingon Av., SanJose, United States'),
(1012, 'ralph226', 'ralph@example.com', 'ralph', '1012 Washingon Av., SanJose, United States'),
(1013, 'dave226', 'dave@example.com', 'dave', '1013 Washingon Av., SanJose, United States'),
(1014, 'charlie226', 'charlie@example.com', 'charlie', '1014 Washingon Av., SanJose, United States'),
(1015, 'peter226', 'peter@example.com', 'peter', '1015 Washingon Av., SanJose, United States'),
(1016, 'elc226', 'elc@example.com', 'elc', '1016 Washingon Av., SanJose, United States'),
(1017, 'neil226', 'neil@example.com', 'neil', '1017 Washingon Av., SanJose, United States'),
(1018, 'elena226', 'elena@example.com', 'elena', '1018 Washingon Av., SanJose, United States'),
(1019, 'erika226', 'erika@example.com', 'erika', '1019 Washingon Av., SanJose, United States');

-- --------------------------------------------------------

--
-- Table structure for table `UserAlbum`
--

CREATE TABLE IF NOT EXISTS `UserAlbum` (
  `user_album_id` int(4) NOT NULL,
  `title` varchar(64) NOT NULL,
  `user_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserAlbum`
--

INSERT INTO `UserAlbum` (`user_album_id`, `title`, `user_id`) VALUES
(1000, 'Trip to New York', 1000),
(1001, 'I love Red', 1000),
(1002, 'Trip to Japan', 1001),
(1003, 'I love Orange', 1001),
(1004, 'Trip to China', 1002),
(1005, 'I love Yellow', 1002),
(1006, 'Trip to Egypt', 1003),
(1007, 'I love Green', 1003),
(1008, 'Trip to Las Vegas', 1004),
(1009, 'I love Blue', 1004),
(1010, 'Trip to New Orleans', 1005),
(1011, 'I love Navy', 1005),
(1012, 'Trip to Paris', 1006),
(1013, 'I love Purple', 1006),
(1014, 'Trip to Roma', 1007),
(1015, 'I love Pink', 1007),
(1016, 'Trip to Germany', 1008),
(1017, 'I love Light Red', 1008),
(1018, 'Trip to Reno', 1009),
(1019, 'I love Light Orange', 1009),
(1020, 'Trip to Denver', 1010),
(1021, 'I love Light Yellow', 1010),
(1022, 'Trip to Portland', 1011),
(1023, 'I love Light Green', 1011),
(1024, 'Trip to Dallas', 1012),
(1025, 'I love Light Blue', 1012),
(1026, 'Trip to White Sands', 1013),
(1027, 'I love Ligh Navy', 1013),
(1028, 'Trip to Great Monument', 1014),
(1029, 'I love Light Purple', 1014),
(1030, 'Trip to Horse shoe bend', 1015),
(1031, 'I love Light Pink', 1015),
(1032, 'Trip to Chicago', 1016),
(1033, 'I love Deep Red', 1016),
(1034, 'Trip to Boston', 1017),
(1035, 'I love Deep Orange', 1017),
(1036, 'Trip to Florida', 1018),
(1037, 'I love Deep Yellow', 1018),
(1038, 'Trip to Los Angels', 1019),
(1039, 'I love Deep Green', 1019);

-- --------------------------------------------------------

--
-- Table structure for table `UserAlbumSong`
--

CREATE TABLE IF NOT EXISTS `UserAlbumSong` (
  `user_album_song_id` int(10) NOT NULL,
  `user_album_id` int(10) NOT NULL,
  `song_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserAlbumSong`
--

INSERT INTO `UserAlbumSong` (`user_album_song_id`, `user_album_id`, `song_id`) VALUES
(1000, 1001, 1002),
(1001, 1003, 1004),
(1002, 1005, 1006),
(1003, 1007, 1008),
(1004, 1009, 1010),
(1005, 1011, 1012),
(1006, 1013, 1014);

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
  ADD PRIMARY KEY (`genre_id`),
  ADD UNIQUE KEY `type` (`type`);

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
  ADD PRIMARY KEY (`user_album_id`);

--
-- Indexes for table `UserAlbumSong`
--
ALTER TABLE `UserAlbumSong`
  ADD PRIMARY KEY (`user_album_song_id`);

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
  MODIFY `history_id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `HistorySong`
--
ALTER TABLE `HistorySong`
  MODIFY `history_song_id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Lyrics`
--
ALTER TABLE `Lyrics`
  MODIFY `lyrics_id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Person`
--
ALTER TABLE `Person`
  MODIFY `person_id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1020;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
