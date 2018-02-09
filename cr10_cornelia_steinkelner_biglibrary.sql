-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Feb 2018 um 16:04
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_cornelia_steinkelner_biglibrary`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author/interpret`
--

CREATE TABLE `author/interpret` (
  `author_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `surname` varchar(55) DEFAULT NULL,
  `fk_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `author/interpret`
--

INSERT INTO `author/interpret` (`author_id`, `name`, `surname`, `fk_type_id`) VALUES
(1, 'Katja', 'Brandis', 1),
(2, 'Cornelia', 'Funke', 1),
(3, 'isaac', 'asimov', 1),
(4, 'Green day', NULL, 2),
(5, 'Darran', 'Korb', 2),
(6, 'Kemuri', NULL, 2),
(7, 'Roger ', 'Allers', 3),
(8, 'hayao ', 'miyazaki', 3),
(9, 'Tommy ', 'Wiseau', 3),
(10, 'J.K', 'Rowling', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `title` varchar(55) DEFAULT NULL,
  `fk_author_id` int(11) DEFAULT NULL,
  `ISBN_code` int(11) DEFAULT NULL,
  `short_description` varchar(700) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `fk_publisher_id` int(11) DEFAULT NULL,
  `fk_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `media`
--

INSERT INTO `media` (`media_id`, `image`, `title`, `fk_author_id`, `ISBN_code`, `short_description`, `publish_date`, `fk_publisher_id`, `fk_type_id`) VALUES
(1, 'https://images-na.ssl-images-amazon.com/images/I/51szaJXvM5L._SX351_BO1,204,203,200_.jpg', 'woodwalkers', 1, 123123, 'Auf den ersten Blick sieht Carag aus wie ein normaler Junge. Doch hinter seinen leuchtenden Augen verbirgt sich ein Geheimnis: Carag ist ein Gestaltwandler. Aufgewachsen als Berglöwe in den Wäldern lebt er erst seit Kurzem in der Menschenwelt. Das neue Leben ist für ihn so fremd wie faszinierend. Doch erst als Carag von der Clearwater High erfährt, einem Internat für Woodwalker wie ihn, verspürt er ein Gefühl von Heimat. In Holly, einem frechen Rothörnchen, und Brandon, einem schüchternen Bison, findet er Freunde. Und die kann Carag gut gebrauchen - denn sein neues Leben steckt voller Gefahren …', '2017-01-03', 1, 1),
(2, 'https://vignette.wikia.nocookie.net/inkheart/images/4/48/Inkheart.png/revision/latest?cb=20110330055136', 'inkheart', 2, 432112, 'Meggie lives a quiet life alone with her father, a book-binder. But her father has a deep secret — he posseses an extraordinary magical power. One day a mysterious stranger arrives who seems linked to her father\'s past. Who is this sinister character and what does he want?\r\n\r\nSuddenly Meggie is involved in a breathless game of escape and intrigue as her father\'s life is put in danger. Will she be able to save him in time?', '2003-08-08', 2, 1),
(3, 'https://images.gr-assets.com/books/1395929677l/414853.jpg', 'Foundation', 3, 24132, 'For twelve thousand years the Galactic Empire has ruled supreme. Now it is dying. But only Hari Seldon, creator of the revolutionary science of psychohistory, can see into the future -- to a dark age of ignorance, barbarism, and warfare that will last thirty thousand years. To preserve knowledge and save mankind, Seldon gathers the best minds in the Empire', '1951-03-12', 3, 1),
(4, 'https://images-na.ssl-images-amazon.com/images/I/71Z0rLIvpuL._SL1448_.jpg', 'american idiot', 4, 12312134, 'American Idiot is the seventh studio album by American rock band Green Day. Produced by Rob Cavallo, the album was released in the UK on September 20, 2004 and in the US on September 21, 2004 by Reprise Records. Green Day first achieved popularity in the 1990s with a string of successful albums. Following disappointing sales of their sixth album, Warning (2000), the band took a break before recording their next album, titled Cigarettes and Valentines. The recording process was cut short when the album\'s master tapes were stolen. Rather than re-record that material, the group decided to start over.', '2004-09-23', 4, 2),
(5, 'https://f4.bcbits.com/img/a1631552849_10.jpg', 'Pyre_Officia_Soundtrack', 5, 1242123, 'The Pyre Original Soundtrack packs close to two hours of original music by Supergiant\'s award-winning composer and audio director, Darren Korb. Featuring vocals by Darren Korb and Ashley Barrett, the album also contains bonus material and arrangements not found in the game.', '2017-06-23', 5, 2),
(6, 'http://www.littleoslo.com/lyj/home/wp-content/uploads/2013/06/KEMURI-all-for-this.jpg', 'All for this', 6, 213143, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2013-06-05', 6, 2),
(7, 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3d/The_Lion_King_poster.jpg/220px-The_Lion_King_poster.jpg', 'Lion King', 7, 21432312, 'In the Pride Lands of Africa, a lion rules over the animal kingdom from Pride Rock. King Mufasa\'s newborn son, Simba, is presented to the assembled animals by Rafiki, a mandrill who serves as shaman and advisor. Mufasa shows young Simba the Pride Lands and explains to him the responsibilities of kingship and the \"circle of life\" which connects all living things. Mufasa\'s younger brother, Scar, covets the throne and plots to eliminate Mufasa and Simba so he may become king. He tricks Simba and his best friend Nala—to whom Simba is betrothed—into exploring a forbidden elephants\' graveyard, where they are attacked by three spotted hyenas who are in league with Scar.', '1994-07-23', 7, 3),
(8, 'https://d10u9ygjms7run.cloudfront.net/academy-cinemas/1501471295818_My%20Neighbor%20Totoro.png', 'My Nighbour Totoro', 8, 12234, 'In 1958 Japan, university professor Tatsuo Kusakabe and his two daughters, Satsuki and Mei, move into an old house to be closer to the hospital where the girls\' mother, Yasuko, is recovering from a long-term illness. Satsuki and Mei find that the house is inhabited by tiny creatures called susuwatari –- small, dark, dust-like house spirits seen when moving from light to dark places.[note 1] When the girls become comfortable in their new house and laugh with Tatsuo, the soot spirits leave the house to drift away on the wind. It is implied that they are going to find another empty house –- their natural habitat.', '1988-03-16', 8, 3),
(9, 'https://a.ltrbxd.com/resized/sm/upload/qq/yi/i3/dk/aUC39cFC2KO8CJ0EV0ijIJRr3PT-0-230-0-345-crop.jpg?k=ce733c0412', 'The room', 9, 21321423, 'Johnny is a successful banker who lives in a San Francisco townhouse with Lisa, his future wife. Lisa, having become dissatisfied with her life and Johnny, seduces his best friend Mark and the two begin an affair. As the wedding approaches and Johnny\'s influence at his bank slips, Lisa alternates between glorifying and vilifying Johnny to her family and friends, making false accusations of domestic abuse and defending Johnny against criticisms. Meanwhile, Johnny, having overheard Lisa confess her infidelity to her mother, attaches a tape recorder to their phone in an attempt to identify her lover.', '2003-07-21', 9, 3),
(10, 'https://media.bloomsbury.com/rep/bj/9780747532699.jpg', 'Harry Potter', 10, 213213, 'Eleven-year-old Harry Potter has been living an ordinary life, constantly abused by his surly and cold uncle and aunt, Vernon and Petunia Dursley and bullied by their spoiled bully of a son Dudley. His life changes on the day of his eleventh birthday when he receives a letter of acceptance into a Hogwarts School of Witchcraft and Wizardry, delivered by a half-giant named Rubeus Hagrid after previous letters had been destroyed by Vernon and Petunia. Hagrid explains Harry\'s hidden.', '1997-06-26', 10, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `address` varchar(55) DEFAULT NULL,
  `fk_publish_size_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `address`, `fk_publish_size_id`) VALUES
(1, 'Bild', 'loremstreat', 1),
(2, 'GSD', 'loremstreat', 2),
(3, 'Heyne', 'loremstreat', 2),
(4, 'Studio 880', 'loremstreat', 3),
(5, 'Supergiant games', 'loremoway', 3),
(6, 'Cutting Edge', 'waytofarout', 2),
(7, 'Disney', 'disneyworld', 1),
(8, 'Ghibli', 'probablyJapan', 2),
(9, 'Tommy', 'Wiseau', 3),
(10, 'bloomsbury', 'England', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publish_size`
--

CREATE TABLE `publish_size` (
  `publish_size_id` int(11) NOT NULL,
  `size` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `publish_size`
--

INSERT INTO `publish_size` (`publish_size_id`, `size`) VALUES
(1, 'big'),
(2, 'medium'),
(3, 'small');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `type`
--

INSERT INTO `type` (`type_id`, `type`) VALUES
(1, 'book'),
(2, 'CD'),
(3, 'DVD');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `author/interpret`
--
ALTER TABLE `author/interpret`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `fk_type_id` (`fk_type_id`);

--
-- Indizes für die Tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `fk_type_id` (`fk_type_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`),
  ADD KEY `fk_author_id` (`fk_author_id`);

--
-- Indizes für die Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD KEY `fk_publish_size_id` (`fk_publish_size_id`);

--
-- Indizes für die Tabelle `publish_size`
--
ALTER TABLE `publish_size`
  ADD PRIMARY KEY (`publish_size_id`);

--
-- Indizes für die Tabelle `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `author/interpret`
--
ALTER TABLE `author/interpret`
  ADD CONSTRAINT `author/interpret_ibfk_1` FOREIGN KEY (`fk_type_id`) REFERENCES `type` (`type_id`);

--
-- Constraints der Tabelle `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_type_id`) REFERENCES `type` (`type_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`),
  ADD CONSTRAINT `media_ibfk_3` FOREIGN KEY (`fk_author_id`) REFERENCES `author/interpret` (`author_id`);

--
-- Constraints der Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`fk_publish_size_id`) REFERENCES `publish_size` (`publish_size_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
