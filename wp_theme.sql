-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2017 at 03:42 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_theme`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-18 11:34:39', '2017-11-18 11:34:39', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp', 'yes'),
(2, 'home', 'http://localhost/wp', 'yes'),
(3, 'blogname', 'Bootstrap to Wordpress!', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fawad_12@outlook.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:161:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"course_features/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"course_features/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"course_features/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"course_features/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"course_features/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"course_features/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"course_features/([^/]+)/embed/?$\";s:48:\"index.php?course_features=$matches[1]&embed=true\";s:36:\"course_features/([^/]+)/trackback/?$\";s:42:\"index.php?course_features=$matches[1]&tb=1\";s:44:\"course_features/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?course_features=$matches[1]&paged=$matches[2]\";s:51:\"course_features/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?course_features=$matches[1]&cpage=$matches[2]\";s:40:\"course_features/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?course_features=$matches[1]&page=$matches[2]\";s:32:\"course_features/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"course_features/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"course_features/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"course_features/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"course_features/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"course_features/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"project_features/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"project_features/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"project_features/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"project_features/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"project_features/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"project_features/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"project_features/([^/]+)/embed/?$\";s:49:\"index.php?project_features=$matches[1]&embed=true\";s:37:\"project_features/([^/]+)/trackback/?$\";s:43:\"index.php?project_features=$matches[1]&tb=1\";s:45:\"project_features/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?project_features=$matches[1]&paged=$matches[2]\";s:52:\"project_features/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?project_features=$matches[1]&cpage=$matches[2]\";s:41:\"project_features/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?project_features=$matches[1]&page=$matches[2]\";s:33:\"project_features/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"project_features/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"project_features/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"project_features/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"project_features/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"project_features/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"testimonial/([^/]+)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:32:\"testimonial/([^/]+)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:40:\"testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:47:\"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:36:\"testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:28:\"testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"resourceslist/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"resourceslist/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"resourceslist/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"resourceslist/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"resourceslist/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"resourceslist/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"resourceslist/([^/]+)/embed/?$\";s:46:\"index.php?resourceslist=$matches[1]&embed=true\";s:34:\"resourceslist/([^/]+)/trackback/?$\";s:40:\"index.php?resourceslist=$matches[1]&tb=1\";s:42:\"resourceslist/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?resourceslist=$matches[1]&paged=$matches[2]\";s:49:\"resourceslist/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?resourceslist=$matches[1]&cpage=$matches[2]\";s:38:\"resourceslist/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?resourceslist=$matches[1]&page=$matches[2]\";s:30:\"resourceslist/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"resourceslist/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"resourceslist/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"resourceslist/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"resourceslist/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"resourceslist/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bootstrap2wordpress', 'yes'),
(41, 'stylesheet', 'bootstrap2wordpress', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '71', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1511264079;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1511264128;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1511278501;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1511004993;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.9.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-4.9-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.9\";s:7:\"version\";s:3:\"4.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1511249370;s:15:\"version_checked\";s:3:\"4.9\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1511249394;s:7:\"checked\";a:4:{s:19:\"bootstrap2wordpress\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_timeout_browser_cb0f25941c7ee58acd15fece4d84c18b', '1511609695', 'no'),
(121, '_site_transient_browser_cb0f25941c7ee58acd15fece4d84c18b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(137, 'current_theme', 'Bootstrap', 'yes'),
(138, 'theme_mods_bootstrap2wordpress', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1511249856;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(140, 'category_children', 'a:0:{}', 'yes'),
(141, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(153, 'WPLANG', '', 'yes'),
(154, 'new_admin_email', 'fawad_12@outlook.com', 'yes'),
(159, 'recently_activated', 'a:0:{}', 'yes'),
(166, 'acf_version', '4.4.12', 'yes'),
(194, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1511249382;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.1\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.6\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:7:\"default\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";s:7:\"default\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(197, 'cptui_new_install', 'false', 'yes'),
(198, 'cptui_post_types', 'a:4:{s:15:\"course_features\";a:28:{s:4:\"name\";s:15:\"course_features\";s:5:\"label\";s:15:\"Course Features\";s:14:\"singular_label\";s:14:\"Course Feature\";s:11:\"description\";s:48:\"The Course Features you want to show up in page.\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:64:\"http://localhost/wp/wp-content/uploads/2017/11/icon-features.png\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:16:\"project_features\";a:28:{s:4:\"name\";s:16:\"project_features\";s:5:\"label\";s:16:\"Project Features\";s:14:\"singular_label\";s:15:\"Project Feature\";s:11:\"description\";s:41:\"These are Project Features for home page.\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:64:\"http://localhost/wp/wp-content/uploads/2017/11/icon-features.png\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:11:\"testimonial\";a:28:{s:4:\"name\";s:11:\"testimonial\";s:5:\"label\";s:12:\"Testimonials\";s:14:\"singular_label\";s:11:\"Testimonial\";s:11:\"description\";s:35:\"In This User Reviews will be added.\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:68:\"http://localhost/wp/wp-content/uploads/2017/11/icon-testimonials.png\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:13:\"resourceslist\";a:28:{s:4:\"name\";s:13:\"resourceslist\";s:5:\"label\";s:9:\"Resources\";s:14:\"singular_label\";s:8:\"Resource\";s:11:\"description\";s:38:\"Your Resources should be added here...\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:65:\"http://localhost/wp/wp-content/uploads/2017/11/icon-resources.png\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:6:\"editor\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(230, 'theme_mods_twentyfifteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1511249880;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(232, '_transient_twentyfifteen_categories', '1', 'yes'),
(238, '_site_transient_timeout_theme_roots', '1511251194', 'no'),
(239, '_site_transient_theme_roots', 'a:4:{s:19:\"bootstrap2wordpress\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(240, '_transient_timeout_files_eeb99be331e95306085de482b68555499104fd3970451f9ea3d25ca', '1511253066', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(241, '_transient_files_eeb99be331e95306085de482b68555499104fd3970451f9ea3d25ca', 'a:93:{s:7:\"404.php\";s:64:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/404.php\";s:7:\"LICENSE\";s:64:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/LICENSE\";s:9:\"README.md\";s:66:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/README.md\";s:11:\"archive.php\";s:68:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/archive.php\";s:34:\"assets/css/bootstrap-theme.min.css\";s:91:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/css/bootstrap-theme.min.css\";s:28:\"assets/css/bootstrap.min.css\";s:85:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/css/bootstrap.min.css\";s:44:\"assets/css/font-awesome/css/font-awesome.css\";s:101:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/css/font-awesome/css/font-awesome.css\";s:48:\"assets/css/font-awesome/css/font-awesome.min.css\";s:105:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/css/font-awesome/css/font-awesome.min.css\";s:45:\"assets/css/font-awesome/fonts/FontAwesome.otf\";s:102:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/css/font-awesome/fonts/FontAwesome.otf\";s:53:\"assets/css/font-awesome/fonts/fontawesome-webfont.eot\";s:110:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/css/font-awesome/fonts/fontawesome-webfont.eot\";s:53:\"assets/css/font-awesome/fonts/fontawesome-webfont.svg\";s:110:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/css/font-awesome/fonts/fontawesome-webfont.svg\";s:53:\"assets/css/font-awesome/fonts/fontawesome-webfont.ttf\";s:110:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/css/font-awesome/fonts/fontawesome-webfont.ttf\";s:54:\"assets/css/font-awesome/fonts/fontawesome-webfont.woff\";s:111:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/css/font-awesome/fonts/fontawesome-webfont.woff\";s:45:\"assets/fonts/glyphicons-halflings-regular.eot\";s:102:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/fonts/glyphicons-halflings-regular.eot\";s:45:\"assets/fonts/glyphicons-halflings-regular.svg\";s:102:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/fonts/glyphicons-halflings-regular.svg\";s:45:\"assets/fonts/glyphicons-halflings-regular.ttf\";s:102:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/fonts/glyphicons-halflings-regular.ttf\";s:46:\"assets/fonts/glyphicons-halflings-regular.woff\";s:103:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/fonts/glyphicons-halflings-regular.woff\";s:17:\"assets/img/aj.png\";s:74:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/aj.png\";s:18:\"assets/img/ben.png\";s:75:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/ben.png\";s:25:\"assets/img/brad-elvis.png\";s:82:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/brad-elvis.png\";s:19:\"assets/img/brad.png\";s:76:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/brad.png\";s:22:\"assets/img/brennan.jpg\";s:79:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/brennan.jpg\";s:25:\"assets/img/coda2-logo.jpg\";s:82:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/coda2-logo.jpg\";s:22:\"assets/img/dark-bg.jpg\";s:79:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/dark-bg.jpg\";s:27:\"assets/img/dropbox-logo.jpg\";s:84:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/dropbox-logo.jpg\";s:21:\"assets/img/ernest.png\";s:78:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/ernest.png\";s:22:\"assets/img/favicon.ico\";s:79:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/favicon.ico\";s:25:\"assets/img/generic-bg.jpg\";s:82:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/generic-bg.jpg\";s:22:\"assets/img/hero-bg.jpg\";s:79:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/hero-bg.jpg\";s:28:\"assets/img/hipster-stuff.jpg\";s:85:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/hipster-stuff.jpg\";s:25:\"assets/img/icon-boost.png\";s:82:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-boost.png\";s:23:\"assets/img/icon-cms.png\";s:80:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-cms.png\";s:24:\"assets/img/icon-code.png\";s:81:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-code.png\";s:28:\"assets/img/icon-computer.png\";s:85:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-computer.png\";s:26:\"assets/img/icon-design.png\";s:83:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-design.png\";s:28:\"assets/img/icon-features.png\";s:85:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-features.png\";s:23:\"assets/img/icon-pad.png\";s:80:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-pad.png\";s:29:\"assets/img/icon-resources.png\";s:86:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-resources.png\";s:26:\"assets/img/icon-rocket.png\";s:83:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-rocket.png\";s:26:\"assets/img/icon-sprite.png\";s:83:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-sprite.png\";s:32:\"assets/img/icon-testimonials.png\";s:89:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/icon-testimonials.png\";s:28:\"assets/img/justhost-logo.jpg\";s:85:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/justhost-logo.jpg\";s:25:\"assets/img/logo-badge.png\";s:82:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/logo-badge.png\";s:19:\"assets/img/logo.png\";s:76:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/logo.png\";s:23:\"assets/img/stuff-bg.jpg\";s:80:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/stuff-bg.jpg\";s:28:\"assets/img/stuff-feature.jpg\";s:85:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/stuff-feature.jpg\";s:19:\"assets/img/tile.jpg\";s:76:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/img/tile.jpg\";s:22:\"assets/js/bootstrap.js\";s:79:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/js/bootstrap.js\";s:26:\"assets/js/bootstrap.min.js\";s:83:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/js/bootstrap.min.js\";s:29:\"assets/js/jquery-2.1.1.min.js\";s:86:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/js/jquery-2.1.1.min.js\";s:17:\"assets/js/main.js\";s:74:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/assets/js/main.js\";s:12:\"comments.php\";s:69:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/comments.php\";s:17:\"content-boost.php\";s:74:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/content-boost.php\";s:23:\"content-courseintro.php\";s:80:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/content-courseintro.php\";s:20:\"content-features.php\";s:77:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/content-features.php\";s:16:\"content-hero.php\";s:73:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/content-hero.php\";s:22:\"content-instructor.php\";s:79:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/content-instructor.php\";s:15:\"content-opt.php\";s:72:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/content-opt.php\";s:27:\"content-projectfeatures.php\";s:84:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/content-projectfeatures.php\";s:23:\"content-testimonial.php\";s:80:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/content-testimonial.php\";s:23:\"content-whobenefits.php\";s:80:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/content-whobenefits.php\";s:11:\"content.php\";s:68:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/content.php\";s:10:\"footer.php\";s:67:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/footer.php\";s:13:\"functions.php\";s:70:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/functions.php\";s:10:\"header.php\";s:67:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/header.php\";s:21:\"inc/custom-header.php\";s:78:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/inc/custom-header.php\";s:18:\"inc/customizer.php\";s:75:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/inc/customizer.php\";s:15:\"inc/jetpack.php\";s:72:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/inc/jetpack.php\";s:26:\"inc/template-functions.php\";s:83:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/inc/template-functions.php\";s:21:\"inc/template-tags.php\";s:78:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/inc/template-tags.php\";s:9:\"index.php\";s:66:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/index.php\";s:16:\"js/customizer.js\";s:73:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/js/customizer.js\";s:16:\"js/navigation.js\";s:73:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/js/navigation.js\";s:25:\"js/skip-link-focus-fix.js\";s:82:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/js/skip-link-focus-fix.js\";s:23:\"languages/bootstrap.pot\";s:80:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/languages/bootstrap.pot\";s:20:\"languages/readme.txt\";s:77:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/languages/readme.txt\";s:27:\"layouts/content-sidebar.css\";s:84:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/layouts/content-sidebar.css\";s:27:\"layouts/sidebar-content.css\";s:84:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/layouts/sidebar-content.css\";s:13:\"page-home.php\";s:70:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/page-home.php\";s:18:\"page-resources.php\";s:75:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/page-resources.php\";s:8:\"page.php\";s:65:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/page.php\";s:14:\"phpcs.xml.dist\";s:71:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/phpcs.xml.dist\";s:10:\"readme.txt\";s:67:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/readme.txt\";s:7:\"rtl.css\";s:64:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/rtl.css\";s:14:\"screenshot.png\";s:71:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/screenshot.png\";s:10:\"search.php\";s:67:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/search.php\";s:11:\"sidebar.php\";s:68:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/sidebar.php\";s:10:\"single.php\";s:67:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/single.php\";s:9:\"style.css\";s:66:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/style.css\";s:31:\"template-parts/content-none.php\";s:88:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/template-parts/content-none.php\";s:31:\"template-parts/content-page.php\";s:88:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/template-parts/content-page.php\";s:33:\"template-parts/content-search.php\";s:90:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/template-parts/content-search.php\";s:26:\"template-parts/content.php\";s:83:\"C:\\xampp\\htdocs\\wp/wp-content/themes/bootstrap2wordpress/template-parts/content.php\";}', 'no'),
(243, '_transient_is_multi_author', '0', 'yes'),
(244, '_transient_doing_cron', '1512472075.0530540943145751953125', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://localhost/wp/'),
(20, 2, '_wp_trash_meta_status', 'publish'),
(21, 2, '_wp_trash_meta_time', '1511019299'),
(22, 2, '_wp_desired_post_slug', 'sample-page'),
(23, 7, '_edit_last', '1'),
(24, 7, '_edit_lock', '1511157677:1'),
(25, 7, '_wp_page_template', 'page-home.php'),
(26, 7, 'pre_launch_price', '$199'),
(27, 7, 'launch_price', '$299'),
(28, 7, 'final_price', '$599'),
(29, 7, 'enrol_text', 'Enroll now &raquo;'),
(30, 7, 'enrol_link', 'http://fb.com'),
(31, 10, '_edit_last', '1'),
(32, 10, 'field_5a110d7da8894', 'a:11:{s:3:\"key\";s:19:\"field_5a110d7da8894\";s:5:\"label\";s:11:\"Boost Image\";s:4:\"name\";s:11:\"boost_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:41:\"Please Upload and Image for Boost Section\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(33, 10, 'field_5a110da7a8895', 'a:14:{s:3:\"key\";s:19:\"field_5a110da7a8895\";s:5:\"label\";s:13:\"Boost Heading\";s:4:\"name\";s:13:\"boost_heading\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"Heading...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(34, 10, 'field_5a110deda8896', 'a:13:{s:3:\"key\";s:19:\"field_5a110deda8896\";s:5:\"label\";s:17:\"Boost Description\";s:4:\"name\";s:17:\"boost_description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:14:\"Description...\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(35, 10, 'field_5a110e9ea889b', 'a:8:{s:3:\"key\";s:19:\"field_5a110e9ea889b\";s:5:\"label\";s:8:\"Reason 1\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(36, 10, 'field_5a110e25a8897', 'a:14:{s:3:\"key\";s:19:\"field_5a110e25a8897\";s:5:\"label\";s:15:\"Reason1 Heading\";s:4:\"name\";s:15:\"reason1_heading\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:7:\"Heading\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(37, 10, 'field_5a110e49a8898', 'a:13:{s:3:\"key\";s:19:\"field_5a110e49a8898\";s:5:\"label\";s:19:\"Reason1 Description\";s:4:\"name\";s:19:\"reason1_description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(38, 10, 'field_5a110ecda889c', 'a:8:{s:3:\"key\";s:19:\"field_5a110ecda889c\";s:5:\"label\";s:8:\"Reason 2\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(39, 10, 'field_5a110e69a8899', 'a:14:{s:3:\"key\";s:19:\"field_5a110e69a8899\";s:5:\"label\";s:15:\"Reason2 Heading\";s:4:\"name\";s:15:\"reason2_heading\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"Heading...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(40, 10, 'field_5a110e7ba889a', 'a:13:{s:3:\"key\";s:19:\"field_5a110e7ba889a\";s:5:\"label\";s:19:\"Reason2 Description\";s:4:\"name\";s:19:\"reason2_description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(43, 10, 'position', 'normal'),
(44, 10, 'layout', 'default'),
(45, 10, 'hide_on_screen', 'a:1:{i:0;s:11:\"the_content\";}'),
(46, 10, '_edit_lock', '1511077849:1'),
(59, 11, '_wp_attached_file', '2017/11/icon-boost.png'),
(60, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:140;s:4:\"file\";s:22:\"2017/11/icon-boost.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 11, '_wp_attachment_image_alt', 'Boost Image'),
(62, 12, 'boost_image', '11'),
(63, 12, '_boost_image', 'field_5a110d7da8894'),
(64, 12, 'boost_heading', 'How You Can Boost Your Income'),
(65, 12, '_boost_heading', 'field_5a110da7a8895'),
(66, 12, 'boost_description', 'Whether youâ€™re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career â€” this course gives you an immensely valuable skill that will enable you to either'),
(67, 12, '_boost_description', 'field_5a110deda8896'),
(68, 12, 'reason1_heading', 'Make money on the side'),
(69, 12, '_reason1_heading', 'field_5a110e25a8897'),
(70, 12, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(71, 12, '_reason1_description', 'field_5a110e49a8898'),
(72, 12, 'reason2_heading', 'Create a full-time income'),
(73, 12, '_reason2_heading', 'field_5a110e69a8899'),
(74, 12, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(75, 12, '_reason2_description', 'field_5a110e7ba889a'),
(76, 7, 'boost_image', '11'),
(77, 7, '_boost_image', 'field_5a110d7da8894'),
(78, 7, 'boost_heading', 'How You Can Boost Your Income'),
(79, 7, '_boost_heading', 'field_5a110da7a8895'),
(80, 7, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(81, 7, '_boost_description', 'field_5a110deda8896'),
(82, 7, 'reason1_heading', 'Make money on the side'),
(83, 7, '_reason1_heading', 'field_5a110e25a8897'),
(84, 7, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(85, 7, '_reason1_description', 'field_5a110e49a8898'),
(86, 7, 'reason2_heading', 'Create a full-time income'),
(87, 7, '_reason2_heading', 'field_5a110e69a8899'),
(88, 7, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(89, 7, '_reason2_description', 'field_5a110e7ba889a'),
(90, 13, 'boost_image', '11'),
(91, 13, '_boost_image', 'field_5a110d7da8894'),
(92, 13, 'boost_heading', 'How You Can Boost Your Income'),
(93, 13, '_boost_heading', 'field_5a110da7a8895'),
(94, 13, 'boost_description', 'Whether you&rsquo;re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(95, 13, '_boost_description', 'field_5a110deda8896'),
(96, 13, 'reason1_heading', 'Make money on the side'),
(97, 13, '_reason1_heading', 'field_5a110e25a8897'),
(98, 13, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(99, 13, '_reason1_description', 'field_5a110e49a8898'),
(100, 13, 'reason2_heading', 'Create a full-time income'),
(101, 13, '_reason2_heading', 'field_5a110e69a8899'),
(102, 13, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(103, 13, '_reason2_description', 'field_5a110e7ba889a'),
(104, 14, 'boost_image', '11'),
(105, 14, '_boost_image', 'field_5a110d7da8894'),
(106, 14, 'boost_heading', 'How You Can Boost Your Income'),
(107, 14, '_boost_heading', 'field_5a110da7a8895'),
(108, 14, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(109, 14, '_boost_description', 'field_5a110deda8896'),
(110, 14, 'reason1_heading', 'Make money on the side'),
(111, 14, '_reason1_heading', 'field_5a110e25a8897'),
(112, 14, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(113, 14, '_reason1_description', 'field_5a110e49a8898'),
(114, 14, 'reason2_heading', 'Create a full-time income'),
(115, 14, '_reason2_heading', 'field_5a110e69a8899'),
(116, 14, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(117, 14, '_reason2_description', 'field_5a110e7ba889a'),
(118, 15, 'boost_image', ''),
(119, 15, '_boost_image', 'field_5a110d7da8894'),
(120, 15, 'boost_heading', 'How You Can Boost Your Income'),
(121, 15, '_boost_heading', 'field_5a110da7a8895'),
(122, 15, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(123, 15, '_boost_description', 'field_5a110deda8896'),
(124, 15, 'reason1_heading', 'Make money on the side'),
(125, 15, '_reason1_heading', 'field_5a110e25a8897'),
(126, 15, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(127, 15, '_reason1_description', 'field_5a110e49a8898'),
(128, 15, 'reason2_heading', 'Create a full-time income'),
(129, 15, '_reason2_heading', 'field_5a110e69a8899'),
(130, 15, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(131, 15, '_reason2_description', 'field_5a110e7ba889a'),
(132, 16, 'boost_image', '11'),
(133, 16, '_boost_image', 'field_5a110d7da8894'),
(134, 16, 'boost_heading', 'How You Can Boost Your Income'),
(135, 16, '_boost_heading', 'field_5a110da7a8895'),
(136, 16, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(137, 16, '_boost_description', 'field_5a110deda8896'),
(138, 16, 'reason1_heading', 'Make money on the side'),
(139, 16, '_reason1_heading', 'field_5a110e25a8897'),
(140, 16, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(141, 16, '_reason1_description', 'field_5a110e49a8898'),
(142, 16, 'reason2_heading', 'Create a full-time income'),
(143, 16, '_reason2_heading', 'field_5a110e69a8899'),
(144, 16, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(145, 16, '_reason2_description', 'field_5a110e7ba889a'),
(146, 17, '_edit_last', '1'),
(147, 17, 'field_5a112797d95ba', 'a:11:{s:3:\"key\";s:19:\"field_5a112797d95ba\";s:5:\"label\";s:16:\"Who Should Image\";s:4:\"name\";s:16:\"who_should_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:28:\"Who Should take this course?\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(148, 17, 'field_5a1127cfd95bb', 'a:14:{s:3:\"key\";s:19:\"field_5a1127cfd95bb\";s:5:\"label\";s:16:\"Who Should Title\";s:4:\"name\";s:16:\"who_should_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"Heading...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(149, 17, 'field_5a1127fdd95bc', 'a:11:{s:3:\"key\";s:19:\"field_5a1127fdd95bc\";s:5:\"label\";s:22:\"Who Should Description\";s:4:\"name\";s:22:\"who_should_description\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";s:2:\"no\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(151, 17, 'position', 'normal'),
(152, 17, 'layout', 'default'),
(153, 17, 'hide_on_screen', ''),
(154, 17, '_edit_lock', '1511076270:1'),
(155, 18, '_wp_attached_file', '2017/11/icon-pad.png'),
(156, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:140;s:4:\"file\";s:20:\"2017/11/icon-pad.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 18, '_wp_attachment_image_alt', 'icon-pad'),
(158, 19, 'boost_image', '11'),
(159, 19, '_boost_image', 'field_5a110d7da8894'),
(160, 19, 'boost_heading', 'How You Can Boost Your Income'),
(161, 19, '_boost_heading', 'field_5a110da7a8895'),
(162, 19, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(163, 19, '_boost_description', 'field_5a110deda8896'),
(164, 19, 'reason1_heading', 'Make money on the side'),
(165, 19, '_reason1_heading', 'field_5a110e25a8897'),
(166, 19, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(167, 19, '_reason1_description', 'field_5a110e49a8898'),
(168, 19, 'reason2_heading', 'Create a full-time income'),
(169, 19, '_reason2_heading', 'field_5a110e69a8899'),
(170, 19, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(171, 19, '_reason2_description', 'field_5a110e7ba889a'),
(172, 19, 'who_should_image', '18'),
(173, 19, '_who_should_image', 'field_5a112797d95ba'),
(174, 19, 'who_should_title', 'Who Should Take This Course?'),
(175, 19, '_who_should_title', 'field_5a1127cfd95bb'),
(176, 19, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(177, 19, '_who_should_description', 'field_5a1127fdd95bc'),
(178, 7, 'who_should_image', '18'),
(179, 7, '_who_should_image', 'field_5a112797d95ba'),
(180, 7, 'who_should_title', 'Who Should Take This Course?'),
(181, 7, '_who_should_title', 'field_5a1127cfd95bb'),
(182, 7, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(183, 7, '_who_should_description', 'field_5a1127fdd95bc'),
(184, 20, '_wp_attached_file', '2017/11/icon-features.png'),
(185, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:18;s:6:\"height\";i:18;s:4:\"file\";s:25:\"2017/11/icon-features.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 10, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(187, 10, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(188, 17, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(189, 1, '_edit_lock', '1511075722:1'),
(190, 22, '_edit_last', '1'),
(191, 22, 'field_5a11304aa577b', 'a:13:{s:3:\"key\";s:19:\"field_5a11304aa577b\";s:5:\"label\";s:18:\"Icons Radio Button\";s:4:\"name\";s:18:\"icons_radio_button\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:7:\"choices\";a:6:{s:14:\"ci ci-computer\";s:8:\"Computer\";s:11:\"ci ci-watch\";s:5:\"Watch\";s:14:\"ci ci-calendar\";s:8:\"Calendar\";s:15:\"ci ci-community\";s:9:\"Community\";s:16:\"ci ci-instructor\";s:10:\"Instructor\";s:12:\"ci ci-device\";s:6:\"Device\";}s:12:\"other_choice\";s:1:\"0\";s:17:\"save_other_choice\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(193, 22, 'position', 'normal'),
(194, 22, 'layout', 'no_box'),
(195, 22, 'hide_on_screen', ''),
(196, 22, '_edit_lock', '1511077835:1'),
(197, 22, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"course_features\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(198, 23, '_edit_last', '1'),
(199, 23, 'icons_radio_button', 'ci ci-device'),
(200, 23, '_icons_radio_button', 'field_5a11304aa577b'),
(201, 23, '_edit_lock', '1511076064:1'),
(202, 25, '_edit_last', '1'),
(203, 25, 'icons_radio_button', 'ci ci-computer'),
(204, 25, '_icons_radio_button', 'field_5a11304aa577b'),
(205, 25, '_edit_lock', '1511076105:1'),
(206, 26, '_edit_last', '1'),
(207, 26, '_edit_lock', '1511076129:1'),
(208, 26, 'icons_radio_button', 'ci ci-watch'),
(209, 26, '_icons_radio_button', 'field_5a11304aa577b'),
(210, 27, '_edit_last', '1'),
(211, 27, 'icons_radio_button', 'ci ci-calendar'),
(212, 27, '_icons_radio_button', 'field_5a11304aa577b'),
(213, 27, '_edit_lock', '1511076149:1'),
(214, 28, '_edit_last', '1'),
(215, 28, '_edit_lock', '1511076168:1'),
(216, 28, 'icons_radio_button', 'ci ci-community'),
(217, 28, '_icons_radio_button', 'field_5a11304aa577b'),
(218, 29, '_edit_last', '1'),
(219, 29, '_edit_lock', '1511077882:1'),
(220, 29, 'icons_radio_button', 'ci ci-instructor'),
(221, 29, '_icons_radio_button', 'field_5a11304aa577b'),
(222, 30, '_edit_last', '1'),
(223, 30, 'field_5a113265779b6', 'a:14:{s:3:\"key\";s:19:\"field_5a113265779b6\";s:5:\"label\";s:14:\"Features Title\";s:4:\"name\";s:14:\"features_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(224, 30, 'field_5a113295779b7', 'a:13:{s:3:\"key\";s:19:\"field_5a113295779b7\";s:5:\"label\";s:20:\"Features Description\";s:4:\"name\";s:20:\"features_description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(226, 30, 'position', 'normal'),
(227, 30, 'layout', 'default'),
(228, 30, 'hide_on_screen', ''),
(229, 30, '_edit_lock', '1511078096:1'),
(230, 30, 'field_5a11359b33409', 'a:11:{s:3:\"key\";s:19:\"field_5a11359b33409\";s:5:\"label\";s:14:\"Features Image\";s:4:\"name\";s:14:\"features_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(232, 31, '_wp_attached_file', '2017/11/icon-rocket.png'),
(233, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:140;s:4:\"file\";s:23:\"2017/11/icon-rocket.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 31, '_wp_attachment_image_alt', 'Rocket Icon'),
(235, 32, 'boost_image', '11'),
(236, 32, '_boost_image', 'field_5a110d7da8894'),
(237, 32, 'boost_heading', 'How You Can Boost Your Income'),
(238, 32, '_boost_heading', 'field_5a110da7a8895'),
(239, 32, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(240, 32, '_boost_description', 'field_5a110deda8896'),
(241, 32, 'reason1_heading', 'Make money on the side'),
(242, 32, '_reason1_heading', 'field_5a110e25a8897'),
(243, 32, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(244, 32, '_reason1_description', 'field_5a110e49a8898'),
(245, 32, 'reason2_heading', 'Create a full-time income'),
(246, 32, '_reason2_heading', 'field_5a110e69a8899'),
(247, 32, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(248, 32, '_reason2_description', 'field_5a110e7ba889a'),
(249, 32, 'who_should_image', '18'),
(250, 32, '_who_should_image', 'field_5a112797d95ba'),
(251, 32, 'who_should_title', 'Who Should Take This Course?'),
(252, 32, '_who_should_title', 'field_5a1127cfd95bb'),
(253, 32, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(254, 32, '_who_should_description', 'field_5a1127fdd95bc'),
(255, 32, 'features_image', '31'),
(256, 32, '_features_image', 'field_5a11359b33409'),
(257, 32, 'features_title', 'Course Features'),
(258, 32, '_features_title', 'field_5a113265779b6'),
(259, 32, 'features_description', 'These are the Course Features...'),
(260, 32, '_features_description', 'field_5a113295779b7'),
(261, 7, 'features_image', '31'),
(262, 7, '_features_image', 'field_5a11359b33409'),
(263, 7, 'features_title', 'Course Features'),
(264, 7, '_features_title', 'field_5a113265779b6'),
(265, 7, 'features_description', 'These are the Course Features...'),
(266, 7, '_features_description', 'field_5a113295779b7'),
(270, 29, '_wp_old_slug', 'direct-access-to-the-instructor__trashed'),
(274, 23, '_wp_old_slug', 'lifetime-access-to-80-lectures__trashed'),
(275, 30, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(276, 33, '_edit_last', '1'),
(277, 33, '_edit_lock', '1511078893:1'),
(278, 34, '_wp_attached_file', '2017/11/icon-design.png'),
(279, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:140;s:4:\"file\";s:23:\"2017/11/icon-design.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(280, 34, '_wp_attachment_image_alt', 'Design Icon'),
(281, 33, '_thumbnail_id', '34'),
(282, 35, '_edit_last', '1'),
(283, 35, 'field_5a113c93fb886', 'a:14:{s:3:\"key\";s:19:\"field_5a113c93fb886\";s:5:\"label\";s:13:\"Project Title\";s:4:\"name\";s:13:\"project_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:11:\"Heading....\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(284, 35, 'field_5a113cc0fb887', 'a:13:{s:3:\"key\";s:19:\"field_5a113cc0fb887\";s:5:\"label\";s:19:\"Project Description\";s:4:\"name\";s:19:\"project_description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:22:\"Project Description...\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(285, 35, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(286, 35, 'position', 'normal'),
(287, 35, 'layout', 'default'),
(288, 35, 'hide_on_screen', ''),
(289, 35, '_edit_lock', '1511079928:1'),
(290, 36, 'boost_image', '11'),
(291, 36, '_boost_image', 'field_5a110d7da8894'),
(292, 36, 'boost_heading', 'How You Can Boost Your Income'),
(293, 36, '_boost_heading', 'field_5a110da7a8895'),
(294, 36, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(295, 36, '_boost_description', 'field_5a110deda8896'),
(296, 36, 'reason1_heading', 'Make money on the side'),
(297, 36, '_reason1_heading', 'field_5a110e25a8897'),
(298, 36, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(299, 36, '_reason1_description', 'field_5a110e49a8898'),
(300, 36, 'reason2_heading', 'Create a full-time income'),
(301, 36, '_reason2_heading', 'field_5a110e69a8899'),
(302, 36, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(303, 36, '_reason2_description', 'field_5a110e7ba889a'),
(304, 36, 'who_should_image', '18'),
(305, 36, '_who_should_image', 'field_5a112797d95ba'),
(306, 36, 'who_should_title', 'Who Should Take This Course?'),
(307, 36, '_who_should_title', 'field_5a1127cfd95bb'),
(308, 36, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(309, 36, '_who_should_description', 'field_5a1127fdd95bc'),
(310, 36, 'features_image', '31'),
(311, 36, '_features_image', 'field_5a11359b33409'),
(312, 36, 'features_title', 'Course Features'),
(313, 36, '_features_title', 'field_5a113265779b6'),
(314, 36, 'features_description', 'These are the Course Features...'),
(315, 36, '_features_description', 'field_5a113295779b7'),
(316, 36, 'project_title', 'Final Project Features'),
(317, 36, '_project_title', 'field_5a113c93fb886'),
(318, 36, 'project_description', 'Throughout this entire course, you work towards building an incredibly beautiful website. Want to see the website you are going to build? You\'re looking at it! The website you\'re using right now is the website you will have built entirely by yourself, by the end of this course.'),
(319, 36, '_project_description', 'field_5a113cc0fb887'),
(320, 7, 'project_title', 'Final Project Features'),
(321, 7, '_project_title', 'field_5a113c93fb886'),
(322, 7, 'project_description', 'Throughout this entire course, you work towards building an incredibly beautiful website. Want to see the website you are going to build? You\'re looking at it! The website you\'re using right now is the website you will have built entirely by yourself, by the end of this course.'),
(323, 7, '_project_description', 'field_5a113cc0fb887'),
(324, 38, '_wp_attached_file', '2017/11/icon-code.png'),
(325, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:140;s:4:\"file\";s:21:\"2017/11/icon-code.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(326, 37, '_edit_last', '1'),
(327, 37, '_thumbnail_id', '38'),
(328, 37, '_edit_lock', '1511079249:1'),
(329, 39, '_edit_last', '1'),
(330, 39, '_edit_lock', '1511079286:1'),
(331, 40, '_wp_attached_file', '2017/11/icon-cms.png'),
(332, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:140;s:4:\"file\";s:20:\"2017/11/icon-cms.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 40, '_wp_attachment_image_alt', 'Edit Icon'),
(334, 39, '_thumbnail_id', '40'),
(335, 41, '_edit_last', '1'),
(336, 41, 'field_5a11401a72033', 'a:14:{s:3:\"key\";s:19:\"field_5a11401a72033\";s:5:\"label\";s:12:\"Course Title\";s:4:\"name\";s:12:\"course_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:12:\"Course Title\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(337, 41, 'field_5a11403f72034', 'a:14:{s:3:\"key\";s:19:\"field_5a11403f72034\";s:5:\"label\";s:12:\"Course Video\";s:4:\"name\";s:12:\"course_video\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(339, 41, 'position', 'normal'),
(340, 41, 'layout', 'default'),
(341, 41, 'hide_on_screen', ''),
(342, 41, '_edit_lock', '1511083243:1'),
(343, 42, 'boost_image', '11'),
(344, 42, '_boost_image', 'field_5a110d7da8894'),
(345, 42, 'boost_heading', 'How You Can Boost Your Income'),
(346, 42, '_boost_heading', 'field_5a110da7a8895'),
(347, 42, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(348, 42, '_boost_description', 'field_5a110deda8896'),
(349, 42, 'reason1_heading', 'Make money on the side'),
(350, 42, '_reason1_heading', 'field_5a110e25a8897'),
(351, 42, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(352, 42, '_reason1_description', 'field_5a110e49a8898'),
(353, 42, 'reason2_heading', 'Create a full-time income'),
(354, 42, '_reason2_heading', 'field_5a110e69a8899'),
(355, 42, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(356, 42, '_reason2_description', 'field_5a110e7ba889a'),
(357, 42, 'who_should_image', '18'),
(358, 42, '_who_should_image', 'field_5a112797d95ba'),
(359, 42, 'who_should_title', 'Who Should Take This Course?'),
(360, 42, '_who_should_title', 'field_5a1127cfd95bb'),
(361, 42, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(362, 42, '_who_should_description', 'field_5a1127fdd95bc'),
(363, 42, 'features_image', '31'),
(364, 42, '_features_image', 'field_5a11359b33409'),
(365, 42, 'features_title', 'Course Features'),
(366, 42, '_features_title', 'field_5a113265779b6'),
(367, 42, 'features_description', 'These are the Course Features...'),
(368, 42, '_features_description', 'field_5a113295779b7'),
(369, 42, 'project_title', 'Final Project Features'),
(370, 42, '_project_title', 'field_5a113c93fb886'),
(371, 42, 'project_description', 'Throughout this entire course, you work towards building an incredibly beautiful website. Want to see the website you are going to build? You\'re looking at it! The website you\'re using right now is the website you will have built entirely by yourself, by the end of this course.'),
(372, 42, '_project_description', 'field_5a113cc0fb887'),
(373, 42, 'course_title', 'Watch the Course Introduction'),
(374, 42, '_course_title', 'field_5a11401a72033'),
(375, 42, 'course_video', '34'),
(376, 42, '_course_video', 'field_5a11403f72034'),
(377, 7, 'course_title', 'Watch the Course Introduction'),
(378, 7, '_course_title', 'field_5a11401a72033'),
(379, 7, 'course_video', '//www.youtube.com/embed/q-mJJsnOHew'),
(380, 7, '_course_video', 'field_5a11403f72034'),
(381, 41, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(382, 43, 'boost_image', '11'),
(383, 43, '_boost_image', 'field_5a110d7da8894'),
(384, 43, 'boost_heading', 'How You Can Boost Your Income'),
(385, 43, '_boost_heading', 'field_5a110da7a8895'),
(386, 43, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(387, 43, '_boost_description', 'field_5a110deda8896');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(388, 43, 'reason1_heading', 'Make money on the side'),
(389, 43, '_reason1_heading', 'field_5a110e25a8897'),
(390, 43, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(391, 43, '_reason1_description', 'field_5a110e49a8898'),
(392, 43, 'reason2_heading', 'Create a full-time income'),
(393, 43, '_reason2_heading', 'field_5a110e69a8899'),
(394, 43, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(395, 43, '_reason2_description', 'field_5a110e7ba889a'),
(396, 43, 'who_should_image', '18'),
(397, 43, '_who_should_image', 'field_5a112797d95ba'),
(398, 43, 'who_should_title', 'Who Should Take This Course?'),
(399, 43, '_who_should_title', 'field_5a1127cfd95bb'),
(400, 43, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(401, 43, '_who_should_description', 'field_5a1127fdd95bc'),
(402, 43, 'features_image', '31'),
(403, 43, '_features_image', 'field_5a11359b33409'),
(404, 43, 'features_title', 'Course Features'),
(405, 43, '_features_title', 'field_5a113265779b6'),
(406, 43, 'features_description', 'These are the Course Features...'),
(407, 43, '_features_description', 'field_5a113295779b7'),
(408, 43, 'project_title', 'Final Project Features'),
(409, 43, '_project_title', 'field_5a113c93fb886'),
(410, 43, 'project_description', 'Throughout this entire course, you work towards building an incredibly beautiful website. Want to see the website you are going to build? You\'re looking at it! The website you\'re using right now is the website you will have built entirely by yourself, by the end of this course.'),
(411, 43, '_project_description', 'field_5a113cc0fb887'),
(412, 43, 'course_title', 'Watch the Course Introduction'),
(413, 43, '_course_title', 'field_5a11401a72033'),
(414, 43, 'course_video', '//www.youtube.com/embed/q-mJJsnOHew'),
(415, 43, '_course_video', 'field_5a11403f72034'),
(416, 44, '_edit_last', '1'),
(417, 44, 'field_5a114d8ad6fe6', 'a:14:{s:3:\"key\";s:19:\"field_5a114d8ad6fe6\";s:5:\"label\";s:16:\"Instructor Title\";s:4:\"name\";s:16:\"instructor_title\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(418, 44, 'field_5a114db0d6fe7', 'a:14:{s:3:\"key\";s:19:\"field_5a114db0d6fe7\";s:5:\"label\";s:15:\"Instructor Name\";s:4:\"name\";s:15:\"instructor_name\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(419, 44, 'field_5a114dced6fe8', 'a:14:{s:3:\"key\";s:19:\"field_5a114dced6fe8\";s:5:\"label\";s:16:\"Instructor Intro\";s:4:\"name\";s:16:\"instructor_intro\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(420, 44, 'field_5a114df4d6fe9', 'a:13:{s:3:\"key\";s:19:\"field_5a114df4d6fe9\";s:5:\"label\";s:22:\"Instructor Brief Intro\";s:4:\"name\";s:22:\"instructor_brief_intro\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(421, 44, 'field_5a114fa9d6ff1', 'a:8:{s:3:\"key\";s:19:\"field_5a114fa9d6ff1\";s:5:\"label\";s:7:\"Numbers\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(422, 44, 'field_5a114e21d6fea', 'a:14:{s:3:\"key\";s:19:\"field_5a114e21d6fea\";s:5:\"label\";s:18:\"Number of Students\";s:4:\"name\";s:12:\"num_students\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(423, 44, 'field_5a114e75d6feb', 'a:15:{s:3:\"key\";s:19:\"field_5a114e75d6feb\";s:5:\"label\";s:17:\"Number of Reviews\";s:4:\"name\";s:14:\"number_reviews\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(424, 44, 'field_5a114e98d6fec', 'a:15:{s:3:\"key\";s:19:\"field_5a114e98d6fec\";s:5:\"label\";s:17:\"Number of Cources\";s:4:\"name\";s:14:\"number_cources\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(425, 44, 'field_5a114eb9d6fed', 'a:8:{s:3:\"key\";s:19:\"field_5a114eb9d6fed\";s:5:\"label\";s:12:\"Social Icons\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(426, 44, 'field_5a114ed1d6fee', 'a:14:{s:3:\"key\";s:19:\"field_5a114ed1d6fee\";s:5:\"label\";s:17:\"Facebook Username\";s:4:\"name\";s:17:\"facebook_username\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(427, 44, 'field_5a114f66d6fef', 'a:14:{s:3:\"key\";s:19:\"field_5a114f66d6fef\";s:5:\"label\";s:16:\"Twitter Username\";s:4:\"name\";s:16:\"twitter_username\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"FawadBinTariq\";s:7:\"prepend\";s:1:\"@\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(428, 44, 'field_5a114f86d6ff0', 'a:14:{s:3:\"key\";s:19:\"field_5a114f86d6ff0\";s:5:\"label\";s:20:\"Google Plus Username\";s:4:\"name\";s:15:\"google_username\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"FawadBinTariq\";s:7:\"prepend\";s:1:\"+\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(430, 44, 'position', 'normal'),
(431, 44, 'layout', 'default'),
(432, 44, 'hide_on_screen', ''),
(433, 44, '_edit_lock', '1511084633:1'),
(434, 45, 'instructor_title', 'Your Instructor '),
(435, 45, '_instructor_title', 'field_5a114d8ad6fe6'),
(436, 45, 'instructor_name', 'Fawad Bin Tariq'),
(437, 45, '_instructor_name', 'field_5a114db0d6fe7'),
(438, 45, 'instructor_intro', ' A highly skilled professional, Fawad Bin Tariq is a passionate and experienced web designer, developer, blogger and digital entrepreneur.'),
(439, 45, '_instructor_intro', 'field_5a114dced6fe8'),
(440, 45, 'instructor_brief_intro', 'Hailing from North Of The Wall (Yellowknife, Canada), Brad made the trek to the Wet Coast (Vancouver, Canada) to educate and equip himself with the necessary skills to become a spearhead in his trade of solving problems on the web, crafting design solutions, and speaking in code.\r\n\r\nBrad\'s determination and love for what he does has landed him in some pretty interesting places with some neat people. He\'s had the privilege of working with, and providing solutions for, numerous businesses, big & small, across the Americas.\r\n\r\nBrad builds custom websites, and provides design solutions for a wide-array of clientele at his company, Brightside Studios. He regularly blogs about passive income, living your life to the fullest, and provides premium quality web design tutorials and courses for tens of thousands of amazing people desiring to master their craft.'),
(441, 45, '_instructor_brief_intro', 'field_5a114df4d6fe9'),
(442, 45, 'num_students', '41,000+'),
(443, 45, '_num_students', 'field_5a114e21d6fea'),
(444, 45, 'number_reviews', '567'),
(445, 45, '_number_reviews', 'field_5a114e75d6feb'),
(446, 45, 'number_cources', '7'),
(447, 45, '_number_cources', 'field_5a114e98d6fec'),
(448, 45, '_', 'field_5a114ed1d6fee'),
(449, 45, 'twitter_username', 'FawadBinTariq'),
(450, 45, '_twitter_username', 'field_5a114f66d6fef'),
(451, 45, 'google_username', 'fbt'),
(452, 45, '_google_username', 'field_5a114f86d6ff0'),
(453, 45, 'boost_image', '11'),
(454, 45, '_boost_image', 'field_5a110d7da8894'),
(455, 45, 'boost_heading', 'How You Can Boost Your Income'),
(456, 45, '_boost_heading', 'field_5a110da7a8895'),
(457, 45, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(458, 45, '_boost_description', 'field_5a110deda8896'),
(459, 45, 'reason1_heading', 'Make money on the side'),
(460, 45, '_reason1_heading', 'field_5a110e25a8897'),
(461, 45, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(462, 45, '_reason1_description', 'field_5a110e49a8898'),
(463, 45, 'reason2_heading', 'Create a full-time income'),
(464, 45, '_reason2_heading', 'field_5a110e69a8899'),
(465, 45, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(466, 45, '_reason2_description', 'field_5a110e7ba889a'),
(467, 45, 'who_should_image', '18'),
(468, 45, '_who_should_image', 'field_5a112797d95ba'),
(469, 45, 'who_should_title', 'Who Should Take This Course?'),
(470, 45, '_who_should_title', 'field_5a1127cfd95bb'),
(471, 45, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(472, 45, '_who_should_description', 'field_5a1127fdd95bc'),
(473, 45, 'features_image', '31'),
(474, 45, '_features_image', 'field_5a11359b33409'),
(475, 45, 'features_title', 'Course Features'),
(476, 45, '_features_title', 'field_5a113265779b6'),
(477, 45, 'features_description', 'These are the Course Features...'),
(478, 45, '_features_description', 'field_5a113295779b7'),
(479, 45, 'project_title', 'Final Project Features'),
(480, 45, '_project_title', 'field_5a113c93fb886'),
(481, 45, 'project_description', 'Throughout this entire course, you work towards building an incredibly beautiful website. Want to see the website you are going to build? You\'re looking at it! The website you\'re using right now is the website you will have built entirely by yourself, by the end of this course.'),
(482, 45, '_project_description', 'field_5a113cc0fb887'),
(483, 45, 'course_title', 'Watch the Course Introduction'),
(484, 45, '_course_title', 'field_5a11401a72033'),
(485, 45, 'course_video', '//www.youtube.com/embed/q-mJJsnOHew'),
(486, 45, '_course_video', 'field_5a11403f72034'),
(487, 7, 'instructor_title', 'Your Instructor '),
(488, 7, '_instructor_title', 'field_5a114d8ad6fe6'),
(489, 7, 'instructor_name', 'Fawad Bin Tariq'),
(490, 7, '_instructor_name', 'field_5a114db0d6fe7'),
(491, 7, 'instructor_intro', ' A highly skilled professional, Fawad Bin Tariq is a passionate and experienced web designer, developer, blogger and digital entrepreneur.'),
(492, 7, '_instructor_intro', 'field_5a114dced6fe8'),
(493, 7, 'instructor_brief_intro', 'Hailing from North Of The Wall (Yellowknife, Canada), Brad made the trek to the Wet Coast (Vancouver, Canada) to educate and equip himself with the necessary skills to become a spearhead in his trade of solving problems on the web, crafting design solutions, and speaking in code.\r\n\r\nBrad\'s determination and love for what he does has landed him in some pretty interesting places with some neat people. He\'s had the privilege of working with, and providing solutions for, numerous businesses, big & small, across the Americas.\r\n\r\nBrad builds custom websites, and provides design solutions for a wide-array of clientele at his company, Brightside Studios. He regularly blogs about passive income, living your life to the fullest, and provides premium quality web design tutorials and courses for tens of thousands of amazing people desiring to master their craft.'),
(494, 7, '_instructor_brief_intro', 'field_5a114df4d6fe9'),
(495, 7, 'num_students', '41,000+'),
(496, 7, '_num_students', 'field_5a114e21d6fea'),
(497, 7, 'number_reviews', '567'),
(498, 7, '_number_reviews', 'field_5a114e75d6feb'),
(499, 7, 'number_cources', '7'),
(500, 7, '_number_cources', 'field_5a114e98d6fec'),
(501, 7, '_', 'field_5a114ed1d6fee'),
(502, 7, 'twitter_username', 'FawadBinTariq'),
(503, 7, '_twitter_username', 'field_5a114f66d6fef'),
(504, 7, 'google_username', 'fbt'),
(505, 7, '_google_username', 'field_5a114f86d6ff0'),
(507, 44, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(508, 46, 'instructor_title', 'Your Instructor '),
(509, 46, '_instructor_title', 'field_5a114d8ad6fe6'),
(510, 46, 'instructor_name', 'Fawad Bin Tariq'),
(511, 46, '_instructor_name', 'field_5a114db0d6fe7'),
(512, 46, 'instructor_intro', ' A highly skilled professional, Fawad Bin Tariq is a passionate and experienced web designer, developer, blogger and digital entrepreneur.'),
(513, 46, '_instructor_intro', 'field_5a114dced6fe8'),
(514, 46, 'instructor_brief_intro', 'Hailing from North Of The Wall (Yellowknife, Canada), Brad made the trek to the Wet Coast (Vancouver, Canada) to educate and equip himself with the necessary skills to become a spearhead in his trade of solving problems on the web, crafting design solutions, and speaking in code.\r\n\r\nBrad\'s determination and love for what he does has landed him in some pretty interesting places with some neat people. He\'s had the privilege of working with, and providing solutions for, numerous businesses, big & small, across the Americas.\r\n\r\nBrad builds custom websites, and provides design solutions for a wide-array of clientele at his company, Brightside Studios. He regularly blogs about passive income, living your life to the fullest, and provides premium quality web design tutorials and courses for tens of thousands of amazing people desiring to master their craft.'),
(515, 46, '_instructor_brief_intro', 'field_5a114df4d6fe9'),
(516, 46, 'num_students', '41,000+'),
(517, 46, '_num_students', 'field_5a114e21d6fea'),
(518, 46, 'number_reviews', '567'),
(519, 46, '_number_reviews', 'field_5a114e75d6feb'),
(520, 46, 'number_cources', '7'),
(521, 46, '_number_cources', 'field_5a114e98d6fec'),
(522, 46, 'facebook_username', 'fawad.b.tariq'),
(523, 46, '_facebook_username', 'field_5a114ed1d6fee'),
(524, 46, 'twitter_username', 'FawadBinTariq'),
(525, 46, '_twitter_username', 'field_5a114f66d6fef'),
(526, 46, 'google_username', 'fbt'),
(527, 46, '_google_username', 'field_5a114f86d6ff0'),
(528, 46, 'boost_image', '11'),
(529, 46, '_boost_image', 'field_5a110d7da8894'),
(530, 46, 'boost_heading', 'How You Can Boost Your Income'),
(531, 46, '_boost_heading', 'field_5a110da7a8895'),
(532, 46, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(533, 46, '_boost_description', 'field_5a110deda8896'),
(534, 46, 'reason1_heading', 'Make money on the side'),
(535, 46, '_reason1_heading', 'field_5a110e25a8897'),
(536, 46, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(537, 46, '_reason1_description', 'field_5a110e49a8898'),
(538, 46, 'reason2_heading', 'Create a full-time income'),
(539, 46, '_reason2_heading', 'field_5a110e69a8899'),
(540, 46, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(541, 46, '_reason2_description', 'field_5a110e7ba889a'),
(542, 46, 'who_should_image', '18'),
(543, 46, '_who_should_image', 'field_5a112797d95ba'),
(544, 46, 'who_should_title', 'Who Should Take This Course?'),
(545, 46, '_who_should_title', 'field_5a1127cfd95bb'),
(546, 46, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(547, 46, '_who_should_description', 'field_5a1127fdd95bc'),
(548, 46, 'features_image', '31'),
(549, 46, '_features_image', 'field_5a11359b33409'),
(550, 46, 'features_title', 'Course Features'),
(551, 46, '_features_title', 'field_5a113265779b6'),
(552, 46, 'features_description', 'These are the Course Features...'),
(553, 46, '_features_description', 'field_5a113295779b7'),
(554, 46, 'project_title', 'Final Project Features'),
(555, 46, '_project_title', 'field_5a113c93fb886'),
(556, 46, 'project_description', 'Throughout this entire course, you work towards building an incredibly beautiful website. Want to see the website you are going to build? You\'re looking at it! The website you\'re using right now is the website you will have built entirely by yourself, by the end of this course.'),
(557, 46, '_project_description', 'field_5a113cc0fb887'),
(558, 46, 'course_title', 'Watch the Course Introduction'),
(559, 46, '_course_title', 'field_5a11401a72033'),
(560, 46, 'course_video', '//www.youtube.com/embed/q-mJJsnOHew'),
(561, 46, '_course_video', 'field_5a11403f72034'),
(562, 7, 'facebook_username', 'fawad.b.tariq'),
(563, 7, '_facebook_username', 'field_5a114ed1d6fee'),
(564, 47, '_wp_attached_file', '2017/11/icon-testimonials.png'),
(565, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:18;s:6:\"height\";i:17;s:4:\"file\";s:29:\"2017/11/icon-testimonials.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(566, 49, '_edit_last', '1'),
(567, 49, '_edit_lock', '1511084772:1'),
(568, 50, '_wp_attached_file', '2017/11/brennan.jpg'),
(569, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2017/11/brennan.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"brennan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(570, 49, '_thumbnail_id', '50'),
(571, 51, '_edit_last', '1'),
(572, 51, '_edit_lock', '1511084807:1'),
(573, 52, '_wp_attached_file', '2017/11/ben.png'),
(574, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:15:\"2017/11/ben.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ben-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(575, 51, '_thumbnail_id', '52'),
(576, 53, '_edit_last', '1'),
(577, 53, '_edit_lock', '1511084839:1'),
(578, 54, '_wp_attached_file', '2017/11/aj.png'),
(579, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:14:\"2017/11/aj.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"aj-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(580, 53, '_thumbnail_id', '54'),
(581, 55, '_edit_last', '1'),
(582, 55, 'field_5a1153d335515', 'a:14:{s:3:\"key\";s:19:\"field_5a1153d335515\";s:5:\"label\";s:20:\"Testimonial Heading \";s:4:\"name\";s:20:\"testimonial_heading_\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(583, 55, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(584, 55, 'position', 'normal'),
(585, 55, 'layout', 'default'),
(586, 55, 'hide_on_screen', ''),
(587, 55, '_edit_lock', '1511085378:1'),
(588, 56, 'boost_image', '11'),
(589, 56, '_boost_image', 'field_5a110d7da8894'),
(590, 56, 'boost_heading', 'How You Can Boost Your Income'),
(591, 56, '_boost_heading', 'field_5a110da7a8895'),
(592, 56, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(593, 56, '_boost_description', 'field_5a110deda8896'),
(594, 56, 'reason1_heading', 'Make money on the side'),
(595, 56, '_reason1_heading', 'field_5a110e25a8897'),
(596, 56, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(597, 56, '_reason1_description', 'field_5a110e49a8898'),
(598, 56, 'reason2_heading', 'Create a full-time income'),
(599, 56, '_reason2_heading', 'field_5a110e69a8899'),
(600, 56, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(601, 56, '_reason2_description', 'field_5a110e7ba889a'),
(602, 56, 'who_should_image', '18'),
(603, 56, '_who_should_image', 'field_5a112797d95ba'),
(604, 56, 'who_should_title', 'Who Should Take This Course?'),
(605, 56, '_who_should_title', 'field_5a1127cfd95bb'),
(606, 56, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(607, 56, '_who_should_description', 'field_5a1127fdd95bc'),
(608, 56, 'features_image', '31'),
(609, 56, '_features_image', 'field_5a11359b33409'),
(610, 56, 'features_title', 'Course Features'),
(611, 56, '_features_title', 'field_5a113265779b6'),
(612, 56, 'features_description', 'These are the Course Features...'),
(613, 56, '_features_description', 'field_5a113295779b7'),
(614, 56, 'project_title', 'Final Project Features'),
(615, 56, '_project_title', 'field_5a113c93fb886'),
(616, 56, 'project_description', 'Throughout this entire course, you work towards building an incredibly beautiful website. Want to see the website you are going to build? You\'re looking at it! The website you\'re using right now is the website you will have built entirely by yourself, by the end of this course.'),
(617, 56, '_project_description', 'field_5a113cc0fb887'),
(618, 56, 'course_title', 'Watch the Course Introduction'),
(619, 56, '_course_title', 'field_5a11401a72033'),
(620, 56, 'course_video', '//www.youtube.com/embed/q-mJJsnOHew'),
(621, 56, '_course_video', 'field_5a11403f72034'),
(622, 56, 'instructor_title', 'Your Instructor '),
(623, 56, '_instructor_title', 'field_5a114d8ad6fe6'),
(624, 56, 'instructor_name', 'Fawad Bin Tariq'),
(625, 56, '_instructor_name', 'field_5a114db0d6fe7'),
(626, 56, 'instructor_intro', ' A highly skilled professional, Fawad Bin Tariq is a passionate and experienced web designer, developer, blogger and digital entrepreneur.'),
(627, 56, '_instructor_intro', 'field_5a114dced6fe8'),
(628, 56, 'instructor_brief_intro', 'Hailing from North Of The Wall (Yellowknife, Canada), Brad made the trek to the Wet Coast (Vancouver, Canada) to educate and equip himself with the necessary skills to become a spearhead in his trade of solving problems on the web, crafting design solutions, and speaking in code.\r\n\r\nBrad\'s determination and love for what he does has landed him in some pretty interesting places with some neat people. He\'s had the privilege of working with, and providing solutions for, numerous businesses, big & small, across the Americas.\r\n\r\nBrad builds custom websites, and provides design solutions for a wide-array of clientele at his company, Brightside Studios. He regularly blogs about passive income, living your life to the fullest, and provides premium quality web design tutorials and courses for tens of thousands of amazing people desiring to master their craft.'),
(629, 56, '_instructor_brief_intro', 'field_5a114df4d6fe9'),
(630, 56, 'num_students', '41,000+'),
(631, 56, '_num_students', 'field_5a114e21d6fea'),
(632, 56, 'number_reviews', '567'),
(633, 56, '_number_reviews', 'field_5a114e75d6feb'),
(634, 56, 'number_cources', '7'),
(635, 56, '_number_cources', 'field_5a114e98d6fec'),
(636, 56, 'facebook_username', 'fawad.b.tariq'),
(637, 56, '_facebook_username', 'field_5a114ed1d6fee'),
(638, 56, 'twitter_username', 'FawadBinTariq'),
(639, 56, '_twitter_username', 'field_5a114f66d6fef'),
(640, 56, 'google_username', 'fbt'),
(641, 56, '_google_username', 'field_5a114f86d6ff0'),
(642, 56, 'testimonial_heading_', 'What People Are Saying About Fawad'),
(643, 56, '_testimonial_heading_', 'field_5a1153d335515'),
(644, 7, 'testimonial_heading_', 'What People Are Saying About Fawad'),
(645, 7, '_testimonial_heading_', 'field_5a1153d335515'),
(646, 57, '_edit_last', '1'),
(647, 57, '_edit_lock', '1511094363:1'),
(648, 57, '_wp_page_template', 'default'),
(649, 58, '_menu_item_type', 'post_type'),
(650, 58, '_menu_item_menu_item_parent', '0'),
(651, 58, '_menu_item_object_id', '57'),
(652, 58, '_menu_item_object', 'page'),
(653, 58, '_menu_item_target', ''),
(654, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(655, 58, '_menu_item_xfn', ''),
(656, 58, '_menu_item_url', ''),
(657, 60, '_wp_attached_file', '2017/11/stuff-bg.jpg'),
(658, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:20:\"2017/11/stuff-bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"stuff-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"stuff-bg-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"stuff-bg-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"stuff-bg-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(660, 61, '_wp_attached_file', '2017/11/hero-bg.jpg'),
(661, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:724;s:4:\"file\";s:19:\"2017/11/hero-bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"hero-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"hero-bg-300x109.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"hero-bg-768x278.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"hero-bg-1024x371.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:371;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(662, 63, '_wp_attached_file', '2017/11/icon-resources.png'),
(663, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:18;s:6:\"height\";i:15;s:4:\"file\";s:26:\"2017/11/icon-resources.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(664, 63, '_wp_attachment_image_alt', 'Resources'),
(665, 64, '_edit_last', '1'),
(666, 64, 'field_5a116c90e911e', 'a:11:{s:3:\"key\";s:19:\"field_5a116c90e911e\";s:5:\"label\";s:14:\"Resource Image\";s:4:\"name\";s:14:\"resource_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:31:\"Please add your resource image.\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(667, 64, 'field_5a116cb8e911f', 'a:14:{s:3:\"key\";s:19:\"field_5a116cb8e911f\";s:5:\"label\";s:12:\"Resource Url\";s:4:\"name\";s:12:\"resource_url\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:16:\"http://fawad.com\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(668, 64, 'field_5a116ce6e9120', 'a:10:{s:3:\"key\";s:19:\"field_5a116ce6e9120\";s:5:\"label\";s:11:\"Add Button?\";s:4:\"name\";s:10:\"add_button\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:26:\"Do you want to add button?\";s:8:\"required\";s:1:\"0\";s:7:\"message\";s:0:\"\";s:13:\"default_value\";s:1:\"1\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(669, 64, 'field_5a116d08e9121', 'a:14:{s:3:\"key\";s:19:\"field_5a116d08e9121\";s:5:\"label\";s:11:\"Button Text\";s:4:\"name\";s:11:\"button_text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"1\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a116ce6e9120\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(670, 64, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"resourceslist\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(671, 64, 'position', 'normal'),
(672, 64, 'layout', 'default'),
(673, 64, 'hide_on_screen', ''),
(674, 64, '_edit_lock', '1511092340:1'),
(675, 65, '_edit_last', '1'),
(676, 65, '_edit_lock', '1511091787:1'),
(677, 66, '_wp_attached_file', '2017/11/justhost-logo.jpg'),
(678, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:200;s:4:\"file\";s:25:\"2017/11/justhost-logo.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"justhost-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"justhost-logo-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(679, 65, 'resource_image', '66'),
(680, 65, '_resource_image', 'field_5a116c90e911e'),
(681, 65, 'resource_url', 'http://fawad.com'),
(682, 65, '_resource_url', 'field_5a116cb8e911f'),
(683, 65, 'add_button', '1'),
(684, 65, '_add_button', 'field_5a116ce6e9120'),
(685, 65, 'button_text', 'Getting Started with justhost'),
(686, 65, '_button_text', 'field_5a116d08e9121'),
(687, 67, '_edit_last', '1'),
(688, 67, '_edit_lock', '1511092420:1'),
(689, 68, '_wp_attached_file', '2017/11/coda2-logo.jpg'),
(690, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:200;s:4:\"file\";s:22:\"2017/11/coda2-logo.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"coda2-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"coda2-logo-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(691, 67, 'resource_image', '68'),
(692, 67, '_resource_image', 'field_5a116c90e911e'),
(693, 67, 'resource_url', 'http://fb.com'),
(694, 67, '_resource_url', 'field_5a116cb8e911f'),
(695, 67, 'add_button', '1'),
(696, 67, '_add_button', 'field_5a116ce6e9120'),
(697, 67, 'button_text', 'Check out Coda 2'),
(698, 67, '_button_text', 'field_5a116d08e9121'),
(699, 69, '_edit_last', '1'),
(700, 69, '_edit_lock', '1511092476:1'),
(701, 70, '_wp_attached_file', '2017/11/dropbox-logo.jpg'),
(702, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2017/11/dropbox-logo.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"dropbox-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"dropbox-logo-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(703, 69, 'resource_image', '70'),
(704, 69, '_resource_image', 'field_5a116c90e911e'),
(705, 69, 'resource_url', 'http://google.com'),
(706, 69, '_resource_url', 'field_5a116cb8e911f'),
(707, 69, 'add_button', '1'),
(708, 69, '_add_button', 'field_5a116ce6e9120'),
(709, 69, 'button_text', 'Try Dropbox for free!'),
(710, 69, '_button_text', 'field_5a116d08e9121'),
(711, 71, '_edit_last', '1'),
(712, 71, '_edit_lock', '1511092797:1'),
(713, 71, '_wp_page_template', 'default'),
(714, 72, '_menu_item_type', 'post_type'),
(715, 72, '_menu_item_menu_item_parent', '0'),
(716, 72, '_menu_item_object_id', '71'),
(717, 72, '_menu_item_object', 'page'),
(718, 72, '_menu_item_target', ''),
(719, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(720, 72, '_menu_item_xfn', ''),
(721, 72, '_menu_item_url', ''),
(722, 74, '_edit_last', '1'),
(723, 74, '_edit_lock', '1511147783:1'),
(724, 74, 'resource_image', '50'),
(725, 74, '_resource_image', 'field_5a116c90e911e'),
(726, 74, 'resource_url', 'http://abc.com'),
(727, 74, '_resource_url', 'field_5a116cb8e911f'),
(728, 74, 'add_button', '1'),
(729, 74, '_add_button', 'field_5a116ce6e9120'),
(730, 74, 'button_text', 'Click Me'),
(731, 74, '_button_text', 'field_5a116d08e9121'),
(732, 75, 'boost_image', ''),
(733, 75, '_boost_image', 'field_5a110d7da8894'),
(734, 75, 'boost_heading', 'How You Can Boost Your Income'),
(735, 75, '_boost_heading', 'field_5a110da7a8895'),
(736, 75, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(737, 75, '_boost_description', 'field_5a110deda8896'),
(738, 75, 'reason1_heading', 'Make money on the side'),
(739, 75, '_reason1_heading', 'field_5a110e25a8897'),
(740, 75, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(741, 75, '_reason1_description', 'field_5a110e49a8898'),
(742, 75, 'reason2_heading', 'Create a full-time income'),
(743, 75, '_reason2_heading', 'field_5a110e69a8899');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(744, 75, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(745, 75, '_reason2_description', 'field_5a110e7ba889a'),
(746, 75, 'who_should_image', '18'),
(747, 75, '_who_should_image', 'field_5a112797d95ba'),
(748, 75, 'who_should_title', 'Who Should Take This Course?'),
(749, 75, '_who_should_title', 'field_5a1127cfd95bb'),
(750, 75, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(751, 75, '_who_should_description', 'field_5a1127fdd95bc'),
(752, 75, 'features_image', '31'),
(753, 75, '_features_image', 'field_5a11359b33409'),
(754, 75, 'features_title', 'Course Features'),
(755, 75, '_features_title', 'field_5a113265779b6'),
(756, 75, 'features_description', 'These are the Course Features...'),
(757, 75, '_features_description', 'field_5a113295779b7'),
(758, 75, 'project_title', 'Final Project Features'),
(759, 75, '_project_title', 'field_5a113c93fb886'),
(760, 75, 'project_description', 'Throughout this entire course, you work towards building an incredibly beautiful website. Want to see the website you are going to build? You\'re looking at it! The website you\'re using right now is the website you will have built entirely by yourself, by the end of this course.'),
(761, 75, '_project_description', 'field_5a113cc0fb887'),
(762, 75, 'course_title', 'Watch the Course Introduction'),
(763, 75, '_course_title', 'field_5a11401a72033'),
(764, 75, 'course_video', '//www.youtube.com/embed/q-mJJsnOHew'),
(765, 75, '_course_video', 'field_5a11403f72034'),
(766, 75, 'instructor_title', 'Your Instructor '),
(767, 75, '_instructor_title', 'field_5a114d8ad6fe6'),
(768, 75, 'instructor_name', 'Fawad Bin Tariq'),
(769, 75, '_instructor_name', 'field_5a114db0d6fe7'),
(770, 75, 'instructor_intro', ' A highly skilled professional, Fawad Bin Tariq is a passionate and experienced web designer, developer, blogger and digital entrepreneur.'),
(771, 75, '_instructor_intro', 'field_5a114dced6fe8'),
(772, 75, 'instructor_brief_intro', 'Hailing from North Of The Wall (Yellowknife, Canada), Brad made the trek to the Wet Coast (Vancouver, Canada) to educate and equip himself with the necessary skills to become a spearhead in his trade of solving problems on the web, crafting design solutions, and speaking in code.\r\n\r\nBrad\'s determination and love for what he does has landed him in some pretty interesting places with some neat people. He\'s had the privilege of working with, and providing solutions for, numerous businesses, big & small, across the Americas.\r\n\r\nBrad builds custom websites, and provides design solutions for a wide-array of clientele at his company, Brightside Studios. He regularly blogs about passive income, living your life to the fullest, and provides premium quality web design tutorials and courses for tens of thousands of amazing people desiring to master their craft.'),
(773, 75, '_instructor_brief_intro', 'field_5a114df4d6fe9'),
(774, 75, 'num_students', '41,000+'),
(775, 75, '_num_students', 'field_5a114e21d6fea'),
(776, 75, 'number_reviews', '567'),
(777, 75, '_number_reviews', 'field_5a114e75d6feb'),
(778, 75, 'number_cources', '7'),
(779, 75, '_number_cources', 'field_5a114e98d6fec'),
(780, 75, 'facebook_username', 'fawad.b.tariq'),
(781, 75, '_facebook_username', 'field_5a114ed1d6fee'),
(782, 75, 'twitter_username', 'FawadBinTariq'),
(783, 75, '_twitter_username', 'field_5a114f66d6fef'),
(784, 75, 'google_username', 'fbt'),
(785, 75, '_google_username', 'field_5a114f86d6ff0'),
(786, 75, 'testimonial_heading_', 'What People Are Saying About Fawad'),
(787, 75, '_testimonial_heading_', 'field_5a1153d335515'),
(788, 76, 'boost_image', '11'),
(789, 76, '_boost_image', 'field_5a110d7da8894'),
(790, 76, 'boost_heading', 'How You Can Boost Your Income'),
(791, 76, '_boost_heading', 'field_5a110da7a8895'),
(792, 76, 'boost_description', 'Whether you\'re a freelance designer, entrepreneur, employee for a company, code hobbyist, or looking for a new career &mdash; this course gives you an immensely valuable skill that will enable you to either'),
(793, 76, '_boost_description', 'field_5a110deda8896'),
(794, 76, 'reason1_heading', 'Make money on the side'),
(795, 76, '_reason1_heading', 'field_5a110e25a8897'),
(796, 76, 'reason1_description', 'So you can save up for that Hawaiian vacation youâ€™ve been wanting, help pay off your debt, your car, your mortgage, or simply just to have bonus cash laying around.'),
(797, 76, '_reason1_description', 'field_5a110e49a8898'),
(798, 76, 'reason2_heading', 'Create a full-time income'),
(799, 76, '_reason2_heading', 'field_5a110e69a8899'),
(800, 76, 'reason2_description', 'WordPress developers have options. Many developers make a generous living off of creating custom WordPress themes and selling them on websites like ThemeForest. Freelance designers and developers can also take on WordPress projects and make an extra $1,000 - $5,000+ per month.'),
(801, 76, '_reason2_description', 'field_5a110e7ba889a'),
(802, 76, 'who_should_image', '18'),
(803, 76, '_who_should_image', 'field_5a112797d95ba'),
(804, 76, 'who_should_title', 'Who Should Take This Course?'),
(805, 76, '_who_should_title', 'field_5a1127cfd95bb'),
(806, 76, 'who_should_description', '<h3>Graphic &amp; Web Designers</h3>\r\nGraphic designers are extremely talented, but ask them to code their designs and they\'ll freeze up! This leaves them with no other choice but to hire a web developer. Any professional graphic designers knows web developers can be expensive.\r\n\r\nIf youâ€™re a designer, learning to code your own WordPress websites can change your business entirely! Now, not only are you a great designer, but you\'re a skillful developer, too! This puts you in a position toÂ <strong>make an extra $1,000 - $5,000 per project.</strong>\r\n<h3>Entrepreneurs</h3>\r\nEntrepreneurs have big dreams, and in many cases, shoestring budgets. In order to survive in the cut-throat world of the Startup company, itâ€™s a necessity to have a world-class website. However, world-class websites come with a large price tag.\r\n\r\nIf you can learn how to build a high-quality startup website by yourself, then youâ€™ve just saved yourself a lot of cash,Â <strong>tens of thousands of dollars in many cases.</strong>\r\n<h3>Employees</h3>\r\nAny company knows the education &amp; training of their employees is key to a thriving team.\r\n\r\nDepending on the type of company you work for, if you understand how to code, and can develop CMS driven websites, that gives youÂ <strong>negotiating power for a better position, or a higher salary.</strong>\r\n<h3>Code Hobbyists</h3>\r\nItâ€™s fun to learn challenging new skills. Code hobbyists can add dynamic websites to their arsenal of tools to play with â€” you can evenÂ <strong>sell WordPress themes and plugins for cash!</strong>Â The possibilities are truly endless.\r\n<h3>People Looking for a New Career</h3>\r\nAre you out of work? Looking for a more rewarding job? Desire a career that can allow you to work almost anywhere in the world? Becoming a Web Developer might be the answer for you.\r\n\r\n<strong>Web developers are paid well, anywhere from $33,000 to more than $105,000 per year.</strong>Â They get to work at amazing companies that are changing the world, or they enjoy the ability to start their own companies, become location-independent and work from home, from coffee shops, in an airplane, on the beach, or wherever they want!'),
(807, 76, '_who_should_description', 'field_5a1127fdd95bc'),
(808, 76, 'features_image', '31'),
(809, 76, '_features_image', 'field_5a11359b33409'),
(810, 76, 'features_title', 'Course Features'),
(811, 76, '_features_title', 'field_5a113265779b6'),
(812, 76, 'features_description', 'These are the Course Features...'),
(813, 76, '_features_description', 'field_5a113295779b7'),
(814, 76, 'project_title', 'Final Project Features'),
(815, 76, '_project_title', 'field_5a113c93fb886'),
(816, 76, 'project_description', 'Throughout this entire course, you work towards building an incredibly beautiful website. Want to see the website you are going to build? You\'re looking at it! The website you\'re using right now is the website you will have built entirely by yourself, by the end of this course.'),
(817, 76, '_project_description', 'field_5a113cc0fb887'),
(818, 76, 'course_title', 'Watch the Course Introduction'),
(819, 76, '_course_title', 'field_5a11401a72033'),
(820, 76, 'course_video', '//www.youtube.com/embed/q-mJJsnOHew'),
(821, 76, '_course_video', 'field_5a11403f72034'),
(822, 76, 'instructor_title', 'Your Instructor '),
(823, 76, '_instructor_title', 'field_5a114d8ad6fe6'),
(824, 76, 'instructor_name', 'Fawad Bin Tariq'),
(825, 76, '_instructor_name', 'field_5a114db0d6fe7'),
(826, 76, 'instructor_intro', ' A highly skilled professional, Fawad Bin Tariq is a passionate and experienced web designer, developer, blogger and digital entrepreneur.'),
(827, 76, '_instructor_intro', 'field_5a114dced6fe8'),
(828, 76, 'instructor_brief_intro', 'Hailing from North Of The Wall (Yellowknife, Canada), Brad made the trek to the Wet Coast (Vancouver, Canada) to educate and equip himself with the necessary skills to become a spearhead in his trade of solving problems on the web, crafting design solutions, and speaking in code.\r\n\r\nBrad\'s determination and love for what he does has landed him in some pretty interesting places with some neat people. He\'s had the privilege of working with, and providing solutions for, numerous businesses, big & small, across the Americas.\r\n\r\nBrad builds custom websites, and provides design solutions for a wide-array of clientele at his company, Brightside Studios. He regularly blogs about passive income, living your life to the fullest, and provides premium quality web design tutorials and courses for tens of thousands of amazing people desiring to master their craft.'),
(829, 76, '_instructor_brief_intro', 'field_5a114df4d6fe9'),
(830, 76, 'num_students', '41,000+'),
(831, 76, '_num_students', 'field_5a114e21d6fea'),
(832, 76, 'number_reviews', '567'),
(833, 76, '_number_reviews', 'field_5a114e75d6feb'),
(834, 76, 'number_cources', '7'),
(835, 76, '_number_cources', 'field_5a114e98d6fec'),
(836, 76, 'facebook_username', 'fawad.b.tariq'),
(837, 76, '_facebook_username', 'field_5a114ed1d6fee'),
(838, 76, 'twitter_username', 'FawadBinTariq'),
(839, 76, '_twitter_username', 'field_5a114f66d6fef'),
(840, 76, 'google_username', 'fbt'),
(841, 76, '_google_username', 'field_5a114f86d6ff0'),
(842, 76, 'testimonial_heading_', 'What People Are Saying About Fawad'),
(843, 76, '_testimonial_heading_', 'field_5a1153d335515'),
(844, 74, '_wp_trash_meta_status', 'publish'),
(845, 74, '_wp_trash_meta_time', '1511157830'),
(846, 74, '_wp_desired_post_slug', 'my-new-res'),
(847, 77, '_edit_last', '1'),
(848, 77, '_edit_lock', '1511157751:1'),
(849, 77, 'resource_image', '66'),
(850, 77, '_resource_image', 'field_5a116c90e911e'),
(851, 77, 'resource_url', 'http://abc.com'),
(852, 77, '_resource_url', 'field_5a116cb8e911f'),
(853, 77, 'add_button', '0'),
(854, 77, '_add_button', 'field_5a116ce6e9120'),
(855, 78, '_edit_last', '1'),
(856, 78, '_edit_lock', '1511157822:1'),
(857, 78, 'resource_image', '68'),
(858, 78, '_resource_image', 'field_5a116c90e911e'),
(859, 78, 'resource_url', 'http://fawad.com'),
(860, 78, '_resource_url', 'field_5a116cb8e911f'),
(861, 78, 'add_button', '1'),
(862, 78, '_add_button', 'field_5a116ce6e9120'),
(863, 78, 'button_text', 'Hello'),
(864, 78, '_button_text', 'field_5a116d08e9121'),
(865, 79, '_edit_last', '1'),
(866, 79, '_edit_lock', '1511157874:1'),
(867, 79, '_wp_page_template', 'default'),
(868, 80, '_menu_item_type', 'post_type'),
(869, 80, '_menu_item_menu_item_parent', '0'),
(870, 80, '_menu_item_object_id', '79'),
(871, 80, '_menu_item_object', 'page'),
(872, 80, '_menu_item_target', ''),
(873, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(874, 80, '_menu_item_xfn', ''),
(875, 80, '_menu_item_url', ''),
(876, 79, '_wp_trash_meta_status', 'publish'),
(877, 79, '_wp_trash_meta_time', '1511158022'),
(878, 79, '_wp_desired_post_slug', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-18 11:34:39', '2017-11-18 11:34:39', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-11-18 11:34:39', '2017-11-18 11:34:39', '', 0, 'http://localhost/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-18 11:34:39', '2017-11-18 11:34:39', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-11-18 15:34:59', '2017-11-18 15:34:59', '', 0, 'http://localhost/wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-11-18 11:34:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-18 11:34:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?p=3', 0, 'post', '', 0),
(4, 1, '2017-11-18 14:03:56', '2017-11-18 14:03:56', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-11-19 11:02:50', '2017-11-19 11:02:50', '', 0, 'http://localhost/wp/?p=4', 1, 'nav_menu_item', '', 0),
(6, 1, '2017-11-18 15:34:59', '2017-11-18 15:34:59', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-11-18 15:34:59', '2017-11-18 15:34:59', '', 2, 'http://localhost/wp/2017/11/18/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-11-18 15:35:12', '2017-11-18 15:35:12', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-11-20 06:03:10', '2017-11-20 06:03:10', '', 0, 'http://localhost/wp/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-11-18 15:35:12', '2017-11-18 15:35:12', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-18 15:35:12', '2017-11-18 15:35:12', '', 7, 'http://localhost/wp/2017/11/18/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-11-19 04:49:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 04:49:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?post_type=acf&p=9', 0, 'acf', '', 0),
(10, 1, '2017-11-19 04:56:08', '2017-11-19 04:56:08', '', 'Boost Income Section', '', 'publish', 'closed', 'closed', '', 'acf_boost-income-section', '', '', '2017-11-19 07:17:15', '2017-11-19 07:17:15', '', 0, 'http://localhost/wp/?post_type=acf&#038;p=10', 0, 'acf', '', 0),
(11, 1, '2017-11-19 05:00:52', '2017-11-19 05:00:52', '', 'icon-boost', '', 'inherit', 'open', 'closed', '', 'icon-boost', '', '', '2017-11-19 05:01:10', '2017-11-19 05:01:10', '', 7, 'http://localhost/wp/wp-content/uploads/2017/11/icon-boost.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2017-11-19 05:02:22', '2017-11-19 05:02:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 05:02:22', '2017-11-19 05:02:22', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-11-19 05:10:20', '2017-11-19 05:10:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 05:10:20', '2017-11-19 05:10:20', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-11-19 05:12:23', '2017-11-19 05:12:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 05:12:23', '2017-11-19 05:12:23', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-11-19 05:53:37', '2017-11-19 05:53:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 05:53:37', '2017-11-19 05:53:37', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-11-19 05:53:54', '2017-11-19 05:53:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 05:53:54', '2017-11-19 05:53:54', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-11-19 06:43:52', '2017-11-19 06:43:52', '', 'Who Should Take This Course Section', '', 'publish', 'closed', 'closed', '', 'acf_who-should-take-this-course-section', '', '', '2017-11-19 07:17:33', '2017-11-19 07:17:33', '', 0, 'http://localhost/wp/?post_type=acf&#038;p=17', 0, 'acf', '', 0),
(18, 1, '2017-11-19 06:44:42', '2017-11-19 06:44:42', '', 'icon-pad', '', 'inherit', 'open', 'closed', '', 'icon-pad', '', '', '2017-11-19 06:44:55', '2017-11-19 06:44:55', '', 7, 'http://localhost/wp/wp-content/uploads/2017/11/icon-pad.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2017-11-19 06:45:34', '2017-11-19 06:45:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 06:45:34', '2017-11-19 06:45:34', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-11-19 07:07:40', '2017-11-19 07:07:40', '', 'icon-features', '', 'inherit', 'open', 'closed', '', 'icon-features', '', '', '2017-11-19 07:07:40', '2017-11-19 07:07:40', '', 0, 'http://localhost/wp/wp-content/uploads/2017/11/icon-features.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2017-11-19 07:18:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 07:18:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?post_type=course_features&p=21', 0, 'course_features', '', 0),
(22, 1, '2017-11-19 07:21:37', '2017-11-19 07:21:37', '', 'Course Features Icons', '', 'publish', 'closed', 'closed', '', 'acf_course-features-icons', '', '', '2017-11-19 07:21:46', '2017-11-19 07:21:46', '', 0, 'http://localhost/wp/?post_type=acf&#038;p=22', 0, 'acf', '', 0),
(23, 1, '2017-11-19 07:22:04', '2017-11-19 07:22:04', '', 'Accessible content on your mobile devices', '', 'publish', 'closed', 'closed', '', 'lifetime-access-to-80-lectures', '', '', '2017-11-19 07:56:17', '2017-11-19 07:56:17', '', 0, 'http://localhost/wp/?post_type=course_features&#038;p=23', 0, 'course_features', '', 0),
(24, 1, '2017-11-19 07:23:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 07:23:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?post_type=course_features&p=24', 0, 'course_features', '', 0),
(25, 1, '2017-11-19 07:24:06', '2017-11-19 07:24:06', '', 'Lifetime access to 80+ lectures', '', 'publish', 'closed', 'closed', '', 'lifetime-access-to-80-lectures-2', '', '', '2017-11-19 07:24:06', '2017-11-19 07:24:06', '', 0, 'http://localhost/wp/?post_type=course_features&#038;p=25', 0, 'course_features', '', 0),
(26, 1, '2017-11-19 07:24:31', '2017-11-19 07:24:31', '', '10+ hours of HD video content', '', 'publish', 'closed', 'closed', '', '10-hours-of-hd-video-content', '', '', '2017-11-19 07:24:31', '2017-11-19 07:24:31', '', 0, 'http://localhost/wp/?post_type=course_features&#038;p=26', 0, 'course_features', '', 0),
(27, 1, '2017-11-19 07:24:46', '2017-11-19 07:24:46', '', '30-day money back guarantee', '', 'publish', 'closed', 'closed', '', '30-day-money-back-guarantee', '', '', '2017-11-19 07:24:46', '2017-11-19 07:24:46', '', 0, 'http://localhost/wp/?post_type=course_features&#038;p=27', 0, 'course_features', '', 0),
(28, 1, '2017-11-19 07:25:05', '2017-11-19 07:25:05', '', 'Access to a community of like-minded students', '', 'publish', 'closed', 'closed', '', 'access-to-a-community-of-like-minded-students', '', '', '2017-11-19 07:25:05', '2017-11-19 07:25:05', '', 0, 'http://localhost/wp/?post_type=course_features&#038;p=28', 0, 'course_features', '', 0),
(29, 1, '2017-11-19 07:25:17', '2017-11-19 07:25:17', '', 'Direct access to the instructor', '', 'publish', 'closed', 'closed', '', 'direct-access-to-the-instructor', '', '', '2017-11-19 07:55:17', '2017-11-19 07:55:17', '', 0, 'http://localhost/wp/?post_type=course_features&#038;p=29', 0, 'course_features', '', 0),
(30, 1, '2017-11-19 07:28:57', '2017-11-19 07:28:57', '', 'Course Features Section', '', 'publish', 'closed', 'closed', '', 'acf_course-features-section', '', '', '2017-11-19 07:57:16', '2017-11-19 07:57:16', '', 0, 'http://localhost/wp/?post_type=acf&#038;p=30', 0, 'acf', '', 0),
(31, 1, '2017-11-19 07:45:56', '2017-11-19 07:45:56', '', 'icon-rocket', '', 'inherit', 'open', 'closed', '', 'icon-rocket', '', '', '2017-11-19 07:46:05', '2017-11-19 07:46:05', '', 7, 'http://localhost/wp/wp-content/uploads/2017/11/icon-rocket.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2017-11-19 07:46:39', '2017-11-19 07:46:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 07:46:39', '2017-11-19 07:46:39', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-11-19 08:10:34', '2017-11-19 08:10:34', 'You get to work with a modern, professional quality design &amp; layout.', 'Sexy & Modern Design', '', 'publish', 'closed', 'closed', '', 'sexy-modern-design', '', '', '2017-11-19 08:10:34', '2017-11-19 08:10:34', '', 0, 'http://localhost/wp/?post_type=project_features&#038;p=33', 0, 'project_features', '', 0),
(34, 1, '2017-11-19 08:10:15', '2017-11-19 08:10:15', '', 'icon-design', '', 'inherit', 'open', 'closed', '', 'icon-design', '', '', '2017-11-19 08:10:32', '2017-11-19 08:10:32', '', 33, 'http://localhost/wp/wp-content/uploads/2017/11/icon-design.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2017-11-19 08:12:38', '2017-11-19 08:12:38', '', 'Project Feature Section', '', 'publish', 'closed', 'closed', '', 'acf_project-feature-section', '', '', '2017-11-19 08:12:38', '2017-11-19 08:12:38', '', 0, 'http://localhost/wp/?post_type=acf&#038;p=35', 0, 'acf', '', 0),
(36, 1, '2017-11-19 08:13:21', '2017-11-19 08:13:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 08:13:21', '2017-11-19 08:13:21', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-11-19 08:16:31', '2017-11-19 08:16:31', 'You\'ll learn how hand-craft a stunning website with valid, semantic and beautiful HTML5 &amp; CSS3.', 'Quality HTML5 & CSS3', '', 'publish', 'closed', 'closed', '', 'quality-html5-css3', '', '', '2017-11-19 08:16:31', '2017-11-19 08:16:31', '', 0, 'http://localhost/wp/?post_type=project_features&#038;p=37', 0, 'project_features', '', 0),
(38, 1, '2017-11-19 08:16:22', '2017-11-19 08:16:22', 'Code Icon', 'icon-code', '', 'inherit', 'open', 'closed', '', 'icon-code', '', '', '2017-11-19 08:16:28', '2017-11-19 08:16:28', '', 37, 'http://localhost/wp/wp-content/uploads/2017/11/icon-code.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2017-11-19 08:17:08', '2017-11-19 08:17:08', 'Allow your clients to easily update their websites by converting your static websites to dynamic websites, using WordPress.', 'Easy-to-use CMS', '', 'publish', 'closed', 'closed', '', 'easy-to-use-cms', '', '', '2017-11-19 08:17:08', '2017-11-19 08:17:08', '', 0, 'http://localhost/wp/?post_type=project_features&#038;p=39', 0, 'project_features', '', 0),
(40, 1, '2017-11-19 08:16:58', '2017-11-19 08:16:58', '', 'icon-cms', '', 'inherit', 'open', 'closed', '', 'icon-cms', '', '', '2017-11-19 08:17:06', '2017-11-19 08:17:06', '', 39, 'http://localhost/wp/wp-content/uploads/2017/11/icon-cms.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2017-11-19 08:27:33', '2017-11-19 08:27:33', '', 'Course Introduction Section', '', 'publish', 'closed', 'closed', '', 'acf_course-introduction-section', '', '', '2017-11-19 09:21:48', '2017-11-19 09:21:48', '', 0, 'http://localhost/wp/?post_type=acf&#038;p=41', 0, 'acf', '', 0),
(42, 1, '2017-11-19 09:19:45', '2017-11-19 09:19:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 09:19:45', '2017-11-19 09:19:45', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-11-19 09:22:35', '2017-11-19 09:22:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 09:22:35', '2017-11-19 09:22:35', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-11-19 09:33:00', '2017-11-19 09:33:00', '', 'Your Instructor Section', '', 'publish', 'closed', 'closed', '', 'acf_your-instructor-section', '', '', '2017-11-19 09:41:58', '2017-11-19 09:41:58', '', 0, 'http://localhost/wp/?post_type=acf&#038;p=44', 0, 'acf', '', 0),
(45, 1, '2017-11-19 09:35:04', '2017-11-19 09:35:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 09:35:04', '2017-11-19 09:35:04', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-11-19 09:42:20', '2017-11-19 09:42:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 09:42:20', '2017-11-19 09:42:20', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-11-19 09:47:48', '2017-11-19 09:47:48', '', 'icon-testimonials', '', 'inherit', 'open', 'closed', '', 'icon-testimonials', '', '', '2017-11-19 09:47:48', '2017-11-19 09:47:48', '', 0, 'http://localhost/wp/wp-content/uploads/2017/11/icon-testimonials.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2017-11-19 09:48:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 09:48:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?post_type=testimonial&p=48', 0, 'testimonial', '', 0),
(49, 1, '2017-11-19 09:48:35', '2017-11-19 09:48:35', 'These videos are well created, concise, fast-paced, easy to follow, and just funny enough to keep you chuckling as you\'re slamming out lines of code. I\'ve taken 3 courses from this instructor. Whenever I have questions he is right there with a simple solution or a helpful suggestion to keep me going forward with the course work.', 'â€” Brennan, graduate of all of Brad\'s courses', '', 'publish', 'closed', 'closed', '', 'brennan-graduate-of-all-of-brads-courses', '', '', '2017-11-19 09:48:35', '2017-11-19 09:48:35', '', 0, 'http://localhost/wp/?post_type=testimonial&#038;p=49', 0, 'testimonial', '', 0),
(50, 1, '2017-11-19 09:48:31', '2017-11-19 09:48:31', '', 'brennan', '', 'inherit', 'open', 'closed', '', 'brennan', '', '', '2017-11-19 09:48:31', '2017-11-19 09:48:31', '', 49, 'http://localhost/wp/wp-content/uploads/2017/11/brennan.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2017-11-19 09:49:09', '2017-11-19 09:49:09', 'I found Brad to be a great teacher, and a very inspiring person. It\'s clear he is very passionate about helping designers learn to code, and I look forward to more courses from him!', 'â€” Ben, graduate of Build a Website from Scratch with HTML & CSS', '', 'publish', 'closed', 'closed', '', 'ben-graduate-of-build-a-website-from-scratch-with-html-css', '', '', '2017-11-19 09:49:09', '2017-11-19 09:49:09', '', 0, 'http://localhost/wp/?post_type=testimonial&#038;p=51', 0, 'testimonial', '', 0),
(52, 1, '2017-11-19 09:49:03', '2017-11-19 09:49:03', '', 'ben', '', 'inherit', 'open', 'closed', '', 'ben', '', '', '2017-11-19 09:49:03', '2017-11-19 09:49:03', '', 51, 'http://localhost/wp/wp-content/uploads/2017/11/ben.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2017-11-19 09:49:41', '2017-11-19 09:49:41', 'Brad is amazing and I honestly think he\'s the best tutor of all the courses I have taken on Udemy. Will definitely be following him in the future. Thanks Brad!', 'â€” AJ, graduate of Code a Responsive Website with Bootstrap 3', '', 'publish', 'closed', 'closed', '', 'aj-graduate-of-code-a-responsive-website-with-bootstrap-3', '', '', '2017-11-19 09:49:41', '2017-11-19 09:49:41', '', 0, 'http://localhost/wp/?post_type=testimonial&#038;p=53', 0, 'testimonial', '', 0),
(54, 1, '2017-11-19 09:49:37', '2017-11-19 09:49:37', '', 'aj', '', 'inherit', 'open', 'closed', '', 'aj', '', '', '2017-11-19 09:49:37', '2017-11-19 09:49:37', '', 53, 'http://localhost/wp/wp-content/uploads/2017/11/aj.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2017-11-19 09:50:58', '2017-11-19 09:50:58', '', 'Testimonial Section', '', 'publish', 'closed', 'closed', '', 'acf_testimonial-section', '', '', '2017-11-19 09:50:58', '2017-11-19 09:50:58', '', 0, 'http://localhost/wp/?post_type=acf&#038;p=55', 0, 'acf', '', 0),
(56, 1, '2017-11-19 09:51:22', '2017-11-19 09:51:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-19 09:51:22', '2017-11-19 09:51:22', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2017-11-19 11:03:05', '2017-11-19 11:03:05', '<p class=\"lead\">Welcome to the Bootstrap to WordPress resources page! On this page, I will provide you with useful resources, plugins, tools, applications, and websites to help make your life as a coder a little bit easier.Â <strong>I recommend adding this page to your bookmarks for convenient future reference.</strong></p>\r\n<em>Please keep in mind that some of the following resources are my affiliate links, and should you decide to make a purchase, I will earn a small commission â€” at no extra cost to you! I am recommending these resources only because I have found them to be incredibly helpful. Donâ€™t spend your money on any products or resources unless you think they will benefit you.</em>', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2017-11-19 12:26:03', '2017-11-19 12:26:03', '', 0, 'http://localhost/wp/?page_id=57', 0, 'page', '', 0),
(58, 1, '2017-11-19 11:03:05', '2017-11-19 11:03:05', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2017-11-19 11:03:05', '2017-11-19 11:03:05', '', 0, 'http://localhost/wp/uncategorized/58/', 2, 'nav_menu_item', '', 0),
(59, 1, '2017-11-19 11:03:05', '2017-11-19 11:03:05', '', 'Resources', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-11-19 11:03:05', '2017-11-19 11:03:05', '', 57, 'http://localhost/wp/uncategorized/57-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-11-19 11:13:22', '2017-11-19 11:13:22', '', 'stuff-bg', '', 'inherit', 'open', 'closed', '', 'stuff-bg', '', '', '2017-11-19 11:13:22', '2017-11-19 11:13:22', '', 57, 'http://localhost/wp/wp-content/uploads/2017/11/stuff-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2017-11-19 11:13:56', '2017-11-19 11:13:56', '', 'hero-bg', '', 'inherit', 'open', 'closed', '', 'hero-bg', '', '', '2017-11-19 11:13:56', '2017-11-19 11:13:56', '', 57, 'http://localhost/wp/wp-content/uploads/2017/11/hero-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2017-11-19 11:17:35', '2017-11-19 11:17:35', '<p class=\"lead\">Welcome to the Bootstrap to WordPress resources page! On this page, I will provide you with useful resources, plugins, tools, applications, and websites to help make your life as a coder a little bit easier.Â <strong>I recommend adding this page to your bookmarks for convenient future reference.</strong></p>\r\n<em>Please keep in mind that some of the following resources are my affiliate links, and should you decide to make a purchase, I will earn a small commission â€” at no extra cost to you! I am recommending these resources only because I have found them to be incredibly helpful. Donâ€™t spend your money on any products or resources unless you think they will benefit you.</em>', 'Resources', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-11-19 11:17:35', '2017-11-19 11:17:35', '', 57, 'http://localhost/wp/uncategorized/57-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-11-19 11:32:38', '2017-11-19 11:32:38', '', 'icon-resources', '', 'inherit', 'open', 'closed', '', 'icon-resources', '', '', '2017-11-19 11:34:19', '2017-11-19 11:34:19', '', 0, 'http://localhost/wp/wp-content/uploads/2017/11/icon-resources.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2017-11-19 11:38:33', '2017-11-19 11:38:33', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'acf_resources', '', '', '2017-11-19 11:38:33', '2017-11-19 11:38:33', '', 0, 'http://localhost/wp/?post_type=acf&#038;p=64', 0, 'acf', '', 0),
(65, 1, '2017-11-19 11:39:47', '2017-11-19 11:39:47', 'When I made my very first website about 7 years ago, I signed up with Justhost â€” and Iâ€™ve never looked back! Since then, Iâ€™ve built hundreds of websites with Justhost as my only hosting provider. I recommend these guys to all of my clients, my students, my family and friends.\r\n\r\nIf youâ€™re looking to start your very first website, or are looking for a reliable hosting provider â€” look no further. You get a free domain name for life, great customer service, unlimited domains, unlimited email accounts, unlimited GBs of space, an anytime money back guarantee and my favourite part: You can set up a blog website in minutes with 1-click WordPress Install. These guys are awesome! Get started with Justhost.', 'Justhost', '', 'publish', 'closed', 'closed', '', 'justhost', '', '', '2017-11-19 11:39:47', '2017-11-19 11:39:47', '', 0, 'http://localhost/wp/?post_type=resourceslist&#038;p=65', 0, 'resourceslist', '', 0),
(66, 1, '2017-11-19 11:39:11', '2017-11-19 11:39:11', '', 'justhost-logo', '', 'inherit', 'open', 'closed', '', 'justhost-logo', '', '', '2017-11-19 11:39:11', '2017-11-19 11:39:11', '', 65, 'http://localhost/wp/wp-content/uploads/2017/11/justhost-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2017-11-19 11:56:02', '2017-11-19 11:56:02', 'If youâ€™re serious about coding, or you want to start out with a solid tool to code with, I strongly recommend Coda 2 for Mac. A beautiful User Interface with tabbed navigation, a super sidebar, and a simple layout. The features are outrageous and extensive, with code folding, smart complete, auto indentation, GIT integration, a built-in terminal, iCloud support â€” to name a few. The features seem to be endless.\r\n\r\nI use Coda 2 for all of my courses &amp; tutorials, and if you decide to use Coda 2 as your editor of choice, it would greatly benefit you when taking my courses. The price of the editor weighs in at $75, but itâ€™s worth every penny â€” in my honest opinion.', 'Coda 2', '', 'publish', 'closed', 'closed', '', 'coda-2', '', '', '2017-11-19 11:56:02', '2017-11-19 11:56:02', '', 0, 'http://localhost/wp/?post_type=resourceslist&#038;p=67', 0, 'resourceslist', '', 0),
(68, 1, '2017-11-19 11:55:35', '2017-11-19 11:55:35', '', 'coda2-logo', '', 'inherit', 'open', 'closed', '', 'coda2-logo', '', '', '2017-11-19 11:55:35', '2017-11-19 11:55:35', '', 67, 'http://localhost/wp/wp-content/uploads/2017/11/coda2-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2017-11-19 11:56:58', '2017-11-19 11:56:58', 'This tool should go without saying. But if I have to explain â€” youÂ <strong>need</strong>Â this tool. I use it 24/7 â€” literally. Dropbox is where I store my personal &amp; business related data. It\'s accessible anywhere, and regularly backs up my important information.\r\n\r\nBecause my data is accessible anywhere, Dropbox allows me to work on a client project at home, on the bus, in a coffee shop, or at a friend\'s house. It\'s truly a gem of a tool, and I think you\'ll believe me.', 'Dropbox', '', 'publish', 'closed', 'closed', '', 'dropbox', '', '', '2017-11-19 11:56:58', '2017-11-19 11:56:58', '', 0, 'http://localhost/wp/?post_type=resourceslist&#038;p=69', 0, 'resourceslist', '', 0),
(70, 1, '2017-11-19 11:56:33', '2017-11-19 11:56:33', '', 'dropbox-logo', '', 'inherit', 'open', 'closed', '', 'dropbox-logo', '', '', '2017-11-19 11:56:33', '2017-11-19 11:56:33', '', 69, 'http://localhost/wp/wp-content/uploads/2017/11/dropbox-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2017-11-19 12:02:14', '2017-11-19 12:02:14', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-11-19 12:02:14', '2017-11-19 12:02:14', '', 0, 'http://localhost/wp/?page_id=71', 0, 'page', '', 0),
(72, 1, '2017-11-19 12:02:14', '2017-11-19 12:02:14', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2017-11-19 12:02:14', '2017-11-19 12:02:14', '', 0, 'http://localhost/wp/uncategorized/72/', 3, 'nav_menu_item', '', 0),
(73, 1, '2017-11-19 12:02:14', '2017-11-19 12:02:14', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2017-11-19 12:02:14', '2017-11-19 12:02:14', '', 71, 'http://localhost/wp/uncategorized/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-11-20 03:18:45', '2017-11-20 03:18:45', 'This is mY New Resourse', 'My new Res', '', 'trash', 'closed', 'closed', '', 'my-new-res__trashed', '', '', '2017-11-20 06:03:50', '2017-11-20 06:03:50', '', 0, 'http://localhost/wp/?post_type=resourceslist&#038;p=74', 0, 'resourceslist', '', 0),
(75, 1, '2017-11-20 06:02:55', '2017-11-20 06:02:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-20 06:02:55', '2017-11-20 06:02:55', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-11-20 06:03:10', '2017-11-20 06:03:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-20 06:03:10', '2017-11-20 06:03:10', '', 7, 'http://localhost/wp/uncategorized/7-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-11-20 06:04:40', '2017-11-20 06:04:40', 'saad sadat', 'Saad', '', 'publish', 'closed', 'closed', '', 'saad', '', '', '2017-11-20 06:04:40', '2017-11-20 06:04:40', '', 0, 'http://localhost/wp/?post_type=resourceslist&#038;p=77', 0, 'resourceslist', '', 0),
(78, 1, '2017-11-20 06:05:18', '2017-11-20 06:05:18', 'gdf', 'sdfsdggdfg', '', 'publish', 'closed', 'closed', '', 'sdfsdggdfg', '', '', '2017-11-20 06:05:18', '2017-11-20 06:05:18', '', 0, 'http://localhost/wp/?post_type=resourceslist&#038;p=78', 0, 'resourceslist', '', 0),
(79, 1, '2017-11-20 06:06:24', '2017-11-20 06:06:24', 'gdfg', 'Abc', '', 'trash', 'closed', 'closed', '', 'abc__trashed', '', '', '2017-11-20 06:07:02', '2017-11-20 06:07:02', '', 0, 'http://localhost/wp/?page_id=79', 0, 'page', '', 0),
(80, 1, '2017-11-20 06:06:24', '2017-11-20 06:06:24', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2017-11-20 06:06:24', '2017-11-20 06:06:24', '', 0, 'http://localhost/wp/uncategorized/80/', 4, 'nav_menu_item', '', 0),
(81, 1, '2017-11-20 06:06:24', '2017-11-20 06:06:24', 'gdfg', 'Abc', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2017-11-20 06:06:24', '2017-11-20 06:06:24', '', 79, 'http://localhost/wp/uncategorized/79-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 2, 0),
(58, 2, 0),
(72, 2, 0),
(80, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'session_tokens', 'a:1:{s:64:\"ed70ca194f4238554e28fc4e3dffa3b43a05540f971f455512e1920a597079ff\";a:4:{s:10:\"expiration\";i:1511422261;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1511249461;}}'),
(26, 1, 'nav_menu_recently_edited', '2'),
(27, 1, 'closedpostboxes_page', 'a:7:{i:0;s:6:\"acf_17\";i:1;s:6:\"acf_30\";i:2;s:6:\"acf_35\";i:3;s:6:\"acf_41\";i:4;s:6:\"acf_44\";i:5;s:6:\"acf_55\";i:6;s:10:\"postcustom\";}'),
(28, 1, 'metaboxhidden_page', 'a:7:{i:0;s:6:\"acf_64\";i:1;s:6:\"acf_22\";i:2;s:12:\"revisionsdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(29, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(30, 1, 'wp_user-settings-time', '1511089349'),
(31, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:126:\"acf_10,acf_22,acf_17,acf_30,revisionsdiv,acf_35,acf_41,acf_44,acf_55,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(32, 1, 'screen_layout_page', '2'),
(33, 1, 'closedpostboxes_acf', 'a:0:{}'),
(34, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BbHHmFXvOwsWxma/.y2ikvAUDwG8yU0', 'root', 'fawad_12@outlook.com', '', '2017-11-18 11:34:39', '', 0, 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=879;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
