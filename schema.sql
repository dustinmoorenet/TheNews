-- phpMyAdmin SQL Dump
-- version 3.4.5deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2012 at 03:11 PM
-- Server version: 5.1.58
-- PHP Version: 5.3.6-13ubuntu3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `news_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `published` datetime NOT NULL,
  `main_image` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `author`, `published`, `main_image`, `category_id`, `created`, `modified`) VALUES
(1, 'Nulla venenatis augue id pharetra', '<p>iaculis. Nam mattis, magna ornare pulvinar velit. Praesent wisi at sapien et magnis dis parturient montes, nascetur ridiculus mus. Morbi nibh orci luctus et odio. Donec auctor tortor massa non enim. Etiam tempor scelerisque, quam leo, in tortor et wisi sapien faucibus orci ut quam eros magna ultrices posuere cubilia Curae; Nulla venenatis augue id pharetra lobortis non, tristique senectus et fringilla sit amet erat. Suspendisse eleifend adipiscing tortor, dictum wisi sapien eu neque nibh justo, condimentum justo augue commodo pede id nisl. Nam non orci. In id lacus iaculis ornare. Nullam erat volutpat. Phasellus vitae lacus. Sed porta nisl.</p>\r\n<p>accumsan sit amet, neque. Mauris viverra lacinia. Vestibulum ante volutpat laoreet. Donec faucibus, justo facilisis congue. Praesent nunc. Praesent volutpat tempus urna orci ac libero. Aenean aliquet. Morbi scelerisque fermentum rutrum. In nec ante. Integer sodales wisi eu justo. Maecenas felis. Nulla in sollicitudin a, blandit vel, ipsum. Nam eget odio. Morbi mattis id, urna. Pellentesque malesuada quis, accumsan at, lacus. Nunc viverra ligula. Pellentesque eu pede convallis cursus dignissim vitae, fringilla eget, volutpat quis, ipsum. Praesent gravida massa ac eros ipsum, molestie nisl. Ut eget dolor libero et metus. Donec pulvinar gravida, nisl ac eros. Sed orci luctus et</p>', 'Donec Pulvinar', '2012-01-24 22:11:49', NULL, 1, '2012-01-24 22:11:58', NULL),
(2, 'Suspendisse turpis ut tellus tortor', '<p>wisi, eget pede nec odio. Suspendisse turpis ut tellus tortor, dictum vel, orci. Nunc tempor elit eu felis. Fusce porttitor, arcu dolor, placerat dui. Sed dignissim. Vivamus nonummy ligula. Phasellus vitae metus facilisis metus. Etiam turpis. Fusce iaculis, turpis vitae libero vel nulla. Suspendisse adipiscing. Nam eu tortor. Morbi pede. Morbi risus tortor, dictum volutpat. Nullam iaculis dignissim vitae, rutrum ac, mollis consectetuer. Quisque vestibulum. Nulla facilisi. Etiam accumsan interdum. Nulla consectetuer, augue at ultrices posuere cubilia Curae; Sed aliquet feugiat ultrices et, felis. Praesent pretium. Praesent nec scelerisque ligula, et ultrices nulla. Fusce a auctor nibh, fringilla mi, gravida</p>\r\n<p>consequat. Donec molestie nulla ut aliquet tincidunt hendrerit sagittis. Nulla convallis auctor. Nam consectetuer congue non, nunc. Maecenas feugiat velit. Mauris a lacus. Duis elementum eu, rhoncus dolor sit amet neque tristique senectus et eros in enim. Quisque at bibendum iaculis ut, diam. Vestibulum ante ipsum dolor sit amet, sodales auctor, tempor scelerisque, diam. Fusce condimentum auctor neque. Nulla facilisi. Etiam rutrum, libero eget velit. Suspendisse dapibus tellus. Donec condimentum sagittis eros. Quisque vehicula non, nunc. Vivamus imperdiet ut, dolor. In hac habitasse platea dictumst. Praesent vitae ornare ac, vestibulum ac, eleifend in, consequat lobortis laoreet ultricies a, diam. Pellentesque</p>\r\n<p>elementum. Mauris pretium, diam iaculis nisl. Cras mauris luctus et mi. Donec non arcu. Morbi dui quis orci. Sed nonummy consequat. Nulla nec augue. Fusce purus vitae felis eget sem. Pellentesque dapibus risus tortor, hendrerit wisi. Phasellus a felis. Cum sociis natoque penatibus et cursus ante. Morbi eget lacus diam justo, at sapien. Etiam commodo est. Vestibulum enim. Fusce eu ipsum ut orci viverra auctor, sapien et ultrices varius. In quam sed elit at est ullamcorper pede semper id, orci. Nam posuere. Quisque sit amet magna. Phasellus posuere vitae, dolor. Pellentesque fringilla non, placerat nisl in leo ac arcu turpis</p>', 'Quisque Vestibulum', '2012-01-17 22:11:54', NULL, 2, '2012-01-24 22:11:58', NULL),
(3, 'Aliquam ultricies eu, pulvinar eget, purus', '<p>magna. Quisque pharetra, urna eu mi. Pellentesque habitant morbi tristique senectus et magnis dis parturient montes, nascetur ridiculus mus. Nunc justo vel neque dui, in faucibus mollis. Suspendisse eu tortor. Proin erat urna, faucibus mollis. Nunc mollis, purus at nulla. Duis luctus, nisl at elit est, viverra mattis. Pellentesque eu lorem semper magna vel massa. Suspendisse rutrum et, feugiat velit. Donec nec tellus porttitor eros ut enim. Quisque nunc. Maecenas nec mauris. Praesent blandit a, posuere lobortis, varius in, convallis justo. Pellentesque habitant morbi tristique pede. In et ultrices nec, sagittis eros. Quisque porta urna. Donec consectetuer tincidunt, eros ut</p>\r\n\r\n<p>aliquam, risus. Nunc a purus fermentum consectetuer. Etiam blandit non, arcu. Suspendisse eu orci. Nunc in dolor tellus, imperdiet congue quis, aliquam tellus quis viverra consectetuer. Aenean sit amet, neque. Cras consectetuer arcu id enim. Cras consectetuer adipiscing sed, urna. Aenean lacus sagittis venenatis. Donec euismod pede turpis vulputate wisi id nonummy enim diam, varius egestas, dui eget magna. Nullam suscipit dui ut turpis egestas. Cras vitae lacinia ut, sapien. Proin ultricies lobortis, varius nunc, tempus arcu. Nulla ac ipsum. Nunc justo. Quisque sed leo eros, rhoncus eu, bibendum scelerisque urna mi, nec risus. Vestibulum consectetuer adipiscing ligula. Nam sit</p>\r\n\r\n<p>id felis. Maecenas felis. Mauris vel bibendum ipsum lorem semper erat, nonummy sagittis. Curabitur scelerisque odio id quam. Aliquam ultricies eu, pulvinar eget, purus. Mauris ut mi. Aenean congue eu, pede. Duis posuere in, dolor. Quisque nunc. Sed fringilla aliquet. Vestibulum non nonummy enim ac turpis in faucibus orci luctus bibendum.</>', 'Aliquam Ultricies', '2012-01-02 22:22:06', NULL, 2, '2012-01-24 22:22:52', NULL),
(4, 'Curabitur gravida eros et malesuada tincidunt', '<p>aliquam, risus. Nunc a purus fermentum consectetuer. Etiam blandit non, arcu. Suspendisse eu orci. Nunc in dolor tellus, imperdiet congue quis, aliquam tellus quis viverra consectetuer. Aenean sit amet, neque. Cras consectetuer arcu id enim. Cras consectetuer adipiscing sed, urna. Aenean lacus sagittis venenatis. Donec euismod pede turpis vulputate wisi id nonummy enim diam, varius egestas, dui eget magna. Nullam suscipit dui ut turpis egestas. Cras vitae lacinia ut, sapien. Proin ultricies lobortis, varius nunc, tempus arcu. Nulla ac ipsum. Nunc justo. Quisque sed leo eros, rhoncus eu, bibendum scelerisque urna mi, nec risus. Vestibulum consectetuer adipiscing ligula. Nam sit</p>\r\n\r\n<p>id felis. Maecenas felis. Mauris vel bibendum ipsum lorem semper erat, nonummy sagittis. Curabitur scelerisque odio id quam. Aliquam ultricies eu, pulvinar eget, purus. Mauris ut mi. Aenean congue eu, pede. Duis posuere in, dolor. Quisque nunc. Sed fringilla aliquet. Vestibulum non nonummy enim ac turpis in faucibus orci luctus bibendum. Nulla gravida non, dolor. Praesent tortor fringilla vel, dui. Suspendisse eu sem at orci ultricies vitae, dapibus tellus. Donec pede. Curabitur gravida eros et malesuada tincidunt, risus eros vulputate lectus.</p>', 'Curabitur Gravida', '2012-01-12 22:22:10', NULL, 1, '2012-01-24 22:22:52', NULL),
(5, 'Aliquam consequat id, elementum in', '<p>Suspendisse eu sem at orci ultricies vitae, dapibus tellus. Donec pede. Curabitur gravida eros et malesuada tincidunt, risus eros vulputate lectus. Pellentesque facilisis. In vitae felis. Duis luctus. Sed metus. Aliquam consequat id, elementum in, cursus lectus sit amet, massa.</p>\r\n\r\n<p>pulvinar. Donec nunc. Maecenas viverra semper leo. Quisque adipiscing gravida hendrerit risus. Mauris ac ante ipsum dolor rhoncus ante ipsum primis in faucibus orci molestie vitae, lorem. Nam consectetuer adipiscing metus. Curabitur eget ipsum primis in velit suscipit ultricies, hendrerit sed, eros. In hac habitasse platea dictumst. Nulla porta turpis risus in dui. Morbi dignissim, sapien eleifend erat volutpat. Maecenas nec adipiscing at, enim. Aenean nulla pulvinar semper id, ullamcorper pellentesque. Proin erat velit ornare ultrices ut, consequat porttitor. Aenean sed nulla facilisis dignissim non, quam. Nulla faucibus et, enim. Fusce vel lorem. Maecenas malesuada fames ac elit ultricies in,</p>\r\n\r\n<p>eros et ultrices volutpat. Nullam tellus dolor eu mi. Morbi vel ligula felis, malesuada augue sed felis vitae lorem leo, a odio neque, vitae ligula eget metus. Morbi hendrerit. Sed venenatis. Curabitur fringilla at, quam. Donec nec mauris vitae justo. Donec vitae facilisis metus. Integer lorem vitae purus. Phasellus lorem sodales lectus sit amet felis odio eget felis augue pulvinar odio. Suspendisse elit a nibh. Donec auctor quis, luctus et nunc mauris, interdum pellentesque sed, sollicitudin eget, cursus ut, accumsan eget, nonummy rutrum. Donec faucibus eros malesuada et, placerat nec, molestie augue ut magna neque, vitae turpis metus et ultrices</p>', 'Pellentesque Facilisis', '2012-01-15 22:22:14', NULL, 3, '2012-01-24 22:22:52', NULL),
(6, 'Nullam augue egestas mi, id sapien accumsan tincidunt', '<p>non, placerat eget, tincidunt turpis faucibus augue. Sed fringilla sem ipsum, vel bibendum mauris dui lectus, eu eros. Nullam a dolor. Quisque placerat sodales. Vivamus metus nisl risus, pellentesque erat sed tortor. Etiam volutpat elit, consequat lobortis laoreet viverra enim vel quam. Mauris ultrices. Nunc felis. Mauris viverra pede bibendum dui. Suspendisse turpis vitae felis. Maecenas tincidunt. Nulla dolor in posuere sit amet nunc. Donec in dictum id, libero. Maecenas diam lectus, eu sodales in, gravida hendrerit nibh risus, euismod mi. Sed lobortis cursus et, enim. Aenean egestas turpis. Duis eget est pede, at mauris viverra sed, vestibulum in, dapibus</p>\r\n\r\n<p>posuere lobortis, massa vulputate et, nonummy gravida. Suspendisse est ultrices posuere vehicula dignissim. Donec enim pharetra eget, neque. Pellentesque porta scelerisque, lacus at interdum arcu id lorem. In metus sed enim. Cras vitae imperdiet consequat. Integer lorem eget dolor tellus vulputate sagittis, mi non ante. Morbi molestie, nunc hendrerit laoreet. Morbi pede. Pellentesque habitant morbi tristique tempus et, varius ligula. Sed dignissim massa. Nunc velit nulla nec eros. Donec nulla ipsum primis in dolor. Integer aliquam dictum aliquet elit, non diam. Fusce non felis. Nullam augue egestas mi, id sapien accumsan tincidunt. Proin lacus. Aliquam bibendum, tellus. Cras tempus id,</p>', 'Sapien Accumsan', '2012-01-20 22:22:18', NULL, 3, '2012-01-24 22:22:52', NULL),
(7, 'Vestibulum sollicitudin Fusce porttitor nulla in dui ligula', '<p>Aliquam auctor auctor tincidunt. Maecenas eget felis augue ac risus. Etiam vulputate, odio orci, blandit malesuada. Nullam eros nisl, eu justo. Aliquam gravida at, vehicula non, tellus. Donec odio eget odio urna, mattis magna. Fusce dui aliquam purus. Mauris pretium porttitor. Nulla imperdiet quis, dictum arcu. Duis porttitor vel, eros. Vestibulum tempus facilisis, ante ipsum non nulla. Phasellus a lacus. Aenean quis wisi. Phasellus orci sem ipsum, vel quam. Sed nonummy at, rhoncus suscipit. Nulla eget dui quis enim. Quisque nec velit. Donec pulvinar interdum, diam tempor varius, scelerisque fermentum nonummy auctor quis, ornare nulla ante, cursus mauris non nunc</p>\r\n\r\n<p>a, elementum diam justo, at arcu iaculis lectus. Vestibulum massa volutpat quis, dui. Morbi vitae lacus. Vestibulum sollicitudin. Fusce porttitor, nulla in dui ligula, elementum quis, convallis non, dolor. Mauris at nibh. Fusce enim. Duis nonummy sodales dignissim a, convallis at, suscipit quis, interdum arcu sed enim sapien sed lacus. Nunc tempor varius, leo. Aliquam erat libero, accumsan augue purus, pharetra sit amet, sollicitudin justo. Aenean lacus pretium eget, wisi. Suspendisse eu risus. Donec molestie nec, turpis. Nullam fermentum lobortis vitae, ornare eu, egestas purus. Sed a auctor congue tellus, quis felis eget risus. Suspendisse fringilla purus in est. Lorem</p>\r\n\r\n<p>laoreet. Sed euismod nibh, volutpat elit, gravida ornare. Maecenas vehicula, fringilla orci. Nullam dapibus risus. Nunc massa non nunc neque, malesuada eros, id leo semper nec, pharetra varius.</p>', 'Malesuada Eros', '2012-01-01 22:22:21', NULL, 1, '2012-01-24 22:22:52', NULL),
(8, 'Aliquam gravida at vehicula non tellus', '<p>Aliquam auctor auctor tincidunt. Etiam vulputate, odio orci, blandit malesuada. Nullam eros nisl, eu justo. Aliquam gravida at, vehicula non, tellus. Donec odio eget odio urna, mattis magna. Fusce dui aliquam purus. Mauris pretium porttitor. Nulla imperdiet quis, dictum arcu. Duis porttitor vel, eros. Vestibulum tempus facilisis, ante ipsum non nulla. Phasellus a lacus. Aenean quis wisi. Phasellus orci sem ipsum, vel quam. Sed nonummy at, rhoncus suscipit. Nulla eget dui quis enim. Quisque nec velit. Donec pulvinar interdum, diam tempor varius, scelerisque fermentum nonummy auctor quis, ornare nulla ante, cursus mauris non nunc</p>\r\n\r\n<p>a, elementum diam justo, at arcu iaculis lectus. Vestibulum massa volutpat quis, dui. Morbi vitae lacus. Vestibulum sollicitudin. Fusce porttitor, nulla in dui ligula, elementum quis, convallis non, dolor. Mauris at nibh. Fusce enim. Duis nonummy sodales dignissim a, convallis at, suscipit quis, interdum arcu sed enim sapien sed lacus. Nunc tempor varius, leo. Aliquam erat libero, accumsan augue purus, pharetra sit amet, sollicitudin justo. Aenean lacus pretium eget, wisi. Suspendisse eu risus. Donec molestie nec, turpis. Nullam fermentum lobortis vitae, ornare eu, egestas purus. Sed a auctor congue tellus, quis felis eget risus. Suspendisse fringilla purus in est. Lorem</p>\r\n\r\n<p>laoreet. Sed euismod nibh, volutpat elit, gravida ornare. Maecenas vehicula, fringilla orci. Nullam dapibus risus. Nunc massa non nunc neque, malesuada eros, id leo semper nec, pharetra varius. Cras faucibus mollis. Suspendisse elit porttitor varius lorem. Nam scelerisque nulla ac posuere sit amet nibh. Ut id fringilla non, sagittis a, vestibulum sapien, nec scelerisque vel, nisl. Fusce aliquet elit, pulvinar enim diam tempor varius, felis sit amet dolor. Fusce nonummy id, urna. Phasellus sem. Nulla lobortis cursus sapien. Sed id mi ipsum primis in faucibus orci</p>', 'Mattis Magna', '2012-01-01 22:22:31', NULL, 2, '2012-01-24 22:22:52', NULL),
(9, 'Duis sit amet consectetuer adipiscing dictum vitae ultricies ut', '<p>pellentesque eget, aliquet lacinia id, pretium venenatis. Donec ipsum dolor tellus, imperdiet aliquam tellus dolor sit amet, vulputate sagittis, nunc eu lobortis magna suscipit adipiscing. Nunc turpis. Lorem ipsum wisi, mollis aliquam, nulla massa, feugiat pulvinar. Morbi accumsan rutrum, enim porttitor eros, sagittis porttitor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque placerat. Mauris vitae ipsum dolor placerat nisl at ligula. Cras at consequat ipsum non lacus. Nunc massa vulputate imperdiet, neque vitae imperdiet ut, eleifend sollicitudin arcu. Cras tortor id rutrum lorem. Maecenas elit dapibus non, porta nisl. Nam laoreet viverra eget, aliquet</p>\r\n\r\n<p>amet, ligula. Duis hendrerit feugiat eget, aliquet in, ornare nulla sem ipsum, rutrum molestie, neque. Donec vitae felis. Nam convallis libero. Suspendisse adipiscing. Cum sociis natoque penatibus et ultrices tortor mauris, interdum ligula nunc, mollis ut, laoreet ultricies urna a enim vehicula sapien leo semper risus. Fusce vel mauris vitae magna blandit risus dolor sit amet, consectetuer vestibulum vel, consectetuer congue augue pulvinar sit amet ultricies est. Maecenas gravida, quam felis vitae imperdiet orci dui, fermentum turpis egestas. Praesent lacinia accumsan sed, ullamcorper lorem eget velit. Suspendisse luctus et magnis dis parturient montes, nascetur ridiculus mus. Morbi commodo. Cras non</p>\r\n\r\n<p>tempus, urna mauris, adipiscing elit. Mauris mi risus elit ac imperdiet ut, dolor. Donec non eros lacus, euismod pede, at purus. Phasellus vitae lacinia eget, elementum nulla. Integer mi risus nunc, rhoncus ac, sodales neque ut urna. Nulla ut nibh. Fusce eu lobortis vitae, dolor. Vivamus est. Duis sit amet, consectetuer adipiscing dictum vitae, ultricies ut, libero. Duis nonummy nunc venenatis lorem id leo nec nisl. Donec orci. Nunc a odio eget metus dolor, dictum volutpat.</p>', 'Donec Orci', '2012-01-10 22:22:37', NULL, 3, '2012-01-24 22:22:52', NULL),
(10, 'Varius egestas nunc iaculis mi Nullam volutpat', '<p>tempus, urna mauris, adipiscing elit. Mauris mi risus elit ac imperdiet ut, dolor. Donec non eros lacus, euismod pede, at purus. Phasellus vitae lacinia eget, elementum nulla. Integer mi risus nunc, rhoncus ac, sodales neque ut urna. Nulla ut nibh. Fusce eu lobortis vitae, dolor. Vivamus est. Duis sit amet, consectetuer adipiscing dictum vitae, ultricies ut, libero. Duis nonummy nunc venenatis lorem id leo nec nisl. Donec orci. Nunc a odio eget metus dolor, dictum volutpat. Ut molestie egestas, nunc venenatis consequat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque sagittis, nunc neque, eu ante.</p>\r\n\r\n<p>quis lectus id diam. Aliquam eleifend, metus feugiat malesuada. Etiam vestibulum et, porttitor a, rutrum ac, eros. Sed faucibus, diam at arcu luctus et magnis dis parturient montes, nascetur ridiculus mus. Morbi nibh. Sed aliquet molestie. Phasellus fermentum, dui nulla, convallis libero. Cras nec erat lacus, ullamcorper risus. Sed bibendum. Nulla interdum dui gravida massa imperdiet sed, pretium cursus. In neque vitae erat ornare tellus. Ut rhoncus vel, wisi. Praesent rhoncus ac, eleifend erat id magna. Curabitur lobortis semper. Morbi id lectus. In hac habitasse platea dictumst. Aenean ac nunc. Duis eget nulla. Fusce a odio orci, sodales tempor. Pellentesque</p>\r\n\r\n<p>Sed fringilla vel, purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per conubia nostra, per inceptos hymenaeos. Phasellus adipiscing. Nam eget sapien et ultrices posuere cubilia Curae; Vestibulum tempus urna magna ac accumsan pede ultrices posuere cubilia Curae; Integer hendrerit lacus. Quisque nulla. Suspendisse at erat. Duis luctus et orci luctus nibh, interdum adipiscing mauris. Praesent gravida tempor, dolor id sollicitudin a, faucibus condimentum enim diam, suscipit id, bibendum pede. Lorem ipsum dolor nonummy condimentum tempor, sapien varius egestas, nunc iaculis mi. Nullam volutpat, velit in faucibus scelerisque. Duis sit amet, mattis a, vestibulum dictum lectus nec</p>', 'Vestibulum Dictum', '2012-01-07 22:22:41', NULL, 3, '2012-01-24 22:22:52', NULL),
(11, 'vitae imperdiet orci dui, fermentum turpis egestas Praesent lacinia accumsan sed', '<p>Maecenas gravida, quam felis vitae imperdiet orci dui, fermentum turpis egestas. Praesent lacinia accumsan sed, ullamcorper lorem eget velit. Suspendisse luctus et magnis dis parturient montes, nascetur ridiculus mus. Morbi commodo. Cras non</p>\r\n\r\n<p>tempus, urna mauris, adipiscing elit. Mauris mi risus elit ac imperdiet ut, dolor. Donec non eros lacus, euismod pede, at purus. Phasellus vitae lacinia eget, elementum nulla. Integer mi risus nunc, rhoncus ac, sodales neque ut urna. Nulla ut nibh. Fusce eu lobortis vitae, dolor. Vivamus est. Duis sit amet, consectetuer adipiscing dictum vitae, ultricies ut, libero. Duis nonummy nunc venenatis lorem id leo nec nisl. Donec orci. Nunc a odio eget metus dolor, dictum volutpat. Ut molestie egestas, nunc venenatis consequat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque sagittis, nunc neque, eu ante.</p>\r\n\r\n<p>quis lectus id diam. Aliquam eleifend, metus feugiat malesuada. Etiam vestibulum et, porttitor a, rutrum ac, eros. Sed faucibus, diam at arcu luctus et magnis dis parturient montes, nascetur ridiculus mus. Morbi nibh. Sed aliquet molestie. Phasellus fermentum, dui nulla, convallis libero. Cras nec erat lacus, ullamcorper risus. Sed bibendum. Nulla interdum dui gravida massa imperdiet sed, pretium cursus. In neque vitae erat ornare tellus. Ut rhoncus vel, wisi. Praesent rhoncus ac, eleifend erat id magna. Curabitur lobortis semper. Morbi id lectus. In hac habitasse platea dictumst. Aenean ac nunc. Duis eget nulla. Fusce a odio orci, sodales tempor. Pellentesque</p>', 'Suspendisse Luctus', '2012-01-22 22:22:44', NULL, 2, '2012-01-24 22:22:52', NULL),
(12, 'Aliquam ut magna Donec mauris dui lectus blandit lectus', '<p>tempus. Quisque in dolor. Nulla facilisi. Nulla facilisi. Nam nec dui. Sed fringilla orci. Donec lectus vel wisi. Nam consectetuer at, quam. Curabitur arcu id pharetra velit eleifend mi, nec nibh porta turpis et netus et felis non tincidunt augue ac nunc. Maecenas eu orci sit amet mi at lobortis velit. Nullam rutrum lorem. Integer non augue. Praesent faucibus. Maecenas quis pellentesque quis, commodo nec, posuere cubilia Curae; Nullam et ultrices magna. In quam in felis odio tellus consectetuer tincidunt, diam ut nulla nisl felis sagittis mi. Aliquam ut magna. Donec mauris dui lectus blandit lectus. Vestibulum ante pretium magna.</p>', 'Diam Ut-Nulla', '2012-01-23 22:22:47', NULL, 1, '2012-01-24 22:22:52', NULL),
(13, 'Nulla hendrerit et', '<p>vel, eros. Suspendisse a pellentesque leo. Mauris rutrum, urna eu urna. Nam diam ut justo felis tincidunt nulla. Duis elementum eros in faucibus ipsum non nisl nulla mi, id sapien id nisl mollis pulvinar. Nulla aliquet commodo volutpat a, tortor. Maecenas mi facilisis vel, purus. Quisque pretium porttitor. Class aptent taciti sociosqu ad litora torquent per inceptos hymenaeos. Pellentesque habitant morbi tristique interdum. Etiam at sagittis sed, eros. Donec enim nunc, ornare bibendum leo, in turpis quis pellentesque sed, suscipit adipiscing. Mauris imperdiet, neque eu elementum consequat. Morbi felis cursus wisi, eget augue at eros. Sed justo vel sollicitudin quis,</p>\r\n\r\n<p>blandit vel, dignissim dapibus aliquam. In ornare velit lectus bibendum quis, lacinia dignissim, libero fermentum diam neque nibh nisl, eu libero. Cras vitae libero. Vivamus magna. Donec mi. Suspendisse bibendum libero et odio. Ut sagittis urna. Nulla hendrerit et, lobortis eu, bibendum leo, aliquet feugiat velit. Suspendisse eu venenatis in, dapibus aliquam. Nunc in nibh nulla id magna. Donec vel turpis risus ornare in, suscipit ultricies, hendrerit risus. Mauris imperdiet, neque ultrices posuere ante ante, vitae ultrices metus sem, accumsan sed, vestibulum volutpat, libero hendrerit eget, condimentum enim ac diam. Pellentesque eget dolor ut justo vel purus. Integer a neque</p>', 'Mauris Imperdiet', '2012-02-01 16:27:52', NULL, 3, '2012-02-02 00:00:00', NULL),
(14, 'Phasellus ipsum aliquet', '<p>metus nisl a ante in faucibus mollis. Nulla nec tellus. Integer metus gravida massa id ultrices dui. Nullam laoreet, ante pulvinar augue. Aenean facilisis felis, consequat eu, semper dui, in lorem quam fermentum tortor. Proin ultricies ante. Vestibulum et ultrices posuere cubilia Curae; Duis vulputate tempor diam at ipsum ut urna. Nam quis velit. Nunc non eros. Nullam consequat nunc. Nulla a bibendum pede lobortis vitae, imperdiet sapien. Donec ullamcorper eleifend adipiscing elit. Integer eu viverra elit semper auctor. Aenean non leo. Aenean ac quam volutpat id, adipiscing gravida elit. Aliquam interdum wisi eget lectus urna tellus malesuada dolor. Vestibulum</p>\r\n\r\n<p>adipiscing, risus et accumsan pede quis massa sit amet quam. Aliquam in velit tempus erat eu justo. Nam interdum eu, auctor neque. In gravida turpis. Duis blandit risus et rhoncus dolor sit amet, consectetuer massa. Aliquam nec tellus. Donec mauris id enim. Phasellus sagittis sed, ultrices volutpat. Phasellus dapibus dui, porta sit amet, varius justo. Proin cursus nunc. Suspendisse sed lorem velit cursus dui turpis et magnis dis parturient montes, nascetur ridiculus mus. Etiam in est. Aliquam sed porta tincidunt. Pellentesque eget commodo vehicula, dui non orci. Phasellus semper eu, posuere cubilia Curae; In nunc vel risus. Phasellus ipsum aliquet</p>', 'Phasellus Sagittis', '2012-02-02 14:27:44', NULL, 3, '2012-02-02 00:00:00', NULL),
(15, 'Ut libero fermentum nisl neque scelerisque arcu', '<p>adipiscing, risus et accumsan pede quis massa sit amet quam. Aliquam in velit tempus erat eu justo. Nam interdum eu, auctor neque. In gravida turpis. Duis blandit risus et rhoncus dolor sit amet, consectetuer massa. Aliquam nec tellus. Donec mauris id enim. Phasellus sagittis sed, ultrices volutpat. Phasellus dapibus dui, porta sit amet, varius justo. Proin cursus nunc. Suspendisse sed lorem velit cursus dui turpis et magnis dis parturient montes, nascetur ridiculus mus. Etiam in est. Aliquam sed porta tincidunt. Pellentesque eget commodo vehicula, dui non orci. Phasellus semper eu, posuere cubilia Curae; In nunc vel risus. Phasellus ipsum aliquet</p>\r\n\r\n<p>porttitor vel, dignissim dapibus sit amet ligula. Cras adipiscing vitae, faucibus gravida non, ligula. Aliquam et pede id nulla ac turpis et velit vitae ornare velit nulla orci luctus et ultrices posuere orci. In hac habitasse platea dictumst. Suspendisse potenti. Quisque facilisis congue. Mauris convallis libero. Suspendisse potenti. Cras dictum lectus pharetra velit magna, tincidunt lorem. Maecenas quis est. Lorem ipsum adipiscing wisi. Morbi laoreet, enim ac lacus vestibulum wisi sapien magna tincidunt lorem, at nulla sit amet, consectetuer congue arcu. Nam interdum mi vel molestie mauris. Donec urna eget risus. Ut libero fermentum nisl neque scelerisque arcu. Etiam aliquet,</p>', 'Suspendisse Potenti', '2012-01-29 13:51:24', NULL, 3, '2012-02-02 00:00:00', NULL),
(16, 'Nullam magna non dui', '<p>nulla, vitae metus vitae convallis auctor. Nam quis quam ut felis. Pellentesque fringilla enim. Aenean bibendum a, tristique mauris sit amet mauris sit amet dolor. Duis quam ante ipsum dolor sit amet, pretium felis sit amet mauris luctus et pede quis wisi. Vivamus diam eu risus. Suspendisse egestas blandit, lectus pharetra accumsan sit amet, vestibulum ipsum. Aenean lacus tellus non ipsum. Donec eget nibh risus, euismod non, porta urna quam, lobortis volutpat. Praesent tortor risus, commodo odio ac sapien. In hendrerit id, vulputate nunc. Quisque libero. Proin nunc iaculis nec, dignissim a, sollicitudin fringilla. Phasellus vitae quam. Aliquam quis metus.</p>\r\n\r\n<p>a mauris. Nullam magna non dui. Lorem ipsum primis in vehicula viverra, dui aliquam convallis. Fusce convallis posuere. Quisque vehicula sit amet, pretium pellentesque. Nullam sit amet quam ultrices et, dictum sed, viverra nonummy, tellus hendrerit nibh eu nibh. Sed fringilla sed, sollicitudin eu, rhoncus interdum, lacus. Vivamus volutpat eu, pulvinar nulla orci luctus leo felis laoreet molestie ultricies odio, fermentum a, hendrerit nibh placerat eget, lacinia eget, nulla.</p>', 'Hendrerit Nibh', '2012-01-30 14:54:23', NULL, 3, '2012-02-02 00:00:00', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Sports', '2012-02-02 00:00:00', NULL),
(2, 'Technology', '2012-02-02 00:00:00', NULL),
(3, 'Politics', '2012-02-02 00:00:00', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;