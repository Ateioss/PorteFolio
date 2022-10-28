/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `album` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `artist_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artiste` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `artiste` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `music` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `duration` int NOT NULL,
  `album_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `music_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `album` (`id`, `name`, `artist_id`) VALUES
(1, 'album1', 1);
INSERT INTO `album` (`id`, `name`, `artist_id`) VALUES
(2, 'album2', 1);
INSERT INTO `album` (`id`, `name`, `artist_id`) VALUES
(3, 'album3', 2);
INSERT INTO `album` (`id`, `name`, `artist_id`) VALUES
(4, 'album4', 2),
(5, 'album5', 3),
(6, 'album6', 3);

INSERT INTO `artiste` (`id`, `name`) VALUES
(1, 'PAUL');
INSERT INTO `artiste` (`id`, `name`) VALUES
(2, 'MARK');
INSERT INTO `artiste` (`id`, `name`) VALUES
(3, 'ERIC');
INSERT INTO `artiste` (`id`, `name`) VALUES
(4, 'ALBERT'),
(5, 'Yo-Yo Ma');

INSERT INTO `music` (`id`, `name`, `duration`, `album_id`) VALUES
(1, 'song1', 450, 1);
INSERT INTO `music` (`id`, `name`, `duration`, `album_id`) VALUES
(2, 'song2', 240, 1);
INSERT INTO `music` (`id`, `name`, `duration`, `album_id`) VALUES
(3, 'song3', 800, 2);
INSERT INTO `music` (`id`, `name`, `duration`, `album_id`) VALUES
(4, 'song4', 110, 2),
(5, 'song5', 823, 3),
(6, 'song6', 345, 3),
(7, 'song7', 25, 4),
(8, 'song8', 14, 4),
(9, 'song9', 359, 5),
(10, 'song10', 659, 5),
(11, 'song11', 23, 6),
(12, 'song12', 453, 6);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;