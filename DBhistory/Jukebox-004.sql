-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2015 at 09:37 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `226Project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Album`
--

CREATE TABLE IF NOT EXISTS `Album` (
  `album_id` int(50) NOT NULL,
  `title` varchar(256) NOT NULL,
  `released_date` date NOT NULL,
  `cover_image_id` int(60) NOT NULL,
  `publisher_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Album`
--

INSERT INTO `Album` (`album_id`, `title`, `released_date`, `cover_image_id`, `publisher_id`) VALUES
(1300, 'Say', '2008-08-26', 1302, 1301),
(1303, 'Edge of Desire', '2011-04-19', 1304, 1305),
(1306, 'Alien', '2013-11-18', 1307, 1308),
(1309, 'Everytime', '2009-10-24', 1310, 1311),
(1315, 'Blank Space', '2014-11-10', 1316, 1317),
(1318, 'Style', '2015-02-13', 1375, 1319),
(1320, 'Try', '2012-10-10', 1321, 1322),
(1323, 'Trouble', '2010-10-19', 1325, 1324),
(1329, 'Your Type', '2015-11-03', 1330, 1331),
(1332, 'Good Time', '2012-07-24', 1333, 1334);

-- --------------------------------------------------------

--
-- Table structure for table `AlbumSong`
--

CREATE TABLE IF NOT EXISTS `AlbumSong` (
  `album_song_id` int(50) NOT NULL,
  `song_id` int(50) NOT NULL,
  `album_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AlbumSong`
--

INSERT INTO `AlbumSong` (`album_song_id`, `song_id`, `album_id`) VALUES
(1062, 1063, 1064),
(1065, 1066, 1067),
(1068, 1069, 1070),
(1071, 1072, 1073),
(1074, 1075, 1076),
(1077, 1078, 1079),
(1080, 1081, 1082),
(1083, 1084, 1085),
(1086, 1087, 1088),
(1089, 1090, 1091);

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE IF NOT EXISTS `Artist` (
  `artist_id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Artist`
--

INSERT INTO `Artist` (`artist_id`, `name`) VALUES
(1001, 'John Mayer'),
(1002, 'P!nk'),
(1003, 'Carly Rae Jepsen'),
(1004, 'Sara Evans'),
(1005, 'Taylor Swift'),
(1006, 'Gipsy Kings'),
(1007, 'Britney Spears'),
(1008, 'Queen'),
(1009, 'Zedd'),
(1010, 'Van Halen');

-- --------------------------------------------------------

--
-- Table structure for table `ArtistAlbum`
--

CREATE TABLE IF NOT EXISTS `ArtistAlbum` (
  `artist_album_id` int(50) NOT NULL,
  `artist_id` int(50) NOT NULL,
  `album_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ArtistAlbum`
--

INSERT INTO `ArtistAlbum` (`artist_album_id`, `artist_id`, `album_id`) VALUES
(1041, 1042, 1043),
(1044, 1045, 1046),
(1047, 1048, 1049),
(1050, 1051, 1052),
(1053, 1054, 1055),
(1056, 1057, 1058),
(1059, 1060, 1061),
(1062, 1063, 1064),
(1065, 1066, 1067),
(1068, 1069, 1070);

-- --------------------------------------------------------

--
-- Table structure for table `ArtistPerson`
--

CREATE TABLE IF NOT EXISTS `ArtistPerson` (
  `artist_person_id` int(50) NOT NULL,
  `artist_id` int(50) NOT NULL,
  `person_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ArtistPerson`
--

INSERT INTO `ArtistPerson` (`artist_person_id`, `artist_id`, `person_id`) VALUES
(1020, 1567, 12334),
(1023, 1024, 1025),
(1027, 1028, 1029),
(1030, 1031, 1032),
(1034, 1035, 1036),
(1076, 1077, 1078),
(1111, 12334, 10334),
(1113, 14567, 13349),
(1356, 1445, 17734),
(14789, 14677, 12256);

-- --------------------------------------------------------

--
-- Table structure for table `Audio`
--

CREATE TABLE IF NOT EXISTS `Audio` (
  `audio_id` int(50) NOT NULL,
  `data` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Audio`
--

INSERT INTO `Audio` (`audio_id`, `data`) VALUES
(1200, 'https://www.youtube.com/watch?v=-CmadmM5cOk'),
(1201, 'https://www.youtube.com/watch?v=e-ORhEE9VVg'),
(1202, 'https://www.youtube.com/watch?v=N5EnGwXV_Pg'),
(1203, 'https://www.youtube.com/watch?v=20Ov0cDPZy8'),
(1204, 'https://www.youtube.com/watch?v=C-u5WLJ9Yk4'),
(1205, 'https://www.youtube.com/watch?v=LOZuxwVk7TU'),
(1206, 'https://www.youtube.com/watch?v=yTCDVfMz15M'),
(1207, 'https://www.youtube.com/watch?v=ao6KWhDnnBQ'),
(1208, 'https://www.youtube.com/watch?v=8xvhutWc67k'),
(1209, 'https://www.youtube.com/watch?v=lexeFtDREPg');

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE IF NOT EXISTS `Image` (
  `image_id` int(50) NOT NULL,
  `data` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Image`
--

INSERT INTO `Image` (`image_id`, `data`) VALUES
(1215, 'http://ecx.images-amazon.com/images/I/51u8qbVkCdL.jpg'),
(1216, 'https://upload.wikimedia.org/wikipedia/en/2/21/Britney_Spears_Toxic.png'),
(1217, 'http://www.popshack.com/wp-content/uploads/Britney-Spears-Baby-One-More-Time-2010-Version-FanMade-Single-Cover-Made-by-bmfantasy.jpg'),
(1218, 'http://i0.wp.com/songspksongspk.in/wp-content/uploads/Taylor-Swift-Blank-Space.jpg'),
(1219, 'http://farm8.static.flickr.com/7523/15428326383_aa0d77a07b.jpg'),
(1220, 'http://www.josepvinaixa.com/blog/wp-content/uploads/2012/08/Pnk-Try-2012.png'),
(1221, 'http://41.media.tumblr.com/tumblr_m678ctzXvX1ryx5vyo1_1280.jpg'),
(1222, 'https://upload.wikimedia.org/wikipedia/en/a/ad/Carly_Rae_Jepsen_-_Call_Me_Maybe.png'),
(1223, 'http://ecx.images-amazon.com/images/I/51jUmViyxFL.jpg'),
(1224, 'http://www.billboard.com/files/sara-evans-slowmedown-cover_0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Lyrics`
--

CREATE TABLE IF NOT EXISTS `Lyrics` (
  `lyrics_id` int(50) NOT NULL,
  `text` text NOT NULL,
  `tag_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Lyrics`
--

INSERT INTO `Lyrics` (`lyrics_id`, `text`, `tag_id`) VALUES
(1093, 'FreeFallin''- She''s a good girl, loves her mamaLoves Jesus and America too\r\nShes a good girl, crazy ''bout Elvis\r\nLoves horses and her boyfriend too\r\n\r\n', 'Free Fallin'''),
(1094, 'Your Body Is A Wonderland-We got the afternoon\r\nYou got this room for two\r\nOne thing I''ve left to do\r\nDiscover me\r\nDiscovering you', 'Your Body Is A Wonderland'),
(1095, 'Baby One More Time-Oh baby, baby\r\nOh baby, baby\r\nOh baby, baby\r\nHow was I supposed to know\r\nThat something wasn''t right here\r\nOh baby baby\r\nI shouldn''t have let you go\r\nAnd now you''re out of sight, yeah\r\nShow me, how you want it to be\r\nTell me baby\r\n''Cause I need to know now what we''ve got', 'Baby One More Time'),
(1096, 'Toxic-Baby, can’t you see\r\nI’m calling\r\nA guy like you\r\nShould wear a warning\r\nIt’s dangerous\r\nI’m fallin’', 'Toxic'),
(1097, 'Blank Space-Nice to meet you\r\nWhere you been?\r\nI could show you incredible things\r\nMagic, madness, heaven, sin\r\nSaw you there and I thought oh my god\r\nLook at that face, you look like my next mistake\r\n\r\n\r\n', 'Blank Space'),
(1098, 'Style-Midnight, you come and pick me up\r\nNo headlights\r\nLong drive, could end in burning flames or paradise\r\nFade into view, it''s been a while since I have even heard from you\r\nI should just tell you to leave cause I\r\nKnow exactly where it leads but I\r\nWatch us go round and round each time', 'Style'),
(1099, 'Try-Ever wonder about what he''s doing\r\nHow it all turned to lies\r\nSometimes I think? that it''s better to never ask why\r\nWhere there is desire\r\nThere is gonna be a flame\r\nWhere there is a flame\r\nSomeone''s bound to get burned\r\nBut just because it burns\r\nDoesn''t mean you''re gonna die\r\nYou''ve gotta get up and try try try\r\nGotta get up and try try try\r\nYou gotta get up and try try try\r\n\r\n\r\n', 'Try'),
(1100, 'I don''t wanna be the girl who laughs the loudest\r\nOr the girl who never wants to be alone\r\nCause I''m the only one you know in the world that won''t be home\r\n\r\nAh, the sun is blinding\r\nI stayed up again\r\nOh, I am finding\r\nThat that''s not the way I want my story to end\r\n\r\n\r\n\r\n', 'Sober'),
(1120, 'Born To Fly-I''ve been tellin'' my dreams to the scarecrow\r\n''Bout the places that I''d like to see\r\nI said, friend do you think I''ll ever get there\r\nAh, but he just stands there smilin'' back at me\r\n\r\nSo I confessed my sins to the preacher\r\nAbout the love I''ve been prayin'' to find\r\nIs there a brown eyed boy in my future, yeah\r\nHe says. girl you''ve got nothin'' but time', 'Born To Fly'),
(1121, 'Slow Me Down-The wheels are turning in my mind\r\nDon''t wanna leave but I might this time\r\nSeconds from whispering goodbye\r\nYeah the wheels are turning in my mind\r\n\r\nIf all that''s left to do is walk away\r\nThen baby I''m as gone as yesterday\r\nBut if there''s something you still need to say\r\nYou need to say it now, hurry up and slow me down\r\nSlow me down', 'Slow Me Down');

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE IF NOT EXISTS `Person` (
  `person_id` int(50) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`person_id`, `name`) VALUES
(1742, 'Jack Ma'),
(1743, 'Rahat Fateh Ali Khan'),
(1744, 'Palash Sen'),
(1745, 'Jennifer Wingett'),
(1746, 'Jill Sue'),
(1747, 'Raj Singh'),
(1748, 'Dorothy Rox'),
(1749, 'Jim Parsons'),
(1750, 'Tom Cruise'),
(1751, 'Roy Shawn');

-- --------------------------------------------------------

--
-- Table structure for table `Publisher`
--

CREATE TABLE IF NOT EXISTS `Publisher` (
  `publisher_id` int(50) NOT NULL,
  `name` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Publisher`
--

INSERT INTO `Publisher` (`publisher_id`, `name`, `address`) VALUES
(1900, 'Christian Karlsson', '1471 S Crest Dr Los Angeles, CA\r\nBeverlywood, Los Angeles, CA 90035'),
(1901, 'Max Martin', '1404 South Kenmore Avenue, Los Angeles, CA. '),
(1902, 'Moulin Rouge!', '233 Kelton St #12\r\nBoston, MA 02134 (Brighton)'),
(1903, 'Steve Jordan', '2707 Yorkhill Dr\r\nArlington, TX 76001 (Southwest)'),
(1904, 'Chad Franscoviak', '916 Cattail Dr\r\nArlington, TX 76001 (Southeast)'),
(1905, 'Charlie Daniels', '255 W 92nd St #3B\r\nNew York, NY 10025'),
(1906, 'Dolly Parton', '220 E 54th St #12D\r\nNew York, NY 10022'),
(1907, 'Annie Grease', '675 Academy St #6A\r\nNew York, NY 10034'),
(1908, 'Sara Evans', '28 Whitman St #2\r\nBoston, MA 02124'),
(1910, 'Michael Anthony', '553 E Rio Grande St\r\nPasadena, CA 91104');

-- --------------------------------------------------------

--
-- Table structure for table `Tag`
--

CREATE TABLE IF NOT EXISTS `Tag` (
  `tag_id` int(50) NOT NULL,
  `keyword` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tag`
--

INSERT INTO `Tag` (`tag_id`, `keyword`) VALUES
(1102, 'The wheels'),
(1103, 'My dreams'),
(1104, 'Loves horses'),
(1105, 'One mile '),
(1106, 'Oh baby'),
(1107, 'It’s dangerous'),
(1108, 'Gotta get up'),
(1109, 'I''m safe'),
(1110, 'I could show'),
(1111, 'No headlights');

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
-- Indexes for table `Audio`
--
ALTER TABLE `Audio`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`image_id`);

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
-- Indexes for table `Tag`
--
ALTER TABLE `Tag`
  ADD PRIMARY KEY (`tag_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
