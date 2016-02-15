-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Фев 15 2016 г., 02:33
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `cl1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2002-01-10 03:51:36', '2002-01-10 03:51:36', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1212 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://CL1', 'yes'),
(2, 'home', 'http://CL1', 'yes'),
(3, 'blogname', 'Test CodeLobster', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'viktorr1975@yandex.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:47:"viktorr1975-copy-post/viktorr1975-copy-post.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:44:"I:\\home\\CL1\\www/wp-content/plugins/hello.php";i:1;s:55:"I:\\home\\CL1\\www/wp-content/themes/mysimle/functions.php";i:2;s:51:"I:\\home\\CL1\\www/wp-content/themes/mysimle/style.css";i:3;s:52:"I:\\home\\CL1\\www/wp-content/themes/mysimle/header.php";i:4;s:56:"I:\\home\\CL1\\www/wp-content/plugins/wppusher/wppusher.php";}', 'no'),
(41, 'template', 'mysimle', 'yes'),
(42, 'stylesheet', 'mysimle', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33055', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:47:"viktorr1975-copy-post/viktorr1975-copy-post.php";s:34:"viktorr1975_copy_post_on_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:18:"orphaned_widgets_1";a:1:{i:0;s:8:"search-2";}s:19:"wp_inactive_widgets";a:5:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:7:"primary";a:1:{i:0;s:7:"pages-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1455508622;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1455514759;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1455518835;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1455520680;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(99, '_transient_random_seed', '06dc7e3b3b153d7d962f837a6c262f31', 'yes'),
(100, 'auth_key', '[a27-?1n&vTsma(C5SwHnjNjdM=vY9UoL!w_h];pw&j>>*R0A/MVR$L7K1avV )8', 'yes'),
(101, 'auth_salt', '.Kd`[6;uDs+*?c8QaUcQP$rhjiR[.k{}wR|#4!cMuU`M6>^2Q{&G{- SK1Gb$E6W', 'yes'),
(102, 'logged_in_key', 'U90}1Bbu}p;nZI&4+cf:m)A=oTUt*R@7MP?:?s?W#BE*X63_I+)+%VfX/zq>`$j~', 'yes'),
(103, 'logged_in_salt', 'I+H.IRU$RNWVx9Wwm)22dC[5`ut=H1.1#^3CN%J?OL8nG{UCapnA&-nVVhiq?~.H', 'yes'),
(104, 'nonce_key', '@Cj4BbYC~5?u+l]1.z Tev]2&i9tI(8W/r,ob@lIZk4 QOL(.0$JqDfCKf0<#k8>', 'yes'),
(105, 'nonce_salt', 'M2R*CpcZKEJj~+?s$X<,SUwc*wTa?Iir{vQ<jcz+~WjAzJR[_GBG{QLgwoBE:sBn', 'yes'),
(127, 'current_theme', '', 'yes'),
(128, 'theme_mods_simple', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1009859071;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(129, 'theme_switched', '', 'yes'),
(130, 'theme_switched_via_customizer', '', 'yes'),
(194, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1437042251;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:5:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:9:"sidebar-1";a:1:{i:0;s:8:"search-2";}}}}', 'yes'),
(196, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(199, 'category_children', 'a:0:{}', 'yes'),
(214, 'theme_mods_mysimle', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:12:"header_image";s:13:"remove-header";}', 'yes'),
(289, 'recently_activated', 'a:3:{s:35:"redux-framework/redux-framework.php";i:1455102039;s:31:"query-monitor/query-monitor.php";i:1455013161;s:23:"debug-bar/debug-bar.php";i:1455012644;}', 'yes'),
(293, 'revisr_db_version', '1.1', 'yes'),
(319, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1440613924', 'no'),
(320, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(336, 'finished_splitting_shared_terms', '1', 'yes'),
(337, 'db_upgraded', '', 'yes'),
(338, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1455503416;s:15:"version_checked";s:3:"4.3";s:12:"translations";a:0:{}}', 'yes'),
(341, 'can_compress_scripts', '1', 'yes'),
(374, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(375, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(376, 'widget_pages', 'a:3:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:0:"";s:6:"sortby";s:10:"post_title";s:7:"exclude";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(378, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(459, 'theme_mods_simplest', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1441708831;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:5:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:7:"widgets";a:1:{i:0;s:8:"search-2";}}}}', 'yes'),
(734, '_site_transient_timeout_browser_4c0ff605d2134f82594c824b0e8ea493', '1450690965', 'yes'),
(735, '_site_transient_browser_4c0ff605d2134f82594c824b0e8ea493', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"34.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(842, 'viktorr1975_copy_post_ver', '0.1.0', 'yes'),
(843, 'viktorr1975_copy_post_db_ver', '2', 'yes'),
(851, 'viktorr1975_cp_post_DB_VER', '1', 'yes'),
(886, '_site_transient_timeout_browser_8d9a789551cb1a9d04cdb194d1c5fade', '1452332685', 'yes'),
(887, '_site_transient_browser_8d9a789551cb1a9d04cdb194d1c5fade', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"43.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(982, '_site_transient_timeout_browser_e456c6011df155b7f32b461b30b10aa2', '1454907354', 'yes'),
(983, '_site_transient_browser_e456c6011df155b7f32b461b30b10aa2', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"39.0.2171.95";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1035, '_transient_timeout_plugin_slugs', '1455250752', 'no'),
(1036, '_transient_plugin_slugs', 'a:13:{i:0;s:19:"akismet/akismet.php";i:1;s:23:"debug-bar/debug-bar.php";i:2;s:74:"debug-bar-actions-and-filters-addon/debug-bar-action-and-filters-addon.php";i:3;s:49:"debug-bar-slow-actions/debug-bar-slow-actions.php";i:4;s:25:"debug-this/debug-this.php";i:5;s:81:"foxrunsoftware-custom-bulk-action-demo/foxrunsoftware-custom-bulk-action-demo.php";i:6;s:9:"hello.php";i:7;s:31:"query-monitor/query-monitor.php";i:8;s:35:"redux-framework/redux-framework.php";i:9;s:17:"revisr/revisr.php";i:10;s:37:"simple-copy-post/simple-copy-post.php";i:11;s:47:"viktorr1975-copy-post/viktorr1975-copy-post.php";i:12;s:21:"wppusher/wppusher.php";}', 'no'),
(1037, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1454449945', 'no'),
(1038, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(1085, 'viktorr1975_setting_name', 'a:1:{s:7:"textbox";s:2:"tr";}', 'yes'),
(1086, 'viktorr1975_setting_name2', '', 'yes'),
(1105, 'viktorr1975_setting_name1', 'a:2:{s:5:"check";s:1:"1";s:7:"textbox";s:2:"gf";}', 'yes'),
(1130, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1455022712', 'yes'),
(1131, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5703";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3563";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3517";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3018";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2749";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2246";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2172";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2019";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1970";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1955";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1952";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1904";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1805";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1608";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1521";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1504";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1477";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1318";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1267";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1256";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1158";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1075";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1053";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"984";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"948";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"904";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"900";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"888";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"881";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"872";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"864";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"814";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"767";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"766";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"752";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"735";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"730";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"729";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"726";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"721";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"710";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"709";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"680";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"678";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"662";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"657";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"656";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"645";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"640";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"631";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"617";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"610";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"599";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"593";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"591";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"583";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"577";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"576";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"570";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"560";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"549";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"541";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"541";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"526";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"526";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"515";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"507";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"503";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"502";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"500";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"483";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"483";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"477";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"468";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"458";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"457";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"432";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"432";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"426";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"426";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"425";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"418";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"413";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"411";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"409";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"406";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"401";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"400";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"398";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"393";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"391";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"389";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"388";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"384";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"381";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"381";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"378";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"376";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"375";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"374";}}', 'yes'),
(1145, '_site_transient_timeout_available_translations', '1455109435', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1146, '_site_transient_available_translations', 'a:70:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 00:32:07";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-12 20:42:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:59:"http://downloads.wordpress.org/translation/core/4.3/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-27 19:48:02";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 19:15:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 08:45:05";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 04:19:00";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 09:17:13";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 19:34:34";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 13:22:20";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-09 10:05:26";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 13:35:36";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:68:"http://downloads.wordpress.org/translation/core/4.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-03 22:30:30";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-13 23:56:05";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 22:20:50";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 20:57:21";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-14 00:38:16";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-16 10:50:33";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 14:33:57";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.2.7";s:7:"updated";s:19:"2015-09-29 17:53:06";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.7/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 18:40:22";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 00:53:46";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.2.7";s:7:"updated";s:19:"2015-10-29 16:32:18";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.7/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-05 16:34:02";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-25 13:32:40";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 13:36:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 09:17:58";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-10 15:08:48";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.2.7";s:7:"updated";s:19:"2015-12-08 01:53:01";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.7/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-06 20:37:24";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-27 14:28:09";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 23:34:00";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"http://downloads.wordpress.org/translation/core/4.1.10/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 15:13:38";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.2.7";s:7:"updated";s:19:"2015-11-20 14:13:29";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-14 08:49:12";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 12:47:55";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 17:47:38";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-22 13:47:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 06:13:38";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-03 02:18:06";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 22:59:51";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 07:48:28";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.2.7";s:7:"updated";s:19:"2015-12-16 04:56:00";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.7/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.1.10/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:45:19";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 06:57:09";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:56:13";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"http://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-27 13:38:57";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.10/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-08 14:23:10";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 02:24:55";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 16:44:05";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-03 10:08:50";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-31 19:45:06";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-06 16:10:24";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:16:31";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:31:56";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 10:43:45";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 14:10:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 05:50:57";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.1.10/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-09-12 08:09:24";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.2.7";s:7:"updated";s:19:"2015-10-22 10:30:48";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.7/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-20 19:10:20";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-19 00:50:06";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(1152, 'redux_version_upgraded_from', '3.5.8', 'yes'),
(1153, '_transient_timeout__redux_activation_redirect', '1455503611', 'no'),
(1154, '_transient__redux_activation_redirect', '1', 'no'),
(1155, 'redux_demo', 'a:70:{s:12:"opt-checkbox";s:1:"1";s:15:"opt-multi-check";a:3:{i:1;s:1:"1";i:2;s:1:"0";i:3;s:1:"0";}s:9:"opt-radio";s:1:"2";s:12:"opt-sortable";a:3:{s:8:"Text One";s:6:"Item 1";s:8:"Text Two";s:6:"Item 2";s:10:"Text Three";s:6:"Item 3";}s:18:"opt-check-sortable";a:3:{s:3:"cb1";b:0;s:3:"cb2";b:1;s:3:"cb3";b:0;}s:12:"text-example";s:12:"Default Text";s:17:"text-example-hint";s:12:"Default Text";s:12:"opt-textarea";s:12:"Default Text";s:10:"opt-editor";s:27:"Powered by Redux Framework.";s:15:"opt-editor-tiny";s:27:"Powered by Redux Framework.";s:18:"opt-ace-editor-css";s:29:"#header{\n   margin: 0 auto;\n}";s:17:"opt-ace-editor-js";s:39:"jQuery(document).ready(function(){\n\n});";s:18:"opt-ace-editor-php";s:28:"<?php\n    echo "PHP String";";s:15:"opt-color-title";s:7:"#000000";s:16:"opt-color-footer";s:7:"#dd9933";s:16:"opt-color-header";a:2:{s:4:"from";s:7:"#1e73be";s:2:"to";s:7:"#00897e";}s:14:"opt-color-rgba";a:2:{s:5:"color";s:7:"#7e33dd";s:5:"alpha";s:2:".8";}s:14:"opt-link-color";a:3:{s:7:"regular";s:4:"#aaa";s:5:"hover";s:4:"#bbb";s:6:"active";s:4:"#ccc";}s:17:"opt-palette-color";s:3:"red";s:17:"opt-header-border";a:6:{s:12:"border-color";s:7:"#1e73be";s:12:"border-style";s:5:"solid";s:10:"border-top";s:3:"3px";s:12:"border-right";s:3:"3px";s:13:"border-bottom";s:3:"3px";s:11:"border-left";s:3:"3px";}s:26:"opt-header-border-expanded";a:6:{s:12:"border-color";s:7:"#1e73be";s:12:"border-style";s:5:"solid";s:10:"border-top";s:3:"3px";s:12:"border-right";s:3:"3px";s:13:"border-bottom";s:3:"3px";s:11:"border-left";s:3:"3px";}s:14:"opt-dimensions";a:2:{s:5:"width";i:200;s:6:"height";i:100;}s:20:"opt-dimensions-width";a:2:{s:5:"width";i:200;s:6:"height";i:100;}s:11:"opt-spacing";a:4:{s:10:"margin-top";s:3:"1px";s:12:"margin-right";s:3:"2px";s:13:"margin-bottom";s:3:"3px";s:11:"margin-left";s:3:"4px";}s:20:"opt-spacing-expanded";a:4:{s:10:"margin-top";s:3:"1px";s:12:"margin-right";s:3:"2px";s:13:"margin-bottom";s:3:"3px";s:11:"margin-left";s:3:"4px";}s:9:"opt-media";a:1:{s:3:"url";s:52:"http://s.wordpress.org/style/images/codeispoetry.png";}s:14:"opt-button-set";s:1:"2";s:20:"opt-button-set-multi";a:2:{i:0;s:1:"2";i:1;s:1:"3";}s:9:"switch-on";b:1;s:10:"switch-off";b:0;s:13:"switch-parent";i:0;s:13:"switch-child1";b:0;s:13:"switch-child2";b:0;s:10:"opt-select";s:1:"2";s:21:"opt-select-stylesheet";s:11:"default.css";s:19:"opt-select-optgroup";s:1:"2";s:16:"opt-multi-select";a:2:{i:0;s:1:"2";i:1;s:1:"3";}s:16:"opt-select-image";s:13:"tree_bark.png";s:23:"opt-image-select-layout";s:1:"2";s:12:"opt-patterns";i:0;s:16:"opt-image-select";s:1:"2";s:11:"opt-presets";i:0;s:16:"opt-select_image";i:0;s:16:"opt-slider-label";i:250;s:15:"opt-slider-text";i:75;s:17:"opt-slider-select";a:2:{i:1;i:100;i:2;i:300;}s:16:"opt-slider-float";d:0.5;s:11:"opt-spinner";s:2:"40";s:19:"opt-typography-body";a:4:{s:5:"color";s:7:"#dd9933";s:9:"font-size";s:4:"30px";s:11:"font-family";s:26:"Arial,Helvetica,sans-serif";s:11:"font-weight";s:6:"Normal";}s:14:"opt-typography";a:6:{s:5:"color";s:4:"#333";s:10:"font-style";s:3:"700";s:11:"font-family";s:4:"Abel";s:6:"google";b:1;s:9:"font-size";s:4:"33px";s:11:"line-height";s:4:"40px";}s:19:"opt-homepage-layout";a:3:{s:7:"enabled";a:4:{s:10:"highlights";s:10:"Highlights";s:6:"slider";s:6:"Slider";s:10:"staticpage";s:11:"Static Page";s:8:"services";s:8:"Services";}s:8:"disabled";a:0:{}s:6:"backup";a:0:{}}s:21:"opt-homepage-layout-2";a:2:{s:8:"disabled";a:2:{s:10:"highlights";s:10:"Highlights";s:6:"slider";s:6:"Slider";}s:7:"enabled";a:2:{s:10:"staticpage";s:11:"Static Page";s:8:"services";s:8:"Services";}}s:14:"opt-text-email";s:13:"test@test.com";s:12:"opt-text-url";s:25:"http://reduxframework.com";s:16:"opt-text-numeric";s:1:"0";s:22:"opt-text-comma-numeric";s:1:"0";s:25:"opt-text-no-special-chars";s:1:"0";s:20:"opt-text-str_replace";s:20:"This is the default.";s:21:"opt-text-preg_replace";s:1:"0";s:24:"opt-text-custom_validate";s:1:"0";s:20:"opt-textarea-no-html";s:27:"No HTML is allowed in here.";s:17:"opt-textarea-html";s:24:"HTML is allowed in here.";s:22:"opt-textarea-some-html";s:36:"<p>Some HTML is allowed in here.</p>";s:18:"opt-required-basic";b:0;s:19:"opt-required-nested";b:0;s:29:"opt-required-nested-buttonset";s:11:"button-text";s:19:"opt-required-select";s:10:"no-sidebar";s:32:"opt-required-select-left-sidebar";s:0:"";s:33:"opt-required-select-right-sidebar";s:0:"";s:19:"opt-customizer-only";s:1:"2";}', 'yes'),
(1156, 'redux_demo-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1455101564;}', 'yes'),
(1157, '_transient_timeout_redux-extensions-fetch', '1455188041', 'no'),
(1158, '_transient_redux-extensions-fetch', 'a:15:{s:11:"google-maps";a:7:{s:2:"id";i:4714;s:5:"title";s:11:"Google Maps";s:7:"created";s:19:"2016-02-10 03:02:51";s:7:"updated";s:19:"2016-02-10 03:02:51";s:7:"excerpt";s:0:"";s:3:"url";s:49:"https://reduxframework.com/extension/google-maps/";s:5:"thumb";s:75:"http://reduxframework.com/wp-content/uploads/edd/2016/02/google_map_ext.png";}s:10:"ad-remover";a:7:{s:2:"id";i:4526;s:5:"title";s:10:"Ad Remover";s:7:"created";s:19:"2016-01-12 04:02:58";s:7:"updated";s:19:"2016-01-12 04:04:22";s:7:"excerpt";s:0:"";s:3:"url";s:48:"https://reduxframework.com/extension/ad-remover/";s:5:"thumb";s:74:"http://reduxframework.com/wp-content/uploads/edd/2016/01/ext_ad_remove.png";}s:9:"accordion";a:7:{s:2:"id";i:2598;s:5:"title";s:9:"Accordion";s:7:"created";s:19:"2015-03-26 21:43:11";s:7:"updated";s:19:"2015-05-12 20:13:43";s:7:"excerpt";s:129:"The Redux Accordion extension is an improved way to group like items in your options panel, inside a collapsible accordion field.";s:3:"url";s:47:"https://reduxframework.com/extension/accordion/";s:5:"thumb";s:75:"http://reduxframework.com/wp-content/uploads/edd/2015/03/accordion_logo.png";}s:8:"repeater";a:7:{s:2:"id";i:2147;s:5:"title";s:8:"Repeater";s:7:"created";s:19:"2015-01-14 00:29:40";s:7:"updated";s:19:"2015-06-13 03:54:41";s:7:"excerpt";s:140:"Give your users the power of infinite flexibility with dynamic, repeatable fields. Use any Redux field and customize your user''s experience.";s:3:"url";s:46:"https://reduxframework.com/extension/repeater/";s:5:"thumb";s:69:"http://reduxframework.com/wp-content/uploads/edd/2015/01/repeater.png";}s:15:"social-profiles";a:7:{s:2:"id";i:2049;s:5:"title";s:15:"Social Profiles";s:7:"created";s:19:"2014-12-16 05:40:43";s:7:"updated";s:19:"2015-08-21 16:13:28";s:7:"excerpt";s:153:"Give your users the ability to add social profiles (icons with links to their social pages) from one central field in your Redux Framework options panel.";s:3:"url";s:53:"https://reduxframework.com/extension/social-profiles/";s:5:"thumb";s:71:"http://reduxframework.com/wp-content/uploads/edd/2014/12/social_ext.png";}s:9:"js-button";a:7:{s:2:"id";i:1965;s:5:"title";s:9:"JS Button";s:7:"created";s:19:"2014-11-27 03:57:50";s:7:"updated";s:19:"2015-03-26 02:45:38";s:7:"excerpt";s:131:"Give your users the ability to run JavaScript functions manually from within the Redux Framework options panel via button clicks.  ";s:3:"url";s:47:"https://reduxframework.com/extension/js-button/";s:5:"thumb";s:70:"http://reduxframework.com/wp-content/uploads/edd/2014/11/js_button.png";}s:11:"multi-media";a:7:{s:2:"id";i:1963;s:5:"title";s:11:"Multi Media";s:7:"created";s:19:"2014-11-27 03:58:57";s:7:"updated";s:19:"2015-06-13 04:02:12";s:7:"excerpt";s:100:"Give your users the ability to upload and/or select multiple files from the Wordpress Media library.";s:3:"url";s:49:"https://reduxframework.com/extension/multi-media/";s:5:"thumb";s:72:"http://reduxframework.com/wp-content/uploads/edd/2014/11/multi-media.png";}s:10:"css-layout";a:7:{s:2:"id";i:1684;s:5:"title";s:10:"CSS Layout";s:7:"created";s:19:"2014-08-17 02:52:29";s:7:"updated";s:19:"2015-03-26 02:45:35";s:7:"excerpt";s:183:"The Redux CSS Layout extension is great and innovative new way to set the margin, border, border radius, and padding elements for any CSS selector, all from one easy to use interface.";s:3:"url";s:48:"https://reduxframework.com/extension/css-layout/";s:5:"thumb";s:71:"http://reduxframework.com/wp-content/uploads/edd/2014/08/css-layout.png";}s:13:"color-schemes";a:7:{s:2:"id";i:988;s:5:"title";s:13:"Color Schemes";s:7:"created";s:19:"2014-05-05 20:01:51";s:7:"updated";s:19:"2015-06-13 04:03:02";s:7:"excerpt";s:156:"Give your users the ability to change the color layout of their themes with virtually no effort. Allow your users to save, and re-use any number of presets.";s:3:"url";s:51:"https://reduxframework.com/extension/color-schemes/";s:5:"thumb";s:74:"http://reduxframework.com/wp-content/uploads/edd/2014/07/color_schemes.png";}s:11:"live-search";a:7:{s:2:"id";i:526;s:5:"title";s:11:"Live Search";s:7:"created";s:19:"2014-02-21 05:13:10";s:7:"updated";s:19:"2015-03-26 02:46:04";s:7:"excerpt";s:203:"Does your panel have so many options it''s difficult for your users to locate things? Live Search will create a search box that will dynamically filter all your available options. No configuration needed!";s:3:"url";s:49:"https://reduxframework.com/extension/live-search/";s:5:"thumb";s:72:"http://reduxframework.com/wp-content/uploads/edd/2014/07/live-search.png";}s:9:"date-time";a:7:{s:2:"id";i:458;s:5:"title";s:18:"Date / Time Picker";s:7:"created";s:19:"2014-02-14 02:08:36";s:7:"updated";s:19:"2015-08-23 20:40:06";s:7:"excerpt";s:192:"The Redux Date-Time Picker (DTP) extension is a new way to select dates and times for use in text fields.  The DTP contains several modes based on how you''d like to display time and date data.";s:3:"url";s:47:"https://reduxframework.com/extension/date-time/";s:5:"thumb";s:69:"http://reduxframework.com/wp-content/uploads/edd/2014/05/datetime.png";}s:9:"metaboxes";a:7:{s:2:"id";i:191;s:5:"title";s:9:"Metaboxes";s:7:"created";s:19:"2014-01-28 00:49:31";s:7:"updated";s:19:"2015-03-26 02:46:16";s:7:"excerpt";s:124:"Integrate your options panel and meta items into one. It even overrides your global variable, so you only have to code once.";s:3:"url";s:47:"https://reduxframework.com/extension/metaboxes/";s:5:"thumb";s:74:"http://reduxframework.com/wp-content/uploads/edd/2014/07/ext-metaboxes.png";}s:12:"widget-areas";a:7:{s:2:"id";i:208;s:5:"title";s:12:"Widget Areas";s:7:"created";s:19:"2014-01-28 05:49:30";s:7:"updated";s:19:"2015-04-25 00:18:16";s:7:"excerpt";s:253:"Why limit your users to a limited number of widget areas? With this extension your users will be able to create and delete as many widget areas as they desire. You need only allow supply them with a way to switch the widget area for any given page/post.";s:3:"url";s:50:"https://reduxframework.com/extension/widget-areas/";s:5:"thumb";s:77:"http://reduxframework.com/wp-content/uploads/edd/2014/07/ext-widget-areas.png";}s:10:"shortcodes";a:7:{s:2:"id";i:209;s:5:"title";s:10:"Shortcodes";s:7:"created";s:19:"2014-01-28 05:50:24";s:7:"updated";s:19:"2015-03-26 02:52:01";s:7:"excerpt";s:166:"Give your users some very simple, but powerful shortcodes. This extension makes a number of the WordPress core and functions and blog settings accessible to the user.";s:3:"url";s:48:"https://reduxframework.com/extension/shortcodes/";s:5:"thumb";s:75:"http://reduxframework.com/wp-content/uploads/edd/2014/07/ext-shortcodes.png";}s:11:"icon-select";a:7:{s:2:"id";i:328;s:5:"title";s:11:"Icon Select";s:7:"created";s:19:"2014-02-01 16:39:13";s:7:"updated";s:19:"2015-03-26 02:46:36";s:7:"excerpt";s:222:"Let your users select an icon of their choice from your choosing. You can incorporate any font family. You need only denote the prefix and supply the URL or path to the font CSS file. It will even enqueue the font for you.";s:3:"url";s:49:"https://reduxframework.com/extension/icon-select/";s:5:"thumb";s:72:"http://reduxframework.com/wp-content/uploads/edd/2014/07/icon_select.png";}}', 'no'),
(1159, '_transient_timeout_select2-css_style_cdn_is_up', '1455188074', 'no'),
(1160, '_transient_select2-css_style_cdn_is_up', '1', 'no'),
(1163, '_transient_timeout_select2-js_script_cdn_is_up', '1455188078', 'no'),
(1164, '_transient_select2-js_script_cdn_is_up', '1', 'no'),
(1167, '_transient_timeout_ace-editor-js_script_cdn_is_up', '1455188090', 'no'),
(1168, '_transient_ace-editor-js_script_cdn_is_up', '1', 'no'),
(1184, 'viktorr1975_options_redux', 'a:4:{s:8:"last_tab";s:1:"2";s:8:"opt-text";s:16:"redux text field";s:12:"text-example";s:16:"redux text field";s:16:"textarea-example";s:12:"Default Text";}', 'yes'),
(1185, 'viktorr1975_options_redux-transients', 'a:2:{s:14:"changed_values";a:1:{s:12:"text-example";s:12:"Default Text";}s:9:"last_save";i:1455182739;}', 'yes'),
(1205, '_site_transient_timeout_theme_roots', '1455505219', 'yes'),
(1206, '_site_transient_theme_roots', 'a:6:{s:7:"mysimle";s:7:"/themes";s:6:"simple";s:7:"/themes";s:8:"simplest";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(1210, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1455503428;s:7:"checked";a:6:{s:7:"mysimle";s:3:"1.0";s:6:"simple";s:3:"1.0";s:8:"simplest";s:3:"1.3";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentyfifteen.1.4.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentyfourteen.1.6.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentythirteen.1.7.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(1211, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1455503429;s:8:"response";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.7.zip";}s:74:"debug-bar-actions-and-filters-addon/debug-bar-action-and-filters-addon.php";O:8:"stdClass":6:{s:2:"id";s:5:"38240";s:4:"slug";s:35:"debug-bar-actions-and-filters-addon";s:6:"plugin";s:74:"debug-bar-actions-and-filters-addon/debug-bar-action-and-filters-addon.php";s:11:"new_version";s:5:"1.5.1";s:3:"url";s:66:"https://wordpress.org/plugins/debug-bar-actions-and-filters-addon/";s:7:"package";s:83:"http://downloads.wordpress.org/plugin/debug-bar-actions-and-filters-addon.1.5.1.zip";}s:17:"revisr/revisr.php";O:8:"stdClass":6:{s:2:"id";s:5:"51065";s:4:"slug";s:6:"revisr";s:6:"plugin";s:17:"revisr/revisr.php";s:11:"new_version";s:5:"2.0.2";s:3:"url";s:37:"https://wordpress.org/plugins/revisr/";s:7:"package";s:48:"http://downloads.wordpress.org/plugin/revisr.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:23:"debug-bar/debug-bar.php";O:8:"stdClass":7:{s:2:"id";s:5:"18561";s:4:"slug";s:9:"debug-bar";s:6:"plugin";s:23:"debug-bar/debug-bar.php";s:11:"new_version";s:5:"0.8.2";s:3:"url";s:40:"https://wordpress.org/plugins/debug-bar/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/debug-bar.0.8.2.zip";s:14:"upgrade_notice";s:60:"Updated to handle a new deprecated message in WordPress 4.0.";}s:49:"debug-bar-slow-actions/debug-bar-slow-actions.php";O:8:"stdClass":6:{s:2:"id";s:5:"47780";s:4:"slug";s:22:"debug-bar-slow-actions";s:6:"plugin";s:49:"debug-bar-slow-actions/debug-bar-slow-actions.php";s:11:"new_version";s:5:"0.8.3";s:3:"url";s:53:"https://wordpress.org/plugins/debug-bar-slow-actions/";s:7:"package";s:70:"http://downloads.wordpress.org/plugin/debug-bar-slow-actions.0.8.3.zip";}s:25:"debug-this/debug-this.php";O:8:"stdClass":6:{s:2:"id";s:5:"37325";s:4:"slug";s:10:"debug-this";s:6:"plugin";s:25:"debug-this/debug-this.php";s:11:"new_version";s:3:"0.4";s:3:"url";s:41:"https://wordpress.org/plugins/debug-this/";s:7:"package";s:52:"http://downloads.wordpress.org/plugin/debug-this.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:31:"query-monitor/query-monitor.php";O:8:"stdClass":6:{s:2:"id";s:5:"10302";s:4:"slug";s:13:"query-monitor";s:6:"plugin";s:31:"query-monitor/query-monitor.php";s:11:"new_version";s:5:"2.8.1";s:3:"url";s:44:"https://wordpress.org/plugins/query-monitor/";s:7:"package";s:61:"http://downloads.wordpress.org/plugin/query-monitor.2.8.1.zip";}s:35:"redux-framework/redux-framework.php";O:8:"stdClass":6:{s:2:"id";s:5:"45018";s:4:"slug";s:15:"redux-framework";s:6:"plugin";s:35:"redux-framework/redux-framework.php";s:11:"new_version";s:5:"3.5.9";s:3:"url";s:46:"https://wordpress.org/plugins/redux-framework/";s:7:"package";s:63:"http://downloads.wordpress.org/plugin/redux-framework.3.5.9.zip";}s:37:"simple-copy-post/simple-copy-post.php";O:8:"stdClass":7:{s:2:"id";s:5:"43533";s:4:"slug";s:16:"simple-copy-post";s:6:"plugin";s:37:"simple-copy-post/simple-copy-post.php";s:11:"new_version";s:3:"1.0";s:3:"url";s:47:"https://wordpress.org/plugins/simple-copy-post/";s:7:"package";s:58:"http://downloads.wordpress.org/plugin/simple-copy-post.zip";s:14:"upgrade_notice";s:14:"Inital Release";}}}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1009864845:1'),
(4, 4, '_wp_page_template', 'my_template/DB_activity.php'),
(5, 8, '_edit_last', '1'),
(6, 8, '_edit_lock', '1009863477:1'),
(7, 8, '_wp_page_template', 'my_template/constants.php'),
(8, 2, '_edit_lock', '1009863766:1'),
(9, 14, '_edit_last', '1'),
(10, 14, '_edit_lock', '1009864115:1'),
(11, 14, '_wp_page_template', 'my_template/DB_activity.php'),
(12, 19, '_edit_last', '1'),
(13, 19, '_edit_lock', '1437042033:1'),
(14, 19, '_wp_page_template', 'my_template/mySQL.php'),
(15, 22, '_edit_last', '1'),
(16, 22, '_edit_lock', '1011574070:1'),
(17, 22, '_wp_page_template', 'my_template/show_page.php'),
(18, 1, '_edit_lock', '1444903684:1'),
(19, 27, '_menu_item_type', 'post_type'),
(20, 27, '_menu_item_menu_item_parent', '0'),
(21, 27, '_menu_item_object_id', '19'),
(22, 27, '_menu_item_object', 'page'),
(23, 27, '_menu_item_target', ''),
(24, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 27, '_menu_item_xfn', ''),
(26, 27, '_menu_item_url', ''),
(28, 28, '_menu_item_type', 'post_type'),
(29, 28, '_menu_item_menu_item_parent', '0'),
(30, 28, '_menu_item_object_id', '14'),
(31, 28, '_menu_item_object', 'page'),
(32, 28, '_menu_item_target', ''),
(33, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 28, '_menu_item_xfn', ''),
(35, 28, '_menu_item_url', ''),
(37, 29, '_menu_item_type', 'post_type'),
(38, 29, '_menu_item_menu_item_parent', '0'),
(39, 29, '_menu_item_object_id', '8'),
(40, 29, '_menu_item_object', 'page'),
(41, 29, '_menu_item_target', ''),
(42, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 29, '_menu_item_xfn', ''),
(44, 29, '_menu_item_url', ''),
(45, 30, '_wp_attached_file', '2002/01/1377000199_4et38jsegki9oh6.jpg'),
(46, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:800;s:4:"file";s:38:"2002/01/1377000199_4et38jsegki9oh6.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"1377000199_4et38jsegki9oh6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"1377000199_4et38jsegki9oh6-188x300.jpg";s:5:"width";i:188;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:38:"1377000199_4et38jsegki9oh6-500x510.jpg";s:5:"width";i:500;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(48, 1, '_edit_last', '1'),
(50, 30, '_edit_lock', '1009950966:1'),
(51, 35, '_wp_attached_file', '2002/01/1403903483_249.jpg'),
(52, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:666;s:6:"height";i:503;s:4:"file";s:26:"2002/01/1403903483_249.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"1403903483_249-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"1403903483_249-300x227.jpg";s:5:"width";i:300;s:6:"height";i:227;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(53, 37, '_edit_last', '1'),
(54, 37, '_edit_lock', '1446546365:1'),
(55, 37, '_wp_page_template', 'my_template/sidebar_page.php'),
(56, 39, '_menu_item_type', 'post_type'),
(57, 39, '_menu_item_menu_item_parent', '0'),
(58, 39, '_menu_item_object_id', '37'),
(59, 39, '_menu_item_object', 'page'),
(60, 39, '_menu_item_target', ''),
(61, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 39, '_menu_item_xfn', ''),
(63, 39, '_menu_item_url', ''),
(65, 37, '_oembed_57b91e60fea77b7e74d57cb72e934448', '{{unknown}}'),
(66, 37, '_oembed_20d977dc02bd1c3eec1aa599bf754ef6', '{{unknown}}'),
(67, 37, '_oembed_c0f8ed612a64b0d5b6f4958cd712538b', '{{unknown}}'),
(68, 37, '_oembed_d9e10e63a0e953ff86f680d15f823dbc', '{{unknown}}'),
(69, 48, '_edit_last', '1'),
(70, 48, '_edit_lock', '1443617617:1'),
(71, 48, '_wp_page_template', 'my_template/search_page.php'),
(72, 50, '_menu_item_type', 'post_type'),
(73, 50, '_menu_item_menu_item_parent', '0'),
(74, 50, '_menu_item_object_id', '48'),
(75, 50, '_menu_item_object', 'page'),
(76, 50, '_menu_item_target', ''),
(77, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 50, '_menu_item_xfn', ''),
(79, 50, '_menu_item_url', ''),
(80, 48, '_post_restored_from', 'a:3:{s:20:"restored_revision_id";i:51;s:16:"restored_by_user";i:1;s:13:"restored_time";i:1443617594;}'),
(81, 57, '_edit_last', '1'),
(82, 57, '_edit_lock', '1446722823:1'),
(83, 57, '_wp_page_template', 'my_template/Breadcrumbs.php'),
(84, 59, '_menu_item_type', 'post_type'),
(85, 59, '_menu_item_menu_item_parent', '0'),
(86, 59, '_menu_item_object_id', '57'),
(87, 59, '_menu_item_object', 'page'),
(88, 59, '_menu_item_target', ''),
(89, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 59, '_menu_item_xfn', ''),
(91, 59, '_menu_item_url', ''),
(106, 66, '_edit_last', '1'),
(107, 66, '_edit_lock', '1455503436:1'),
(109, 68, '_edit_last', '1'),
(110, 68, '_edit_lock', '1446544994:1'),
(111, 68, '_wp_page_template', 'default'),
(112, 70, '_menu_item_type', 'post_type'),
(113, 70, '_menu_item_menu_item_parent', '0'),
(114, 70, '_menu_item_object_id', '68'),
(115, 70, '_menu_item_object', 'page'),
(116, 70, '_menu_item_target', ''),
(117, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(118, 70, '_menu_item_xfn', ''),
(119, 70, '_menu_item_url', ''),
(126, 71, '_edit_last', '1'),
(127, 71, '_edit_lock', '1455503367:1'),
(128, 74, '_edit_last', '1'),
(129, 74, '_edit_lock', '1448012396:1'),
(130, 75, '_edit_last', '1'),
(131, 75, '_edit_lock', '1455503332:1'),
(132, 81, '_edit_last', '1'),
(133, 81, '_edit_lock', '1455503523:1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2002-01-10 03:51:36', '2002-01-10 03:51:36', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2002-01-02 05:54:28', '2002-01-02 05:54:28', '', 0, 'http://CL1/?p=1', 0, 'post', '', 1),
(2, 1, '2002-01-10 03:51:36', '2002-01-10 03:51:36', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://CL1/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2002-01-10 03:51:36', '2002-01-10 03:51:36', '', 0, 'http://CL1/?page_id=2', 0, 'page', '', 0),
(4, 1, '2002-01-01 05:40:12', '2002-01-01 05:40:12', '&lt;?php if ( current_user_can( ''manage_options'' ) ) {\nglobal $wpdb;\nprint_r( $wpdb-&gt;queries );\n}?&gt;', 'QUERIES', '', 'trash', 'closed', 'closed', '', 'queries', '', '', '2002-01-01 06:03:02', '2002-01-01 06:03:02', '', 0, 'http://CL1/?page_id=4', 2, 'page', '', 0),
(5, 1, '2002-01-14 05:40:12', '2002-01-14 05:40:12', 'if ( current_user_can( ''manage_options'' ) ) {\r\nglobal $wpdb;\r\nprint_r( $wpdb-&gt;queries );\r\n}', 'QUERIES', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2002-01-14 05:40:12', '2002-01-14 05:40:12', '', 4, 'http://CL1/?p=5', 0, 'revision', '', 0),
(6, 1, '2002-01-14 05:45:19', '2002-01-14 05:45:19', '&lt;?php if ( current_user_can( ''manage_options'' ) ) {\r\nglobal $wpdb;\r\nprint_r( $wpdb-&gt;queries );\r\n}\r\n\r\n&gt;', 'QUERIES', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2002-01-14 05:45:19', '2002-01-14 05:45:19', '', 4, 'http://CL1/?p=6', 0, 'revision', '', 0),
(8, 1, '2002-01-01 05:20:10', '2002-01-01 05:20:10', '', 'CONSTANTS', '', 'publish', 'open', 'open', '', 'constants', '', '', '2002-01-01 05:20:11', '2002-01-01 05:20:11', '', 0, 'http://CL1/?page_id=8', 0, 'page', '', 0),
(9, 1, '2002-01-01 05:20:11', '2002-01-01 05:20:11', '', 'CONSTANTS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2002-01-01 05:20:11', '2002-01-01 05:20:11', '', 8, 'http://CL1/?p=9', 0, 'revision', '', 0),
(14, 1, '2002-01-01 05:49:40', '2002-01-01 05:49:40', '', 'DB QUERIES', '', 'publish', 'open', 'open', '', 'db-queries', '', '', '2002-01-01 05:49:40', '2002-01-01 05:49:40', '', 0, 'http://CL1/?page_id=14', 0, 'page', '', 0),
(15, 1, '2002-01-01 05:49:40', '2002-01-01 05:49:40', '', 'DB QUERIES', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2002-01-01 05:49:40', '2002-01-01 05:49:40', '', 14, 'http://CL1/?p=15', 0, 'revision', '', 0),
(16, 1, '2002-01-01 05:58:46', '2002-01-01 05:58:46', '&lt;?php if ( current_user_can( ''manage_options'' ) ) {\r\nglobal $wpdb;\r\nprint_r( $wpdb-&gt;queries );\r\n}?&gt;', 'QUERIES', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2002-01-01 05:58:46', '2002-01-01 05:58:46', '', 4, 'http://CL1/?p=16', 0, 'revision', '', 0),
(17, 1, '2002-01-01 06:02:26', '2002-01-01 06:02:26', '&lt;?php if ( current_user_can( ''manage_options'' ) ) {\r\nglobal $wpdb;\r\nprint_r( $wpdb-&gt;queries );\r\n}?&gt;', 'QUERIES', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2002-01-01 06:02:26', '2002-01-01 06:02:26', '', 4, 'http://CL1/?p=17', 0, 'revision', '', 0),
(18, 1, '2002-01-01 06:03:02', '2002-01-01 06:03:02', '&lt;?php if ( current_user_can( ''manage_options'' ) ) {\r\nglobal $wpdb;\r\nprint_r( $wpdb-&gt;queries );\r\n}?&gt;', 'QUERIES', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2002-01-01 06:03:02', '2002-01-01 06:03:02', '', 4, 'http://CL1/?p=18', 0, 'revision', '', 0),
(19, 1, '2002-01-15 02:57:48', '2002-01-15 02:57:48', '', 'test mySQL', '', 'publish', 'open', 'open', '', 'test-mysql', '', '', '2002-01-15 02:57:48', '2002-01-15 02:57:48', '', 0, 'http://CL1/?page_id=19', 0, 'page', '', 0),
(20, 1, '2002-01-15 02:57:48', '2002-01-15 02:57:48', '', 'test mySQL', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2002-01-15 02:57:48', '2002-01-15 02:57:48', '', 19, 'http://CL1/?p=20', 0, 'revision', '', 0),
(22, 1, '2002-01-20 23:28:08', '2002-01-20 23:28:08', '<strong>Some stuff</strong>', 'Show page', '', 'publish', 'closed', 'closed', '', 'show-page', '', '', '2002-01-21 00:15:04', '2002-01-21 00:15:04', '', 0, 'http://CL1/?page_id=22', 0, 'page', '', 0),
(23, 1, '2002-01-20 23:28:08', '2002-01-20 23:28:08', '<strong>Some stuff</strong>', 'Show page', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2002-01-20 23:28:08', '2002-01-20 23:28:08', '', 22, 'http://CL1/?p=23', 0, 'revision', '', 0),
(24, 1, '2002-01-20 23:53:40', '2002-01-20 23:53:40', '<strong>Some stuff</strong>', 'Show page1', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2002-01-20 23:53:40', '2002-01-20 23:53:40', '', 22, 'http://CL1/?p=24', 0, 'revision', '', 0),
(25, 1, '2002-01-21 00:15:04', '2002-01-21 00:15:04', '<strong>Some stuff</strong>', 'Show page', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2002-01-21 00:15:04', '2002-01-21 00:15:04', '', 22, 'http://CL1/?p=25', 0, 'revision', '', 0),
(27, 1, '2002-01-01 04:25:56', '2002-01-01 04:25:56', ' ', '', '', 'publish', 'open', 'closed', '', '27', '', '', '2015-11-03 10:05:55', '2015-11-03 10:05:55', '', 0, 'http://CL1/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2002-01-01 04:25:57', '2002-01-01 04:25:57', ' ', '', '', 'publish', 'open', 'closed', '', '28', '', '', '2015-11-03 10:05:55', '2015-11-03 10:05:55', '', 0, 'http://CL1/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2002-01-01 04:25:58', '2002-01-01 04:25:58', ' ', '', '', 'publish', 'open', 'closed', '', '29', '', '', '2015-11-03 10:05:55', '2015-11-03 10:05:55', '', 0, 'http://CL1/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2002-01-02 05:28:10', '2002-01-02 05:28:10', '', '1377000199_4et38jsegki9oh6', '', 'inherit', 'open', 'open', '', '1377000199_4et38jsegki9oh6', '', '', '2002-01-02 05:28:10', '2002-01-02 05:28:10', '', 1, 'http://CL1/wp-content/uploads/2002/01/1377000199_4et38jsegki9oh6.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2002-01-02 05:38:14', '2002-01-02 05:38:14', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2002-01-02 05:38:14', '2002-01-02 05:38:14', '', 1, 'http://CL1/?p=31', 0, 'revision', '', 0),
(32, 1, '2002-01-02 05:52:33', '2002-01-02 05:52:33', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!<a href="http://CL1/wp-content/uploads/2002/01/1377000199_4et38jsegki9oh6.jpg"><img src="http://CL1/wp-content/uploads/2002/01/1377000199_4et38jsegki9oh6-150x150.jpg" alt="1377000199_4et38jsegki9oh6" width="150" height="150" class="alignnone size-thumbnail wp-image-30" /></a>', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-autosave-v1', '', '', '2002-01-02 05:52:33', '2002-01-02 05:52:33', '', 1, 'http://CL1/?p=32', 0, 'revision', '', 0),
(33, 1, '2002-01-02 05:52:41', '2002-01-02 05:52:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!<a href="http://CL1/wp-content/uploads/2002/01/1377000199_4et38jsegki9oh6.jpg"><img src="http://CL1/wp-content/uploads/2002/01/1377000199_4et38jsegki9oh6-150x150.jpg" alt="1377000199_4et38jsegki9oh6" width="150" height="150" class="alignnone size-thumbnail wp-image-30" /></a>', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2002-01-02 05:52:41', '2002-01-02 05:52:41', '', 1, 'http://CL1/?p=33', 0, 'revision', '', 0),
(34, 1, '2002-01-02 05:54:28', '2002-01-02 05:54:28', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2002-01-02 05:54:28', '2002-01-02 05:54:28', '', 1, 'http://CL1/?p=34', 0, 'revision', '', 0),
(35, 1, '2002-01-02 06:02:30', '2002-01-02 06:02:30', '', '1403903483_249', '', 'inherit', 'open', 'open', '', '1403903483_249', '', '', '2002-01-02 06:02:30', '2002-01-02 06:02:30', '', 0, 'http://CL1/wp-content/uploads/2002/01/1403903483_249.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2015-09-08 10:42:59', '2015-09-08 10:42:59', 'Dynamic sidebar(настраиваемая врезка): A container for a set of widgets, which the user can set from the Widgets screen in the admin panel.\r\nSidebar template(файл шаблона врезки): A theme template that displays content.\r\nSidebar template. Реализуется двумя элементами.\r\n\r\n1. Созданием файла с названием типа sidebar-XXXXXX.php. Например sidebar-primary.php. Файл содержит код, выводящий содержимое врезки.\r\n\r\n2. Для того, чтобы вставить врезку на страницу, необходимо использовать вызов  в коде страницы типа get_sidebar(''XXXXXX''). Если использовать вызов <a href="https://developer.wordpress.org/reference/functions/get_sidebar/" target="_blank">get_sidebar()</a> без параметров, будет вставлен код файла sidebar.php\r\n\r\nDynamic sidebar. Реализуется тремя элементами:\r\n\r\n1. Регистрация новой врезки в файле functions.php с помощью функции <a href="https://developer.wordpress.org/reference/functions/register_sidebar/" target="_blank">register_sidebar()</a>.\r\n\r\n2. Создание файла шаблона врезки, где помещают функцию <a href="https://developer.wordpress.org/reference/functions/dynamic_sidebar/" target="_blank">dynamic_sidebar()</a>, которая выводит содержимое виджетов настраиваемой врезки.\r\n\r\n3. Вызов  в коде страницы аналогично как для ненастраивоемой врезки.\r\n\r\nБолее подробное описание с примечанием об ошибках применения можно посмотреть по ссылке: <a href="http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress" target="_blank">http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress</a>', 'sidebar-page', '', 'publish', 'closed', 'closed', '', 'sidebar-page', '', '', '2015-09-23 13:15:56', '2015-09-23 13:15:56', '', 0, 'http://CL1/?page_id=37', 0, 'page', '', 0),
(39, 1, '2015-09-08 10:44:57', '2015-09-08 10:44:57', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2015-11-03 10:05:55', '2015-11-03 10:05:55', '', 0, 'http://CL1/?p=39', 4, 'nav_menu_item', '', 0),
(42, 1, '2015-09-23 13:14:12', '2015-09-23 13:14:12', 'Dynamic sidebar(настраиваемая врезка): A container for a set of widgets, which the user can set from the Widgets screen in the admin panel.\nSidebar template(файл шаблона врезки): A theme template that displays content.\nSidebar template. Реализуется двумя элементами.\n\n1. Созданием файла с названием типа sidebar-XXXXXX.php. Например sidebar-primary.php. Файл содержит код, выводящий содержимое врезки.\n\n2. Для того, чтобы вставить врезку на страницу, необходимо использовать вызов  в коде страницы типа get_sidebar(''XXXXXX''). Если использовать вызов <a href="https://developer.wordpress.org/reference/functions/get_sidebar/" target="_blank">get_sidebar()</a> без параметров, будет вставлен код файла sidebar.php\n\nDynamic sidebar. Реализуется тремя элементами:\n\n1. Регистрация новой врезки в файле functions.php с помощью функции <a href="https://developer.wordpress.org/reference/functions/register_sidebar/" target="_blank">register_sidebar()</a>.\n\n2. Создание файла шаблона врезки, где помещают функцию <a href="https://developer.wordpress.org/reference/functions/dynamic_sidebar/" target="_blank">dynamic_sidebar()</a>, которая выводит содержимое виджетов настраиваемой врезки.\n\n3. Вызов  в коде страницы аналогично как для ненастраемой врезки.\n\nБолее подробное описание с примечанием об ошибках применения можно посмотреть по ссылке: <a href="http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress" target="_blank">http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress</a>', 'sidebar-page', '', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2015-09-23 13:14:12', '2015-09-23 13:14:12', '', 37, 'http://CL1/?p=42', 0, 'revision', '', 0),
(44, 1, '2015-09-09 10:58:42', '2015-09-09 10:58:42', 'Dynamic sidebar: A container for a set of widgets, which the user can set from the Widgets screen in the admin.\r\nSidebar template: A theme template that displays content.\r\nSidebar template. Реализуется двумя элементами.\r\n\r\n1. Созданием файла с названием типа sidebar-XXXXXX.php. Например sidebar-primary.php. Файл содержит код, выводящий содержимое боковичка.\r\n\r\n2. Для того, чтобы вставить боковичок на страницу, необходимо использовать вызов  в коде страницы. Если использовать вызов <a href="https://developer.wordpress.org/reference/functions/get_sidebar/" target="_blank">get_sidebar()</a> без параметров, будет вставлен код файла sidebar.php\r\n\r\nDynamic sidebar. Реализуется тремя элементами:\r\n\r\n1. Регистрация нового боковичка в файле functions.php с помощью функции <a href="https://developer.wordpress.org/reference/functions/register_sidebar/" target="_blank">register_sidebar()</a>.\r\n\r\n2. Создание файла шаблона, где помещают функцию <a href="https://developer.wordpress.org/reference/functions/dynamic_sidebar/" target="_blank">dynamic_sidebar()</a>, которая выводит содержимое виджетов динамического боковичка.\r\n\r\n3. Вызов  в коде страницы аналогично как для статического боковичка.\r\n\r\nБолее подробное описание с примечанием об ошибках применения можно посмотреть по ссылке: <a href="http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress" target="_blank">http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress</a>', 'sidebar-page', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2015-09-09 10:58:42', '2015-09-09 10:58:42', '', 37, 'http://CL1/?p=44', 0, 'revision', '', 0),
(45, 1, '2015-09-09 11:10:47', '2015-09-09 11:10:47', 'Dynamic sidebar(настраиваемая врезка): A container for a set of widgets, which the user can set from the Widgets screen in the admin panel.\r\nSidebar template(файл шаблона врезки): A theme template that displays content.\r\nSidebar template. Реализуется двумя элементами.\r\n\r\n1. Созданием файла с названием типа sidebar-XXXXXX.php. Например sidebar-primary.php. Файл содержит код, выводящий содержимое врезки.\r\n\r\n2. Для того, чтобы вставить боковичок на страницу, необходимо использовать вызов  в коде страницы типа get_sidebar(''XXXXXX''). Если использовать вызов <a href="https://developer.wordpress.org/reference/functions/get_sidebar/" target="_blank">get_sidebar()</a> без параметров, будет вставлен код файла sidebar.php\r\n\r\nDynamic sidebar. Реализуется тремя элементами:\r\n\r\n1. Регистрация новой врезки в файле functions.php с помощью функции <a href="https://developer.wordpress.org/reference/functions/register_sidebar/" target="_blank">register_sidebar()</a>.\r\n\r\n2. Создание файла шаблона врезки, где помещают функцию <a href="https://developer.wordpress.org/reference/functions/dynamic_sidebar/" target="_blank">dynamic_sidebar()</a>, которая выводит содержимое виджетов настраиваемой врезки.\r\n\r\n3. Вызов  в коде страницы аналогично как для статического боковичка.\r\n\r\nБолее подробное описание с примечанием об ошибках применения можно посмотреть по ссылке: <a href="http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress" target="_blank">http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress</a>', 'sidebar-page', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2015-09-09 11:10:47', '2015-09-09 11:10:47', '', 37, 'http://CL1/?p=45', 0, 'revision', '', 0),
(46, 1, '2015-09-23 13:14:39', '2015-09-23 13:14:39', 'Dynamic sidebar(настраиваемая врезка): A container for a set of widgets, which the user can set from the Widgets screen in the admin panel.\r\nSidebar template(файл шаблона врезки): A theme template that displays content.\r\nSidebar template. Реализуется двумя элементами.\r\n\r\n1. Созданием файла с названием типа sidebar-XXXXXX.php. Например sidebar-primary.php. Файл содержит код, выводящий содержимое врезки.\r\n\r\n2. Для того, чтобы вставить врезку на страницу, необходимо использовать вызов  в коде страницы типа get_sidebar(''XXXXXX''). Если использовать вызов <a href="https://developer.wordpress.org/reference/functions/get_sidebar/" target="_blank">get_sidebar()</a> без параметров, будет вставлен код файла sidebar.php\r\n\r\nDynamic sidebar. Реализуется тремя элементами:\r\n\r\n1. Регистрация новой врезки в файле functions.php с помощью функции <a href="https://developer.wordpress.org/reference/functions/register_sidebar/" target="_blank">register_sidebar()</a>.\r\n\r\n2. Создание файла шаблона врезки, где помещают функцию <a href="https://developer.wordpress.org/reference/functions/dynamic_sidebar/" target="_blank">dynamic_sidebar()</a>, которая выводит содержимое виджетов настраиваемой врезки.\r\n\r\n3. Вызов  в коде страницы аналогично как для ненастраемой врезки.\r\n\r\nБолее подробное описание с примечанием об ошибках применения можно посмотреть по ссылке: <a href="http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress" target="_blank">http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress</a>', 'sidebar-page', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2015-09-23 13:14:39', '2015-09-23 13:14:39', '', 37, 'http://CL1/?p=46', 0, 'revision', '', 0),
(47, 1, '2015-09-23 13:15:56', '2015-09-23 13:15:56', 'Dynamic sidebar(настраиваемая врезка): A container for a set of widgets, which the user can set from the Widgets screen in the admin panel.\r\nSidebar template(файл шаблона врезки): A theme template that displays content.\r\nSidebar template. Реализуется двумя элементами.\r\n\r\n1. Созданием файла с названием типа sidebar-XXXXXX.php. Например sidebar-primary.php. Файл содержит код, выводящий содержимое врезки.\r\n\r\n2. Для того, чтобы вставить врезку на страницу, необходимо использовать вызов  в коде страницы типа get_sidebar(''XXXXXX''). Если использовать вызов <a href="https://developer.wordpress.org/reference/functions/get_sidebar/" target="_blank">get_sidebar()</a> без параметров, будет вставлен код файла sidebar.php\r\n\r\nDynamic sidebar. Реализуется тремя элементами:\r\n\r\n1. Регистрация новой врезки в файле functions.php с помощью функции <a href="https://developer.wordpress.org/reference/functions/register_sidebar/" target="_blank">register_sidebar()</a>.\r\n\r\n2. Создание файла шаблона врезки, где помещают функцию <a href="https://developer.wordpress.org/reference/functions/dynamic_sidebar/" target="_blank">dynamic_sidebar()</a>, которая выводит содержимое виджетов настраиваемой врезки.\r\n\r\n3. Вызов  в коде страницы аналогично как для ненастраивоемой врезки.\r\n\r\nБолее подробное описание с примечанием об ошибках применения можно посмотреть по ссылке: <a href="http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress" target="_blank">http://justintadlock.com/archives/2010/11/08/sidebars-in-wordpress</a>', 'sidebar-page', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2015-09-23 13:15:56', '2015-09-23 13:15:56', '', 37, 'http://CL1/?p=47', 0, 'revision', '', 0),
(48, 1, '2015-09-24 05:32:20', '2015-09-24 05:32:20', 'Для вывода поля ввода строки поиска используется функция get_search_form(). Работает она следующим образом.\r\n\r\nWill first attempt to locate the searchform.php file in either the child or the parent, then load it. If it doesn’t exist, then the default search form will be displayed. The default search form is HTML, which will be displayed.\r\n\r\nБолее подробно почитать о применении функции и создании своей формы поиска можно <a href="https://developer.wordpress.org/reference/functions/get_search_form/" target="_blank">здесь</a>.', 'Search box page', '', 'publish', 'closed', 'closed', '', 'search-box-page', '', '', '2015-09-30 12:53:34', '2015-09-30 12:53:34', '', 0, 'http://CL1/?page_id=48', 0, 'page', '', 0),
(49, 1, '2015-09-24 05:32:20', '2015-09-24 05:32:20', 'Для вывода поля ввода строки поиска используется функция get_search_form(). Работает она следующим образом.\r\n\r\nWill first attempt to locate the searchform.php file in either the child or the parent, then load it. If it doesn’t exist, then the default search form will be displayed. The default search form is HTML, which will be displayed.\r\n\r\nБолее подробно почитать о применении функции и создании своей формы поиска можно <a href="https://developer.wordpress.org/reference/functions/get_search_form/" target="_blank">здесь</a>.\r\n\r\n&nbsp;', 'Search box page', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2015-09-24 05:32:20', '2015-09-24 05:32:20', '', 48, 'http://CL1/?p=49', 0, 'revision', '', 0),
(50, 1, '2015-09-24 05:33:17', '2015-09-24 05:33:17', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2015-11-03 10:05:55', '2015-11-03 10:05:55', '', 0, 'http://CL1/?p=50', 5, 'nav_menu_item', '', 0),
(51, 1, '2015-09-29 13:41:25', '2015-09-29 13:41:25', 'Для вывода поля ввода строки поиска используется функция get_search_form(). Работает она следующим образом.\n\nWill first attempt to locate the searchform.php file in either the child or the parent, then load it. If it doesn’t exist, then the default search form will be displayed. The default search form is HTML, which will be displayed.\n\nБолее подробно почитать о применении функции и создании своей формы поиска можно <a href="https://developer.wordpress.org/reference/functions/get_search_form/" target="_blank">здесь</a>.\n\nLorem ipsum', 'Search box page', '', 'inherit', 'closed', 'closed', '', '48-autosave-v1', '', '', '2015-09-29 13:41:25', '2015-09-29 13:41:25', '', 48, 'http://CL1/?p=51', 0, 'revision', '', 0),
(52, 1, '2015-09-29 13:41:58', '2015-09-29 13:41:58', 'Для вывода поля ввода строки поиска используется функция get_search_form(). Работает она следующим образом.\r\n\r\nWill first attempt to locate the searchform.php file in either the child or the parent, then load it. If it doesn’t exist, then the default search form will be displayed. The default search form is HTML, which will be displayed.\r\n\r\nБолее подробно почитать о применении функции и создании своей формы поиска можно <a href="https://developer.wordpress.org/reference/functions/get_search_form/" target="_blank">здесь</a>.\r\n\r\n<strong>Lorem ipsum</strong>\r\n\r\nocation of Drivers and Software Applications on the Hard Drive\r\n\r\nMost of the hardware-enabling device drivers and HP Value Added software that were preinstalled on your HP computer are also available on the system hard drive in their uninstalled form. This software is left on the hard drive for use by Information Technology professionals in the creation of standard software images in a corporate environment. Any very large applications that are delivered on a separate CD (e.g. Microsoft Office, Norton Anti-Virus, etc.) may not be left on the hard drive in their uninstalled form because of the hard drive space that would be required. These types of applications can be reinstalled from the corresponding CD.\r\n\r\nTo check for updates and obtain the most recent version of a software driver for a particular system or device, please visit http://www.hp.com.\r\n\r\nAny software that is left, uninstalled, on the hard drive will be located in the ''c:\\Compaq'' directory. There will be many additional subdirectories under the ''c:\\Compaq'' directory. These subdirectories will usually have descriptive names that will help in identifying the software that is located under that subdirectory. For example:\r\n\r\n* C:\\Compaq\\Video would contain the video drivers for the video solution that originally shipped on the system.\r\n* C:\\Compaq\\Aclient would contain the Altiris client software that was originally shipped on the system.\r\n* C:\\Compaq\\Mouse would contain the Mouse support software that was originally shipped on the system.\r\n* C:\\Compaq\\Cpqdiag would contain the Compaq Diagnostic Utilities that were originally shipped on the system.\r\n* C:\\Compaq\\Audio would contain the audio drivers for the audio solution that originally shipped on the system.\r\n\r\nNOTE: These names are just examples of names that have been used in the past. They may have changed, or may not exist on your particular computer.', 'Search box page', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2015-09-29 13:41:58', '2015-09-29 13:41:58', '', 48, 'http://CL1/?p=52', 0, 'revision', '', 0),
(53, 1, '2015-09-30 12:53:14', '2015-09-30 12:53:14', 'Для вывода поля ввода строки поиска используется функция get_search_form(). Работает она следующим образом.\n\nWill first attempt to locate the searchform.php file in either the child or the parent, then load it. If it doesn’t exist, then the default search form will be displayed. The default search form is HTML, which will be displayed.\n\nБолее подробно почитать о применении функции и создании своей формы поиска можно <a href="https://developer.wordpress.org/reference/functions/get_search_form/" target="_blank">здесь</a>.\n\nLorem ipsum', 'Search box page', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2015-09-30 12:53:14', '2015-09-30 12:53:14', '', 48, 'http://CL1/?p=53', 0, 'revision', '', 0),
(54, 1, '2015-09-30 12:53:34', '2015-09-30 12:53:34', 'Для вывода поля ввода строки поиска используется функция get_search_form(). Работает она следующим образом.\r\n\r\nWill first attempt to locate the searchform.php file in either the child or the parent, then load it. If it doesn’t exist, then the default search form will be displayed. The default search form is HTML, which will be displayed.\r\n\r\nБолее подробно почитать о применении функции и создании своей формы поиска можно <a href="https://developer.wordpress.org/reference/functions/get_search_form/" target="_blank">здесь</a>.', 'Search box page', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2015-09-30 12:53:34', '2015-09-30 12:53:34', '', 48, 'http://CL1/?p=54', 0, 'revision', '', 0),
(57, 1, '2015-10-12 10:57:59', '2015-10-12 10:57:59', 'Для примера привожу два способа. Оба взяты из статьи <a href="http://wp-kama.ru/id_541/samyie-hlebnyie-kroshki-breabcrumbs-dlya-wordpress.html" target="_blank">Хлебные крошки для Wordpress</a>\r\n<ol>\r\n	<li>Первый способ основан на разборе URL страницы. Т.о. может использоваться всегда. Достаточно включить функцию разбора в php-файл и вызвать её в месте отображения breadcrumbs.</li>\r\n	<li>Второй способ применим только в WP. Представляет собой функцию, использующую внутренние данные WP (таксономии, вложения и т.д.). Применение функции аналогично первому способу</li>\r\n</ol>', 'Breadcrumbs', '', 'publish', 'closed', 'closed', '', 'breadcrumbs', '', '', '2015-10-26 09:28:07', '2015-10-26 09:28:07', '', 0, 'http://CL1/?page_id=57', 0, 'page', '', 0),
(58, 1, '2015-10-12 10:57:12', '2015-10-12 10:57:12', '', 'Breadcrumbs', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-10-12 10:57:12', '2015-10-12 10:57:12', '', 57, 'http://CL1/?p=58', 0, 'revision', '', 0),
(59, 1, '2015-10-12 10:58:31', '2015-10-12 10:58:31', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2015-11-03 10:05:55', '2015-11-03 10:05:55', '', 0, 'http://CL1/?p=59', 6, 'nav_menu_item', '', 0),
(60, 1, '2015-10-26 09:26:43', '2015-10-26 09:26:43', 'Для примера привожу два способа. Оба взяты из статьи <a href="http://wp-kama.ru/id_541/samyie-hlebnyie-kroshki-breabcrumbs-dlya-wordpress.html" target="_blank">Хлебные крошки для Wordpress</a>\n<ol>\n	<li>Первый способ основан на разборе URL страницы. Т.о. может использоваться всегда. Достаточно включить функцию разбора в php-файл и вызвать её в месте отображения breadcrumbs.</li>\n	<li>Второй способ применим только в WP. Представляет собой функцию, ис</li>\n</ol>', 'Breadcrumbs', '', 'inherit', 'closed', 'closed', '', '57-autosave-v1', '', '', '2015-10-26 09:26:43', '2015-10-26 09:26:43', '', 57, 'http://CL1/?p=60', 0, 'revision', '', 0),
(61, 1, '2015-10-15 09:56:33', '2015-10-15 09:56:33', 'Для примера привожу два способа.\r\n<ol>\r\n	<li>Применим для постов. Выводится иерархия категорий поста</li>\r\n</ol>', 'Breadcrumbs', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-10-15 09:56:33', '2015-10-15 09:56:33', '', 57, 'http://CL1/?p=61', 0, 'revision', '', 0),
(65, 1, '2015-10-26 09:28:07', '2015-10-26 09:28:07', 'Для примера привожу два способа. Оба взяты из статьи <a href="http://wp-kama.ru/id_541/samyie-hlebnyie-kroshki-breabcrumbs-dlya-wordpress.html" target="_blank">Хлебные крошки для Wordpress</a>\r\n<ol>\r\n	<li>Первый способ основан на разборе URL страницы. Т.о. может использоваться всегда. Достаточно включить функцию разбора в php-файл и вызвать её в месте отображения breadcrumbs.</li>\r\n	<li>Второй способ применим только в WP. Представляет собой функцию, использующую внутренние данные WP (таксономии, вложения и т.д.). Применение функции аналогично первому способу</li>\r\n</ol>', 'Breadcrumbs', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-10-26 09:28:07', '2015-10-26 09:28:07', '', 57, 'http://CL1/?p=65', 0, 'revision', '', 0),
(66, 1, '2015-11-03 10:00:26', '2015-11-03 10:00:26', 'Переменная $content_width используется для установки ширины контнента, например встроенных oEmbed или изображений.\r\nТакже эта переменная влияет на размеры изображений во всплывающем окне редактора изображений консоли администратора.Кроме того, плагины часто используют переменную, задающую ширину контента в своей работе.\r\nПеременная задаётся в файле functions.php:\r\nif ( ! isset( $content_width ) ) {\r\n$content_width = 600;\r\n}\r\nПодробнее см. <a href="http://codex.wordpress.org/Content_Width" target="_blank">Theme feature: Content width </a>', 'Content width', '', 'publish', 'open', 'open', '', 'content-width', '', '', '2015-11-03 10:00:26', '2015-11-03 10:00:26', '', 0, 'http://CL1/?p=66', 0, 'post', '', 0),
(67, 1, '2015-11-03 10:00:26', '2015-11-03 10:00:26', 'Переменная $content_width используется для установки ширины контнента, например встроенных oEmbed или изображений.\r\nТакже эта переменная влияет на размеры изображений во всплывающем окне редактора изображений консоли администратора.Кроме того, плагины часто используют переменную, задающую ширину контента в своей работе.\r\nПеременная задаётся в файле functions.php:\r\nif ( ! isset( $content_width ) ) {\r\n$content_width = 600;\r\n}\r\nПодробнее см. <a href="http://codex.wordpress.org/Content_Width" target="_blank">Theme feature: Content width </a>', 'Content width', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2015-11-03 10:00:26', '2015-11-03 10:00:26', '', 66, 'http://CL1/?p=67', 0, 'revision', '', 0),
(68, 1, '2015-11-03 10:05:25', '2015-11-03 10:05:25', 'Используется для добавления на страницы сайта ссылок на RSS feeds. Ссылки располагаются в конце HTML тэга &lt;head&gt;.\r\nДля включения опции необходимо добавить в файл functions.php вызов функции:\r\nadd_theme_support( ''automatic-feed-links'' );\r\nДополнительная информация:\r\n<a href="http://codex.wordpress.org/Automatic_Feed_Links" target="_blank">Theme Feature: Automatic Feed Links</a>\r\n<a href="http://codex.wordpress.org/Introduction_to_Blogging#Syndication" target="_blank">Syndication defenition</a>\r\n<a href="http://codex.wordpress.org/Customizing_Feeds" target="_blank">How WordPress Produces Feeds</a>\r\n<a href="http://codex.wordpress.org/WordPress_Feeds" target="_blank">Introduction to Feeds</a>', 'Automatic Feed Links', '', 'publish', 'closed', 'closed', '', 'automatic-feed-links', '', '', '2015-11-03 10:05:25', '2015-11-03 10:05:25', '', 0, 'http://CL1/?page_id=68', 0, 'page', '', 0),
(69, 1, '2015-11-03 10:05:25', '2015-11-03 10:05:25', 'Используется для добавления на страницы сайта ссылок на RSS feeds. Ссылки располагаются в конце HTML тэга &lt;head&gt;.\r\nДля включения опции необходимо добавить в файл functions.php вызов функции:\r\nadd_theme_support( ''automatic-feed-links'' );\r\nДополнительная информация:\r\n<a href="http://codex.wordpress.org/Automatic_Feed_Links" target="_blank">Theme Feature: Automatic Feed Links</a>\r\n<a href="http://codex.wordpress.org/Introduction_to_Blogging#Syndication" target="_blank">Syndication defenition</a>\r\n<a href="http://codex.wordpress.org/Customizing_Feeds" target="_blank">How WordPress Produces Feeds</a>\r\n<a href="http://codex.wordpress.org/WordPress_Feeds" target="_blank">Introduction to Feeds</a>', 'Automatic Feed Links', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2015-11-03 10:05:25', '2015-11-03 10:05:25', '', 68, 'http://CL1/?p=69', 0, 'revision', '', 0),
(70, 1, '2015-11-03 10:05:55', '2015-11-03 10:05:55', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2015-11-03 10:05:55', '2015-11-03 10:05:55', '', 0, 'http://CL1/?p=70', 7, 'nav_menu_item', '', 0),
(71, 1, '2015-11-06 10:21:51', '2015-11-06 10:21:51', 'Включение этой опции позволяет пользователю самостоятельно выбирать изображение в заголовок сайта. После включения опции в административной консоли появляется пункт меню Appearance-&gt;Header.\r\n\r\nДля включения опции необходимо:\r\n<ol>\r\n	<li>Добавить в файл functions.php вызов функции\r\n<pre>add_theme_support( ''custom-header'' );</pre>\r\n</li>\r\n	<li>Добавить в файл header.php теги для вставки изображения в заголовок\r\n<pre>&lt;img src="&lt;?php header_image(); ?&gt;" height="&lt;?php echo get_custom_header()-&gt;height; ?&gt;" width="&lt;?php echo get_custom_header()-&gt;width; ?&gt;" alt="" /&gt;</pre>\r\n</li>\r\n</ol>\r\nБолее подробно об использовании этой опции и использовании аргументов при вызове функции add_theme_support( ''custom-header'' ) смотри <a href="https://codex.wordpress.org/Custom_Headers">Theme feature:Custom Header</a>.', 'Custom Headers', '', 'publish', 'open', 'open', '', 'custom-headers', '', '', '2015-11-06 10:21:51', '2015-11-06 10:21:51', '', 0, 'http://CL1/?p=71', 0, 'post', '', 0),
(72, 1, '2015-11-06 10:21:51', '2015-11-06 10:21:51', 'Включение этой опции позволяет пользователю самостоятельно выбирать изображение в заголовок сайта. После включения опции в административной консоли появляется пункт меню Appearance-&gt;Header.\r\n\r\nДля включения опции необходимо:\r\n<ol>\r\n	<li>Добавить в файл functions.php вызов функции\r\n<pre>add_theme_support( ''custom-header'' );</pre>\r\n</li>\r\n	<li>Добавить в файл header.php теги для вставки изображения в заголовок\r\n<pre>&lt;img src="&lt;?php header_image(); ?&gt;" height="&lt;?php echo get_custom_header()-&gt;height; ?&gt;" width="&lt;?php echo get_custom_header()-&gt;width; ?&gt;" alt="" /&gt;</pre>\r\n</li>\r\n</ol>\r\nБолее подробно об использовании этой опции и использовании аргументов при вызове функции add_theme_support( ''custom-header'' ) смотри <a href="https://codex.wordpress.org/Custom_Headers">Theme feature:Custom Header</a>.', 'Custom Headers', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2015-11-06 10:21:51', '2015-11-06 10:21:51', '', 71, 'http://CL1/?p=72', 0, 'revision', '', 0),
(74, 1, '2015-11-20 09:39:56', '0000-00-00 00:00:00', '', 'j,', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-11-20 09:39:56', '2015-11-20 09:39:56', '', 0, 'http://CL1/?page_id=74', 0, 'page', '', 0),
(75, 1, '2015-11-20 09:41:13', '0000-00-00 00:00:00', '', 'dgh', '', 'draft', 'open', 'open', '', '', '', '', '2015-11-20 09:41:13', '2015-11-20 09:41:13', '', 0, 'http://CL1/?p=75', 0, 'post', '', 0),
(81, 1, '2016-02-11 10:06:34', '2016-02-11 10:06:34', '1.Использование API Wordpress\r\n\r\nИспользование отлично описано http://wp-kama.ru/id_3773/api-optsiy-nastroek.html.\r\nВкраце:\r\nРегистрируем настройку с помощью register_setting()\r\nВыводим секцию на одной из имеющихся страниц опций do_settings_fields()\r\nПри необходимости можно создать свою страницу опций add_options_page() и вывести опции на ней. Тогда необходимо использовать функцию settings_fields() выводящую скрытые поля, обеспечивающие безопасность\r\nЕсли опций много, можно их объеденить в секции. Для создания секции используется функция add_settings_section(). Опции, объединённые в секции выводятся функцией do_settings_sections().\r\n\r\n2.Использование Redux Framework\r\n\r\nИспользование Redux Framework упрощает разработку, красиво выглядит и имеет .\r\nДля получения файлов RF необходимо зарегистрироваться на странице https://reduxframework.com/account/. После чего зайти на страницу <a href="https://build.reduxframework.com" target="_blank">Redux builder</a> сгенерировать подходящую конфигурацию. В случае встраивания в тему или плагин в результате будет сгенерирован архив с папкой admin, который надо разместить в плагине или теме. Для подключения RF необходимо включить файл ...admin/admin-init.php в файл плагина или functions.php. Настройка опций осуществляется редактированием файла options-init.php.\r\nДополнительно:\r\n<a href="https://developer.wordpress.org/plugins/settings/settings-api/" target="_blank">Руководство Wordpress</a>\r\n<a href="https://reduxframework.com/" target="_blank">Сайт Redux framework</a>', 'Создание опций плагина', '', 'publish', 'open', 'open', '', '%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d0%be%d0%bf%d1%86%d0%b8%d0%b9-%d0%bf%d0%bb%d0%b0%d0%b3%d0%b8%d0%bd%d0%b0', '', '', '2016-02-12 10:07:05', '2016-02-12 10:07:05', '', 0, 'http://CL1/?p=81', 0, 'post', '', 0),
(82, 1, '2016-02-11 10:06:34', '2016-02-11 10:06:34', '<p>1.Использование API Wordpress</p>\r\nИспользование отлично описано http://wp-kama.ru/id_3773/api-optsiy-nastroek.html.<br>\r\nВкраце:<br>\r\nРегистрируем настройку с помощью register_setting()<br>\r\nВыводим секцию на одной из имеющихся страниц опций do_settings_fields()<br>\r\nПри необходимости можно создать свою страницу опций add_options_page() и вывести опции на ней. Тогда необходимо использовать функцию settings_fields() выводящую скрытые поля, обеспечивающие безопасность<br>\r\nЕсли опций много, можно их объеденить в секции. Для создания секции используется функция add_settings_section(). Опции, объединённые в секции выводятся функцией do_settings_sections().<br>\r\n<br>\r\n<p>2.Использование Redux Framework</p>\r\nИспользование Redux Framework упрощает разработку, красиво выглядит и  имеет .<br>\r\nДля получения файлов RF необходимо зарегистрироваться на странице https://reduxframework.com/account/. После чего зайти на страницу <a href="https://build.reduxframework.com" target="_blank">Redux builder</a> сгенерировать подходящую конфигурацию. В случае встраивания в тему или плагин в результате будет сгенерирован архив с папкой admin, который надо разместить в плагине или теме. Для подключения RF необходимо включить файл ...admin/admin-init.php в файл плагина или functions.php.\r\nДополнительно:\r\n<a href="https://developer.wordpress.org/plugins/settings/settings-api/" target="_blank">Руководство Wordpress</a><br>\r\n<a href="https://reduxframework.com/" target="_blank">Сайт Redux framework</a>', 'Создание опций плагина', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2016-02-11 10:06:34', '2016-02-11 10:06:34', '', 81, 'http://CL1/?p=82', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(83, 1, '2016-02-12 10:06:18', '2016-02-12 10:06:18', '1.Использование API Wordpress\n\nИспользование отлично описано http://wp-kama.ru/id_3773/api-optsiy-nastroek.html.\nВкраце:\nРегистрируем настройку с помощью register_setting()\nВыводим секцию на одной из имеющихся страниц опций do_settings_fields()\nПри необходимости можно создать свою страницу опций add_options_page() и вывести опции на ней. Тогда необходимо использовать функцию settings_fields() выводящую скрытые поля, обеспечивающие безопасность\nЕсли опций много, можно их объеденить в секции. Для создания секции используется функция add_settings_section(). Опции, объединённые в секции выводятся функцией do_settings_sections().\n\n2.Использование Redux Framework\n\nИспользование Redux Framework упрощает разработку, красиво выглядит и имеет .\nДля получения файлов RF необходимо зарегистрироваться на странице https://reduxframework.com/account/. После чего зайти на страницу <a href="https://build.reduxframework.com" target="_blank">Redux builder</a> сгенерировать подходящую конфигурацию. В случае встраивания в тему или плагин в результате будет сгенерирован архив с папкой admin, который надо разместить в плагине или теме. Для подключения RF необходимо включить файл ...admin/admin-init.php в файл плагина или functions.php. Настройка опций осуществляется редактированием ф\nДополнительно:\n<a href="https://developer.wordpress.org/plugins/settings/settings-api/" target="_blank">Руководство Wordpress</a>\n<a href="https://reduxframework.com/" target="_blank">Сайт Redux framework</a>', 'Создание опций плагина', '', 'inherit', 'closed', 'closed', '', '81-autosave-v1', '', '', '2016-02-12 10:06:18', '2016-02-12 10:06:18', '', 81, 'http://CL1/?p=83', 0, 'revision', '', 0),
(84, 1, '2016-02-12 10:07:05', '2016-02-12 10:07:05', '1.Использование API Wordpress\r\n\r\nИспользование отлично описано http://wp-kama.ru/id_3773/api-optsiy-nastroek.html.\r\nВкраце:\r\nРегистрируем настройку с помощью register_setting()\r\nВыводим секцию на одной из имеющихся страниц опций do_settings_fields()\r\nПри необходимости можно создать свою страницу опций add_options_page() и вывести опции на ней. Тогда необходимо использовать функцию settings_fields() выводящую скрытые поля, обеспечивающие безопасность\r\nЕсли опций много, можно их объеденить в секции. Для создания секции используется функция add_settings_section(). Опции, объединённые в секции выводятся функцией do_settings_sections().\r\n\r\n2.Использование Redux Framework\r\n\r\nИспользование Redux Framework упрощает разработку, красиво выглядит и имеет .\r\nДля получения файлов RF необходимо зарегистрироваться на странице https://reduxframework.com/account/. После чего зайти на страницу <a href="https://build.reduxframework.com" target="_blank">Redux builder</a> сгенерировать подходящую конфигурацию. В случае встраивания в тему или плагин в результате будет сгенерирован архив с папкой admin, который надо разместить в плагине или теме. Для подключения RF необходимо включить файл ...admin/admin-init.php в файл плагина или functions.php. Настройка опций осуществляется редактированием файла options-init.php.\r\nДополнительно:\r\n<a href="https://developer.wordpress.org/plugins/settings/settings-api/" target="_blank">Руководство Wordpress</a>\r\n<a href="https://reduxframework.com/" target="_blank">Сайт Redux framework</a>', 'Создание опций плагина', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2016-02-12 10:07:05', '2016-02-12 10:07:05', '', 81, 'http://CL1/?p=84', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_revisr`
--

CREATE TABLE IF NOT EXISTS `wp_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'PAGES', 'pages', 0),
(3, 'Theme feature', 'theme-feature', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(39, 2, 0),
(50, 2, 0),
(59, 2, 0),
(66, 1, 0),
(66, 3, 0),
(70, 2, 0),
(71, 1, 0),
(71, 3, 0),
(75, 1, 0),
(81, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'post_tag', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'viktorr1975'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '80'),
(16, 1, 'wp_user-settings', 'mfold=o&editor=tinymce&unfold=1&wplink=1&libraryContent=browse&posts_list_mode=list'),
(17, 1, 'wp_user-settings-time', '1455271632'),
(18, 1, 'closedpostboxes_page', 'a:1:{i:0;s:12:"postimagediv";}'),
(19, 1, 'metaboxhidden_page', 'a:2:{i:0;s:16:"commentstatusdiv";i:1;s:9:"authordiv";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'wp_media_library_mode', 'list'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(26, 1, 'session_tokens', 'a:3:{s:64:"69c9d62f9b9689655d9cda03ed6a139a3c22cb13fe7a2572ac4e29780bffd8d4";a:4:{s:10:"expiration";i:1455003475;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36";s:5:"login";i:1453793875;}s:64:"38c141c20534cc8cd9d57ca7e3acbb82ca2320ff07f41f5a61b118b4acc38d9f";a:4:{s:10:"expiration";i:1455616333;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36";s:5:"login";i:1454406733;}s:64:"12a75078070b42a7b39557b8fac1389e5a3bcdf73e3dbde898fe1e990c57210d";a:4:{s:10:"expiration";i:1456121071;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:43.0) Gecko/20100101 Firefox/43.0";s:5:"login";i:1454911471;}}'),
(27, 1, 'wp_r_tru_u_x', 'a:2:{s:2:"id";s:0:"";s:7:"expires";i:86400;}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'viktorr1975', '$P$B.MwA8pQbrjoOSjIU7/JjQQNqEYx1E.', 'viktorr1975', 'viktorr1975@yandex.com', '', '2002-01-10 03:51:36', '', 0, 'viktorr1975');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
