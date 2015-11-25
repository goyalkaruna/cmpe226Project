-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2015 at 10:57 AM
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
(1000, 'Say', '2008-08-26', 1001, 1002),
(1001, 'Neon', '2011-04-19', 1002, 1003),
(1002, 'Circus', '2013-11-18', 1005, 1005),
(1003, 'Womanizer', '2009-10-24', 1004, 1009),
(1004, 'I''m Not A Girl,Not Yet A Woman', '2014-11-10', 1007, 1020),
(1005, 'Shake It Off', '2015-02-13', 1008, 1075),
(1006, 'Wildest Dreams', '2012-10-10', 1004, 1076),
(1007, 'Just Give Me a Reason', '2010-10-19', 1008, 1077),
(1008, 'Call Me Maybe', '2015-11-03', 1006, 1078),
(1009, 'Clarity', '2012-07-24', 1008, 1079);

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
(1000, 1001, 1000),
(1003, 1004, 1001),
(1006, 1007, 1002),
(1009, 1003, 1003),
(1012, 1006, 1004),
(1015, 1012, 1005),
(1018, 1006, 1006),
(1021, 1022, 1007),
(1024, 1015, 1008),
(1027, 1002, 1009);

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
(1000, 'John Mayer'),
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
(1000, 1000, 1000),
(1002, 1002, 1001),
(1005, 1003, 1002),
(1006, 1004, 1003),
(1007, 1005, 1004),
(1008, 1006, 1005),
(1009, 1007, 1006),
(1010, 1008, 1007),
(1011, 1009, 1008),
(1012, 1010, 1009);

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
(1000, 1000, 1001),
(1001, 1002, 1002),
(1004, 1003, 1003),
(1030, 1004, 1004),
(1034, 1005, 1006),
(1045, 1006, 1011),
(1046, 1007, 1032),
(1076, 1008, 1045),
(1078, 1009, 1077),
(1079, 1010, 1078);

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
(1000, 'https://www.youtube.com/watch?v=-CmadmM5cOk'),
(1001, 'https://www.youtube.com/watch?v=e-ORhEE9VVg'),
(1002, 'https://www.youtube.com/watch?v=N5EnGwXV_Pg'),
(1003, 'https://www.youtube.com/watch?v=20Ov0cDPZy8'),
(1004, 'https://www.youtube.com/watch?v=C-u5WLJ9Yk4'),
(1005, 'https://www.youtube.com/watch?v=LOZuxwVk7TU'),
(1006, 'https://www.youtube.com/watch?v=yTCDVfMz15M'),
(1007, 'https://www.youtube.com/watch?v=ao6KWhDnnBQ'),
(1008, 'https://www.youtube.com/watch?v=8xvhutWc67k'),
(1009, 'https://www.youtube.com/watch?v=lexeFtDREPg');

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
(1000, 'http://ecx.images-amazon.com/images/I/51u8qbVkCdL.jpg'),
(1030, 'https://upload.wikimedia.org/wikipedia/en/2/21/Britney_Spears_Toxic.png'),
(1031, 'http://www.popshack.com/wp-content/uploads/Britney-Spears-Baby-One-More-Time-2010-Version-FanMade-Single-Cover-Made-by-bmfantasy.jpg'),
(1032, 'http://i0.wp.com/songspksongspk.in/wp-content/uploads/Taylor-Swift-Blank-Space.jpg'),
(1033, 'http://farm8.static.flickr.com/7523/15428326383_aa0d77a07b.jpg'),
(1034, 'http://www.josepvinaixa.com/blog/wp-content/uploads/2012/08/Pnk-Try-2012.png'),
(1035, 'http://41.media.tumblr.com/tumblr_m678ctzXvX1ryx5vyo1_1280.jpg'),
(1036, 'https://upload.wikimedia.org/wikipedia/en/a/ad/Carly_Rae_Jepsen_-_Call_Me_Maybe.png'),
(1037, 'http://ecx.images-amazon.com/images/I/51jUmViyxFL.jpg'),
(1038, 'http://www.billboard.com/files/sara-evans-slowmedown-cover_0.jpg');

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
(1000, 'FreeFallin''- She''s a good girl, loves her mamaLoves Jesus and America too\r\nShes a good girl, crazy ''bout Elvis\r\nLoves horses and her boyfriend too\r\n\r\n', 'Free Fallin'''),
(1002, 'Your Body Is A Wonderland-We got the afternoon\r\nYou got this room for two\r\nOne thing I''ve left to do\r\nDiscover me\r\nDiscovering you', 'Your Body Is A Wonderland'),
(1003, 'Baby One More Time-Oh baby, baby\r\nOh baby, baby\r\nOh baby, baby\r\nHow was I supposed to know\r\nThat something wasn''t right here\r\nOh baby baby\r\nI shouldn''t have let you go\r\nAnd now you''re out of sight, yeah\r\nShow me, how you want it to be\r\nTell me baby\r\n''Cause I need to know now what we''ve got', 'Baby One More Time'),
(1004, 'Toxic-Baby, can’t you see\r\nI’m calling\r\nA guy like you\r\nShould wear a warning\r\nIt’s dangerous\r\nI’m fallin’', 'Toxic'),
(1005, 'Blank Space-Nice to meet you\r\nWhere you been?\r\nI could show you incredible things\r\nMagic, madness, heaven, sin\r\nSaw you there and I thought oh my god\r\nLook at that face, you look like my next mistake\r\n\r\n\r\n', 'Blank Space'),
(1006, 'Style-Midnight, you come and pick me up\r\nNo headlights\r\nLong drive, could end in burning flames or paradise\r\nFade into view, it''s been a while since I have even heard from you\r\nI should just tell you to leave cause I\r\nKnow exactly where it leads but I\r\nWatch us go round and round each time', 'Style'),
(1007, 'Try-Ever wonder about what he''s doing\r\nHow it all turned to lies\r\nSometimes I think? that it''s better to never ask why\r\nWhere there is desire\r\nThere is gonna be a flame\r\nWhere there is a flame\r\nSomeone''s bound to get burned\r\nBut just because it burns\r\nDoesn''t mean you''re gonna die\r\nYou''ve gotta get up and try try try\r\nGotta get up and try try try\r\nYou gotta get up and try try try\r\n\r\n\r\n', 'Try'),
(1008, 'I don''t wanna be the girl who laughs the loudest\r\nOr the girl who never wants to be alone\r\nCause I''m the only one you know in the world that won''t be home\r\n\r\nAh, the sun is blinding\r\nI stayed up again\r\nOh, I am finding\r\nThat that''s not the way I want my story to end\r\n\r\n\r\n\r\n', 'Sober'),
(1009, 'Born To Fly-I''ve been tellin'' my dreams to the scarecrow\r\n''Bout the places that I''d like to see\r\nI said, friend do you think I''ll ever get there\r\nAh, but he just stands there smilin'' back at me\r\n\r\nSo I confessed my sins to the preacher\r\nAbout the love I''ve been prayin'' to find\r\nIs there a brown eyed boy in my future, yeah\r\nHe says. girl you''ve got nothin'' but time', 'Born To Fly'),
(1010, 'Slow Me Down-The wheels are turning in my mind\r\nDon''t wanna leave but I might this time\r\nSeconds from whispering goodbye\r\nYeah the wheels are turning in my mind\r\n\r\nIf all that''s left to do is walk away\r\nThen baby I''m as gone as yesterday\r\nBut if there''s something you still need to say\r\nYou need to say it now, hurry up and slow me down\r\nSlow me down', 'Slow Me Down');

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
(1001, 'Jill Sue'),
(1002, 'Palash Sen'),
(1003, 'Jack Ma'),
(1004, 'Raj Singh'),
(1006, 'Jennifer Wingett'),
(1011, 'Rahat Fateh Ali Khan'),
(1032, 'Dorothy Rox'),
(1045, 'Jim Parsons'),
(1077, 'Tom Cruise'),
(1078, 'Roy Shawn');

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
(1002, 'Christian Karlsson', '1471 S Crest Dr Los Angeles, CA\r\nBeverlywood, Los Angeles, CA 90035'),
(1003, 'Max Martin', '1404 South Kenmore Avenue, Los Angeles, CA. '),
(1005, 'Moulin Rouge!', '233 Kelton St #12\r\nBoston, MA 02134 (Brighton)'),
(1009, 'Chad Franscoviak', '916 Cattail Dr\r\nArlington, TX 76001 (Southeast)'),
(1020, 'Steve Jordan', '2707 Yorkhill Dr\r\nArlington, TX 76001 (Southwest)'),
(1075, 'Charlie Daniels', '255 W 92nd St #3B\r\nNew York, NY 10025'),
(1076, 'Dolly Parton', '220 E 54th St #12D\r\nNew York, NY 10022'),
(1077, 'Annie Grease', '675 Academy St #6A\r\nNew York, NY 10034'),
(1078, 'Sara Evans', '28 Whitman St #2\r\nBoston, MA 02124'),
(1079, 'Michael Anthony', '553 E Rio Grande St\r\nPasadena, CA 91104');

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
(1000, 'The wheels'),
(1081, 'My dreams'),
(1082, 'Loves horses'),
(1083, 'One mile '),
(1084, 'Oh baby'),
(1085, 'It’s dangerous'),
(1086, 'Gotta get up'),
(1087, 'I''m safe'),
(1088, 'I could show'),
(1089, 'No headlights');

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
