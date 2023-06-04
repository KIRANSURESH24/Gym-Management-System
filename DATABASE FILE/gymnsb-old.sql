-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 05:15 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `awc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `brandname` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brandname`) VALUES
(21, 'Mercedes Benz'),
(22, 'BMW'),
(23, 'Audi'),
(24, 'Porche'),
(25, 'Ferrari'),
(26, 'jaguar'),
(27, 'Maruthi'),
(31, 'Tata');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Ceramic Coating'),
(4, 'PPF'),
(7, 'Graphene Coating');

-- --------------------------------------------------------

--
-- Table structure for table `cmpurchase`
--

CREATE TABLE IF NOT EXISTS `cmpurchase` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cmpurchase`
--

INSERT INTO `cmpurchase` (`id`, `date`, `item`, `quantity`, `amount`) VALUES
(1, '2022-11-10', '2022-11-10', '2', '8000'),
(3, '2022-11-28', 'cloths', '2', '6000'),
(4, '2022-12-23', 'food', '2', '8000'),
(7, '2022-12-15', 'brush', '1', '300'),
(8, '2022-12-29', 'food', '2', '4000'),
(10, '2022-12-23', 'cloths', '1', '4000');

-- --------------------------------------------------------

--
-- Table structure for table `employe_reg`
--

CREATE TABLE IF NOT EXISTS `employe_reg` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `adhaar` varchar(200) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `stdate` varchar(200) NOT NULL,
  `eddate` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `idproof` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `employe_reg`
--

INSERT INTO `employe_reg` (`id`, `name`, `phone`, `address`, `adhaar`, `salary`, `stdate`, `eddate`, `designation`, `idproof`, `photo`) VALUES
(38, 'NIKHIL PS', '6238835353', 'Thottuvarambil veedu chalakuzhy lane pattom po', '98675678', '400000', '2022-12-07', '2022-12-23', 'Software Developer', '1651582168883.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `empurchase`
--

CREATE TABLE IF NOT EXISTS `empurchase` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `empurchase`
--

INSERT INTO `empurchase` (`id`, `date`, `name`, `item`, `amount`) VALUES
(1, '2022-11-01', 'akhila sc', 'food', '3'),
(3, '2022-11-29', 'kannan', 'food', '680'),
(4, '2022-11-28', 'asna nivas', 'food', '9000'),
(6, '2022-12-23', 'adithya', 'food', '2'),
(7, '2022-12-22', 'vaishav', 'food', '1000'),
(8, '2022-12-23', 'kannan', 'food', '100');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` int(200) NOT NULL,
  `quantity` int(200) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `date` varchar(200) NOT NULL,
  `hsn` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `quantity`, `vehicle`, `date`, `hsn`) VALUES
(15, 'NIKHIL', 500, 2, 'bmw bm1 bmwv2', '2023-01-09', ''),
(16, 'cauli flower', 33333, 1, 'bmw bm1 bmwv2', '2023-01-30', ''),
(17, 'cauli flower', 1234, 1, 'bmw bm1 bmwv2', '2023-01-31', ''),
(18, 'nikhil', 1233, 1, 'bmw bm1 bmwv2', '2023-01-31', ''),
(19, 'achu', 123, 1, 'bmw bm1 bmwv2', '2023-01-31', ''),
(20, 'tomato', 4321, 2, 'bmw bm1 bmwv2', '2023-01-09', ''),
(21, 'achu', 7000, 1, 'bmw bm1 bmwv2', '2023-01-31', ''),
(22, 'tomato', 9000, 1, 'bmw bm1 bmwv2', '2023-01-31', ''),
(23, 'achu', 16, 1, 'bmw bm1 bmwv2', '2023-01-31', ''),
(24, 'achu', 12000, 1, 'bmw bm1 bmwv2', '2023-01-18', '');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE IF NOT EXISTS `model` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `modelname` varchar(200) NOT NULL,
  `brandid` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `modelname`, `brandid`) VALUES
(22, '	benz1', 0),
(23, 'benz2', 21),
(24, 'benz3', 21),
(28, 'bmw1', 22),
(29, 'bmw2', 22),
(30, 'bmw3', 22),
(31, 'audi1', 23),
(32, 'audi2', 23),
(33, 'audi3', 23),
(34, 'porche1', 24),
(35, 'porche2', 24),
(36, 'porche3', 24),
(37, 'ferrari1', 25),
(38, 'ferrari2', 25),
(39, 'ferrari3', 25),
(40, 'jaguar1', 26),
(41, 'jaguar2', 26),
(42, 'jaguar3', 26),
(43, 'maruthi1', 27),
(44, 'maruthi2', 27),
(45, 'maruthi3', 27),
(46, 'tata1', 31),
(47, 'tata2', 31),
(48, 'tata3', 31);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE IF NOT EXISTS `package` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `packagename` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `packagename`) VALUES
(2, 'Silver'),
(3, 'signature'),
(4, 'gold'),
(6, 'diamond');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE IF NOT EXISTS `price` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `promocode` varchar(200) NOT NULL,
  `additionaldiscount` varchar(200) NOT NULL,
  `output` varchar(100) NOT NULL,
  `commision` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=167 ;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `user_id`, `amount`, `promocode`, `additionaldiscount`, `output`, `commision`) VALUES
(98, '86', '6000', '0', 'NaN', 'NaN', ''),
(102, '90', '68', '0', 'NaN', 'NaN', ''),
(106, '98', '4000', '0', 'NaN', '4000', ''),
(108, '', '', '', '', '', ''),
(109, '', '', '', '', '', ''),
(110, '', '', '', '', '', ''),
(111, '85', '4000', '0', '0', '4000', ''),
(115, '96', '4000', '4', '0', 'NaN', 'NaN'),
(116, '96', '4000', '4', '0', 'NaN', 'NaN'),
(117, '96', '4000', '4', '0', 'NaN', 'NaN'),
(118, '96', '4000', '4', '0', 'NaN', 'NaN'),
(119, '96', '4000', '4', '0', 'NaN', 'NaN'),
(120, '96', '4000', '4', '0', 'NaN', 'NaN'),
(121, '96', 'NaN', '0', '0', 'NaN', 'NaN'),
(122, '96', 'NaN', '0', '0', 'NaN', 'NaN'),
(158, '103', '8000', '10', '3', 'NaN', 'NaN'),
(163, '84', '4000', '1', '1', '3919', '1'),
(164, '', '', '', '', '', ''),
(166, '105', '8000', '3', '0', '7758', '2');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `cartype` varchar(200) NOT NULL,
  `carmodel` varchar(100) NOT NULL,
  `carbrand` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `alternatephone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `carvariant` varchar(200) NOT NULL,
  `years` varchar(100) NOT NULL,
  `fuel` varchar(100) NOT NULL,
  `package` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `email`, `phone`, `cartype`, `carmodel`, `carbrand`, `password`, `surname`, `alternatephone`, `address`, `carvariant`, `years`, `fuel`, `package`, `category`, `status`) VALUES
(84, 'NIKHIL PS', 'nikhilgriffin@gmail.com', '6543214567', 'muv', 'audi2', 'Audi', '', 'griffinmark', '', 'hridhayam veedu PO', 'audiv2', '27-11-2004', 'LPG', 'signature', 'Ceramic Coating', 0),
(103, 'eby', 'eby2@gmail.com', '6543214567', 'Muv', 'porche2', 'Porche', '', 'griffinmark', '', 'gfdgdxhtxht bhrdthtrh htrdhrdyj hrtd fbdrfhdjn jynghjngjntg', 'porchev2', '27-11-2004', 'LPG', 'gold', 'Graphene Coating', 1),
(106, 'Aslam nizam', 'aslam@gmail.com', '6543214567', 'muv', 'audi2', 'Audi', '', 'griffinmark', '', 'gfdgdxhtxht bhrdthtrh htrdhrdyj hrtd fbdrfhdjn jynghjngjntg', 'audiv3', '27-11-2004', 'Petrol', 'signature', 'Ceramic Coating', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` int(200) NOT NULL,
  `quantity` int(200) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE IF NOT EXISTS `variant` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `variantname` varchar(200) NOT NULL,
  `mid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`id`, `variantname`, `mid`) VALUES
(9, 'benz v1', '22'),
(10, 'benzv2', '22'),
(11, 'benzv3', '24'),
(12, 'bmwv1', '28'),
(13, 'bmwv2', '29'),
(14, 'bmwv3', '30'),
(15, 'audiv1', '31'),
(16, 'audiv2', '32'),
(17, 'audiv3', '33'),
(18, 'porchev1', '34'),
(21, 'porchev2', '35'),
(22, 'porchev3', '36'),
(25, 'ferrariv1', '37'),
(26, 'ferrariv2', '38'),
(27, 'ferrariv3', '39'),
(28, 'jaguarv1', '40'),
(29, 'jaguarv2', '41'),
(30, 'jaguarv3', '42'),
(31, 'maruthiv1', '43'),
(32, 'maruthiv2', '44');
--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `blog_name` varchar(200) NOT NULL,
  `content` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_name`, `content`, `image`) VALUES
(1, 'types of home', 'rfhui vfshu vsfuh', 'blog2.png'),
(2, 'purchase of furniture', 'vfuihi vhfiuhi bdfhiuh dhiuhu udihiuh duihiu', 'blog.png'),
(3, 'kitchen design', 'uihiu uvsihiu vsiuhi', 'blog3.png'),
(4, 'aettrwerr', 'rwerwerewrewr', 'jason-wang-5MG8cQbw-T8-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'school'),
(2, 'appartments'),
(3, 'hargs'),
(4, 'home construction'),
(5, 'medical'),
(6, 'online shopping');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pnumber` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `service`, `email`, `pnumber`, `message`) VALUES
(1, 'rohit', 'Digital Marketing', 'rohit@123gmailcom', '6461874681641', 'wff vdwudvywidwydw'),
(2, 'rohit', 'Website Development', 'rohit@123gmailcom', '6461874681', '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `st_date` varchar(100) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `le_name` varchar(200) NOT NULL,
  `pr_type` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `ccp_name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_name` (`project_name`),
  KEY `project_name_2` (`project_name`),
  KEY `project_name_3` (`project_name`),
  KEY `project_name_4` (`project_name`),
  KEY `project_name_5` (`project_name`),
  KEY `project_name_6` (`project_name`),
  KEY `project_name_7` (`project_name`),
  KEY `project_name_8` (`project_name`),
  KEY `project_name_9` (`project_name`),
  KEY `project_name_10` (`project_name`),
  KEY `project_name_11` (`project_name`),
  KEY `project_name_12` (`project_name`),
  KEY `project_name_13` (`project_name`),
  KEY `project_name_14` (`project_name`),
  KEY `project_name_15` (`project_name`),
  KEY `project_name_16` (`project_name`),
  KEY `project_name_17` (`project_name`),
  KEY `project_name_18` (`project_name`),
  KEY `project_name_19` (`project_name`),
  KEY `project_name_20` (`project_name`),
  KEY `project_name_21` (`project_name`),
  KEY `project_name_22` (`project_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `project_name`, `subtitle`, `st_date`, `end_date`, `le_name`, `pr_type`, `category`, `ccp_name`, `image`, `about`, `status`) VALUES
(40, 'adhi', 'school website', '2022-09-13', '2022-09-21', 'nikhil', 'opt1', 'opt1', ' etsertsertsrt', 'beazy-aX1TTOuq83M-unsplash.jpg', 'utuyuiyui', 1),
(42, 'EAdadadad', 'asdadadasd', '2022-09-10', '2022-09-22', 'daDasdaD', 'opt2', '', 'asdadadasda', 'jason-wang-5MG8cQbw-T8-unsplash.jpg', 'adadadadadadasdas', 0),
(44, 'edrr', 'rrrrr', '2022-09-24', '2022-09-14', 'RRRRRR', 'opt2', '', 'RRRRRR', 'blog2.png', 'EDdqdeqedqedqwed', 1),
(45, 'rFddf', 'dfdfdad', '2022-09-24', '2022-09-09', 'dr', 'opt2', '', 'dd', 'blog.png', 'dASDd', 1),
(46, 'eFSRFsRF', 'fsfsfsdFs', '2022-09-18', '2022-09-30', 'fsdfsdfsdf', 'opt2', '', 'sfsdfsdf', 'michael-oxendine-GHCVUtBECuY-unsplash.jpg', 'fsfsdfsdFSFsDF', 0),
(47, 'aeEqe', 'weWEe', '2022-09-25', '2022-09-24', 'E', 'opt2', '', 'ESEAADA', 'michael-oxendine-GHCVUtBECuY-unsplash.jpg', 'DADA', 0),
(48, 'dgsdgdgdgfd', 'fsfsdfsdfsfsa', '2022-09-29', '2022-09-24', 'dADAdasd', 'opt2', '', 'cXaSDASDXs', 'michael-oxendine-GHCVUtBECuY-unsplash.jpg', 'QEDQweqweqweqwe', 0),
(49, 'hasss', 'ssss', '2022-09-27', '2022-09-20', 'sassa', 'opt2', 'hargs', 'zfffsf', 'suhyeon-choi-ehxwis6Ltxg-unsplash.jpg', 'vdssfsffsfsdf', 0),
(50, 'School management', 'school website', '2022-09-17', '2022-09-17', 'nikhil', 'opt2', 'appartments', '12333', 'blockchain.png', 'nngfxfn', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `email`, `password`) VALUES
(2, 'admin', 'admin');
--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `ceezion`
--
--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Database: `db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginform`
--

CREATE TABLE IF NOT EXISTS `loginform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `loginform`
--

INSERT INTO `loginform` (`id`, `user`, `pass`) VALUES
(1, 'admin', 'admin');
--
-- Database: `form`
--
--
-- Database: `form_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `form_data`
--

CREATE TABLE IF NOT EXISTS `form_data` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(12) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `form_data`
--

INSERT INTO `form_data` (`id`, `name`, `email`, `phone`, `address`) VALUES
(1, 'nikhil', 'nikhilappu@gmail.com', 2147483647, 'okookokokok vfjnjkn hi vd idikn'),
(2, 'appu', 'appu@gmail.com', 2147483647, 'knnara thumbi poovaala thumbii aadu aadu nee aadadaadu'),
(3, 'sreenath bhasi', 'bhasi@gmail.com', 69046960, 'ingaatt nokk pichii poothath pichi nullasn porumo nee nte pankili'),
(4, 'chackochan', 'boban@gmail.com', 2147483647, 'oru raajamalli vidarunna pole ninte mizhiyill '),
(5, 'tovino', 'tovi@gmail.com', 2147483647, 'ole melodyy ole melodyy oleyy medloy');
--
-- Database: `gmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_category`
--

CREATE TABLE IF NOT EXISTS `project_category` (
  `category_id` int(5) NOT NULL AUTO_INCREMENT,
  `category_name` int(50) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Database: `gr`
--

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(200) NOT NULL,
  `content` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Database: `griffin`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `surname` varchar(12) NOT NULL,
  `password` int(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `email`, `firstname`, `surname`, `password`) VALUES
(1, 'rohit@123gmailcom', 'rohit', 'raj', 0),
(2, 'nikhil123@gmail.com', 'nikhil', 'ps', 0),
(3, 'manu34@gmail.com', 'manu', 'kumar', 123456),
(4, 'rohit@123gmailcom', 'rohit', 'raj', 7686),
(5, 'vijith32@gmail.com', 'vijith', 'sr', 23456);
--
-- Database: `griffin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `project_id` int(5) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(200) NOT NULL,
  `project_category` varchar(50) NOT NULL,
  `project_decription` longtext NOT NULL,
  `status` int(1) NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `project_category`
--

CREATE TABLE IF NOT EXISTS `project_category` (
  `category_id` int(5) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Database: `gymnsb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `message`, `date`) VALUES
(7, 'This is to announce that our GYM will remain close for 51 days due to COVID-19.', '2020-03-30'),
(8, 'Opening of GYM Halls and Clubs are not fixed yet. Stay tuned for more updates!!', '2020-04-03'),
(9, 'Renovation Going On...', '2020-04-04'),
(10, 'This is a demo announcement from admin', '2022-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `curr_date` text NOT NULL,
  `curr_time` text NOT NULL,
  `present` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `amount` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `amount`, `quantity`, `vendor`, `description`, `address`, `contact`, `date`) VALUES
(3, 'Treadmill', 909, 4, 'DnS', 'Edited Description', '7 Cedarstone Drive', '8521479633', '2019-03-07'),
(4, 'Vertical Press Machine', 949, 3, 'SS Industries', 'For Biceps And Triceps, Upper Back, Chest', '7 Cedarstone Drive', '1245558980', '2020-03-19'),
(5, 'Dumbell - Adjustable', 102, 26, 'Uptown Suppliers', 'Material: Steel, Rubber Plastic, Concrete', '7 Cedarstone Drive', '9875552100', '2020-03-29'),
(6, 'Multi Bench Press Machine', 219, 2, 'DnS Suppliers', '6 In 1 Multi Bench With Incline, Flat, Decline Ben', '7 Cedarstone Drive', '7410001010', '2020-04-05'),
(7, 'Demo', 265, 5, 'Demo', 'This is a demo test.', '77 Demo Lane', '8524445452', '2020-04-03'),
(10, 'RowWarrior Fitness Rowing Mach', 5616, 12, 'Roww Stores', 'HIGHEST QUALITY: This best of class air rowing mac', '52 Weekley Street', '7412585555', '2021-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dor` date NOT NULL,
  `services` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `paid_date` date NOT NULL,
  `p_year` int(11) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `attendance_count` int(100) NOT NULL,
  `ini_weight` int(100) NOT NULL DEFAULT '0',
  `curr_weight` int(100) NOT NULL DEFAULT '0',
  `ini_bodytype` varchar(50) NOT NULL,
  `curr_bodytype` varchar(50) NOT NULL,
  `progress_date` date NOT NULL,
  `reminder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`user_id`, `fullname`, `username`, `password`, `gender`, `dor`, `services`, `amount`, `paid_date`, `p_year`, `plan`, `address`, `contact`, `status`, `attendance_count`, `ini_weight`, `curr_weight`, `ini_bodytype`, `curr_bodytype`, `progress_date`, `reminder`) VALUES
(6, 'Harry Denn', 'harry', 'harry123', 'Male', '2019-12-25', 'Fitness', 165, '2022-06-02', 2021, '3', '64 Mulberry Lane', '8545878545', 'Active', 4, 54, 62, 'Slim', 'Buffed', '2020-04-22', 0),
(8, 'Charles Anderson', 'charles', 'charles123', 'Male', '2020-01-02', 'Fitness', 55, '2020-04-01', 2020, '3', '99 Heron Way', '8520258520', 'Active', 14, 92, 85, 'Fat', 'Bulked', '2020-04-22', 1),
(11, 'Justin Schexnayder', 'justin', 'justin123', 'Male', '2019-01-25', 'Cardio', 40, '2023-04-30', 2020, '1', '14 Blair Court', '7535752220', 'Active', 9, 0, 0, '', '', '0000-00-00', 0),
(14, 'Ryan Crowl', 'ryan', 'ryan123', 'Male', '2019-07-13', 'Fitness', 55, '2020-04-02', 2020, '12', '34 Twin Oaks Drive', '1578880010', 'Active', 13, 59, 63, 'Slim', 'Slim', '2020-04-23', 0),
(62, 'Aiswarya', 'Aiswarya', 'Aiswarya123', 'Male', '0000-00-00', 'Fitness', 60, '2023-04-30', 2023, '1', 'trivandrum', '9087654567', 'Active', 0, 0, 0, '', '', '0000-00-00', 0),
(63, 'Sooraj', 'sooraj', 'sooraj123', 'Male', '2023-10-04', 'Fitness', 60, '2023-05-04', 2023, '1', 'Thottuvarabil veedu ', '9876543234', 'Active', 0, 0, 0, '', '', '0000-00-00', 0),
(64, 'NIKHIL PS', 'Nikhil', 'Nikhil321', 'Male', '2023-12-04', 'Fitness', 55, '2023-05-04', 2023, '1', 'thekkedathu veedu pa', '9245678876', 'Active', 0, 0, 0, '', '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE IF NOT EXISTS `rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `name`, `charge`) VALUES
(1, 'Fitness', '55'),
(2, 'hot steam bath.', '35'),
(3, 'Cardio', '40');

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE IF NOT EXISTS `reminder` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status` text NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`id`, `name`, `message`, `status`, `date`, `user_id`) VALUES
(12, 'staff', 'asd', 'unread', '2020-04-16 22:39:59', 0),
(13, 'staff', 'asdasdas', 'unread', '2020-04-16 22:40:49', 0),
(14, 'staff', 'ASasA', 'unread', '2020-04-16 22:41:59', 0),
(15, 'staff', 'asdasdasd', 'unread', '2020-04-16 22:42:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE IF NOT EXISTS `staffs` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` int(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`user_id`, `username`, `password`, `email`, `fullname`, `address`, `designation`, `gender`, `contact`) VALUES
(1, 'bruno', 'bruno123', 'brunoden@mail.com', 'Bruno Den', '26 Morris Street', 'Cashier', 'Male', 852028120),
(2, 'michelle', 'michelle123', 'michelle@mail.com', 'Michelle R. Lane', '61 Stone Lane', 'Trainer', 'Female', 2147483647),
(3, 'james', 'james123', 'jamesb@mail.com', 'James Brown', '12 Deer Ridge Drive', 'Trainer', 'Male', 2147483647),
(4, 'bruce', 'bruce123', 'bruce@mail.com', 'Bruce H. Klaus', '68 Lake Floyd Circle', 'Manager', 'Male', 1458887788);

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE IF NOT EXISTS `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_status` varchar(50) NOT NULL,
  `task_desc` varchar(30) NOT NULL,
  `user_id` int(7) NOT NULL,
  `days` varchar(20) NOT NULL,
  `time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `task_status`, `task_desc`, `user_id`, `days`, `time`) VALUES
(20, 'In Progress', 'Test Completed', 14, '', ''),
(21, 'Pending', 'Mastering Crunches', 6, '', ''),
(22, 'In Progress', 'Standing Workouts For Flat Abs', 6, '', ''),
(23, 'In Progress', 'Triceps Buildup - 3 set', 14, '', ''),
(24, 'Pending', 'Decline dumbbell bench press', 6, '', ''),
(87, 'In Progress', 'Leg', 64, 'Friday', '7pm  to 9pm'),
(88, 'In Progress', 'chest', 63, 'monday', '7pm  to 9pm');
--
-- Database: `harsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `licence`
--

CREATE TABLE IF NOT EXISTS `licence` (
  `lno` int(11) NOT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `idate` date DEFAULT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `validdate` date DEFAULT NULL,
  PRIMARY KEY (`lno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licence`
--

INSERT INTO `licence` (`lno`, `lname`, `idate`, `city`, `state`, `age`, `validdate`) VALUES
(1001, 'harshal', '0000-00-00', 'tvm', 'kerala', 19, '0000-00-00'),
(1002, 'shiva', '0000-00-00', 'tvm', 'kerala', 19, '0000-00-00'),
(1003, 'manu', '0000-00-00', 'mubai', 'tvm', 15, '0000-00-00');
--
-- Database: `hrough`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `blog_name` varchar(200) NOT NULL,
  `content` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_name`, `content`, `image`) VALUES
(1, 'types of home', 'rfhui vfshu vsfuh', 'blog2.png'),
(2, 'purchase of furniture', 'vfuihi vhfiuhi bdfhiuh dhiuhu udihiuh duihiu', 'blog.png'),
(3, 'kitchen design', 'uihiu uvsihiu vsiuhi', 'blog3.png'),
(4, 'aettrwerr', 'rwerwerewrewr', 'jason-wang-5MG8cQbw-T8-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'school'),
(2, 'appartments'),
(3, 'hargs'),
(4, 'home construction'),
(5, 'medical'),
(6, 'online shopping'),
(7, 'nothing da'),
(8, 'hai'),
(9, 'lll'),
(10, 'cdvc'),
(11, 'tweleve');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pnumber` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `service`, `email`, `pnumber`, `message`) VALUES
(1, 'rohit', 'Digital Marketing', 'rohit@123gmailcom', '6461874681641', 'wff vdwudvywidwydw'),
(2, 'rohit', 'Website Development', 'rohit@123gmailcom', '6461874681', '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `st_date` varchar(100) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `le_name` varchar(200) NOT NULL,
  `pr_type` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `ccp_name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_name` (`project_name`),
  KEY `project_name_2` (`project_name`),
  KEY `project_name_3` (`project_name`),
  KEY `project_name_4` (`project_name`),
  KEY `project_name_5` (`project_name`),
  KEY `project_name_6` (`project_name`),
  KEY `project_name_7` (`project_name`),
  KEY `project_name_8` (`project_name`),
  KEY `project_name_9` (`project_name`),
  KEY `project_name_10` (`project_name`),
  KEY `project_name_11` (`project_name`),
  KEY `project_name_12` (`project_name`),
  KEY `project_name_13` (`project_name`),
  KEY `project_name_14` (`project_name`),
  KEY `project_name_15` (`project_name`),
  KEY `project_name_16` (`project_name`),
  KEY `project_name_17` (`project_name`),
  KEY `project_name_18` (`project_name`),
  KEY `project_name_19` (`project_name`),
  KEY `project_name_20` (`project_name`),
  KEY `project_name_21` (`project_name`),
  KEY `project_name_22` (`project_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `project_name`, `subtitle`, `st_date`, `end_date`, `le_name`, `pr_type`, `category`, `ccp_name`, `image`, `about`, `status`) VALUES
(72, 'kannan', 'school website', '2022-10-01', '2022-09-17', 'vishnu', 'opt2', 'home construction', 'etsertsertsrt', '205f5ea5968d271aef1ea355ec05148b.jpg', 'htiji  ihjiothj', 0),
(73, 'sarath', 'shiva', '2022-09-24', '2022-09-05', 'tetesrtsert', 'opt3', 'appartments', 'DFADAFSFSDFSDFSDFSD', 'aslam nizam.jpg', 'ghfnf htfncf htf', 0),
(74, 'rohit', 'school website', '2022-09-17', '2022-09-07', 'harshal', 'opt2', 'online shopping', 'ssefssrsr', 'rincy.jpeg', 'frvd vesvers vresverfv frcas vcr frasfcwa', 0),
(75, 'proarch', 'home construction', '2022-11-12', '2022-11-03', 'vishnu', 'opt2', 'cdvc', 'ssefssrsr', 'pro.png', 'jkj', 0),
(76, 'prakash', 'AWC', '2022-11-24', '2022-11-24', 'Anokha', 'opt3', 'online shopping', 'AWC', 'proarch.png', 'hjbhjbbbj', 0),
(77, 'java', 'block chain developing course', '2022-11-18', '2022-11-20', 'RFYUAGHFAWEUILRFAEW', 'opt2', 'hargs', 'etsertsertsrt', 'griffin.png', 'ml', 0),
(78, 'java', 'block chain developing course', '2022-11-18', '2022-11-20', 'RFYUAGHFAWEUILRFAEW', 'opt2', 'hargs', 'etsertsertsrt', 'griffin.png', 'ml', 0),
(79, 'java', 'block chain developing course', '2022-11-18', '2022-11-20', 'RFYUAGHFAWEUILRFAEW', 'opt2', 'hargs', 'etsertsertsrt', 'team6.jpg', 'ml', 0),
(80, 'java', 'block chain developing course', '2022-11-18', '2022-11-20', 'RFYUAGHFAWEUILRFAEW', 'opt2', 'hargs', 'etsertsertsrt', 'license.jpg', 'ml', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `email`, `password`) VALUES
(2, 'admin', 'admin');
--
-- Database: `intersmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(100) NOT NULL,
  `bg_images` varchar(100) NOT NULL,
  `ab_blog` varchar(10000) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `bg_name`, `bg_images`, `ab_blog`, `date`) VALUES
(1, 'sample', 'tab01.jpg', 'gteshg', '2023-03-30');
--
-- Database: `iq`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(200) NOT NULL,
  `bg_category` varchar(200) NOT NULL,
  `bg_images` varchar(200) NOT NULL,
  `ab_blog` varchar(10000) NOT NULL,
  `status` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `bg_name`, `bg_category`, `bg_images`, `ab_blog`, `status`) VALUES
(6, '10 Points to Consider for Home Construction ', 'construction', 'project4.jpg', '<p>Building a home is a dream to many and also a significant investment. It is with careful planning and attention to detail that you shall proceed with the affair, since it is a one-time deal for the lot of us. There are several factors to be considered before stepping in to the process of building a house, which would be discussed in detail in the below discourse. To ensure the completion of a successful home construction project that meets all your needs and stays within your budget, you are advised to follow these instructions. </p> <ul style="list-style-type:circle"> <li>Architect and Construction Team</li><p>The most important step to take while planning to construct a home is to find a team of builders and an architect who would properly understand your likes and needs to execute your ideas in a professional manner. Even if you have exceptional ideas about constructing your dream home, the well-execution of these ideas require a professional team with fine experience. </p><li>Location</li><p>The location of your home is essential. It will determine the kind of home you can build, how much it will cost, and its resale value. When choosing a location, consider the neighborhood, local schools, access to transportation, and the quality of the soil, especially if you plan to build a basement. If you do not have much of a choice with the location, consider to design your home according to the features of the location; as in which direction the house should face and how the elevations should be designed.</p><li>Building permits</li><p>Building permits are necessary for all construction projects, and they vary from state to state. Before you start building, you must apply for a building permit from your local building department. The permit will outline what you can and cannot do, and it will ensure that your home meets local building codes. Knowing this can prevent undesired issues in the future. Not just while constructing a new home, but for renovation processes also, you shall apply for a building permit. </p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `category_name`) VALUES
(1, 'blogcategoryone'),
(4, 'blogcategorytwo'),
(5, 'construction');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'NIKHIL PS', 'neelan@gmail.com', 'checking a contact form', 'fghhgf fghg'),
(5, 'NIKHIL', 'neelan@gmail.com', 'checking a contact form', 'qwqdfegrhdtjhj');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `gr_image` varchar(200) NOT NULL,
  `project_id` varchar(200) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `pr_name` varchar(200) NOT NULL,
  `pr_sub_title` varchar(200) NOT NULL,
  `st_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `pr_category` varchar(200) NOT NULL,
  `pr_images` varchar(200) NOT NULL,
  `ab_project` varchar(200) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `pr_name`, `pr_sub_title`, `st_date`, `end_date`, `pr_category`, `pr_images`, `ab_project`, `status`) VALUES
(5, 'project1', 'Construction', '2023-02-28', '2023-02-28', 'checking3', 'project1.jpg', 'wsdf efw gr gsdv sdv tsdgbvsedgv', 0),
(6, 'project2', 'school website', '2023-02-28', '2023-02-28', 'checking3', 'project4.jpg', 'hdrhioj hijioh  itrbjhdj aoko pk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_category`
--

CREATE TABLE IF NOT EXISTS `project_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `project_category`
--

INSERT INTO `project_category` (`id`, `category_name`) VALUES
(1, 'checkingonesss'),
(5, 'checking2'),
(6, 'checking3');
--
-- Database: `josco`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` int(12) NOT NULL,
  `password` varchar(25) NOT NULL,
  `city` varchar(100) NOT NULL,
  `query` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `email`, `phone`, `password`, `city`, `query`) VALUES
(1, 'NIKHIL PS', 'nikhilpushparajan200', 2147483647, '1234567', 'trivandrum', 'no '),
(2, 'neelan', 'neelan@gmail.com', 2147483647, '65432', 'sdfghjm', 'we'),
(3, 'brock', 'brock@123', 45474274, '65432', 'sdfghjm', 'no '),
(4, 'ruban', 'ruban12@gmail.com', 2147483647, '2345', 'parashaala', 'no'),
(5, 'vadivaleu', 'vadivelu@gmail.com', 2147483647, 'vadivelu', 'trivandrum', 'no '),
(6, 'griffin', 'hello@griffinmark.co', 2147483647, 'griffin', 'trivandrum', 'no ');

-- --------------------------------------------------------

--
-- Table structure for table `vregistration`
--

CREATE TABLE IF NOT EXISTS `vregistration` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` tinyint(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vregistration`
--

INSERT INTO `vregistration` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'karthik', 'karthik12@gmail.com', '2147483647', 0),
(2, 'vijith', 'vijith32@gmail.com', '2147483647', 0),
(3, 'ameer', 'ameer21@gmail.com', '2147483647', 0),
(4, 'vijay', 'vijay@123gmailcom', '2147483647', 0);
--
-- Database: `kpcc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(200) NOT NULL,
  `st_date` varchar(200) NOT NULL,
  `ed_date` varchar(200) NOT NULL,
  `bg_category` varchar(200) NOT NULL,
  `bg_image` varchar(200) NOT NULL,
  `ab_blog` varchar(1000) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `bg_name`, `st_date`, `ed_date`, `bg_category`, `bg_image`, `ab_blog`, `status`) VALUES
(29, 'Updates from State Executive Meeting ', '2022-12-30', '', 'select category', 'FB_IMG_1672740868619.jpg', 'The state executive meeting of KPCC minority department held on 30/12/2022 at Kozhikode, was inaugurated by Imran Pratapgarhi, the AICC minority department national chairman. The Sadbhavana Mission logo was released at the meeting presided over by State Chairman Adv. Shihabudeen Kariyath.  Various decisions were taken during the meeting which included the commencement of charity activities as a part of the Sadbhavana Mission started by KPCC Minority Department to help the suffering sections of the society district by district. â€œCharity activities as a part of Sadbhavana Mission, which is started in each district of the department, will help the needy sections of the society,â€ proclaimed Adv. Shihabudeen Kariyath during his address. A resolution was presented in the meeting on the issue of buffer zone, which is a challenge faced by the hill farmers, and against the increasing use of drugs in the society. The meeting was concluded by taking unanimous decisions to strengthen the activ', 0),
(30, 'Request to reinstate Maulana Abul Kalam Azad National Fellowship', '', '', 'select category', 'FB_IMG_1672741204062.jpg', 'The Kerala Pradesh Congress Minority Department has requested the Central Government to reinstate the Maulana Abul Kalam Azad National Fellowship, which was suspended by the Central Government, in a resolution presented at the state executive meeting. Speaking in favor of the motion presented by Kottayam District Chairman Shri. Boban Thopil, the state chairman Adv. Shihabudeen Kariyath asked the central and state governments to take steps through legislation to create a special ministry to save todayâ€™s generation from the influence of the growing drug mafia. The gathering also addressed various difficulties faced by the students belonging in the minority committee, which could be resolved with the help of the scholarship', 0),
(31, 'Solidarity with strike against mayor by UDF councilors.', '', '', 'select category', 'news_img.jpg', 'The party has been on strike for more than two weeks demanding the resignation of Mayor Arya Rajendran, who had sent a letter to the district secretary seeking a list for political appointments. The politicians on strike proclaims that â€œa mayor who violates her oath is not entitled to continue in the position even for a moment.â€ The strikers allege CPIM leadership of their nepotism in protecting the Mayor. Leaders of KPCC Minority Department further expressed solidarity with the Satyagraha strike by UDF Councilors at the Corporation Gate by taking part in the gathering.', 0),
(32, 'KPCC Minority Department partaking in charity works.', '', '', 'select category', 'FB_IMG_1672741536005.jpg', 'The leaders of KPCC Minority Department District Committee gathered at Bishop Jerome Shelter in Koivila, Kollam to take part in charity works on 27th November. According to recent reports, leaders of the KPCC Minority Department are currently taking part in a variety of charity works to help those in need. The leaders spent prolonged hours assisting the inmates and serving them.  The department has been working with shelters to provide food, clothing, and other services to those living in poor conditions. The department has also been providing meals to those in need through their program to feed the hungry. The leaders are also working to provide medical care and assistance to those who are in need of it. Overall, the KPCC Minority Department has dedicated their resources to help those in need and providing resources to help them build a better future.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_image`
--

CREATE TABLE IF NOT EXISTS `blog_image` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `bd_image` varchar(200) NOT NULL,
  `blog_id` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `blog_image`
--

INSERT INTO `blog_image` (`id`, `bd_image`, `blog_id`) VALUES
(28, 'carosel3.jpg', 21),
(29, 'about1.jpg', 24),
(30, 'carosel.jpg', 25),
(32, 'umman.jpg', 27),
(34, 'shashi.jpg', 26),
(35, 'carosel3.jpg', 28);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'press meeting'),
(3, 'Election');

-- --------------------------------------------------------

--
-- Table structure for table `event_image`
--

CREATE TABLE IF NOT EXISTS `event_image` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `ed_image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) NOT NULL,
  `st_date` varchar(200) NOT NULL,
  `ed_date` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `ab_event` varchar(200) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `st_date`, `ed_date`, `image`, `ab_event`, `status`) VALUES
(14, 'Participation in Bharat Jodo Yatra', '2022-09-29', '', 'jodo.jpg', 'KPCC Minority Department leaders joined Rahul Gandhi for Bharat Jodo Yatra to proclaim support to the movement.', 0),
(15, ' Inaugurating the new Rajiv Gandhi Cultural & Welfare Organisation', '2020-11-16', '', 'rajiv.jpg', 'Shri V S Sivakumar inaugurating the new Rajiv Gandhi Cultural & Welfare Organisation', 0),
(16, 'State Executive Meeting ', '2022-12-30', '', 'event01.png', 'KPCC Minority Department state executive meeting inaugurated by AICC minority department national chairman Imran Pratapgarhi. The Sadbhavana mission logo was launched during the ceremony.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `gr_name` varchar(200) NOT NULL,
  `st_date` varchar(200) NOT NULL,
  `ed_date` varchar(200) NOT NULL,
  `gr_category` varchar(200) NOT NULL,
  `gr_image` varchar(200) NOT NULL,
  `gr_location` varchar(200) NOT NULL,
  `ab_gallery` varchar(200) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `gr_name`, `st_date`, `ed_date`, `gr_category`, `gr_image`, `gr_location`, `ab_gallery`, `status`) VALUES
(22, 'Charity Works', '', '', 'Charity Works', 'kariyath 2.jpg', '', '', 0),
(23, 'Meetings', '', '', 'Meetings', 'kariyath 3.jpg', '', '', 0),
(26, 'Prominent Figures', '', '', 'Prominent Figures', 'kariyath-4.jpg', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_image`
--

CREATE TABLE IF NOT EXISTS `gallery_image` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `gd_image` varchar(500) NOT NULL,
  `gallery_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `gallery_image`
--

INSERT INTO `gallery_image` (`id`, `gd_image`, `gallery_id`) VALUES
(18, 'carosel3.jpg', '21'),
(19, 'carosel2.jpg', '20'),
(20, 'carosel1.jpg', '19'),
(21, 'carosel3.jpg', '21'),
(22, 'carosel3.jpg', '21'),
(23, 'carosel.jpg', '21'),
(24, 'kariyath 2.1.jpg', '22'),
(25, 'kariyath 2.2.jpg', '22'),
(26, 'kariyath 3.1.jpg', '23'),
(27, 'kariyath 3.2.jpg', '23'),
(28, 'kariyath 3.3.jpg', '23'),
(29, 'kariyath 3.4.jpg', '23'),
(30, 'kariyath-4.1.jpg', '26'),
(31, 'kariyath-4.2.jpg', '26'),
(32, 'kariyath-4.3.jpg', '26'),
(33, 'kariyath-4.4.jpg', '26'),
(34, 'kariyath-4.5.jpg', '26');

-- --------------------------------------------------------

--
-- Table structure for table `gr_category`
--

CREATE TABLE IF NOT EXISTS `gr_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `gr_category` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `gr_category`
--

INSERT INTO `gr_category` (`id`, `gr_category`) VALUES
(1, 'gallery1'),
(2, 'gallery2'),
(3, 'gallery3'),
(4, 'Charity Works'),
(5, 'Meetings'),
(6, 'Prominent Figures');
--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `userid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `password`) VALUES
('admin', 'admin');
--
-- Database: `medi_track`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_available`
--

CREATE TABLE IF NOT EXISTS `blood_available` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_type` varchar(150) NOT NULL,
  `blood_pktdet` varchar(150) NOT NULL,
  `blood_pktno` varchar(150) NOT NULL,
  `bank_uid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `blood_available`
--

INSERT INTO `blood_available` (`id`, `blood_type`, `blood_pktdet`, `blood_pktno`, `bank_uid`, `st`) VALUES
(1, '1', '50L packet', '5', 'donor', 0),
(2, '2', '75L packet', '12', 'donor', 0),
(6, '2', '8', '9', 'rahul', 0),
(12, '4', '5l', '5', 'donor', 0),
(13, '4', '5l', '5', 'donor', 0),
(14, '11', '32', '2', 'ajay', 0),
(15, '6', '8', '2', 'ajay', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE IF NOT EXISTS `blood_bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bankname` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `cntperson` varchar(150) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `license` varchar(150) NOT NULL,
  `licenseattach` varchar(150) NOT NULL,
  `loginid` varchar(150) NOT NULL,
  `lat` float NOT NULL,
  `longi` float NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`bank_id`, `bankname`, `address`, `cntperson`, `mobile`, `license`, `licenseattach`, `loginid`, `lat`, `longi`, `st`) VALUES
(1, 'Blood Donors', 'Chalakkuzhi,\r\n Thiruvananthapuram, \r\nKerala 695011', 'Manoj Kumar', '7898765432', 'LACP/890/olp', 'alumni.docx', 'donor', 8.48812, 76.9516, 1),
(2, 'Diyan blood bank', 'medical college road ulloor', 'Aravindh.A', '9867543678', 'Tb18214623', 'harishma (2).pmd', 'rahul', 8.55735, 76.9026, 1),
(3, 'penpol', 'puliyarakonam', 'ajay', '8921868536', 'sds', 'conceptual-tag-cloud-containing-names-260nw-384384565.jpg', 'ajay', 8.52146, 76.8665, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blood_type`
--

CREATE TABLE IF NOT EXISTS `blood_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_uid` varchar(150) NOT NULL,
  `blood_type` varchar(150) NOT NULL,
  `descr` text NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `blood_type`
--

INSERT INTO `blood_type` (`id`, `bank_uid`, `blood_type`, `descr`, `st`) VALUES
(1, 'donor', 'A+', 'If your blood is A positive (A+), it means that your blood contains type-A antigens with the presence of a protein called the rhesus (Rh) factor. Antigens are markers on the surface of a blood cell.', 0),
(2, 'donor', 'B+', 'A blood type (also called a blood group) is a classification of blood, based on the presence and absence of antibodies and inherited antigenic substances on the surface of red blood cells (RBCs). These antigens may be proteins, carbohydrates, glycoproteins, or glycolipids, depending on the blood group system', 0),
(4, 'donor', 'O+', 'O+ blood does not have A or B antibodies on the surface of the cells, but it is positive for the presence of Rh factor.', 0),
(5, 'donor', 'O-', 'O NEGATIVE. The â€œuniversal red cell donor,â€ the O- blood type occurs in 1 of every 15 people and is the only blood type that is able to give red cells to all other', 0),
(6, 'donor', 'B-', 'B NEGATIVE. B- is only found in 1 in every 61 people, making it extremely rare. Every two seconds, someone needs blood, so B- is in high demand constantly', 0),
(7, 'donor', 'AB+', 'AB+ is the universal recipient blood type, meaning that patients with AB+ blood can receive blood from donors of any blood type if they require a transfusion', 0),
(8, 'donor', 'AB-', 'AB negative. AB- only found in 1 of every 167 people, making it the rarest blood type there. is. AB- patients can receive red blood cells from all negative blood types.', 0),
(10, 'rahul', 'A+', 'blood donate to A+ and AB+\r\nblood receive from A+ ,A-,O+,O-', 0),
(11, 'ajay', 'rh', 'rare blood group', 0);

-- --------------------------------------------------------

--
-- Table structure for table `complaint_data`
--

CREATE TABLE IF NOT EXISTS `complaint_data` (
  `cmplid` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `cfrm` varchar(25) NOT NULL,
  `ctit` varchar(250) NOT NULL,
  `cmp` text NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`cmplid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `complaint_data`
--

INSERT INTO `complaint_data` (`cmplid`, `dt`, `cfrm`, `ctit`, `cmp`, `st`) VALUES
(1, '2019-02-11', 'midhuna', 'About System', 'Very good system.Working properly.', 1),
(2, '2019-02-08', 'biju', 'About System', 'Nice System', 1),
(3, '2019-02-05', 'syam1', 'About System', 'Properly Working.Very Happy.', 1),
(4, '2020-11-12', 'Aju', 'Description', 'Good', 1),
(5, '2020-11-12', 'Harshal', 'Athira medical shop', 'Very bad shop', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lab_facility`
--

CREATE TABLE IF NOT EXISTS `lab_facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_uid` varchar(150) NOT NULL,
  `facility_name` varchar(150) NOT NULL,
  `facility_descr` text NOT NULL,
  `facility_st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `lab_facility`
--

INSERT INTO `lab_facility` (`id`, `lab_uid`, `facility_name`, `facility_descr`, `facility_st`) VALUES
(1, 'Dianova', 'Complete Blood Count', 'This test, also known as a CBC, is the most common blood test performed. It measures the types and numbers of cells in the blood, including red and white blood cells and platelets. This test is used to determine general health status, screen for disorders and evaluate nutritional status. It can help evaluate symptoms such as weakness, fatigue and bruising, and can help diagnose conditions such as anemia, leukemia, malaria and infection.', 0),
(3, 'Dianova', 'Prothrombin Time', 'Also known as PT and Pro Time, this test measures how long it takes blood to clot. This coagulation test measures the presence and activity of five different blood clotting factors. This test can screen for bleeding abnormalities, and may also be used to monitor medication treatments that prevent the formation of blood clots.', 0),
(6, 'lab', 'sugar test', 'zsadreqfghjkjvcx', 0),
(7, 'dianova', 'TSH test', 'A TSH test is a blood test that measures this hormone', 0),
(8, 'dianova', 'FPG test ', 'The fasting plasma glucose test is the preferred method of screening for diabetes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lab_pkg`
--

CREATE TABLE IF NOT EXISTS `lab_pkg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facility_id` int(11) NOT NULL,
  `add_cost` varchar(150) NOT NULL,
  `lab_id` varchar(150) NOT NULL,
  `pkg_st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `lab_pkg`
--

INSERT INTO `lab_pkg` (`id`, `facility_id`, `add_cost`, `lab_id`, `pkg_st`) VALUES
(2, 1, '210', 'Dianova', 0),
(5, 3, '879', 'dianova', 0),
(9, 5, '80', 'lab', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medi_lab`
--

CREATE TABLE IF NOT EXISTS `medi_lab` (
  `lab_id` int(11) NOT NULL AUTO_INCREMENT,
  `labname` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `cntperson` varchar(150) NOT NULL,
  `mobile` varchar(35) NOT NULL,
  `license` varchar(150) NOT NULL,
  `licenseattach` varchar(150) NOT NULL,
  `loginid` varchar(150) NOT NULL,
  `lat` float NOT NULL,
  `longi` float NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`lab_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medi_lab`
--

INSERT INTO `medi_lab` (`lab_id`, `labname`, `address`, `cntperson`, `mobile`, `license`, `licenseattach`, `loginid`, `lat`, `longi`, `st`) VALUES
(1, 'Dianova Laboratories', 'ABG Complex, \nMedical College,\nMedical College Murinjapalam Rd, Opp Trida Cente, Murinjapalam, Thiruvananthapuram, Kerala 695011', 'Radakrishnan Nair', '9876543210', 'MAL/7689/Tc/09', 'CENTRE FOR PROFESSIONAL AND ADVANCED STUDIES.docx', 'Dianova', 8.4812, 76.9591, 1),
(2, 'geio', 'gfdsaqwerty', 'harshaj', '9867543678', 'TA18214636', 'harishma (3).pmd', 'lab', 8.62711, 77.0326, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medi_shop`
--

CREATE TABLE IF NOT EXISTS `medi_shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_nme` varchar(200) NOT NULL,
  `addr` varchar(250) NOT NULL,
  `con_per` varchar(150) NOT NULL,
  `mob` varchar(15) NOT NULL,
  `num` varchar(50) NOT NULL,
  `ln` varchar(30) NOT NULL,
  `uid` varchar(25) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `medi_shop`
--

INSERT INTO `medi_shop` (`shop_id`, `s_nme`, `addr`, `con_per`, `mob`, `num`, `ln`, `uid`, `lat`, `lng`, `st`) VALUES
(13, 'SarathZ MediZz', 'Lulu mall Edapally', 'Sarath Jaquar', '9999888889', 'asd/987', 'hallticktkannan.png', 'sarathz', '10.027005365174599', '76.30794525146484', 1),
(14, 'kerala medicals', 'Thazava,Avhs', 'Samboo sasidharan', '9998887776', 'asfd/765/fdd/67', '1.png', 'kerala1', '9.09861783418112', '76.55241477513664', 1),
(15, 'Neethi Medicals', 'Kochi', 'Giri Rajan', '9878675434', 'bsw/lo/009', 'frm2.png', 'neethi1', '9.923588404424736', '76.2678520205078', 1),
(16, 'kalayani  Medicals ', 'Thambanoor', 'Kalyani', '8998277299', 'ssw/0098', 'frame1.png', 'kalyani1', '8.49321195587849', '76.95501251245116', 1),
(17, 'Asha Medicals', 'Pullimoodu, Statue', 'Asha S Kumar', '9007812326', 'fgh/pp/009', 'kannan.png', 'asha1', '8.494824394269367', '76.94809777761077', 1),
(18, 'JK medicals', 'Near KSRTC stand Karunagapally,Pin-690518', 'Jayakrishnan', '9147658927', 'AS/12786/18', 'cert2-big.jpg', 'jkm', '9.051371071594309', '76.5365441106909', 1),
(19, 'LP Medicals', 'Near KSRTC bus stand Karunagapally,Pin-690518', 'Hemarajan', '9867123456', 'AS/12799/18', 'LetterDrugs1.jpg', 'lpm', '9.051551434725196', '76.536994136668', 1),
(20, 'surya medicals', 'winson mansion flat ,pattom kowdiar kuravankonam', 'surya', '4712437005', '09088', 'Koala.jpg', 'surya1', '8.523874377489378', '76.9539396288452', 1),
(21, 'Matha medicals', 'matha medicals,palayam', 'Public Works', '1234567899', '123', '2.jpg', 'matha', '8.506992662764107', '76.95235330132255', 1),
(22, 'Shifa medicals', 'shifa medicals,Vakkom,Attingal', 'Public Works', '9876543210', '909', 'pris.jpg', 'shifa', '8.695698642733799', '76.81762659645733', 1),
(23, 'Krishna Medicals', 'Near Gpo\r\nPulimoodu\r\nTrivandrum\r\n695001', 'Krishnaja Nair', '9655321908', 'MST/8765/p78gt', 'pris.jpg', 'krishna', '8.490008594028025', '76.94572134042357', 1),
(26, 'ARON MEDICAL SHOP', 'vettucaud road', 'HARSHAL', '9526227849', 'TA18214636', 'IMG20200915123242.jpg', 'Revathi', '8.48612486815563', '76.90738677978516', 1),
(28, 'uit ', 'kuravankonam', 'principal', '0987654321', '111', 'harishma (1).pmd', 'uit', '8.52054661655578', '76.96040868759155', 1),
(29, 'krishna', 'kudapanakunnu ', 'ajin', '8590422074', 'TA18214645', 'parrot.jpeg', 'mani sir', '8.483666854681376', '76.96341152458709', 1),
(30, 'aji', 'aron', 'aji', '9526227849', 'Tb18214623', 'harishma (1).pmd', 'aji', '8.417960743941686', '76.99143904825873', 1),
(31, 'athira', 'amalabdffg', 'athira', '2458995788', 'Tb18214623', 'harishma (3).pmd', 'athira', '8.50730458365006', '76.91082000732422', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_data`
--

CREATE TABLE IF NOT EXISTS `medicine_data` (
  `medid` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(25) NOT NULL,
  `nme` varchar(50) NOT NULL,
  `typ` varchar(25) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`medid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `medicine_data`
--

INSERT INTO `medicine_data` (`medid`, `shop_id`, `nme`, `typ`, `st`) VALUES
(1, 'k101', 'Paracetamol', 'Tablet', 1),
(2, 'k101', 'Dolo 650', 'Tablet', 2),
(3, 'k101', 'parecetamol', 'Tablet', 34),
(4, 'neethi2018', 'Avel', 'Tablet', 5),
(5, 'neethi2018', 'parecetamol', 'Tablet', 1),
(6, 'neethi2018', 'Crocin200', 'Capsule', 8),
(7, 'neethi2018', 'B-Complex', 'Capsule', 2),
(8, 'neethi2018', 'Dolo-650', 'Tablet', 7),
(9, 'neethi2018', 'T-90', 'Capsule', 9),
(10, 'kerala1', 'Aval', 'Tablet', 2),
(11, 'kerala1', 'crocin 250', 'Tablet', 3),
(12, 'kerala1', 'Glimi 1', 'Tablet', 9),
(13, 'kerala1', 'Sizodan 1', 'Tablet', 20),
(14, 'kerala1', 'Bcosules', 'Capsule', 2),
(15, 'kerala1', 'Paracetamol', 'Tablet', 1),
(16, 'kalyani1', 'Aval', 'Tablet', 2),
(17, 'kalyani1', 'Tonix', 'Syrup', 55),
(18, 'kalyani1', 'Aspirin', 'Tablet', 5),
(19, 'kalyani1', 'Opex2', 'Capsule', 6),
(20, 'kalyani1', 'Paracetamol', 'Tablet', 1),
(21, 'kalyani1', 'crocin 250', 'Tablet', 3),
(23, 'asha1', 'Aval', 'Tablet', 2),
(24, 'asha1', 'crocin 250', 'Tablet', 2),
(25, 'asha1', 'Bcosules', 'Capsule', 1),
(26, 'asha1', 'JCM', 'Capsule', 3),
(27, 'asha1', 'Tonix', 'Syrup', 50),
(28, 'asha1', 'BbMax', 'Tablet', 9),
(29, 'kalyani1', 'no pain', 'Tablet', 9),
(31, 'kalyani1', 'cleanmi skin', 'Ointment', 129),
(32, 'kalyani1', 'peroclin', 'Ointment', 150),
(33, 'matha', 'paracetamol', 'Tablet', 5),
(34, 'matha', 'dolo560', 'Tablet', 24),
(35, 'matha', 'cetracine', 'Tablet', 12),
(36, 'Aron', 'Thyrox-100', 'Tablet', 133),
(37, 'Aron', 'Volitra gel', 'Ointment', 50),
(38, 'Aron', 'cital', 'Syrup', 85),
(39, 'Aron', 'canoio', 'Ointment', 60),
(40, 'suresh', 'Thyrox-100', 'Tablet', 133),
(41, 'suresh', 'Volitra gel', 'Ointment', 50),
(42, 'suresh', 'cital', 'Syrup', 85),
(43, 'suresh', 'canoio', 'Ointment', 60),
(45, 'Revathi', 'Volitra gel', 'Ointment', 50),
(46, 'Revathi', 'cital', 'Syrup', 85),
(47, 'Revathi', 'canoio', 'Ointment', 60),
(48, 'Malu', 'Thyrox-100', 'Tablet', 133),
(49, 'uit', 'Thyrox-100', 'Tablet', 133),
(50, 'uit', 'Thyrox-100', 'Tablet', 133),
(51, 'uit', 'Volitra gel', 'Ointment', 50),
(52, 'Malu', 'Volitra gel', 'Ointment', 85),
(53, 'uit', 'cital', 'Syrup', 50),
(54, 'mani sir', 'Thyrox-100', 'Tablet', 133),
(55, 'Revathi', 'Thyrox-100', 'Capsule', 987),
(56, 'Revathi', 'dolo', 'Tablet', 50),
(57, 'athira', 'montek lc', 'Tablet', 16),
(58, 'athira', 'canoio', 'Syrup', 50);

-- --------------------------------------------------------

--
-- Table structure for table `sale_data`
--

CREATE TABLE IF NOT EXISTS `sale_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_id` int(11) NOT NULL,
  `shop_id` varchar(50) NOT NULL,
  `mnme` varchar(100) NOT NULL,
  `mtyp` varchar(50) NOT NULL,
  `amt` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `tot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `sale_data`
--

INSERT INTO `sale_data` (`id`, `send_id`, `shop_id`, `mnme`, `mtyp`, `amt`, `qty`, `tot`) VALUES
(1, 13, 'k101', 'Dolo 650', 'Tablet', 2, 10, 20),
(2, 18, 'k101', 'Paracetamol', 'Tablet', 1, 20, 20),
(3, 13, 'k101', 'Dolo 650', 'Tablet', 2, 5, 10),
(4, 21, 'k101', 'Dolo 650', 'Tablet', 2, 10, 20),
(5, 21, 'k101', 'Paracetamol', 'Tablet', 1, 20, 20),
(6, 22, 'k101', 'Dolo 650', 'Tablet', 2, 50, 100),
(7, 24, 'neethi2018', 'Avel', 'Capsule', 0, 90, 0),
(8, 26, 'kalyani1', 'Aspirin', 'Tablet', 5, 50, 250),
(9, 25, 'kalyani1', 'Choose', 'Capsule', 0, 87, 0),
(10, 27, 'kalyani1', 'crocin 250', 'Tablet', 3, 20, 60),
(11, 28, 'kalyani1', 'crocin 250', 'Tablet', 3, 6, 18),
(12, 29, 'kalyani1', 'Opex2', 'Capsule', 6, 10, 60),
(13, 29, 'kalyani1', 'Opex2', 'Capsule', 6, 10, 60),
(14, 31, 'kalyani1', 'Paracetamol', 'Tablet', 1, 80, 80),
(15, 32, 'kalyani1', 'Aval', 'Capsule', 0, 6, 0),
(16, 32, 'kalyani1', 'crocin 250', 'Tablet', 3, 10, 30),
(17, 32, 'kalyani1', 'Opex2', 'Capsule', 6, 9, 54),
(18, 33, 'kalyani1', 'crocin 250', 'Tablet', 3, 12, 36),
(19, 33, 'kalyani1', 'Paracetamol', 'Tablet', 1, 12, 12),
(20, 35, 'kalyani1', 'Aspirin', 'Tablet', 5, 899, 4495),
(21, 36, 'kalyani1', 'Aval', 'Tablet', 2, 9, 18),
(22, 36, 'kalyani1', 'peroclin', 'Syrup', 0, 12, 0),
(23, 37, 'kalyani1', 'Aval', 'Tablet', 2, 9, 18),
(24, 37, 'kalyani1', 'Aspirin', 'Tablet', 5, 10, 50),
(25, 38, 'kalyani1', 'crocin 250', 'Tablet', 3, 14, 42),
(26, 38, 'kalyani1', 'Aval', 'Tablet', 2, 10, 20),
(27, 39, 'kalyani1', 'Aval', 'Tablet', 2, 5, 10),
(28, 40, 'kalyani1', 'Aspirin', 'Tablet', 5, 13, 65),
(29, 40, 'kalyani1', 'cleanmi skin', 'ointment', 129, 3, 387),
(30, 43, 'matha', 'Choose', 'Capsule', 0, 10, 0),
(31, 43, 'matha', 'dolo560', 'Capsule', 0, 2, 0),
(32, 43, 'matha', 'paracetamol', 'Tablet', 5, 10, 50),
(33, 46, 'matha', 'dolo560', 'Tablet', 24, 12, 288),
(34, 46, 'matha', 'paracetamol', 'Tablet', 5, 15, 75),
(35, 53, 'asha1', 'BbMax', 'Tablet', 9, 2, 18),
(36, 53, 'asha1', 'Aval', 'Tablet', 2, 4, 8),
(37, 59, 'suresh', 'cital', 'Syrup', 85, 2, 170),
(38, 62, 'Revathi', 'cital', 'Syrup', 85, 2, 170),
(39, 63, 'uit', 'Thyrox-100', 'Tablet', 133, 2, 266),
(40, 64, 'Revathi', 'canoio', 'ointment', 60, 2, 120),
(41, 65, 'uit', 'Thyrox-100', 'Tablet', 133, 2, 266),
(42, 66, 'Revathi', 'cital', 'Syrup', 85, 2, 170),
(43, 67, 'Revathi', 'cital', 'Syrup', 85, 2, 170),
(44, 67, 'uit', 'cital', 'Syrup', 50, 2, 100),
(45, 70, 'Revathi', 'dolo', 'Tablet', 50, 56, 2800),
(46, 70, 'Revathi', 'Thyrox-100', 'Capsule', 987, 2, 1974),
(47, 70, 'Revathi', 'cital', 'Syrup', 85, 2, 170),
(48, 70, 'Revathi', 'Choose', 'Capsule', 0, 0, 0),
(49, 70, 'athira', 'canoio', 'Syrup', 50, 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `adr` varchar(250) NOT NULL,
  `mob` varchar(15) NOT NULL,
  `uid` varchar(25) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`user_id`, `nme`, `adr`, `mob`, `uid`, `st`) VALUES
(1, 'Vineeth A V', ' V V Bhavan\r\nKilimanoor \r\nKarette', '9446563005', 'vin101', 1),
(2, 'Syam Kumar', 'Thambanoor north', '9497138016', 'syam1', 1),
(4, 'Biju K', 'Pullimoodu jn, Trivandrum', '9876751234', 'biju', 1),
(5, 'lechu', 'tvm', '7356133315', 'hai', 1),
(6, 'Midhuna M', 'Thiruvathira, kizhakke\n vazhathottam,\n koliyoor\n muttacaud p.o ', '7994149580', 'midhuna', 1),
(7, 'Neethu', 'Gdhdh jdhdbe', '455677775422', 'Rrr', 1),
(8, 'Maria Mathews', 'Arackal House\r\nErumely', '9656864875', 'maria', 1),
(9, 'Harshal. H', 'Sunview house vettukad titanium p.o', '8590422074', 'Harshal', 1),
(10, 'Ajith', 'Vettukad junction ', '9526227849', 'Ajith', 1),
(11, 'abhijith', 'peroorkad', '9526227849', 'abhi', 1),
(12, 'Aju', 'Peroorkada', '8590422074', 'Aju', 1),
(13, 'akil', 'sde', '2255', 'akil', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(25) NOT NULL,
  `pas` varchar(15) NOT NULL,
  `typ` varchar(10) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `uid`, `pas`, `typ`, `st`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(2, 'k101', 'asd', 'shop', 1),
(3, 'a101', 'asd', 'shop', 0),
(4, 'vin101', 'asd', 'user', 1),
(5, 'kk', 'kk', 'shop', 1),
(6, 'meena@2018', 'meena123', 'shop', 1),
(7, '', '', 'shop', 1),
(8, 'neethi2018', 'neethi', 'shop', 1),
(9, 'Santhosh2018', 'santhosh', 'user', 1),
(10, 'ndj', 'nfjnmn', 'shop', 0),
(11, 'lk101', 'lakshmi', 'shop', 0),
(12, 'neethi1', 'neethi', 'shop', 0),
(13, 'lakshmi1', 'lakshmi', 'shop', 0),
(17, 'kerala1', 'kerala', 'shop', 1),
(19, 'kalyani1', 'kalyani', 'shop', 1),
(20, 'asha1', 'asha', 'shop', 1),
(21, 'syam1', 'syam', 'user', 1),
(22, '', '', 'user', 1),
(23, 'jkm', 'jkm', 'shop', 1),
(24, 'lpm', 'lpm', 'shop', 1),
(25, 'biju', 'biju', 'user', 1),
(26, 'hai', '123', 'user', 1),
(27, 'surya1', 'surya', 'shop', 1),
(28, 'midhuna', '123', 'user', 1),
(29, 'matha', '1234', 'shop', 1),
(30, 'shifa', '123', 'shop', 1),
(31, 'Rrr', '456', 'user', 1),
(32, 'Dianova', 'dianova', 'lab', 1),
(33, 'krishna', 'krishna', 'shop', 1),
(34, 'maria', 'maria123@', 'user', 1),
(35, 'donor', 'donor', 'bank', 1),
(36, 'HARSHAL', '110024', 'shop', 0),
(37, 'Harshal', '110024', 'user', 1),
(38, 'Ajith', '110024', 'user', 1),
(39, 'Aron', '110024', 'shop', 1),
(40, 'suresh', '110024', 'shop', 1),
(41, 'Revathi', '110024', 'shop', 1),
(42, 'Malu', '110024', 'shop', 1),
(43, 'rahul', '110024', 'bank', 1),
(44, 'uit', 'uit@123', 'shop', 1),
(45, 'mani sir', 'attingal', 'shop', 1),
(46, 'abhi', 'abhi1234', 'user', 1),
(47, 'Aju', 'aju123', 'user', 1),
(48, 'aji', 'aji123', 'shop', 1),
(49, 'athira', 'athira123', 'shop', 1),
(50, 'lab', 'lab123', 'lab', 1),
(51, 'ajay', 'ajay12', 'bank', 1),
(52, 'akil', 'akil12', 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_req`
--

CREATE TABLE IF NOT EXISTS `user_req` (
  `reqid` int(11) NOT NULL AUTO_INCREMENT,
  `send_id` int(11) NOT NULL,
  `uid` varchar(25) NOT NULL,
  `shop_id` varchar(25) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`reqid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=168 ;

--
-- Dumping data for table `user_req`
--

INSERT INTO `user_req` (`reqid`, `send_id`, `uid`, `shop_id`, `st`) VALUES
(1, 12, 'vin101', 'k101', 2),
(2, 13, 'vin101', 'k101', 1),
(3, 13, 'vin101', 'a101', 2),
(4, 16, 'vin101', 'k101', 0),
(5, 16, 'vin101', 'a101', 0),
(6, 17, 'vin101', 'a101', 0),
(7, 17, 'vin101', 'k101', 1),
(8, 18, 'vin101', 'a101', 0),
(9, 18, 'vin101', 'k101', 1),
(10, 19, 'vin101', 'k101', 0),
(11, 19, 'vin101', 'a101', 0),
(12, 20, 'vin101', 'k101', 0),
(13, 20, 'vin101', 'a101', 0),
(14, 21, 'Vin101', 'a101', 0),
(15, 21, 'Vin101', 'k101', 1),
(16, 22, 'Vin101', 'a101', 0),
(17, 22, 'Vin101', 'k101', 1),
(18, 25, 'Syam1', 'asha1', 0),
(19, 25, 'Syam1', 'kalyani1', 1),
(20, 26, 'Syam1', 'asha1', 0),
(21, 26, 'Syam1', 'kalyani1', 1),
(22, 27, 'Syam1', 'asha1', 0),
(23, 27, 'Syam1', 'kalyani1', 1),
(24, 28, 'syam1', 'asha1', 0),
(25, 28, 'syam1', 'kalyani1', 1),
(26, 29, 'Syam1', 'asha1', 0),
(27, 29, 'Syam1', 'kalyani1', 1),
(28, 31, 'Syam1', 'asha1', 0),
(29, 31, 'Syam1', 'kalyani1', 1),
(30, 32, 'Biju', 'kalyani1', 1),
(31, 32, 'Biju', 'asha1', 0),
(32, 33, 'vin101', 'asha1', 0),
(33, 33, 'vin101', 'kalyani1', 1),
(34, 35, 'hai', 'asha1', 0),
(35, 35, 'hai', 'kalyani1', 1),
(36, 36, 'hai', 'asha1', 0),
(37, 36, 'hai', 'kalyani1', 1),
(38, 37, 'hai', 'asha1', 0),
(39, 37, 'hai', 'kalyani1', 1),
(40, 38, 'hai', 'asha1', 0),
(41, 38, 'hai', 'kalyani1', 1),
(42, 39, 'hai', 'asha1', 0),
(43, 39, 'hai', 'kalyani1', 1),
(44, 40, 'hai', 'asha1', 0),
(45, 40, 'hai', 'kalyani1', 1),
(46, 40, 'hai', 'surya1', 0),
(47, 42, 'vin101', 'asha1', 0),
(48, 42, 'vin101', 'kalyani1', 0),
(49, 42, 'vin101', 'surya1', 0),
(50, 43, 'midhuna', 'kalyani1', 0),
(51, 43, 'midhuna', 'asha1', 0),
(52, 43, 'midhuna', 'matha', 1),
(53, 43, 'midhuna', 'surya1', 0),
(54, 44, 'midhuna', 'asha1', 0),
(55, 44, 'midhuna', 'kalyani1', 0),
(56, 44, 'midhuna', 'matha', 0),
(57, 44, 'midhuna', 'surya1', 0),
(58, 45, 'midhuna', 'kalyani1', 0),
(59, 45, 'midhuna', 'asha1', 0),
(60, 45, 'midhuna', 'matha', 0),
(61, 45, 'midhuna', 'surya1', 0),
(62, 46, 'Midhuna', 'matha', 1),
(63, 46, 'Midhuna', 'asha1', 0),
(64, 46, 'Midhuna', 'kalyani1', 0),
(65, 46, 'Midhuna', 'surya1', 0),
(66, 47, 'maria', 'asha1', 0),
(67, 47, 'maria', 'kalyani1', 0),
(68, 47, 'maria', 'matha', 0),
(69, 47, 'maria', 'surya1', 0),
(70, 48, 'maria', 'asha1', 0),
(71, 48, 'maria', 'kalyani1', 0),
(72, 48, 'maria', 'matha', 0),
(73, 48, 'maria', 'surya1', 0),
(74, 49, 'maria', 'asha1', 0),
(75, 49, 'maria', 'kalyani1', 0),
(76, 49, 'maria', 'matha', 0),
(77, 49, 'maria', 'surya1', 0),
(78, 50, 'maria', 'kalyani1', 0),
(79, 50, 'maria', 'asha1', 0),
(80, 50, 'maria', 'matha', 0),
(81, 50, 'maria', 'surya1', 0),
(82, 53, 'vin101', 'surya1', 0),
(83, 53, 'vin101', 'matha', 0),
(84, 53, 'vin101', 'asha1', 1),
(85, 53, 'vin101', 'kalyani1', 0),
(86, 54, 'Vin101', 'asha1', 0),
(87, 54, 'Vin101', 'kalyani1', 0),
(88, 54, 'Vin101', 'matha', 0),
(89, 54, 'Vin101', 'surya1', 0),
(90, 55, 'Ajith', 'asha1', 0),
(91, 55, 'Ajith', 'matha', 0),
(92, 55, 'Ajith', 'kalyani1', 0),
(93, 55, 'Ajith', 'surya1', 0),
(94, 56, 'Harshal', 'asha1', 0),
(95, 56, 'Harshal', 'kalyani1', 0),
(96, 56, 'Harshal', 'matha', 0),
(97, 56, 'Harshal', 'surya1', 0),
(98, 57, 'Vin101', 'asha1', 0),
(99, 57, 'Vin101', 'kalyani1', 0),
(100, 57, 'Vin101', 'matha', 0),
(101, 57, 'Vin101', 'surya1', 0),
(102, 58, 'Harshal', 'asha1', 0),
(103, 58, 'Harshal', 'kalyani1', 0),
(104, 58, 'Harshal', 'matha', 0),
(105, 58, 'Harshal', 'surya1', 0),
(106, 59, 'Harshal', 'asha1', 0),
(107, 59, 'Harshal', 'kalyani1', 0),
(108, 59, 'Harshal', 'matha', 0),
(109, 59, 'Harshal', 'surya1', 0),
(110, 59, 'Harshal', 'suresh', 1),
(111, 60, 'Harshal', 'asha1', 0),
(112, 60, 'Harshal', 'matha', 0),
(113, 60, 'Harshal', 'kalyani1', 0),
(114, 60, 'Harshal', 'surya1', 0),
(115, 61, 'Harshal', 'asha1', 0),
(116, 61, 'Harshal', 'matha', 0),
(117, 61, 'Harshal', 'kalyani1', 0),
(118, 61, 'Harshal', 'surya1', 0),
(119, 62, 'Harshal', 'Revathi', 1),
(120, 62, 'Harshal', 'asha1', 0),
(121, 62, 'Harshal', 'matha', 0),
(122, 62, 'Harshal', 'kalyani1', 0),
(123, 62, 'Harshal', 'surya1', 0),
(124, 63, 'Harshal', 'kalyani1', 0),
(125, 63, 'Harshal', 'krishna', 0),
(126, 63, 'Harshal', 'asha1', 0),
(127, 63, 'Harshal', 'matha', 0),
(128, 63, 'Harshal', 'uit', 1),
(129, 63, 'Harshal', 'surya1', 0),
(130, 63, 'Harshal', 'Revathi', 2),
(131, 64, 'Harshal', 'Revathi', 1),
(132, 64, 'Harshal', 'krishna', 0),
(133, 64, 'Harshal', 'asha1', 0),
(134, 64, 'Harshal', 'kalyani1', 0),
(135, 64, 'Harshal', 'matha', 0),
(136, 64, 'Harshal', 'surya1', 0),
(137, 64, 'Harshal', 'uit', 1),
(138, 65, 'Harshal', 'Revathi', 1),
(139, 65, 'Harshal', 'krishna', 0),
(140, 65, 'Harshal', 'asha1', 0),
(141, 65, 'Harshal', 'matha', 0),
(142, 65, 'Harshal', 'kalyani1', 0),
(143, 65, 'Harshal', 'surya1', 0),
(144, 65, 'Harshal', 'uit', 1),
(145, 66, 'Harshal', 'Revathi', 1),
(146, 66, 'Harshal', 'krishna', 0),
(147, 66, 'Harshal', 'asha1', 0),
(148, 66, 'Harshal', 'kalyani1', 0),
(149, 66, 'Harshal', 'matha', 0),
(150, 66, 'Harshal', 'surya1', 0),
(151, 66, 'Harshal', 'uit', 1),
(152, 67, 'Harshal', 'Revathi', 1),
(153, 67, 'Harshal', 'krishna', 0),
(154, 67, 'Harshal', 'asha1', 0),
(155, 67, 'Harshal', 'kalyani1', 0),
(156, 67, 'Harshal', 'matha', 0),
(157, 67, 'Harshal', 'surya1', 0),
(158, 67, 'Harshal', 'uit', 1),
(159, 70, 'Harshal', 'surya1', 0),
(160, 70, 'Harshal', 'uit', 0),
(161, 70, 'Harshal', 'matha', 0),
(162, 70, 'Harshal', 'asha1', 0),
(163, 70, 'Harshal', 'kalyani1', 0),
(164, 70, 'Harshal', 'krishna', 0),
(165, 70, 'Harshal', 'athira', 1),
(166, 70, 'Harshal', 'mani sir', 0),
(167, 70, 'Harshal', 'Revathi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_send`
--

CREATE TABLE IF NOT EXISTS `user_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `dt` date NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `user_send`
--

INSERT INTO `user_send` (`id`, `uid`, `dt`, `lat`, `lng`, `photo`, `st`) VALUES
(1, 'vin101', '2017-12-14', '13.068107872518203', '80.27113571763039', '', 0),
(2, 'vin101', '2017-12-14', '13.068107872518203', '80.27113571763039', '', 0),
(3, 'vin101', '2017-12-14', '13.068107872518203', '80.27113571763039', '', 0),
(4, 'vin101', '2017-12-14', '13.068107872518203', '80.27113571763039', '', 0),
(5, 'vin101', '2017-12-14', '13.068107872518203', '80.27113571763039', '', 0),
(6, 'vin101', '2017-12-14', '13.068107872518203', '80.27113571763039', '', 0),
(7, 'vin101', '2017-12-14', '13.068107872518203', '80.27113571763039', '', 0),
(8, 'vin101', '2017-12-14', '8.732313900015619', '76.89841881394386', '', 0),
(9, 'vin101', '2017-12-14', '8.732313900015619', '76.89841881394386', '', 0),
(10, 'vin101', '2017-12-14', '8.732313900015619', '76.89841881394386', '', 0),
(11, 'vin101', '2017-12-14', '8.732313900015619', '76.89841881394386', '', 0),
(12, 'vin101', '2017-12-14', '8.732313900015619', '76.89841881394386', '12.jpg', 0),
(13, 'vin101', '2017-12-14', '8.729005290108992', '76.89854890108109', '13.jpg', 0),
(14, 'vin101', '2017-12-14', '13.078558631619446', '80.25182381272316', '14.jpg', 0),
(15, 'vin101', '2017-12-14', '13.089176149359494', '80.26710167527199', '15.jpg', 0),
(16, 'vin101', '2017-12-14', '8.72764790319888', '76.8981385231018', '16.jpg', 0),
(17, 'vin101', '2017-12-14', '8.731041361216178', '76.89915776252747', '17.jpg', 0),
(18, 'vin101', '2017-12-14', '8.730362672081633', '76.89984440803528', '18.jpg', 0),
(19, 'vin101', '2017-12-14', '8.728326597271073', '76.89915776252747', '19.jpg', 0),
(20, 'vin101', '2017-12-14', '8.726290511352067', '76.8981385231018', '20.jpg', 0),
(21, 'Vin101', '2018-02-17', '8.7325', '76.8983', '21.jpg', 0),
(22, 'Vin101', '2018-02-17', '8.7325', '76.8983', '22.jpg', 0),
(23, 'santhosh2018', '2018-02-19', '9.179455076159726', '76.4726408302937', '23.jpg', 0),
(24, 'Santhosh2018', '2018-02-19', '9.1748', '76.4691', '24.jpg', 0),
(25, 'Syam1', '2018-03-12', '8.492730127152164', '76.94784312872605', '25.jpg', 0),
(26, 'Syam1', '2018-03-12', '8.492730127152164', '76.94784312872605', '26.jpg', 0),
(27, 'Syam1', '2018-03-12', '8.492730127152164', '76.94784312872605', '27.jpg', 0),
(28, 'syam1', '2018-03-12', '8.494495954533486', '76.94750296137568', '28.jpg', 0),
(29, 'Syam1', '2018-03-12', '8.492730127152164', '76.94784312872605', '29.jpg', 0),
(30, 'Syam1', '2018-03-12', '8.7325', '76.8983', '30.jpg', 0),
(31, 'Syam1', '2018-03-12', '8.49379681401538', '76.9479712843895', '31.jpg', 0),
(32, 'Biju', '2018-03-16', '8.493955981392661', '76.95193290710449', '32.jpg', 0),
(33, 'vin101', '2018-06-02', '8.497369433354402', '76.94620261199066', '33.jpg', 0),
(34, 'hai', '2018-06-02', '', '', '34.jpg', 0),
(35, 'hai', '2018-06-02', '8.494834370023389', '76.94888056333343', '35.jpg', 0),
(36, 'hai', '2018-06-02', '8.495765448515591', '76.94897849402196', '36.jpg', 0),
(37, 'hai', '2018-06-02', '8.49432583534874', '76.94932411677587', '37.jpg', 0),
(38, 'hai', '2018-06-02', '8.494237946174234', '76.94906022471048', '38.jpg', 0),
(39, 'hai', '2018-06-02', '8.494738080985828', '76.9490912247104', '39.jpg', 0),
(40, 'hai', '2018-06-02', '8.497075648654935', '76.94952964782715', '40.jpg', 0),
(41, 'vin101', '2018-08-04', '', '', '41.jpg', 0),
(42, 'vin101', '2019-02-09', '8.493730494255344', '76.94794982671738', '42.png', 0),
(43, 'midhuna', '2019-02-09', '8.493425423211578', '76.95759773254395', '43.png', 0),
(44, 'midhuna', '2019-02-09', '8.495340814759627', '76.95019682366069', '44.jpg', 0),
(45, 'midhuna', '2019-02-09', '8.493425423211578', '76.95759773254395', '45.jpg', 0),
(46, 'Midhuna', '2019-02-09', '8.503356056283941', '76.95220191840849', '46.jpg', 0),
(47, 'maria', '2019-07-20', '8.493600332097621', '76.94776736438325', '47.pdf', 0),
(48, 'maria', '2019-07-20', '8.495292014943216', '76.94887366333353', '48.docx', 0),
(49, 'maria', '2019-07-20', '8.495292014943216', '76.94887366333353', '49.docx', 0),
(50, 'maria', '2019-07-20', '8.493425423211578', '76.95759773254395', '50.docx', 0),
(51, 'maria', '2019-07-20', '8.490893164027044', '76.95193456811865', '', 0),
(52, 'maria', '2019-07-20', '8.486486262539374', '76.95073353848', '', 0),
(53, 'vin101', '2020-09-07', '8.534999630124572', '76.95434595622812', '53.jpg', 0),
(54, 'Vin101', '2020-09-08', '8.490070427397356', '76.90817177540322', '54.jpg', 0),
(55, 'Ajith', '2020-09-14', '8.49933204099488', '76.9106173606014', '55.jpg', 0),
(56, 'Harshal', '2020-09-14', '8.48612486815563', '76.90738677978516', '56.jpg', 0),
(57, 'Vin101', '2020-09-14', '8.482197114604995', '76.91165175911738', '57.jpg', 0),
(58, 'Harshal', '2020-09-14', '8.482197114604995', '76.91165175911738', '58.jpg', 0),
(59, 'Harshal', '2020-09-14', '8.483539156720337', '76.91380657845357', '59.jpg', 0),
(60, 'Harshal', '2020-09-20', '8.494676011246845', '76.9064771055746', '60.jpg', 0),
(61, 'Harshal', '2020-09-20', '8.494676011246845', '76.9064771055746', '61.jpg', 0),
(62, 'Harshal', '2020-09-20', '8.494676011246845', '76.9064771055746', '62.jpg', 0),
(63, 'Harshal', '2020-09-21', '8.485735748582995', '76.95820542034893', '63.pmd', 0),
(64, 'Harshal', '2020-09-23', '8.491088250531728', '76.90895396850635', '64.jpg', 0),
(65, 'Harshal', '2020-09-23', '8.494676011246845', '76.9064771055746', '65.jpg', 0),
(66, 'Harshal', '2020-09-23', '8.48612486815563', '76.90738677978516', '66.jpg', 0),
(67, 'Harshal', '2020-09-23', '8.481978619929677', '76.90216382900249', '67.jpg', 0),
(68, 'Harshal', '2020-11-06', '8.481397289486704', '77.45021568215716', '68.jpeg', 0),
(69, 'Harshal', '2020-11-06', '4.755810257686524', '76.97248055452215', '69.jpeg', 0),
(70, 'Harshal', '2020-11-11', '8.5363558149238', '76.95444345474243', '70.jpg', 0),
(71, 'Harshal', '2020-11-11', '10.853415673952938', '76.26558154972544', '71.pmd', 0);
--
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `myproject`
--

CREATE TABLE IF NOT EXISTS `myproject` (
  `userid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myproject`
--

INSERT INTO `myproject` (`userid`, `password`) VALUES
('admin', 'admin');
--
-- Database: `paypal`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `email`, `phone`, `address`) VALUES
(1, 'NIKHIL PS', 'nikhil@gmail.com', '6238835353', 'euehu fehuihiu udh uihiu uuheuihuhuihuh huhuihuh uhuihuih uhuihiu'),
(3, 'appu', 'appu@gmail.com', '6238835353', 'hridhayam veedu PO');
--
-- Database: `php_youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL,
  `stateid` int(11) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `stateid`) VALUES
(1, 'iC1', 1),
(2, 'iC2', 1),
(3, 'AC1', 2),
(4, 'AC1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(200) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'india'),
(2, 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(200) NOT NULL,
  `countryid` int(11) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`, `countryid`) VALUES
(1, 'I1', 1),
(2, 'I2', 1),
(3, 'A1', 2),
(4, 'A2', 2);
--
-- Database: `phpcrud`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fname`, `lname`, `class`, `section`) VALUES
(1, 'nikhil', 'ps', 'bca', 'a'),
(2, 'appu', 'ps', 'bsc', 'b'),
(3, 'eby', 'griffin', 'designer', 'G'),
(4, 'sneha', 'ew', 'bsc', 'e'),
(5, 'saparna', 'griffin', 'lkg', 'a');
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pma_bookmark`
--

INSERT INTO `pma_bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'griffin_db', 'root', 'interior eorf', 'SELECT * FROM `project` WHERE 1');

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=503 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'student', 'student', 'NAME''', '', '', '_', ''),
(2, 'student', 'student', 'adrdess', '', '', '_', ''),
(3, 'demo', 'loginform', 'id', '', '', '_', ''),
(4, 'demo', 'loginform', 'user', '', '', '_', ''),
(5, 'demo', 'loginform', 'pass', '', '', '_', ''),
(6, 'warranty', 'admin', 'userid', '', '', '_', ''),
(7, 'warranty', 'admin', 'password', '', '', '_', ''),
(8, 'myproject', 'myproject', 'userid', '', '', '_', ''),
(9, 'myproject', 'myproject', 'password', '', '', '_', ''),
(10, 'login', 'login', 'userid', '', '', '_', ''),
(11, 'login', 'login', 'password', '', '', '_', ''),
(151, 'form_data', 'form_data', 'id', '', '', '_', ''),
(149, 'test_db', 'images', 'id', '', '', '_', ''),
(150, 'test_db', 'images', 'image_url', '', '', '_', ''),
(499, 'paypal', 'payment', 'name', '', '', '_', ''),
(498, 'paypal', 'payment', 'id', '', '', '_', ''),
(496, 'gymnsb', 'todo', 'days', '', '', '_', ''),
(482, 'rogersoft', 'admin', 'id', '', '', '_', ''),
(483, 'rogersoft', 'admin', 'fname', '', '', '_', ''),
(484, 'rogersoft', 'admin', 'lname', '', '', '_', ''),
(485, 'rogersoft', 'admin', 'email', '', '', '_', ''),
(486, 'rogersoft', 'admin', 'phone', '', '', '_', ''),
(487, 'rogersoft', 'admin', 'password', '', '', '_', ''),
(488, 'rogersoft', 'admin', 'cpassword', '', '', '_', ''),
(489, 'intersmart', 'blog', 'id', '', '', '_', ''),
(490, 'intersmart', 'blog', 'bg_name', '', '', '_', ''),
(491, 'intersmart', 'blog', 'bg_images', '', '', '_', ''),
(492, 'intersmart', 'blog', 'ab_blog', '', '', '_', ''),
(493, 'intersmart', 'blog', 'date', '', '', '_', ''),
(497, 'gymnsb', 'todo', 'time', '', '', '_', ''),
(39, 'db1', 'contact', 'id', '', '', '_', ''),
(40, 'db1', 'contact', 'name', '', '', '_', ''),
(41, 'db1', 'contact', 'email', '', '', '_', ''),
(42, 'db1', 'contact', 'phone', '', '', '_', ''),
(43, 'crud', 'data', 'id', '', '', '_', ''),
(44, 'crud', 'data', 'name', '', '', '_', ''),
(45, 'crud', 'data', 'location', '', '', '_', ''),
(77, 'vlog', 'students', 'email', '', '', '_', ''),
(76, 'vlog', 'students', 'name', '', '', '_', ''),
(75, 'vlog', 'students', 'id', '', '', '_', ''),
(152, 'form_data', 'form_data', 'name', '', '', '_', ''),
(397, 'vm', 'admin', 'password', '', '', '_', ''),
(396, 'vm', 'admin', 'email', '', '', '_', ''),
(395, 'vm', 'admin', 'id', '', '', '_', ''),
(500, 'paypal', 'payment', 'email', '', '', '_', ''),
(501, 'paypal', 'payment', 'phone', '', '', '_', ''),
(502, 'paypal', 'payment', 'address', '', '', '_', ''),
(63, 'josco', 'registration', 'id', '', '', '_', ''),
(64, 'josco', 'registration', 'name', '', '', '_', ''),
(65, 'josco', 'registration', 'email', '', '', '_', ''),
(66, 'josco', 'registration', 'phone', '', '', '_', ''),
(67, 'josco', 'registration', 'password', '', '', '_', ''),
(68, 'josco', 'registration', 'city', '', '', '_', ''),
(69, 'josco', 'registration', 'query', '', '', '_', ''),
(70, 'josco', 'vregistration', 'id', '', '', '_', ''),
(71, 'josco', 'vregistration', 'name', '', '', '_', ''),
(72, 'josco', 'vregistration', 'email', '', '', '_', ''),
(73, 'josco', 'vregistration', 'phone', '', '', '_', ''),
(74, 'josco', 'vregistration', 'password', '', '', '_', ''),
(78, 'vlog', 'students', 'phone', '', '', '_', ''),
(79, 'vlog', 'students', 'course', '', '', '_', ''),
(80, 'griffin', 'registration', 'id', '', '', '_', ''),
(81, 'griffin', 'registration', 'email', '', '', '_', ''),
(82, 'griffin', 'registration', 'firstname', '', '', '_', ''),
(83, 'griffin', 'registration', 'surname', '', '', '_', ''),
(84, 'griffin', 'registration', 'password', '', '', '_', ''),
(85, 'gmt', 'project_category', 'category_id', '', '', '_', ''),
(86, 'gmt', 'project_category', 'category_name', '', '', '_', ''),
(87, 'gmt', 'project_category', 'status', '', '', '_', ''),
(88, 'griffin_db', 'project_category', 'category_id', '', '', '_', ''),
(89, 'griffin_db', 'project_category', 'category_name', '', '', '_', ''),
(90, 'griffin_db', 'project_category', 'status', '', '', '_', ''),
(91, 'griffin_db', 'project', 'project_id', '', '', '_', ''),
(92, 'griffin_db', 'project', 'project_name', '', '', '_', ''),
(93, 'griffin_db', 'project', 'project_category', '', '', '_', ''),
(94, 'griffin_db', 'project', 'project_decription', '', '', '_', ''),
(95, 'griffin_db', 'project', 'status', '', '', '_', ''),
(96, 'griffin_db', 'project', 'thumbnail', '', '', '_', ''),
(97, 'hrough', 'project', 'id', '', '', '_', ''),
(98, 'hrough', 'project', 'project_name', '', '', '_', ''),
(99, 'hrough', 'project', 'content', '', '', '_', ''),
(100, 'hrough', 'project', 'image', '', '', '_', ''),
(101, 'hrough', 'blog', 'id', '', '', '_', ''),
(102, 'hrough', 'blog', 'blog_name', '', '', '_', ''),
(103, 'hrough', 'blog', 'content', '', '', '_', ''),
(104, 'hrough', 'blog', 'image', '', '', '_', ''),
(105, 'gr', 'project', 'id', '', '', '_', ''),
(106, 'gr', 'project', 'project_name', '', '', '_', ''),
(107, 'gr', 'project', 'content', '', '', '_', ''),
(108, 'gr', 'project', 'image', '', '', '_', ''),
(109, 'hrough', 'project', 'st_date', '', '', '_', ''),
(110, 'hrough', 'project', 'end_date', '', '', '_', ''),
(111, 'hrough', 'project', 'le_name', '', '', '_', ''),
(112, 'hrough', 'project', 'pr_type', '', '', '_', ''),
(113, 'hrough', 'project', 'ccp_name', '', '', '_', ''),
(114, 'hrough', 'project', 'about', '', '', '_', ''),
(115, 'hrough', 'project', 'subtitle', '', '', '_', ''),
(116, 'hrough', 'contact', 'id', '', '', '_', ''),
(117, 'hrough', 'contact', 'name', '', '', '_', ''),
(118, 'hrough', 'contact', 'service', '', '', '_', ''),
(119, 'hrough', 'contact', 'e', '', '', '_', ''),
(120, 'hrough', 'contact', 'email', '', '', '_', ''),
(121, 'hrough', 'contact', 'pnumber', '', '', '_', ''),
(122, 'hrough', 'contact', 'message', '', '', '_', ''),
(140, 'test', 'fetch', 'email', '', '', '_', ''),
(139, 'test', 'fetch', 'name', '', '', '_', ''),
(138, 'test', 'fetch', 'id', '', '', '_', ''),
(137, 'hrough', 'project', 'status', '', '', '_', ''),
(136, 'hrough', 'category', 'category_name', '', '', '_', ''),
(129, 'hrough', 'registration', 'id', '', '', '_', ''),
(135, 'hrough', 'category', 'id', '', '', '_', ''),
(131, 'hrough', 'registration', 'email', '', '', '_', ''),
(134, 'hrough', 'project', 'category', '', '', '_', ''),
(133, 'hrough', 'registration', 'password', '', '', '_', ''),
(141, 'test', 'fetch', 'phone', '', '', '_', ''),
(142, 'test', 'fetch', 'course', '', '', '_', ''),
(143, 'student', 'category', 'id', '', '', '_', ''),
(144, 'student', 'category', 'category_name', '', '', '_', ''),
(153, 'form_data', 'form_data', 'email', '', '', '_', ''),
(154, 'form_data', 'form_data', 'phone', '', '', '_', ''),
(155, 'form_data', 'form_data', 'address', '', '', '_', ''),
(156, 'awc', 'admin', 'id', '', '', '_', ''),
(157, 'awc', 'admin', 'email', '', '', '_', ''),
(158, 'awc', 'admin', 'password', '', '', '_', ''),
(159, 'awc', 'registration', 'id', '', '', '_', ''),
(160, 'awc', 'registration', 'name', '', '', '_', ''),
(161, 'awc', 'registration', 'email', '', '', '_', ''),
(162, 'awc', 'registration', 'phone', '', '', '_', ''),
(163, 'awc', 'registration', 'carname', '', '', '_', ''),
(164, 'awc', 'registration', 'carmodel', '', '', '_', ''),
(165, 'awc', 'registration', 'carnumber', '', '', '_', ''),
(166, 'awc', 'registration', 'password', '', '', '_', ''),
(167, 'awc', 'registration', 'carbrand', '', '', '_', ''),
(168, 'awc', 'registration', 'cartype', '', '', '_', ''),
(169, 'awc', 'registration', 'surname', '', '', '_', ''),
(170, 'awc', 'registration', 'alternatephone', '', '', '_', ''),
(171, 'awc', 'registration', 'address', '', '', '_', ''),
(172, 'awc', 'registration', 'carvariant', '', '', '_', ''),
(173, 'awc', 'registration', 'years', '', '', '_', ''),
(174, 'awc', 'registration', 'fuel', '', '', '_', ''),
(182, 'awc', 'package', 'id', '', '', '_', ''),
(176, 'awc', 'brand', 'id', '', '', '_', ''),
(177, 'awc', 'brand', 'brandname', '', '', '_', ''),
(178, 'awc', 'model', 'id', '', '', '_', ''),
(179, 'awc', 'model', 'modelname', '', '', '_', ''),
(180, 'awc', 'variant', 'id', '', '', '_', ''),
(181, 'awc', 'variant', 'variantname', '', '', '_', ''),
(183, 'awc', 'package', 'packages', '', '', '_', ''),
(184, 'awc', 'package', 'packagename', '', '', '_', ''),
(185, 'awc', 'category', 'id', '', '', '_', ''),
(186, 'awc', 'category', 'category_name', '', '', '_', ''),
(187, 'awc', 'registration', 'package', '', '', '_', ''),
(188, 'awc', 'registration', 'category', '', '', '_', ''),
(216, 'php_youtube', 'city', 'city_id', '', '', '_', ''),
(191, 'awc', 'model', 'brandid', '', '', '_', ''),
(192, 'awc', 'variant', 'mid', '', '', '_', ''),
(215, 'php_youtube', 'state', 'countryid', '', '', '_', ''),
(211, 'php_youtube', 'country', 'country_id', '', '', '_', ''),
(212, 'php_youtube', 'country', 'country_name', '', '', '_', ''),
(213, 'php_youtube', 'state', 'state_id', '', '', '_', ''),
(214, 'php_youtube', 'state', 'state_name', '', '', '_', ''),
(217, 'php_youtube', 'city', 'city_name', '', '', '_', ''),
(218, 'php_youtube', 'city', 'stateid', '', '', '_', ''),
(219, 'awc', 'price', 'id', '', '', '_', ''),
(220, 'awc', 'price', 'amount', '', '', '_', ''),
(221, 'awc', 'price', 'promocode', '', '', '_', ''),
(222, 'awc', 'price', 'additionaldiscount', '', '', '_', ''),
(223, 'awc', 'price', 'output', '', '', '_', ''),
(224, 'awc', 'price', 'user_id', '', '', '_', ''),
(225, 'phpcrud', 'students', 'id', '', '', '_', ''),
(226, 'phpcrud', 'students', 'fname', '', '', '_', ''),
(227, 'phpcrud', 'students', 'lname', '', '', '_', ''),
(228, 'phpcrud', 'students', 'class', '', '', '_', ''),
(229, 'phpcrud', 'students', 'section', '', '', '_', ''),
(230, 'awc', 'registration', 'status', '', '', '_', ''),
(231, 'awc', 'employe_reg', 'id', '', '', '_', ''),
(232, 'awc', 'employe_reg', 'name', '', '', '_', ''),
(233, 'awc', 'employe_reg', 'phone', '', '', '_', ''),
(234, 'awc', 'employe_reg', 'address', '', '', '_', ''),
(235, 'awc', 'employe_reg', 'adhaar', '', '', '_', ''),
(236, 'awc', 'employe_reg', 'salary', '', '', '_', ''),
(237, 'awc', 'employe_reg', 'stdate', '', '', '_', ''),
(238, 'awc', 'employe_reg', 'eddate', '', '', '_', ''),
(239, 'awc', 'employe_reg', 'designation', '', '', '_', ''),
(242, 'awc', 'price', 'commision', '', '', '_', ''),
(241, 'awc', 'employe_reg', 'idproof', '', '', '_', ''),
(243, 'awc', 'cmpurchase', 'id', '', '', '_', ''),
(244, 'awc', 'cmpurchase', 'date', '', '', '_', ''),
(245, 'awc', 'cmpurchase', 'item', '', '', '_', ''),
(246, 'awc', 'cmpurchase', 'quantity', '', '', '_', ''),
(247, 'awc', 'cmpurchase', 'amount', '', '', '_', ''),
(248, 'awc', 'empurchase', 'id', '', '', '_', ''),
(249, 'awc', 'empurchase', 'date', '', '', '_', ''),
(250, 'awc', 'empurchase', 'name', '', '', '_', ''),
(251, 'awc', 'empurchase', 'item', '', '', '_', ''),
(252, 'awc', 'empurchase', 'amount', '', '', '_', ''),
(262, 'talent', 'jobs', 'location', '', '', '_', ''),
(261, 'talent', 'jobs', 'date', '', '', '_', ''),
(260, 'talent', 'jobs', 'name', '', '', '_', ''),
(259, 'talent', 'jobs', 'id', '', '', '_', ''),
(263, 'talent', 'jobs', 'counrty', '', '', '_', ''),
(264, 'talent', 'jobs', 'salary', '', '', '_', ''),
(265, 'talent', 'jobs', 'description', '', '', '_', ''),
(266, 'talent', 'jobs', 'country', '', '', '_', ''),
(267, 'talent', 'admin_user', 'id', '', '', '_', ''),
(268, 'talent', 'admin_user', 'name', '', '', '_', ''),
(269, 'talent', 'admin_user', 'phone', '', '', '_', ''),
(270, 'talent', 'admin_user', 'email', '', '', '_', ''),
(271, 'talent', 'admin_user', 'country', '', '', '_', ''),
(272, 'talent', 'admin_user', 'job', '', '', '_', ''),
(273, 'talent', 'admin_user', 'qualification', '', '', '_', ''),
(274, 'talent', 'admin_user', 'message', '', '', '_', ''),
(275, 'talent', 'admin_user', 'image', '', '', '_', ''),
(276, 'talent', 'admin', 'id', '', '', '_', ''),
(277, 'talent', 'admin', 'email', '', '', '_', ''),
(278, 'talent', 'admin', 'password', '', '', '_', ''),
(279, 'talent', 'user', 'id', '', '', '_', ''),
(280, 'talent', 'user', 'name', '', '', '_', ''),
(281, 'talent', 'user', 'phone', '', '', '_', ''),
(282, 'talent', 'user', 'email', '', '', '_', ''),
(283, 'talent', 'user', 'counrty', '', '', '_', ''),
(284, 'talent', 'user', 'job', '', '', '_', ''),
(285, 'talent', 'user', 'qualification', '', '', '_', ''),
(286, 'talent', 'user', 'message', '', '', '_', ''),
(287, 'talent', 'user', 'image', '', '', '_', ''),
(288, 'talent', 'user', 'date', '', '', '_', ''),
(289, 'talent', 'user', 'country', '', '', '_', ''),
(290, 'talent', 'admin_user', 'date', '', '', '_', ''),
(291, 'talent', 'jobs', 'status', '', '', '_', ''),
(292, 'awc', 'employe_reg', 'photo', '', '', '_', ''),
(293, 'awc', 'items', 'id', '', '', '_', ''),
(294, 'awc', 'items', 'name', '', '', '_', ''),
(295, 'awc', 'items', 'price', '', '', '_', ''),
(296, 'awc', 'items', 'quantity', '', '', '_', ''),
(297, 'awc', 'items', 'vehicle', '', '', '_', ''),
(298, 'awc', 'items', 'date', '', '', '_', ''),
(475, 'iq', 'blog_category', 'id', '', '', '_', ''),
(476, 'iq', 'blog_category', 'category_name', '', '', '_', ''),
(473, 'iq', 'blog', 'ab_blog', '', '', '_', ''),
(470, 'iq', 'blog', 'bg_name', '', '', '_', ''),
(471, 'iq', 'blog', 'bg_category', '', '', '_', ''),
(472, 'iq', 'blog', 'bg_images', '', '', '_', ''),
(455, 'iq', 'project', 'id', '', '', '_', ''),
(456, 'iq', 'project', 'pr_name', '', '', '_', ''),
(457, 'iq', 'project', 'pr_sub_title', '', '', '_', ''),
(458, 'iq', 'project', 'st_date', '', '', '_', ''),
(459, 'iq', 'project', 'end_date', '', '', '_', ''),
(460, 'iq', 'project', 'pr_category', '', '', '_', ''),
(461, 'iq', 'project', 'pr_images', '', '', '_', ''),
(462, 'iq', 'project', 'ab_project', '', '', '_', ''),
(463, 'iq', 'project', 'status', '', '', '_', ''),
(464, 'iq', 'gallery', 'id', '', '', '_', ''),
(465, 'iq', 'gallery', 'br_image', '', '', '_', ''),
(466, 'iq', 'gallery', 'project_id', '', '', '_', ''),
(467, 'iq', 'gallery', 'project_name', '', '', '_', ''),
(468, 'iq', 'gallery', 'gr_image', '', '', '_', ''),
(469, 'iq', 'blog', 'id', '', '', '_', ''),
(437, 'vm', 'contact', 'email', '', '', '_', ''),
(438, 'vm', 'contact', 'subject', '', '', '_', ''),
(439, 'vm', 'contact', 'phone', '', '', '_', ''),
(440, 'vm', 'contact', 'message', '', '', '_', ''),
(441, 'iq', 'admin', 'id', '', '', '_', ''),
(442, 'iq', 'admin', 'email', '', '', '_', ''),
(443, 'iq', 'admin', 'password', '', '', '_', ''),
(477, 'iq', 'contact', 'id', '', '', '_', ''),
(478, 'iq', 'contact', 'name', '', '', '_', ''),
(479, 'iq', 'contact', 'email', '', '', '_', ''),
(423, 'vm', 'product_category', 'id', '', '', '_', ''),
(424, 'vm', 'product_category', 'category_name', '', '', '_', ''),
(425, 'vm', 'products', 'id', '', '', '_', ''),
(426, 'vm', 'products', 'pr_name', '', '', '_', ''),
(427, 'vm', 'products', 'pr_sub_title', '', '', '_', ''),
(428, 'vm', 'products', 'st_date', '', '', '_', ''),
(429, 'vm', 'products', 'end_date', '', '', '_', ''),
(430, 'vm', 'products', 'pr_category', '', '', '_', ''),
(431, 'vm', 'products', 'cp_name', '', '', '_', ''),
(432, 'vm', 'products', 'pr_images', '', '', '_', ''),
(433, 'vm', 'products', 'ab_product', '', '', '_', ''),
(434, 'vm', 'products', 'status', '', '', '_', ''),
(435, 'vm', 'contact', 'id', '', '', '_', ''),
(436, 'vm', 'contact', 'name', '', '', '_', ''),
(384, 'awc', 'items', 'hsn', '', '', '_', ''),
(385, 'awc', 'report', 'id', '', '', '_', ''),
(386, 'awc', 'report', 'name', '', '', '_', ''),
(387, 'awc', 'report', 'price', '', '', '_', ''),
(388, 'awc', 'report', 'quantity', '', '', '_', ''),
(389, 'awc', 'report', 'vehicle', '', '', '_', ''),
(390, 'awc', 'report', 'date', '', '', '_', ''),
(474, 'iq', 'blog', 'status', '', '', '_', ''),
(444, 'iq', 'project_category', 'id', '', '', '_', ''),
(445, 'iq', 'project_category', 'category_name', '', '', '_', ''),
(398, 'vm', 'blog_category', 'id', '', '', '_', ''),
(399, 'vm', 'blog_category', 'category_name', '', '', '_', ''),
(400, 'vm', 'blog', 'id', '', '', '_', ''),
(401, 'vm', 'blog', 'bg_name', '', '', '_', ''),
(402, 'vm', 'blog', 'bg_category', '', '', '_', ''),
(403, 'vm', 'blog', 'bg_images', '', '', '_', ''),
(404, 'vm', 'blog', 'ab_blog', '', '', '_', ''),
(405, 'vm', 'blog', 'status', '', '', '_', ''),
(406, 'vm', 'project_category', 'id', '', '', '_', ''),
(407, 'vm', 'project_category', 'category_name', '', '', '_', ''),
(408, 'vm', 'project', 'id', '', '', '_', ''),
(409, 'vm', 'project', 'pr_name', '', '', '_', ''),
(410, 'vm', 'project', 'pr_sub_title', '', '', '_', ''),
(411, 'vm', 'project', 'st_date', '', '', '_', ''),
(412, 'vm', 'project', 'end_date', '', '', '_', ''),
(413, 'vm', 'project', 'pr_category', '', '', '_', ''),
(414, 'vm', 'project', 'pr_images', '', '', '_', ''),
(415, 'vm', 'project', 'ab_project', '', '', '_', ''),
(416, 'vm', 'project', 'status', '', '', '_', ''),
(417, 'vm', 'gallery', 'id', '', '', '_', ''),
(418, 'vm', 'gallery', 'gr_image', '', '', '_', ''),
(419, 'vm', 'gallery', 'project_id', '', '', '_', ''),
(420, 'vm', 'gallery', 'gr_name', '', '', '_', ''),
(480, 'iq', 'contact', 'subject', '', '', '_', ''),
(481, 'iq', 'contact', 'message', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"gymnsb","table":"announcements"},{"db":"gymnsb","table":"members"},{"db":"gymnsb","table":"todo"},{"db":"paypal","table":"payment"},{"db":"gymnsb","table":"equipment"},{"db":"gymnsb","table":"staffs"},{"db":"gymnsb","table":"reminder"},{"db":"gymnsb","table":"admin"},{"db":"gymnsb","table":"rates"},{"db":"intersmart","table":"blog"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-07-13 21:40:49', '{"collation_connection":"utf8mb4_general_ci"}');
--
-- Database: `proarch_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `gallery_id` int(5) NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(5) NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `portfolio_id`, `image`, `status`) VALUES
(5, 24, '../uploads/23-02-2022-06-58-05pm4.jpg', 1),
(4, 24, '../uploads/23-02-2022-06-57-36pm1.jpg', 1),
(6, 23, '../uploads/23-02-2022-07-00-29pm1.jpg', 1),
(7, 23, '../uploads/23-02-2022-07-00-38pm4.jpg', 1),
(39, 1, '../uploads/22-03-2022-05-58-19pm1920+1080-(2).jpg', 1),
(30, 2, '../uploads/15-03-2022-12-11-20pmvilla-construction-trivandrum.jpg', 1),
(36, 7, '../uploads/15-03-2022-12-21-48pm1920+1080-(3).jpg', 1),
(40, 1, '../uploads/22-03-2022-05-59-01pm1920+1080-(3) (1).jpg', 1),
(16, 8, '../uploads/07-03-2022-06-25-41am356+457-(3).jpg', 1),
(41, 1, '../uploads/22-03-2022-05-59-43pm1920+1080-(1).jpg', 1),
(18, 8, '../uploads/07-03-2022-06-26-37am356+457-(6).jpg', 1),
(35, 7, '../uploads/15-03-2022-12-21-37pm1920+1080-(2).jpg', 1),
(38, 2, '../uploads/17-03-2022-06-43-03amtest1.png', 1),
(29, 3, '../uploads/15-03-2022-12-03-26pm1920+1080-(2).jpg', 1),
(28, 3, '../uploads/15-03-2022-12-03-18pm1920+1080-(1).jpg', 1),
(32, 2, '../uploads/15-03-2022-12-11-34pmvilla-interior.jpg', 1),
(42, 9, '../uploads/05-04-2022-06-09-42amAkhil-vijay--1.jpg', 1),
(43, 9, '../uploads/05-04-2022-06-09-48amAkhil-vijay-2.jpg', 1),
(44, 9, '../uploads/05-04-2022-06-09-54amAkhil-vijay-3.jpg', 1),
(45, 10, '../uploads/05-04-2022-07-20-13amAkhil-simon-3.jpg', 1),
(46, 10, '../uploads/05-04-2022-07-20-21amAkhil-simon--2jpg.jpg', 1),
(47, 10, '../uploads/05-04-2022-07-20-26amAkhil simon -1.jpg', 1),
(48, 11, '../uploads/05-04-2022-07-22-49amsini-kumari--1.jpg', 1),
(49, 11, '../uploads/05-04-2022-07-22-56amsini-kumari-2.jpg', 1),
(50, 11, '../uploads/05-04-2022-07-23-01amsini-kumari--3.jpg', 1),
(51, 12, '../uploads/05-04-2022-10-01-25amhappy-home-britto-1.jpg', 1),
(52, 12, '../uploads/05-04-2022-10-01-32amhappy-home-britto-2.jpg', 1),
(53, 12, '../uploads/05-04-2022-10-01-38amhappy-home-britto-3.jpg', 1),
(54, 13, '../uploads/05-04-2022-10-02-35amhappy-home-Dobin-poovor--1jpg.jpg', 1),
(55, 13, '../uploads/05-04-2022-10-02-41amhappy-home-Dobin-poovor--2jpg.jpg', 1),
(56, 13, '../uploads/05-04-2022-10-02-46amhappy-home-Dobin-poovor--3.jpg', 1),
(57, 14, '../uploads/05-04-2022-10-04-01amhappy-home-pradeepkumar--1.jpg', 1),
(58, 14, '../uploads/05-04-2022-10-04-09amhappy-home-pradeepkumar--3.jpg', 1),
(59, 14, '../uploads/05-04-2022-10-04-16amhappy-home-pradeepkumar--2.jpg', 1),
(60, 15, '../uploads/05-04-2022-10-05-20amhappy-home-praveen--2.jpg', 1),
(61, 15, '../uploads/05-04-2022-10-05-31amhappy-home-praveen--1.jpg', 1),
(62, 15, '../uploads/05-04-2022-10-05-37amhappy-home-praveen--3.jpg', 1),
(63, 16, '../uploads/05-04-2022-10-16-39ampremium-basheer--1.jpg', 1),
(64, 16, '../uploads/05-04-2022-10-16-47ampremium-basheer--2.jpg', 1),
(65, 16, '../uploads/05-04-2022-10-16-54ampremium-basheer--3.jpg', 1),
(66, 17, '../uploads/05-04-2022-10-17-51ampremium-homes-padma-kumar--.3jpg.jpg', 1),
(67, 17, '../uploads/05-04-2022-10-17-58ampremium-homes-padma-kumar--1.jpg', 1),
(68, 17, '../uploads/05-04-2022-10-18-04ampremium-homes-padma-kumar--.2jpg.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`user_id`, `time`) VALUES
(1, '1641621408'),
(1, '1644225786'),
(1, '1646631102'),
(1, '1646631102'),
(1, '1646732604'),
(1, '1646732627'),
(1, '1647345237'),
(1, '1647345242'),
(1, '1647345314'),
(1, '1647355558'),
(1, '1647946740'),
(1, '1647946747'),
(1, '1652850398'),
(1, '1654606495'),
(1, '1660053390'),
(1, '1660053395'),
(1, '1661249159');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(5) NOT NULL AUTO_INCREMENT,
  `news_category` varchar(225) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_description` longtext NOT NULL,
  `image` varchar(225) NOT NULL,
  `date` varchar(15) DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_category`, `news_title`, `news_description`, `image`, `date`, `status`) VALUES
(2, 'Architecture', '5 Tips to Keep in Mind While Building a Home', 'Whether you''re building your very first home or your tenth, it won''t come as a surprise when we say the process is quite complicated. Consider the following top 5 tips when building a Home From Scratch.<br><br>\r\n\r\nYou are building a delicate structural system after all, which needs to be safe, secure, and meet a long list of local and national regulations. Though, with the right team by your side and some fantastic tips, like the ones we''ve listed below, you''ll be on your way to a smooth new-home build.<br><br>\r\n\r\nOff the top, you''re going to want to ensure you have all of the details and construction sheets handy and to go from there. It''s imperative not to kick off any home build project without all of your architectural and engineering drawings on hand, and so once you have these you''re on the right track. <br><br>\r\n\r\nHowever, for those starting without a plan and looking to kick things off from the design phase, we have some great tips for you below too.<br><br>\r\n\r\n<b>1.	Get Planning, and Do It Well </b><br><br>\r\nTo get the ball rolling and to ensure the building process is as smooth as possible, you''ll want to make sure you have your plan in place, and implemented correctly. <br><br>\r\n\r\nWith this tip we suggest you engage a designer, architect and engineering teams to make the process a little simpler and more thoroughly complete. <br><br>\r\n\r\nYou don''t need to have these professionals on your team full-time, though a contractor, an architect and engineer are imperative to making sure you''re designing within regulation and also creating a home that can be built - without falling down mid-way through construction. <br><br>\r\n\r\nOn top of this, consider things such as the direction of the home''s key living spaces. You want bedrooms and the living room to be away from high-heat zones such as the Western sun, and so directional planning is important too. <br><br>\r\n\r\nOne final thing to note is the home''s program (or floor plan) and how you are expecting to make use of the home. Without a good idea in your mind about how occupants will get from one side to the other, you''re running the risk of creating a design and building a home that doesn''t work so well for those who live inside of it. <br><br>\r\n\r\n<b>2.	Create a Realistic Budget </b><br><br>\r\nWhen we say realistic, we mean plan for emergencies and also be ready for spending a little extra on key elements of the home. <br><br>\r\n\r\nOne key cost that a lot of first-time and from-scratch builders forget about are things such as essential utility connections, such as electric metres, gas metres and in recent years - an NBN connection too. <br><br>\r\n\r\nOn top of these costs, also make sure that you''re factoring in materials beyond your trusses, noggins, studs and other household construction materials. By this we mean keeping tabs on the costs of fencing, decking, garage concreting as well as letter boxes and other smaller essentials. <br><br>\r\n\r\nA key tip we always suggest when budgeting is to have a cost overrun protection fund or account. In this account, you''ll want to have anywhere between 15 to 25 percent of your household''s cost saved for an emergency. <br><br>\r\n\r\nYou should always hope to not need to dig into this account, though, it''s important that it''s there. Otherwise, your construction could stall. <br><br>\r\n\r\n<b>3. Contractors, Tools and Suppliers</b><br><br>\r\nIf you''re building the home on your own, or delegating to builders and other professionals, you''re going to want to make sure you make a lot of executive decisions. <br><br>\r\n\r\nOf course, for those building a home on their own, you''ll be put to the task of investing in all of your own tools. For this tip, we suggest looking to quality retailers like Stonex to help you out here, as they''ll stock a tonne of essential home-building tools for you. <br><br>\r\n\r\nHowever, when it comes to contractors, these experts will typically come with all of their own supplies and tools.<br><br>\r\n\r\nThis in mind, however, you''re going to want to do a lot of digging when it comes to choosing the right contractors. Take a look at things such as their portfolio, credentials, their personality as well as their style of home builds. <br><br>\r\n\r\nA lot of new-home builders don''t recognise the difference between a builder''s construction style, and so lead themselves into a trap where a home can''t be completed to the right calibre. <br><br>\r\n\r\nFor vetting your contractors, take a look at their past work and determine if the home''s they''ve built in the past match yours. If they do, you''re in luck! If they don''t, it might be worth looking to another contractor. <br><br>\r\n\r\n <b>4. Prepare Financing Early</b><br><br>\r\nTo one of our last tips, it''s always important to have your financing ready as early as possible and tied well into your construction plan. <br><br>\r\n\r\nA lot of banks offer construction home loans designed for the rocky construction route, and so you''re in good hands when it comes to financing a new home build. However, keep in mind that these home loans are staggered and funding is released on a timeline, rather than all at once. <br><br>\r\n\r\nThis in mind, you will need to have the discipline, as will your builders, to work well with your plan and to follow it step by step to ensure your loan payments line up perfectly with your construction stage. <br><br>\r\n\r\n\r\n<b>5. Assess Avenues to Save Money </b><br><br>\r\nOn to our final tip; there are always a tonne of avenues to save money when building a home from scratch, and so we suggest you look toward these. <br><br>\r\n\r\nWhen you can, or when a material isn''t visible, work to find a cheaper alternative, for example. This method allows you to only invest heavily in the materials in the home that you''re going to see and gives you the chance to save a tonne when you switch to cheaper alternatives that are otherwise hidden from view. <br><br>\r\n\r\nOn top of this, bargaining in the construction industry is not frowned upon, and so you can talk to sales agents at homeware stores, for example, and ask for the best prices on materials that you need. And if they don''t give you a good price - go somewhere else!', '../uploads/22-03-2022-09-46-27amHome-construction-tips.jpg', '22/03/2022', 1),
(3, 'Architecture', '6 Questions to Ask Before Hiring an Architect', 'A beautiful dream home or a nightmare of arguments, delays and disasters - it depends, to a large extent, on the architect you choose. An architect can help you build your new home or renovate an existing one to transform it into an ideal oasis for you and your family. Before you appoint a professional for this very important job, make sure to ask all the right questions so that your association with the expert yields you the maximum benefits and you can have a frictionless working relationship.<br><br>\r\n\r\nWhile interviewing architects and deciding on which one you wish to work with, remember to address these essential concerns, so you have your peace of mind and are sure about how your project will be handled and eventually completed.<br><br>\r\n\r\n\r\n<b>1. Does the architect have experience with a similar project?</b><br><br>\r\nWhile you might have found architects who have a portfolio in residential design, it''s important to find out if they have also worked on a project of similar scale, budget and timeline.<br><br>\r\n\r\nIt is possible that some architects have had experience only in designing studio apartments, flats or small homes, with very little experience in large bungalows and penthouses, or vice versa. It''s always sensible to work with an expert who has managed different kinds of projects and has varied experience.<br><br>\r\n\r\n<b>2. What is the timeline for the project?</b><br><br>\r\nIt''s very important to work out a mutually agreed upon and realistic timeline for the project. You and the architect should have an open and honest conversation about expected delays - the architect should be frank with you about the timeline within which they can deliver. Other than just chalking out a timetable, it is also important to have a clear conversation about how the architect plans to adhere to it.<br><br>\r\n\r\n<b>3. How does the architect plan on getting paid?</b><br><br>\r\nThe discussions on the professional''s fees and the budget need to be clearly articulated with complete transparency. Some architects charge a fixed fee, which needs to be paid to them at various stages of the project or all in one go. Some prefer billing hourly or charge a percentage of the overall project cost. If you have a strict budget, you may want to stick with an architect who prefers a fixed fee so there are no expensive surprises later on.<br><br>\r\n\r\n<b>4. How open is the architect to your inputs and feedback?</b><br><br>\r\nWhile some clients prefer to leave the entire design, look and feel of their home to the architect, some others like to be more involved. If you belong to the latter category, it''s important to ask the architect beforehand if they would be open to your suggestions. Sometimes unwelcome inputs by the client can lead to differences and friction. That''s why it''s always best to tell them beforehand how involved you would like to be in the project''s design, and know your architect''s views on client involvement.<br><br>\r\n\r\n\r\n<b>5. How hands-on will the architect be?</b><br><br>\r\nWhen you hire an architect, you should know how much time they will personally spend on the project themselves as opposed to how much of that job will be delegated to juniors or perhaps even the contractor. Ask the expert how often they plan to visit the site and discuss what would be the ideal number of visits that the project requires.<br><br>\r\n\r\nTip: While discussing site visits, ask your architect if these are going to be charged separately. While most architects include the site visits in their overall fee, some others bill this as an extra service.<br><br>\r\n\r\n6. Will they accommodate changes in the design?<br><br>\r\nThough not ideal, designs do tend to evolve. Here, your architect''s point of view is crucial. If you anticipate changes in your project, then this, too, needs to be discussed. Will the architect make more suggestions at a later stage, and importantly, may you ask for changes as the project moves on?<br><br>\r\n\r\nDo be aware that some expectations can be unrealistic in terms of changes - remember that major alterations are time-consuming, come with an added cost and push back the project completion date.', '../uploads/22-03-2022-10-52-25amhiring-architect-trivandrum.jpg', '22/03/2022', 1),
(4, 'Interior Design', '5 Things to Consider Before Designing Your Interiors', 'It''s tempting to dive into an interior design project and leave every detail to the designer, especially given that finding Interior designers in Kerala is simple, thanks to the region''s plethora of designers. It''s good to have faith in your chosen designer''s creativity and attention to detail, but it''s always ideal to have a plan in place before calling those modern interior designers in Kerala.<br><br>\r\n\r\nTo plan, you must have a defined goal, boundaries, and expectations in mind. Make your interior design project easier for you and your designer by describing the details of five key factors to consider before embarking on an artistic journey to a better home.<br><br>\r\n\r\n<b>1. Budget</b><br><br>\r\n\r\nEstablish a budget for your interior design project first. Because it affects other variables such as construction time, personnel requirements, and the interior design itself, the budget for the interior design project should set the tone for the whole design process.<br><br>\r\n\r\nBefore you start, receive an estimate from your interior designer. Enter your estimated finish time, the design, and the materials you wish to use to get an accurate quote.<br><br>\r\n\r\n<b>2. Time Frame</b><br><br>\r\n\r\nConsider when your interior design project is expected to be completed. Allow for the possibility of changes and interruptions in order to have a reasonable expectation. Keep in mind that the number of people you''ll need, the variety of designs you''ll be able to choose from, and the materials you''ll be able to use will all be determined by the time frame you choose.<br><br>\r\n\r\nDon''t be afraid to put the project on hold for a few days so that you may keep in touch with your interior designer for formal updates on the design''s progress. Major changes, which are typically the result of a lack of communication, might increase the project''s cost and length.<br><br>\r\n\r\n<b>3. Design phase </b><br><br>\r\n\r\nNow that you''ve decided on a budget and a timeline for your interior design project, you can start looking for ideas that fit inside those constraints. Knowing which style you wish to pursue and the location that specialises in that style is really beneficial: Do you want a modern, artistic home design? It''s right up Kerala''s stylish interior designers'' alley! <br><br>\r\n\r\nGive the designer a portfolio of designs you developed or studied, from the general style and feel to the particular details and materials you choose, to make it easier for them to comprehend the design you have in mind.<br><br>\r\n\r\n<b>4. Manpower</b><br><br>\r\nThe amount of personnel required is determined by the timetable; tighter design schedules necessitate more personnel. As a result, it''s critical to employ an interior designer who encourages collaboration and exclusively works with highly skilled craftspeople, such as Kerala interior designers. The area''s interior designs vary widely due to the cultural mix.<br><br>\r\n\r\n<b>5. Know your location</b><br><br>\r\nPerform careful study on the location of your building before beginning the renovation. For a smooth building process for both the designers and yourself, keep an eye out for the regulations and constraints (if any).<br><br>\r\n\r\nThese are the five things you should know before starting your interior design project. Make sure you use this blog as a resource to make the interior design process go as smoothly as possible.', '../uploads/22-03-2022-11-12-44aminterior-designer-trivandrum1.jpg', '22/03/2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
  `category_id` int(5) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`category_id`, `category_name`, `status`) VALUES
(2, 'Architecture', 1),
(5, 'Interior Design', 1),
(6, 'Construction', 1),
(7, 'Design Build', 1),
(8, 'Landscaping', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_category`
--

CREATE TABLE IF NOT EXISTS `project_category` (
  `category_id` int(5) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `project_category`
--

INSERT INTO `project_category` (`category_id`, `category_name`, `status`) VALUES
(1, 'Building', 1),
(2, 'Villa', 1),
(3, 'Interior', 1),
(6, 'Budget Homes', 1),
(7, 'Happiness Projects', 1),
(8, 'Premium Villas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(5) NOT NULL AUTO_INCREMENT,
  `project_category` varchar(50) NOT NULL,
  `project_title` varchar(200) NOT NULL,
  `project_description` longtext NOT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_category`, `project_title`, `project_description`, `thumbnail`, `status`) VALUES
(1, 'Budget Homes', 'Proarch Residences', '', '../uploads/15-03-2022-12-14-06pm426+574.jpg', 1),
(2, 'Villa', 'Villa Project @ Trivandrum', '', '../uploads/426+574-2.jpg', 1),
(3, 'Building', 'Commercial Project - Trivandrum', '', '../uploads/426+574-3.jpg', 1),
(7, 'Interior', 'Proarch Interiors', '', '../uploads/15-03-2022-12-23-47pm426+574-(2).jpg', 1),
(8, 'Interior', 'Interior Designing', '', '../uploads/426+574-5.jpg', 1),
(9, 'Budget Homes', 'Akhil Vijay', '', '../uploads/05-04-2022-07-19-26amakhil-vijay--.jpg', 1),
(10, 'Budget Homes', 'Akhil Simon', '', '../uploads/05-04-2022-07-19-51amakhil-simon-(1).jpg', 1),
(11, 'Budget Homes', 'Sini Kumari', '', '../uploads/05-04-2022-07-22-16amsini-kumari.jpg', 1),
(12, 'Happiness Projects', 'Britto', '', '../uploads/05-04-2022-10-01-08ambritto--.jpg', 1),
(13, 'Happiness Projects', 'Dobin', '', '../uploads/05-04-2022-10-02-16amDobin-poovar--.jpg', 1),
(14, 'Happiness Projects', 'Pradeep Kumar', '', '../uploads/05-04-2022-10-03-44ampradeep-kumar--.jpg', 1),
(15, 'Happiness Projects', 'Praveen', '', '../uploads/05-04-2022-10-04-57ampraveen-pothenkode-.jpg', 1),
(16, 'Premium Villas', 'Basheer', '', '../uploads/05-04-2022-10-15-36ambasheer-.jpg', 1),
(17, 'Premium Villas', 'Padmakumar', '', '../uploads/05-04-2022-10-17-32ampadmakumar.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Administrator', '', 'admin', '205db7c302d87a8dabae9d3924d4a7e0');
--
-- Database: `rogersoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpassword` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `cpassword`) VALUES
(2, 'rohit', 'raj', 'rohit@123gmailcom', '6543214567', 'ROHIT321', 'ROHIT321');
--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `NAME'` varchar(25) NOT NULL,
  `adrdess` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `talent`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `job` varchar(200) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `name`, `phone`, `email`, `country`, `job`, `qualification`, `message`, `image`, `date`) VALUES
(2, 'NIKHIL PS', '6238835353', 'admin@gmail.com', 'Qatar', 'Software Developer', 'Bsc CS', 'i am a message', 'blockchain.png', '2022-11-19'),
(3, 'rohit', '6238835353', 'rohit@123gmailcom', 'Qatar', 'Designer', 'bca', 'i am a message', 'sandra.jpg', '2022-11-24'),
(4, 'vipin', '9878787877', 'vipin@gmail.com', 'india', 'designer', 'MSC', 'i am a message', 'France.png', '2022-11-18'),
(6, 'neelan', '6238835353', 'neelan@gmail.com', 'Qatar', 'Software Developer', 'bca', 'hwhehehehe', 'certificate.jpg', '2022-11-20'),
(7, 'manu', '6238835353', 'manu@gmail.com', 'america', 'designer', 'MSC', 'i am a message', 'flckr6.jpg', '2022-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `date`, `location`, `country`, `salary`, `description`, `status`) VALUES
(1, 'Painter', '2022-11-01', 'trivandrum', 'USA', '10000', 'fgvrj gvridi guvrdiuhui bdfii rvd irvhdfiuhiu rvdfhui hgvufhsdiuh gv rufd h brd bghdfvjhjf dshvjk vsdfi jvrf uidg vhiu vrifdjviurfdv  uvhfdhbjvrfdib  vhgfdbhvuifd', 0),
(3, 'Designer', '2022-11-08', 'trivandrum', 'Tylandss', '400000', 'fgvrj gvridi guvrdiuhui bdfii rvd irvhdfiuhiu rvdfhui hgvufhsdiuh gv rufd h brd bghdfvjhjf dshvjk vsdfi jvrf uidg vhiu vrifdjviurfdv  uvhfdhbjvrfdib  vhgfdbhvuifd', 0),
(4, 'driver', '2022-11-18', 'Dubai', 'UAE', '6000', 'fgvrj gvridi guvrdiuhui bdfii rvd irvhdfiuhiu rvdfhui hgvufhsdiuh gv rufd h brd bghdfvjhjf dshvjk vsdfi jvrf uidg vhiu vrifdjviurfdv  uvhfdhbjvrfdib  vhgfdbhvuifd', 0),
(5, 'Developer', '2022-11-16', 'Trivandrum', 'India', '10000', 'fgvrj gvridi guvrdiuhui bdfii rvd irvhdfiuhiu rvdfhui hgvufhsdiuh gv rufd h brd bghdfvjhjf dshvjk vsdfi jvrf uidg vhiu vrifdjviurfdv  uvhfdhbjvrfdib  vhgfdbhvuifd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `job` varchar(200) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `email`, `country`, `job`, `qualification`, `message`, `image`, `date`) VALUES
(1, 'NIKHIL PS', '6238835353', 'nikhilgriffin@gmail.com', 'USA', 'developer', 'bca', 'i am a message', 'U-S-A.png', '2022-11-18'),
(2, 'griffinmark', '6543214567', 'rohit@123gmailcom', 'Tylandss', '234rtyujk', 'bca', 'hwhehehehe', 'France.png', '2022-11-24'),
(5, 'varun Das', '6543214567', 'admin@gmail.com', 'italy', 'Designer', 'Bsc CS', 'i am a message', 'France.png', '2022-11-13'),
(6, 'venu gopal', '6238835353', 'gopal@gmail.com', 'USA', 'Designer', 'bca', 'i am a message', 'certificate.jpg', '2022-11-24'),
(7, 'gadha', '6238835353', 'gadha@gmail.com', 'america', 'developer', 'bca', 'i am a message', 'flckr2.jpg', '2022-11-25');
--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `fetch`
--

CREATE TABLE IF NOT EXISTS `fetch` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `course` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fetch`
--

INSERT INTO `fetch` (`id`, `name`, `email`, `phone`, `course`) VALUES
(1, 'nikhil', 'nikhil@gmail.com', '6238835353', 'msc'),
(2, 'appu', 'appu@gmail.com', '8139894018', 'bsc'),
(3, 'sachin', 'sachin@gmail.com', '9086754396', 'msc'),
(4, 'kohli', 'kohli@gmai;l.com', '6798764523', 'bcom');
--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Database: `vlog`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `course` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `course`) VALUES
(1, 'NIKHIL PS', 'nikhil123@gmail.com', '6238835353', 'bsc'),
(4, 'neelan', 'neelan@gmail.com', '6238835377', 'gcd'),
(5, 'rohit ', 'rohit@123gmailcom', '6238835365', 'mscc'),
(8, 'NIKHIL PUSHPARAJAN', 'nikhilpushparajan2000@gmail.com', '6238835353', 'bsc'),
(9, 'NIKHIL PUSHPARAJAN', 'nikhilpushparajan2000@gmail.com', '6238835353', 'bsc'),
(10, 'sachin tendulkar', 'sachin@gmail.com', '6543214567', 'gcd');
--
-- Database: `vm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(100) NOT NULL,
  `bg_category` varchar(50) NOT NULL,
  `bg_images` varchar(100) NOT NULL,
  `ab_blog` varchar(10000) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `bg_name`, `bg_category`, `bg_images`, `ab_blog`, `status`) VALUES
(2, 'Things to notice while constructing Stainless steel staircaseeee', 'select category', 'news-1.jpg', '<p>Stainless steel staircases are becoming increasingly popular in modern construction projects due to their strength, durability, and aesthetic appeal. Stainless steel is a robust material that can withstand extreme weather conditions, meaning it is suitable for both indoor and outdoor environments. It is also resistant to corrosion and long-lasting, making it a cost-effective choice for staircases</p>.<p>When constructing a stainless steel staircase, there are a few key considerations to take into account. Firstly, the design of the stairs must be considered to ensure that it meets the necessary safety regulations and building codes. Secondly, the type of stainless steel used must be suitable for the environment in which the staircase is to be installed. Finally, the installation process must be carefully planned and executed to ensure the staircase is safely constructed and securely installed.</p>.<p>When selecting a design for a stainless steel staircase, it is important to consider the load capacity of the stairs. The load capacity should be determined based on the number of people that are expected to use the staircase, as well as the amount of weight that will be placed on the stairs. It is important to select a design that can support the expected weight and uses the correct grade of stainless steel for the environment in which the staircase is to be installed</p>.<p>The type of stainless steel used for a staircase can vary depending on the environment in which it is to be installed. For outdoor applications, weather-resistant grades of stainless steel such as 304 or 316 are recommended. For indoor applications, non-weather-resistant grades such as 201 or 202 are typically used. The grade of stainless steel selected should be suitable for the environment in which it is to be used, as well as for the load capacity of the staircase.</p><p>Once the design and type of stainless steel have been selected, the installation process can begin. The staircase should be installed in accordance with the manufacturerâ€™s instructions and any necessary safety regulations. The staircase should also be securely fastened to the structure with the correct type of fasteners and placed on a level surface. It is important to make sure the staircase is firmly and securely affixed, as any movement or instability could result in injury.</p><p>When installing a stainless steel staircase, it is important to ensure that the staircase is level and plumb. This can be achieved through the use of a level and a plumb bob. The staircase should also be securely fastened to the structure with the correct type of fasteners. The fasteners should be corrosion-resistant and should be tightened to the specified torque. Finally, any welds should be inspected before the staircase is used to ensure they are of the highest quality.</p><p>Stainless steel staircases are a robust and attractive option for modern construction projects. However, a great deal of thought and care must be taken when planning the design and installation of the staircase. It is important to ensure the design meets safety regulations, the type of stainless steel is suitable for the environment, and the installation is carefully executed. Doing so will ensure a safe and secure staircase that will last for many years to come.</p>', 0),
(3, 'How Balkon Bars increase the functionality of balconies', 'select category', 'news-2.jpg', '<p>Balcony bars are an increasingly popular addition to balconies, as they offer a number of benefits that make them a great choice for homeowners looking to enhance the functionality of their outdoor space. Balcony bars offer a great way to create a unique outdoor living space and make the most of the small outdoor area.</p>.<p>The main benefit of balcony bars is increased functionality. With a balcony bar, you can easily transform your balcony into an outdoor dining area, a place to entertain guests, or an area to relax and enjoy the view. Balcony bars provide added seating, giving you the opportunity to enjoy a meal or a drink with friends or family while taking in the scenery. You can also use the bar as a place to store items such as books, magazines, and other items.</p>.<p>Balcony bars also offer an opportunity to create a more intimate and comfortable atmosphere on your balcony. When placed near the railing, balcony bars create an inviting atmosphere, making it easier to relax and enjoy the view. They also make it easier for people to socialize and interact with each other, as the bar provides a convenient spot for conversation.</p>.<p>Another great benefit of balcony bars is the aesthetic appeal they offer. Since they are often made from attractive materials such as wood or metal, balcony bars can add a touch of style to your outdoor space. Additionally, balcony bars can be used to add a decorative element to your balcony, as they come in a variety of designs and colors. This allows you to customize the look of your balcony to match your homeâ€™s style.</p>.<p>Finally, balcony bars are highly durable and require minimal maintenance. Since they are designed to withstand the elements, balcony bars can be enjoyed year-round without worrying about weather damage. Additionally, they are easy to clean and maintain, meaning they can be used without the hassle of frequent maintenance.</p>.<p>In conclusion, balcony bars are a great way to make the most of a small outdoor space and increase the functionality of balconies. Balcony bars provide an attractive and inviting atmosphere, allowing you to entertain guests or enjoy a meal with friends. They also provide a great way to store items and add a decorative element to your balcony. Finally, balcony bars are highly durable and require minimal maintenance, making them a great choice for homeowners looking to enhance the functionality of their outdoor space.</p>', 0),
(4, 'Use of stainless steel, wooden and glass pergola construction ', 'select category', 'news-3.jpg', '<p>Pergolas are an increasingly popular feature in outdoor living spaces, providing shade, privacy, and a place to relax in the garden. The materials used in the construction of a pergola can greatly influence its style, durability, and function. Wood, stainless steel, and glass are all popular choices for pergola construction, each with its own benefits and drawbacks. Letâ€™s take a closer look at the advantages and disadvantages of each material.</p><p>Stainless steel is a modern material that is becoming increasingly popular for pergola construction. It is incredibly strong and durable, and can withstand harsh weather conditions with ease. Stainless steel is also highly resistant to corrosion, making it a good choice for coastal areas. The main disadvantage of stainless steel is its cost. It is much more expensive than wood or other materials, and can be difficult to install.</p><p>Wood is the classic material used for pergola construction. It has a timeless appeal, and can be stained or painted to match the color scheme of the garden. It is also fairly inexpensive, making it a good option for those on a tight budget. The main disadvantage of wood is that it is susceptible to decay, rot, and insect damage. This can be mitigated with regular maintenance, such as painting or staining, but it still requires more effort than other materials</p>.<p>Glass pergolas are becoming increasingly popular, thanks to their sleek, modern look. They are incredibly versatile, and can easily be adapted to a variety of styles and designs. The main disadvantage of glass is that it is more fragile than other materials, and can easily be broken if not properly maintained. It is also more expensive than wood or steel, and is not a good option for those on a tight budget.</p><p>When it comes to pergola construction, there is no one-size-fits-all material. Each material has its own benefits and drawbacks, and the decision of which material to use should be based on the needs and preferences of the homeowner. Wood is a classic choice that is fairly inexpensive, while stainless steel is strong and durable but more expensive. Glass pergolas are becoming increasingly popular for their modern look, but they are also more fragile and expensive. Ultimately, the choice of which material to use should be made based on the specific needs and preferences of the homeowner.</p<', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `category_name`) VALUES
(1, 'just checking');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `phone`, `message`) VALUES
(1, 'NIKHIL PS', 'rohit@123gmailcom', 'checking a contact form', '6543214567', 'edfbgnhm,m'),
(2, 'NIKHIL PS', 'admin@gmail.com', 'checking a contact form', '6543214567', '.,kmjnhbg'),
(3, 'neelan', 'neelan@gmail.com', 'checking a contact form', '6543214567', 'sdfghjk');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `gr_image` varchar(200) NOT NULL,
  `project_id` varchar(200) NOT NULL,
  `gr_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `gr_image`, `project_id`, `gr_name`) VALUES
(2, 'delivery-boy.png', '2', 'two');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`) VALUES
(2, 'productone');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `pr_name` varchar(200) NOT NULL,
  `pr_sub_title` varchar(200) NOT NULL,
  `st_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `pr_category` varchar(200) NOT NULL,
  `cp_name` varchar(200) NOT NULL,
  `pr_images` varchar(200) NOT NULL,
  `ab_product` varchar(100) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pr_name`, `pr_sub_title`, `st_date`, `end_date`, `pr_category`, `cp_name`, `pr_images`, `ab_product`, `status`) VALUES
(8, 'product2', 'Construction', '2023-02-26', '2023-02-24', '2', 'jio', '2.jpg', 'gsghdfcjvbn', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `pr_name` varchar(200) NOT NULL,
  `pr_sub_title` varchar(200) NOT NULL,
  `st_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `pr_category` varchar(200) NOT NULL,
  `pr_images` varchar(200) NOT NULL,
  `ab_project` varchar(200) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `pr_name`, `pr_sub_title`, `st_date`, `end_date`, `pr_category`, `pr_images`, `ab_project`, `status`) VALUES
(5, 'Cochin International School Pukattupady', '', '', '', 'select category', 'client-property1.jpg', '', 0),
(6, 'Prestige Cyber Green Smart City', '', '', '', 'select category', 'client-property2.jpg', '', 0),
(7, 'IBS Infopark, Kakkanad', '', '', '', 'select category', 'client-property3.jpg', '', 0),
(8, 'ASAP CSP, Kalavoor', '', '', '', 'select category', 'client-property4.jpg', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_category`
--

CREATE TABLE IF NOT EXISTS `project_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `project_category`
--

INSERT INTO `project_category` (`id`, `category_name`) VALUES
(1, 'home constructio');
--
-- Database: `war`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_bank`
--

CREATE TABLE IF NOT EXISTS `account_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `aadhar_no` varchar(50) NOT NULL,
  `id_proof` varchar(25) NOT NULL,
  `photo` varchar(25) NOT NULL,
  `account_no` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `account_bank`
--

INSERT INTO `account_bank` (`id`, `name`, `address`, `contact`, `gender`, `aadhar_no`, `id_proof`, `photo`, `account_no`, `amount`, `status`) VALUES
(28, 'Mathew M', 'kjnkjsdvjsbdv<br />\r\nsvjbsjhvbsv<br />\r\nsvskvjnskjvnkjsvn', '9638527415', 'Male', '123123123123123', '1.jpg', '1.jpg', '266387', '454300985000', 1),
(29, 'Meena M', 'jncjabjchbasc<br />\r\nacbjajcbajsc<br />\r\nacacjhasbcj', '9638527414', 'Female', '123456', '29.jpg', '29.jpg', '209725', '16360000000', 1),
(30, 'Soumya M', 'asischvahgcv<br />\r\nacka bc acv ', '963555444.8', 'Female', '1234567', '30.1302.jpg', '30.jpg', '521957', '200000000000', 1),
(31, 'Pritha ', 'jvdcvdhgcvd<br />\r\ncsldjkbcjhdsbcjhdbsc<br />\r\ndclkjsdbchjb', '9638527412', 'Female', '90375424', '31.1302.jpg', '31.jpg', '494985', '108979015000', 1),
(32, 'anu', 'anu nivas', '9876543210', 'Female', '12345678', '32.1302.jpg', '32.jpg', '646762', '30000000000', 1),
(33, 'Meera', 'bcjhb cjhwb cjhwbc ', '9874563210', 'Female', '123123123123123', '33.png', '33.png', '856134', '100000000000', 1),
(34, 'Asha', 'hjbhjdbsjhcbdsjchb', '89754621345', 'Female', '123456789789', '34.txt', '34.jpg', '151718', '5000000000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(150) NOT NULL,
  `cid` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  `qnty` varchar(150) NOT NULL,
  `prc` varchar(150) NOT NULL,
  `tot` varchar(150) NOT NULL,
  `st` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `pid`, `cid`, `sid`, `qnty`, `prc`, `tot`, `st`) VALUES
(2, '7', 'sam@gmail.com', 'rs@gmail.com', '2', '80000', '160000', '1'),
(3, '7', 'sam@gmail.com', 'rs@gmail.com', '2', '80000', '160000', '1'),
(4, '7', 'sam@gmail.com', 'rs@gmail.com', '1', '80000', '80000', '0'),
(5, '8', 'sam@gmail.com', 'rs@gmail.com', '2', '12500', '25000', '1'),
(6, '8', 'sam@gmail.com', 'rs@gmail.com', '2', '12500', '25000', '');

-- --------------------------------------------------------

--
-- Table structure for table `cash_deposit`
--

CREATE TABLE IF NOT EXISTS `cash_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount_from` varchar(25) NOT NULL,
  `amount_to` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `cash_deposit`
--

INSERT INTO `cash_deposit` (`id`, `amount_from`, `amount_to`, `amount`, `date`, `status`) VALUES
(3, 'self', 8333, 8222, '2016-12-02', 1),
(6, 'self', 465465, 1000, '2016-12-02', 1),
(7, 'self', 8333, 5444, '2016-12-02', 1),
(8, 'self', 8333, 1000, '2016-12-02', 1),
(9, 'self', 8333, 1000, '2016-12-02', 1),
(10, 'self', 8333, 1000, '2016-12-02', 1),
(11, 'self', 8333, 10000, '2016-12-02', 1),
(12, 'self', 8333, 70000, '2016-12-03', 1),
(13, 'self', 9471, 400, '2016-12-03', 1),
(14, 'self', 9471, 1000, '2016-12-03', 1),
(15, 'self', 8333, 100, '2016-12-06', 1),
(16, 'self', 3688, 2000, '2016-12-16', 1),
(17, 'self', 3688, 1000, '2016-12-16', 1),
(18, 'self', 2109, 1000, '2016-12-16', 1),
(19, 'self', 2109, 15000, '2016-12-19', 1),
(20, 'self', 3392, 1000, '2016-12-21', 1),
(21, 'self', 5410, 1000, '2016-12-21', 1),
(22, 'self', 4843, 2000, '2016-12-29', 1),
(23, 'self', 9970, 500, '2016-12-30', 1),
(24, 'self', 2955, 4000, '2017-01-10', 1),
(25, 'self', 7874, 2000, '2017-03-01', 1),
(26, 'self', 639318, 2000, '2017-03-01', 1),
(27, 'self', 639318, 2000, '2017-03-02', 1),
(28, 'self', 639318, 4000, '2017-03-09', 1),
(29, 'self', 557608, 9000, '2017-03-14', 1),
(30, 'self', 945974, 9000, '2017-03-20', 1),
(31, 'self', 683483, 3000, '2017-05-15', 1),
(32, 'self', 919305, 40000, '2017-05-15', 1),
(33, 'self', 633605, 40000, '2017-05-17', 1),
(34, 'self', 127822, 50000, '2017-05-20', 1),
(35, 'self', 441180, 50000, '2017-05-29', 1),
(36, 'self', 322006, 4000, '2017-06-09', 1),
(37, 'self', 711389, 3000, '2017-06-24', 1),
(38, 'self', 809991, 5000, '2017-06-24', 1),
(39, 'self', 266387, 50000, '2017-06-24', 1),
(40, 'self', 209725, 20000, '2017-06-24', 1),
(41, 'self', 521957, 2000, '2017-07-17', 1),
(42, 'self', 494985, 9000, '2017-07-28', 1),
(43, 'self', 494985, 2000, '2017-10-06', 1),
(44, 'self', 494985, 100000, '2017-10-13', 1),
(45, 'self', 646762, 1000, '2017-10-14', 1),
(46, 'self', 856134, 2000, '2017-12-26', 1),
(47, 'self', 856134, 4000, '2018-01-10', 1),
(48, 'self', 856134, 1000, '2018-01-18', 1),
(49, 'self', 856134, 2000, '2018-02-11', 1),
(50, 'self', 646762, 2000, '2018-03-22', 1),
(51, 'self', 856134, 1000, '2018-03-26', 1),
(52, 'self', 266387, 2000, '2018-10-16', 1),
(53, 'self', 266387, 5000, '2019-03-15', 1),
(54, 'self', 151718, 50000, '2019-03-15', 1),
(55, 'self', 266387, 500000, '2019-10-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE IF NOT EXISTS `cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`id`, `nme`, `st`) VALUES
(1, 'Laptop', 0),
(2, 'Mobile', 0),
(3, 'TV', 0),
(4, 'Tablet', 0),
(7, 'tv', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comp`
--

CREATE TABLE IF NOT EXISTS `comp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `con` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `ac` varchar(150) NOT NULL,
  `ph` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `comp`
--

INSERT INTO `comp` (`id`, `nme`, `con`, `em`, `pass`, `ac`, `ph`, `st`) VALUES
(1, 'Samsung', '7984651325', 'sam@gmail.com', '123', '266387', '1700653.docx', 1),
(2, 'harshal.h', '8590422074', 'ha1@gmail.com', '110024', '266387', '3729827.jpg', 1),
(3, 'jio', '9567290530', 'jio@1234', 'jio1234', '521957', '9878875.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE IF NOT EXISTS `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `addr` varchar(150) NOT NULL,
  `des` varchar(150) NOT NULL,
  `ph` varchar(150) NOT NULL,
  `pid` varchar(150) NOT NULL,
  `cid` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL,
  `typ` varchar(150) NOT NULL,
  `se_id` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  `typ1` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `nme`, `cont`, `addr`, `des`, `ph`, `pid`, `cid`, `uid`, `typ`, `se_id`, `st`, `typ1`) VALUES
(1, 'Manu Krishna', '7985462134', 'Pulimoode TVm Kerala', 'Flip Complaint', '7678314.docx', '7', 'sam@gmail.com', 'ma@gmail.com', '1', 'sam1@gmail.com', 1, 'Repair'),
(2, 'Vishnu Patel', '8795462134', 'Nalanchira TVm', 'Display not working', '5309387.docx', '7', 'sam@gmail.com', 'ma@gmail.com', '1', 'sam1@gmail.com', 1, 'Repair'),
(3, 'Vishnu Patel', '8978794566', 'Tvm', 'Getting Heated', '6957611.docx', '7', 'sam@gmail.com', 'ma@gmail.com', '1', 'sam1@gmail.com', 1, 'Repair'),
(4, 'Vishnu Patel', '8795462134', 'TVm', 'Not working', '1085144.docx', '7', 'sam@gmail.com', 'ma@gmail.com', '1', 'sam1@gmail.com', 1, 'Repair'),
(5, 'Vishnu Patel', '7894653214', 'Nlanchira', 'Not Working', '3257415.docx', '6', 'sam@gmail.com', 'ma@gmail.com', '0', 'sam1@gmail.com', 1, 'Replace'),
(6, 'manu', '8590422074', 'tvm', 'not use', '3638366.jpg', '8', 'sam@gmail.com', 'ma@gmail.com', '1', '0', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `new_st`
--

CREATE TABLE IF NOT EXISTS `new_st` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `pid` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `new_st`
--

INSERT INTO `new_st` (`id`, `nme`, `cont`, `em`, `pid`, `sid`, `st`) VALUES
(1, 'Vishnu Patel', '7894653214', 'ma@gmail.com', '6', 'sam1@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pro`
--

CREATE TABLE IF NOT EXISTS `pro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate` varchar(150) NOT NULL,
  `nme` varchar(150) NOT NULL,
  `pid` varchar(150) NOT NULL,
  `des` text NOT NULL,
  `war` varchar(150) NOT NULL,
  `war_des` text NOT NULL,
  `sh_prc` varchar(150) NOT NULL,
  `sa_prc` varchar(150) NOT NULL,
  `qnty` varchar(150) NOT NULL,
  `ph` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pro`
--

INSERT INTO `pro` (`id`, `cate`, `nme`, `pid`, `des`, `war`, `war_des`, `sh_prc`, `sa_prc`, `qnty`, `ph`, `sid`, `st`) VALUES
(5, '1', 'Galaxy Tab S7 | Tab S7+', 'TRE786', '<ul>\n	<li>108+12+12MP triple rear camera | 10MP front camera</li>\n	<li>17.45 centimeters (6.9-inch) WQHD+ dynamic Amoled display with 3088 x 1440 pixels resolution</li>\n	<li>Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory expandable up to 1TB | Dual SIM (nano+nano) dual-standby (4G+4G)</li>\n	<li>Android v10.0 operating system with Exynos 990 octa core processor</li>\n	<li>4500mAH lithium-ion battery (Non-removable)</li>\n	<li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\n	<li>Box also includes: Adaptor, Sim ejector pin, user manual, charging cable</li>\n</ul>\n', '1', 'Display and Battery Replace is included', '57000', '65000', '20', '4707611.jpg', 'sam@gmail.com', 0),
(6, '3', 'Samsung 32 inches Wondertainment Series', 'STY2345', '<ul>\n	<li>Resolution: HD Ready (1366x768) | Refresh Rate: 60 hertz</li>\n	<li>Connectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB ports to connect hard drives and other USB devices</li>\n	<li>Sound : 20 Watts Output | Dolby Digital Plus</li>\n	<li>Smart TV Features : Voice Assistants | SmartThings App | Personal Computer | Home Cloud | Live Cast | Screen Share | Music System</li>\n	<li>Display : LED Panel | Mega Contrast | PurColor | HD Picture Quality | Slim &amp; Stylish Design</li>\n	<li>Alexa Built-in: Voice control your TV and your day. Just ask Alexa to search for movies, play music, control smart home devices, get sports updates and more</li>\n	<li>1 Year Comprehesive and&nbsp;2 Year&nbsp;Additional Warranty on Panel. Offer validity is basis date of invoice from 10th Oct till 10th Nov</li>\n</ul>\n\n<ul>\n	<li>Installation: For requesting installation/wall mounting/demo of this product once delivered, please directly call Samsung support on [1800407267864 / 180057267864] and provide product&#39;s model name as well as seller&#39;s details mentioned on the invoice</li>\n	<li>Easy returns: This product is eligible for replacement within 10 days of delivery in case of any product defects, damage or features not matching the description provided</li>\n</ul>\n', '1', 'All Damage will be covered', '15000', '20000', '7', '2570770.jpg', 'sam@gmail.com', 0),
(7, '2', 'Samsung Galaxy Z Flip', 'SAM4456', '<ul>\n	<li>108+12+12MP triple rear camera | 10MP front camera</li>\n	<li>17.45 centimeters (6.9-inch) WQHD+ dynamic Amoled display with 3088 x 1440 pixels resolution</li>\n	<li>Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory expandable up to 1TB | Dual SIM (nano+nano) dual-standby (4G+4G)</li>\n	<li>Android v10.0 operating system with Exynos 990 octa core processor</li>\n	<li>4500mAH lithium-ion battery (Non-removable)</li>\n	<li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\n	<li>Box also includes: Adaptor, Sim ejector pin, user manual, charging cable</li>\n</ul>\n', '2', 'All Damage will be covered', '80000', '99999', '11', '2256011.jpg', 'sam@gmail.com', 0),
(8, '2', 'samsung j4', 'j4s123', '<ul>\r\n	<li>64 mp rear cam</li>\r\n	<li>24 mp front cam</li>\r\n	<li>64 gb internal</li>\r\n	<li>6gb ram</li>\r\n</ul>\r\n', '2', 'water damage no service\r\n', '12500', '15000', '1', '9350158.mp4', 'sam@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pro1`
--

CREATE TABLE IF NOT EXISTS `pro1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(150) NOT NULL,
  `pro_id` varchar(150) NOT NULL,
  `cid` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  `dt` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

--
-- Dumping data for table `pro1`
--

INSERT INTO `pro1` (`id`, `pid`, `pro_id`, `cid`, `sid`, `uid`, `st`, `dt`) VALUES
(12, '5', 'TRE786762702580', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(13, '5', 'TRE786408268348', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(14, '5', 'TRE786182158639', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(15, '5', 'TRE786-265731900', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(16, '5', 'TRE786251539274', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(17, '5', 'TRE786-536494273', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(18, '5', 'TRE7861039157723', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(19, '5', 'TRE7861212727908', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(20, '5', 'TRE7862243387', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(21, '5', 'TRE786-141558355', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(22, '5', 'TRE786245253507', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(23, '5', 'TRE786-432245423', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(24, '5', 'TRE786-653136759', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(25, '5', 'TRE786682232904', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(26, '5', 'TRE786-438590489', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(27, '5', 'TRE786203684426', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(28, '5', 'TRE786532145395', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(29, '5', 'TRE78652470223', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(30, '5', 'TRE786-222976826', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(31, '5', 'TRE786-219240945', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(32, '6', 'STY2345407141654', 'sam@gmail.com', '0', 'ma@gmail.com', 2, '2021-03-22'),
(33, '6', 'STY2345879107867', 'sam@gmail.com', '0', 'ma@gmail.com', 2, '2021-03-22'),
(34, '6', 'STY2345-110781817', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(35, '6', 'STY2345229776288', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(36, '6', 'STY2345-267214393', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(37, '6', 'STY2345-365473975', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(38, '6', 'STY23451099169007', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(39, '6', 'STY2345-625799603', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(40, '6', 'STY2345-376088619', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(41, '6', 'STY2345-209634396', 'sam@gmail.com', 'sam1@gmail.com', 'ma@gmail.com', 2, '0000-00-00'),
(102, '7', 'SAM4456-334223039', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(103, '7', 'SAM4456892509596', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(104, '7', 'SAM4456803500765', 'sam@gmail.com', 'rs@gmail.com', 'ma@gmail.com', 2, '2021-01-19'),
(105, '7', 'SAM4456-488342927', 'sam@gmail.com', 'rs@gmail.com', 'ma@gmail.com', 2, '2002-12-10'),
(106, '7', 'SAM445693920704', 'sam@gmail.com', 'rs@gmail.com', '0', 1, '0000-00-00'),
(107, '8', 'j4s123-193386282', 'sam@gmail.com', '0', 'ma@gmail.com', 2, '2021-07-14'),
(108, '8', 'j4s1231214803397', 'sam@gmail.com', '0', 'ma@gmail.com', 2, '2021-07-14'),
(109, '8', 'j4s123866061935', 'sam@gmail.com', '0', '0', 0, '0000-00-00'),
(110, '8', 'j4s123288898077', 'sam@gmail.com', 'rs@gmail.com', '0', 1, '0000-00-00'),
(111, '8', 'j4s123-532817693', 'sam@gmail.com', 'rs@gmail.com', '0', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pro3`
--

CREATE TABLE IF NOT EXISTS `pro3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(150) NOT NULL,
  `pid` varchar(150) NOT NULL,
  `qnty` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pro3`
--

INSERT INTO `pro3` (`id`, `sid`, `pid`, `qnty`, `st`) VALUES
(4, 'rs@gmail.com', '7', '2', 0),
(5, 'rs@gmail.com', '8', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `pid` varchar(150) NOT NULL,
  `prc` varchar(150) NOT NULL,
  `qnty` varchar(150) NOT NULL,
  `tot` varchar(150) NOT NULL,
  `dt` date NOT NULL,
  `sid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `nme`, `cont`, `em`, `pid`, `prc`, `qnty`, `tot`, `dt`, `sid`, `st`) VALUES
(8, 'VIshnu Patel', '7895643214', 'patel@gmail.com', '7', '99999', '1', '99999', '2020-12-30', 'rs@gmail.com', 0),
(11, 'Manu Krishna', '7984565467', 'ma@gmail.com', '7', '99999', '1', '99999', '2021-01-19', 'rs@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sale1`
--

CREATE TABLE IF NOT EXISTS `sale1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `pid` varchar(150) NOT NULL,
  `prc` varchar(150) NOT NULL,
  `qnty` varchar(150) NOT NULL,
  `tot` varchar(150) NOT NULL,
  `dt` date NOT NULL,
  `cid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  `addr` text NOT NULL,
  `uid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sale1`
--

INSERT INTO `sale1` (`id`, `nme`, `cont`, `em`, `pid`, `prc`, `qnty`, `tot`, `dt`, `cid`, `st`, `addr`, `uid`) VALUES
(1, 'Raj Kumar', '7896543125', 'rak@gmail.com', '6', '20000', '2', '40000', '2021-03-22', 'sam@gmail.com', 0, 'Nalanchira TVM', 'ma@gmail.com'),
(2, 'manu', '8590422074', 'ma@gmail.com', '8', '15000', '1', '15000', '2021-07-14', 'sam@gmail.com', 0, 'tvm', 'ma@gmail.com'),
(3, 'djdj', '8590422074', 'ma@gmail.com', '8', '15000', '1', '15000', '2021-07-14', 'sam@gmail.com', 0, 'djdi', 'ma@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ser`
--

CREATE TABLE IF NOT EXISTS `ser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `man` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `addr` text NOT NULL,
  `la` float NOT NULL,
  `lo` float NOT NULL,
  `em` varchar(150) NOT NULL,
  `pas` varchar(150) NOT NULL,
  `ph` varchar(150) NOT NULL,
  `cid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ser`
--

INSERT INTO `ser` (`id`, `nme`, `man`, `cont`, `addr`, `la`, `lo`, `em`, `pas`, `ph`, `cid`, `st`) VALUES
(1, 'Samsung Service Center Pulimoode', 'Hari kumar', '7894561324', 'Pulimoodu, Thiruvananthapuram, Kerala, India', 8.49633, 76.9461, 'sam1@gmail.com', '123', '3059387.jpg', 'sam@gmail.com', 0),
(2, 'samsung service', 'harshal', '56797558997', 'dudjujdgys', 0, 0, 'ha@gmail.com', '110024', '3971801.jpg', 'sam@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `man` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `addr` text NOT NULL,
  `la` float NOT NULL,
  `lo` float NOT NULL,
  `em` varchar(150) NOT NULL,
  `pas` varchar(150) NOT NULL,
  `ph` varchar(150) NOT NULL,
  `acc` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `nme`, `man`, `cont`, `addr`, `la`, `lo`, `em`, `pas`, `ph`, `acc`, `st`) VALUES
(1, 'RS Mobile Shop', 'Ravi kumar', '7896543124', 'Pulimoodu, Thiruvananthapuram, Kerala, India', 8.49022, 76.9492, 'rs@gmail.com', '123', '5828491.jpg', '494985', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_data`
--

CREATE TABLE IF NOT EXISTS `staff_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `se_id` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `staff_data`
--

INSERT INTO `staff_data` (`id`, `nme`, `cont`, `em`, `pass`, `se_id`, `st`) VALUES
(1, 'Aneesh Kumar', '8796543125', 'ank@gmail.com', '123', 'sam1@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `nme`, `cont`, `em`, `pass`, `st`) VALUES
(1, 'Manu Krishna', '7895643214', 'ma@gmail.com', '123', 0),
(2, 'krishna', '9656543285', 'krishna@1234', 'malu123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `utyp` varchar(15) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `uid`, `pwd`, `utyp`, `st`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', 1),
(2, 'sam@gmail.com', '123', 'comp', 1),
(3, 'sam1@gmail.com', '123', 'ser', 1),
(5, 'rs@gmail.com', '123', 'shop', 1),
(6, 'ma@gmail.com', '123', 'user', 1),
(7, 'ank@gmail.com', '123', 'staff', 1),
(8, 'ha1@gmail.com', '110024', 'comp', 1),
(9, 'krishna@1234', 'malu123', 'user', 1),
(10, 'jio@1234', 'jio1234', 'comp', 1),
(11, 'ha@gmail.com', '110024', 'ser', 1);
--
-- Database: `warranty`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `userid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `password`) VALUES
('admin', 'admin');
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
