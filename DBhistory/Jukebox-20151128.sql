-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 29, 2015 at 04:18 AM
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
  `album_id` int(10) NOT NULL,
  `title` varchar(64) NOT NULL,
  `released_date` date NOT NULL,
  `cover_image_id` int(10) NOT NULL,
  `publisher_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Album`
--

INSERT INTO `Album` (`album_id`, `title`, `released_date`, `cover_image_id`, `publisher_id`) VALUES
(1000, 'Room for Squares', '2001-06-05', 1000, 1000),
(1001, 'Continuum', '2006-08-01', 1001, 1000),
(1002, 'Circus', '2008-11-28', 1002, 1001),
(1003, 'Womanizer', '2008-10-03', 1003, 1001),
(1004, 'Britney', '2001-10-31', 1004, 1001),
(1005, '1989', '2014-10-27', 1005, 1002),
(1006, 'The Truth About Love', '2012-09-14', 1006, 1003),
(1007, 'Call Me Maybe', '2012-04-17', 1007, 1004),
(1008, 'A Little Bit Stronger', '2010-09-12', 1008, 1003),
(1009, 'Rare & Unplugged', '2003-03-31', 1009, 1005),
(1010, 'A Night at the Opera', '1975-12-02', 1010, 1006),
(1011, 'News of the World', '1977-10-28', 1011, 1006),
(1012, 'Clarity', '2012-10-02', 1012, 1007),
(1013, 'Jump / House of Pain [Digital 45]', '2009-07-03', 1013, 1008);

-- --------------------------------------------------------

--
-- Table structure for table `AlbumSong`
--

CREATE TABLE IF NOT EXISTS `AlbumSong` (
  `album_song_id` int(10) NOT NULL,
  `album_id` int(10) NOT NULL,
  `song_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AlbumSong`
--

INSERT INTO `AlbumSong` (`album_song_id`, `album_id`, `song_id`) VALUES
(1000, 1000, 1000),
(1001, 1001, 1001),
(1002, 1002, 1002),
(1003, 1003, 1003),
(1004, 1004, 1004),
(1005, 1005, 1005),
(1006, 1005, 1006),
(1007, 1006, 1007),
(1008, 1007, 1008),
(1009, 1008, 1009),
(1010, 1009, 1010),
(1011, 1010, 1011),
(1012, 1011, 1012),
(1013, 1012, 1013),
(1014, 1013, 1014);

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE IF NOT EXISTS `Artist` (
  `artist_id` int(10) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Artist`
--

INSERT INTO `Artist` (`artist_id`, `name`) VALUES
(1000, 'John Mayer'),
(1001, 'P!nk'),
(1002, 'Carly Rae Jepsen'),
(1003, 'Sara Evans'),
(1004, 'Taylor Swift'),
(1005, 'Gipsy Kings'),
(1006, 'Britney Spears'),
(1007, 'Queen'),
(1008, 'Zedd'),
(1009, 'Van Halen');

-- --------------------------------------------------------

--
-- Table structure for table `ArtistAlbum`
--

CREATE TABLE IF NOT EXISTS `ArtistAlbum` (
  `artist_album_id` int(10) NOT NULL,
  `artist_id` int(10) NOT NULL,
  `album_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ArtistAlbum`
--

INSERT INTO `ArtistAlbum` (`artist_album_id`, `artist_id`, `album_id`) VALUES
(1000, 1000, 1000),
(1001, 1000, 1001),
(1002, 1006, 1002),
(1003, 1006, 1003),
(1004, 1006, 1004),
(1005, 1004, 1005),
(1006, 1001, 1006),
(1007, 1002, 1007),
(1008, 1003, 1008),
(1009, 1005, 1009),
(1010, 1007, 1010),
(1011, 1007, 1011),
(1012, 1008, 1012),
(1013, 1009, 1013);

-- --------------------------------------------------------

--
-- Table structure for table `ArtistPerson`
--

CREATE TABLE IF NOT EXISTS `ArtistPerson` (
  `artist_person_id` int(10) NOT NULL,
  `artist_id` int(10) NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1017 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ArtistPerson`
--

INSERT INTO `ArtistPerson` (`artist_person_id`, `artist_id`, `person_id`) VALUES
(1000, 1000, 1000),
(1001, 1001, 1001),
(1002, 1002, 1002),
(1003, 1003, 1003),
(1004, 1004, 1004),
(1005, 1005, 1005),
(1006, 1005, 1006),
(1007, 1006, 1007),
(1008, 1007, 1008),
(1009, 1007, 1009),
(1010, 1007, 1010),
(1011, 1007, 1011),
(1012, 1008, 1012),
(1013, 1009, 1013),
(1014, 1009, 1014),
(1015, 1009, 1015),
(1016, 1009, 1016);

-- --------------------------------------------------------

--
-- Table structure for table `ArtistSong`
--

CREATE TABLE IF NOT EXISTS `ArtistSong` (
  `artist_song_id` int(10) NOT NULL,
  `artist_id` int(10) NOT NULL,
  `song_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ArtistSong`
--

INSERT INTO `ArtistSong` (`artist_song_id`, `artist_id`, `song_id`) VALUES
(1000, 1000, 1000),
(1001, 1000, 1001),
(1002, 1006, 1002),
(1003, 1006, 1003),
(1004, 1006, 1004),
(1005, 1004, 1005),
(1006, 1004, 1006),
(1007, 1001, 1007),
(1008, 1002, 1008),
(1009, 1003, 1009),
(1010, 1005, 1010),
(1011, 1007, 1011),
(1012, 1007, 1012),
(1013, 1008, 1013),
(1014, 1009, 1014);

-- --------------------------------------------------------

--
-- Table structure for table `Audio`
--

CREATE TABLE IF NOT EXISTS `Audio` (
  `audio_id` int(10) NOT NULL,
  `data` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Audio`
--

INSERT INTO `Audio` (`audio_id`, `data`) VALUES
(1000, 'https://www.youtube.com/watch?v=hc9VXLtgw5g'),
(1001, 'https://www.youtube.com/watch?v=WQtGqmi2O2U'),
(1002, 'https://www.youtube.com/watch?v=lVhJ_A8XUgc'),
(1003, 'https://www.youtube.com/watch?v=4PrajazXCpQ'),
(1004, 'https://www.youtube.com/watch?v=IlV7RhT6zHs'),
(1005, 'https://www.youtube.com/watch?v=nfWlot6h_JM'),
(1006, 'https://www.youtube.com/watch?v=IdneKLhsWOQ'),
(1007, 'https://www.youtube.com/watch?v=OpQFFLBMEPI'),
(1008, 'https://www.youtube.com/watch?v=fWNaR-rxAic'),
(1009, 'https://www.youtube.com/watch?v=22zB6Soc2Gk'),
(1010, 'https://www.youtube.com/watch?v=mifnMC_Kn1Q'),
(1011, 'https://www.youtube.com/watch?v=fJ9rUzIMcZQ'),
(1012, 'https://www.youtube.com/watch?v=-tJYN-eG1zk'),
(1013, 'https://www.youtube.com/watch?v=IxxstCcJlsc'),
(1014, 'https://www.youtube.com/watch?v=SwYN7mTi6HM');

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE IF NOT EXISTS `Genre` (
  `genre_id` int(10) NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`genre_id`, `type`) VALUES
(1000, 'Pop'),
(1001, 'Rock'),
(1002, 'Jazz'),
(1003, 'Classic'),
(1004, 'R&B'),
(1005, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `History`
--

CREATE TABLE IF NOT EXISTS `History` (
  `history_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `History`
--

INSERT INTO `History` (`history_id`, `user_id`) VALUES
(1000, 1000),
(1001, 1001),
(1002, 1002),
(1003, 1003),
(1004, 1004),
(1005, 1005),
(1006, 1006),
(1007, 1007),
(1008, 1008),
(1009, 1009),
(1010, 1010),
(1011, 1011),
(1012, 1012),
(1013, 1013),
(1014, 1014),
(1015, 1015),
(1016, 1016),
(1017, 1017),
(1018, 1018),
(1019, 1019);

-- --------------------------------------------------------

--
-- Table structure for table `HistorySong`
--

CREATE TABLE IF NOT EXISTS `HistorySong` (
  `history_song_id` int(10) NOT NULL,
  `history_id` int(10) NOT NULL,
  `song_id` int(10) NOT NULL,
  `played_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1042 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HistorySong`
--

INSERT INTO `HistorySong` (`history_song_id`, `history_id`, `song_id`, `played_at`) VALUES
(1000, 1000, 1001, '2015-05-21 14:00:02'),
(1001, 1000, 1002, '2015-06-22 02:07:09'),
(1002, 1000, 1003, '2015-07-23 08:25:28'),
(1003, 1000, 1004, '2015-08-24 19:11:16'),
(1004, 1001, 1003, '2015-09-25 01:46:39'),
(1005, 1001, 1004, '2015-10-26 05:03:14'),
(1006, 1001, 1005, '2015-11-27 15:13:00'),
(1007, 1001, 1006, '2015-12-28 04:12:13'),
(1008, 1002, 1005, '2015-01-01 11:09:44'),
(1009, 1002, 1006, '2015-02-02 02:41:35'),
(1010, 1002, 1007, '2015-03-03 09:25:29'),
(1011, 1002, 1008, '2015-04-04 06:54:27'),
(1012, 1003, 1007, '2015-05-05 06:28:20'),
(1013, 1003, 1008, '2015-06-06 00:28:40'),
(1014, 1003, 1009, '2015-07-07 22:59:17'),
(1015, 1003, 1010, '2015-08-08 15:29:54'),
(1016, 1004, 1009, '2015-09-09 20:15:15'),
(1017, 1004, 1010, '2015-10-10 21:51:08'),
(1018, 1004, 1011, '2015-11-11 09:40:57'),
(1019, 1004, 1012, '2015-12-12 21:33:26'),
(1020, 1005, 1011, '2015-01-13 12:07:36'),
(1021, 1005, 1012, '2015-02-14 02:50:44'),
(1022, 1005, 1013, '2015-03-15 07:23:51'),
(1023, 1005, 1014, '2015-04-16 23:14:16'),
(1024, 1006, 1013, '2015-05-17 17:56:47'),
(1025, 1006, 1014, '2015-06-18 18:51:08'),
(1026, 1007, 1001, '2015-07-19 18:04:21'),
(1027, 1007, 1002, '2015-08-20 04:59:06'),
(1028, 1008, 1003, '2015-09-21 16:44:14'),
(1029, 1008, 1004, '2015-10-22 12:44:50'),
(1030, 1009, 1005, '2015-11-23 18:16:38'),
(1031, 1009, 1006, '2015-12-24 21:35:04'),
(1032, 1010, 1007, '2015-01-25 02:04:35'),
(1033, 1010, 1008, '2015-02-26 07:03:14'),
(1034, 1011, 1009, '2015-03-27 13:45:47'),
(1035, 1011, 1010, '2015-04-28 03:10:08'),
(1036, 1012, 1011, '2015-05-01 12:56:52'),
(1037, 1012, 1012, '2015-06-02 04:08:49'),
(1038, 1013, 1013, '2015-07-03 03:32:24'),
(1039, 1013, 1014, '2015-08-04 23:02:54'),
(1040, 1014, 1001, '2015-09-05 02:30:17'),
(1041, 1014, 1002, '2015-10-06 10:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE IF NOT EXISTS `Image` (
  `image_id` int(10) NOT NULL,
  `data` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Image`
--

INSERT INTO `Image` (`image_id`, `data`) VALUES
(1000, 'https://upload.wikimedia.org/wikipedia/en/5/5a/JohnMayer_RoomForSquares.jpg'),
(1001, 'https://upload.wikimedia.org/wikipedia/en/8/82/Continuum_%28album%29.png'),
(1002, 'https://upload.wikimedia.org/wikipedia/en/e/e1/Circus-_Album.png'),
(1003, 'https://upload.wikimedia.org/wikipedia/en/4/45/Britney_Spears_Womanizer.png'),
(1004, 'https://upload.wikimedia.org/wikipedia/en/0/0c/Britney_Spears_-_Britney.png'),
(1005, 'https://upload.wikimedia.org/wikipedia/en/f/f6/Taylor_Swift_-_1989.png'),
(1006, 'https://upload.wikimedia.org/wikipedia/en/7/7e/The_Truth_About_Love.png'),
(1007, 'https://upload.wikimedia.org/wikipedia/en/a/ad/Carly_Rae_Jepsen_-_Call_Me_Maybe.png'),
(1008, 'https://upload.wikimedia.org/wikipedia/en/5/55/ALittleBitStronger.jpg'),
(1009, 'http://cps-static.rovicorp.com/3/JPG_400/MI0002/547/MI0002547427.jpg'),
(1010, 'https://upload.wikimedia.org/wikipedia/en/4/4d/Queen_A_Night_At_The_Opera.png'),
(1011, 'https://upload.wikimedia.org/wikipedia/en/e/ea/Queen_News_Of_The_World.png'),
(1012, 'https://upload.wikimedia.org/wikipedia/en/5/56/Zedd_-_%22Clarity%22_%28Single%29.png'),
(1013, 'http://ecx.images-amazon.com/images/I/51HjNDsrylL._SL500_AA280_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Jukebox`
--

CREATE TABLE IF NOT EXISTS `Jukebox` (
  `jukebox_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Jukebox`
--

INSERT INTO `Jukebox` (`jukebox_id`, `user_id`) VALUES
(1000, 1000),
(1001, 1001),
(1002, 1002),
(1003, 1003),
(1004, 1004),
(1005, 1005),
(1006, 1006),
(1007, 1007),
(1008, 1008),
(1009, 1009),
(1010, 1010),
(1011, 1011),
(1012, 1012),
(1013, 1013),
(1014, 1014),
(1015, 1015),
(1016, 1016),
(1017, 1017),
(1018, 1018),
(1019, 1019);

-- --------------------------------------------------------

--
-- Table structure for table `JukeBoxUserAlbum`
--

CREATE TABLE IF NOT EXISTS `JukeBoxUserAlbum` (
  `jukebox_user_album_id` int(4) NOT NULL,
  `jukebox_id` int(4) NOT NULL,
  `user_album_id` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1060 DEFAULT CHARSET=latin1;

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
  `lyrics_id` int(10) NOT NULL,
  `text` varchar(25600) NOT NULL,
  `tag_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Lyrics`
--

INSERT INTO `Lyrics` (`lyrics_id`, `text`, `tag_id`) VALUES
(1000, 'When sky blue gets dark enough To see the colors of the city lights A trail of ruby red and diamond white Hits her like a sunrise She comes and goes and comes and goes Like no one can Tonight she''s out to lose herself And find a high on Peachtree Street From mixed drinks to techno beats it''s always Heavy into everything She comes and goes and comes and goes Like no one can She comes and goes and no one knows She''s slipping through my hands She''s always buzzing just like Neon, neon Neon, neon Who knows how long, how long, how long She can go before she burns away I can''t be her angel now You know it''s not my place to hold her down And it''s hard for me to take a stand When I would take her anyway I can She comes and goes and comes and goes Like no one can She comes and goes and no one knows She''s slipping through my hands She''s always buzzing just like Neon, neon Neon, neon Who knows how long, how long, how long She can go before she burns away', 1000),
(1001, 'Take all of your wasted honor Every little past frustration Take all of your so-called problems, Better put ''em in quotations Say what you need to say [8x] Walking like a one man army Fighting with the shadows in your head Living out the same old moment Knowing you''d be better off instead, If you could only . . .  Say what you need to say [8x] Have no fear for giving in Have no fear for giving over You''d better know that in the end It''s better to say too much Than never to say what you need to say again Even if your hands are shaking And your faith is broken Even as the eyes are closing Do it with a heart wide open (a wide heart) Say what you need to say [24x]', 1001),
(1002, 'There''s only two types of people in the world The ones that entertain, and the ones that observe Well baby I''m a put-on-a-show kinda girl Don''t like the backseat, gotta be first (oh, oh) I''m like the ringleader I call the shots (call the shots) I''m like a firecracker I make it hot When I put on a show [Bridge:] I feel the adrenaline moving through my veins (hah, hah, hah) Spotlight on me and I''m ready to break (hah, hah, hah) I''m like a performer, the dancefloor is my stage (hah, hah, hah) Better be ready, hope that ya feel the same (hah, hah, hah) [Chorus:] All the eyes on me in the center of the ring Just like a circus (ah, ah, ahaha-hah) When I crack that whip, everybody gonna trip Just like a circus (ah, ah, ahaha-hah) Don''t stand there watching me, follow me Show me what you can do Everybody let go, we can make a dancefloor Just like a circus (ah, ah, ahaha-hah, ha, ha, ha, ha, ho, ho, ho) [VERSE 2] There''s only two types of guys out there, Ones that can hang with me, and ones that are scared So baby I hope that you came prepared I run a tight ship, so beware I''m like a ring leader, I call the shots (call the shots) I''m like a fire cracker, I make it hot When I put on a show.  [Bridge] [Chorus] Let''s go..(ah, ah, ahaha-hah) Let me see what you can do..(ah, ah, ahaha-hah) I''m running this.  Yeah, like what..? [Chorus:] All the eyes on me in the center of the ring Just like a circus (ah, ah, ahaha-hah) When I crack that whip, everybody gonna trip Just like a circus (ah, ah, ahaha-hah) Don''t stand there watching me, follow me Show me what you can do Everybody let go, we can make a dancefloor Just like a circus (ah, ah, ahaha-hah) All the eyes on me in the center of the ring Just like a circus (ah, ah, ahaha-hah) When I crack that whip, everybody gonna trip Just like a circus (ah, ah, ahaha-hah) Don''t stand there watching me, follow me Show me what you can do Everybody let go, we can make a dancefloor Just like a circus (ah, ah, ahaha-hah, ha, ha, ha, ha, ho, ho, ho)', 1002),
(1003, 'Superstar Where you from, hows it going? I know you Gotta clue, what you''re doing? You can play brand new to all the other chicks out here But I know what you are, what you are, baby Look at you Gettin more than just re-up Baby, you Got all the puppets with their strings up Faking like a good one, but I call ''em like I see ''em I know what you are, what you are, baby Womanizer, Woman, Womanizer You''re a Womanizer, oh Womanizer oh You''re a Womanizer, baby You you you are, You you you are Womanizer, Womanizer, Womanizer (Womanizer) Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are You got me goin'' You''re oh so charmin'' But I can do it Womanizer Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are You say I''m crazy I got your crazy You''re nothin'' but a Womanizer Daddy-O You got the swagger of champion Too bad for you You just cant find the right companion I guess when you have one too many, makes it hard It could be easy, who you are That''s just who you are, baby Lollipop Must mistake me, you''re a sucker To think that I Would be a victim not another Say it, play it how you wanna But no way I''m ever gonna fall for you, never you, baby Womanizer, Woman, Womanizer You''re a Womanizer, oh Womanizer oh You''re a Womanizer, baby You you you are, You you you are Womanizer, Womanizer, Womanizer (Womanizer) Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are You got me goin'' You''re oh so charmin'' But I can do it You Womanizer Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are You say I''m crazy I got your crazy You''re nothin'' but a Womanizer Maybe if we both lived in a different world (Womanizer, Womanizer, Womanizer, Womanizer) It would be all good, and maybe I could be your girl, but I can''t cause we don''t Womanizer, Woman, Womanizer You''re a Womanizer, oh Womanizer oh You''re a Womanizer, baby You you you are, you you you are Womanizer, Womanizer, Womanizer (Womanizer) Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are You got me goin'' You''re oh so charmin'' But I can do it Womanizer Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are You say I''m crazy I got your crazy You''re nothin'' but a Womanizer Boy, don''t try to front I know just what you are Boy, don''t try to front I know just what you are Womanizer, Woman, Womanizer You''re a Womanizer Oh Womanizer oh You''re a Womanizer, baby', 1003),
(1004, 'I used to think', 1004),
(1005, 'I stay out too late Got nothing in my brain That''s what people say, mmm-mmm That''s what people say, mmm-mmm I go on too many dates [chuckle] But I can''t make them stay At least that''s what people say, mmm-mmm That''s what people say, mmm-mmm But I keep cruising Can''t stop, won''t stop moving It''s like I got this music In my mind Saying, "It''s gonna be alright." ''Cause the players gonna play, play, play, play, play And the haters gonna hate, hate, hate, hate, hate Baby, I''m just gonna shake, shake, shake, shake, shake I shake it off, I shake it off Heart-breakers gonna break, break, break, break, break And the fakers gonna fake, fake, fake, fake, fake Baby, I''m just gonna shake, shake, shake, shake, shake I shake it off, I shake it off I never miss a beat I''m lightning on my feet And that''s what they don''t see, mmm-mmm That''s what they don''t see, mmm-mmm I''m dancing on my own (dancing on my own) I make the moves up as I go (moves up as I go) And that''s what they don''t know, mmm-mmm That''s what they don''t know, mmm-mmm But I keep cruising Can''t stop, won''t stop grooving It''s like I got this music In my mind Saying, "It''s gonna be alright." ''Cause the players gonna play, play, play, play, play And the haters gonna hate, hate, hate, hate, hate Baby, I''m just gonna shake, shake, shake, shake, shake I shake it off, I shake it off Heart-breakers gonna break, break, break, break, break And the fakers gonna fake, fake, fake, fake, fake Baby, I''m just gonna shake, shake, shake, shake, shake I shake it off, I shake it off Shake it off, I shake it off, I, I, I shake it off, I shake it off, I, I, I shake it off, I shake it off, I, I, I shake it off, I shake it off Hey, hey, hey Just think while you''ve been getting down and out about the liars and the dirty, dirty cheats of the world, You could''ve been getting down to this sick beat.  My ex-man brought his new girlfriend She''s like "Oh, my god!" but I''m just gonna shake.  And to the fella over there with the hella good hair Won''t you come on over, baby? We can shake, shake, shake Yeah ohhh ''Cause the players gonna play, play, play, play, play And the haters gonna hate, hate, hate, hate, hate (haters gonna hate) I''m just gonna shake, shake, shake, shake, shake I shake it off, I shake it off Heart-breakers gonna break, break, break, break, break (mmmm) And the fakers gonna fake, fake, fake, fake, fake (and fake, and fake, and fake) Baby, I''m just gonna shake, shake, shake, shake, shake I shake it off, I shake it off Shake it off, I shake it off, I, I, I shake it off, I shake it off, I, I, I shake it off, I shake it off I, I, I shake it off, I shake it off Shake it off, I shake it off, I, I, I shake it off, I shake it off, I, I, I shake it off, I shake it off, I, I, I shake it off, I shake it off Shake it off, I shake it off, I, I, I shake it off, I shake it off (you''ve got to), I, I, I shake it off, I shake it off, I, I, I shake it off, I shake it off', 1005),
(1006, 'He said, "Let''s get out of this town, Drive out of the city, away from the crowds." I thought heaven can''t help me now.  Nothing lasts forever, but this is gonna take me down He''s so tall and handsome as hell He''s so bad but he does it so well I can see the end as it begins My one condition is Say you''ll remember me standing in a nice dress, Staring at the sunset, babe Red lips and rosy cheeks Say you''ll see me again Even if it''s just in your wildest dreams, ah-ha, wildest dreams, ah-ha.  I said, "No one has to know what we do, " His hands are in my hair, his clothes are in my room And his voice is a familiar sound, Nothing lasts forever but this is getting good now He''s so tall and handsome as hell He''s so bad but he does it so well And when we''ve had our very last kiss My last request it is Say you''ll remember me standing in a nice dress, Staring at the sunset, babe Red lips and rosy cheeks Say you''ll see me again Even if it''s just in your wildest dreams, ah-ha, wildest dreams, ah-ha.  You see me in hindsight Tangled up with you all night Burning it down Someday when you leave me I bet these memories Follow you around You''ll see me in hindsight Tangled up with you all night Burning it down Someday when you leave me I bet these memories Follow you around Say you''ll remember me standing in a nice dress, Staring at the sunset, babe Red lips and rosy cheeks Say you''ll see me again Even if it''s just pretend Say you''ll remember me standing in a nice dress, Staring at the sunset, babe Red lips and rosy cheeks Say you''ll see me again Even if it''s just in your (just pretend, just pretend) wildest dreams, ah-ha, in your wildest dreams, ah-ha (Even if it''s just in your wildest dreams) ah-ha, in your wildest dreams, ah-ha.', 1006),
(1007, 'Right from the start You were a thief You stole my heart And I your willing victim I let you see the parts of me That weren''t all that pretty And with every touch you fixed them Now you''ve been talking in your sleep oh oh Things you never say to me oh oh Tell me that you''ve had enough Of our love, our love Just give me a reason Just a little bit''s enough Just a second we''re not broken just bent And we can learn to love again It''s in the stars It''s been written in the scars on our hearts We''re not broken just bent And we can learn to love again I''m sorry I don''t understand Where all of this is coming from I thought that we were fine (Oh we had everything) Your head is running wild again My dear we still have everythin And it''s all in your mind Yeah but this is happenin You''ve been havin real bad dreams oh oh You used to lie so close to me oh oh There''s nothing more than empty sheets Between our love, our love Oh our love, our love Just give me a reason Just a little bit''s enough Just a second we''re not broken just bent And we can learn to love again I''ll never stop You''re still written in the scars on my heart You''re not broken just bent And we can learn to love again Oh tear ducts and rust I''ll fix it for us We''re collecting dust But our love''s enough You''re holding it in You''re pouring a drink No nothing is as bad as it seems We''ll come clean Just give me a reason Just a little bit''s enough Just a second we''re not broken just bent And we can learn to love again It''s in the stars It''s been written in the scars on our hearts That we''re not broken just bent And we can learn to love again Just give me a reason Just a little bit''s enough Just a second we''re not broken just bent And we can learn to love again It''s in the stars It''s been written in the scars on our hearts That we''re not broken just bent And we can learn to love again Oh, we can learn to love again Oh, we can learn to love again Oh oh, that we''re not broken just bent And we can learn to love again.', 1007),
(1008, 'I threw a wish in the well, Don''t ask me, I''ll never tell I looked to you as it fell, And now you''re in my way I''d trade my soul for a wish, Pennies and dimes for a kiss I wasn''t looking for this, But now you''re in my way Your stare was holdin'', Ripped jeans, skin was showin ''Hot night, wind was blowin'' Where do you think you''re going, baby? Hey, I just met you, And this is crazy, But here''s my number, So call me, maybe! It''s hard to look right At you baby, But here''s my number, So call me, maybe! Hey, I just met you, And this is crazy, But here''s my number, So call me, maybe! And all the other girls, Try to chase me, But here''s my number, So call me, maybe! So call me, maybe! You took your time with the call, I took no time with the fall You gave me nothing at all, But still, you''re in my way I beg, and borrow and steal Have foresight and it''s real I didn''t know I would feel it, But it''s in my way Your stare was holdin'', Ripped jeans, skin was showin ''Hot night, wind was blowin'' Where you think you''re going, baby? Hey, I just met you, And this is crazy, But here''s my number, So call me, maybe! It''s hard to look right At you baby, But here''s my number, So call me, maybe! Hey, I just met you, And this is crazy, But here''s my number, So call me, maybe! And all the other girls, Try to chase me, But here''s my number, So call me, maybe! Before you came into my life I missed you so bad I missed you so bad I missed you so, so bad Before you came into my life I missed you so bad And you should know that I missed you so, so bad It''s hard to look right At you baby, But here''s my number, So call me, maybe! Hey, I just met you, And this is crazy, But here''s my number, So call me, maybe! And all the other girls, Try to chase me, But here''s my number, So call me, maybe! Before you came into my life I missed you so bad I missed you so bad I missed you so, so bad Before you came into my life I missed you so bad And you should know that So call me, maybe!', 1008),
(1009, 'Woke up late today, and I still feel the sting of the pain.  But I brushed my teeth anyway, got dressed through the mess and put a smile on my face.  I got a little bit stronger.  Riding in the car to work, and I''m trying to ignore the hurt.  So I turned on the radio, Stupid song made me think of you, I listened to it for minute, but then I changed it.  I''m getting a little bit stronger, just a little bit stronger.  And I''m done hoping that we can work it out, I''m done with how it feels, spinning my wheels Letting you drag my heart around.  And ohhh I''m done thinking, that you could ever change.  I know my heart will never be the same, but I''m telling myself I''ll be okay.  Even on my weakest days, I get a little bit stronger.  Doesn''t happen over night, but you turn around and a months gone by, And you realize you haven''t cried.  I''m not giving you a hour or a second or another minute longer.  I''m busy getting stronger.  And I''m done hoping that we can work it out, I''m done with how it feels, spinning my wheels Letting you drag my heart around.  And ohhh I''m done thinking, that you could ever change.  I know my heart will never be the same, but I''m telling myself I''ll be okay.  Even on my weakest days, I get a little bit stronger.  I get a little bit stronger.  Getting along without you baby, I''m better off without you baby, How does it feel with out me baby? I''m getting stronger without you baby.  And I''m done hoping that we can work it out, I''m done with how it feels, spinning my wheels Letting you drag my heart around.  And ohhh I''m done thinking, that you could ever change.  I know my heart will never be the same, but I''m telling myself I''ll be okay, Even on my weakest days, I get a little bit stronger.  I get a little bit stronger.  I''m just a little bit stronger.  A little bit, a little bit, a little bit stronger.  I get a little bit stronger.', 1009),
(1010, 'Este amor llega asi esta manera No tiene la culpa Caballo le ven sabana Porque muy depreciado, Por eso no te perdon de llorar Este amor llega asi esta manera No tiene la culpa, Amor de comprementa Amor del mes pasado Bebele, bembele, bembele Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi No tiene pardon de dios Tu eres mi vida, la fortuna del destino Pero el destino tendressa para dos Lo mismo yo que ayer Lo mismo soy yo No te encuentro a l''abandon Es imposible no te encuentro de verdad Por eso un dia no cuentro si de nada Lo mismo you que ayer Yo pienso en ti Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi Bamboleo, bambolea Porque mi vida, yo la prefiero vivir asi', 1010),
(1011, 'Is this the real life? Is this just fantasy? Caught in a landslide, No escape from reality.  Open your eyes, Look up to the skies and see, I''m just a poor boy, I need no sympathy, Because I''m easy come, easy go, Little high, little low, Anyway the wind blows doesn''t really matter to me, to me.  Mama, just killed a man, Put a gun against his head, Pulled my trigger, now he''s dead.  Mama, life had just begun, But now I''ve gone and thrown it all away.  Mama, ooh, Didn''t mean to make you cry, If I''m not back again this time tomorrow, Carry on, carry on as if nothing really matters.  Too late, my time has come, Sent shivers down my spine, Body''s aching all the time.  Goodbye, everybody, I''ve got to go, Gotta leave you all behind and face the truth.  Mama, ooh (anyway the wind blows), I don''t wanna die, I sometimes wish I''d never been born at all.  I see a little silhouetto of a man, Scaramouche, Scaramouche, will you do the Fandango? Thunderbolt and lightning, Very, very frightening me.  (Galileo) Galileo.  (Galileo) Galileo, Galileo Figaro Magnifico.  I''m just a poor boy, nobody loves me.  He''s just a poor boy from a poor family, Spare him his life from this monstrosity.  Easy come, easy go, will you let me go? Bismillah! No, we will not let you go. (Let him go!) Bismillah! We will not let you go. (Let him go!) Bismillah! We will not let you go. (Let me go!) Will not let you go. (Let me go!) Never, never let you go Never let me go, oh.  No, no, no, no, no, no, no.  Oh, mama mia, mama mia (Mama mia, let me go.) Beelzebub has a devil put aside for me, for me, for me.  So you think you can stone me and spit in my eye? So you think you can love me and leave me to die? Oh, baby, can''t do this to me, baby, Just gotta get out, just gotta get right outta here.  (Oh, yeah, oh yeah) Nothing really matters, Anyone can see, Nothing really matters, Nothing really matters to me.  Anyway the wind blows.', 1011),
(1012, 'Buddy you''re a boy make a big noise Playin'' in the street gonna be a big man some day You got mud on yo'' face You big disgrace Kickin'' your can all over the place Singin'' We will we will rock you We will we will rock you Buddy you''re a young man hard man Shoutin'' in the street gonna take on the world some day You got blood on yo'' face You big disgrace Wavin'' your banner all over the place We will we will rock you (Sing it!) We will we will rock you Buddy you''re an old man poor man Pleadin'' with your eyes gonna make you some peace some day You got mud on your face Big disgrace Somebody better put you back into your place We will we will rock you (Sing it!) We will we will rock you (Everybody) We will we will rock you We will we will rock you (Alright)', 1012),
(1013, 'High dive into frozen waves where the past comes back to life Fight fear for the selfish pain, it was worth it every time Hold still right before we crash ''cause we both know how this ends A clock ticks ''til it breaks your glass and I drown in you again ''Cause you are the piece of me I wish I didn''t need Chasing relentlessly, still fight and I don''t know why If our love is tragedy, why are you my remedy? If our love''s insanity, why are you my clarity? (Hey-ay, hey-ay-ay. Hey-ay, hey-ay-ay. Hey-ay, hey-ay-ay. Hey-ay, hey) If our love is tragedy, why are you my remedy? If our love''s insanity, why are you my clarity? Walk on through a red parade and refuse to make amends It cuts deep through our ground and makes us forget all common sense Don''t speak as I try to leave ''cause we both know what we''ll choose If you pull then I''ll push too deep and I''ll fall right back to you ''Cause you are the piece of me I wish I didn''t need Chasing relentlessly, still fight and I don''t know why If our love is tragedy, why are you my remedy? If our love''s insanity, why are you my clarity? (Hey-ay, hey-ay-ay. Hey-ay, hey-ay-ay. Hey-ay, hey-ay-ay. Hey-ay, hey) Why are you my clarity? Why are you my remedy? Why are you my clarity? Why are you my remedy? If our love is tragedy, why are you my remedy? If our love''s insanity, why are you my clarity?', 1013),
(1014, 'I get up, and nothing gets me down.  You got it tough. I''ve seen the toughest all around.  And I know, baby, just how you feel.  You''ve got to roll with the punches to get to what''s real Oh can''t you see me standing here, I''ve got my back against the record machine I ain''t the worst that you''ve seen.  Oh can''t you see what I mean? Might as well jump. Jump! Might as well jump.  Go ahead, jump. Jump! Go ahead, jump.  Aaa-ohh Hey you! Who said that? Baby how you been? You say you don''t know, you won''t know until you begin.  Well can''t you see me standing here, I''ve got my back against the record machine I ain''t the worst that you''ve seen.  Oh can''t you see what I mean? Might as well jump. Jump! Go ahead, jump.  Might as well jump. Jump! Go ahead, jump.  [Guitar solo] [Keyboard solo] Might as well jump. Jump! Go ahead, jump.  Get it and jump. Jump! Go ahead, jump.', 1014);

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE IF NOT EXISTS `Person` (
  `person_id` int(10) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1017 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`person_id`, `name`) VALUES
(1000, 'John Mayer'),
(1001, 'P!nk'),
(1002, 'Carly Rae Jepsen'),
(1003, 'Sara Evans'),
(1004, 'Talor Swift'),
(1005, 'Nicolas Reyes'),
(1006, 'Tonino Baliardo'),
(1007, 'Britney Spears'),
(1008, 'Brian May'),
(1009, 'Freddie Mercury'),
(1010, 'Roger Taylor'),
(1011, 'John Deacon'),
(1012, 'Zedd'),
(1013, 'David Lee Roth'),
(1014, 'Eddie Van Halen'),
(1015, 'Alex Van Halen'),
(1016, 'Wolfgang Van Halen');

-- --------------------------------------------------------

--
-- Table structure for table `Publisher`
--

CREATE TABLE IF NOT EXISTS `Publisher` (
  `publisher_id` int(10) NOT NULL,
  `name` varchar(64) NOT NULL,
  `address` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Publisher`
--

INSERT INTO `Publisher` (`publisher_id`, `name`, `address`) VALUES
(1000, 'Aware Records', 'Evanston, Illinois, United States'),
(1001, 'Jive', '550 Madison Avenue New York, NY 10022-3211, United States'),
(1002, 'Big Machine Records', '1219 16th Avenue South, Nashville, TN 37212, United States'),
(1003, 'RCA', 'New York City, New York, United States'),
(1004, '604 Records', 'Vancouver, British Columbia, Canada'),
(1005, 'Newsound 2000', 'London, United Kingdom'),
(1006, 'EMI Records', 'United Kingdom'),
(1007, 'Interscope Records', 'Santa Monica, California, United States'),
(1008, 'Warner Bros. Records', 'Burbank, California, United States');

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE IF NOT EXISTS `Review` (
  `review_id` int(10) NOT NULL,
  `score` int(2) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `user_id` int(10) NOT NULL,
  `song_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Review`
--

INSERT INTO `Review` (`review_id`, `score`, `description`, `user_id`, `song_id`) VALUES
(1000, 4, 'this is one of my many favorites from the gipsy kings. It''s very upbeat and lively. Always puts me in a dancing mood', 1008, 1010),
(1001, 3, 'it''s got a good beat to it I have it on my iPod, i wanted to get it for my kindle fire as well.', 1009, 1013),
(1002, 5, 'Outstanding vocals with a great arrangement and uptempo beat. First heard this on the Beat Audio Headphones at Target and had to get it! Love everything about it!', 1010, 1013),
(1003, 5, 'Cool. His guitar is exiting.', 1001, 1000),
(1004, 4, 'Exotic song. Different color from what she had in the past.', 1002, 1002),
(1005, 4, 'Became happy. I don''t know why.', 1003, 1005),
(1006, 4, 'Big history! Still remember it.', 1004, 1014),
(1007, 2, 'Not impressive. She can do better.', 1005, 1006),
(1008, 5, 'This is the best song in the world', 1006, 1007),
(1009, 3, 'A little bit childish.', 1007, 1008);

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
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Song`
--

INSERT INTO `Song` (`song_id`, `title`, `duration`, `language`, `genre_id`, `lyrics_id`, `audio_id`, `video_id`) VALUES
(1000, 'Neon', 263, 'English', 1000, 1000, 1000, 1000),
(1001, 'Say', 223, 'English', 1000, 1001, 1001, 1001),
(1002, 'Circus', 213, 'English', 1000, 1002, 1002, 1002),
(1003, 'Womanizer', 226, 'English', 1000, 1003, 1003, 1003),
(1004, 'I''m Not A Girl, Not Yet A Woman', 228, 'English', 1000, 1004, 1004, 1004),
(1005, 'Shake It Off', 241, 'English', 1000, 1005, 1005, 1005),
(1006, 'Wildest Dreams', 234, 'English', 1000, 1006, 1006, 1006),
(1007, 'Just Give Me a Reason', 242, 'English', 1000, 1007, 1007, 1007),
(1008, 'Call Me Maybe', 199, 'English', 1000, 1008, 1008, 1008),
(1009, 'A Little Bit Stronger', 278, 'English', 1000, 1009, 1009, 1009),
(1010, 'Bamboleo', 203, 'Spanish', 1000, 1010, 1010, 1010),
(1011, 'Bohemian Rhapsody', 366, 'English', 1001, 1011, 1011, 1011),
(1012, 'We Will Rock You', 134, 'English', 1001, 1012, 1012, 1012),
(1013, 'Clarity', 275, 'English', 1000, 1013, 1013, 1013),
(1014, 'Jump', 241, 'English', 1001, 1014, 1014, 1014);

-- --------------------------------------------------------

--
-- Table structure for table `Tag`
--

CREATE TABLE IF NOT EXISTS `Tag` (
  `tag_id` int(10) NOT NULL,
  `keyword` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tag`
--

INSERT INTO `Tag` (`tag_id`, `keyword`) VALUES
(1000, 'Neon'),
(1001, 'Say'),
(1002, 'Circus'),
(1003, 'Womanizer'),
(1004, 'Girl'),
(1005, 'Shake'),
(1006, 'Dream'),
(1007, 'Reason'),
(1008, 'Call'),
(1009, 'Strong'),
(1010, 'Bamboleo'),
(1011, 'Rhapsody'),
(1012, 'Rock'),
(1013, 'Clarity'),
(1014, 'Jump');

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
) ENGINE=InnoDB AUTO_INCREMENT=1040 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=latin1;

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
  `video_id` int(10) NOT NULL,
  `data` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Video`
--

INSERT INTO `Video` (`video_id`, `data`) VALUES
(1000, 'https://www.youtube.com/watch?v=hc9VXLtgw5g'),
(1001, 'https://www.youtube.com/watch?v=WQtGqmi2O2U'),
(1002, 'https://www.youtube.com/watch?v=lVhJ_A8XUgc'),
(1003, 'https://www.youtube.com/watch?v=4PrajazXCpQ'),
(1004, 'https://www.youtube.com/watch?v=IlV7RhT6zHs'),
(1005, 'https://www.youtube.com/watch?v=nfWlot6h_JM'),
(1006, 'https://www.youtube.com/watch?v=IdneKLhsWOQ'),
(1007, 'https://www.youtube.com/watch?v=OpQFFLBMEPI'),
(1008, 'https://www.youtube.com/watch?v=fWNaR-rxAic'),
(1009, 'https://www.youtube.com/watch?v=22zB6Soc2Gk'),
(1010, 'https://www.youtube.com/watch?v=mifnMC_Kn1Q'),
(1011, 'https://www.youtube.com/watch?v=fJ9rUzIMcZQ'),
(1012, 'https://www.youtube.com/watch?v=-tJYN-eG1zk'),
(1013, 'https://www.youtube.com/watch?v=IxxstCcJlsc'),
(1014, 'https://www.youtube.com/watch?v=SwYN7mTi6HM');

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
  ADD PRIMARY KEY (`review_id`);

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
  ADD PRIMARY KEY (`user_id`);

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
-- AUTO_INCREMENT for table `Album`
--
ALTER TABLE `Album`
  MODIFY `album_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1014;
--
-- AUTO_INCREMENT for table `AlbumSong`
--
ALTER TABLE `AlbumSong`
  MODIFY `album_song_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1015;
--
-- AUTO_INCREMENT for table `Artist`
--
ALTER TABLE `Artist`
  MODIFY `artist_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1010;
--
-- AUTO_INCREMENT for table `ArtistAlbum`
--
ALTER TABLE `ArtistAlbum`
  MODIFY `artist_album_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1014;
--
-- AUTO_INCREMENT for table `ArtistPerson`
--
ALTER TABLE `ArtistPerson`
  MODIFY `artist_person_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1017;
--
-- AUTO_INCREMENT for table `Audio`
--
ALTER TABLE `Audio`
  MODIFY `audio_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1015;
--
-- AUTO_INCREMENT for table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `genre_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1006;
--
-- AUTO_INCREMENT for table `History`
--
ALTER TABLE `History`
  MODIFY `history_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1020;
--
-- AUTO_INCREMENT for table `HistorySong`
--
ALTER TABLE `HistorySong`
  MODIFY `history_song_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1042;
--
-- AUTO_INCREMENT for table `Image`
--
ALTER TABLE `Image`
  MODIFY `image_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1014;
--
-- AUTO_INCREMENT for table `Jukebox`
--
ALTER TABLE `Jukebox`
  MODIFY `jukebox_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1020;
--
-- AUTO_INCREMENT for table `JukeBoxUserAlbum`
--
ALTER TABLE `JukeBoxUserAlbum`
  MODIFY `jukebox_user_album_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1060;
--
-- AUTO_INCREMENT for table `Lyrics`
--
ALTER TABLE `Lyrics`
  MODIFY `lyrics_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1015;
--
-- AUTO_INCREMENT for table `Person`
--
ALTER TABLE `Person`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1017;
--
-- AUTO_INCREMENT for table `Publisher`
--
ALTER TABLE `Publisher`
  MODIFY `publisher_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1009;
--
-- AUTO_INCREMENT for table `Review`
--
ALTER TABLE `Review`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1010;
--
-- AUTO_INCREMENT for table `Song`
--
ALTER TABLE `Song`
  MODIFY `song_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1015;
--
-- AUTO_INCREMENT for table `Tag`
--
ALTER TABLE `Tag`
  MODIFY `tag_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1015;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1020;
--
-- AUTO_INCREMENT for table `UserAlbum`
--
ALTER TABLE `UserAlbum`
  MODIFY `user_album_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1040;
--
-- AUTO_INCREMENT for table `UserAlbumSong`
--
ALTER TABLE `UserAlbumSong`
  MODIFY `user_album_song_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1007;
--
-- AUTO_INCREMENT for table `Video`
--
ALTER TABLE `Video`
  MODIFY `video_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1015;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
