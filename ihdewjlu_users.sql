-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2019 at 05:48 AM
-- Server version: 5.6.46-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ihdewjlu_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adopt`
--

CREATE TABLE `adopt` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `why` longtext NOT NULL,
  `whenn` longtext NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adopt`
--

INSERT INTO `adopt` (`id`, `uid`, `pid`, `name`, `phone`, `address`, `why`, `whenn`, `status`) VALUES
(21, 26, 3, 'firstname last name', '07055323030', 'add 1', 'i love pets', 'tommorow', 1),
(18, 40, 26, 'SEAN R FAUGHNAN', '5164041085', '7 ROPE LANE', 'Benji', '2019-11-01', 1),
(19, 40, 30, 'SEAN R FAUGHNAN', '5164041085', '7 ROPE LANE', 'Rusty', '2019-11-23', 1),
(20, 40, 40, 'Sean Faughnan', '555555555', '7 Rope Lane Levittown', 'Miley', '2019-11-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `adoption center`
--

CREATE TABLE `adoption center` (
  `adoptcenterID` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `idAnimal` mediumint(9) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Breed` varchar(50) NOT NULL,
  `Sex` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `Description` varchar(2000) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `dcNumber` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`idAnimal`, `Type`, `Name`, `Breed`, `Sex`, `DOB`, `Color`, `Size`, `Description`, `img`, `dcNumber`) VALUES
(2, 'Cat', 'Kirby', 'American Curl', 'Female', '2017-08-08', 'White', 'Medium', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'cindy1-275x110.jpg', '1'),
(3, 'Dog', 'Rookie', 'Terrier', 'Female', '2012-02-16', 'Brown', 'Small', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'ollie-180x180.jpg', '1'),
(4, 'Cat', 'Jill', 'Calico', 'Male', '2010-06-09', 'Yellow', 'Small', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'chester1-275x110.jpg', '2'),
(7, 'Dog', 'Miley', 'Poodle', 'Male', '2017-01-18', 'Black', 'Large', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'archie1-180x180.jpg', '1'),
(5, 'Dog', 'Bill', 'Boxer', 'Male', '2008-07-19', 'Brown', 'Small', 'Dog is in great condition--just exited rehab ', 'bill1-180x180.jpg', '1'),
(40, 'Dog', 'Miley', 'Poodle', 'Male', '2019-05-09', 'Black', 'Medium', '', 'puppy-dog.jpg', '1'),
(8, 'Dog', 'John', 'Akita', 'Male', '2016-07-01', 'Yellow', 'Large', 'Early morning kind of pup', 'akita.jpg', '1'),
(9, 'Dog', 'Ferngully', 'Beagle', 'Male', '2013-05-14', 'Brown', 'Small', 'Howls like an idiot', 'beagle.jpg', '1'),
(10, 'Cat', 'Fran', 'American Curl', 'Female', '2015-04-28', 'Brown', 'Small', 'Very curious', 'kitty2.jpg', '1'),
(26, 'Dog', 'Benji', 'German Shepherd', 'Female', '2014-08-15', 'Brown/White', 'Large', 'Great with cbildren', 'German-Shepherd-on-White-00.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `animals2`
--

CREATE TABLE `animals2` (
  `idAnimal` mediumint(9) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Breed` varchar(50) NOT NULL,
  `Sex` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `Description` varchar(2000) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `dcNumber` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `dcNumber` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `doc` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `uid`, `pid`, `dcNumber`, `name`, `phone`, `email`, `date`, `time`, `status`, `doc`) VALUES
(3, 1, 1, 0, 'sachin soni', '07055323030', 'sunny_soni34@yahoo.com', '02/14/2018', '10:45 AM', 0, ''),
(4, 2, 7, 1, 'anil singh', '9876543210', 'sunny_soni34@yahoo.com', '02/14/2018', '10:45 AM', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_admins`
--

CREATE TABLE `booking_admins` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_admins`
--

INSERT INTO `booking_admins` (`admin_id`, `admin_username`, `admin_password`, `admin_active`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_calendars`
--

CREATE TABLE `booking_calendars` (
  `calendar_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `calendar_title` varchar(255) NOT NULL,
  `calendar_email` varchar(700) NOT NULL DEFAULT '',
  `calendar_order` int(11) NOT NULL,
  `calendar_active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_calendars`
--

INSERT INTO `booking_calendars` (`calendar_id`, `category_id`, `calendar_title`, `calendar_email`, `calendar_order`, `calendar_active`) VALUES
(3, 1, 'Rookie', 'S_Faughnan@msn.com', 0, 1),
(7, 1, 'Miley', 'S_Faughnan@msn.com', 0, 1),
(2, 2, 'Kirby', 'S_Faughnan@msn.com', 0, 1),
(30, 1, 'Rusty', 'S_Faughnan@msn.com', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_categories`
--

CREATE TABLE `booking_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_order` int(11) NOT NULL,
  `category_active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_categories`
--

INSERT INTO `booking_categories` (`category_id`, `category_name`, `category_order`, `category_active`) VALUES
(1, 'Dog', 0, 1),
(2, 'Cat', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_config`
--

CREATE TABLE `booking_config` (
  `config_id` int(11) NOT NULL,
  `config_name` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_config`
--

INSERT INTO `booking_config` (`config_id`, `config_name`, `config_value`) VALUES
(1, 'reservation_confirmation_mode', '3'),
(2, 'timezone', 'America/New_York'),
(10, 'redirect_confirmation_path', ''),
(4, 'email_reservation', 'S_Faughnan@msn.com'),
(5, 'site_domain', 'http://petfinder.epizy.com/booking'),
(7, 'recaptcha_public_key', ''),
(8, 'recaptcha_private_key', ''),
(9, 'mandatory_fields', 'reservation_name,reservation_surname,reservation_email,reservation_phone,reservation_message'),
(11, 'email_from_reservation', 'S_Faughnan@msn.com'),
(12, 'recaptcha_enabled', '0'),
(13, 'slots_popup_enabled', '1'),
(14, 'metatag_title', ''),
(15, 'metatag_description', ''),
(16, 'metatag_keywords', ''),
(17, 'page_title', ''),
(18, 'reservation_cancel', '1'),
(19, 'redirect_cancel_path', ''),
(20, 'slot_selection', '0'),
(21, 'date_format', 'US'),
(22, 'time_format', '12'),
(24, 'slots_unlimited', '0'),
(27, 'calendar_month_limit_future', '-1'),
(25, 'show_booked_slots', '0'),
(26, 'show_calendar_selection', '1'),
(28, 'calendar_month_limit_past', '-1'),
(29, 'show_terms', '0'),
(30, 'terms_label', ''),
(31, 'terms_link', ''),
(42, 'visible_fields', 'reservation_name,reservation_surname,reservation_email,reservation_phone,reservation_message'),
(32, 'book_from', '0'),
(33, 'paypal', '0'),
(34, 'paypal_account', ''),
(39, 'form_text', 'Sean Faughnan'),
(37, 'paypal_currency', ''),
(38, 'paypal_locale', ''),
(40, 'paypal_display_price', '0'),
(81, 'form_bg', '#567BD2'),
(80, 'day_white_line2_color_hover', '#FFFFFF'),
(79, 'day_white_line2_color', '#FFFFFF'),
(78, 'day_white_line1_color_hover', '#FFFFFF'),
(77, 'day_white_line1_color', '#999999'),
(76, 'day_black_line2_color_hover', '#FFFFFF'),
(75, 'day_white_line2_disabled_color', '#CCCCCC'),
(74, 'day_black_line2_color', '#FFFFFF'),
(73, 'day_black_line1_color_hover', '#FFFFFF'),
(72, 'day_black_line1_color', '#FFFFFF'),
(71, 'day_white_line1_disabled_color', '#CCCCCC'),
(70, 'day_black_bg_hover', '#567BD2'),
(69, 'day_black_bg', '#333333'),
(68, 'day_white_bg_hover', '#567BD2'),
(67, 'day_white_bg', '#FFFFFF'),
(66, 'day_grey_bg', '#F6F6F6'),
(82, 'form_color', '#FFFFFF'),
(83, 'recaptcha_style', 'white'),
(84, 'day_red_bg', '#D74E4E'),
(85, 'day_red_line1_color', '#FFFFFF'),
(86, 'day_red_line2_color', '#FFFFFF'),
(87, 'day_white_bg_disabled', '#FFFFFF'),
(88, 'show_category_selection', '0'),
(89, 'show_first_filled_month', '0'),
(90, 'show_slots_seats', '0'),
(91, 'book_now_button_bg', '#333333'),
(92, 'book_now_button_color', '#FFFFFF'),
(94, 'field_input_bg', '#FFFFFF'),
(95, 'field_input_color', '#000000'),
(96, 'day_names_color', '#666666'),
(97, 'month_name_color', '#FFFFFF'),
(98, 'year_name_color', '#999999'),
(99, 'month_container_bg', '#333333'),
(100, 'month_navigation_button_bg', '#333333'),
(101, 'book_now_button_bg_hover', '#00CC66'),
(102, 'month_navigation_button_bg_hover', '#567BD2'),
(103, 'clear_button_bg', '#999999'),
(104, 'clear_button_bg_hover', '#333333'),
(105, 'clear_button_color', '#FFFFFF'),
(106, 'clear_button_color_hover', '#FFFFFF'),
(107, 'book_now_button_color_hover', '#FFFFFF'),
(108, 'form_calendar_name_color', '#567BD2'),
(109, 'book_to', 'United States'),
(110, 'name_from_reservation', 'Sean Faughnan'),
(111, 'day_names_bg', '#333333'),
(112, 'day_border', 'dashed'),
(113, 'day_white_line2_bg', '#56c477'),
(114, 'day_white_line2_bg_hover', '#56c477'),
(115, 'month_navigation_button_color', '#FFFFFF'),
(116, 'month_navigation_button_color_hover', '#FFFFFF'),
(117, 'google_font_css_code', ''),
(118, 'google_font_link_code', ''),
(119, 'day_white_line2_disabled_bg', '#FFFFFF'),
(120, 'reservation_confirmation_mode_override', '0'),
(121, 'reservation_after_payment', '0'),
(122, 'recaptcha_version', '1');

-- --------------------------------------------------------

--
-- Table structure for table `booking_emails`
--

CREATE TABLE `booking_emails` (
  `email_id` int(11) NOT NULL,
  `email_name` varchar(255) NOT NULL,
  `email_subject` varchar(700) NOT NULL,
  `email_text` text NOT NULL,
  `email_cancel_text` text NOT NULL,
  `email_signature` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_emails`
--

INSERT INTO `booking_emails` (`email_id`, `email_name`, `email_subject`, `email_text`, `email_cancel_text`, `email_signature`) VALUES
(1, 'Email sent automatically to customer to confirm reservation', 'Confirmation of Booking', '<p>Hello [customer-name],</p><p>thanks for Booking,<br />your Reservation details:</p><p>[reservation-details]</p><p>&nbsp;</p>', '<p>If you want to cancel your reservation, simply click the link below:<br />[cancellation-link]<br />If the link is not clickable, please copy and paste this URL into your browser\'s address bar: [cancellation-link-url]</p>', '<p>Thanks,<br />The Team<br /><br /></p>'),
(2, 'Email sent automatically to customer to make him/her confirm the reservation via link', 'Confirm your Booking', '<p>Hello [customer-name],</p><p>we received your reservation request:</p><p>[reservation-details]</p><p>To confirm your reservation, simply click the link below to verify your email address:</p><p>[confirmation-link]</p><p>If the link is not clickable, please copy and paste this URL into your browser\'s address bar: [confirmation-link-url]</p>', '', '<p>Thanks,<br />The Team</p>'),
(3, 'Email sent automatically to customer to tell him/her that you have to confirm his/her reservation', 'Confirmation of Booking', '<p>Hello [customer-name],</p><p>thanks for Booking, you\'ll receive a mail when your reservation/s will be confirmed.<br />Your Reservation details:</p><p>[reservation-details]</p>', '', '<p>Thanks,<br />The Team</p>'),
(4, 'Email sent to customer when reservation is confirmed manually from admin panel', 'Booking Confirmed', '<p>Hello [customer-name],</p><p>Your reservation has been confirmed.<br />Reservation details:</p><p>[reservation-details]</p>', '<p>If you want to cancel your reservation, simply click the link below:<br />[cancellation-link]<br />If the link is not clickable, please copy and paste this URL into your browser\'s address bar: [cancellation-link-url]</p>', '<p>Thanks,<br />The Team</p>');

-- --------------------------------------------------------

--
-- Table structure for table `booking_fields_types`
--

CREATE TABLE `booking_fields_types` (
  `type_id` int(11) UNSIGNED NOT NULL,
  `reservation_field_name` varchar(255) NOT NULL DEFAULT '',
  `reservation_field_type` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_fields_types`
--

INSERT INTO `booking_fields_types` (`type_id`, `reservation_field_name`, `reservation_field_type`) VALUES
(1, 'reservation_name', 'text'),
(2, 'reservation_surname', 'text'),
(3, 'reservation_email', 'text'),
(4, 'reservation_phone', 'text'),
(5, 'reservation_message', 'textarea'),
(6, 'reservation_field1', 'text'),
(7, 'reservation_field2', 'text'),
(8, 'reservation_field3', 'text'),
(9, 'reservation_field4', 'text');

-- --------------------------------------------------------

--
-- Table structure for table `booking_holidays`
--

CREATE TABLE `booking_holidays` (
  `holiday_id` int(11) NOT NULL,
  `holiday_date` date NOT NULL,
  `calendar_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `booking_pages`
--

CREATE TABLE `booking_pages` (
  `page_id` int(11) UNSIGNED NOT NULL,
  `page_type` char(1) NOT NULL DEFAULT '' COMMENT '''a'' or ''p'' (admin/public)',
  `page_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_pages`
--

INSERT INTO `booking_pages` (`page_id`, `page_type`, `page_name`) VALUES
(1, 'a', 'Admin menu and header'),
(2, 'a', 'Welcome page'),
(3, 'a', 'Settings'),
(4, 'a', 'Bg & colors'),
(5, 'a', 'Calendars'),
(6, 'a', 'Reservations'),
(7, 'a', 'Manage mail'),
(8, 'a', 'Form management'),
(9, 'a', 'Change admin password'),
(10, 'a', 'Meta tags'),
(11, 'p', 'Public section'),
(12, 'a', 'Texts management'),
(13, 'a', 'Login page'),
(14, 'a', 'Categories');

-- --------------------------------------------------------

--
-- Table structure for table `booking_paypal_currency`
--

CREATE TABLE `booking_paypal_currency` (
  `currency_id` int(11) UNSIGNED NOT NULL,
  `currency_name` varchar(255) NOT NULL DEFAULT '',
  `currency_code` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_paypal_currency`
--

INSERT INTO `booking_paypal_currency` (`currency_id`, `currency_name`, `currency_code`) VALUES
(1, 'Australian Dollar', 'AUD'),
(2, 'Canadian Dollar', 'CAD'),
(3, 'Czech Koruna', 'CZK'),
(4, 'Danish Krone', 'DKK'),
(5, 'Euro', 'EUR'),
(6, 'Hong Kong Dollar', 'HKD'),
(7, 'Hungarian Forint', 'HUF'),
(8, 'Israeli New Sheqel', 'ILS'),
(9, 'Japanese Yen', 'JPY'),
(10, 'Mexican Peso', 'MXN'),
(11, 'Norwegian Krone', 'NOK'),
(12, 'New Zealand Dollar', 'NZD'),
(13, 'Polish Zloty', 'PLN'),
(14, 'Pound Sterling', 'GBP'),
(15, 'Singapore Dollar', 'SGD'),
(16, 'Swedish Krona', 'SEK'),
(17, 'Swiss Franc', 'CHF'),
(18, 'U.S. Dollar', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `booking_paypal_locale`
--

CREATE TABLE `booking_paypal_locale` (
  `locale_id` int(11) UNSIGNED NOT NULL,
  `locale_country` varchar(255) NOT NULL DEFAULT '',
  `locale_code` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_paypal_locale`
--

INSERT INTO `booking_paypal_locale` (`locale_id`, `locale_country`, `locale_code`) VALUES
(1, 'AFGHANISTAN', 'AF'),
(2, 'ÅLAND ISLANDS', 'AX'),
(3, 'ALBANIA', 'AL'),
(4, 'ALGERIA', 'DZ'),
(5, 'AMERICAN SAMOA', 'AS'),
(6, 'ANDORRA', 'AD'),
(7, 'ANGOLA', 'AO'),
(8, 'ANGUILLA', 'AI'),
(9, 'ANTARCTICA', 'AQ'),
(10, 'ANTIGUA AND BARBUDA', 'AG'),
(11, 'ARGENTINA', 'AR'),
(12, 'ARMENIA', 'AM'),
(13, 'ARUBA', 'AW'),
(14, 'AUSTRALIA', 'AU'),
(15, 'AUSTRIA', 'AT'),
(16, 'AZERBAIJAN', 'AZ'),
(17, 'BAHAMAS', 'BS'),
(18, 'BAHRAIN', 'BH'),
(19, 'BANGLADESH', 'BD'),
(20, 'BARBADOS', 'BB'),
(21, 'BELARUS', 'BY'),
(22, 'BELGIUM', 'BE'),
(23, 'BELIZE', 'BZ'),
(24, 'BENIN', 'BJ'),
(25, 'BERMUDA', 'BM'),
(26, 'BHUTAN', 'BT'),
(27, 'BOLIVIA', 'BO'),
(28, 'BOSNIA AND HERZEGOVINA', 'BA'),
(29, 'BOTSWANA', 'BW'),
(30, 'BOUVET ISLAND', 'BV'),
(31, 'BRAZIL', 'BR'),
(32, 'BRITISH INDIAN OCEAN TERRITORY', 'IO'),
(33, 'BRUNEI DARUSSALAM', 'BN'),
(34, 'BULGARIA', 'BG'),
(35, 'BURKINA FASO', 'BF'),
(36, 'BURUNDI', 'BI'),
(37, 'CAMBODIA', 'KH'),
(38, 'CAMEROON', 'CM'),
(39, 'CANADA', 'CA'),
(40, 'CAPE VERDE', 'CV'),
(41, 'CAYMAN ISLANDS', 'KY'),
(42, 'CENTRAL AFRICAN REPUBLIC', 'CF'),
(43, 'CHAD', 'TD'),
(44, 'CHILE', 'CL'),
(45, 'CHINA', 'CN'),
(46, 'CHRISTMAS ISLAND', 'CX'),
(47, 'COCOS (KEELING) ISLANDS', 'CC'),
(48, 'COLOMBIA', 'CO'),
(49, 'COMOROS', 'KM'),
(50, 'CONGO', 'CG'),
(51, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD'),
(52, 'COOK ISLANDS', 'CK'),
(53, 'COSTA RICA', 'CR'),
(54, 'COTE D\'IVOIRE', 'CI'),
(55, 'CROATIA', 'HR'),
(56, 'CUBA', 'CU'),
(57, 'CYPRUS', 'CY'),
(58, 'CZECH REPUBLIC', 'CZ'),
(59, 'DENMARK', 'DK'),
(60, 'DJIBOUTI', 'DJ'),
(61, 'DOMINICA', 'DM'),
(62, 'DOMINICAN REPUBLIC', 'DO'),
(63, 'ECUADOR', 'EC'),
(64, 'EGYPT', 'EG'),
(65, 'EL SALVADOR', 'SV'),
(66, 'EQUATORIAL GUINEA', 'GQ'),
(67, 'ERITREA', 'ER'),
(68, 'ESTONIA', 'EE'),
(69, 'ETHIOPIA', 'ET'),
(70, 'FALKLAND ISLANDS (MALVINAS)', 'FK'),
(71, 'FAROE ISLANDS', 'FO'),
(72, 'FIJI', 'FJ'),
(73, 'FINLAND', 'FI'),
(74, 'FRANCE', 'FR'),
(75, 'FRENCH GUIANA', 'GF'),
(76, 'FRENCH POLYNESIA', 'PF'),
(77, 'FRENCH SOUTHERN TERRITORIES', 'TF'),
(78, 'GABON', 'GA'),
(79, 'GAMBIA', 'GM'),
(80, 'GEORGIA', 'GE'),
(81, 'GERMANY', 'DE'),
(82, 'GHANA', 'GH'),
(83, 'GIBRALTAR', 'GI'),
(84, 'GREECE', 'GR'),
(85, 'GREENLAND', 'GL'),
(86, 'GRENADA', 'GD'),
(87, 'GUADELOUPE', 'GP'),
(88, 'GUAM', 'GU'),
(89, 'GUATEMALA', 'GT'),
(90, 'GUERNSEY', 'GG'),
(91, 'GUINEA', 'GN'),
(92, 'GUINEA-BISSAU', 'GW'),
(93, 'GUYANA', 'GY'),
(94, 'HAITI', 'HT'),
(95, 'HEARD ISLAND AND MCDONALD ISLANDS', 'HM'),
(96, 'HOLY SEE (VATICAN CITY STATE)', 'VA'),
(97, 'HONDURAS', 'HN'),
(98, 'HONG KONG', 'HK'),
(99, 'HUNGARY', 'HU'),
(100, 'ICELAND', 'IS'),
(101, 'INDIA', 'IN'),
(102, 'INDONESIA', 'ID'),
(103, 'IRAN, ISLAMIC REPUBLIC OF', 'IR'),
(104, 'IRAQ', 'IQ'),
(105, 'IRELAND', 'IE'),
(106, 'ISLE OF MAN', 'IM'),
(107, 'ISRAEL', 'IL'),
(108, 'ITALY', 'IT'),
(109, 'JAMAICA', 'JM'),
(110, 'JAPAN', 'JP'),
(111, 'JERSEY', 'JE'),
(112, 'JORDAN', 'JO'),
(113, 'KAZAKHSTAN', 'KZ'),
(114, 'KENYA', 'KE'),
(115, 'KIRIBATI', 'KI'),
(116, 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'KP'),
(117, 'KOREA, REPUBLIC OF', 'KR'),
(118, 'KUWAIT', 'KW'),
(119, 'KYRGYZSTAN', 'KG'),
(120, 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LA'),
(121, 'LATVIA', 'LV'),
(122, 'LEBANON', 'LB'),
(123, 'LESOTHO', 'LS'),
(124, 'LIBERIA', 'LR'),
(125, 'LIBYAN ARAB JAMAHIRIYA', 'LY'),
(126, 'LIECHTENSTEIN', 'LI'),
(127, 'LITHUANIA', 'LT'),
(128, 'LUXEMBOURG', 'LU'),
(129, 'MACAO', 'MO'),
(130, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK'),
(131, 'MADAGASCAR', 'MG'),
(132, 'MALAWI', 'MW'),
(133, 'MALAYSIA', 'MY'),
(134, 'MALDIVES', 'MV'),
(135, 'MALI', 'ML'),
(136, 'MALTA', 'MT'),
(137, 'MARSHALL ISLANDS', 'MH'),
(138, 'MARTINIQUE', 'MQ'),
(139, 'MAURITANIA', 'MR'),
(140, 'MAURITIUS', 'MU'),
(141, 'MAYOTTE', 'YT'),
(142, 'MEXICO', 'MX'),
(143, 'MICRONESIA, FEDERATED STATES OF', 'FM'),
(144, 'MOLDOVA, REPUBLIC OF', 'MD'),
(145, 'MONACO', 'MC'),
(146, 'MONGOLIA', 'MN'),
(147, 'MONTSERRAT', 'MS'),
(148, 'MOROCCO', 'MA'),
(149, 'MOZAMBIQUE', 'MZ'),
(150, 'MYANMAR', 'MM'),
(151, 'NAMIBIA', 'NA'),
(152, 'NAURU', 'NR'),
(153, 'NEPAL', 'NP'),
(154, 'NETHERLANDS', 'NL'),
(155, 'NETHERLANDS ANTILLES', 'AN'),
(156, 'NEW CALEDONIA', 'NC'),
(157, 'NEW ZEALAND', 'NZ'),
(158, 'NICARAGUA', 'NI'),
(159, 'NIGER', 'NE'),
(160, 'NIGERIA', 'NG'),
(161, 'NIUE', 'NU'),
(162, 'NORFOLK ISLAND', 'NF'),
(163, 'NORTHERN MARIANA ISLANDS', 'MP'),
(164, 'NORWAY', 'NO'),
(165, 'OMAN', 'OM'),
(166, 'PAKISTAN', 'PK'),
(167, 'PALAU', 'PW'),
(168, 'PALESTINIAN TERRITORY, OCCUPIED', 'PS'),
(169, 'PANAMA', 'PA'),
(170, 'PAPUA NEW GUINEA', 'PG'),
(171, 'PARAGUAY', 'PY'),
(172, 'PERU', 'PE'),
(173, 'PHILIPPINES', 'PH'),
(174, 'PITCAIRN', 'PN'),
(175, 'POLAND', 'PL'),
(176, 'PORTUGAL', 'PT'),
(177, 'PUERTO RICO', 'PR'),
(178, 'QATAR', 'QA'),
(179, 'REUNION', 'RE'),
(180, 'ROMANIA', 'RO'),
(181, 'RUSSIAN FEDERATION', 'RU'),
(182, 'RWANDA', 'RW'),
(183, 'SAINT HELENA', 'SH'),
(184, 'SAINT KITTS AND NEVIS', 'KN'),
(185, 'SAINT LUCIA', 'LC'),
(186, 'SAINT PIERRE AND MIQUELON', 'PM'),
(187, 'SAINT VINCENT AND THE GRENADINES', 'VC'),
(188, 'SAMOA', 'WS'),
(189, 'SAN MARINO', 'SM'),
(190, 'SAO TOME AND PRINCIPE', 'ST'),
(191, 'SAUDI ARABIA', 'SA'),
(192, 'SENEGAL', 'SN'),
(193, 'SERBIA AND MONTENEGRO', 'CS'),
(194, 'SEYCHELLES', 'SC'),
(195, 'SIERRA LEONE', 'SL'),
(196, 'SINGAPORE', 'SG'),
(197, 'SLOVAKIA', 'SK'),
(198, 'SLOVENIA', 'SI'),
(199, 'SOLOMON ISLANDS', 'SB'),
(200, 'SOMALIA', 'SO'),
(201, 'SOUTH AFRICA', 'ZA'),
(202, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'GS'),
(203, 'SPAIN', 'ES'),
(204, 'SRI LANKA', 'LK'),
(205, 'SUDAN', 'SD'),
(206, 'SURINAME', 'SR'),
(207, 'SVALBARD AND JAN MAYEN', 'SJ'),
(208, 'SWAZILAND', 'SZ'),
(209, 'SWEDEN', 'SE'),
(210, 'SWITZERLAND', 'CH'),
(211, 'SYRIAN ARAB REPUBLIC', 'SY'),
(212, 'TAIWAN, PROVINCE OF CHINA', 'TW'),
(213, 'TAJIKISTAN', 'TJ'),
(214, 'TANZANIA, UNITED REPUBLIC OF', 'TZ'),
(215, 'THAILAND', 'TH'),
(216, 'TIMOR-LESTE', 'TL'),
(217, 'TOGO', 'TG'),
(218, 'TOKELAU', 'TK'),
(219, 'TONGA', 'TO'),
(220, 'TRINIDAD AND TOBAGO', 'TT'),
(221, 'TUNISIA', 'TN'),
(222, 'TURKEY', 'TR'),
(223, 'TURKMENISTAN', 'TM'),
(224, 'TURKS AND CAICOS ISLANDS', 'TC'),
(225, 'TUVALU', 'TV'),
(226, 'UGANDA', 'UG'),
(227, 'UKRAINE', 'UA'),
(228, 'UNITED ARAB EMIRATES', 'AE'),
(229, 'UNITED KINGDOM', 'GB'),
(230, 'UNITED STATES', 'US'),
(231, 'UNITED STATES MINOR OUTLYING ISLANDS', 'UM'),
(232, 'URUGUAY', 'UY'),
(233, 'UZBEKISTAN', 'UZ'),
(234, 'VANUATU', 'VU'),
(235, 'VENEZUELA', 'VE'),
(236, 'VIET NAM', 'VN'),
(237, 'VIRGIN ISLANDS, BRITISH', 'VG'),
(238, 'VIRGIN ISLANDS, U.S.', 'VI'),
(239, 'WALLIS AND FUTUNA', 'WF'),
(240, 'WESTERN SAHARA', 'EH'),
(241, 'YEMEN', 'YE'),
(242, 'ZAMBIA', 'ZM'),
(243, 'ZIMBABWE', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `booking_reservation`
--

CREATE TABLE `booking_reservation` (
  `reservation_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `reservation_name` varchar(255) NOT NULL,
  `reservation_surname` varchar(255) NOT NULL,
  `reservation_email` varchar(255) NOT NULL,
  `reservation_phone` varchar(255) NOT NULL,
  `reservation_message` text NOT NULL,
  `reservation_seats` int(11) NOT NULL,
  `reservation_field1` text NOT NULL,
  `reservation_field2` text NOT NULL,
  `reservation_field3` text NOT NULL,
  `reservation_field4` text NOT NULL,
  `reservation_confirmed` int(11) NOT NULL DEFAULT '0',
  `reservation_cancelled` int(11) NOT NULL,
  `reservation_fake` int(11) NOT NULL,
  `calendar_id` int(11) NOT NULL,
  `admin_confirmed_cancelled` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_reservation`
--

INSERT INTO `booking_reservation` (`reservation_id`, `slot_id`, `reservation_name`, `reservation_surname`, `reservation_email`, `reservation_phone`, `reservation_message`, `reservation_seats`, `reservation_field1`, `reservation_field2`, `reservation_field3`, `reservation_field4`, `reservation_confirmed`, `reservation_cancelled`, `reservation_fake`, `calendar_id`, `admin_confirmed_cancelled`) VALUES
(1, 66, 'Sean Faughnan', 'Faughnan', 'S_Faughnan@msn.com', '5164041085', 'lolol', 1, '', '', '', '', 0, 1, 0, 1, 0),
(2, 128, 'SEAN R FAUGHNAN', 'FAUGHNAN', 'S_Faughnan@Msn.com', '5164041085', 'ddd', 1, '', '', '', '', 1, 0, 0, 1, 0),
(3, 135, 'SEAN R FAUGHNAN', 'FAUGHNAN', 'S_Faughnan@Msn.com', '5164041085', 'sss', 1, '', '', '', '', 0, 0, 0, 1, 0),
(4, 619, 'SEAN R FAUGHNAN', 'FAUGHNAN', 'S_Faughnan@Msn.com', '5164041085', 'ddd', 1, '', '', '', '', 0, 0, 0, 55, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_slots`
--

CREATE TABLE `booking_slots` (
  `slot_id` int(11) NOT NULL,
  `slot_special_text` varchar(700) NOT NULL,
  `slot_special_mode` int(11) NOT NULL,
  `slot_date` date NOT NULL,
  `slot_time_from` time NOT NULL,
  `slot_time_to` time NOT NULL,
  `slot_price` double NOT NULL,
  `slot_perc_price` double NOT NULL,
  `slot_discount_price` double NOT NULL,
  `slot_av` int(11) NOT NULL,
  `slot_av_max` int(11) NOT NULL,
  `slot_active` int(11) NOT NULL,
  `calendar_id` int(11) NOT NULL,
  `slot_show_price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_slots`
--

INSERT INTO `booking_slots` (`slot_id`, `slot_special_text`, `slot_special_mode`, `slot_date`, `slot_time_from`, `slot_time_to`, `slot_price`, `slot_perc_price`, `slot_discount_price`, `slot_av`, `slot_av_max`, `slot_active`, `calendar_id`, `slot_show_price`) VALUES
(1, '', 1, '2019-12-09', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(2, '', 1, '2019-12-09', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(3, '', 1, '2019-12-09', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(4, '', 1, '2019-12-09', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(5, '', 1, '2019-12-09', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(6, '', 1, '2019-12-09', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(7, '', 1, '2019-12-09', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(8, '', 1, '2019-12-09', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(9, '', 1, '2019-12-09', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(10, '', 1, '2019-12-09', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(11, '', 1, '2019-12-09', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(12, '', 1, '2019-12-09', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(13, '', 1, '2019-12-09', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(14, '', 1, '2019-12-09', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(15, '', 1, '2019-12-09', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(16, '', 1, '2019-12-09', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(17, '', 1, '2019-12-09', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(18, '', 1, '2019-12-09', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(19, '', 1, '2019-12-16', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(20, '', 1, '2019-12-16', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(21, '', 1, '2019-12-16', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(22, '', 1, '2019-12-16', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(23, '', 1, '2019-12-16', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(24, '', 1, '2019-12-16', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(25, '', 1, '2019-12-16', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(26, '', 1, '2019-12-16', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(27, '', 1, '2019-12-16', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(28, '', 1, '2019-12-16', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(29, '', 1, '2019-12-16', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(30, '', 1, '2019-12-16', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(31, '', 1, '2019-12-16', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(32, '', 1, '2019-12-16', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(33, '', 1, '2019-12-16', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(34, '', 1, '2019-12-16', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(35, '', 1, '2019-12-16', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(36, '', 1, '2019-12-16', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(37, '', 1, '2019-12-23', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(38, '', 1, '2019-12-23', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(39, '', 1, '2019-12-23', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(40, '', 1, '2019-12-23', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(41, '', 1, '2019-12-23', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(42, '', 1, '2019-12-23', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(43, '', 1, '2019-12-23', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(44, '', 1, '2019-12-23', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(45, '', 1, '2019-12-23', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(46, '', 1, '2019-12-23', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(47, '', 1, '2019-12-23', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(48, '', 1, '2019-12-23', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(49, '', 1, '2019-12-23', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(50, '', 1, '2019-12-23', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(51, '', 1, '2019-12-23', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(52, '', 1, '2019-12-23', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(53, '', 1, '2019-12-23', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(54, '', 1, '2019-12-23', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(55, '', 1, '2019-12-03', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(56, '', 1, '2019-12-03', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(57, '', 1, '2019-12-03', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(58, '', 1, '2019-12-03', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(59, '', 1, '2019-12-03', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(60, '', 1, '2019-12-03', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(61, '', 1, '2019-12-03', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(62, '', 1, '2019-12-03', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(63, '', 1, '2019-12-03', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(64, '', 1, '2019-12-03', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(65, '', 1, '2019-12-03', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(66, '', 1, '2019-12-03', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(67, '', 1, '2019-12-03', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(68, '', 1, '2019-12-03', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(69, '', 1, '2019-12-03', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(70, '', 1, '2019-12-03', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(71, '', 1, '2019-12-03', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(72, '', 1, '2019-12-03', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(73, '', 1, '2019-12-10', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(74, '', 1, '2019-12-10', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(75, '', 1, '2019-12-10', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(76, '', 1, '2019-12-10', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(77, '', 1, '2019-12-10', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(78, '', 1, '2019-12-10', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(79, '', 1, '2019-12-10', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(80, '', 1, '2019-12-10', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(81, '', 1, '2019-12-10', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(82, '', 1, '2019-12-10', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(83, '', 1, '2019-12-10', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(84, '', 1, '2019-12-10', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(85, '', 1, '2019-12-10', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(86, '', 1, '2019-12-10', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(87, '', 1, '2019-12-10', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(88, '', 1, '2019-12-10', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(89, '', 1, '2019-12-10', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(90, '', 1, '2019-12-10', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(91, '', 1, '2019-12-17', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(92, '', 1, '2019-12-17', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(93, '', 1, '2019-12-17', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(94, '', 1, '2019-12-17', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(95, '', 1, '2019-12-17', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(96, '', 1, '2019-12-17', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(97, '', 1, '2019-12-17', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(98, '', 1, '2019-12-17', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(99, '', 1, '2019-12-17', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(100, '', 1, '2019-12-17', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(101, '', 1, '2019-12-17', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(102, '', 1, '2019-12-17', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(103, '', 1, '2019-12-17', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(104, '', 1, '2019-12-17', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(105, '', 1, '2019-12-17', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(106, '', 1, '2019-12-17', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(107, '', 1, '2019-12-17', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(108, '', 1, '2019-12-17', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(109, '', 1, '2019-12-24', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(110, '', 1, '2019-12-24', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(111, '', 1, '2019-12-24', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(112, '', 1, '2019-12-24', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(113, '', 1, '2019-12-24', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(114, '', 1, '2019-12-24', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(115, '', 1, '2019-12-24', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(116, '', 1, '2019-12-24', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(117, '', 1, '2019-12-24', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(118, '', 1, '2019-12-24', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(119, '', 1, '2019-12-24', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(120, '', 1, '2019-12-24', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(121, '', 1, '2019-12-24', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(122, '', 1, '2019-12-24', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(123, '', 1, '2019-12-24', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(124, '', 1, '2019-12-24', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(125, '', 1, '2019-12-24', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(126, '', 1, '2019-12-24', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(127, '', 1, '2019-12-04', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(128, '', 1, '2019-12-04', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(129, '', 1, '2019-12-04', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(130, '', 1, '2019-12-04', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(131, '', 1, '2019-12-04', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(132, '', 1, '2019-12-04', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(133, '', 1, '2019-12-04', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(134, '', 1, '2019-12-04', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(135, '', 1, '2019-12-04', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(136, '', 1, '2019-12-04', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(137, '', 1, '2019-12-04', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(138, '', 1, '2019-12-04', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(139, '', 1, '2019-12-04', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(140, '', 1, '2019-12-04', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(141, '', 1, '2019-12-04', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(142, '', 1, '2019-12-04', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(143, '', 1, '2019-12-04', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(144, '', 1, '2019-12-04', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(145, '', 1, '2019-12-11', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(146, '', 1, '2019-12-11', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(147, '', 1, '2019-12-11', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(148, '', 1, '2019-12-11', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(149, '', 1, '2019-12-11', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(150, '', 1, '2019-12-11', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(151, '', 1, '2019-12-11', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(152, '', 1, '2019-12-11', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(153, '', 1, '2019-12-11', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(154, '', 1, '2019-12-11', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(155, '', 1, '2019-12-11', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(156, '', 1, '2019-12-11', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(157, '', 1, '2019-12-11', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(158, '', 1, '2019-12-11', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(159, '', 1, '2019-12-11', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(160, '', 1, '2019-12-11', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(161, '', 1, '2019-12-11', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(162, '', 1, '2019-12-11', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(163, '', 1, '2019-12-18', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(164, '', 1, '2019-12-18', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(165, '', 1, '2019-12-18', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(166, '', 1, '2019-12-18', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(167, '', 1, '2019-12-18', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(168, '', 1, '2019-12-18', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(169, '', 1, '2019-12-18', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(170, '', 1, '2019-12-18', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(171, '', 1, '2019-12-18', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(172, '', 1, '2019-12-18', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(173, '', 1, '2019-12-18', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(174, '', 1, '2019-12-18', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(175, '', 1, '2019-12-18', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(176, '', 1, '2019-12-18', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(177, '', 1, '2019-12-18', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(178, '', 1, '2019-12-18', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(179, '', 1, '2019-12-18', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(180, '', 1, '2019-12-18', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(181, '', 1, '2019-12-25', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(182, '', 1, '2019-12-25', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(183, '', 1, '2019-12-25', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(184, '', 1, '2019-12-25', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(185, '', 1, '2019-12-25', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(186, '', 1, '2019-12-25', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(187, '', 1, '2019-12-25', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(188, '', 1, '2019-12-25', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(189, '', 1, '2019-12-25', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(190, '', 1, '2019-12-25', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(191, '', 1, '2019-12-25', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(192, '', 1, '2019-12-25', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(193, '', 1, '2019-12-25', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(194, '', 1, '2019-12-25', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(195, '', 1, '2019-12-25', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(196, '', 1, '2019-12-25', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(197, '', 1, '2019-12-25', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(198, '', 1, '2019-12-25', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(199, '', 1, '2019-12-05', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(200, '', 1, '2019-12-05', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(201, '', 1, '2019-12-05', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(202, '', 1, '2019-12-05', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(203, '', 1, '2019-12-05', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(204, '', 1, '2019-12-05', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(205, '', 1, '2019-12-05', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(206, '', 1, '2019-12-05', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(207, '', 1, '2019-12-05', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(208, '', 1, '2019-12-05', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(209, '', 1, '2019-12-05', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(210, '', 1, '2019-12-05', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(211, '', 1, '2019-12-05', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(212, '', 1, '2019-12-05', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(213, '', 1, '2019-12-05', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(214, '', 1, '2019-12-05', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(215, '', 1, '2019-12-05', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(216, '', 1, '2019-12-05', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(217, '', 1, '2019-12-12', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(218, '', 1, '2019-12-12', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(219, '', 1, '2019-12-12', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(220, '', 1, '2019-12-12', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(221, '', 1, '2019-12-12', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(222, '', 1, '2019-12-12', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(223, '', 1, '2019-12-12', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(224, '', 1, '2019-12-12', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(225, '', 1, '2019-12-12', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(226, '', 1, '2019-12-12', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(227, '', 1, '2019-12-12', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(228, '', 1, '2019-12-12', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(229, '', 1, '2019-12-12', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(230, '', 1, '2019-12-12', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(231, '', 1, '2019-12-12', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(232, '', 1, '2019-12-12', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(233, '', 1, '2019-12-12', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(234, '', 1, '2019-12-12', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(235, '', 1, '2019-12-19', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(236, '', 1, '2019-12-19', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(237, '', 1, '2019-12-19', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(238, '', 1, '2019-12-19', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(239, '', 1, '2019-12-19', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(240, '', 1, '2019-12-19', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(241, '', 1, '2019-12-19', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(242, '', 1, '2019-12-19', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(243, '', 1, '2019-12-19', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(244, '', 1, '2019-12-19', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(245, '', 1, '2019-12-19', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(246, '', 1, '2019-12-19', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(247, '', 1, '2019-12-19', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(248, '', 1, '2019-12-19', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(249, '', 1, '2019-12-19', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(250, '', 1, '2019-12-19', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(251, '', 1, '2019-12-19', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(252, '', 1, '2019-12-19', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(253, '', 1, '2019-12-26', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(254, '', 1, '2019-12-26', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(255, '', 1, '2019-12-26', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(256, '', 1, '2019-12-26', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(257, '', 1, '2019-12-26', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(258, '', 1, '2019-12-26', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(259, '', 1, '2019-12-26', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(260, '', 1, '2019-12-26', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(261, '', 1, '2019-12-26', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(262, '', 1, '2019-12-26', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(263, '', 1, '2019-12-26', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(264, '', 1, '2019-12-26', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(265, '', 1, '2019-12-26', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(266, '', 1, '2019-12-26', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(267, '', 1, '2019-12-26', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(268, '', 1, '2019-12-26', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(269, '', 1, '2019-12-26', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(270, '', 1, '2019-12-26', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(271, '', 1, '2019-12-06', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(272, '', 1, '2019-12-06', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(273, '', 1, '2019-12-06', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(274, '', 1, '2019-12-06', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(275, '', 1, '2019-12-06', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(276, '', 1, '2019-12-06', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(277, '', 1, '2019-12-06', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(278, '', 1, '2019-12-06', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(279, '', 1, '2019-12-06', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(280, '', 1, '2019-12-06', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(281, '', 1, '2019-12-06', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(282, '', 1, '2019-12-06', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(283, '', 1, '2019-12-06', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(284, '', 1, '2019-12-06', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(285, '', 1, '2019-12-06', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(286, '', 1, '2019-12-06', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(287, '', 1, '2019-12-06', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(288, '', 1, '2019-12-06', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(289, '', 1, '2019-12-13', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(290, '', 1, '2019-12-13', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(291, '', 1, '2019-12-13', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(292, '', 1, '2019-12-13', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(293, '', 1, '2019-12-13', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(294, '', 1, '2019-12-13', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(295, '', 1, '2019-12-13', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(296, '', 1, '2019-12-13', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(297, '', 1, '2019-12-13', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(298, '', 1, '2019-12-13', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(299, '', 1, '2019-12-13', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(300, '', 1, '2019-12-13', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(301, '', 1, '2019-12-13', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(302, '', 1, '2019-12-13', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(303, '', 1, '2019-12-13', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(304, '', 1, '2019-12-13', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(305, '', 1, '2019-12-13', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(306, '', 1, '2019-12-13', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(307, '', 1, '2019-12-20', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(308, '', 1, '2019-12-20', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(309, '', 1, '2019-12-20', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(310, '', 1, '2019-12-20', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(311, '', 1, '2019-12-20', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(312, '', 1, '2019-12-20', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(313, '', 1, '2019-12-20', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(314, '', 1, '2019-12-20', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(315, '', 1, '2019-12-20', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(316, '', 1, '2019-12-20', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(317, '', 1, '2019-12-20', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(318, '', 1, '2019-12-20', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(319, '', 1, '2019-12-20', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(320, '', 1, '2019-12-20', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(321, '', 1, '2019-12-20', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(322, '', 1, '2019-12-20', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(323, '', 1, '2019-12-20', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(324, '', 1, '2019-12-20', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(325, '', 1, '2019-12-27', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(326, '', 1, '2019-12-27', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(327, '', 1, '2019-12-27', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(328, '', 1, '2019-12-27', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(329, '', 1, '2019-12-27', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(330, '', 1, '2019-12-27', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(331, '', 1, '2019-12-27', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(332, '', 1, '2019-12-27', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(333, '', 1, '2019-12-27', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(334, '', 1, '2019-12-27', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(335, '', 1, '2019-12-27', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(336, '', 1, '2019-12-27', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(337, '', 1, '2019-12-27', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(338, '', 1, '2019-12-27', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(339, '', 1, '2019-12-27', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(340, '', 1, '2019-12-27', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(341, '', 1, '2019-12-27', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(342, '', 1, '2019-12-27', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(343, '', 1, '2019-12-07', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(344, '', 1, '2019-12-07', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(345, '', 1, '2019-12-07', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(346, '', 1, '2019-12-07', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(347, '', 1, '2019-12-07', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(348, '', 1, '2019-12-07', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(349, '', 1, '2019-12-07', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(350, '', 1, '2019-12-07', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(351, '', 1, '2019-12-07', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(352, '', 1, '2019-12-07', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(353, '', 1, '2019-12-07', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(354, '', 1, '2019-12-07', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(355, '', 1, '2019-12-07', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(356, '', 1, '2019-12-07', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(357, '', 1, '2019-12-07', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(358, '', 1, '2019-12-07', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(359, '', 1, '2019-12-07', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(360, '', 1, '2019-12-07', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(361, '', 1, '2019-12-14', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(362, '', 1, '2019-12-14', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(363, '', 1, '2019-12-14', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(364, '', 1, '2019-12-14', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(365, '', 1, '2019-12-14', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(366, '', 1, '2019-12-14', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(367, '', 1, '2019-12-14', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(368, '', 1, '2019-12-14', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(369, '', 1, '2019-12-14', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(370, '', 1, '2019-12-14', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(371, '', 1, '2019-12-14', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(372, '', 1, '2019-12-14', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(373, '', 1, '2019-12-14', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(374, '', 1, '2019-12-14', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(375, '', 1, '2019-12-14', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(376, '', 1, '2019-12-14', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(377, '', 1, '2019-12-14', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(378, '', 1, '2019-12-14', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(379, '', 1, '2019-12-21', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(380, '', 1, '2019-12-21', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(381, '', 1, '2019-12-21', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(382, '', 1, '2019-12-21', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(383, '', 1, '2019-12-21', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(384, '', 1, '2019-12-21', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(385, '', 1, '2019-12-21', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(386, '', 1, '2019-12-21', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(387, '', 1, '2019-12-21', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(388, '', 1, '2019-12-21', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(389, '', 1, '2019-12-21', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(390, '', 1, '2019-12-21', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(391, '', 1, '2019-12-21', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(392, '', 1, '2019-12-21', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(393, '', 1, '2019-12-21', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(394, '', 1, '2019-12-21', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(395, '', 1, '2019-12-21', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(396, '', 1, '2019-12-21', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(397, '', 1, '2019-12-08', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(398, '', 1, '2019-12-08', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(399, '', 1, '2019-12-08', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(400, '', 1, '2019-12-08', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(401, '', 1, '2019-12-08', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(402, '', 1, '2019-12-08', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(403, '', 1, '2019-12-08', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(404, '', 1, '2019-12-08', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(405, '', 1, '2019-12-08', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(406, '', 1, '2019-12-08', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(407, '', 1, '2019-12-08', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(408, '', 1, '2019-12-08', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(409, '', 1, '2019-12-08', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(410, '', 1, '2019-12-08', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(411, '', 1, '2019-12-08', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(412, '', 1, '2019-12-08', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(413, '', 1, '2019-12-08', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(414, '', 1, '2019-12-08', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(415, '', 1, '2019-12-15', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(416, '', 1, '2019-12-15', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(417, '', 1, '2019-12-15', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(418, '', 1, '2019-12-15', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(419, '', 1, '2019-12-15', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(420, '', 1, '2019-12-15', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(421, '', 1, '2019-12-15', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(422, '', 1, '2019-12-15', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(423, '', 1, '2019-12-15', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(424, '', 1, '2019-12-15', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(425, '', 1, '2019-12-15', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(426, '', 1, '2019-12-15', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(427, '', 1, '2019-12-15', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(428, '', 1, '2019-12-15', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(429, '', 1, '2019-12-15', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(430, '', 1, '2019-12-15', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(431, '', 1, '2019-12-15', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(432, '', 1, '2019-12-15', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(433, '', 1, '2019-12-22', '08:00:00', '08:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(434, '', 1, '2019-12-22', '08:30:00', '09:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(435, '', 1, '2019-12-22', '09:00:00', '09:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(436, '', 1, '2019-12-22', '09:30:00', '10:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(437, '', 1, '2019-12-22', '10:00:00', '10:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(438, '', 1, '2019-12-22', '10:30:00', '11:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(439, '', 1, '2019-12-22', '11:00:00', '11:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(440, '', 1, '2019-12-22', '11:30:00', '12:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(441, '', 1, '2019-12-22', '12:00:00', '12:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(442, '', 1, '2019-12-22', '12:30:00', '13:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(443, '', 1, '2019-12-22', '13:00:00', '13:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(444, '', 1, '2019-12-22', '13:30:00', '14:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(445, '', 1, '2019-12-22', '14:00:00', '14:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(446, '', 1, '2019-12-22', '14:30:00', '15:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(447, '', 1, '2019-12-22', '15:00:00', '15:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(448, '', 1, '2019-12-22', '15:30:00', '16:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(449, '', 1, '2019-12-22', '16:00:00', '16:30:00', 0, 0, 0, 1, 1, 1, 1, 0),
(450, '', 1, '2019-12-22', '16:30:00', '17:00:00', 0, 0, 0, 1, 1, 1, 1, 0),
(1261, '', 1, '2019-12-07', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1260, '', 1, '2019-12-07', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1259, '', 1, '2019-12-07', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1258, '', 1, '2019-12-07', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1257, '', 1, '2019-12-07', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1256, '', 1, '2019-12-07', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1255, '', 1, '2019-12-07', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1254, '', 1, '2019-12-27', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1253, '', 1, '2019-12-27', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1252, '', 1, '2019-12-27', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1251, '', 1, '2019-12-27', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1250, '', 1, '2019-12-27', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1249, '', 1, '2019-12-27', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1248, '', 1, '2019-12-27', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1247, '', 1, '2019-12-27', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1246, '', 1, '2019-12-27', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1245, '', 1, '2019-12-27', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1244, '', 1, '2019-12-20', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1243, '', 1, '2019-12-20', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1242, '', 1, '2019-12-20', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1241, '', 1, '2019-12-20', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1240, '', 1, '2019-12-20', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1239, '', 1, '2019-12-20', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1238, '', 1, '2019-12-20', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1237, '', 1, '2019-12-20', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1236, '', 1, '2019-12-20', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1235, '', 1, '2019-12-20', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1234, '', 1, '2019-12-13', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1233, '', 1, '2019-12-13', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1232, '', 1, '2019-12-13', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1231, '', 1, '2019-12-13', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1230, '', 1, '2019-12-13', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1229, '', 1, '2019-12-13', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1228, '', 1, '2019-12-13', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1227, '', 1, '2019-12-13', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1226, '', 1, '2019-12-13', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1225, '', 1, '2019-12-13', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1224, '', 1, '2019-12-06', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1223, '', 1, '2019-12-06', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1222, '', 1, '2019-12-06', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1221, '', 1, '2019-12-06', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1220, '', 1, '2019-12-06', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1219, '', 1, '2019-12-06', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1218, '', 1, '2019-12-06', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1217, '', 1, '2019-12-06', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1216, '', 1, '2019-12-06', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1215, '', 1, '2019-12-06', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1214, '', 1, '2019-12-26', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1213, '', 1, '2019-12-26', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1212, '', 1, '2019-12-26', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1211, '', 1, '2019-12-26', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1210, '', 1, '2019-12-26', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1209, '', 1, '2019-12-26', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1208, '', 1, '2019-12-26', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1207, '', 1, '2019-12-26', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1206, '', 1, '2019-12-26', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1205, '', 1, '2019-12-26', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1204, '', 1, '2019-12-19', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1203, '', 1, '2019-12-19', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1202, '', 1, '2019-12-19', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1201, '', 1, '2019-12-19', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1200, '', 1, '2019-12-19', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1199, '', 1, '2019-12-19', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1198, '', 1, '2019-12-19', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1197, '', 1, '2019-12-19', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1196, '', 1, '2019-12-19', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1195, '', 1, '2019-12-19', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1194, '', 1, '2019-12-12', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1193, '', 1, '2019-12-12', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1192, '', 1, '2019-12-12', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1191, '', 1, '2019-12-12', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1190, '', 1, '2019-12-12', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1189, '', 1, '2019-12-12', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1188, '', 1, '2019-12-12', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1187, '', 1, '2019-12-12', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1186, '', 1, '2019-12-12', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1185, '', 1, '2019-12-12', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1184, '', 1, '2019-12-05', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1183, '', 1, '2019-12-05', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1182, '', 1, '2019-12-05', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1181, '', 1, '2019-12-05', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1180, '', 1, '2019-12-05', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1179, '', 1, '2019-12-05', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1178, '', 1, '2019-12-05', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1177, '', 1, '2019-12-05', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1176, '', 1, '2019-12-05', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1175, '', 1, '2019-12-05', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1174, '', 1, '2019-12-25', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1173, '', 1, '2019-12-25', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1172, '', 1, '2019-12-25', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1171, '', 1, '2019-12-25', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1170, '', 1, '2019-12-25', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1169, '', 1, '2019-12-25', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1168, '', 1, '2019-12-25', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1167, '', 1, '2019-12-25', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1166, '', 1, '2019-12-25', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1165, '', 1, '2019-12-25', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1164, '', 1, '2019-12-18', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1163, '', 1, '2019-12-18', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1162, '', 1, '2019-12-18', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1161, '', 1, '2019-12-18', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1160, '', 1, '2019-12-18', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1159, '', 1, '2019-12-18', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1158, '', 1, '2019-12-18', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1157, '', 1, '2019-12-18', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1156, '', 1, '2019-12-18', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1155, '', 1, '2019-12-18', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1154, '', 1, '2019-12-11', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1153, '', 1, '2019-12-11', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1152, '', 1, '2019-12-11', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1151, '', 1, '2019-12-11', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1150, '', 1, '2019-12-11', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1149, '', 1, '2019-12-11', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1148, '', 1, '2019-12-11', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1147, '', 1, '2019-12-11', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1146, '', 1, '2019-12-11', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1145, '', 1, '2019-12-11', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1144, '', 1, '2019-12-04', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1143, '', 1, '2019-12-04', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1142, '', 1, '2019-12-04', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1141, '', 1, '2019-12-04', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1140, '', 1, '2019-12-04', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1139, '', 1, '2019-12-04', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1138, '', 1, '2019-12-04', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1137, '', 1, '2019-12-04', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1136, '', 1, '2019-12-04', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1135, '', 1, '2019-12-04', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1134, '', 1, '2019-12-31', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1133, '', 1, '2019-12-31', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1132, '', 1, '2019-12-31', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1131, '', 1, '2019-12-31', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1130, '', 1, '2019-12-31', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1129, '', 1, '2019-12-31', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1128, '', 1, '2019-12-31', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1127, '', 1, '2019-12-31', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1126, '', 1, '2019-12-31', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1125, '', 1, '2019-12-31', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1124, '', 1, '2019-12-24', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1123, '', 1, '2019-12-24', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1122, '', 1, '2019-12-24', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1121, '', 1, '2019-12-24', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1120, '', 1, '2019-12-24', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1119, '', 1, '2019-12-24', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1118, '', 1, '2019-12-24', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1117, '', 1, '2019-12-24', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1116, '', 1, '2019-12-24', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1115, '', 1, '2019-12-24', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1114, '', 1, '2019-12-17', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1113, '', 1, '2019-12-17', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1112, '', 1, '2019-12-17', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1111, '', 1, '2019-12-17', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1110, '', 1, '2019-12-17', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1109, '', 1, '2019-12-17', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1108, '', 1, '2019-12-17', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1107, '', 1, '2019-12-17', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1106, '', 1, '2019-12-17', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1105, '', 1, '2019-12-17', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1104, '', 1, '2019-12-10', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1103, '', 1, '2019-12-10', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1102, '', 1, '2019-12-10', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1101, '', 1, '2019-12-10', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1100, '', 1, '2019-12-10', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1099, '', 1, '2019-12-10', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1098, '', 1, '2019-12-10', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1097, '', 1, '2019-12-10', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1096, '', 1, '2019-12-10', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1095, '', 1, '2019-12-10', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1094, '', 1, '2019-12-30', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(619, '', 1, '2019-12-05', '08:00:00', '08:45:00', 0, 0, 0, 1, 1, 0, 55, 0),
(1093, '', 1, '2019-12-30', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1092, '', 1, '2019-12-30', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1091, '', 1, '2019-12-30', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1090, '', 1, '2019-12-30', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1089, '', 1, '2019-12-30', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1088, '', 1, '2019-12-30', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1087, '', 1, '2019-12-30', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1086, '', 1, '2019-12-30', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1085, '', 1, '2019-12-30', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1084, '', 1, '2019-12-23', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1083, '', 1, '2019-12-23', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1082, '', 1, '2019-12-23', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1081, '', 1, '2019-12-23', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1080, '', 1, '2019-12-23', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1079, '', 1, '2019-12-23', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1078, '', 1, '2019-12-23', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1077, '', 1, '2019-12-23', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1076, '', 1, '2019-12-23', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1075, '', 1, '2019-12-23', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1074, '', 1, '2019-12-16', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1073, '', 1, '2019-12-16', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1072, '', 1, '2019-12-16', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1071, '', 1, '2019-12-16', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1070, '', 1, '2019-12-16', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1069, '', 1, '2019-12-16', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1068, '', 1, '2019-12-16', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1067, '', 1, '2019-12-16', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1066, '', 1, '2019-12-16', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1065, '', 1, '2019-12-16', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1064, '', 1, '2019-12-09', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1063, '', 1, '2019-12-09', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1062, '', 1, '2019-12-09', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1061, '', 1, '2019-12-09', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1060, '', 1, '2019-12-09', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1059, '', 1, '2019-12-09', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1058, '', 1, '2019-12-09', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1057, '', 1, '2019-12-09', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1056, '', 1, '2019-12-09', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1055, '', 1, '2019-12-09', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1054, '', 1, '2019-12-22', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1053, '', 1, '2019-12-22', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1052, '', 1, '2019-12-22', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1051, '', 1, '2019-12-22', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1050, '', 1, '2019-12-22', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1049, '', 1, '2019-12-22', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1048, '', 1, '2019-12-22', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1047, '', 1, '2019-12-22', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1046, '', 1, '2019-12-22', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1045, '', 1, '2019-12-15', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1044, '', 1, '2019-12-15', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1043, '', 1, '2019-12-15', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0);
INSERT INTO `booking_slots` (`slot_id`, `slot_special_text`, `slot_special_mode`, `slot_date`, `slot_time_from`, `slot_time_to`, `slot_price`, `slot_perc_price`, `slot_discount_price`, `slot_av`, `slot_av_max`, `slot_active`, `calendar_id`, `slot_show_price`) VALUES
(1042, '', 1, '2019-12-15', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1041, '', 1, '2019-12-15', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1040, '', 1, '2019-12-15', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1039, '', 1, '2019-12-15', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1038, '', 1, '2019-12-15', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1037, '', 1, '2019-12-15', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1036, '', 1, '2019-12-08', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1035, '', 1, '2019-12-08', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1034, '', 1, '2019-12-08', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1033, '', 1, '2019-12-08', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1032, '', 1, '2019-12-08', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1031, '', 1, '2019-12-08', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1030, '', 1, '2019-12-08', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1029, '', 1, '2019-12-08', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1028, '', 1, '2019-12-08', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1027, '', 1, '2019-12-21', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1026, '', 1, '2019-12-21', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1025, '', 1, '2019-12-21', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1024, '', 1, '2019-12-21', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1023, '', 1, '2019-12-21', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1022, '', 1, '2019-12-21', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1021, '', 1, '2019-12-21', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1020, '', 1, '2019-12-21', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1019, '', 1, '2019-12-21', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1018, '', 1, '2019-12-14', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1017, '', 1, '2019-12-14', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1016, '', 1, '2019-12-14', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1015, '', 1, '2019-12-14', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1014, '', 1, '2019-12-14', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1013, '', 1, '2019-12-14', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1012, '', 1, '2019-12-14', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1011, '', 1, '2019-12-14', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1010, '', 1, '2019-12-14', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1009, '', 1, '2019-12-07', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1008, '', 1, '2019-12-07', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1007, '', 1, '2019-12-07', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1006, '', 1, '2019-12-07', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1005, '', 1, '2019-12-07', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1004, '', 1, '2019-12-07', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1003, '', 1, '2019-12-07', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1002, '', 1, '2019-12-07', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1001, '', 1, '2019-12-07', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1000, '', 1, '2019-12-20', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(999, '', 1, '2019-12-20', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(998, '', 1, '2019-12-20', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(997, '', 1, '2019-12-20', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(996, '', 1, '2019-12-20', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(995, '', 1, '2019-12-20', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(994, '', 1, '2019-12-20', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(993, '', 1, '2019-12-20', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(992, '', 1, '2019-12-20', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(991, '', 1, '2019-12-13', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(990, '', 1, '2019-12-13', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(989, '', 1, '2019-12-13', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(988, '', 1, '2019-12-13', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(987, '', 1, '2019-12-13', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(986, '', 1, '2019-12-13', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(985, '', 1, '2019-12-13', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(984, '', 1, '2019-12-13', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(983, '', 1, '2019-12-13', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(982, '', 1, '2019-12-06', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(981, '', 1, '2019-12-06', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(980, '', 1, '2019-12-06', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(979, '', 1, '2019-12-06', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(978, '', 1, '2019-12-06', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(977, '', 1, '2019-12-06', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(976, '', 1, '2019-12-06', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(975, '', 1, '2019-12-06', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(974, '', 1, '2019-12-06', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(973, '', 1, '2019-12-19', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(972, '', 1, '2019-12-19', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(971, '', 1, '2019-12-19', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(970, '', 1, '2019-12-19', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(969, '', 1, '2019-12-19', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(968, '', 1, '2019-12-19', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(967, '', 1, '2019-12-19', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(966, '', 1, '2019-12-19', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(965, '', 1, '2019-12-19', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(964, '', 1, '2019-12-12', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(963, '', 1, '2019-12-12', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(962, '', 1, '2019-12-12', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(961, '', 1, '2019-12-12', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(960, '', 1, '2019-12-12', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(959, '', 1, '2019-12-12', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(958, '', 1, '2019-12-12', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(957, '', 1, '2019-12-12', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(956, '', 1, '2019-12-12', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(955, '', 1, '2019-12-05', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(954, '', 1, '2019-12-05', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(953, '', 1, '2019-12-05', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(952, '', 1, '2019-12-05', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(951, '', 1, '2019-12-05', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(950, '', 1, '2019-12-05', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(949, '', 1, '2019-12-05', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(948, '', 1, '2019-12-05', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(947, '', 1, '2019-12-05', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(946, '', 1, '2019-12-25', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(945, '', 1, '2019-12-25', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(944, '', 1, '2019-12-25', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(943, '', 1, '2019-12-25', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(942, '', 1, '2019-12-25', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(941, '', 1, '2019-12-25', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(940, '', 1, '2019-12-25', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(939, '', 1, '2019-12-25', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(938, '', 1, '2019-12-25', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(937, '', 1, '2019-12-18', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(936, '', 1, '2019-12-18', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(935, '', 1, '2019-12-18', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(934, '', 1, '2019-12-18', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(933, '', 1, '2019-12-18', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(932, '', 1, '2019-12-18', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(931, '', 1, '2019-12-18', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(930, '', 1, '2019-12-18', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(929, '', 1, '2019-12-18', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(928, '', 1, '2019-12-11', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(927, '', 1, '2019-12-11', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(926, '', 1, '2019-12-11', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(925, '', 1, '2019-12-11', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(924, '', 1, '2019-12-11', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(923, '', 1, '2019-12-11', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(922, '', 1, '2019-12-11', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(921, '', 1, '2019-12-11', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(920, '', 1, '2019-12-11', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(919, '', 1, '2019-12-04', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(918, '', 1, '2019-12-04', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(917, '', 1, '2019-12-04', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(916, '', 1, '2019-12-04', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(915, '', 1, '2019-12-04', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(914, '', 1, '2019-12-04', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(913, '', 1, '2019-12-04', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(912, '', 1, '2019-12-04', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(911, '', 1, '2019-12-04', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(910, '', 1, '2019-12-24', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(909, '', 1, '2019-12-24', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(908, '', 1, '2019-12-24', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(907, '', 1, '2019-12-24', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(906, '', 1, '2019-12-24', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(905, '', 1, '2019-12-24', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(904, '', 1, '2019-12-24', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(903, '', 1, '2019-12-24', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(902, '', 1, '2019-12-24', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(901, '', 1, '2019-12-17', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(900, '', 1, '2019-12-17', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(899, '', 1, '2019-12-17', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(898, '', 1, '2019-12-17', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(897, '', 1, '2019-12-17', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(896, '', 1, '2019-12-17', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(895, '', 1, '2019-12-17', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(894, '', 1, '2019-12-17', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(893, '', 1, '2019-12-17', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(892, '', 1, '2019-12-10', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(891, '', 1, '2019-12-10', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(890, '', 1, '2019-12-10', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(889, '', 1, '2019-12-10', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(888, '', 1, '2019-12-10', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(887, '', 1, '2019-12-10', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(886, '', 1, '2019-12-10', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(885, '', 1, '2019-12-10', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(884, '', 1, '2019-12-10', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(883, '', 1, '2019-12-23', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(882, '', 1, '2019-12-23', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(881, '', 1, '2019-12-23', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(880, '', 1, '2019-12-23', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(879, '', 1, '2019-12-23', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(878, '', 1, '2019-12-23', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(877, '', 1, '2019-12-23', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(876, '', 1, '2019-12-23', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(875, '', 1, '2019-12-23', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(874, '', 1, '2019-12-16', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(873, '', 1, '2019-12-16', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(872, '', 1, '2019-12-16', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(871, '', 1, '2019-12-16', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(870, '', 1, '2019-12-16', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(869, '', 1, '2019-12-16', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(868, '', 1, '2019-12-16', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(867, '', 1, '2019-12-16', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(866, '', 1, '2019-12-16', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(865, '', 1, '2019-12-09', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(864, '', 1, '2019-12-09', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(863, '', 1, '2019-12-09', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(862, '', 1, '2019-12-09', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(861, '', 1, '2019-12-09', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(860, '', 1, '2019-12-09', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(859, '', 1, '2019-12-09', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(858, '', 1, '2019-12-09', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(857, '', 1, '2019-12-09', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 3, 0),
(1262, '', 1, '2019-12-07', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1263, '', 1, '2019-12-07', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1264, '', 1, '2019-12-07', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1265, '', 1, '2019-12-14', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1266, '', 1, '2019-12-14', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1267, '', 1, '2019-12-14', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1268, '', 1, '2019-12-14', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1269, '', 1, '2019-12-14', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1270, '', 1, '2019-12-14', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1271, '', 1, '2019-12-14', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1272, '', 1, '2019-12-14', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1273, '', 1, '2019-12-14', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1274, '', 1, '2019-12-14', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1275, '', 1, '2019-12-21', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1276, '', 1, '2019-12-21', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1277, '', 1, '2019-12-21', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1278, '', 1, '2019-12-21', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1279, '', 1, '2019-12-21', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1280, '', 1, '2019-12-21', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1281, '', 1, '2019-12-21', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1282, '', 1, '2019-12-21', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1283, '', 1, '2019-12-21', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1284, '', 1, '2019-12-21', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1285, '', 1, '2019-12-28', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1286, '', 1, '2019-12-28', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1287, '', 1, '2019-12-28', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1288, '', 1, '2019-12-28', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1289, '', 1, '2019-12-28', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1290, '', 1, '2019-12-28', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1291, '', 1, '2019-12-28', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1292, '', 1, '2019-12-28', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1293, '', 1, '2019-12-28', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1294, '', 1, '2019-12-28', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1295, '', 1, '2019-12-08', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1296, '', 1, '2019-12-08', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1297, '', 1, '2019-12-08', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1298, '', 1, '2019-12-08', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1299, '', 1, '2019-12-08', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1300, '', 1, '2019-12-08', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1301, '', 1, '2019-12-08', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1302, '', 1, '2019-12-08', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1303, '', 1, '2019-12-08', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1304, '', 1, '2019-12-08', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1305, '', 1, '2019-12-15', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1306, '', 1, '2019-12-15', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1307, '', 1, '2019-12-15', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1308, '', 1, '2019-12-15', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1309, '', 1, '2019-12-15', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1310, '', 1, '2019-12-15', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1311, '', 1, '2019-12-15', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1312, '', 1, '2019-12-15', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1313, '', 1, '2019-12-15', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1314, '', 1, '2019-12-15', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1315, '', 1, '2019-12-22', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1316, '', 1, '2019-12-22', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1317, '', 1, '2019-12-22', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1318, '', 1, '2019-12-22', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1319, '', 1, '2019-12-22', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1320, '', 1, '2019-12-22', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1321, '', 1, '2019-12-22', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1322, '', 1, '2019-12-22', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1323, '', 1, '2019-12-22', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1324, '', 1, '2019-12-22', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1325, '', 1, '2019-12-29', '07:00:00', '08:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1326, '', 1, '2019-12-29', '08:00:00', '09:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1327, '', 1, '2019-12-29', '09:00:00', '10:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1328, '', 1, '2019-12-29', '10:00:00', '11:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1329, '', 1, '2019-12-29', '11:00:00', '12:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1330, '', 1, '2019-12-29', '12:00:00', '13:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1331, '', 1, '2019-12-29', '13:00:00', '14:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1332, '', 1, '2019-12-29', '14:00:00', '15:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1333, '', 1, '2019-12-29', '15:00:00', '16:00:00', 0, 0, 0, 1, 1, 1, 7, 0),
(1334, '', 1, '2019-12-29', '16:00:00', '17:00:00', 0, 0, 0, 1, 1, 1, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_texts`
--

CREATE TABLE `booking_texts` (
  `text_id` int(11) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `text_label` varchar(255) NOT NULL DEFAULT '',
  `text_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_texts`
--

INSERT INTO `booking_texts` (`text_id`, `page_id`, `text_label`, `text_value`) VALUES
(1, 2, 'WELCOME_TEXT1', 'WELCOME TO BOOKING CALENDAR CONTROL PANEL'),
(2, 2, 'WELCOME_TEXT2', 'Use the menu above to manage all configurations and contents'),
(3, 2, 'WELCOME_TEXT3', 'Hey Admin,'),
(4, 2, 'WELCOME_TEXT4', 'to make the Booking Calendar work follow these simple steps:'),
(5, 2, 'WELCOME_TEXT8', 'Remember, '),
(6, 2, 'WELCOME_TEXT9', 'if you skip these steps, the Booking Calendar cannot work.'),
(7, 2, 'WELCOME_TEXT10', 'Let\'s go to start now!'),
(8, 1, 'MENU_CONTROL_PANEL_TITLE', 'Reservation System'),
(9, 1, 'MENU_GO_TO_SITE', 'Home'),
(10, 1, 'MENU_LOGGED_AS', 'Logged as:'),
(11, 1, 'MENU_LOGOUT', 'LOGOUT'),
(12, 1, 'MENU_SETTINGS', 'SETTINGS'),
(13, 1, 'MENU_BG_AND_COLORS', 'BG & COLORS'),
(14, 1, 'MENU_CALENDARS', 'CALENDARS'),
(15, 1, 'MENU_RESERVATIONS', 'RESERVATIONS'),
(16, 1, 'MENU_MANAGE_MAIL', 'MANAGE MAIL'),
(17, 1, 'MENU_CHANGE_ADMIN_PASSWORD', 'CHANGE ADMIN PASSWORD'),
(18, 1, 'MENU_META_TAGS', 'META TAGS'),
(19, 3, 'CONFIGURATION_SITE_DOMAIN_LABEL', 'Absolute path of Booking Calendar installation.'),
(20, 3, 'CONFIGURATION_SITE_DOMAIN_SUBLABEL1', 'For example if you place the Booking App in your root in a folder named \"booking\", path will be '),
(21, 3, 'CONFIGURATION_SITE_DOMAIN_SUBLABEL2', 'http://www.yoursite.com/booking'),
(22, 3, 'CONFIGURATION_SITE_DOMAIN_SUBLABEL3', ' (url '),
(23, 3, 'CONFIGURATION_SITE_DOMAIN_SUBLABEL4', 'MUST'),
(24, 3, 'CONFIGURATION_SITE_DOMAIN_SUBLABEL5', 'start with \"http://\" '),
(25, 3, 'CONFIGURATION_SITE_DOMAIN_SUBLABEL6', 'WITHOUT'),
(26, 3, 'CONFIGURATION_SITE_DOMAIN_SUBLABEL7', ' final \"/\")'),
(27, 3, 'CONFIGURATION_SITE_DOMAIN_ALERT', 'Insert calendar path'),
(28, 3, 'CONFIGURATION_TIMEZONE_LABEL', 'Timezone'),
(29, 3, 'CONFIGURATION_TIMEZONE_SUBLABEL', 'Your timezone to manage the time slots'),
(30, 3, 'CONFIGURATION_TIMEZONE_ALERT', 'Select your timezone'),
(31, 3, 'CONFIGURATION_TIMEZONE_SELECT', 'Select your timezone'),
(32, 3, 'CONFIGURATION_DATE_FORMAT_LABEL', 'Choose calendar date format.'),
(33, 3, 'CONFIGURATION_DATE_FORMAT_SUBLABEL', 'Switch between US, UK and EU date formats'),
(34, 3, 'CONFIGURATION_DATE_FORMAT_UK', 'UK - dd/mm/yyyy - week starts on Monday'),
(35, 3, 'CONFIGURATION_DATE_FORMAT_US', 'US - mm/dd/yyyy - week starts on Sunday'),
(36, 3, 'CONFIGURATION_DATE_FORMAT_EU', 'EU - yyyy/mm/dd - week starts on Monday'),
(37, 3, 'CONFIGURATION_TIME_FORMAT_LABEL', 'Choose calendar time format.'),
(38, 3, 'CONFIGURATION_TIME_FORMAT_SUBLABEL', 'Switch between 12-hour and 24-hour time formats'),
(39, 3, 'CONFIGURATION_TIME_FORMAT_12', '12-hour time format with am/pm'),
(40, 3, 'CONFIGURATION_TIME_FORMAT_24', '24-hour time format'),
(41, 3, 'CONFIGURATION_EMAIL_RESERVATION_LABEL', 'Admin Email'),
(42, 3, 'CONFIGURATION_EMAIL_RESERVATION_SUBLABEL', 'E-mail address where you\'ll receive reservation alerts'),
(43, 3, 'CONFIGURATION_EMAIL_RESERVATION_ALERT', 'Specify your email address'),
(44, 3, 'CONFIGURATION_EMAIL_FROM_RESERVATION_LABEL', 'Email \"from\"'),
(45, 3, 'CONFIGURATION_EMAIL_FROM_RESERVATION_SUBLABEL', 'E-mail address shown in the field \"From\" in every e-mail sent to confirm the reservation to your customer'),
(46, 3, 'CONFIGURATION_EMAIL_FROM_RESERVATION_ALERT', 'Specify an email address \'from\''),
(47, 3, 'CONFIGURATION_RESERVATION_CONFIRMATION_MODE_LABEL', 'Reservation: confirmation mode'),
(48, 3, 'CONFIGURATION_RESERVATION_CONFIRMATION_MODE_SUBLABEL', 'Choose how to confirm reservations'),
(49, 3, 'CONFIGURATION_RESERVATION_CONFIRMATION_MODE_ALERT', 'Select reservation confirm mode'),
(50, 3, 'CONFIGURATION_RESERVATION_CONFIRMATION_MODE_SELECT', 'Select reservation confirmation mode'),
(51, 3, 'CONFIGURATION_RESERVATION_CONFIRMATION_MODE_1', 'Automatically - When a user book a time slot, it is automatically confirmed'),
(52, 3, 'CONFIGURATION_RESERVATION_CONFIRMATION_MODE_2', 'By a verification e-mail - When a user book a time slot, he has to confirm the reservation by clicking on a link sent to him by e-mail'),
(53, 3, 'CONFIGURATION_RESERVATION_CONFIRMATION_MODE_3', 'Admin confirm - You must confirm the reservation in the reservations area'),
(54, 3, 'CONFIGURATION_REDIRECT_CONFIRMATION_PATH_LABEL', 'Currently in the confirmation page, the user will be pointed to the calendar. If you want to modify the destination page click here: '),
(55, 3, 'CONFIGURATION_REDIRECT_CONFIRMATION_PATH_SUBLABEL', 'Set the url (starting with: http://): '),
(56, 3, 'CONFIGURATION_RESERVATION_CANCEL_LABEL', 'Reservation: cancellation'),
(57, 3, 'CONFIGURATION_RESERVATION_CANCEL_SUBLABEL', 'Choose if the customer will be able to cancel his reservation by a link in the confirmation email he receives (when you decide to activate this function you can check the email to change the text)'),
(58, 3, 'CONFIGURATION_RESERVATION_CANCEL_ENABLED', 'enabled'),
(59, 3, 'CONFIGURATION_REDIRECT_CANCEL_PATH_LABEL', 'Currently in the cancellation page, the user will be pointed to the calendar. If you want to modify the destination page click here: '),
(60, 3, 'CONFIGURATION_REDIRECT_CANCEL_PATH_SUBLABEL', 'Set the url (starting with: http://): '),
(61, 3, 'CONFIGURATION_RECAPTCHA_ENABLED_LABEL', 'Google recaptcha'),
(62, 3, 'CONFIGURATION_RECAPTCHA_ENABLED_SUBLABEL', 'Code verification to avoid spam'),
(63, 3, 'CONFIGURATION_RECAPTCHA_ENABLED_ENABLED', 'enabled'),
(64, 3, 'CONFIGURATION_RECAPTCHA_PUBLIC_KEY_LABEL', 'Public Key'),
(65, 3, 'CONFIGURATION_RECAPTCHA_PUBLIC_KEY_SUBLABEL', 'It must be associated with your site domain, go to Recaptcha site to get it:'),
(66, 3, 'CONFIGURATION_RECAPTCHA_PUBLIC_KEY_ALERT', 'Insert Google recaptcha public key'),
(67, 3, 'CONFIGURATION_RECAPTCHA_PRIVATE_KEY_LABEL', 'Private key'),
(68, 3, 'CONFIGURATION_RECAPTCHA_PRIVATE_KEY_SUBLABEL', 'It must be associated with your site domain, go to Recaptcha site to get it:'),
(69, 3, 'CONFIGURATION_RECAPTCHA_PRIVATE_KEY_ALERT', 'Insert Google recaptcha private key'),
(70, 3, 'CONFIGURATION_SHOW_TERMS_LABEL', 'Add terms and condition check'),
(71, 3, 'CONFIGURATION_SHOW_TERMS_SUBLABEL', 'Adding this control, the user must check it to be able to book. It\'s mandatory to insert at least a label to enable this option'),
(72, 3, 'CONFIGURATION_SHOW_TERMS_YES', 'YES'),
(73, 3, 'CONFIGURATION_SHOW_TERMS_NO', 'NO'),
(74, 3, 'CONFIGURATION_TERMS_LABEL_LABEL', 'Label to show:'),
(75, 3, 'CONFIGURATION_TERMS_LINK_LABEL', 'Link to terms and conditions (starting with \'http://\'):'),
(76, 3, 'CONFIGURATION_SLOT_SELECTION_LABEL', 'Slot selection'),
(77, 3, 'CONFIGURATION_SLOT_SELECTION_SUBLABEL', '(choose if customer can reserve only one or multiple slots at once)'),
(78, 3, 'CONFIGURATION_SLOT_SELECTION_MULTIPLE', 'Multiple selection'),
(79, 3, 'CONFIGURATION_SLOT_SELECTION_ONE', 'Only one'),
(80, 3, 'CONFIGURATION_SLOTS_UNLIMITED_LABEL', 'Unlimited reservations'),
(81, 3, 'CONFIGURATION_SLOTS_UNLIMITED_SUBLABEL', 'Choose if slots can have unlimited reservations or just one.'),
(82, 3, 'CONFIGURATION_SLOTS_UNLIMITED_ONE', 'one reservation per slot'),
(83, 3, 'CONFIGURATION_SLOTS_UNLIMITED_UNLIMITED', 'unlimited reservations per slot'),
(84, 3, 'CONFIGURATION_SLOTS_UNLIMITED_CUSTOM', 'use the number set in slot insertion'),
(85, 3, 'CONFIGURATION_SHOW_BOOKED_SLOTS_LABEL', 'Show booked slots'),
(86, 3, 'CONFIGURATION_SHOW_BOOKED_SLOTS_SUBLABEL', 'Choose whether to show or not the booked slots. This works only if reservations per slot are not unlimited'),
(87, 3, 'CONFIGURATION_SHOW_BOOKED_SLOTS_YES', 'YES'),
(88, 3, 'CONFIGURATION_SHOW_BOOKED_SLOTS_NO', 'NO'),
(89, 3, 'CONFIGURATION_SLOTS_POPUP_ENABLED_LABEL', 'Available time slots preview'),
(90, 3, 'CONFIGURATION_SLOTS_POPUP_ENABLED_SUBLABEL', 'Show the preview of available time slots on calendar days rollover'),
(91, 3, 'CONFIGURATION_SLOTS_POPUP_ENABLED_ENABLED', 'enabled'),
(92, 3, 'CONFIGURATION_SLOTS_POPUP_ENABLED_DISABLED', 'disabled'),
(93, 3, 'CONFIGURATION_SHOW_CALENDAR_SELECTION_LABEL', 'Show calendar selection'),
(94, 3, 'CONFIGURATION_SHOW_CALENDAR_SELECTION_SUBLABEL', 'Choose whether to show or not the calendar selection drop down at the top right of the calendar when general or category link are used'),
(95, 3, 'CONFIGURATION_SHOW_CALENDAR_SELECTION_YES', 'YES'),
(96, 3, 'CONFIGURATION_SHOW_CALENDAR_SELECTION_NO', 'NO'),
(97, 3, 'CONFIGURATION_CALENDAR_MONTH_LIMIT_LABEL', 'Calendar months view'),
(98, 3, 'CONFIGURATION_CALENDAR_MONTH_LIMIT_SUBLABEL', 'Choose if you want to limit the number of past and future months shown in the calendar. Leave -1 if you don\'t want to set this limit'),
(99, 3, 'CONFIGURATION_CALENDAR_MONTH_LIMIT_PAST', 'Past months:'),
(100, 3, 'CONFIGURATION_CALENDAR_MONTH_LIMIT_FUTURE', 'Future months:'),
(101, 3, 'CONFIGURATION_BOOK_FROM_LABEL', 'Choose when users are able to book a slot'),
(102, 3, 'CONFIGURATION_BOOK_FROM_SUBLABEL', 'Insert the minimum number of days that a user has to book before the slot date in order to get admitted. Leave 0 if he can book even at the last minute.'),
(103, 3, 'CONFIGURATION_PAYPAL_LABEL', 'Enable Paypal payment'),
(104, 3, 'CONFIGURATION_PAYPAL_SUBLABEL', 'Activate this option if you want people to pay the booking fee with Paypal. You must complete all the fields to activate this service.'),
(105, 3, 'CONFIGURATION_PAYPAL_YES', 'YES'),
(106, 3, 'CONFIGURATION_PAYPAL_NO', 'NO'),
(107, 3, 'CONFIGURATION_PAYPAL_ACCOUNT', 'Insert your paypal email address'),
(108, 3, 'CONFIGURATION_PAYPAL_CURRENCY', 'Select your currency'),
(109, 3, 'CONFIGURATION_PAYPAL_LOCALE', 'Select your country'),
(110, 3, 'CONFIGURATION_PAYPAL_LOCALE_CHOOSE', 'choose'),
(111, 3, 'CONFIGURATION_PAYPAL_CURRENCY_CHOOSE', 'choose'),
(112, 3, 'CONFIGURATION_PAYPAL_DISPLAY_PRICE', 'Display prices in booking page'),
(113, 3, 'CONFIGURATION_FORM_TEXT_LABEL', 'Additional text for booking page'),
(114, 3, 'CONFIGURATION_FORM_TEXT_SUBLABEL', 'It will be displayed under the date'),
(115, 4, 'STYLES_EMPTY_CELLS_TITLE', 'Calendar empty cells'),
(116, 4, 'STYLES_EMPTY_CELLS_BACKGROUND', 'Empty cell background (no day):'),
(117, 4, 'STYLES_AVAILABLE_CELLS_TITLE', 'Calendar available cells, NOT today'),
(118, 4, 'STYLES_AVAILABLE_CELLS_BACKGROUND', 'Available day background:'),
(119, 4, 'STYLES_AVAILABLE_CELLS_BACKGROUND_OVER', 'Available day background on mouse over:'),
(120, 4, 'STYLES_AVAILABLE_CELLS_LINE_1_COLOR', 'Available day first line label color:'),
(121, 4, 'STYLES_AVAILABLE_CELLS_LINE_1_COLOR_OVER', 'Available day first line label color on mouse over:'),
(122, 4, 'STYLES_AVAILABLE_CELLS_LINE_2_COLOR', 'Available day second line label color:'),
(123, 4, 'STYLES_AVAILABLE_CELLS_LINE_2_COLOR_OVER', 'Available day second line label color on mouse over:'),
(124, 4, 'STYLES_TODAY_CELLS_TITLE', 'Calendar today cell'),
(125, 4, 'STYLES_TODAY_CELLS_BACKGROUND', 'Today\'s background:'),
(126, 4, 'STYLES_TODAY_CELLS_BACKGROUND_OVER', 'Today\'s background on mouse over (with available slots):'),
(127, 4, 'STYLES_TODAY_CELLS_LINE_1_COLOR', 'Today\'s first line color:'),
(128, 4, 'STYLES_TODAY_CELLS_LINE_1_COLOR_OVER', 'Today\'s first line color on mouse over:'),
(129, 4, 'STYLES_TODAY_CELLS_LINE_2_COLOR', 'Today\'s second line color:'),
(130, 4, 'STYLES_TODAY_CELLS_LINE_2_COLOR_OVER', 'Today\'s second line color on mouse over:'),
(131, 4, 'STYLES_SOLDOUT_CELLS_TITLE', 'Calendar sold out cells'),
(132, 4, 'STYLES_SOLDOUT_CELLS_BACKGROUND', 'Sold out background:'),
(133, 4, 'STYLES_SOLDOUT_CELLS_LINE_1_COLOR', 'Sold out day first line label color (not today):'),
(134, 4, 'STYLES_SOLDOUT_CELLS_LINE_2_COLOR', 'Sold out day second line label color (not today):'),
(135, 4, 'STYLES_NOTAVAILABLE_CELLS_TITLE', 'Calendar not available cells, NOT today'),
(136, 4, 'STYLES_NOTAVAILABLE_CELLS_BACKGROUND', 'Not available day background:'),
(137, 4, 'STYLES_NOTAVAILABLE_CELLS_LINE_1_COLOR', 'Not available day first line label color:'),
(138, 4, 'STYLES_NOTAVAILABLE_CELLS_LINE_2_COLOR', 'Not available day second line label color:'),
(139, 4, 'STYLES_FORM_TITLE', 'Booking form style'),
(140, 4, 'STYLES_FORM_BACKGROUND', 'Booking form background:'),
(141, 4, 'STYLES_FORM_LABELS_COLOR', 'Booking form labels color:'),
(142, 4, 'STYLES_FORM_RECAPTCHA', 'Recaptcha style:'),
(143, 4, 'STYLES_FORM_RECAPTCHA_WHITE', 'white'),
(144, 4, 'STYLES_FORM_RECAPTCHA_RED', 'red'),
(145, 4, 'STYLES_FORM_RECAPTCHA_BLACK', 'black'),
(146, 5, 'SET_AS_DEFAULT_CALENDAR', 'Set as default calendar'),
(147, 5, 'CALENDARS_MODIFY', 'Modify'),
(148, 5, 'CALENDARS_MANAGE', 'Manage'),
(149, 5, 'CALENDARS_DELETE', 'Delete'),
(150, 5, 'MODIFY_SLOTS_ALERT', 'There are reservation for one or more of the selected slots. Modify them anyway?'),
(151, 5, 'DUPLICATE_SLOTS_ALERT', 'Duplicate slots. Cannot make these changes'),
(152, 5, 'CALENDAR_TITLE_LABEL', 'Title'),
(153, 5, 'CALENDAR_DIRECT_LINK_LABEL', 'Direct link'),
(154, 5, 'CALENDAR_PUBLISHED_LABEL', 'Published'),
(155, 5, 'SLOTS_SELECT_DATE_ALERT', 'Select a date'),
(156, 5, 'SLOTS_DATE_RANGE_ALERT', 'Select date range'),
(157, 5, 'SLOTS_PAGES', 'Pages'),
(158, 5, 'SLOTS_PAGINATION_FIRST', 'First'),
(159, 5, 'SLOTS_PAGINATION_PREV', 'Prev'),
(160, 5, 'SLOTS_PAGINATION_NEXT', 'Next'),
(161, 5, 'SLOTS_PAGINATION_LAST', 'Last'),
(162, 5, 'SLOTS_DATE_LABEL', 'Date'),
(163, 5, 'SLOTS_TIME_FROM_LABEL', 'Time from'),
(164, 5, 'SLOTS_TIME_TO_LABEL', 'Time to'),
(165, 5, 'SLOTS_SPECIAL_TEXT_LABEL', 'Special text'),
(166, 5, 'SLOTS_PRICE_LABEL', 'Price'),
(167, 5, 'SLOTS_AV_LABEL', 'Seats'),
(168, 5, 'SLOTS_RESERVATION_LABEL', 'Reserved'),
(169, 5, 'SLOTS_MODIFY', 'Modify'),
(170, 5, 'SLOTS_DELETE', 'Delete'),
(171, 5, 'CALENDAR_YOU_ARE_IN', 'You are in'),
(172, 5, 'CALENDARS', 'Calendars'),
(173, 5, 'STATUS_PUBLISHED', 'Published'),
(174, 5, 'STATUS_UNPUBLISHED', 'Unpublished'),
(175, 5, 'ACTUAL_CALENDAR_STATUS', 'The Actual Status of this calendar is'),
(176, 5, 'MANAGE_TIME_SLOTS', 'MANAGE TIME SLOTS'),
(177, 5, 'CLOSING_DAYS', 'CLOSING DAYS'),
(178, 5, 'CALENDARS_DELETE_CONFIRM_SINGLE', 'Are you sure you want to delete this item? All holidays, slots and reservations will be deleted'),
(179, 5, 'CALENDARS_PUBLISH_CONFIRM_SINGLE', 'Are you sure you want to publish this calendar?'),
(180, 5, 'CALENDARS_UNPUBLISH_CONFIRM_SINGLE', 'Are you sure you want to unpublish this calendar?'),
(181, 5, 'CALENDARS_ADD', 'Add'),
(182, 5, 'CALENDARS_TITLE_ALERT', 'Insert a title for the calendar'),
(183, 5, 'CALENDARS_SAVE', 'Save'),
(184, 5, 'CREATE_NEW_CALENDAR', 'Create a new calendar'),
(185, 5, 'TYPE_THE_NAME', 'Type the name'),
(186, 5, 'CALENDARS_DUPLICATE_CONFIRM_MULTIPLE', 'Are you sure to duplicate the selected items?'),
(187, 5, 'NO_ITEMS_SELECTED', 'No items selected'),
(188, 5, 'CALENDARS_DELETE_CONFIRM_MULTIPLE', 'Are you sure to delete the selected items?'),
(189, 5, 'CALENDARS_UNPUBLISH_CONFIRM_MULTIPLE', 'Are you sure to unpublish the selected items?'),
(190, 5, 'CALENDARS_DUPLICATE', 'Duplicate'),
(191, 5, 'CALENDARS_PUBLISH_CONFIRM_MULTIPLE', 'Are you sure to publish the selected items?'),
(192, 5, 'CALENDARS_UNPUBLISH', 'Unpublish'),
(193, 5, 'CALENDARS_PUBLISH', 'Publish'),
(194, 5, 'SELECTED_ITEMS', 'Selected items'),
(195, 5, 'HOLIDAYS_DELETE', 'Delete'),
(196, 5, 'HOLIDAY_DATE_LABEL', 'Date'),
(197, 5, 'HOLIDAYS_RESERVATION_SINGLE_ALERT', 'There are reservations for this date, are you sure you want to set this day as holiday?'),
(198, 5, 'HOLIDAYS_RESERVATION_MULTIPLE_ALERT', 'There are reservations for one or more dates, are you sure you want to set these days as holidays?'),
(199, 5, 'HOLIDAYS_DATE_ALERT', 'Select a date'),
(200, 5, 'HOLIDAYS_DELETE_SINGLE_ALERT', 'Are you sure you want to delete this item?'),
(201, 5, 'HOLIDAYS_DAY', 'Day'),
(202, 5, 'HOLIDAYS_FROM', 'From'),
(203, 5, 'CREATE_CLOSING_DAY_TITLE', 'Create Closing Days'),
(204, 5, 'CREATE_CLOSING_DAY_SUBTITLE', 'These days will not be available for booking. If you created time slots in these days, they will be deleted.'),
(205, 5, 'CREATE_CLOSING_DAY_HOW_MANY', 'How many closing days do you want to set?'),
(206, 5, 'CREATE_CLOSING_DAY_CHOOSE', 'choose'),
(207, 5, 'CREATE_CLOSING_DAY_SINGLE_DAY', 'A single day'),
(208, 5, 'CREATE_CLOSING_DAY_PERIOD', 'Period of time'),
(209, 5, 'HOLIDAYS_TO', 'To'),
(210, 5, 'HOLIDAYS_DELETE_MULTIPLE_ALERT', 'Are you sure to delete the selected items?'),
(211, 5, 'SLOTS_FROM', 'From'),
(212, 5, 'SLOTS_TO', 'To'),
(213, 5, 'SLOT_DATE_FROM_ALERT', 'Select a date from'),
(214, 5, 'SLOT_INTERVAL_CHOOSE_ALERT', 'Choose slot interval'),
(215, 5, 'SLOT_INTERVAL_ALERT', 'Insert a valid value for slot interval'),
(216, 5, 'SLOT_CUSTOM_SLOT_ALERT', 'Insert at least a custom slot'),
(217, 5, 'SLOT_SLOT_DURATION_ALERT', 'Slot duration values are not correct'),
(218, 5, 'SLOT_SLOT_PAUSE_ALERT', 'Insert a valid value for slot pause'),
(219, 5, 'SLOT_TIME_FROM_TIME_TO_ALERT', 'Select at least time from and a time to'),
(220, 5, 'SLOT_TIME_PERIOD_ALERT', 'Time periods for slots are not correct'),
(221, 5, 'SLOT_TITLE', 'Insert your preferences to create the time slots'),
(222, 5, 'SLOT_DATE_LABEL', 'Date'),
(224, 5, 'SLOT_DATE_TO_SUBLABEL', 'Leave this field empty if you want to set a single day'),
(225, 5, 'SLOT_WEEKDAY_LABEL', 'Days'),
(226, 5, 'SLOT_WEEKDAY_ALL', 'All'),
(227, 5, 'SLOT_WEEKDAY_MON', 'Mondays'),
(228, 5, 'SLOT_WEEKDAY_TUE', 'Tuesdays'),
(229, 5, 'SLOT_WEEKDAY_WED', 'Wednesdays'),
(230, 5, 'SLOT_WEEKDAY_THU', 'Thursdays'),
(231, 5, 'SLOT_WEEKDAY_FRI', 'Fridays'),
(232, 5, 'SLOT_WEEKDAY_SAT', 'Saturdays'),
(233, 5, 'SLOT_WEEKDAY_SUN', 'Sundays'),
(234, 5, 'SLOT_DURATION_LABEL', 'Slot duration'),
(235, 5, 'SLOT_DURATION_SUBLABEL', 'Select the lenght each time slot will have'),
(236, 5, 'SLOT_DURATION_CHOOSE', 'choose duration'),
(237, 5, 'SLOT_DURATION_MINUTES', 'in minutes'),
(238, 5, 'SLOT_DURATION_FROM_TO', 'from, to'),
(239, 5, 'SLOT_SPECIAL_LABEL', 'Description text (optional)'),
(240, 5, 'SLOT_SPECIAL_MODE_BOTH', 'Show both times and special text'),
(241, 5, 'SLOT_SPECIAL_MODE_TEXT', 'Show just special text'),
(242, 5, 'SLOT_INTERVAL_LABEL', 'Type here the minutes'),
(243, 5, 'SLOT_PAUSE_LABEL', 'Pause between time slots'),
(244, 5, 'SLOT_PAUSE_SUBLABEL', 'If you like set an interval  between the time slots'),
(245, 5, 'SLOT_TIME_LABEL', 'Time'),
(246, 5, 'SLOT_TIME_SUBLABEL', 'Set the period of time in which time slots will be available'),
(247, 5, 'SLOT_PRICE_LABEL', 'Price'),
(248, 5, 'SLOT_PRICE_SUBLABEL', 'Insert price for the slots your are creating'),
(249, 5, 'SLOT_AV_LABEL', 'Slot seats number'),
(250, 5, 'SLOT_AV_SUBLABEL', 'choose availability for every slot'),
(251, 5, 'CREATE_TIME_SLOTS', 'Create Time Slots'),
(253, 5, 'SLOTS_SELECT_RANGE_ALERT', 'Select date range'),
(254, 5, 'SLOTS_DELETE_SINGLE_ALERT', 'Are you sure you want to delete this item?'),
(255, 5, 'SLOTS_DUPLICATE_SLOT_ALERT', 'There\'s another slot for the same date and time. Change values'),
(257, 5, 'SLOTS_TIME_ALERT', 'Slot times values are not correct'),
(258, 5, 'SLOTS_DATE_FROM_ALERT', 'Select a date from'),
(259, 5, 'SLOTS_DATE_TO_ALERT', 'Select a date to'),
(260, 5, 'SLOTS_NEW_TIME_FROM_ALERT', 'Select a new time from'),
(261, 5, 'SLOTS_NEW_TIME_TO_ALERT', 'Select a new time to'),
(262, 5, 'SLOTS_NEW_TIME_RANGE_ALERT', 'New time range values are not correct'),
(263, 5, 'SLOT_SEARCH_TIME_SLOTS_LABEL', 'Search Time Slots'),
(264, 5, 'SLOT_SEARCH_TIME_SLOTS_SUBLABEL', 'Use the following filters to search created time slots'),
(265, 5, 'SLOT_SEARCH_FILTER_LABEL', 'Filter by date:'),
(266, 5, 'SLOT_SEARCH_FILTER_CHOOSE', 'choose a date'),
(267, 5, 'SLOT_SEARCH_FILTER_SINGLE', 'Single day'),
(268, 5, 'SLOT_SEARCH_FILTER_PERIOD', 'Period of time'),
(269, 5, 'SLOT_TIME_FROM_LABEL', 'Time From'),
(270, 5, 'SLOT_TIME_TO_LABEL', 'Time To'),
(271, 5, 'SLOT_TIME_TO_SUBLABEL', 'Leave empty if you don\'t want a range period of time'),
(272, 5, 'SLOT_MODIFY_SLOTS_LABEL', 'Modify Time Slots'),
(273, 5, 'SLOT_MODIFY_SLOTS_ACTION', 'Action:'),
(274, 5, 'SLOT_MODIFY_SLOTS_CHOOSE', 'choose'),
(275, 5, 'SLOT_MODIFY_SLOTS_MODIFY', 'modify'),
(276, 5, 'SLOT_MODIFY_SLOTS_DELETE', 'delete'),
(277, 5, 'SLOT_MODIFY_SLOTS_SLOT', 'Slot:'),
(278, 5, 'SLOT_MODIFY_SLOTS_WEEKDAYS', 'Weekdays:'),
(279, 5, 'SLOT_MODIFY_SLOTS_NEW_TIME_FROM', 'New Time From'),
(280, 5, 'SLOT_MODIFY_SLOTS_NEW_TIME_TO', 'New Time To'),
(281, 5, 'SLOT_MODIFY_NEW_PRICE', 'New Price'),
(282, 5, 'SLOT_MODIFY_NEW_AV', 'New slot seats'),
(283, 5, 'SLOTS_DELETE_MULTIPLE_ALERT', 'Are you sure to delete the selected items?		'),
(284, 6, 'RESERVATION_DATE_LABEL', 'Date'),
(285, 6, 'RESERVATION_TIME_LABEL', 'Time'),
(286, 6, 'RESERVATION_SEATS_LABEL', 'Seats'),
(287, 6, 'RESERVATION_SURNAME_NAME_LABEL', 'Surname,name'),
(288, 6, 'RESERVATION_EMAIL_LABEL', 'Email'),
(289, 6, 'RESERVATION_CONFIRMED_LABEL', 'Confirmed'),
(290, 6, 'RESERVATIONS_CANCELLED', 'Cancelled'),
(291, 6, 'RESERVATIONS_DELETE', 'Delete'),
(292, 6, 'RESERVATIONS_DETAIL', 'Detail'),
(293, 6, 'RESERVATION_YOU_ARE_IN', 'You are in'),
(294, 6, 'RESERVATIONS', 'Reservations'),
(295, 6, 'CALENDAR', 'Calendar'),
(296, 6, 'RESERVATIONS_LIST', 'Reservations List'),
(297, 6, 'RESERVATION_SELECT_DATE_ALERT', 'Select a date'),
(298, 6, 'RESERVATION_SELECT_DATE_RANGE_ALERT', 'Select date range'),
(299, 6, 'RESERVATION_DELETE_SINGLE_ALERT', 'Are you sure you want to delete this item?'),
(300, 6, 'RESERVATION_PAYPAL_CONFIRM_SINGLE_ALERT', 'Are you sure you want to confirm this reservation? It could not have been paid yet, check your Paypal account before confirmation'),
(301, 6, 'RESERVATION_CONFIRM_SINGLE_ALERT', 'Are you sure you want to confirm this reservation?'),
(302, 6, 'RESERVATION_UNCONFIRM_SINGLE_ALERT', 'Are you sure you want to unconfirm this reservation?'),
(303, 6, 'RESERVATIONS_DAY', 'Day'),
(304, 6, 'RESERVATIONS_FROM', 'From'),
(305, 6, 'RESERVATION_SEARCH_RESERVATION_LABEL', 'Search Reservations'),
(306, 6, 'RESERVATION_SEARCH_RESERVATION_SUBLABEL', 'Use the following filters to search reservations'),
(307, 6, 'RESERVATION_SEARCH_FILTER_DATE_LABEL', 'Filter by date:'),
(308, 6, 'RESERVATION_SEARCH_FILTER_DATE_CHOOSE', 'choose'),
(309, 6, 'RESERVATION_SEARCH_FILTER_DATE_ONE_DAY', 'One day'),
(310, 6, 'RESERVATION_SEARCH_FILTER_DATE_PERIOD', 'Period of time'),
(311, 6, 'RESERVATIONS_TO', 'To'),
(312, 6, 'RESERVATION_DELETE_MULTIPLE_ALERT', 'Are you sure to delete the selected items?'),
(313, 6, 'CSV_EXPORT', 'CSV Export'),
(314, 6, 'RESERVATION_RESET_LABEL', 'Show all Reservations'),
(315, 6, 'RESERVATION_RED_LABEL', 'In red lines you\'ll find those reservations whose slots have been deleted'),
(316, 6, 'RESERVATIONS_CLOSE', 'Close'),
(317, 6, 'RESERVATIONS_PRINT', 'Print'),
(318, 6, 'RESERVATION_SURNAME_LABEL', 'Surname'),
(319, 6, 'RESERVATION_NAME_LABEL', 'Name'),
(321, 6, 'RESERVATION_PHONE_LABEL', 'Phone'),
(322, 6, 'RESERVATION_MESSAGE_LABEL', 'Message'),
(323, 6, 'RESERVATION_ADDITIONAL_FIELD1', 'Additional field 1'),
(324, 6, 'RESERVATION_ADDITIONAL_FIELD2', 'Additional field 2'),
(325, 6, 'RESERVATION_ADDITIONAL_FIELD3', 'Additional field 3'),
(326, 6, 'RESERVATION_ADDITIONAL_FIELD4', 'Additional field 4'),
(327, 6, 'RESERVATION_CONFIRMED_YES', 'YES'),
(328, 6, 'RESERVATION_CONFIRMED_NO', 'NO'),
(329, 6, 'RESERVATIONS_PUBLISHED_TITLE', 'Published'),
(330, 6, 'RESERVATIONS_LIST_BUTTON', 'List'),
(331, 7, 'MAIL_DESCRIPTION_LABEL', 'Description'),
(332, 7, 'MAIL_MODIFY', 'Modify'),
(333, 7, 'MAIL_SUBJECT_ALERT', 'Insert mail subject'),
(334, 7, 'MAIL_TEXT_ALERT', 'Insert mail text'),
(335, 7, 'MAIL_SUBJECT_LABEL', 'Email subject'),
(336, 7, 'MAIL_TEXT_LABEL', 'Email text'),
(337, 7, 'MAIL_TEXT_SUBLABEL1', 'The commands in square brackets are necessary for dynamically inserting the data. If you modify or delete them, data will not be inserted.'),
(338, 7, 'MAIL_TEXT_SUBLABEL2', '[customer-name]'),
(339, 7, 'MAIL_TEXT_SUBLABEL3', 'it inserts the user name'),
(340, 7, 'MAIL_TEXT_SUBLABEL4', '[reservation-details]'),
(341, 7, 'MAIL_TEXT_SUBLABEL5', 'it inserts reservation details'),
(342, 7, 'MAIL_TEXT_SUBLABEL6', '[confirmation-link]'),
(343, 7, 'MAIL_TEXT_SUBLABEL7', 'it inserts the confirmation link'),
(344, 7, 'MAIL_TEXT_SUBLABEL8', '[confirmation-link-url]'),
(345, 7, 'MAIL_TEXT_SUBLABEL9', 'it inserts the extended link to be copied and pasted into the URL'),
(346, 7, 'MAIL_CANCEL_TEXT_LABEL', 'Email cancellation text.'),
(347, 7, 'MAIL_CANCEL_TEXT_SUBLABEL1', 'Status:'),
(348, 7, 'MAIL_ENABLED', 'ENABLED'),
(349, 7, 'MAIL_DISABLED', 'DISABLED'),
(350, 7, 'MAIL_CANCEL_TEXT_SUBLABEL2', 'The commands in square brackets are necessary for dynamically inserting the data. If you modify or delete them, data will not be inserted.'),
(351, 7, 'MAIL_CANCEL_TEXT_SUBLABEL3', '[cancellation-link]'),
(352, 7, 'MAIL_CANCEL_TEXT_SUBLABEL4', 'it inserts the cancellation link'),
(353, 7, 'MAIL_CANCEL_TEXT_SUBLABEL5', '[cancellation-link-url]'),
(354, 7, 'MAIL_CANCEL_TEXT_SUBLABEL6', 'it inserts the extended link to be copied and pasted into the URL'),
(355, 7, 'MAIL_SIGNATURE_LABEL', 'Email signature'),
(356, 8, 'FORM_VISIBLE_FIELDS_LABEL', 'Choose the visible fields in the reservation form'),
(357, 8, 'FORM_VISIBLE_FIELDS_SUBLABEL', '(multiple selection)'),
(358, 8, 'FORM_MANDATORY_FIELDS_LABEL', 'Choose the mandatory fields in the reservation form'),
(359, 8, 'FORM_MANDATORY_FIELDS_SUBLABEL', '(multiple selection)'),
(360, 8, 'FORM_FIELDS_TYPE_LABEL', 'Fields type'),
(361, 8, 'FORM_FIELDS_TYPE_SUBLABEL', 'choose the type of every form field'),
(362, 8, 'FORM_FIELDS_TYPE_TEXT', 'Text'),
(363, 8, 'FORM_FIELDS_TYPE_AREA', 'TextArea'),
(364, 9, 'PASSWORD_CHANGED_ALERT', 'Password changed successfully'),
(365, 9, 'PASSWORD_OLD_ALERT', 'Insert your old password'),
(366, 9, 'PASSWORD_NEW_CONFIRM_ALERT', 'New password and password confirm fields must have the same value'),
(367, 9, 'PASSWORD_OLD_INCORRECT_ALERT', 'Old password is not correct'),
(368, 9, 'PASSWORD_OLD_LABEL', 'Old password'),
(369, 9, 'PASSWORD_OLD_SUBLABEL', '(your current password)'),
(370, 9, 'PASSWORD_NEW_LABEL', 'New password'),
(371, 9, 'PASSWORD_CONFIRM_LABEL', 'Confirm password'),
(372, 9, 'PASSWORD_CONFIRM_SUBLABEL', '(retype your new password)'),
(373, 10, 'METATAGS_PAGE_TITLE_LABEL', 'Page title'),
(374, 10, 'METATAGS_METATAG_TITLE_LABEL', 'Title'),
(375, 10, 'METATAGS_METATAG_DESCRIPTION_LABEL', 'Description'),
(376, 10, 'METATAGS_METATAG_KEYWORDS_LABEL', 'Keywords'),
(377, 11, 'SELECT_CALENDAR', 'Select the calendar:'),
(378, 11, 'BACK_TODAY', 'Back to today'),
(379, 11, 'JANUARY', 'January'),
(380, 11, 'FEBRUARY', 'February'),
(381, 11, 'MARCH', 'March'),
(382, 11, 'APRIL', 'April'),
(383, 11, 'MAY', 'May'),
(384, 11, 'JUNE', 'June'),
(385, 11, 'JULY', 'July'),
(386, 11, 'AUGUST', 'August'),
(387, 11, 'SEPTEMBER', 'September'),
(388, 11, 'OCTOBER', 'October'),
(389, 11, 'NOVEMBER', 'November'),
(390, 11, 'DECEMBER', 'December'),
(391, 11, 'SUNDAY', 'Sunday'),
(392, 11, 'MONDAY', 'Monday'),
(393, 11, 'TUESDAY', 'Tuesday'),
(394, 11, 'WEDNESDAY', 'Wednesday'),
(395, 11, 'THURSDAY', 'Thursday'),
(396, 11, 'FRIDAY', 'Friday'),
(397, 11, 'SATURDAY', 'Saturday'),
(398, 11, 'DORESERVATION_MAIL_ADMIN_SUBJECT', 'New reservation'),
(399, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE1', 'Reservation data below.'),
(400, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE2', 'Name'),
(401, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE3', 'Surname'),
(402, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE4', 'Email'),
(403, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE5', 'Phone'),
(404, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE6', 'Message'),
(405, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE7', 'Slots reserved'),
(406, 11, 'DORESERVATION_MAIL_ADMIN_CALENDAR', 'Calendar'),
(407, 11, 'DORESERVATION_MAIL_ADMIN_DATE', 'Date'),
(408, 11, 'DORESERVATION_MAIL_ADMIN_TIME', 'Time'),
(409, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE8', 'All reservations must be confirmed in '),
(410, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE9', 'admin panel'),
(411, 11, 'DORESERVATION_MAIL_USER_MESSAGE2', 'Slots reserved'),
(412, 11, 'DORESERVATION_MAIL_USER_VENUE', 'Venue'),
(413, 11, 'DORESERVATION_MAIL_USER_DATE', 'Date'),
(414, 11, 'DORESERVATION_MAIL_USER_TIME', 'Time'),
(415, 11, 'DORESERVATION_MAIL_USER_MESSAGE3', 'Click here to confirm your reservation'),
(416, 11, 'DORESERVATION_MAIL_USER_MESSAGE4', 'Click here to cancel your reservation'),
(417, 11, 'DORESERVATION_MAIL_ADMIN_SEATS', 'Seats'),
(418, 11, 'DORESERVATION_MAIL_USER_SEATS', 'Seats'),
(419, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE10', 'Additional field 1'),
(420, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE11', 'Additional field 2'),
(421, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE12', 'Additional field 3'),
(422, 11, 'DORESERVATION_MAIL_ADMIN_MESSAGE13', 'Additional field 4'),
(423, 11, 'GETBOOKINGFORM_PREV_DAY', 'Prev day'),
(424, 11, 'GETBOOKINGFORM_NEXT_DAY', 'Next day'),
(425, 11, 'GETBOOKINGFORM_CLOSE', 'CLOSE'),
(426, 11, 'GETBOOKINGFORM_SLOT_ALERT', 'Select at least one time slot'),
(427, 11, 'GETBOOKINGFORM_CAPTCHA_ALERT', 'Insert valid verification code'),
(428, 11, 'FREE', 'Free'),
(429, 11, 'SELECT_SEATS', 'Select seats'),
(430, 11, 'GETMONTHCALENDAR_SLOTS_AVAILABLE', 'Available'),
(431, 11, 'GETMONTHCALENDAR_NO_SLOTS_AVAILABLE', 'Not available'),
(432, 11, 'GETMONTHCALENDAR_BOOK_NOW', '+ BOOK NOW'),
(433, 11, 'GETMONTHCALENDAR_SOLDOUT', 'SOLDOUT'),
(434, 11, 'CONFIRM_RESERVATION_CONFIRMED', 'Well done!'),
(435, 11, 'CONFIRM_RESERVATION_CONFIRMED_2', 'Your reservation is successfully confirmed.'),
(436, 11, 'CONFIRM_REDIRECT', 'Ok, thanks.'),
(437, 11, 'CANCEL_RESERVATION_CONFIRMED', 'Well done!'),
(438, 11, 'CANCEL_RESERVATION_CONFIRMED_2', 'Your reservation is successfully cancelled.'),
(439, 11, 'CANCEL_REDIRECT', 'Ok, thanks.'),
(440, 11, 'CANCEL_MAIL_ADMIN_SUBJECT', 'A user has cancelled his reservation'),
(441, 11, 'CANCEL_MAIL_ADMIN_MESSAGE1', 'A user has cancelled his reservation. Check it in the admin panel: '),
(442, 11, 'CANCEL_MAIL_ADMIN_MESSAGE2', 'click here'),
(443, 11, 'INDEX_NAME', 'Name'),
(444, 11, 'INDEX_NAME_ALERT', 'Insert your name'),
(445, 11, 'INDEX_SURNAME', 'Surname'),
(446, 11, 'INDEX_SURNAME_ALERT', 'Insert your surname'),
(447, 11, 'INDEX_EMAIL', 'Email'),
(448, 11, 'INDEX_EMAIL_ALERT', 'Insert a valid email address'),
(449, 11, 'INDEX_PHONE', 'Phone'),
(450, 11, 'INDEX_PHONE_ALERT', 'Insert your phone'),
(451, 11, 'INDEX_MESSAGE', 'Message'),
(452, 11, 'INDEX_MESSAGE_ALERT', 'Insert a message'),
(453, 11, 'INDEX_TERMS_AND_CONDITIONS_ALERT', 'You have to accept terms and conditions'),
(454, 11, 'INDEX_INVALID_CODE', 'Invalid code'),
(455, 11, 'INDEX_BOOK_NOW', 'BOOK NOW'),
(456, 11, 'INDEX_CLEAR', 'clear'),
(457, 11, 'INDEX_CONFIRM1', 'Thank you for booking online. You\'ll receive an email confirmation at your email address'),
(458, 11, 'INDEX_CONFIRM2', 'Thank you for booking online. Check your email box to confirm the reservation.'),
(459, 11, 'INDEX_CONFIRM3', 'Thank you for booking online. Your reservation will be confirmed by e-mail.'),
(460, 11, 'INDEX_RESERVATION_ADDITIONAL_FIELD1', 'Additional field 1'),
(461, 11, 'INDEX_RESERVATION_ADDITIONAL_FIELD1_ALERT', 'Insert additional field 1'),
(462, 11, 'INDEX_RESERVATION_ADDITIONAL_FIELD2', 'Additional field 2'),
(463, 11, 'INDEX_RESERVATION_ADDITIONAL_FIELD2_ALERT', 'Insert additional field 2'),
(464, 11, 'INDEX_RESERVATION_ADDITIONAL_FIELD3', 'Additional field 3'),
(465, 11, 'INDEX_RESERVATION_ADDITIONAL_FIELD3_ALERT', 'Insert additional field 3'),
(466, 11, 'INDEX_RESERVATION_ADDITIONAL_FIELD4', 'Additional field 4'),
(467, 11, 'INDEX_RESERVATION_ADDITIONAL_FIELD4_ALERT', 'Insert additional field 4'),
(468, 11, 'PAYPAL_CONFIRM_CONFIRMED_1', 'Well done!'),
(469, 11, 'PAYPAL_CONFIRM_CONFIRMED_2', 'Your reservation is successfully confirmed.'),
(470, 11, 'PAYPAL_CONFIRM_REDIRECT', 'Ok, thanks.'),
(471, 12, 'TEXT_ADMIN_MENU_AND_HEADER', 'Admin menu and header'),
(472, 12, 'TEXT_WELCOME_PAGE', 'Welcome page'),
(473, 12, 'TEXT_PUBLIC_SECTION', 'Public section'),
(474, 1, 'MENU_TEXT_MANAGEMENT', 'TEXTS MANAGEMENT'),
(475, 1, 'MENU_GENERAL_SETTINGS', 'GENERAL SETTINGS'),
(476, 1, 'MENU_FORM_MANAGEMENT', 'FORM MANAGEMENT'),
(477, 13, 'LOGIN_USERNAME', 'Username'),
(478, 13, 'LOGIN_PASSWORD', 'Password'),
(479, 13, 'LOGIN_USERNAME_ALERT', 'Insert a valid username'),
(480, 13, 'LOGIN_PASSWORD_ALERT', 'Insert a valid password'),
(481, 13, 'LOGIN_BUTTON', 'Login'),
(482, 13, 'LOGIN_ERROR', 'Invalid username or password. Retry'),
(483, 12, 'TEXT_LOGIN_PAGE', 'Login page'),
(484, 1, 'CONTROL_PANEL_TITLE', 'BOOKING CALENDAR - Control panel'),
(485, 1, 'CONTROL_PANEL_METATAG_DESCRIPTION', 'Booking Calendar Control panel'),
(486, 1, 'CONTROL_PANEL_METATAG_KEYWORDS', 'booking, calendar, reservation, events'),
(487, 5, 'SLOTS_DAY', 'Day'),
(488, 14, 'CATEGORIES_MODIFY_NAME', 'Modify name'),
(489, 5, 'NEW_CALENDAR_CHOOSE_CATEGORY', 'choose a category'),
(490, 5, 'CALENDAR_CATEGORY_LABEL', 'Category'),
(491, 14, 'CATEGORY_NAME_LABEL', 'Name'),
(492, 14, 'CATEGORY_LINK_LABEL', 'Direct link'),
(493, 14, 'CATEGORY_PUBLISHED_LABEL', 'Published'),
(494, 14, 'SET_AS_DEFAULT_CATEGORY', 'Set as default category'),
(495, 14, 'CATEGORIES_DELETE', 'Delete'),
(496, 14, 'CATEGORIES_DELETE_CONFIRM_SINGLE', 'Are you sure you want to delete this category? Related calendars, slots, holiday and reservations will be deleted too.'),
(497, 14, 'CATEGORIES_PUBLISH_CONFIRM_SINGLE', 'Are you sure you want to publish this category?'),
(498, 14, 'CATEGORIES_UNPUBLISH_CONFIRM_SINGLE', 'Are you sure you want to unpublish this category?'),
(499, 14, 'CATEGORIES_ADD', 'Add'),
(500, 14, 'CATEGORIES_NAME_ALERT', 'Insert category name'),
(501, 14, 'CATEGORIES_SAVE', 'Save'),
(502, 14, 'CATEGORIES_CREATE_NEW_CATEGORY', 'Create new category'),
(503, 14, 'CATEGORIES_TYPE_THE_NAME', 'Type the name'),
(504, 14, 'CATEGORIES_DELETE_CONFIRM_MULTIPLE', 'Are you sure you want to delete the selected items? All related calendars, slots, holidays and reservations will be deleted too.'),
(505, 14, 'CATEGORIES_UNPUBLISH_CONFIRM_MULTIPLE', 'Are you sure you want to unpublish the selected items?'),
(506, 14, 'CATEGORIES_UNPUBLISH', 'Unpublish'),
(507, 14, 'CATEGORIES_PUBLISH_CONFIRM_MULTIPLE', 'Are you sure you want to publish the selected items?'),
(508, 14, 'CATEGORIES_PUBLISH', 'Publish'),
(509, 5, 'NEW_CALENDAR_CATEGORY_ALERT', 'Select a category for the calendar'),
(510, 5, 'NEW_CALENDAR_TITLE_ALERT', 'Insert a name for the calendar'),
(511, 5, 'NEW_CALENDAR_CATEGORY_LABEL', 'Select calendar category'),
(513, 5, 'NEW_CALENDAR_NAME_LABEL', 'Calendar name'),
(514, 5, 'NEW_CALENDAR_EMAIL_LABEL', 'Calendar admin email address'),
(515, 11, 'SELECT_CATEGORY', 'Select the category:'),
(516, 3, 'CONFIGURATION_SHOW_CATEGORY_SELECTION_LABEL', 'Show category selection'),
(517, 3, 'CONFIGURATION_SHOW_CATEGORY_SELECTION_SUBLABEL', 'Choose whether to show or not the category selection drop down at the top right of the calendar when general link is used'),
(518, 3, 'CONFIGURATION_SHOW_CATEGORY_SELECTION_YES', 'YES'),
(519, 3, 'CONFIGURATION_SHOW_CATEGORY_SELECTION_NO', 'NO'),
(520, 5, 'SLOTS_HOUR', 'Hour'),
(521, 5, 'SLOTS_MINUTE', 'Minute'),
(522, 5, 'DELETED_SLOTS_ALERT', 'slots deleted'),
(523, 5, 'MODIFIED_SLOTS_ALERT', 'slots modified'),
(524, 5, 'ADDED_SLOTS_ALERT', 'slots added'),
(525, 5, 'SELECTED_DAYS_HOLIDAY_ALERT', 'Days selected are holidays. Cannot make these changes'),
(526, 3, 'CONFIGURATION_SHOW_FIRST_FILLED_MONTH_LABEL', 'Show the first not empty month by default'),
(527, 3, 'CONFIGURATION_SHOW_FIRST_FILLED_MONTH_SUBLABEL', 'Choose if you want to make the calendar start from the first month which have slots. If set to \"NO\" the first visible month will be the current month.'),
(528, 3, 'CONFIGURATION_SHOW_FIRST_FILLED_MONTH_YES', 'YES'),
(529, 3, 'CONFIGURATION_SHOW_FIRST_FILLED_MONTH_NO', 'NO'),
(530, 3, 'CONFIGURATION_SHOW_SLOTS_SEATS_LABEL', 'Show available slots seats instead of available slots number'),
(531, 3, 'CONFIGURATION_SHOW_SLOTS_SEATS_YES', 'YES'),
(532, 3, 'CONFIGURATION_SHOW_SLOTS_SEATS_NO', 'NO'),
(534, 11, 'EXPIRED_LINK', 'Expired link'),
(536, 2, 'WELCOME_TEXT5', '- adjust Settings'),
(537, 2, 'WELCOME_TEXT6', '- create at least a category'),
(538, 2, 'WELCOME_TEXT7', '- create at least a calendar'),
(539, 1, 'MENU_CATEGORIES', 'CATEGORIES'),
(540, 4, 'STYLES_MONTH_CONTAINER_TITLE', 'Month box style'),
(541, 4, 'STYLES_MONTH_CONTAINER_BACKGROUND', 'Month box background:'),
(542, 4, 'STYLES_MONTH_NAME_COLOR', 'Month name label color:'),
(543, 4, 'STYLES_YEAR_NAME_COLOR', 'Year label color:'),
(544, 4, 'STYLES_DAY_NAMES_TITLE', 'Weekdays style'),
(545, 4, 'STYLES_DAY_NAMES_COLOR', 'Weekdays label color:'),
(546, 4, 'STYLES_FORM_FIELD_INPUT_BACKGROUND', 'Fields background:'),
(547, 4, 'STYLES_FORM_FIELD_INPUT_COLOR', 'Fields text color:'),
(551, 4, 'STYLES_MONTH_NAVIGATION_BUTTONS_TITLE', 'Month navigation buttons style'),
(552, 4, 'STYLES_MONTH_NAVIGATION_BUTTONS_BACKGROUND', 'Buttons background:'),
(553, 4, 'STYLES_MONTH_NAVIGATION_BUTTONS_BACKGROUND_HOVER', 'Buttons background on mouse over:'),
(554, 4, 'STYLES_BOOK_NOW_BUTTON_BACKGROUND', '\"Book now\" button background:'),
(555, 4, 'STYLES_BOOK_NOW_BUTTON_BACKGROUND_HOVER', '\"Book now\" background on mouse over:'),
(556, 4, 'STYLES_BOOK_NOW_BUTTON_COLOR', '\"Book now\" button text color:'),
(557, 4, 'STYLES_BOOK_NOW_BUTTON_COLOR_HOVER', '\"Book now\" button text color on mouse over:'),
(558, 4, 'STYLES_CLEAR_BUTTON_BACKGROUND', '\"Clear\" button background:'),
(559, 4, 'STYLES_CLEAR_BUTTON_BACKGROUND_HOVER', '\"Clear\" button background on mouse over:'),
(560, 4, 'STYLES_CLEAR_BUTTON_COLOR', '\"Clear\" button text color:'),
(561, 4, 'STYLES_CLEAR_BUTTON_COLOR_HOVER', '\"Clear\" button text color on mouse over:'),
(562, 4, 'STYLES_FORM_CALENDAR_NAME_COLOR', 'Calendar name color:'),
(563, 5, 'SLOT_MODIFY_NEW_TEXT', 'New text'),
(564, 3, 'CONFIGURATION_CANCEL_BUTTON', 'CANCEL'),
(565, 3, 'CONFIGURATION_SAVE_BUTTON', 'SAVE'),
(566, 4, 'STYLES_CANCEL_BUTTON', 'CANCEL'),
(567, 4, 'STYLES_SAVE_BUTTON', 'SAVE'),
(568, 12, 'TEXTS_CANCEL_BUTTON', 'CANCEL'),
(569, 12, 'TEXTS_SAVE_BUTTON', 'SAVE'),
(570, 5, 'NEW_CALENDAR_CANCEL_BUTTON', 'CANCEL'),
(571, 5, 'NEW_CALENDAR_SAVE_BUTTON', 'SAVE'),
(572, 5, 'SLOT_CANCEL_BUTTON', 'CANCEL'),
(573, 5, 'SLOT_SAVE_BUTTON', 'SAVE'),
(574, 7, 'MAIL_CANCEL_BUTTON', 'CANCEL'),
(575, 7, 'MAIL_SAVE_BUTTON', 'SAVE'),
(576, 8, 'FORM_CANCEL_BUTTON', 'CANCEL'),
(577, 8, 'FORM_SAVE_BUTTON', 'SAVE'),
(578, 9, 'PASSWORD_CANCEL_BUTTON', 'CANCEL'),
(579, 9, 'PASSWORD_SAVE_BUTTON', 'SAVE'),
(580, 10, 'METATAGS_CANCEL_BUTTON', 'CANCEL'),
(581, 10, 'METATAGS_SAVE_BUTTON', 'SAVE'),
(582, 6, 'RESERVATIONS_SEARCH', 'SEARCH'),
(583, 5, 'SLOT_SEARCH', 'SEARCH'),
(584, 7, 'MAIL_NAME_LABEL', 'Mail type'),
(585, 11, 'PAYPAL_CONFIRM_NOT_CONFIRMED_1', 'We\'re sorry'),
(586, 11, 'PAYPAL_CONFIRM_NOT_CONFIRMED_2', 'There\'s been a problem with your payment and your reservation has been cancelled.'),
(587, 3, 'CONFIGURATION_PAYPAL_SUBLABEL1', 'Activate this option if you want people to pay the booking fee with Paypal. You must complete all the fields below to activate this service.'),
(589, 3, 'CONFIGURATION_PAYPAL_SUBLABEL2', 'Note that if you activate IPN'),
(590, 3, 'CONFIGURATION_PAYPAL_SUBLABEL3', 'in your Paypal profile the system will automatically confirm reservations after payments even if the user closes the browser before being redirected to the Booking Calendar. In the Notification URL text box just put your site address.'),
(591, 5, 'SLOT_AV_MAX_LABEL', 'Maximum number of bookable seats at once'),
(592, 5, 'SLOT_AV_MAX_SUBLABEL', 'Choose the maximum number of bookable seats at once by a customer'),
(593, 6, 'RESERVATION_USER_CONTACT_TO_ALERT', 'You must add at least an email address to send the email'),
(594, 6, 'RESERVATION_USER_CONTACT_SUBJECT_ALERT', 'Insert a subject for the message'),
(595, 6, 'RESERVATION_USER_CONTACT_MESSAGE_ALERT', 'Insert a message for the user'),
(596, 6, 'RESERVATION_USER_CONTACT_MODAL_TEXT1', 'Message to'),
(597, 6, 'RESERVATION_USER_CONTACT_MODAL_TEXT2', 'Reservation info:'),
(598, 6, 'RESERVATION_USER_CONTACT_TO', 'To (multiple addresses must be separated by comma)'),
(599, 6, 'RESERVATION_USER_CONTACT_CC', 'Cc (multiple addresses must be separated by comma)'),
(600, 6, 'RESERVATION_USER_CONTACT_BCC', 'Bcc (multiple addresses must be separated by comma)'),
(601, 6, 'RESERVATION_USER_CONTACT_SUBJECT', 'Subject'),
(602, 6, 'RESERVATION_USER_CONTACT_MESSAGE', 'Message'),
(603, 6, 'RESERVATION_USER_CONTACT_BUTTON', 'Send'),
(604, 6, 'RESERVATION_PRICE_LABEL', 'Price'),
(605, 5, 'SLOT_MODIFY_NEW_AV_MAX', 'New maximum bookable slot seats'),
(606, 6, 'RESERVATION_USER_CONTACT_MESSAGE_SENT', 'Message successfully sent!'),
(607, 6, 'RESERVATION_USER_CONTACT_MESSAGE_ERROR', 'An error has occurred. Retry'),
(608, 5, 'SLOTS_AV_MAX_LABEL', 'Max bookable'),
(609, 11, 'DORESERVATION_MAIL_ADMIN_PRICE', 'Price'),
(610, 11, 'DORESERVATION_MAIL_USER_PRICE', 'Price'),
(611, 11, 'DORESERVATION_ERROR', 'An error occurred. This time slot could have already been reserved. Please retry'),
(612, 3, 'CONFIGURATION_BOOK_TO_SUBLABEL', 'Insert the maximum number of days that a user can book when landing on the calendar. Leave 0 if he can book at any date.'),
(613, 3, 'CONFIGURATION_NAME_FROM_RESERVATION_SIDE_LABEL', 'Sender name'),
(614, 3, 'CONFIGURATION_EMAIL_FROM_RESERVATION_SIDE_LABEL', 'E-mail address'),
(615, 5, 'SLOT_SUBTITLE', 'Remember to limit the time period to a maximum of 3 months at once if you have many slots in a day as there is a limit which prevent to insert more than 2000 slots at once to avoid your  website to crash or block during slots creation'),
(616, 5, 'SLOT_CUSTOM_TIME_LABEL', 'Even if you want to set a fixed hour (i.e. 6:00), please remember to select minutes too (00) or you\'ll get the error \"Duplicated slots\"'),
(617, 11, 'MON', 'MON'),
(618, 11, 'TUE', 'TUE'),
(619, 11, 'WED', 'WED'),
(620, 11, 'THU', 'THU'),
(621, 11, 'FRI', 'FRI'),
(622, 11, 'SAT', 'SAT'),
(623, 11, 'SUN', 'SUN'),
(624, 3, 'CONFIGURATION_PAYPAL_CONFIRMATION_MODE_OVERRIDE', 'Do you want the reservations to be automatically confirmed after Paypal payment?'),
(625, 3, 'CONFIGURATION_PAYPAL_AFTER_PAYMENT_LABEL', 'Do you want the reservations to be stored in the system only after Paypal Payment?'),
(626, 3, 'CONFIGURATION_PAYPAL_AFTER_PAYMENT_SUBLABEL', 'Activating this option, the reservations will be stored into the system ONLY after payment. If Paypal doesn\'t return the payment result, whether the connection is lost, or due to a malfunction, a breakdown, the reservation will be lost and the slot will still be available.'),
(627, 5, 'SLOT_SHOW_DIFFERENT_PRICE_LABEL', 'Do you want to let people pay a discounted price or only a percentage on the total price?'),
(628, 5, 'SLOT_PERC_OR_DISCOUNT_LABEL', 'Percentage or discounted price in'),
(629, 5, 'SLOT_PERCENTAGE', 'Percentage'),
(630, 5, 'SLOT_DISCOUNT', 'Discounted price in'),
(631, 5, 'SLOT_SHOW_PRICE', 'Choose what you want to show to customers'),
(632, 5, 'SLOT_SHOW_ONLY_FULL_PRICE', 'Show just full price'),
(633, 5, 'SLOT_SHOW_ONLY_DISCOUNT_PRICE', 'Show just discounted price'),
(634, 5, 'SLOT_SHOW_BOTH_PRICES', 'Show both full and discounted prices'),
(635, 4, 'STYLES_MONTH_NAVIGATION_BUTTONS_COLOR', 'Buttons color:'),
(636, 4, 'STYLES_MONTH_NAVIGATION_BUTTONS_COLOR_HOVER', 'Buttons color on mouse over:'),
(637, 4, 'STYLES_DAY_NAMES_BG', 'Weekdays background color:'),
(638, 4, 'STYLES_CALENDAR_CELLS_ALL', 'Calendar cells (All)'),
(639, 4, 'STYLES_DASHED', 'dashed'),
(640, 4, 'STYLES_DASHED', 'dotted'),
(641, 4, 'STYLES_SOLID', 'solid'),
(642, 4, 'STYLES_AVAILABLE_CELLS_LINE_2_BG', 'Available day second line background color:'),
(643, 4, 'STYLES_AVAILABLE_CELLS_LINE_2_BG_OVER', 'Available day second line background color on mouse over:'),
(644, 4, 'STYLES_NOTAVAILABLE_CELLS_LINE_2_BG_COLOR', 'Not available day second line background color:'),
(645, 4, 'STYLES_CUSTOM_GOOGLE_FONT_LINK', 'Custom Google font link'),
(646, 4, 'STYLES_CUSTOM_GOOGLE_FONT_LINK_SUBTITLE', 'Paste ONLY the url you find in the &lt;link&gt; tag. Example:'),
(647, 4, 'STYLES_CUSTOM_GOOGLE_FONT_CSS_CODE', 'Custom Google font CSS code'),
(648, 4, 'STYLES_CUSTOM_GOOGLE_FONT_CSS_CODE_SUBTITLE', 'Paste here the CSS rule necessary to apply the font. Example:'),
(649, 4, 'STYLES_CALENDAR_CELLS_BORDER_STYLE', 'Border style:'),
(650, 3, 'CONFIGURATION_RECAPTCHA_VERSION_LABEL', 'Recaptcha version'),
(651, 3, 'CONFIGURATION_RECAPTCHA_VERSION_SUBLABEL', 'Please select the Recaptcha version for which you have the keys. If you don\'t have keys yet, you will be using the new version (v2)'),
(652, 3, 'CONFIGURATION_RECAPTCHA_VERSION_1', 'v1 (old one)'),
(653, 3, 'CONFIGURATION_RECAPTCHA_VERSION_2', 'v2 (new one)');

-- --------------------------------------------------------

--
-- Table structure for table `booking_timezones`
--

CREATE TABLE `booking_timezones` (
  `timezone_id` int(11) NOT NULL,
  `timezone_name` varchar(255) NOT NULL,
  `timezone_value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking_timezones`
--

INSERT INTO `booking_timezones` (`timezone_id`, `timezone_name`, `timezone_value`) VALUES
(1, 'Kwajalein GMT -12.00', 'Kwajalein'),
(2, 'Pacific/Midway GMT -11.00', 'Pacific/Midway'),
(3, 'Pacific/Honolulu GMT -10.00', 'Pacific/Honolulu'),
(4, 'America/Anchorage GMT -9.00', 'America/Anchorage'),
(5, 'America/Los Angeles GMT -8.00', 'America/Los_Angeles'),
(6, 'America/Denver GMT -7.00', 'America/Denver'),
(7, 'America/Tegucigalpa GMT -6.00', 'America/Tegucigalpa'),
(8, 'America/New York GMT -5.00', 'America/New_York'),
(9, 'America/Caracas GMT -4.30', 'America/Caracas'),
(10, 'America/Halifax GMT -4.00', 'America/Halifax'),
(11, 'America/St Johns GMT -3.30', 'America/St_Johns'),
(12, 'America/Argentina/Buenos Aires GMT -3.00', 'America/Argentina/Buenos_Aires'),
(13, 'America/Sao Paulo GMT -3.00', 'America/Sao_Paulo'),
(14, 'Atlantic/South_Georgia GMT -2.00', 'Atlantic/South Georgia'),
(15, 'Atlantic/Azores GMT -1.00', 'Atlantic/Azores'),
(16, 'Europe/Dublin GMT 0', 'Europe/Dublin'),
(17, 'Europe/Belgrade GMT 1.00', 'Europe/Belgrade'),
(18, 'Europe/Athens GMT 2.00', 'Europe/Athens'),
(19, 'Asia/Kuwait GMT 3.00', 'Asia/Kuwait'),
(20, 'Asia/Tehran GMT 3.30', 'Asia/Tehran'),
(21, 'Asia/Muscat GMT 4.00', 'Asia/Muscat'),
(22, 'Asia/Yekaterinburg GMT 5.00', 'Asia/Yekaterinburg'),
(23, 'Asia/Kolkata GMT 5.30', 'Asia/Kolkata '),
(24, 'Asia/Katmandu GMT 5.45', 'Asia/Katmandu'),
(25, 'Asia/Dhaka GMT 6.00', 'Asia/Dhaka'),
(26, 'Asia/Rangoon GMT 6.30', 'Asia/Rangoon'),
(27, 'Asia/Krasnoyarsk GMT 7.00', 'Asia/Krasnoyarsk'),
(28, 'Asia/Brunei GMT 8.00', 'Asia/Brunei'),
(29, 'Asia/Seoul GMT 9.00', 'Asia/Seoul '),
(30, 'Australia/Darwin GMT 9.30', 'Australia/Darwin'),
(31, 'Australia/Canberra GMT 10.00', 'Australia/Canberra'),
(32, 'Asia/Magadan GMT 11.00', 'Asia/Magadan'),
(33, 'Pacific/Fiji GMT 12.00', 'Pacific/Fiji'),
(34, 'Pacific/Tongatapu GMT 13.00', 'Pacific/Tongatapu');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Toys'),
(2, 'Food'),
(3, 'Stuff For Pets');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Food'),
(2, 'Bedding'),
(3, 'Treats'),
(4, 'Toys');

-- --------------------------------------------------------

--
-- Table structure for table `hash_admin`
--

CREATE TABLE `hash_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hash_admin`
--

INSERT INTO `hash_admin` (`id`, `name`, `email`, `pass`, `role`) VALUES
(1, 'Admin', 'admin@admin.com', '12345678', 0),
(2, 'testdc', 'testdc@aol.com', 'password', 1),
(3, 'testdc2', 'testdc2@aol.com', 'password', 2);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemID` varchar(50) NOT NULL,
  `vendorID` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `item description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pet trainer`
--

CREATE TABLE `pet trainer` (
  `petID` varchar(50) NOT NULL,
  `appointment_time` varchar(50) NOT NULL,
  `training` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pet trainer`
--

INSERT INTO `pet trainer` (`petID`, `appointment_time`, `training`, `address`, `name`) VALUES
('20', '9 am', 'potty training', '101 farmingdale st', 'dr phil');

-- --------------------------------------------------------

--
-- Table structure for table `pet_products`
--

CREATE TABLE `pet_products` (
  `id` int(9) NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `ForWhich` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pet_products`
--

INSERT INTO `pet_products` (`id`, `price`, `quantity`, `type`, `name`, `ForWhich`, `description`, `image`) VALUES
(2, 4.50, 3, 'Food', 'dog_food2', 'dog', 'description about dog_food_2', 'dog_food_2.PNG'),
(3, 12.50, 5, 'Food', 'cat_food_1', 'cat', 'description about cat_food_1', 'cat_food_3.PNG'),
(4, 56.05, 2, 'Caging', 'dog_cage_1', 'dog', 'description about dog_cage_1', 'dog_cage_1.PNG'),
(5, 125.56, 7, 'Food', 'dog_food_3', 'dog', 'description about dog_food_3', 'dog_food_3.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `image` text NOT NULL,
  `accessKey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `image`, `accessKey`) VALUES
(4, 1, 'Cat Food', 'cat food that your cat will enjoy', 2.99, 'catfood5.jpg', 1),
(5, 1, 'Cat toy', 'Tease your cats with this toy', 7, 'cattoy2.jpg', 2),
(7, 1, 'Multiple Set Chew Toy', '10 pc set for your dogs to chew on what they what', 4.99, 'dogtoy5.jpg', 0),
(8, 1, 'Chew Bone Toy', 'Chew toy for dogs', 5.49, 'dogtoy4.jpg', 1),
(16, 2, 'Pedigree Dog Food', 'Chicken Based', 20.99, 'download.png', 0),
(18, 2, 'Meow Mix', 'Meow Mix for cats. Cats will love it', 9.99, 'catfood6.jpg', 1),
(19, 2, 'Pedigree Dog Treats', 'Milk Bone, Highly Rated', 20.99, 'download.png', 0),
(21, 3, 'Dog Clothes', 'Dress your pet with cool clothes', 5.99, 'dogcloths.jpg', 1),
(22, 3, 'leash controller', 'control you dog with this leash ', 12.99, 'stuff2.jpg', 0),
(23, 3, 'Toilet Bowl', 'Trick your dog with this toilet bowl', 12.99, 'stuff1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products2`
--

CREATE TABLE `products2` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `storeID` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL,
  `accType` tinytext NOT NULL,
  `accessKey` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `uidUsers`, `emailUsers`, `pwdUsers`, `accType`, `accessKey`) VALUES
(5, 'seanf', 'sean@mail.com', '$2y$10$hER7YxHrZQFVqXaQvJOhpugNW8gI/Ey/3JgS3pZQ5H5eEdOsoQDfy', 'donationCenter', 0),
(3, 'new', 'new@gmail.com', '$2y$10$tEUd.5/3CU2nUX2jrFiK9ueDVgRCOEwuruYv.bnzS9fcunpZpThVm', 'user', 0),
(4, 'newVendor', 'nV@gmail.com', '$2y$10$orr4gpkKZB4KvI8McxqgEeiys/0RAIH0BfKNMfrWiycN6cX7dTenC', 'vendor', 0),
(6, 'sean', 's@lol.com', '$2y$10$tRQvQUyT.P3QEVUgo8mFJev4JAk0cOqlXkQg/EPvsUeaqSjf0Xg1K', 'user', 0),
(7, 'vendor', 'vendor@v.com', '$2y$10$ulTG.AiM9a.digxPTe3wO.tPzKo113UKDCT9RtKj4tjRG2p/3mM1O', 'vendor', 0),
(8, 'testvendor', 'testvendor@gmail.com', '$2y$10$s4eyjrNeI2Mar.naAtg0GOt7F.CnvAPn0/K9IyFP2aR.FfbcXFUfq', 'vendor', 1),
(9, 'testdc', 'testdc@gmail.com', '$2y$10$/xzWuOLmBlZLPZ4SCI5lHuMwHNPnr7B8WtiX.7SgDMVIMxpcGM38e', 'donationCenter', 1),
(10, 'eman', 'mejiec@farmingdal.edu', '$2y$10$5pyLI6P7K8YWkzbfPPg4yO3.Em/7qtLsAgZL8VeP6BjIdusPJWCLC', '', 0),
(11, 'Emmanuel', 'eman@hotmail.com', '$2y$10$GB9Pl/pixinYq4zlc/8O9eCRfPoZsg1IGGSA5TuqCCA/WHarGjmOa', '', 0),
(12, 'admin123', 'meet23696@gmail.com', '$2y$10$ewMu8ATlqWyzJhCwRW8M9eZ1Wg/k8KIL71nDwiaZHiXuoeiqELLw6', '', 0),
(13, 'admin1234', 'meet23696@gmail.com', '$2y$10$d6Sw7FRAi2b3M3aaAzBtdOHogXY6tIl07ZDftkSyRzfvWTpqPGpE6', '', 0),
(14, 'testadmin', 'meet23696@gmail.com', '$2y$10$I7KzyU5RMG9zq7pOI7jW.OhGLBWg7ASj3M8bIsuK5i/wxQRUMMmVK', '', 0),
(15, 'testadmin12', 'meetchanasma@gmail.com', '$2y$10$JMg5DgFZCxAFt5fabw5Wu.Hkmgir927OBZhnZTWYZDAwKV5c2/r/i', '', 0),
(16, 'farmingdale12', 'meetchanasma@gmail.com', '$2y$10$//EAluPPBZPPS.qfLAyHTeV9BXhc5Tyv6J4boUO/kSa7d9CmjKvCK', '', 0),
(17, 'sunny1172', 'sunny@gmail.com', '$2y$10$IHTMZw6Pnr2QPEYo/oXVkuw1N2HcB21sfNvEc90/2jw/itQdWEqGy', '', 0),
(18, 'kkjhkjh', 'asdasdsd@gmail.com', '$2y$10$2num6DJSwEXn7Fig.R6xo.w7qrF5q7oVaET3BZeoy36XO9f9enLeq', '', 0),
(19, 'hhjgjghjghj', 'gjhgjhghjg@gmail.com', '$2y$10$rqU1XlneZmwkmXmGW6SVZO9m9if2oY4EyfSAgmvq.y0oVQr0GthI6', '', 0),
(20, 'ghgjhhjghjg', 'jhgjhhg@gmail.com', '$2y$10$KBPh5ysjPbohVoY4PIHflur35V/xaG/qa8O0/1Dk6DpkLaa8UXuQS', '', 0),
(21, 'adminadmin', 'admin@aol.com', 'password', 'admin', 0),
(22, 'fdsfdfdf', 'fwerer@gmail.com', '$2y$10$gcEFibam2xLLe1fQaAFcION6/uJLtPAqqlw1h7SyhS88GWg4336Va', '', 0),
(25, 'sachin1172', 'email@gmail.com', '$2y$10$9Qgd3.dKJVub1yry7ceWjOUxh0xsxehmYBNpuMeM55MEe.8QlSl5a', 'user', 0),
(26, 'sunny123', 'sunny_soni34@yahoo.com', '$2y$10$9N1.jVtfI9lZYg5Ilri8yOEzHMgoHkTzYCt.qyEBaKnaAFHKEiTJ6', 'user', 0),
(27, 'anil1172', 'aks.2233@gmail.com', '$2y$10$aZsXDCgqZ65sAdzGI3HKmueLTvlli5ezFq6NZWBkvRUPKO9xhFluS', 'user', 0),
(28, 'seann', 'sean@mail.com', '$2y$10$VmtZl31LY4S99zj.3wlpSutw7ZHvZC70kiQQKMBTHOHXwUEpmVHh6', 'user', 0),
(29, 'useradmin123', 'Meet23696@gmail.com', '$2y$10$CPkI6DH1cQ1Efz6/j1haz.uDThb1orbE94hInOLZ7uZs7bnhE0D9.', 'user', 0),
(30, 'admin222', 'admin@admin.com', '$2y$10$vYrdC2bzjLJjayBUVRSO8.hblJQ.M3tA4ElSbBPbOhAGwc8bHgmnK', 'user', 0),
(31, 'testadm', 'test11@aol.com', '$2y$10$khcAfp9Et5Ch2TIM0iRKqeVur5s0L9CY5gIIx0XNlhHsc.l7/2ZCG', 'admin', 0),
(32, 'regtest', 'regt@aol.com', '$2y$10$3XTa4CcIIuCDcrmntJzr/evinNWJub0pemUCoPV9aVH9lC4ZMjLs2', 'user', 0),
(33, 'testy', 't@aol.com', '$2y$10$KLWHaY5jtwZupHM5dDDlVu7UHhfYwMgpdGfKSZLa4drS5O66Woec.', '', 0),
(34, 'test12345', 'test111@gmail.com', '$2y$10$KUx8ewq.775MNlGtXrOLW.sNJ6W4dI2512JlrqIO5RWsY4jcNiN4m', 'User', 0),
(35, 'newkid', 'newkid@aol.com', '$2y$10$BYKe9H2S4SMxSgowfGt8zeHM/HwxANmgvTLQFcNQv2PQusCoNGgGG', 'User', 0),
(36, 'dctest2', 'dctest2@aol.com', '$2y$10$L7VKF1hJs7ui7JseqH9.3.UJLNsNK/WWssOFFH/0TcTn44cmsrNAG', 'donationCenter', 0),
(37, 'testing123', 'admin@admin.com', '$2y$10$jy.YHI1zUCe/A0GFvB5PguHZ8n63GLaxYYA4KYbtZj1kvGdoqqXKO', 'user', 0),
(38, 'newman', 'hottt@aol.com', '$2y$10$pDZ1oHxfchzizdfaKmDoeewHz.2r9FKt4vl/azAyFmGP8p02NhPHG', 'user', 0),
(39, 'testdc2', 'password@aol.com', '$2y$10$5Ivq0x/PpPe3fpk7LkuNIuhAypsWQx.vh1XjQzk/KAEGDqTUW4M4.', 'donationCenter', 2),
(40, 'regusertest', 'rut@aol.com', '$2y$10$jhotSMz3KIKtdYitJwXscuSKlaVzoNuHWq1rYosA7CsZ11Uxv12Ni', 'user', 0),
(41, 'ohyeah', 'ohyeah@aol.com', '$2y$10$dnDu/hEdazhX/7PogCRFN.Mowib4Nq1n4Hze/w5QXO/zIE60BS7K2', '1', 0),
(42, 'testdc3', 'testdc3@aol.com', '$2y$10$KSRXGrBoimLsT0V.LCLUr..5xZAmNz6aXONY60mMYNurGzRJ1kFwO', '1', 0),
(43, 'testdc4', 'testdc4@aol.com', '$2y$10$ZaTyEnykbFU5.xZiZSWGyOLXHkmMegLfkJHMT5grfiy4FqKXN2P8q', 'donationCenter', 0),
(44, 'testdc5', 'testdc5@aol.com', '$2y$10$KZC19uR2PWhdi3X3kPZkPeFzAyXDQvOyf01vxfFWPRiG/n0D83Hn6', 'donationCenter', 0),
(45, 'tstdc6', 'testdc6@aol.com', '$2y$10$dtUArMxCjLl/uRJkpvBfku/wcFEuh6dC3vlGfs5fwxTbSDz.Q2hUm', 'donationCenter', 0),
(46, 'testdc7', 'dddd@aol.com', '$2y$10$gtHDIVEYFFuOHdo/0yyDf.PXAKgPKX0.35GnstINDMPGvBfRBWCx2', 'donationCenter', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` varchar(50) NOT NULL,
  `supplies` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `merchandise` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vetenarian`
--

CREATE TABLE `vetenarian` (
  `vetID` varchar(50) NOT NULL,
  `appointment_time` varchar(1000) NOT NULL,
  `checkups` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `adopt`
--
ALTER TABLE `adopt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adoption center`
--
ALTER TABLE `adoption center`
  ADD PRIMARY KEY (`adoptcenterID`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`idAnimal`);

--
-- Indexes for table `animals2`
--
ALTER TABLE `animals2`
  ADD PRIMARY KEY (`idAnimal`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_admins`
--
ALTER TABLE `booking_admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking_calendars`
--
ALTER TABLE `booking_calendars`
  ADD PRIMARY KEY (`calendar_id`);

--
-- Indexes for table `booking_categories`
--
ALTER TABLE `booking_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `booking_config`
--
ALTER TABLE `booking_config`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `booking_emails`
--
ALTER TABLE `booking_emails`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `booking_fields_types`
--
ALTER TABLE `booking_fields_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `booking_holidays`
--
ALTER TABLE `booking_holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `booking_pages`
--
ALTER TABLE `booking_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `booking_paypal_currency`
--
ALTER TABLE `booking_paypal_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `booking_paypal_locale`
--
ALTER TABLE `booking_paypal_locale`
  ADD PRIMARY KEY (`locale_id`);

--
-- Indexes for table `booking_reservation`
--
ALTER TABLE `booking_reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `calendar_id` (`calendar_id`),
  ADD KEY `slot_cancelled` (`reservation_cancelled`,`slot_id`) USING BTREE;

--
-- Indexes for table `booking_slots`
--
ALTER TABLE `booking_slots`
  ADD PRIMARY KEY (`slot_id`),
  ADD KEY `slot_time_from` (`slot_time_from`),
  ADD KEY `date_active_cal` (`slot_active`,`calendar_id`,`slot_date`) USING BTREE;

--
-- Indexes for table `booking_texts`
--
ALTER TABLE `booking_texts`
  ADD PRIMARY KEY (`text_id`);

--
-- Indexes for table `booking_timezones`
--
ALTER TABLE `booking_timezones`
  ADD PRIMARY KEY (`timezone_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `hash_admin`
--
ALTER TABLE `hash_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemID`),
  ADD UNIQUE KEY `foreign` (`vendorID`);

--
-- Indexes for table `pet trainer`
--
ALTER TABLE `pet trainer`
  ADD PRIMARY KEY (`petID`);

--
-- Indexes for table `pet_products`
--
ALTER TABLE `pet_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products2`
--
ALTER TABLE `products2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`storeID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- Indexes for table `vetenarian`
--
ALTER TABLE `vetenarian`
  ADD PRIMARY KEY (`vetID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adopt`
--
ALTER TABLE `adopt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `idAnimal` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `animals2`
--
ALTER TABLE `animals2`
  MODIFY `idAnimal` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booking_admins`
--
ALTER TABLE `booking_admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_categories`
--
ALTER TABLE `booking_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_config`
--
ALTER TABLE `booking_config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `booking_emails`
--
ALTER TABLE `booking_emails`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking_fields_types`
--
ALTER TABLE `booking_fields_types`
  MODIFY `type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `booking_holidays`
--
ALTER TABLE `booking_holidays`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_pages`
--
ALTER TABLE `booking_pages`
  MODIFY `page_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `booking_paypal_currency`
--
ALTER TABLE `booking_paypal_currency`
  MODIFY `currency_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `booking_paypal_locale`
--
ALTER TABLE `booking_paypal_locale`
  MODIFY `locale_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `booking_reservation`
--
ALTER TABLE `booking_reservation`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking_slots`
--
ALTER TABLE `booking_slots`
  MODIFY `slot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1335;

--
-- AUTO_INCREMENT for table `booking_texts`
--
ALTER TABLE `booking_texts`
  MODIFY `text_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654;

--
-- AUTO_INCREMENT for table `booking_timezones`
--
ALTER TABLE `booking_timezones`
  MODIFY `timezone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hash_admin`
--
ALTER TABLE `hash_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pet_products`
--
ALTER TABLE `pet_products`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
