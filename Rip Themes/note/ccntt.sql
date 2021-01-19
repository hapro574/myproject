-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 03:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccntt`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors`
--

CREATE TABLE `nv4_authors` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT 0,
  `edittime` int(11) NOT NULL DEFAULT 0,
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `susp_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pre_last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pre_last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors`
--

INSERT INTO `nv4_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `pre_check_num`, `pre_last_login`, `pre_last_ip`, `pre_last_agent`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', '9464f598024ed01adc4ba21e5b97a3c3', 1611022604, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_config`
--

CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `begintime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_module`
--

CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT 0,
  `act_1` tinyint(4) NOT NULL DEFAULT 0,
  `act_2` tinyint(4) NOT NULL DEFAULT 1,
  `act_3` tinyint(4) NOT NULL DEFAULT 1,
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors_module`
--

INSERT INTO `nv4_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, 'd1cf39e5668e6cb82d6248c0db7471f6'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '0129c2054e8ebf1b3716b91a95d017a5'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'a006a2ffbfc30ad588d231026cdf8f80'),
(4, 'database', 'mod_database', 4, 1, 0, 0, '942f0700e3b5ddd9c707237cfe2cbab3'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, 'cbb1b587e3eae386fedf63ecfc15b7f0'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, '85b23f718c5024e3965bd744788cd214'),
(7, 'language', 'mod_language', 7, 1, 1, 0, 'b258a232e90870e9ea95c6eb6cfe04ba'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '010aa46e82f75fa375a9d28b01f4ae38'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '6f8e5d2dba0acb490203f5f4b9f3b8d0'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '0fff9e5d08c6957ddde1da9765cb7074'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '457c7f0a6baefa87e852dfc6ad5d6f83');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_oauth`
--

CREATE TABLE `nv4_authors_oauth` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL COMMENT 'ID của quản trị',
  `oauth_server` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Eg: facebook, google...',
  `oauth_uid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID duy nhất ứng với server',
  `oauth_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu xác thực 2 bước từ oauth của admin';

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_click`
--

CREATE TABLE `nv4_banners_click` (
  `id` int(11) UNSIGNED NOT NULL,
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_click`
--

INSERT INTO `nv4_banners_click` (`id`, `bid`, `click_time`, `click_day`, `click_ip`, `click_country`, `click_browse_key`, `click_browse_name`, `click_os_key`, `click_os_name`, `click_ref`) VALUES
(1, 2, 1607480142, 0, '127.0.0.1', 'ZZ', '', 'chrome', '', 'Windows 10', 'http://ccntt.my/'),
(2, 5, 1607480813, 0, '127.0.0.1', 'ZZ', '', 'chrome', '', 'Windows 10', 'http://ccntt.my/'),
(3, 7, 1607481058, 0, '127.0.0.1', 'ZZ', '', 'chrome', '', 'Windows 10', 'http://ccntt.my/'),
(4, 6, 1607675181, 0, '127.0.0.1', 'ZZ', '', 'chrome', '', 'Windows 10', 'http://ccntt.my/');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_plans`
--

CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `require_image` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_plans`
--

INSERT INTO `nv4_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 575, 72, 1, 1, 'images', '', 0),
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1, 1, 'images', '', 0),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1, 1, 'images', '', 0),
(5, '', 'quang cao giua trang 2', '', 'sequential', 740, 101, 1, 1, '', '', 0),
(6, '', 'quang cao trai 2', '', 'sequential', 250, 77, 1, 1, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_rows`
--

CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_rows`
--

INSERT INTO `nv4_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'vinades', 2, 1, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', '', 1606359771, 1606359771, 0, 1, 1, 2),
(3, 'Quang cao giua trang', 1, 1, 'banners.jpg', 'jpg', 'image/jpeg', 740, 101, '', '', 'http://webnhanh.vn', '_blank', '', 1606359771, 1606359720, 0, 0, 1, 1),
(4, 'cổng thông tin bộ giáo dục và đào tạo', 2, 1, 'cong-thong-tin-bo-giao-duc-va-dao-tao.jpg', 'jpg', 'image/jpeg', 250, 77, '', '', '#', '_blank', '', 1607480487, 1607480487, 0, 0, 1, 1),
(5, 'quang cao giua trang 2', 5, 1, 'banners_1.jpg', 'jpg', 'image/jpeg', 740, 101, '', '', '#', '_blank', '', 1607480774, 1607480774, 0, 1, 1, 1),
(6, 'cong thong tin bo giao duc va dao tao', 6, 1, 'cong-thong-tin-bo-giao-duc-va-dao-tao_1.jpg', 'jpg', 'image/jpeg', 250, 77, '', '', '#', '_blank', '', 1607480877, 1607480877, 0, 1, 1, 1),
(7, 'trang tin bo truong', 6, 1, 'trang-tin-bo-truong-bo-giao-duc-va-dao-tao.jpg', 'jpg', 'image/jpeg', 250, 80, '', '', '#', '_blank', '', 1607481025, 1607481025, 0, 1, 1, 2),
(8, 'van ban ve cntt', 6, 1, 'van-ban-ve-cntt-trong-giao-duc.jpg', 'jpg', 'image/jpeg', 250, 77, '', '', '', '_blank', '', 1607481105, 1607481060, 0, 0, 1, 3),
(10, 'dich vu cong truc tuyen', 6, 1, 'dich-vu-cong-truc-tuyen.jpg', 'jpg', 'image/jpeg', 250, 77, '', '', '', '_blank', '', 1607481389, 1607481389, 0, 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_config`
--

CREATE TABLE `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_config`
--

INSERT INTO `nv4_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', ''),
('sys', 'site', 'mailer_mode', 'mail'),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'sender_name', ''),
('sys', 'site', 'sender_email', ''),
('sys', 'site', 'reply_name', ''),
('sys', 'site', 'reply_email', ''),
('sys', 'site', 'force_sender', '0'),
('sys', 'site', 'force_reply', '0'),
('sys', 'site', 'notify_email_error', '0'),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '3'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', '0'),
('sys', 'site', 'user_check_pass_time', '1800'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'site', 'referer_blocker', '1'),
('sys', 'site', 'private_site', '0'),
('sys', 'site', 'max_user_admin', '0'),
('sys', 'site', 'max_user_number', '0'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '41943040'),
('sys', 'global', 'nv_overflow_size', '0'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'news'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '1609511371'),
('sys', 'global', 'captcha_type', '0'),
('sys', 'global', 'version', '4.4.02'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'admin_2step_opt', 'code'),
('sys', 'global', 'admin_2step_default', 'code'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'global', 'users_special', '0'),
('sys', 'global', 'crosssite_restrict', '1'),
('sys', 'global', 'crosssite_valid_domains', ''),
('sys', 'global', 'crosssite_valid_ips', ''),
('sys', 'global', 'crossadmin_restrict', '1'),
('sys', 'global', 'crossadmin_valid_domains', ''),
('sys', 'global', 'crossadmin_valid_ips', ''),
('sys', 'global', 'domains_whitelist', '[\"youtube.com\",\"www.youtube.com\",\"google.com\",\"www.google.com\",\"drive.google.com\"]'),
('sys', 'global', 'domains_restrict', '1'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'nv_debug', '0'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Cục công nghệ thông tin'),
('vi', 'global', 'site_logo', 'uploads/banner_eict.png'),
('vi', 'global', 'site_banner', 'uploads/banner_1.png'),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'Bộ giáo dục và đào tạo'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r'),
('vi', 'global', 'site_theme', 'ccntt2'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'user_allowed_theme', ''),
('vi', 'global', 'mobile_theme', ''),
('vi', 'global', 'site_home_module', 'news'),
('vi', 'global', 'switch_mobi_des', '0'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1611022904'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha', '1'),
('vi', 'about', 'perpagecomm', '5'),
('vi', 'about', 'timeoutcomm', '360'),
('vi', 'about', 'allowattachcomm', '0'),
('vi', 'about', 'alloweditorcomm', '0'),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '120'),
('vi', 'news', 'homeheight', '170'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'keywords_tag', '1'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'order_articles', '1'),
('vi', 'news', 'identify_cat_change', '0'),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'news', 'instant_articles_username', ''),
('vi', 'news', 'instant_articles_password', ''),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'contact', 'bodytext', ''),
('vi', 'contact', 'sendcopymode', '0'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'siteterms', 'perpagecomm', '5'),
('vi', 'siteterms', 'timeoutcomm', '360'),
('vi', 'siteterms', 'allowattachcomm', '0'),
('vi', 'siteterms', 'alloweditorcomm', '0'),
('vi', 'freecontent', 'next_execute', '0'),
('vi', 'laws', 'auto_postcomm', '0'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'webmaster@ccntt.my'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'webmaster@ccntt.my'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'ccntt.my'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_f7c2gw'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'BXn_NUg7i7o2hRDPEPiNdg,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'laws', 'allowed_comm', '6'),
('vi', 'laws', 'view_comm', '6'),
('vi', 'laws', 'setcomm', '4'),
('vi', 'laws', 'activecomm', '0'),
('vi', 'laws', 'emailcomm', '0'),
('vi', 'laws', 'adminscomm', ''),
('vi', 'laws', 'sortcomm', '0'),
('vi', 'laws', 'captcha', '1'),
('vi', 'laws', 'perpagecomm', '5'),
('vi', 'laws', 'timeoutcomm', '360'),
('vi', 'laws', 'allowattachcomm', '0'),
('vi', 'laws', 'alloweditorcomm', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cookies`
--

CREATE TABLE `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT 0,
  `secure` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cookies`
--

INSERT INTO `nv4_cookies` (`name`, `value`, `domain`, `path`, `expires`, `secure`) VALUES
('nv4c_b1Sp_ctr', 'MTIzXzI1XzIxXzEzLlZO', '.api.nukeviet.vn', '/', 1639450046, 0),
('nv4c_b1Sp_u_lang', 'YpTSHDtzEZZlnKC1-4-mDQ,,', '.api.nukeviet.vn', '/', 1638611992, 0),
('nv4c_b1Sp_statistic_vi', 'pxr4b5xTySQMVGLA0pmoxg,,', '.api.nukeviet.vn', '/', 1607915846, 0),
('nv4c_b1Sp_nvvithemever', 'y6z0B4S1YKW4aqQyD0bnVQ,,', '.api.nukeviet.vn', '/', 1639019648, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_counter`
--

CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_counter`
--

INSERT INTO `nv4_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1611022213, 0),
('total', 'hits', 1611022213, 249, 249),
('year', '2020', 1609403596, 216, 216),
('year', '2021', 1611022213, 33, 33),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('year', '2026', 0, 0, 0),
('year', '2027', 0, 0, 0),
('year', '2028', 0, 0, 0),
('month', 'Jan', 1611022213, 33, 33),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 0, 0, 0),
('month', 'Nov', 1606650110, 0, 0),
('month', 'Dec', 1609403596, 0, 0),
('day', '01', 1609516003, 7, 7),
('day', '02', 1609588916, 2, 2),
('day', '03', 0, 0, 0),
('day', '04', 1609727377, 2, 2),
('day', '05', 0, 0, 0),
('day', '06', 1609908862, 5, 5),
('day', '07', 1609992655, 3, 3),
('day', '08', 1607401870, 0, 0),
('day', '09', 1607507169, 0, 0),
('day', '10', 1607618789, 0, 0),
('day', '11', 1607678305, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 1607860795, 0, 0),
('day', '14', 1610595090, 5, 5),
('day', '15', 1608026100, 0, 0),
('day', '16', 1608112996, 0, 0),
('day', '17', 1608199398, 0, 0),
('day', '18', 1610963113, 7, 7),
('day', '19', 1611022213, 2, 2),
('day', '20', 0, 0, 0),
('day', '21', 1608545664, 0, 0),
('day', '22', 1608630120, 0, 0),
('day', '23', 1608715735, 0, 0),
('day', '24', 1608796290, 0, 0),
('day', '25', 0, 0, 0),
('day', '26', 1606382275, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 0, 0, 0),
('day', '29', 1606650110, 0, 0),
('day', '30', 1609322828, 0, 0),
('day', '31', 1609403596, 0, 0),
('dayofweek', 'Sunday', 1607860795, 8, 8),
('dayofweek', 'Monday', 1610963113, 45, 45),
('dayofweek', 'Tuesday', 1611022213, 29, 29),
('dayofweek', 'Wednesday', 1609908862, 57, 57),
('dayofweek', 'Thursday', 1610595090, 68, 68),
('dayofweek', 'Friday', 1609516003, 40, 40),
('dayofweek', 'Saturday', 1609588916, 2, 2),
('hour', '00', 0, 0, 0),
('hour', '01', 0, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 0, 0, 0),
('hour', '08', 1609725218, 0, 0),
('hour', '09', 1611022213, 2, 2),
('hour', '10', 1610595090, 0, 0),
('hour', '11', 1609992655, 0, 0),
('hour', '12', 0, 0, 0),
('hour', '13', 1609396156, 0, 0),
('hour', '14', 1610953364, 0, 0),
('hour', '15', 1610959433, 0, 0),
('hour', '16', 1610963113, 0, 0),
('hour', '17', 1609322828, 0, 0),
('hour', '18', 1607860795, 0, 0),
('hour', '19', 1609588916, 0, 0),
('hour', '20', 0, 0, 0),
('hour', '21', 1609510993, 0, 0),
('hour', '22', 1609516003, 0, 0),
('hour', '23', 1607618789, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 1608715735, 2, 2),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 1608706802, 7, 7),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1611022213, 240, 240),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 1611022213, 246, 246),
('os', 'win8', 0, 0, 0),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 1608191776, 3, 3),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1611022213, 249, 249),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cronjobs`
--

CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inter_val_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cronjobs`
--

INSERT INTO `nv4_cronjobs` (`id`, `start_time`, `inter_val`, `inter_val_type`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1606359771, 5, 0, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1611022604, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1606359771, 1440, 0, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1610953371, 1, 'Tự động lưu CSDL'),
(3, 1606359771, 60, 0, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1611022228, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1606359771, 30, 0, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1611022228, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1606359771, 1440, 0, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1610953371, 1, 'Xóa các file error_log quá hạn'),
(6, 1606359771, 360, 0, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1606359771, 60, 0, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1611022228, 1, 'Xóa các referer quá hạn'),
(8, 1606359771, 60, 0, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1611022228, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1606359771, 1440, 0, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1610953371, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_extension_files`
--

CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_extension_files`
--

INSERT INTO `nv4_extension_files` (`idfile`, `type`, `title`, `path`, `lastmodified`, `duplicate`) VALUES
(1, 'module', 'laws', 'modules/laws/action_mysql.php', 1607508010, 0),
(2, 'module', 'laws', 'modules/laws/admin/area.php', 1607508010, 0),
(3, 'module', 'laws', 'modules/laws/admin/cat.php', 1607508010, 0),
(4, 'module', 'laws', 'modules/laws/admin/change_cat.php', 1607508010, 0),
(5, 'module', 'laws', 'modules/laws/admin/config.php', 1607508010, 0),
(6, 'module', 'laws', 'modules/laws/admin/examine.php', 1607508010, 0),
(7, 'module', 'laws', 'modules/laws/admin/getlid.php', 1607508010, 0),
(8, 'module', 'laws', 'modules/laws/admin/main.php', 1607508010, 0),
(9, 'module', 'laws', 'modules/laws/admin/scontent.php', 1607508010, 0),
(10, 'module', 'laws', 'modules/laws/admin/signer.php', 1607508010, 0),
(11, 'module', 'laws', 'modules/laws/admin/subject.php', 1607508010, 0),
(12, 'module', 'laws', 'modules/laws/admin/view.php', 1607508010, 0),
(13, 'module', 'laws', 'modules/laws/admin.functions.php', 1607508010, 0),
(14, 'module', 'laws', 'modules/laws/admin.menu.php', 1607508010, 0),
(15, 'module', 'laws', 'modules/laws/blocks/global.block_cat.ini', 1607508010, 0),
(16, 'module', 'laws', 'modules/laws/blocks/global.block_cat.php', 1607508010, 0),
(17, 'module', 'laws', 'modules/laws/blocks/global.block_new_law.ini', 1607508010, 0),
(18, 'module', 'laws', 'modules/laws/blocks/global.block_new_law.php', 1607508010, 0),
(19, 'module', 'laws', 'modules/laws/blocks/global.block_subject.ini', 1607508010, 0),
(20, 'module', 'laws', 'modules/laws/blocks/global.block_subject.php', 1607508010, 0),
(21, 'module', 'laws', 'modules/laws/blocks/index.html', 1607508010, 0),
(22, 'module', 'laws', 'modules/laws/blocks/module.block_area.php', 1607508010, 0),
(23, 'module', 'laws', 'modules/laws/blocks/module.block_area_top10_center.php', 1607508010, 0),
(24, 'module', 'laws', 'modules/laws/blocks/module.block_search.ini', 1607508010, 0),
(25, 'module', 'laws', 'modules/laws/blocks/module.block_search.php', 1607508010, 0),
(26, 'module', 'laws', 'modules/laws/blocks/module.block_signer.php', 1607508010, 0),
(27, 'module', 'laws', 'modules/laws/blocks/module.block_top_down.php', 1607508010, 0),
(28, 'module', 'laws', 'modules/laws/blocks/module.block_top_view.php', 1607508010, 0),
(29, 'module', 'laws', 'modules/laws/funcs/area.php', 1607508010, 0),
(30, 'module', 'laws', 'modules/laws/funcs/cat.php', 1607508010, 0),
(31, 'module', 'laws', 'modules/laws/funcs/detail.php', 1607508010, 0),
(32, 'module', 'laws', 'modules/laws/funcs/index.html', 1607508010, 0),
(33, 'module', 'laws', 'modules/laws/funcs/main.php', 1607508010, 0),
(34, 'module', 'laws', 'modules/laws/funcs/rss.php', 1607508010, 0),
(35, 'module', 'laws', 'modules/laws/funcs/search.php', 1607508010, 0),
(36, 'module', 'laws', 'modules/laws/funcs/signer.php', 1607508010, 0),
(37, 'module', 'laws', 'modules/laws/funcs/sitemap.php', 1607508010, 0),
(38, 'module', 'laws', 'modules/laws/funcs/subject.php', 1607508010, 0),
(39, 'module', 'laws', 'modules/laws/functions.php', 1607508010, 0),
(40, 'module', 'laws', 'modules/laws/index.html', 1607508010, 0),
(41, 'module', 'laws', 'modules/laws/language/admin_en.php', 1607508010, 0),
(42, 'module', 'laws', 'modules/laws/language/admin_vi.php', 1607508010, 0),
(43, 'module', 'laws', 'modules/laws/language/data_vi.php', 1607508010, 0),
(44, 'module', 'laws', 'modules/laws/language/en.php', 1607508010, 0),
(45, 'module', 'laws', 'modules/laws/language/index.html', 1607508010, 0),
(46, 'module', 'laws', 'modules/laws/language/vi.php', 1607508010, 0),
(47, 'module', 'laws', 'modules/laws/menu.php', 1607508010, 0),
(48, 'module', 'laws', 'modules/laws/rssdata.php', 1607508010, 0),
(49, 'module', 'laws', 'modules/laws/search.php', 1607508010, 0),
(50, 'module', 'laws', 'modules/laws/siteinfo.php', 1607508010, 0),
(51, 'module', 'laws', 'modules/laws/sitemap.php', 1607508010, 0),
(52, 'module', 'laws', 'modules/laws/theme.php', 1607508010, 0),
(53, 'module', 'laws', 'modules/laws/version.php', 1607508010, 0),
(54, 'module', 'laws', 'themes/admin_default/css/laws.css', 1607508010, 0),
(55, 'module', 'laws', 'themes/admin_default/images/laws/index.html', 1607508010, 0),
(56, 'module', 'laws', 'themes/admin_default/js/laws.js', 1607508010, 0),
(57, 'module', 'laws', 'themes/admin_default/modules/laws/.htaccess', 1607508010, 0),
(58, 'module', 'laws', 'themes/admin_default/modules/laws/area.tpl', 1607508010, 0),
(59, 'module', 'laws', 'themes/admin_default/modules/laws/cat.tpl', 1607508010, 0),
(60, 'module', 'laws', 'themes/admin_default/modules/laws/config.tpl', 1607508010, 0),
(61, 'module', 'laws', 'themes/admin_default/modules/laws/examine.tpl', 1607508010, 0),
(62, 'module', 'laws', 'themes/admin_default/modules/laws/getlid.tpl', 1607508010, 0),
(63, 'module', 'laws', 'themes/admin_default/modules/laws/index.html', 1607508010, 0),
(64, 'module', 'laws', 'themes/admin_default/modules/laws/main.tpl', 1607508010, 0),
(65, 'module', 'laws', 'themes/admin_default/modules/laws/signer_content.tpl', 1607508010, 0),
(66, 'module', 'laws', 'themes/admin_default/modules/laws/signer_list.tpl', 1607508010, 0),
(67, 'module', 'laws', 'themes/admin_default/modules/laws/subject.tpl', 1607508010, 0),
(68, 'module', 'laws', 'themes/default/css/laws.css', 1607508010, 0),
(69, 'module', 'laws', 'themes/default/images/laws/arrow2_green.gif', 1607508010, 0),
(70, 'module', 'laws', 'themes/default/images/laws/big-icon-pack.png', 1607508010, 0),
(71, 'module', 'laws', 'themes/default/images/laws/button.png', 1607508010, 0),
(72, 'module', 'laws', 'themes/default/images/laws/comment.png', 1607508010, 0),
(73, 'module', 'laws', 'themes/default/images/laws/comment_close.png', 1607508010, 0),
(74, 'module', 'laws', 'themes/default/images/laws/down.gif', 1607508010, 0),
(75, 'module', 'laws', 'themes/default/images/laws/index.html', 1607508010, 0),
(76, 'module', 'laws', 'themes/default/images/laws/item-bottom-shadow.png', 1607508010, 0),
(77, 'module', 'laws', 'themes/default/images/laws/no-avatar.jpg', 1607508010, 0),
(78, 'module', 'laws', 'themes/default/images/laws/right.gif', 1607508010, 0),
(79, 'module', 'laws', 'themes/default/images/laws/small-icon-pack.png', 1607508010, 0),
(80, 'module', 'laws', 'themes/default/images/laws/ul-bull.png', 1607508010, 0),
(81, 'module', 'laws', 'themes/default/js/laws.js', 1607508010, 0),
(82, 'module', 'laws', 'themes/default/js/laws_jquery.marquee.js', 1607508010, 0),
(83, 'module', 'laws', 'themes/default/modules/laws/.htaccess', 1607508010, 0),
(84, 'module', 'laws', 'themes/default/modules/laws/area.tpl', 1607508010, 0),
(85, 'module', 'laws', 'themes/default/modules/laws/block_area.tpl', 1607508010, 0),
(86, 'module', 'laws', 'themes/default/modules/laws/block_cat.tpl', 1607508010, 0),
(87, 'module', 'laws', 'themes/default/modules/laws/block_new_law.tpl', 1607508010, 0),
(88, 'module', 'laws', 'themes/default/modules/laws/block_search_center.tpl', 1607508010, 0),
(89, 'module', 'laws', 'themes/default/modules/laws/block_search_vertical.tpl', 1607508010, 0),
(90, 'module', 'laws', 'themes/default/modules/laws/block_signer.tpl', 1607508010, 0),
(91, 'module', 'laws', 'themes/default/modules/laws/block_subject.tpl', 1607508010, 0),
(92, 'module', 'laws', 'themes/default/modules/laws/block_top10_area.tpl', 1607508010, 0),
(93, 'module', 'laws', 'themes/default/modules/laws/block_topdown.tpl', 1607508010, 0),
(94, 'module', 'laws', 'themes/default/modules/laws/block_topview.tpl', 1607508010, 0),
(95, 'module', 'laws', 'themes/default/modules/laws/cat.tpl', 1607508010, 0),
(96, 'module', 'laws', 'themes/default/modules/laws/detail.tpl', 1607508010, 0),
(97, 'module', 'laws', 'themes/default/modules/laws/index.html', 1607508010, 0),
(98, 'module', 'laws', 'themes/default/modules/laws/list_other.tpl', 1607508010, 0),
(99, 'module', 'laws', 'themes/default/modules/laws/main.tpl', 1607508010, 0),
(100, 'module', 'laws', 'themes/default/modules/laws/main_subject.tpl', 1607508010, 0),
(101, 'module', 'laws', 'themes/default/modules/laws/search.tpl', 1607508010, 0),
(102, 'module', 'laws', 'themes/default/modules/laws/signer.tpl', 1607508010, 0),
(103, 'module', 'laws', 'themes/default/modules/laws/subject.tpl', 1607508010, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_ips`
--

CREATE TABLE `nv4_ips` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_ips`
--

INSERT INTO `nv4_ips` (`id`, `type`, `ip`, `mask`, `area`, `begintime`, `endtime`, `notice`) VALUES
(1, 1, '127.0.0.1', 0, 1, 1606359889, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language`
--

CREATE TABLE `nv4_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language_file`
--

CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_logs`
--

CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_logs`
--

INSERT INTO `nv4_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606359894),
(2, 'vi', 'themes', 'Thiết lập giao diện theme: \"ccntt\"', '', '', 1, 1606361708),
(3, 'vi', 'themes', 'Kích hoạt theme: \"ccntt\"', '', '', 1, 1606364768),
(4, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1606364795),
(5, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1606364795),
(6, 'vi', 'themes', 'Kích hoạt theme: \"ccntt\"', '', '', 1, 1606364811),
(7, 'vi', 'upload', 'Upload file', 'uploads/banner_eict.png', '', 1, 1606364899),
(8, 'vi', 'upload', 'Upload file', 'uploads/banner_1.png', '', 1, 1606364914),
(9, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606370724),
(10, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1606371792),
(11, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1606380301),
(12, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1606380319),
(13, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606648083),
(14, 'vi', 'themes', 'Thêm block', 'Name : global about', '', 1, 1606648617),
(15, 'vi', 'themes', 'Sửa block', 'Name : global about', '', 1, 1606648706),
(16, 'vi', 'upload', 'Upload file', 'uploads/logoa.png', '', 1, 1606648887),
(17, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1606648968),
(18, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1606648996),
(19, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1606649103),
(20, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1606649243),
(21, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1606649259),
(22, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1606649382),
(23, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1606649462),
(24, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1606650271),
(25, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607312659),
(26, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1607312805),
(27, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1607312950),
(28, 'vi', 'themes', 'Thêm block', 'Name : global contact default', '', 1, 1607313614),
(29, 'vi', 'themes', 'Sửa block', 'Name : global contact default', '', 1, 1607313641),
(30, 'vi', 'themes', 'Sửa block', 'Name : global contact default', '', 1, 1607313657),
(31, 'vi', 'themes', 'Sửa block', 'Name : global contact default', '', 1, 1607313689),
(32, 'vi', 'themes', 'Sửa block', 'Name : global contact default', '', 1, 1607313703),
(33, 'vi', 'themes', 'Sửa block', 'Name : global contact default', '', 1, 1607313720),
(34, 'vi', 'themes', 'Sửa block', 'Name : global contact default', '', 1, 1607313730),
(35, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607325794),
(36, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607326941),
(37, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607327082),
(38, 'vi', 'themes', 'Sửa block', 'Name : Thống kê', '', 1, 1607327258),
(39, 'vi', 'themes', 'Sửa block', 'Name : Thống kê', '', 1, 1607327269),
(40, 'vi', 'themes', 'Sửa block', 'Name : Thống kê', '', 1, 1607327281),
(41, 'vi', 'themes', 'Sửa block', 'Name : Thống kê', '', 1, 1607327303),
(42, 'vi', 'themes', 'Thiết lập giao diện theme: \"testttt\"', '', '', 1, 1607329914),
(43, 'vi', 'themes', 'Kích hoạt theme: \"testttt\"', '', '', 1, 1607329916),
(44, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1607329967),
(45, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1607330453),
(46, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1607330465),
(47, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1607330490),
(48, 'vi', 'themes', 'Kích hoạt theme: \"testttt\"', '', '', 1, 1607330497),
(49, 'vi', 'themes', 'Kích hoạt theme: \"ccntt\"', '', '', 1, 1607330981),
(50, 'vi', 'themes', 'Thiết lập giao diện theme: \"test\"', '', '', 1, 1607331447),
(51, 'vi', 'themes', 'Kích hoạt theme: \"test\"', '', '', 1, 1607331449),
(52, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1607331568),
(53, 'vi', 'login', '[hapro574] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1607333640),
(54, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607395733),
(55, 'vi', 'themes', 'Thiết lập giao diện theme: \"ccntt2\"', '', '', 1, 1607395742),
(56, 'vi', 'themes', 'Kích hoạt theme: \"ccntt2\"', '', '', 1, 1607395744),
(57, 'vi', 'themes', 'Thiết lập layout theme: \"ccntt2\"', '', '', 1, 1607395804),
(58, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1607395940),
(59, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607400399),
(60, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607478206),
(61, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607479684),
(62, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607479822),
(63, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607479831),
(64, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607479839),
(65, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607479853),
(66, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607479861),
(67, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607479868),
(68, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607479875),
(69, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607479894),
(70, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607479912),
(71, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607479973),
(72, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607480014),
(73, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607480025),
(74, 'vi', 'banners', 'log_add_banner', 'bannerid 4', '', 1, 1607480487),
(75, 'vi', 'banners', 'log_add_plan', 'planid 4', '', 1, 1607480589),
(76, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1607480602),
(77, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1607480621),
(78, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1607480644),
(79, 'vi', 'banners', 'log_edit_banner', 'bannerid 3', '', 1, 1607480685),
(80, 'vi', 'banners', 'log_add_plan', 'planid 5', '', 1, 1607480749),
(81, 'vi', 'banners', 'log_add_banner', 'bannerid 5', '', 1, 1607480774),
(82, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo giữa trang', '', 1, 1607480785),
(83, 'vi', 'banners', 'log_add_plan', 'planid 6', '', 1, 1607480850),
(84, 'vi', 'banners', 'log_add_banner', 'bannerid 6', '', 1, 1607480877),
(85, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1607480888),
(86, 'vi', 'banners', 'log_edit_plan', 'planid 6', '', 1, 1607480948),
(87, 'vi', 'banners', 'log_del_plan', 'planid 4', '', 1, 1607481000),
(88, 'vi', 'banners', 'log_add_banner', 'bannerid 7', '', 1, 1607481025),
(89, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1607481043),
(90, 'vi', 'banners', 'log_add_banner', 'bannerid 8', '', 1, 1607481105),
(91, 'vi', 'banners', 'log_edit_banner', 'bannerid 8', '', 1, 1607481127),
(92, 'vi', 'banners', 'log_add_banner', 'bannerid 9', '', 1, 1607481162),
(93, 'vi', 'banners', 'log_edit_banner', 'bannerid 9', '', 1, 1607481334),
(94, 'vi', 'banners', 'log_del_banner', 'bannerid 9', '', 1, 1607481365),
(95, 'vi', 'banners', 'log_add_banner', 'bannerid 10', '', 1, 1607481389),
(96, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607481478),
(97, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1607481696),
(98, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1607481725),
(99, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1607481739),
(100, 'vi', 'themes', 'Sửa block', 'Name : Danh mục', '', 1, 1607481795),
(101, 'vi', 'themes', 'Thêm block', 'Name : global login', '', 1, 1607482977),
(102, 'vi', 'themes', 'Sửa block', 'Name : global login', '', 1, 1607482983),
(103, 'vi', 'themes', 'Sửa block', 'Name : global login', '', 1, 1607482995),
(104, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607485288),
(105, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607485771),
(106, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607485786),
(107, 'vi', 'themes', 'Thêm block', 'Name : global login', '', 1, 1607485896),
(108, 'vi', 'themes', 'Sửa block', 'Name : global login', '', 1, 1607485905),
(109, 'vi', 'themes', 'Sửa block', 'Name : Danh mục', '', 1, 1607486499),
(110, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1607486880),
(111, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1607486902),
(112, 'vi', 'news', 'log_add_blockcat', ' ', '', 1, 1607488576),
(113, 'vi', 'themes', 'Thêm block', 'Name : Điểm tin nhanh', '', 1, 1607488716),
(114, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607488729),
(115, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607496131),
(116, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607497126),
(117, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607497407),
(118, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607499389),
(119, 'vi', 'themes', 'Sửa block', 'Name : Danh mục', '', 1, 1607505297),
(120, 'vi', 'themes', 'Sửa block', 'Name : Danh mục', '', 1, 1607505317),
(121, 'vi', 'themes', 'Sửa block', 'Name : Danh mục', '', 1, 1607505419),
(122, 'vi', 'themes', 'Sửa block', 'Name : Danh mục', '', 1, 1607505434),
(123, 'vi', 'themes', 'Sửa block', 'Name : Danh mục', '', 1, 1607505444),
(124, 'vi', 'themes', 'Sửa block', 'Name : Danh mục', '', 1, 1607505455),
(125, 'vi', 'themes', 'Sửa block', 'Name : Danh mục', '', 1, 1607506738),
(126, 'vi', 'modules', 'Thiết lập module mới laws', '', '', 1, 1607508035),
(127, 'vi', 'modules', 'Sửa module &ldquo;laws&rdquo;', '', '', 1, 1607508042),
(128, 'vi', 'laws', 'Thêm người ký văn bản', 'HÀ', '', 1, 1607508076),
(129, 'vi', 'laws', 'Thêm Văn bản', 'Id: 1', '', 1, 1607508152),
(130, 'vi', 'themes', 'Thêm block', 'Name : global block new law', '', 1, 1607508194),
(131, 'vi', 'themes', 'Sửa block', 'Name : global block new law', '', 1, 1607508210),
(132, 'vi', 'themes', 'Sửa block', 'Name : global block new law', '', 1, 1607508218),
(133, 'vi', 'themes', 'Sửa block', 'Name : global block new law', '', 1, 1607508225),
(134, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607565370),
(135, 'vi', 'themes', 'Thêm block', 'Name : module block top view', '', 1, 1607565399),
(136, 'vi', 'themes', 'Thêm block', 'Name : global block cat', '', 1, 1607565422),
(137, 'vi', 'themes', 'Sửa block', 'Name : global block cat', '', 1, 1607565451),
(138, 'vi', 'laws', 'Thêm Văn bản', 'Id: 2', '', 1, 1607565795),
(139, 'vi', 'laws', 'Thêm Văn bản', 'Id: 3', '', 1, 1607565863),
(140, 'vi', 'themes', 'Sửa block', 'Name : global block cat', '', 1, 1607565915),
(141, 'vi', 'laws', 'Thêm Văn bản', 'Id: 4', '', 1, 1607565954),
(142, 'vi', 'themes', 'Sửa block', 'Name : global block cat', '', 1, 1607565981),
(143, 'vi', 'themes', 'Sửa block', 'Name : global block cat', '', 1, 1607566012),
(144, 'vi', 'themes', 'Sửa block', 'Name : global block cat', '', 1, 1607567322),
(145, 'vi', 'themes', 'Thêm block', 'Name : global page list', '', 1, 1607570344),
(146, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607571923),
(147, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1607572043),
(148, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1607572053),
(149, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1607572160),
(150, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1607572234),
(151, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1607572289),
(152, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1607572916),
(153, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1607573203),
(154, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1607573554),
(155, 'vi', 'themes', 'Sửa block', 'Name : Copyright', '', 1, 1607574838),
(156, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607585552),
(157, 'vi', 'database', 'Tải về', 'File name: 256ee16cb1fea9e1f0079a3066f1769c_1607533200.sql.gz', '', 1, 1607585581),
(158, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607616930),
(159, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1607617263),
(160, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607650776),
(161, 'vi', 'themes', 'Thêm block', 'Name : global company info', '', 1, 1607651420),
(162, 'vi', 'themes', 'Sửa block', 'Name : global copyright', '', 1, 1607651461),
(163, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1607652782),
(164, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1607652962),
(165, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1607653067),
(166, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1607653098),
(167, 'vi', 'themes', 'Thêm block', 'Name : global about', '', 1, 1607654074),
(168, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1607654179),
(169, 'vi', 'about', 'Delete', 'ID: 2', '', 1, 1607655207),
(170, 'vi', 'about', 'Delete', 'ID: 3', '', 1, 1607655209),
(171, 'vi', 'about', 'Delete', 'ID: 4', '', 1, 1607655212),
(172, 'vi', 'about', 'Delete', 'ID: 5', '', 1, 1607655214),
(173, 'vi', 'about', 'Delete', 'ID: 6', '', 1, 1607655216),
(174, 'vi', 'about', 'Delete', 'ID: 7', '', 1, 1607655218),
(175, 'vi', 'about', 'Edit', 'ID: 8', '', 1, 1607655298),
(176, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607657771),
(177, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607657784),
(178, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1607657817),
(179, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607657853),
(180, 'vi', 'themes', 'Sửa block', 'Name : Văn bản mới', '', 1, 1607657948),
(181, 'vi', 'news', 'Thêm chuyên mục', 'đề án 117', '', 1, 1607658351),
(182, 'vi', 'news', 'Thêm bài viết', 'test', '', 1, 1607658386),
(183, 'vi', 'news', 'Xóa Chuyên mục và các bài viết', 'đề án 117', '', 1, 1607658510),
(184, 'vi', 'news', 'Thêm chuyên mục', 'tin cntt trong gdđt', '', 1, 1607658566),
(185, 'vi', 'news', 'Xóa Chuyên mục và các bài viết', 'Thông cáo báo chí', '', 1, 1607658773),
(186, 'vi', 'news', 'Xóa Chuyên mục và các bài viết', 'Bản tin nội bộ', '', 1, 1607658778),
(187, 'vi', 'news', 'Xóa Chuyên mục và các bài viết', 'Tin công nghệ', '', 1, 1607658783),
(188, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/tin-bai-01.jpg', '', 1, 1607658986),
(189, 'vi', 'news', 'Thêm bài viết', 'Hội thảo chuyên đề chuyển đổi số ngành GDĐT và xây dựng môi trường giáo dục 4.0', '', 1, 1607659091),
(190, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607659194),
(191, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607659202),
(192, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607659212),
(193, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1607659222),
(194, 'vi', 'themes', 'Sửa block', 'Name : Danh mục', '', 1, 1607661070),
(195, 'vi', 'themes', 'Thêm block', 'Name : Điểm tin nhanh', '', 1, 1607661485),
(196, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607661498),
(197, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607661514),
(198, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607661794),
(199, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607661819),
(200, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1607661833),
(201, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607670431),
(202, 'vi', 'news', 'Xóa bài viêt', 'NukeViet 4.3 có gì mới?, NukeViet 4.2 có gì mới?, NukeViet 4.0 có gì mới?, Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;, Tuyển dụng lập trình viên PHP phát triển NukeViet, Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT, NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016, Học việc tại công ty VINADES, Chương trình thực tập sinh tại công ty VINADES, Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet, Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet, Công ty VINADES tuyển dụng nhân viên kinh doanh, NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', '', 1, 1607670515),
(203, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/dhd-cits2.jpg', '', 1, 1607670589),
(204, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/dhd-cits.jpg', '', 1, 1607670658),
(205, 'vi', 'news', 'Thêm bài viết', 'Đại hội Chi bộ Cục Công nghệ thông tin thành công tốt đẹp', '', 1, 1607670775),
(206, 'vi', 'news', 'Thêm bài viết', 'Công văn số 173&#x002F;CNTT ngày 01&#x002F;04&#x002F;2020 của Cục CNTT về việc hỗ trợ của các doanh nghiệp ngành TTTT cho GDĐT trong phòng, chống dịch bệnh Covid-19', '', 1, 1607670994),
(207, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/cv-ho-tro-dich-covid-19.pdf', '', 1, 1607671134),
(208, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/cam-ket-4-nha-mang.pdf', '', 1, 1607671135),
(209, 'vi', 'news', 'Sửa bài viết', 'Công văn số 173&#x002F;CNTT ngày 01&#x002F;04&#x002F;2020 của Cục CNTT về việc hỗ trợ của các doanh nghiệp ngành TTTT cho GDĐT trong phòng, chống dịch bệnh Covid-19', '', 1, 1607671143),
(210, 'vi', 'news', 'Sửa bài viết', 'Hội thảo chuyên đề chuyển đổi số ngành GDĐT và xây dựng môi trường giáo dục 4.0', '', 1, 1607671185),
(211, 'vi', 'news', 'Sửa bài viết', 'Hội thảo chuyên đề chuyển đổi số ngành GDĐT và xây dựng môi trường giáo dục 4.0', '', 1, 1607671242),
(212, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607671880),
(213, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/tin-bai-01-1.jpg', '', 1, 1607671995),
(214, 'vi', 'news', 'Thêm bài viết', 'Số hóa ngành giáo dục - lợi mọi bề', '', 1, 1607672097),
(215, 'vi', 'news', 'Thêm bài viết', 'Tăng cường ứng dụng CNTT trong quản lý chuyên môn trường mầm non', '', 1, 1607672219),
(216, 'vi', 'news', 'Thêm bài viết', 'Cần một cách nhìn khác về “vá lỗ hổng bảo mật”', '', 1, 1607672293),
(217, 'vi', 'news', 'Sửa bài viết', 'Cần một cách nhìn khác về “vá lỗ hổng bảo mật”', '', 1, 1607672394),
(218, 'vi', 'news', 'Sửa bài viết', 'Cần một cách nhìn khác về “vá lỗ hổng bảo mật”', '', 1, 1607672431),
(219, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607672550),
(220, 'vi', 'news', 'Xóa bài viêt', 'Hội thảo chuyên đề chuyển đổi số ngành GDĐT và xây dựng môi trường giáo dục 4.0', '', 1, 1607672590),
(221, 'vi', 'news', 'Thêm bài viết', 'Hội thảo chuyên đề chuyển đổi số ngành GDĐT và xây dựng môi trường giáo dục 4.0', '', 1, 1607672658),
(222, 'vi', 'news', 'Sửa bài viết', 'Hội thảo chuyên đề chuyển đổi số ngành GDĐT và xây dựng môi trường giáo dục 4.0', '', 1, 1607672695),
(223, 'vi', 'news', 'Xóa bài viêt', 'Cần một cách nhìn khác về “vá lỗ hổng bảo mật”', '', 1, 1607672712),
(224, 'vi', 'news', 'Thêm bài viết', 'Cần một cách nhìn khác về “vá lỗ hổng bảo mật”', '', 1, 1607672756),
(225, 'vi', 'news', 'Sửa bài viết', 'Cần một cách nhìn khác về “vá lỗ hổng bảo mật”', '', 1, 1607672807),
(226, 'vi', 'news', 'Xóa bài viêt', 'Số hóa ngành giáo dục - lợi mọi bề', '', 1, 1607672813),
(227, 'vi', 'news', 'Thêm bài viết', 'Số hóa ngành giáo dục - lợi mọi bề', '', 1, 1607672875),
(228, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/tin-01-1.1.jpg', '', 1, 1607672960),
(229, 'vi', 'news', 'Thêm bài viết', 'Hải Phòng&#x3A; Ký kết và triển khai công nghệ thông tin trong GD-ĐT', '', 1, 1607672981),
(230, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/tin-02-1.jpg', '', 1, 1607673032),
(231, 'vi', 'news', 'Thêm bài viết', 'Bắc Kạn&#x3A; Đẩy mạnh số hóa dữ liệu trong giáo dục', '', 1, 1607673039),
(232, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/tin-bai-01_1.jpg', '', 1, 1607673125),
(233, 'vi', 'news', 'Thêm bài viết', 'Hải Phòng&#x3A; Chuyển đổi số góp phần nâng cao chất lượng giáo dục', '', 1, 1607673168),
(234, 'vi', 'news', 'Thêm bài viết', 'Triển lãm công nghệ giáo dục BESS Vietnam 2019 đã sẵn sàng', '', 1, 1607674242),
(235, 'vi', 'news', 'Sửa bài viết', 'Triển lãm công nghệ giáo dục BESS Vietnam 2019 đã sẵn sàng', '', 1, 1607674308),
(236, 'vi', 'news', 'Thêm bài viết', 'Chính thức ra mắt nền tảng công nghệ giáo dục số', '', 1, 1607674411),
(237, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/16_4_thu-truong-nguyen-huu-do-1.jpg', '', 1, 1607674492),
(238, 'vi', 'news', 'Thêm bài viết', 'Dạy học trực tuyến&#x3A; Nỗ lực và quyết tâm từ những địa phương khó khăn', '', 1, 1607674521),
(239, 'vi', 'upload', 'Upload file', 'uploads/news/2020_12/img-0033-1.jpg', '', 1, 1607674551),
(240, 'vi', 'news', 'Thêm bài viết', 'Đại học tiên phong đẩy mạnh chuyển đổi số giáo dục', '', 1, 1607674573),
(241, 'vi', 'news', 'Thêm bài viết', 'Trường học thay đổi để thích ứng trong thời đại số', '', 1, 1607674620),
(242, 'vi', 'news', 'Thêm bài viết', 'Tiên phong chuyển đổi số thu hẹp khoảng cách tiếp cận giáo dục ASEAN', '', 1, 1607674656),
(243, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607677317),
(244, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607677510),
(245, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607852808),
(246, 'vi', 'themes', 'Thêm block', 'Name : global link select', '', 1, 1607853395),
(247, 'vi', 'themes', 'Sửa block', 'Name : global link select', '', 1, 1607854119),
(248, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1607854222),
(249, 'vi', 'extensions', 'Cài đặt ứng dụng', 'nv4-block-news-owlcarousel-feature-1-2.zip', '', 1, 1607854740),
(250, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607854845),
(251, 'vi', 'themes', 'Thêm block', 'Name : Điểm tin nhanh', '', 1, 1607854886),
(252, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607854912),
(253, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607855222),
(254, 'vi', 'news', 'Sửa bài viết', 'Tiên phong chuyển đổi số thu hẹp khoảng cách tiếp cận giáo dục ASEAN', '', 1, 1607855356),
(255, 'vi', 'news', 'Sửa bài viết', 'Trường học thay đổi để thích ứng trong thời đại số', '', 1, 1607855365),
(256, 'vi', 'news', 'Sửa bài viết', 'Đại học tiên phong đẩy mạnh chuyển đổi số giáo dục', '', 1, 1607855370),
(257, 'vi', 'news', 'Sửa bài viết', 'Dạy học trực tuyến&#x3A; Nỗ lực và quyết tâm từ những địa phương khó khăn', '', 1, 1607855375),
(258, 'vi', 'news', 'Sửa bài viết', 'Chính thức ra mắt nền tảng công nghệ giáo dục số', '', 1, 1607855380),
(259, 'vi', 'news', 'Sửa bài viết', 'Chính thức ra mắt nền tảng công nghệ giáo dục số', '', 1, 1607855380),
(260, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607857685),
(261, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607858142),
(262, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607858846),
(263, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh &#x3A;', '', 1, 1607859116),
(264, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh &#x3A;', '', 1, 1607859262),
(265, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh &#x3A;', '', 1, 1607859282),
(266, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607859646),
(267, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607859821),
(268, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607859832),
(269, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607860046),
(270, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607860085),
(271, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607860342),
(272, 'vi', 'extensions', 'Cài đặt ứng dụng', 'block-image-slider-v1-0-00.zip', '', 1, 1607862203),
(273, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607862220),
(274, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607862224),
(275, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607913995),
(276, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607915954),
(277, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607915970),
(278, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607915983),
(279, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1607916025),
(280, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh &#x3A;', '', 1, 1607916595),
(281, 'vi', 'news', 'Sửa bài viết', 'Trường học thay đổi để thích ứng trong thời đại số', '', 1, 1607916710),
(282, 'vi', 'news', 'Sửa bài viết', 'Hải Phòng&#x3A; Chuyển đổi số góp phần nâng cao chất lượng giáo dục', '', 1, 1607916742),
(283, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607928228),
(284, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1607930026),
(285, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607934395),
(286, 'vi', 'themes', 'Thêm block', 'Name : module block newscenter', '', 1, 1607934641),
(287, 'vi', 'themes', 'Sửa block', 'Name : module block newscenter', '', 1, 1607935152),
(288, 'vi', 'themes', 'Sửa block', 'Name : module block newscenter', '', 1, 1607935152),
(289, 'vi', 'themes', 'Sửa block', 'Name : module block newscenter', '', 1, 1607935170),
(290, 'vi', 'themes', 'Sửa block', 'Name : module block newscenter', '', 1, 1607935194),
(291, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607999723),
(292, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608004587),
(293, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608004600),
(294, 'vi', 'themes', 'Thêm block', 'Name : global slimmenu', '', 1, 1608004861),
(295, 'vi', 'themes', 'Sửa block', 'Name : global slimmenu', '', 1, 1608004897),
(296, 'vi', 'themes', 'Sửa block', 'Name : global slimmenu', '', 1, 1608004950),
(297, 'vi', 'themes', 'Thêm block', 'Name : global slimmenu', '', 1, 1608005418),
(298, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608007363),
(299, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608015163),
(300, 'vi', 'themes', 'Thêm block', 'Name : global slimmenu', '', 1, 1608023722),
(301, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608023812),
(302, 'vi', 'themes', 'Thêm block', 'Name : global slimmenu', '', 1, 1608023837),
(303, 'vi', 'themes', 'Sửa block', 'Name : global slimmenu', '', 1, 1608023929),
(304, 'vi', 'themes', 'Thêm block', 'Name : global slimmenu', '', 1, 1608024095),
(305, 'vi', 'themes', 'Sửa block', 'Name : global slimmenu', '', 1, 1608024174),
(306, 'vi', 'themes', 'Sửa block', 'Name : global slimmenu', '', 1, 1608024255),
(307, 'vi', 'themes', 'Sửa block', 'Name : global slimmenu', '', 1, 1608024277),
(308, 'vi', 'themes', 'Sửa block', 'Name : global slimmenu', '', 1, 1608024413),
(309, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608093071),
(310, 'vi', 'themes', 'Thêm block', 'Name : global counter', '', 1, 1608093610),
(311, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608104018),
(312, 'vi', 'themes', 'Sửa block', 'Name : global slimmenu', '', 1, 1608104040),
(313, 'vi', 'themes', 'Sửa block', 'Name : global slimmenu', '', 1, 1608104720),
(314, 'vi', 'themes', 'Thêm block', 'Name : global select link', '', 1, 1608109465),
(315, 'vi', 'themes', 'Sửa block', 'Name : global select link', '', 1, 1608109497),
(316, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608109509),
(317, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608109655),
(318, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608109769),
(319, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608109806),
(320, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608109820),
(321, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608109842),
(322, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608111176),
(323, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608111257),
(324, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608111474),
(325, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608112645),
(326, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608112993),
(327, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608113235),
(328, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608113315),
(329, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608113401),
(330, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608114304),
(331, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608171684),
(332, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608171792),
(333, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608171870),
(334, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608171892),
(335, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1608172429),
(336, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608172452),
(337, 'vi', 'themes', 'Thiết lập giao diện theme: \"testt\"', '', '', 1, 1608173642),
(338, 'vi', 'themes', 'Kích hoạt theme: \"testt\"', '', '', 1, 1608173646),
(339, 'vi', 'themes', 'Thêm block', 'Name : global block link1', '', 1, 1608173676),
(340, 'vi', 'themes', 'Kích hoạt theme: \"ccntt2\"', '', '', 1, 1608173706),
(341, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608190137),
(342, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1608193755),
(343, 'vi', 'menu', 'delete menu id: 1', 'Top Menu', '', 1, 1608193827),
(344, 'vi', 'contact', 'Change config module', '', '', 1, 1608193884),
(345, 'vi', 'contact', 'Change config module', '', '', 1, 1608193889),
(346, 'vi', 'contact', 'log_add_row', 'Cục Công nghệ thông tin', '', 1, 1608193960),
(347, 'vi', 'contact', 'log_del_row', 'rowid 1', '', 1, 1608193986),
(348, 'vi', 'login', '[hapro574] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1608195131),
(349, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608195159),
(350, 'vi', 'themes', 'Thêm block', 'Name : global user button', '', 1, 1608195292),
(351, 'vi', 'themes', 'Sửa block', 'Name : global user button', '', 1, 1608195307),
(352, 'vi', 'themes', 'Sửa block', 'Name : global user button', '', 1, 1608195545),
(353, 'vi', 'login', '[hapro574] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1608195971),
(354, 'vi', 'users', '[hapro574] Đăng nhập theo kiểu thông thường', ' Client IP:127.0.0.1', '', 0, 1608196192),
(355, 'vi', 'users', '[hapro574] Thoát khỏi tài khoản thành viên', ' Client IP:127.0.0.1', '', 1, 1608196253),
(356, 'vi', 'users', '[hapro574] Đăng nhập theo kiểu thông thường', ' Client IP:127.0.0.1', '', 0, 1608196770),
(357, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608197014),
(358, 'vi', 'users', '[hapro574] Thoát khỏi tài khoản thành viên', ' Client IP:127.0.0.1', '', 1, 1608259553),
(359, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608259593),
(360, 'vi', 'themes', 'Sửa block', 'Name : global counter', '', 1, 1608259660),
(361, 'vi', 'themes', 'Sửa block', 'Name : global counter', '', 1, 1608259673),
(362, 'vi', 'themes', 'Sửa block', 'Name : Thống kê truy cập', '', 1, 1608259727),
(363, 'vi', 'themes', 'Sửa block', 'Name : Copyright', '', 1, 1608260072),
(364, 'vi', 'themes', 'Sửa block', 'Name : Copyright', '', 1, 1608260187),
(365, 'vi', 'themes', 'Sửa block', 'Name : Copyright', '', 1, 1608260200),
(366, 'vi', 'themes', 'Thêm block', 'Name : global bootstrap', '', 1, 1608260299),
(367, 'vi', 'themes', 'Sửa block', 'Name : global bootstrap', '', 1, 1608260315),
(368, 'vi', 'themes', 'Thêm block', 'Name : global footermenu', '', 1, 1608261720),
(369, 'vi', 'themes', 'Thêm block', 'Name : global bootstrap', '', 1, 1608261788),
(370, 'vi', 'themes', 'Thêm block', 'Name : global footermenu', '', 1, 1608261998),
(371, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1608262411),
(372, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1608262429),
(373, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1608262449),
(374, 'vi', 'themes', 'Kích hoạt theme: \"ccntt2\"', '', '', 1, 1608262563),
(375, 'vi', 'themes', 'Sửa block', 'Name : global footermenu', '', 1, 1608262590),
(376, 'vi', 'themes', 'Sửa block', 'Name : global footermenu', '', 1, 1608262671),
(377, 'vi', 'themes', 'Thêm block', 'Name : global footermenu', '', 1, 1608262844),
(378, 'vi', 'login', '[hapro574] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1608265473),
(379, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608282020),
(380, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608282357),
(381, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608282379),
(382, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608282493),
(383, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608282703),
(384, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608285794),
(385, 'vi', 'themes', 'Thêm block', 'Name : Điểm tin nhanh', '', 1, 1608286245),
(386, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1608286291),
(387, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1608286343),
(388, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608515931),
(389, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608519058),
(390, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1608519205),
(391, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1608519959),
(392, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1608520163),
(393, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1608520181),
(394, 'vi', 'themes', 'Sửa block', 'Name : Điểm tin nhanh', '', 1, 1608520644),
(395, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608525032),
(396, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608525433),
(397, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608526396),
(398, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608534726),
(399, 'vi', 'themes', 'Thêm block', 'Name : global lienket', '', 1, 1608534776),
(400, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608535645),
(401, 'vi', 'themes', 'Sửa block', 'Name : global footermenu', '', 1, 1608536109),
(402, 'vi', 'themes', 'Sửa block', 'Name : global footermenu', '', 1, 1608536348),
(403, 'vi', 'themes', 'Sửa block', 'Name : global footermenu', '', 1, 1608536613),
(404, 'vi', 'themes', 'Sửa block', 'Name : global footermenu', '', 1, 1608536621),
(405, 'vi', 'themes', 'Sửa block', 'Name : Liên kết web', '', 1, 1608536768),
(406, 'vi', 'themes', 'Sửa block', 'Name : global footermenu', '', 1, 1608537813),
(407, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608630133),
(408, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608706649),
(409, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608707196),
(410, 'vi', 'login', '[hapro574] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1608715752),
(411, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1608797701),
(412, 'vi', 'login', '[hapro574] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1608799521),
(413, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1609322849),
(414, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1609396219),
(415, 'vi', 'themes', 'Thêm block', 'Name : global bootstrap', '', 1, 1609397149),
(416, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1609401850),
(417, 'vi', 'themes', 'Thêm block', 'Name : global bootstrap', '', 1, 1609402855),
(418, 'vi', 'themes', 'Sửa block', 'Name : global bootstrap', '', 1, 1609402872),
(419, 'vi', 'themes', 'Sửa block', 'Name : menu mobile', '', 1, 1609404245),
(420, 'vi', 'themes', 'Sửa block', 'Name : menu mobile', '', 1, 1609404410),
(421, 'vi', 'themes', 'Sửa block', 'Name : menu mobile', '', 1, 1609404754),
(422, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1609511063),
(423, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1609511371),
(424, 'vi', 'themes', 'Sửa block', 'Name : menu mobile', '', 1, 1609511409),
(425, 'vi', 'themes', 'Sửa block', 'Name : menu mobile', '', 1, 1609511580),
(426, 'vi', 'themes', 'Sửa block', 'Name : menu mobile', '', 1, 1609511943),
(427, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1609589203),
(428, 'vi', 'themes', 'Sửa block', 'Name : menu mobile', '', 1, 1609589316),
(429, 'vi', 'themes', 'Sửa block', 'Name : menu mobile', '', 1, 1609589358),
(430, 'vi', 'themes', 'Sửa block', 'Name : menu mobile', '', 1, 1609589655),
(431, 'vi', 'themes', 'Sửa block', 'Name : menu mobile', '', 1, 1609589879),
(432, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1609725633),
(433, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1609899882),
(434, 'vi', 'themes', 'Kích hoạt theme: \"testt\"', '', '', 1, 1609901187),
(435, 'vi', 'themes', 'Kích hoạt theme: \"ccntt2\"', '', '', 1, 1609901200),
(436, 'vi', 'themes', 'Xóa các thiết lập', 'theme testt', '', 1, 1609901204),
(437, 'vi', 'themes', 'Thiết lập giao diện theme: \"testt\"', '', '', 1, 1609901206),
(438, 'vi', 'themes', 'Kích hoạt theme: \"testt\"', '', '', 1, 1609901219),
(439, 'vi', 'themes', 'Kích hoạt theme: \"ccntt2\"', '', '', 1, 1609901226),
(440, 'vi', 'modules', 'Thêm module ảo phong_su', '', '', 1, 1609901677),
(441, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1609902166),
(442, 'vi', 'themes', 'Kích hoạt theme: \"testt\"', '', '', 1, 1609902403),
(443, 'vi', 'themes', 'Kích hoạt theme: \"ccntt2\"', '', '', 1, 1609902416),
(444, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1609993950),
(445, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1610595032),
(446, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1610595099),
(447, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1610595164),
(448, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1610953386),
(449, 'vi', 'themes', 'Kích hoạt theme: \"ccntt2\"', '', '', 1, 1610953397),
(450, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1611022244),
(451, 'vi', 'login', '[hapro574] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1611022367),
(452, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1611022423),
(453, 'vi', 'login', '[hapro574] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1611022604);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_notification`
--

CREATE TABLE `nv4_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_view_allowed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Cấp quản trị được xem: 0,1,2',
  `logic_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Cấp trên xem được cấp dưới, 1: chỉ cấp hoặc người được chỉ định',
  `send_to` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Danh sách id người nhận, phân cách bởi dấu phảy',
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_plugin`
--

CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_plugin`
--

INSERT INTO `nv4_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_sessions`
--

CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_sessions`
--

INSERT INTO `nv4_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('1sh6aeq2tuo0f5r5hsb9k2c7e4', 0, 'guest', 1611022409);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_extensions`
--

CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT 0,
  `is_virtual` tinyint(1) NOT NULL DEFAULT 0,
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_extensions`
--

INSERT INTO `nv4_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(0, 'theme', 'ccntt2', 0, 0, 'ccntt2', 'ccntt2', '4.4.02 1607507982', 1607507982, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.4.02 1592816400', 1606359771, 'VINADES <contact@vinades.vn>', ''),
(254, 'module', 'laws', 0, 1, 'laws', 'laws', '4.3.00 1607508010', 1607508010, 'webnhanh (webnhanh@vinades.vn)', 'Modules văn bản pháp luật giúp các cơ quan, ban ngành trong lĩnh vực pháp luật quản lý thông tin, tra cứu các văn bản 1 cách hệ thống.Modules dùng cho các cơ quan khác cần quản lý văn bản, quy định.'),
(0, 'theme', 'testt', 0, 0, 'testt', 'testt', '4.4.02 1609900915', 1609900915, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),
(0, 'module', 'phong-su', 0, 0, 'contact', 'phong_su', '', 1609901677, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_language`
--

CREATE TABLE `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_language`
--

INSERT INTO `nv4_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_dir`
--

CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `thumb_type` tinyint(4) NOT NULL DEFAULT 0,
  `thumb_width` smallint(6) NOT NULL DEFAULT 0,
  `thumb_height` smallint(6) NOT NULL DEFAULT 0,
  `thumb_quality` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_dir`
--

INSERT INTO `nv4_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 1606364877, 0, 0, 0, 0),
(2, 'uploads/about', 0, 0, 0, 0, 0),
(3, 'uploads/banners', 0, 0, 0, 0, 0),
(4, 'uploads/banners/files', 0, 0, 0, 0, 0),
(5, 'uploads/comment', 0, 0, 0, 0, 0),
(6, 'uploads/contact', 0, 0, 0, 0, 0),
(7, 'uploads/freecontent', 0, 0, 0, 0, 0),
(8, 'uploads/menu', 0, 0, 0, 0, 0),
(9, 'uploads/news', 0, 0, 0, 0, 0),
(10, 'uploads/news/source', 0, 0, 0, 0, 0),
(11, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(12, 'uploads/news/topics', 0, 0, 0, 0, 0),
(13, 'uploads/page', 0, 0, 0, 0, 0),
(14, 'uploads/siteterms', 0, 0, 0, 0, 0),
(15, 'uploads/users', 0, 0, 0, 0, 0),
(16, 'uploads/users/groups', 0, 0, 0, 0, 0),
(17, 'uploads/news/2020_12', 1607658975, 0, 0, 0, 0),
(18, 'uploads/laws', 0, 0, 0, 0, 0),
(19, 'uploads/news/2021_01', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_file`
--

CREATE TABLE `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT 0,
  `srcheight` int(11) NOT NULL DEFAULT 0,
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mtime` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_file`
--

INSERT INTO `nv4_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('banner_eict.png', 'png', 'image', 34228, 'assets/banner_eict.png', 80, 14, '493|80', 1, 1606364901, 1, 'banner_eict.png', 'banner eict'),
('banner_1.png', 'png', 'image', 41214, 'assets/banner_1.png', 80, 12, '1071|150', 1, 1606364914, 1, 'banner_1.png', 'banner 1'),
('logoa.png', 'png', 'image', 16199, 'assets/logoa.png', 78, 80, '95|97', 1, 1606648888, 1, 'logoa.png', 'logoa'),
('tin-bai-01.jpg', 'jpg', 'image', 121062, 'assets/news/2020_12/tin-bai-01.jpg', 80, 54, '602|400', 1, 1607658987, 17, 'tin-bai-01.jpg', 'tin bai 01'),
('dhd-cits2.jpg', 'jpg', 'image', 375821, 'assets/news/2020_12/dhd-cits2.jpg', 80, 53, '1500|987', 1, 1607670590, 17, 'dhd-cits2.jpg', 'dhd cits2'),
('dhd-cits.jpg', 'jpg', 'image', 217250, 'assets/news/2020_12/dhd-cits.jpg', 80, 49, '800|486', 1, 1607670658, 17, 'dhd-cits.jpg', 'dhd cits'),
('cv-ho-tro-...pdf', 'pdf', 'file', 1439141, 'assets/images/pdf.png', 32, 32, '|', 1, 1607671135, 17, 'cv-ho-tro-dich-covid-19.pdf', 'cv ho tro dich covid 19'),
('cam-ket-4-...pdf', 'pdf', 'file', 2151397, 'assets/images/pdf.png', 32, 32, '|', 1, 1607671135, 17, 'cam-ket-4-nha-mang.pdf', 'cam ket 4 nha mang'),
('tin-bai-01-1.jpg', 'jpg', 'image', 73044, 'assets/news/2020_12/tin-bai-01-1.jpg', 80, 52, '500|324', 1, 1607671995, 17, 'tin-bai-01-1.jpg', 'tin bai 01 1'),
('tin-01-1.1.jpg', 'jpg', 'image', 182989, 'assets/news/2020_12/tin-01-1.1.jpg', 80, 40, '600|300', 1, 1607672961, 17, 'tin-01-1.1.jpg', 'tin 01 1 1'),
('tin-02-1.jpg', 'jpg', 'image', 173001, 'assets/news/2020_12/tin-02-1.jpg', 80, 41, '1000|507', 1, 1607673032, 17, 'tin-02-1.jpg', 'tin 02 1'),
('tin-bai-01_1.jpg', 'jpg', 'image', 148074, 'assets/news/2020_12/tin-bai-01_1.jpg', 80, 51, '768|485', 1, 1607673125, 17, 'tin-bai-01_1.jpg', 'tin bai 01 1'),
('16_4_thu-t...jpg', 'jpg', 'image', 41540, 'assets/news/2020_12/16_4_thu-truong-nguyen-huu-do-1.jpg', 80, 51, '710|455', 1, 1607674492, 17, '16_4_thu-truong-nguyen-huu-do-1.jpg', '16 4 thu truong nguyen huu do 1'),
('img-0033-1.jpg', 'jpg', 'image', 44235, 'assets/news/2020_12/img-0033-1.jpg', 80, 46, '710|401', 1, 1607674551, 17, 'img-0033-1.jpg', 'img 0033 1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users`
--

CREATE TABLE `nv4_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regdate` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `active2step` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_update` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int(11) NOT NULL DEFAULT 0,
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT -1 COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users`
--

INSERT INTO `nv4_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `last_update`, `idsite`, `safemode`, `safekey`, `email_verification_time`, `active_obj`) VALUES
(1, 1, 'hapro574', 'e199188887d66e4da877835064d1f00f', '{SSHA512}CBk+L0eH/W8wtz+otPsOlLirUvamcCA4ejAFm0tk7TJHHbhzk4w3rt5GoqikrxPwe7h4UMdFmQqKXyZkEOSWVmU0Y2U=', 'hapro574@gmail.com', 'admin', '', 'M', '', 907952400, '', 1606359889, 'ád', 'ád', '', 0, 1, '1', 1, 0, '', '3d21202f4fa30f86c96ba838b28e52e6', 1608196770, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Mobile Safari/537.36', '', 1611022326, 0, 0, '', -3, 'SYSTEM');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_backupcodes`
--

CREATE TABLE `nv4_users_backupcodes` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `time_used` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `time_creat` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_config`
--

CREATE TABLE `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_config`
--

INSERT INTO `nv4_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:8:{s:15:\"access_viewlist\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:17:\"access_editcensor\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1606359771),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1606359771),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1606359771),
('avatar_width', '80', 1606359771),
('avatar_height', '80', 1606359771),
('active_group_newusers', '0', 1606359771),
('active_editinfo_censor', '0', 1606359771),
('active_user_logs', '1', 1606359771),
('min_old_user', '16', 1606359771),
('register_active_time', '86400', 1606359771),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_edit`
--

CREATE TABLE `nv4_users_edit` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `lastedit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `info_basic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_field`
--

CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT 0,
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `show_profile` tinyint(4) NOT NULL DEFAULT 1,
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_system` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_field`
--

INSERT INTO `nv4_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `is_system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups`
--

CREATE TABLE `nv4_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `require_2step_site` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups`
--

INSERT INTO `nv4_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 0, 0, 1606359771, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 0, 0, 1606359771, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 0, 0, 1606359771, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 0, 0, 1606359771, 0, 4, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 0, 0, 1606359771, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 0, 0, 1606359771, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 'All', '', 0, '', '', 0, 0, 0, 1606359771, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(10, 'NukeViet-Fans', '', 'Nhóm những người hâm mộ hệ thống NukeViet', '', 2, '', '', 0, 0, 1, 1606359771, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(11, 'NukeViet-Admins', '', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', '', 2, '', '', 0, 0, 0, 1606359771, 0, 9, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(12, 'NukeViet-Programmers', '', 'Nhóm Lập trình viên hệ thống NukeViet', '', 1, '', '', 0, 0, 0, 1606359771, 0, 10, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups_users`
--

CREATE TABLE `nv4_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_requested` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời gian duyệt yêu cầu tham gia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups_users`
--

INSERT INTO `nv4_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`, `time_requested`, `time_approved`) VALUES
(1, 1, 1, 1, '0', 1606359889, 1606359889);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_info`
--

CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_info`
--

INSERT INTO `nv4_users_info` (`userid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_openid`
--

CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_question`
--

CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_question`
--

INSERT INTO `nv4_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_reg`
--

CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openid_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idsite` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about`
--

CREATE TABLE `nv4_vi_about` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about`
--

INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Cục Công nghệ thông tin', 'cuc-cong-nghe-thong-tin', '', '', 0, 'Cục Công nghệ thông tin, Bộ Giáo dục và Đào tạo được đổi tên và chính thức hoạt động theo mô hình Cục vào tháng 10 năm 2007. Tiền thân là Trung tâm Công nghệ thông tin, được thành lập vào năm 1995. Năm 2003 tiếp tục được đổi tên thành Trung tâm tin học.', '<p><span style=\"font-size:14px;\">Cục Công nghệ thông tin có chức năng giúp Bộ trưởng thực hiện chức năng quản lý nhà nước về CNTT trong ngành giáo dục, bao gồm: nghiên cứu, ứng dụng, phát triển nguồn nhân lực về CNTT trong ngành giáo dục theo quy định của pháp luật; thực hiện các dịch vụ công về CNTT trong giáo dục.<br />\r\n<br />\r\nCục CNTT có tư cách pháp nhân, có con dấu và được mở tài khoản tại Kho bạc Nhà nước và Ngân hàng Thương mại theo quy định của pháp luật.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;<br />\r\nĐịa chỉ: Số 35 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội</span></p>', 'công nghệ', 0, '4', '', 1, 1, 1606359771, 1607653098, 1, 19, 0),
(8, 'Chức năng, nhiệm vụ của Cục Công nghệ thông tin', 'chuc-nang-nhiem-vu', '', '', 0, 'Chức năng và nhiệm vụ của Cục Công nghệ Thông tin được quy định tại Quyết định số Quyết định số 2077/QĐ-BGDĐT ngày 19/6/2017 của Bộ trưởng Bộ GDDT Quy định chức năng, nhiệm vụ quyền hạn và cơ cấu tổ chức của các đơn vị giúp Bộ trưởng thực hiện chức năng quản lý nhà nước thuộc Bộ Giáo dục và Đào tạo, được trích dẫn như sau:', '<p><strong>I. CHỨC NĂNG:</strong></p>\r\n\r\n<p>Giúp Bộ trưởng quản lý nhà nước về công nghệ thông tin trong ngành giáo dục.</p>\r\n\r\n<p>Cục Công nghệ thông tin có tư cách pháp nhân, có con dấu và được mở tài khoản tại Kho bạc Nhà nước và Ngân hàng Thương mại theo quy định của pháp luật.</p>\r\n\r\n<p><strong>II. NHIỆM VỤ VÀ QUYỀN HẠN:</strong></p>\r\n\r\n<p>1. Ứng dụng công nghệ thông tin trong giáo dục</p>\r\n\r\n<p>a)&nbsp; Xây dựng, hướng dẫn, kiểm tra, đánh giá thực hiện quy định về ứng dụng công nghệ thông tin trong dạy và học;</p>\r\n\r\n<p>b) Xây dựng, hướng dẫn, kiểm tra, đánh giá thực hiện quy định ứng dụng công nghệ thông tin trong quản lý ngành và các cơ sở giáo dục.</p>\r\n\r\n<p>2. Chương trình, kế hoạch, đề án, dự án ứng dụng công nghệ thông tin trong giáo dục</p>\r\n\r\n<p>a) Xây dựng, hướng dẫn, kiểm tra đánh giá thực hiện các chương trình, kế hoạch, đề án, dự án ứng dụng công nghệ thông tin trong dạy và học;</p>\r\n\r\n<p>b) Xây dựng, hướng dẫn, kiểm tra, đánh giá thực hiện các chương trình, kế hoạch, đề án, dự án ứng dụng công nghệ thông tin quản lý ngành và các cơ sở giáo dục;</p>\r\n\r\n<p>c) Xây dựng, quản lý, vận hành hạ tầng công nghệ thông tin và các phần mềm quản lý, điều hành của Bộ và cơ sở giáo dục.</p>\r\n\r\n<p>3. Phát triển nguồn nhân lực công nghệ thông tin</p>\r\n\r\n<p>a) Xây dựng chính sách phát triển nguồn nhân lực công nghệ thông tin;</p>\r\n\r\n<p>b) Xây dựng, hướng dẫn thực hiện các chương trình, kế hoạch, đề án, dự án đào tạo, bồi dưỡng nguồn nhân lực công nghệ thông tin theo các cấp học và trình độ;</p>\r\n\r\n<p>c) Thực hiện các dịch vụ công về công nghệ thông tin giáo dục và phát triển nguồn nhân lực công nghệ thông tin.</p>\r\n\r\n<p>4. Thực hiện các nhiệm vụ khác do Bộ trưởng giao.</p>\r\n\r\n<p><strong>III. CƠ CẤU TỔ CHỨC:</strong></p>\r\n\r\n<p>Cục Công nghệ thông tin có 3 phòng và 2 đơn vị sự nghiệp trực thuộc: Phòng Hành chính - Tổng hợp, Phòng Chính sách công nghệ thông tin, Phòng Ứng dụng công nghệ thông tin, Trung tâm Giải pháp công nghệ thông tin giáo dục, Trung tâm Phát triển nguồn nhân lực công nghệ thông tin.</p>\r\n\r\n<p>Chức năng, nhiệm vụ, cơ cấu tổ chức của các phòng và đơn vị sự nghiệp trực thuộc do Bộ trưởng quyết định theo đề nghị của Cục trưởng Cục Công nghệ thông tin.</p>', 'ủng hộ,hỗ trợ,tham gia,phát triển', 0, '4', '', 2, 1, 1606359771, 1607655298, 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about_config`
--

CREATE TABLE `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about_config`
--

INSERT INTO `nv4_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_groups`
--

CREATE TABLE `nv4_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT 0,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  `config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_groups`
--

INSERT INTO `nv4_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(7, 'default', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(9, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(16, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(17, 'default', 'menu', 'global.slimmenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:3;s:12:\"title_length\";i:0;}'),
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(21, 'default', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(34, 'ccntt', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(35, 'ccntt', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[BLOCK_BANNERS]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(36, 'ccntt', 'news', 'global.block_news_cat.php', 'Thống kê', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 2, 'a:6:{s:5:\"catid\";a:7:{i:0;s:1:\"1\";i:1;s:1:\"8\";i:2;s:2:\"12\";i:3;s:1:\"9\";i:4;s:1:\"2\";i:5;s:2:\"10\";i:6;s:2:\"11\";}s:6:\"numrow\";i:5;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),
(37, 'ccntt', 'menu', 'global.slimmenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(40, 'ccntt', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(41, 'ccntt', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(42, 'ccntt', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(43, 'ccntt', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(44, 'ccntt', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[BLOCK_NEW]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(45, 'ccntt', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(47, 'ccntt', 'page', 'global.html.php', 'global html', '', 'no_title', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:\"htmlcontent\";s:104:\"<div><a href=\"http://ccntt.my/\"><img alt=\"\" height=\"61\" src=\"/uploads/logoa.png\" width=\"60\" /></a></div>\";}'),
(48, 'ccntt', 'page', 'global.html.php', 'global html', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:\"htmlcontent\";s:774:\"<div style=\"display: block; width: 0px; height: 0px; padding: 0px; border: 0px; margin: 0px; position: absolute; top: 0px; left: -9999px; opacity: 0; overflow: hidden;\">&nbsp;</div><strong>CỤC CÔNG NGHỆ THÔNG TIN - BỘ GIÁO DỤC VÀ ĐÀO TẠO</strong><br /><a title=\"\">Địa chỉ:&nbsp;Số 35 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội</a><br />Điện thoại:&nbsp;024.38695144;<br />Email:&nbsp;<a href=\"mailto:cuccntt@moet.gov.vn\" title=\"\">cuccntt@moet.gov.vn</a>&nbsp;; Website:&nbsp;<a href=\"http://e-ict.gov.vn/\" target=\"_blank\" title=\"\">http://e-ict.gov.vn/</a><div style=\"display: block; width: 0px; height: 0px; padding: 0px; border: 0px; margin: 0px; position: absolute; top: 0px; left: -9999px; opacity: 0; overflow: hidden;\">&nbsp;</div>\";}'),
(50, 'testttt', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(51, 'testttt', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(52, 'testttt', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, ''),
(53, 'testttt', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(54, 'testttt', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(55, 'testttt', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 3, ''),
(56, 'testttt', 'menu', 'global.slimmenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(57, 'testttt', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(58, 'testttt', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, ''),
(59, 'testttt', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(60, 'testttt', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(61, 'testttt', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(62, 'testttt', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(63, 'testttt', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(64, 'testttt', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(65, 'test', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:74:\"+84-24-85872007&#91;+842485872007&#93;|+84-904762534&#91;+84904762534&#93;\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(66, 'test', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(67, 'test', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(68, 'test', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(69, 'test', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(70, 'test', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(71, 'test', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(72, 'test', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(73, 'test', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(74, 'test', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(75, 'test', 'menu', 'global.slimmenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(76, 'test', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(77, 'test', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(78, 'test', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(79, 'test', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(80, 'test', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(81, 'test', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(82, 'test', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(83, 'test', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(84, 'test', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(85, 'test', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(86, 'ccntt2', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:64:\"CỤC CÔNG NGHỆ THÔNG TIN - BỘ GIÁO DỤC VÀ ĐÀO TẠO\";s:16:\"company_sortname\";s:0:\"\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:60:\"Số 35 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội\";s:15:\"company_showmap\";i:0;s:14:\"company_mapurl\";s:0:\"\";s:13:\"company_phone\";s:12:\"024.38695144\";s:11:\"company_fax\";s:0:\"\";s:13:\"company_email\";s:19:\"cuccntt@moet.gov.vn\";s:15:\"company_website\";s:20:\"http://e-ict.gov.vn/\";}'),
(116, 'ccntt2', 'theme', 'global.copyright.php', 'global copyright', '', 'no_title', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:35:\"/index.php?language=vi&nv=siteterms\";}'),
(91, 'ccntt2', 'menu', 'global.metismenu.php', 'Danh mục', '', 'category', '[LEFT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:3;s:12:\"title_length\";i:0;}'),
(92, 'ccntt2', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(93, 'ccntt2', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[BLOCK_BANNERS]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:\"idplanbanner\";i:6;}'),
(100, 'ccntt2', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(101, 'ccntt2', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(102, 'ccntt2', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(103, 'ccntt2', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(106, 'ccntt2', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:\"idplanbanner\";i:5;}'),
(111, 'ccntt2', 'laws', 'module.block_area.php', 'global block new law', '', '', '[LEFT]', 0, '1', 1, '6', 0, 3, ''),
(112, 'ccntt2', 'laws', 'module.block_top_view.php', 'module block top view', '', '', '[LEFT]', 0, '1', 1, '6', 0, 4, ''),
(113, 'ccntt2', 'laws', 'global.block_new_law.php', 'Văn bản mới', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 5, 'a:8:{s:6:\"numrow\";i:5;s:12:\"title_length\";i:0;s:9:\"show_code\";i:1;s:9:\"direction\";s:4:\"none\";s:8:\"duration\";i:3000;s:12:\"pauseOnHover\";i:1;s:10:\"duplicated\";i:1;s:5:\"order\";i:1;}'),
(115, 'ccntt2', 'page', 'global.html.php', 'global html', '', 'no_title', '[LOGO_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:\"htmlcontent\";s:94:\"<div><a href=\"/\"><img alt=\"logoa\" height=\"61\" src=\"/uploads/logoa.png\" width=\"60\" /></a></div>\";}'),
(120, 'ccntt2', 'theme', 'global.news_slide.php', 'Điểm tin nhanh', '/index.php?language=vi&nv=news&op=groups/diem-tin-nhanh', 'slide', '[FASTNEWS]', 0, '1', 1, '6', 0, 1, 'a:8:{s:9:\"selectmod\";s:4:\"news\";s:7:\"blockid\";i:3;s:6:\"numrow\";i:5;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:9:\"show_type\";i:1;}'),
(121, 'ccntt2', 'news', 'module.block_newscenter.php', 'module block newscenter', '', 'no_title', '[BLOCK_NEW]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:4;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:100;s:17:\"length_othertitle\";i:100;s:5:\"width\";i:412;s:6:\"height\";i:260;s:7:\"nocatid\";a:0:{}}'),
(124, 'ccntt2', 'menu', 'global.slimmenu.php', 'global slimmenu', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:2;s:12:\"title_length\";i:0;}'),
(127, 'ccntt2', 'statistics', 'global.counter.php', 'Thống kê truy cập', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 6, ''),
(128, 'ccntt2', 'theme', 'global.menu_selectlink.php', 'Liên kết web', '', 'link', '[LEFT]', 0, '1', 1, '6', 1, 7, 'a:4:{s:6:\"menuid\";i:5;s:12:\"title_length\";i:0;s:13:\"submenu_width\";i:0;s:8:\"wraptext\";i:0;}'),
(153, 'ccntt2', 'theme', 'global.menu_footer.php', 'global footermenu', '', 'no_title', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 2, 'a:4:{s:6:\"menuid\";i:4;s:12:\"title_length\";i:0;s:13:\"submenu_width\";i:0;s:8:\"wraptext\";i:0;}'),
(156, 'ccntt2', 'theme', 'global.menu_mobile.php', 'menu mobile', '', 'no_title', '[MENU_SITE_MOBILE]', 0, '1', 1, '6', 0, 1, 'a:2:{s:6:\"menuid\";i:2;s:12:\"title_length\";i:0;}'),
(158, 'testt', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:74:\"+84-24-85872007&#91;+842485872007&#93;|+84-904762534&#91;+84904762534&#93;\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(159, 'testt', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(160, 'testt', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(161, 'testt', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(162, 'testt', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(163, 'testt', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(164, 'testt', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(165, 'testt', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 3, ''),
(166, 'testt', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(167, 'testt', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(168, 'testt', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(169, 'testt', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, ''),
(170, 'testt', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(171, 'testt', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(172, 'testt', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(173, 'testt', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(174, 'testt', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(175, 'testt', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_weight`
--

CREATE TABLE `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `func_id` mediumint(8) NOT NULL DEFAULT 0,
  `weight` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_weight`
--

INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(16, 1, 1),
(16, 38, 1),
(16, 39, 1),
(16, 40, 1),
(16, 41, 1),
(16, 47, 1),
(16, 48, 1),
(16, 49, 1),
(16, 50, 1),
(16, 51, 1),
(16, 61, 1),
(16, 64, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 52, 1),
(16, 63, 1),
(16, 55, 1),
(16, 56, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 36, 1),
(16, 37, 1),
(16, 58, 1),
(16, 59, 1),
(16, 60, 1),
(16, 19, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 28, 1),
(16, 29, 1),
(16, 62, 1),
(21, 1, 1),
(21, 38, 1),
(21, 39, 1),
(21, 40, 1),
(21, 41, 1),
(21, 47, 1),
(21, 48, 1),
(21, 49, 1),
(21, 50, 1),
(21, 51, 1),
(21, 61, 1),
(21, 64, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 11, 1),
(21, 12, 1),
(21, 52, 1),
(21, 63, 1),
(21, 55, 1),
(21, 56, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(21, 34, 1),
(21, 35, 1),
(21, 36, 1),
(21, 37, 1),
(21, 58, 1),
(21, 59, 1),
(21, 60, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 28, 1),
(21, 29, 1),
(21, 62, 1),
(11, 1, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 47, 1),
(11, 48, 1),
(11, 49, 1),
(11, 50, 1),
(11, 51, 1),
(11, 61, 1),
(11, 64, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 1),
(11, 11, 1),
(11, 12, 1),
(11, 52, 1),
(11, 63, 1),
(11, 55, 1),
(11, 56, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 58, 1),
(11, 59, 1),
(11, 60, 1),
(11, 19, 1),
(11, 20, 1),
(11, 21, 1),
(11, 22, 1),
(11, 23, 1),
(11, 24, 1),
(11, 25, 1),
(11, 26, 1),
(11, 27, 1),
(11, 28, 1),
(11, 29, 1),
(11, 62, 1),
(12, 1, 2),
(12, 38, 2),
(12, 39, 2),
(12, 40, 2),
(12, 41, 2),
(12, 47, 2),
(12, 48, 2),
(12, 49, 2),
(12, 50, 2),
(12, 51, 2),
(12, 61, 2),
(12, 64, 2),
(12, 4, 2),
(12, 5, 2),
(12, 6, 2),
(12, 7, 2),
(12, 8, 2),
(12, 9, 2),
(12, 10, 2),
(12, 11, 2),
(12, 12, 2),
(12, 52, 2),
(12, 63, 2),
(12, 55, 2),
(12, 56, 2),
(12, 31, 2),
(12, 32, 2),
(12, 33, 2),
(12, 34, 2),
(12, 35, 2),
(12, 36, 2),
(12, 37, 2),
(12, 58, 2),
(12, 59, 2),
(12, 60, 2),
(12, 19, 2),
(12, 20, 2),
(12, 21, 2),
(12, 22, 2),
(12, 23, 2),
(12, 24, 2),
(12, 25, 2),
(12, 26, 2),
(12, 27, 2),
(12, 28, 2),
(12, 29, 2),
(12, 62, 2),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 28, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(4, 37, 1),
(5, 1, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 41, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 50, 1),
(5, 51, 1),
(5, 61, 1),
(5, 64, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 52, 1),
(5, 63, 1),
(5, 55, 1),
(5, 56, 1),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 37, 2),
(5, 58, 1),
(5, 59, 1),
(5, 60, 1),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 2),
(5, 29, 1),
(5, 62, 1),
(6, 1, 2),
(6, 38, 2),
(6, 39, 2),
(6, 40, 2),
(6, 41, 2),
(6, 47, 2),
(6, 48, 2),
(6, 49, 2),
(6, 50, 2),
(6, 51, 2),
(6, 61, 2),
(6, 64, 2),
(6, 4, 3),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 8, 3),
(6, 9, 3),
(6, 10, 3),
(6, 11, 3),
(6, 12, 3),
(6, 52, 2),
(6, 63, 2),
(6, 55, 2),
(6, 56, 2),
(6, 31, 3),
(6, 32, 3),
(6, 33, 3),
(6, 34, 3),
(6, 35, 3),
(6, 36, 3),
(6, 37, 3),
(6, 58, 2),
(6, 59, 2),
(6, 60, 2),
(6, 19, 3),
(6, 20, 3),
(6, 21, 3),
(6, 22, 3),
(6, 23, 3),
(6, 24, 3),
(6, 25, 3),
(6, 26, 3),
(6, 27, 3),
(6, 28, 3),
(6, 29, 2),
(6, 62, 2),
(20, 1, 1),
(20, 38, 1),
(20, 39, 1),
(20, 40, 1),
(20, 41, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 50, 1),
(20, 51, 1),
(20, 61, 1),
(20, 64, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 52, 1),
(20, 63, 1),
(20, 55, 1),
(20, 56, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 37, 1),
(20, 58, 1),
(20, 59, 1),
(20, 60, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 28, 1),
(20, 29, 1),
(20, 62, 1),
(17, 1, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 41, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 50, 1),
(17, 51, 1),
(17, 61, 1),
(17, 64, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 52, 1),
(17, 63, 1),
(17, 55, 1),
(17, 56, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 37, 1),
(17, 58, 1),
(17, 59, 1),
(17, 60, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 29, 1),
(17, 62, 1),
(13, 1, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 41, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 50, 1),
(13, 51, 1),
(13, 61, 1),
(13, 64, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 52, 1),
(13, 63, 1),
(13, 55, 1),
(13, 56, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 37, 1),
(13, 58, 1),
(13, 59, 1),
(13, 60, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 29, 1),
(13, 62, 1),
(14, 1, 2),
(14, 38, 2),
(14, 39, 2),
(14, 40, 2),
(14, 41, 2),
(14, 47, 2),
(14, 48, 2),
(14, 49, 2),
(14, 50, 2),
(14, 51, 2),
(14, 61, 2),
(14, 64, 2),
(14, 4, 2),
(14, 5, 2),
(14, 6, 2),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 2),
(14, 11, 2),
(14, 12, 2),
(14, 52, 2),
(14, 63, 2),
(14, 55, 2),
(14, 56, 2),
(14, 31, 2),
(14, 32, 2),
(14, 33, 2),
(14, 34, 2),
(14, 35, 2),
(14, 36, 2),
(14, 37, 2),
(14, 58, 2),
(14, 59, 2),
(14, 60, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 2),
(14, 22, 2),
(14, 23, 2),
(14, 24, 2),
(14, 25, 2),
(14, 26, 2),
(14, 27, 2),
(14, 28, 2),
(14, 29, 2),
(14, 62, 2),
(7, 1, 1),
(7, 38, 1),
(7, 39, 1),
(7, 40, 1),
(7, 41, 1),
(7, 47, 1),
(7, 48, 1),
(7, 49, 1),
(7, 50, 1),
(7, 51, 1),
(7, 61, 1),
(7, 64, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 1),
(7, 10, 1),
(7, 11, 1),
(7, 12, 1),
(7, 52, 1),
(7, 63, 1),
(7, 55, 1),
(7, 56, 1),
(7, 31, 1),
(7, 32, 1),
(7, 33, 1),
(7, 34, 1),
(7, 35, 1),
(7, 36, 1),
(7, 37, 1),
(7, 58, 1),
(7, 59, 1),
(7, 60, 1),
(7, 19, 1),
(7, 20, 1),
(7, 21, 1),
(7, 22, 1),
(7, 23, 1),
(7, 24, 1),
(7, 25, 1),
(7, 26, 1),
(7, 27, 1),
(7, 28, 1),
(7, 29, 1),
(7, 62, 1),
(8, 1, 2),
(8, 38, 2),
(8, 39, 2),
(8, 40, 2),
(8, 41, 2),
(8, 47, 2),
(8, 48, 2),
(8, 49, 2),
(8, 50, 2),
(8, 51, 2),
(8, 61, 2),
(8, 64, 2),
(8, 4, 2),
(8, 5, 2),
(8, 6, 2),
(8, 7, 2),
(8, 8, 2),
(8, 9, 2),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 52, 2),
(8, 63, 2),
(8, 55, 2),
(8, 56, 2),
(8, 31, 2),
(8, 32, 2),
(8, 33, 2),
(8, 34, 2),
(8, 35, 2),
(8, 36, 2),
(8, 37, 2),
(8, 58, 2),
(8, 59, 2),
(8, 60, 2),
(8, 19, 2),
(8, 20, 2),
(8, 21, 2),
(8, 22, 2),
(8, 23, 2),
(8, 24, 2),
(8, 25, 2),
(8, 26, 2),
(8, 27, 2),
(8, 28, 2),
(8, 29, 2),
(8, 62, 2),
(9, 1, 3),
(9, 38, 3),
(9, 39, 3),
(9, 40, 3),
(9, 41, 3),
(9, 47, 3),
(9, 48, 3),
(9, 49, 3),
(9, 50, 3),
(9, 51, 3),
(9, 61, 3),
(9, 64, 3),
(9, 4, 3),
(9, 5, 3),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 3),
(9, 11, 3),
(9, 12, 3),
(9, 52, 3),
(9, 63, 3),
(9, 55, 3),
(9, 56, 3),
(9, 31, 3),
(9, 32, 3),
(9, 33, 3),
(9, 34, 3),
(9, 35, 3),
(9, 36, 3),
(9, 37, 3),
(9, 58, 3),
(9, 59, 3),
(9, 60, 3),
(9, 19, 3),
(9, 20, 3),
(9, 21, 3),
(9, 22, 3),
(9, 23, 3),
(9, 24, 3),
(9, 25, 3),
(9, 26, 3),
(9, 27, 3),
(9, 28, 3),
(9, 29, 3),
(9, 62, 3),
(10, 1, 4),
(10, 38, 4),
(10, 39, 4),
(10, 40, 4),
(10, 41, 4),
(10, 47, 4),
(10, 48, 4),
(10, 49, 4),
(10, 50, 4),
(10, 51, 4),
(10, 61, 4),
(10, 64, 4),
(10, 4, 4),
(10, 5, 4),
(10, 6, 4),
(10, 7, 4),
(10, 8, 4),
(10, 9, 4),
(10, 10, 4),
(10, 11, 4),
(10, 12, 4),
(10, 52, 4),
(10, 63, 4),
(10, 55, 4),
(10, 56, 4),
(10, 31, 4),
(10, 32, 4),
(10, 33, 4),
(10, 34, 4),
(10, 35, 4),
(10, 36, 4),
(10, 37, 4),
(10, 58, 4),
(10, 59, 4),
(10, 60, 4),
(10, 19, 4),
(10, 20, 4),
(10, 21, 4),
(10, 22, 4),
(10, 23, 4),
(10, 24, 4),
(10, 25, 4),
(10, 26, 4),
(10, 27, 4),
(10, 28, 4),
(10, 29, 4),
(10, 62, 4),
(1, 4, 1),
(2, 4, 2),
(30, 1, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 41, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 50, 1),
(30, 51, 1),
(30, 61, 1),
(30, 64, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 52, 1),
(30, 63, 1),
(30, 55, 1),
(30, 56, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 37, 1),
(30, 58, 1),
(30, 59, 1),
(30, 60, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 29, 1),
(30, 62, 1),
(28, 1, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 41, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 50, 1),
(28, 51, 1),
(28, 61, 1),
(28, 64, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 52, 1),
(28, 63, 1),
(28, 55, 1),
(28, 56, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 37, 1),
(28, 58, 1),
(28, 59, 1),
(28, 60, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 29, 1),
(28, 62, 1),
(29, 1, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 41, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 50, 1),
(29, 51, 1),
(29, 61, 1),
(29, 64, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 52, 1),
(29, 63, 1),
(29, 55, 1),
(29, 56, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 37, 1),
(29, 58, 1),
(29, 59, 1),
(29, 60, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 29, 1),
(29, 62, 1),
(22, 1, 1),
(22, 38, 1),
(22, 39, 1),
(22, 40, 1),
(22, 41, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 50, 1),
(22, 51, 1),
(22, 61, 1),
(22, 64, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 52, 1),
(22, 63, 1),
(22, 55, 1),
(22, 56, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 37, 1),
(22, 58, 1),
(22, 59, 1),
(22, 60, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 28, 1),
(22, 29, 1),
(22, 62, 1),
(23, 1, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 41, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 50, 2),
(23, 51, 2),
(23, 61, 2),
(23, 64, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 52, 2),
(23, 63, 2),
(23, 55, 2),
(23, 56, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 37, 2),
(23, 58, 2),
(23, 59, 2),
(23, 60, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 29, 2),
(23, 62, 2),
(24, 1, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 41, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 50, 1),
(24, 51, 1),
(24, 61, 1),
(24, 64, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 52, 1),
(24, 63, 1),
(24, 55, 1),
(24, 56, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 37, 1),
(24, 58, 1),
(24, 59, 1),
(24, 60, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 29, 1),
(24, 62, 1),
(25, 1, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 41, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 50, 2),
(25, 51, 2),
(25, 61, 2),
(25, 64, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 52, 2),
(25, 63, 2),
(25, 55, 2),
(25, 56, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 37, 2),
(25, 58, 2),
(25, 59, 2),
(25, 60, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 29, 2),
(25, 62, 2),
(26, 1, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 41, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 50, 3),
(26, 51, 3),
(26, 61, 3),
(26, 64, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 52, 3),
(26, 63, 3),
(26, 55, 3),
(26, 56, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 37, 3),
(26, 58, 3),
(26, 59, 3),
(26, 60, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 29, 3),
(26, 62, 3),
(27, 1, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 41, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 50, 4),
(27, 51, 4),
(27, 61, 4),
(27, 64, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 52, 4),
(27, 63, 4),
(27, 55, 4),
(27, 56, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 37, 4),
(27, 58, 4),
(27, 59, 4),
(27, 60, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 29, 4),
(27, 62, 4),
(34, 4, 1),
(34, 5, 1),
(34, 6, 1),
(34, 7, 1),
(34, 8, 1),
(34, 9, 1),
(34, 10, 1),
(34, 11, 1),
(34, 12, 1),
(35, 1, 1),
(35, 38, 1),
(35, 39, 1),
(35, 40, 1),
(35, 41, 1),
(35, 47, 1),
(35, 48, 1),
(35, 49, 1),
(35, 50, 1),
(35, 51, 1),
(35, 61, 1),
(35, 64, 1),
(35, 4, 1),
(35, 5, 1),
(35, 6, 1),
(35, 7, 1),
(35, 8, 1),
(35, 9, 1),
(35, 10, 1),
(35, 11, 1),
(35, 12, 1),
(35, 52, 1),
(35, 63, 1),
(35, 55, 1),
(35, 56, 1),
(35, 31, 1),
(35, 32, 1),
(35, 33, 1),
(35, 34, 1),
(35, 35, 1),
(35, 36, 1),
(35, 37, 1),
(35, 58, 1),
(35, 59, 1),
(35, 60, 1),
(35, 19, 1),
(35, 20, 1),
(35, 21, 1),
(35, 22, 1),
(35, 23, 1),
(35, 24, 1),
(35, 25, 1),
(35, 26, 1),
(35, 27, 1),
(35, 28, 1),
(35, 29, 1),
(35, 62, 1),
(36, 1, 1),
(36, 38, 1),
(36, 39, 1),
(36, 40, 1),
(36, 41, 1),
(36, 47, 1),
(36, 48, 1),
(36, 49, 1),
(36, 50, 1),
(36, 51, 1),
(36, 61, 1),
(36, 64, 1),
(36, 4, 2),
(36, 5, 2),
(36, 6, 2),
(36, 7, 2),
(36, 8, 2),
(36, 9, 2),
(36, 10, 2),
(36, 11, 2),
(36, 12, 2),
(36, 52, 1),
(36, 63, 1),
(36, 55, 1),
(36, 56, 1),
(36, 31, 1),
(36, 32, 1),
(36, 33, 1),
(36, 34, 1),
(36, 35, 1),
(36, 36, 1),
(36, 37, 1),
(36, 58, 1),
(36, 59, 1),
(36, 60, 1),
(36, 19, 1),
(36, 20, 1),
(36, 21, 1),
(36, 22, 1),
(36, 23, 1),
(36, 24, 1),
(36, 25, 1),
(36, 26, 1),
(36, 27, 1),
(36, 28, 1),
(36, 29, 1),
(36, 62, 1),
(37, 1, 1),
(37, 38, 1),
(37, 39, 1),
(37, 40, 1),
(37, 41, 1),
(37, 47, 1),
(37, 48, 1),
(37, 49, 1),
(37, 50, 1),
(37, 51, 1),
(37, 61, 1),
(37, 64, 1),
(37, 4, 1),
(37, 5, 1),
(37, 6, 1),
(37, 7, 1),
(37, 8, 1),
(37, 9, 1),
(37, 10, 1),
(37, 11, 1),
(37, 12, 1),
(37, 52, 1),
(37, 63, 1),
(37, 55, 1),
(37, 56, 1),
(37, 31, 1),
(37, 32, 1),
(37, 33, 1),
(37, 34, 1),
(37, 35, 1),
(37, 36, 1),
(37, 37, 1),
(37, 58, 1),
(37, 59, 1),
(37, 60, 1),
(37, 19, 1),
(37, 20, 1),
(37, 21, 1),
(37, 22, 1),
(37, 23, 1),
(37, 24, 1),
(37, 25, 1),
(37, 26, 1),
(37, 27, 1),
(37, 28, 1),
(37, 29, 1),
(37, 62, 1),
(40, 1, 1),
(40, 38, 1),
(40, 39, 1),
(40, 40, 1),
(40, 41, 1),
(40, 47, 1),
(40, 48, 1),
(40, 49, 1),
(40, 50, 1),
(40, 51, 1),
(40, 61, 1),
(40, 64, 1),
(40, 4, 1),
(40, 5, 1),
(40, 6, 1),
(40, 7, 1),
(40, 8, 1),
(40, 9, 1),
(40, 10, 1),
(40, 11, 1),
(40, 12, 1),
(40, 52, 1),
(40, 63, 1),
(40, 55, 1),
(40, 56, 1),
(40, 31, 1),
(40, 32, 1),
(40, 33, 1),
(40, 34, 1),
(40, 35, 1),
(40, 36, 1),
(40, 37, 1),
(40, 58, 1),
(40, 59, 1),
(40, 60, 1),
(40, 19, 1),
(40, 20, 1),
(40, 21, 1),
(40, 22, 1),
(40, 23, 1),
(40, 24, 1),
(40, 25, 1),
(40, 26, 1),
(40, 27, 1),
(40, 28, 1),
(40, 29, 1),
(40, 62, 1),
(41, 1, 2),
(41, 38, 2),
(41, 39, 2),
(41, 40, 2),
(41, 41, 2),
(41, 47, 2),
(41, 48, 2),
(41, 49, 2),
(41, 50, 2),
(41, 51, 2),
(41, 61, 2),
(41, 64, 2),
(41, 4, 2),
(41, 5, 2),
(41, 6, 2),
(41, 7, 2),
(41, 8, 2),
(41, 9, 2),
(41, 10, 2),
(41, 11, 2),
(41, 12, 2),
(41, 52, 2),
(41, 63, 2),
(41, 55, 2),
(41, 56, 2),
(41, 31, 2),
(41, 32, 2),
(41, 33, 2),
(41, 34, 2),
(41, 35, 2),
(41, 36, 2),
(41, 37, 2),
(41, 58, 2),
(41, 59, 2),
(41, 60, 2),
(41, 19, 2),
(41, 20, 2),
(41, 21, 2),
(41, 22, 2),
(41, 23, 2),
(41, 24, 2),
(41, 25, 2),
(41, 26, 2),
(41, 27, 2),
(41, 28, 2),
(41, 29, 2),
(41, 62, 2),
(42, 1, 3),
(42, 38, 3),
(42, 39, 3),
(42, 40, 3),
(42, 41, 3),
(42, 47, 3),
(42, 48, 3),
(42, 49, 3),
(42, 50, 3),
(42, 51, 3),
(42, 61, 3),
(42, 64, 3),
(42, 4, 3),
(42, 5, 3),
(42, 6, 3),
(42, 7, 3),
(42, 8, 3),
(42, 9, 3),
(42, 10, 3),
(42, 11, 3),
(42, 12, 3),
(42, 52, 3),
(42, 63, 3),
(42, 55, 3),
(42, 56, 3),
(42, 31, 3),
(42, 32, 3),
(42, 33, 3),
(42, 34, 3),
(42, 35, 3),
(42, 36, 3),
(42, 37, 3),
(42, 58, 3),
(42, 59, 3),
(42, 60, 3),
(42, 19, 3),
(42, 20, 3),
(42, 21, 3),
(42, 22, 3),
(42, 23, 3),
(42, 24, 3),
(42, 25, 3),
(42, 26, 3),
(42, 27, 3),
(42, 28, 3),
(42, 29, 3),
(42, 62, 3),
(43, 1, 4),
(43, 38, 4),
(43, 39, 4),
(43, 40, 4),
(43, 41, 4),
(43, 47, 4),
(43, 48, 4),
(43, 49, 4),
(43, 50, 4),
(43, 51, 4),
(43, 61, 4),
(43, 64, 4),
(43, 4, 4),
(43, 5, 4),
(43, 6, 4),
(43, 7, 4),
(43, 8, 4),
(43, 9, 4),
(43, 10, 4),
(43, 11, 4),
(43, 12, 4),
(43, 52, 4),
(43, 63, 4),
(43, 55, 4),
(43, 56, 4),
(43, 31, 4),
(43, 32, 4),
(43, 33, 4),
(43, 34, 4),
(43, 35, 4),
(43, 36, 4),
(43, 37, 4),
(43, 58, 4),
(43, 59, 4),
(43, 60, 4),
(43, 19, 4),
(43, 20, 4),
(43, 21, 4),
(43, 22, 4),
(43, 23, 4),
(43, 24, 4),
(43, 25, 4),
(43, 26, 4),
(43, 27, 4),
(43, 28, 4),
(43, 29, 4),
(43, 62, 4),
(44, 4, 1),
(45, 4, 1),
(47, 1, 1),
(47, 4, 1),
(47, 5, 1),
(47, 6, 1),
(47, 7, 1),
(47, 8, 1),
(47, 9, 1),
(47, 10, 1),
(47, 11, 1),
(47, 12, 1),
(47, 19, 1),
(47, 20, 1),
(47, 21, 1),
(47, 22, 1),
(47, 23, 1),
(47, 24, 1),
(47, 25, 1),
(47, 26, 1),
(47, 27, 1),
(47, 28, 1),
(47, 29, 1),
(47, 61, 1),
(47, 31, 1),
(47, 32, 1),
(47, 33, 1),
(47, 34, 1),
(47, 35, 1),
(47, 36, 1),
(47, 37, 1),
(47, 62, 1),
(47, 38, 1),
(47, 39, 1),
(47, 40, 1),
(47, 41, 1),
(47, 63, 1),
(47, 64, 1),
(47, 52, 1),
(47, 47, 1),
(47, 48, 1),
(47, 49, 1),
(47, 50, 1),
(47, 51, 1),
(47, 55, 1),
(47, 56, 1),
(47, 58, 1),
(47, 59, 1),
(47, 60, 1),
(48, 1, 1),
(48, 4, 1),
(48, 5, 1),
(48, 6, 1),
(48, 7, 1),
(48, 8, 1),
(48, 9, 1),
(48, 10, 1),
(48, 11, 1),
(48, 12, 1),
(48, 19, 1),
(48, 20, 1),
(48, 21, 1),
(48, 22, 1),
(48, 23, 1),
(48, 24, 1),
(48, 25, 1),
(48, 26, 1),
(48, 27, 1),
(48, 28, 1),
(48, 29, 1),
(48, 61, 1),
(48, 31, 1),
(48, 32, 1),
(48, 33, 1),
(48, 34, 1),
(48, 35, 1),
(48, 36, 1),
(48, 37, 1),
(48, 62, 1),
(48, 38, 1),
(48, 39, 1),
(48, 40, 1),
(48, 41, 1),
(48, 63, 1),
(48, 64, 1),
(48, 52, 1),
(48, 47, 1),
(48, 48, 1),
(48, 49, 1),
(48, 50, 1),
(48, 51, 1),
(48, 55, 1),
(48, 56, 1),
(48, 58, 1),
(48, 59, 1),
(48, 60, 1),
(50, 1, 1),
(50, 38, 1),
(50, 39, 1),
(50, 40, 1),
(50, 41, 1),
(50, 47, 1),
(50, 48, 1),
(50, 49, 1),
(50, 50, 1),
(50, 51, 1),
(50, 61, 1),
(50, 64, 1),
(50, 4, 1),
(50, 5, 1),
(50, 6, 1),
(50, 7, 1),
(50, 8, 1),
(50, 9, 1),
(50, 10, 1),
(50, 11, 1),
(50, 12, 1),
(50, 52, 1),
(50, 63, 1),
(50, 55, 1),
(50, 56, 1),
(50, 31, 1),
(50, 32, 1),
(50, 33, 1),
(50, 34, 1),
(50, 35, 1),
(50, 36, 1),
(50, 37, 1),
(50, 58, 1),
(50, 59, 1),
(50, 60, 1),
(50, 19, 1),
(50, 20, 1),
(50, 21, 1),
(50, 22, 1),
(50, 23, 1),
(50, 24, 1),
(50, 25, 1),
(50, 26, 1),
(50, 27, 1),
(50, 28, 1),
(50, 29, 1),
(50, 62, 1),
(51, 1, 1),
(51, 38, 1),
(51, 39, 1),
(51, 40, 1),
(51, 41, 1),
(51, 47, 1),
(51, 48, 1),
(51, 49, 1),
(51, 50, 1),
(51, 51, 1),
(51, 61, 1),
(51, 64, 1),
(51, 4, 1),
(51, 5, 1),
(51, 6, 1),
(51, 7, 1),
(51, 8, 1),
(51, 9, 1),
(51, 10, 1),
(51, 11, 1),
(51, 12, 1),
(51, 52, 1),
(51, 63, 1),
(51, 55, 1),
(51, 56, 1),
(51, 31, 1),
(51, 32, 1),
(51, 33, 1),
(51, 34, 1),
(51, 35, 1),
(51, 36, 1),
(51, 37, 1),
(51, 58, 1),
(51, 59, 1),
(51, 60, 1),
(51, 19, 1),
(51, 20, 1),
(51, 21, 1),
(51, 22, 1),
(51, 23, 1),
(51, 24, 1),
(51, 25, 1),
(51, 26, 1),
(51, 27, 1),
(51, 28, 1),
(51, 29, 1),
(51, 62, 1),
(52, 1, 1),
(52, 38, 1),
(52, 39, 1),
(52, 40, 1),
(52, 41, 1),
(52, 47, 1),
(52, 48, 1),
(52, 49, 1),
(52, 50, 1),
(52, 51, 1),
(52, 61, 1),
(52, 64, 1),
(52, 4, 1),
(52, 5, 1),
(52, 6, 1),
(52, 7, 1),
(52, 8, 1),
(52, 9, 1),
(52, 10, 1),
(52, 11, 1),
(52, 12, 1),
(52, 52, 1),
(52, 63, 1),
(52, 55, 1),
(52, 56, 1),
(52, 31, 1),
(52, 32, 1),
(52, 33, 1),
(52, 34, 1),
(52, 35, 1),
(52, 36, 1),
(52, 37, 1),
(52, 58, 1),
(52, 59, 1),
(52, 60, 1),
(52, 19, 1),
(52, 20, 1),
(52, 21, 1),
(52, 22, 1),
(52, 23, 1),
(52, 24, 1),
(52, 25, 1),
(52, 26, 1),
(52, 27, 1),
(52, 28, 1),
(52, 29, 1),
(52, 62, 1),
(53, 4, 1),
(53, 5, 1),
(53, 6, 1),
(53, 7, 1),
(53, 8, 1),
(53, 9, 1),
(53, 10, 1),
(53, 11, 1),
(53, 12, 1),
(54, 1, 1),
(54, 38, 1),
(54, 39, 1),
(54, 40, 1),
(54, 41, 1),
(54, 47, 1),
(54, 48, 1),
(54, 49, 1),
(54, 50, 1),
(54, 51, 1),
(54, 61, 1),
(54, 64, 1),
(54, 4, 2),
(54, 5, 2),
(54, 6, 2),
(54, 7, 2),
(54, 8, 2),
(54, 9, 2),
(54, 10, 2),
(54, 11, 2),
(54, 12, 2),
(54, 52, 1),
(54, 63, 1),
(54, 55, 1),
(54, 56, 1),
(54, 31, 1),
(54, 32, 1),
(54, 33, 1),
(54, 34, 1),
(54, 35, 1),
(54, 36, 1),
(54, 37, 1),
(54, 58, 1),
(54, 59, 1),
(54, 60, 1),
(54, 19, 1),
(54, 20, 1),
(54, 21, 1),
(54, 22, 1),
(54, 23, 1),
(54, 24, 1),
(54, 25, 1),
(54, 26, 1),
(54, 27, 1),
(54, 28, 1),
(54, 29, 1),
(54, 62, 1),
(55, 1, 2),
(55, 38, 2),
(55, 39, 2),
(55, 40, 2),
(55, 41, 2),
(55, 47, 2),
(55, 48, 2),
(55, 49, 2),
(55, 50, 2),
(55, 51, 2),
(55, 61, 2),
(55, 64, 2),
(55, 4, 3),
(55, 5, 3),
(55, 6, 3),
(55, 7, 3),
(55, 8, 3),
(55, 9, 3),
(55, 10, 3),
(55, 11, 3),
(55, 12, 3),
(55, 52, 2),
(55, 63, 2),
(55, 55, 2),
(55, 56, 2),
(55, 31, 2),
(55, 32, 2),
(55, 33, 2),
(55, 34, 2),
(55, 35, 2),
(55, 36, 2),
(55, 37, 2),
(55, 58, 2),
(55, 59, 2),
(55, 60, 2),
(55, 19, 2),
(55, 20, 2),
(55, 21, 2),
(55, 22, 2),
(55, 23, 2),
(55, 24, 2),
(55, 25, 2),
(55, 26, 2),
(55, 27, 2),
(55, 28, 2),
(55, 29, 2),
(55, 62, 2),
(56, 1, 1),
(56, 38, 1),
(56, 39, 1),
(56, 40, 1),
(56, 41, 1),
(56, 47, 1),
(56, 48, 1),
(56, 49, 1),
(56, 50, 1),
(56, 51, 1),
(56, 61, 1),
(56, 64, 1),
(56, 4, 1),
(56, 5, 1),
(56, 6, 1),
(56, 7, 1),
(56, 8, 1),
(56, 9, 1),
(56, 10, 1),
(56, 11, 1),
(56, 12, 1),
(56, 52, 1),
(56, 63, 1),
(56, 55, 1),
(56, 56, 1),
(56, 31, 1),
(56, 32, 1),
(56, 33, 1),
(56, 34, 1),
(56, 35, 1),
(56, 36, 1),
(56, 37, 1),
(56, 58, 1),
(56, 59, 1),
(56, 60, 1),
(56, 19, 1),
(56, 20, 1),
(56, 21, 1),
(56, 22, 1),
(56, 23, 1),
(56, 24, 1),
(56, 25, 1),
(56, 26, 1),
(56, 27, 1),
(56, 28, 1),
(56, 29, 1),
(56, 62, 1),
(57, 1, 1),
(57, 38, 1),
(57, 39, 1),
(57, 40, 1),
(57, 41, 1),
(57, 47, 1),
(57, 48, 1),
(57, 49, 1),
(57, 50, 1),
(57, 51, 1),
(57, 61, 1),
(57, 64, 1),
(57, 4, 1),
(57, 5, 1),
(57, 6, 1),
(57, 7, 1),
(57, 8, 1),
(57, 9, 1),
(57, 10, 1),
(57, 11, 1),
(57, 12, 1),
(57, 52, 1),
(57, 63, 1),
(57, 55, 1),
(57, 56, 1),
(57, 31, 1),
(57, 32, 1),
(57, 33, 1),
(57, 34, 1),
(57, 35, 1),
(57, 36, 1),
(57, 37, 1),
(57, 58, 1),
(57, 59, 1),
(57, 60, 1),
(57, 19, 1),
(57, 20, 1),
(57, 21, 1),
(57, 22, 1),
(57, 23, 1),
(57, 24, 1),
(57, 25, 1),
(57, 26, 1),
(57, 27, 1),
(57, 28, 1),
(57, 29, 1),
(57, 62, 1),
(58, 1, 1),
(58, 38, 1),
(58, 39, 1),
(58, 40, 1),
(58, 41, 1),
(58, 47, 1),
(58, 48, 1),
(58, 49, 1),
(58, 50, 1),
(58, 51, 1),
(58, 61, 1),
(58, 64, 1),
(58, 4, 1),
(58, 5, 1),
(58, 6, 1),
(58, 7, 1),
(58, 8, 1),
(58, 9, 1),
(58, 10, 1),
(58, 11, 1),
(58, 12, 1),
(58, 52, 1),
(58, 63, 1),
(58, 55, 1),
(58, 56, 1),
(58, 31, 1),
(58, 32, 1),
(58, 33, 1),
(58, 34, 1),
(58, 35, 1),
(58, 36, 1),
(58, 37, 1),
(58, 58, 1),
(58, 59, 1),
(58, 60, 1),
(58, 19, 1),
(58, 20, 1),
(58, 21, 1),
(58, 22, 1),
(58, 23, 1),
(58, 24, 1),
(58, 25, 1),
(58, 26, 1),
(58, 27, 1),
(58, 28, 1),
(58, 29, 1),
(58, 62, 1),
(59, 1, 1),
(59, 38, 1),
(59, 39, 1),
(59, 40, 1),
(59, 41, 1),
(59, 47, 1),
(59, 48, 1),
(59, 49, 1),
(59, 50, 1),
(59, 51, 1),
(59, 61, 1),
(59, 64, 1),
(59, 4, 1),
(59, 5, 1),
(59, 6, 1),
(59, 7, 1),
(59, 8, 1),
(59, 9, 1),
(59, 10, 1),
(59, 11, 1),
(59, 12, 1),
(59, 52, 1),
(59, 63, 1),
(59, 55, 1),
(59, 56, 1),
(59, 31, 1),
(59, 32, 1),
(59, 33, 1),
(59, 34, 1),
(59, 35, 1),
(59, 36, 1),
(59, 37, 1),
(59, 58, 1),
(59, 59, 1),
(59, 60, 1),
(59, 19, 1),
(59, 20, 1),
(59, 21, 1),
(59, 22, 1),
(59, 23, 1),
(59, 24, 1),
(59, 25, 1),
(59, 26, 1),
(59, 27, 1),
(59, 28, 1),
(59, 29, 1),
(59, 62, 1),
(60, 1, 2),
(60, 38, 2),
(60, 39, 2),
(60, 40, 2),
(60, 41, 2),
(60, 47, 2),
(60, 48, 2),
(60, 49, 2),
(60, 50, 2),
(60, 51, 2),
(60, 61, 2),
(60, 64, 2),
(60, 4, 2),
(60, 5, 2),
(60, 6, 2),
(60, 7, 2),
(60, 8, 2),
(60, 9, 2),
(60, 10, 2),
(60, 11, 2),
(60, 12, 2),
(60, 52, 2),
(60, 63, 2),
(60, 55, 2),
(60, 56, 2),
(60, 31, 2),
(60, 32, 2),
(60, 33, 2),
(60, 34, 2),
(60, 35, 2),
(60, 36, 2),
(60, 37, 2),
(60, 58, 2),
(60, 59, 2),
(60, 60, 2),
(60, 19, 2),
(60, 20, 2),
(60, 21, 2),
(60, 22, 2),
(60, 23, 2),
(60, 24, 2),
(60, 25, 2),
(60, 26, 2),
(60, 27, 2),
(60, 28, 2),
(60, 29, 2),
(60, 62, 2),
(61, 1, 3),
(61, 38, 3),
(61, 39, 3),
(61, 40, 3),
(61, 41, 3),
(61, 47, 3),
(61, 48, 3),
(61, 49, 3),
(61, 50, 3),
(61, 51, 3),
(61, 61, 3),
(61, 64, 3),
(61, 4, 3),
(61, 5, 3),
(61, 6, 3),
(61, 7, 3),
(61, 8, 3),
(61, 9, 3),
(61, 10, 3),
(61, 11, 3),
(61, 12, 3),
(61, 52, 3),
(61, 63, 3),
(61, 55, 3),
(61, 56, 3),
(61, 31, 3),
(61, 32, 3),
(61, 33, 3),
(61, 34, 3),
(61, 35, 3),
(61, 36, 3),
(61, 37, 3),
(61, 58, 3),
(61, 59, 3),
(61, 60, 3),
(61, 19, 3),
(61, 20, 3),
(61, 21, 3),
(61, 22, 3),
(61, 23, 3),
(61, 24, 3),
(61, 25, 3),
(61, 26, 3),
(61, 27, 3),
(61, 28, 3),
(61, 29, 3),
(61, 62, 3),
(62, 1, 4),
(62, 38, 4),
(62, 39, 4),
(62, 40, 4),
(62, 41, 4),
(62, 47, 4),
(62, 48, 4),
(62, 49, 4),
(62, 50, 4),
(62, 51, 4),
(62, 61, 4),
(62, 64, 4),
(62, 4, 4),
(62, 5, 4),
(62, 6, 4),
(62, 7, 4),
(62, 8, 4),
(62, 9, 4),
(62, 10, 4),
(62, 11, 4),
(62, 12, 4),
(62, 52, 4),
(62, 63, 4),
(62, 55, 4),
(62, 56, 4),
(62, 31, 4),
(62, 32, 4),
(62, 33, 4),
(62, 34, 4),
(62, 35, 4),
(62, 36, 4),
(62, 37, 4),
(62, 58, 4),
(62, 59, 4),
(62, 60, 4),
(62, 19, 4),
(62, 20, 4),
(62, 21, 4),
(62, 22, 4),
(62, 23, 4),
(62, 24, 4),
(62, 25, 4),
(62, 26, 4),
(62, 27, 4),
(62, 28, 4),
(62, 29, 4),
(62, 62, 4),
(63, 4, 1),
(64, 4, 2),
(65, 1, 1),
(65, 38, 1),
(65, 39, 1),
(65, 40, 1),
(65, 41, 1),
(65, 47, 1),
(65, 48, 1),
(65, 49, 1),
(65, 50, 1),
(65, 51, 1),
(65, 61, 1),
(65, 64, 1),
(65, 4, 1),
(65, 5, 1),
(65, 6, 1),
(65, 7, 1),
(65, 8, 1),
(65, 9, 1),
(65, 10, 1),
(65, 11, 1),
(65, 12, 1),
(65, 52, 1),
(65, 63, 1),
(65, 55, 1),
(65, 56, 1),
(65, 31, 1),
(65, 32, 1),
(65, 33, 1),
(65, 34, 1),
(65, 35, 1),
(65, 36, 1),
(65, 37, 1),
(65, 58, 1),
(65, 59, 1),
(65, 60, 1),
(65, 19, 1),
(65, 20, 1),
(65, 21, 1),
(65, 22, 1),
(65, 23, 1),
(65, 24, 1),
(65, 25, 1),
(65, 26, 1),
(65, 27, 1),
(65, 28, 1),
(65, 29, 1),
(65, 62, 1),
(66, 1, 1),
(66, 38, 1),
(66, 39, 1),
(66, 40, 1),
(66, 41, 1),
(66, 47, 1),
(66, 48, 1),
(66, 49, 1),
(66, 50, 1),
(66, 51, 1),
(66, 61, 1),
(66, 64, 1),
(66, 4, 1),
(66, 5, 1),
(66, 6, 1),
(66, 7, 1),
(66, 8, 1),
(66, 9, 1),
(66, 10, 1),
(66, 11, 1),
(66, 12, 1),
(66, 52, 1),
(66, 63, 1),
(66, 55, 1),
(66, 56, 1),
(66, 31, 1),
(66, 32, 1),
(66, 33, 1),
(66, 34, 1),
(66, 35, 1),
(66, 36, 1),
(66, 37, 1),
(66, 58, 1),
(66, 59, 1),
(66, 60, 1),
(66, 19, 1),
(66, 20, 1),
(66, 21, 1),
(66, 22, 1),
(66, 23, 1),
(66, 24, 1),
(66, 25, 1),
(66, 26, 1),
(66, 27, 1),
(66, 28, 1),
(66, 29, 1),
(66, 62, 1),
(67, 1, 1),
(67, 38, 1),
(67, 39, 1),
(67, 40, 1),
(67, 41, 1),
(67, 47, 1),
(67, 48, 1),
(67, 49, 1),
(67, 50, 1),
(67, 51, 1),
(67, 61, 1),
(67, 64, 1),
(67, 4, 1),
(67, 5, 1),
(67, 6, 1),
(67, 7, 1),
(67, 8, 1),
(67, 9, 1),
(67, 10, 1),
(67, 11, 1),
(67, 12, 1),
(67, 52, 1),
(67, 63, 1),
(67, 55, 1),
(67, 56, 1),
(67, 31, 1),
(67, 32, 1),
(67, 33, 1),
(67, 34, 1),
(67, 35, 1),
(67, 36, 1),
(67, 37, 1),
(67, 58, 1),
(67, 59, 1),
(67, 60, 1),
(67, 19, 1),
(67, 20, 1),
(67, 21, 1),
(67, 22, 1),
(67, 23, 1),
(67, 24, 1),
(67, 25, 1),
(67, 26, 1),
(67, 27, 1),
(67, 28, 1),
(67, 29, 1),
(67, 62, 1),
(68, 1, 1),
(68, 38, 1),
(68, 39, 1),
(68, 40, 1),
(68, 41, 1),
(68, 47, 1),
(68, 48, 1),
(68, 49, 1),
(68, 50, 1),
(68, 51, 1),
(68, 61, 1),
(68, 64, 1),
(68, 4, 1),
(68, 5, 1),
(68, 6, 1),
(68, 7, 1),
(68, 8, 1),
(68, 9, 1),
(68, 10, 1),
(68, 11, 1),
(68, 12, 1),
(68, 52, 1),
(68, 63, 1),
(68, 55, 1),
(68, 56, 1),
(68, 31, 1),
(68, 32, 1),
(68, 33, 1),
(68, 34, 1),
(68, 35, 1),
(68, 36, 1),
(68, 37, 1),
(68, 58, 1),
(68, 59, 1),
(68, 60, 1),
(68, 19, 1),
(68, 20, 1),
(68, 21, 1),
(68, 22, 1),
(68, 23, 1),
(68, 24, 1),
(68, 25, 1),
(68, 26, 1),
(68, 27, 1),
(68, 28, 1),
(68, 29, 1),
(68, 62, 1),
(69, 1, 2),
(69, 38, 2),
(69, 39, 2),
(69, 40, 2),
(69, 41, 2),
(69, 47, 2),
(69, 48, 2),
(69, 49, 2),
(69, 50, 2),
(69, 51, 2),
(69, 61, 2),
(69, 64, 2),
(69, 4, 2),
(69, 5, 2),
(69, 6, 2),
(69, 7, 2),
(69, 8, 2),
(69, 9, 2),
(69, 10, 2),
(69, 11, 2),
(69, 12, 2),
(69, 52, 2),
(69, 63, 2),
(69, 55, 2),
(69, 56, 2),
(69, 31, 2),
(69, 32, 2),
(69, 33, 2),
(69, 34, 2),
(69, 35, 2),
(69, 36, 2),
(69, 37, 2),
(69, 58, 2),
(69, 59, 2),
(69, 60, 2),
(69, 19, 2),
(69, 20, 2),
(69, 21, 2),
(69, 22, 2),
(69, 23, 2),
(69, 24, 2),
(69, 25, 2),
(69, 26, 2),
(69, 27, 2),
(69, 28, 2),
(69, 29, 2),
(69, 62, 2),
(70, 4, 1),
(70, 5, 1),
(70, 6, 1),
(70, 7, 1),
(70, 8, 1),
(70, 9, 1),
(70, 10, 1),
(70, 11, 1),
(70, 12, 1),
(71, 19, 1),
(71, 20, 1),
(71, 21, 1),
(71, 22, 1),
(71, 23, 1),
(71, 24, 1),
(71, 25, 1),
(71, 26, 1),
(71, 27, 1),
(71, 28, 1),
(71, 31, 1),
(71, 32, 1),
(71, 33, 1),
(71, 34, 1),
(71, 35, 1),
(71, 36, 1),
(71, 37, 1),
(72, 1, 1),
(72, 38, 1),
(72, 39, 1),
(72, 40, 1),
(72, 41, 1),
(72, 47, 1),
(72, 48, 1),
(72, 49, 1),
(72, 50, 1),
(72, 51, 1),
(72, 61, 1),
(72, 64, 1),
(72, 4, 2),
(72, 5, 2),
(72, 6, 2),
(72, 7, 2),
(72, 8, 2),
(72, 9, 2),
(72, 10, 2),
(72, 11, 2),
(72, 12, 2),
(72, 52, 1),
(72, 63, 1),
(72, 55, 1),
(72, 56, 1),
(72, 31, 2),
(72, 32, 2),
(72, 33, 2),
(72, 34, 2),
(72, 35, 2),
(72, 36, 2),
(72, 37, 2),
(72, 58, 1),
(72, 59, 1),
(72, 60, 1),
(72, 19, 2),
(72, 20, 2),
(72, 21, 2),
(72, 22, 2),
(72, 23, 2),
(72, 24, 2),
(72, 25, 2),
(72, 26, 2),
(72, 27, 2),
(72, 28, 2),
(72, 29, 1),
(72, 62, 1),
(73, 1, 2),
(73, 38, 2),
(73, 39, 2),
(73, 40, 2),
(73, 41, 2),
(73, 47, 2),
(73, 48, 2),
(73, 49, 2),
(73, 50, 2),
(73, 51, 2),
(73, 61, 2),
(73, 64, 2),
(73, 4, 3),
(73, 5, 3),
(73, 6, 3),
(73, 7, 3),
(73, 8, 3),
(73, 9, 3),
(73, 10, 3),
(73, 11, 3),
(73, 12, 3),
(73, 52, 2),
(73, 63, 2),
(73, 55, 2),
(73, 56, 2),
(73, 31, 3),
(73, 32, 3),
(73, 33, 3),
(73, 34, 3),
(73, 35, 3),
(73, 36, 3),
(73, 37, 3),
(73, 58, 2),
(73, 59, 2),
(73, 60, 2),
(73, 19, 3),
(73, 20, 3),
(73, 21, 3),
(73, 22, 3),
(73, 23, 3),
(73, 24, 3),
(73, 25, 3),
(73, 26, 3),
(73, 27, 3),
(73, 28, 3),
(73, 29, 2),
(73, 62, 2),
(74, 1, 1),
(74, 38, 1),
(74, 39, 1),
(74, 40, 1),
(74, 41, 1),
(74, 47, 1),
(74, 48, 1),
(74, 49, 1),
(74, 50, 1),
(74, 51, 1),
(74, 61, 1),
(74, 64, 1),
(74, 4, 1),
(74, 5, 1),
(74, 6, 1),
(74, 7, 1),
(74, 8, 1),
(74, 9, 1),
(74, 10, 1),
(74, 11, 1),
(74, 12, 1),
(74, 52, 1),
(74, 63, 1),
(74, 55, 1),
(74, 56, 1),
(74, 31, 1),
(74, 32, 1),
(74, 33, 1),
(74, 34, 1),
(74, 35, 1),
(74, 36, 1),
(74, 37, 1),
(74, 58, 1),
(74, 59, 1),
(74, 60, 1),
(74, 19, 1),
(74, 20, 1),
(74, 21, 1),
(74, 22, 1),
(74, 23, 1),
(74, 24, 1),
(74, 25, 1),
(74, 26, 1),
(74, 27, 1),
(74, 28, 1),
(74, 29, 1),
(74, 62, 1),
(75, 1, 1),
(75, 38, 1),
(75, 39, 1),
(75, 40, 1),
(75, 41, 1),
(75, 47, 1),
(75, 48, 1),
(75, 49, 1),
(75, 50, 1),
(75, 51, 1),
(75, 61, 1),
(75, 64, 1),
(75, 4, 1),
(75, 5, 1),
(75, 6, 1),
(75, 7, 1),
(75, 8, 1),
(75, 9, 1),
(75, 10, 1),
(75, 11, 1),
(75, 12, 1),
(75, 52, 1),
(75, 63, 1),
(75, 55, 1),
(75, 56, 1),
(75, 31, 1),
(75, 32, 1),
(75, 33, 1),
(75, 34, 1),
(75, 35, 1),
(75, 36, 1),
(75, 37, 1),
(75, 58, 1),
(75, 59, 1),
(75, 60, 1),
(75, 19, 1),
(75, 20, 1),
(75, 21, 1),
(75, 22, 1),
(75, 23, 1),
(75, 24, 1),
(75, 25, 1),
(75, 26, 1),
(75, 27, 1),
(75, 28, 1),
(75, 29, 1),
(75, 62, 1),
(76, 1, 1),
(76, 38, 1),
(76, 39, 1),
(76, 40, 1),
(76, 41, 1),
(76, 47, 1),
(76, 48, 1),
(76, 49, 1),
(76, 50, 1),
(76, 51, 1),
(76, 61, 1),
(76, 64, 1),
(76, 4, 1),
(76, 5, 1),
(76, 6, 1),
(76, 7, 1),
(76, 8, 1),
(76, 9, 1),
(76, 10, 1),
(76, 11, 1),
(76, 12, 1),
(76, 52, 1),
(76, 63, 1),
(76, 55, 1),
(76, 56, 1),
(76, 31, 1),
(76, 32, 1),
(76, 33, 1),
(76, 34, 1),
(76, 35, 1),
(76, 36, 1),
(76, 37, 1),
(76, 58, 1),
(76, 59, 1),
(76, 60, 1),
(76, 19, 1),
(76, 20, 1),
(76, 21, 1),
(76, 22, 1),
(76, 23, 1),
(76, 24, 1),
(76, 25, 1),
(76, 26, 1),
(76, 27, 1),
(76, 28, 1),
(76, 29, 1),
(76, 62, 1),
(77, 1, 1),
(77, 38, 1),
(77, 39, 1),
(77, 40, 1),
(77, 41, 1),
(77, 47, 1),
(77, 48, 1),
(77, 49, 1),
(77, 50, 1),
(77, 51, 1),
(77, 61, 1),
(77, 64, 1),
(77, 4, 1),
(77, 5, 1),
(77, 6, 1),
(77, 7, 1),
(77, 8, 1),
(77, 9, 1),
(77, 10, 1),
(77, 11, 1),
(77, 12, 1),
(77, 52, 1),
(77, 63, 1),
(77, 55, 1),
(77, 56, 1),
(77, 31, 1),
(77, 32, 1),
(77, 33, 1),
(77, 34, 1),
(77, 35, 1),
(77, 36, 1),
(77, 37, 1),
(77, 58, 1),
(77, 59, 1),
(77, 60, 1),
(77, 19, 1),
(77, 20, 1),
(77, 21, 1),
(77, 22, 1),
(77, 23, 1),
(77, 24, 1),
(77, 25, 1),
(77, 26, 1),
(77, 27, 1),
(77, 28, 1),
(77, 29, 1),
(77, 62, 1),
(78, 1, 2),
(78, 38, 2),
(78, 39, 2),
(78, 40, 2),
(78, 41, 2),
(78, 47, 2),
(78, 48, 2),
(78, 49, 2),
(78, 50, 2),
(78, 51, 2),
(78, 61, 2),
(78, 64, 2),
(78, 4, 2),
(78, 5, 2),
(78, 6, 2),
(78, 7, 2),
(78, 8, 2),
(78, 9, 2),
(78, 10, 2),
(78, 11, 2),
(78, 12, 2),
(78, 52, 2),
(78, 63, 2),
(78, 55, 2),
(78, 56, 2),
(78, 31, 2),
(78, 32, 2),
(78, 33, 2),
(78, 34, 2),
(78, 35, 2),
(78, 36, 2),
(78, 37, 2),
(78, 58, 2),
(78, 59, 2),
(78, 60, 2),
(78, 19, 2),
(78, 20, 2),
(78, 21, 2),
(78, 22, 2),
(78, 23, 2),
(78, 24, 2),
(78, 25, 2),
(78, 26, 2),
(78, 27, 2),
(78, 28, 2),
(78, 29, 2),
(78, 62, 2),
(79, 1, 1),
(79, 38, 1),
(79, 39, 1),
(79, 40, 1),
(79, 41, 1),
(79, 47, 1),
(79, 48, 1),
(79, 49, 1),
(79, 50, 1),
(79, 51, 1),
(79, 61, 1),
(79, 64, 1),
(79, 4, 1),
(79, 5, 1),
(79, 6, 1),
(79, 7, 1),
(79, 8, 1),
(79, 9, 1),
(79, 10, 1),
(79, 11, 1),
(79, 12, 1),
(79, 52, 1),
(79, 63, 1),
(79, 55, 1),
(79, 56, 1),
(79, 31, 1),
(79, 32, 1),
(79, 33, 1),
(79, 34, 1),
(79, 35, 1),
(79, 36, 1),
(79, 37, 1),
(79, 58, 1),
(79, 59, 1),
(79, 60, 1),
(79, 19, 1),
(79, 20, 1),
(79, 21, 1),
(79, 22, 1),
(79, 23, 1),
(79, 24, 1),
(79, 25, 1),
(79, 26, 1),
(79, 27, 1),
(79, 28, 1),
(79, 29, 1),
(79, 62, 1),
(80, 1, 2),
(80, 38, 2),
(80, 39, 2),
(80, 40, 2),
(80, 41, 2),
(80, 47, 2),
(80, 48, 2),
(80, 49, 2),
(80, 50, 2),
(80, 51, 2),
(80, 61, 2),
(80, 64, 2),
(80, 4, 2),
(80, 5, 2),
(80, 6, 2),
(80, 7, 2),
(80, 8, 2),
(80, 9, 2),
(80, 10, 2),
(80, 11, 2),
(80, 12, 2),
(80, 52, 2),
(80, 63, 2),
(80, 55, 2),
(80, 56, 2),
(80, 31, 2),
(80, 32, 2),
(80, 33, 2),
(80, 34, 2),
(80, 35, 2),
(80, 36, 2),
(80, 37, 2),
(80, 58, 2),
(80, 59, 2),
(80, 60, 2),
(80, 19, 2),
(80, 20, 2),
(80, 21, 2),
(80, 22, 2),
(80, 23, 2),
(80, 24, 2),
(80, 25, 2),
(80, 26, 2),
(80, 27, 2),
(80, 28, 2),
(80, 29, 2),
(80, 62, 2),
(81, 1, 3),
(81, 38, 3),
(81, 39, 3),
(81, 40, 3),
(81, 41, 3),
(81, 47, 3),
(81, 48, 3),
(81, 49, 3),
(81, 50, 3),
(81, 51, 3),
(81, 61, 3),
(81, 64, 3),
(81, 4, 3),
(81, 5, 3),
(81, 6, 3),
(81, 7, 3),
(81, 8, 3),
(81, 9, 3),
(81, 10, 3),
(81, 11, 3),
(81, 12, 3),
(81, 52, 3),
(81, 63, 3),
(81, 55, 3),
(81, 56, 3),
(81, 31, 3),
(81, 32, 3),
(81, 33, 3),
(81, 34, 3),
(81, 35, 3),
(81, 36, 3),
(81, 37, 3),
(81, 58, 3),
(81, 59, 3),
(81, 60, 3),
(81, 19, 3),
(81, 20, 3),
(81, 21, 3),
(81, 22, 3),
(81, 23, 3),
(81, 24, 3),
(81, 25, 3),
(81, 26, 3),
(81, 27, 3),
(81, 28, 3),
(81, 29, 3),
(81, 62, 3),
(82, 1, 4),
(82, 38, 4),
(82, 39, 4),
(82, 40, 4),
(82, 41, 4),
(82, 47, 4),
(82, 48, 4),
(82, 49, 4),
(82, 50, 4),
(82, 51, 4),
(82, 61, 4),
(82, 64, 4),
(82, 4, 4),
(82, 5, 4),
(82, 6, 4),
(82, 7, 4),
(82, 8, 4),
(82, 9, 4),
(82, 10, 4),
(82, 11, 4),
(82, 12, 4),
(82, 52, 4),
(82, 63, 4),
(82, 55, 4),
(82, 56, 4),
(82, 31, 4),
(82, 32, 4),
(82, 33, 4),
(82, 34, 4),
(82, 35, 4),
(82, 36, 4),
(82, 37, 4),
(82, 58, 4),
(82, 59, 4),
(82, 60, 4),
(82, 19, 4),
(82, 20, 4),
(82, 21, 4),
(82, 22, 4),
(82, 23, 4),
(82, 24, 4),
(82, 25, 4),
(82, 26, 4),
(82, 27, 4),
(82, 28, 4),
(82, 29, 4),
(82, 62, 4),
(83, 1, 1),
(83, 38, 1),
(83, 39, 1),
(83, 40, 1),
(83, 41, 1),
(83, 47, 1),
(83, 48, 1),
(83, 49, 1),
(83, 50, 1),
(83, 51, 1),
(83, 61, 1),
(83, 64, 1),
(83, 4, 1),
(83, 5, 1),
(83, 6, 1),
(83, 7, 1),
(83, 8, 1),
(83, 9, 1),
(83, 10, 1),
(83, 11, 1),
(83, 12, 1),
(83, 52, 1),
(83, 63, 1),
(83, 55, 1),
(83, 56, 1),
(83, 31, 1),
(83, 32, 1),
(83, 33, 1),
(83, 34, 1),
(83, 35, 1),
(83, 36, 1),
(83, 37, 1),
(83, 58, 1),
(83, 59, 1),
(83, 60, 1),
(83, 19, 1),
(83, 20, 1),
(83, 21, 1),
(83, 22, 1),
(83, 23, 1),
(83, 24, 1),
(83, 25, 1),
(83, 26, 1),
(83, 27, 1),
(83, 28, 1),
(83, 29, 1),
(83, 62, 1),
(84, 4, 1),
(85, 4, 2),
(86, 1, 1),
(86, 38, 1),
(86, 39, 1),
(86, 40, 1),
(86, 41, 1),
(86, 47, 1),
(86, 48, 1),
(86, 49, 1),
(86, 50, 1),
(86, 51, 1),
(86, 61, 1),
(86, 64, 1),
(86, 4, 1),
(86, 5, 1),
(86, 6, 1),
(86, 7, 1),
(86, 8, 1),
(86, 9, 1),
(86, 10, 1),
(86, 11, 1),
(86, 12, 1),
(86, 52, 1),
(86, 63, 1),
(86, 55, 1),
(86, 56, 1),
(86, 31, 1),
(86, 32, 1),
(86, 33, 1),
(86, 34, 1),
(86, 35, 1),
(86, 36, 1),
(86, 37, 1),
(86, 58, 1),
(86, 59, 1),
(86, 60, 1),
(86, 19, 1),
(86, 20, 1),
(86, 21, 1),
(86, 22, 1),
(86, 23, 1),
(86, 24, 1),
(86, 25, 1),
(86, 26, 1),
(86, 27, 1),
(86, 28, 1),
(86, 29, 1),
(86, 62, 1),
(91, 4, 1),
(91, 5, 1),
(91, 6, 1),
(91, 7, 1),
(91, 8, 1),
(91, 9, 1),
(91, 10, 1),
(91, 11, 1),
(91, 12, 1),
(92, 19, 1),
(92, 20, 1),
(92, 21, 1),
(92, 22, 1),
(92, 23, 1),
(92, 24, 1),
(92, 25, 1),
(92, 26, 1),
(92, 27, 1),
(92, 28, 1),
(92, 31, 1),
(92, 32, 1),
(92, 33, 1),
(92, 34, 1),
(92, 35, 1),
(92, 36, 1),
(92, 37, 1),
(93, 4, 1),
(100, 1, 1),
(100, 38, 1),
(100, 39, 1),
(100, 40, 1),
(100, 41, 1),
(100, 47, 1),
(100, 48, 1),
(100, 49, 1),
(100, 50, 1),
(100, 51, 1),
(100, 61, 1),
(100, 64, 1),
(100, 4, 1),
(100, 5, 1),
(100, 6, 1),
(100, 7, 1),
(100, 8, 1),
(100, 9, 1),
(100, 10, 1),
(100, 11, 1),
(100, 12, 1),
(100, 52, 1),
(100, 63, 1),
(100, 55, 1),
(100, 56, 1),
(100, 31, 1),
(100, 32, 1),
(100, 33, 1),
(100, 34, 1),
(100, 35, 1),
(100, 36, 1),
(100, 37, 1),
(100, 58, 1),
(100, 59, 1),
(100, 60, 1),
(100, 19, 1),
(100, 20, 1),
(100, 21, 1),
(100, 22, 1),
(100, 23, 1),
(100, 24, 1),
(100, 25, 1),
(100, 26, 1),
(100, 27, 1),
(100, 28, 1),
(100, 29, 1),
(100, 62, 1),
(101, 1, 2),
(101, 38, 2),
(101, 39, 2),
(101, 40, 2),
(101, 41, 2),
(101, 47, 2),
(101, 48, 2),
(101, 49, 2),
(101, 50, 2),
(101, 51, 2),
(101, 61, 2),
(101, 64, 2),
(101, 4, 2),
(101, 5, 2),
(101, 6, 2),
(101, 7, 2),
(101, 8, 2),
(101, 9, 2),
(101, 10, 2),
(101, 11, 2),
(101, 12, 2),
(101, 52, 2),
(101, 63, 2),
(101, 55, 2),
(101, 56, 2),
(101, 31, 2),
(101, 32, 2),
(101, 33, 2),
(101, 34, 2),
(101, 35, 2),
(101, 36, 2),
(101, 37, 2),
(101, 58, 2),
(101, 59, 2),
(101, 60, 2),
(101, 19, 2),
(101, 20, 2),
(101, 21, 2),
(101, 22, 2),
(101, 23, 2),
(101, 24, 2),
(101, 25, 2),
(101, 26, 2),
(101, 27, 2),
(101, 28, 2),
(101, 29, 2),
(101, 62, 2),
(102, 1, 3),
(102, 38, 3),
(102, 39, 3),
(102, 40, 3),
(102, 41, 3),
(102, 47, 3),
(102, 48, 3),
(102, 49, 3),
(102, 50, 3),
(102, 51, 3),
(102, 61, 3),
(102, 64, 3),
(102, 4, 3),
(102, 5, 3),
(102, 6, 3),
(102, 7, 3),
(102, 8, 3),
(102, 9, 3),
(102, 10, 3),
(102, 11, 3),
(102, 12, 3),
(102, 52, 3),
(102, 63, 3),
(102, 55, 3),
(102, 56, 3),
(102, 31, 3),
(102, 32, 3),
(102, 33, 3),
(102, 34, 3),
(102, 35, 3),
(102, 36, 3),
(102, 37, 3),
(102, 58, 3),
(102, 59, 3),
(102, 60, 3),
(102, 19, 3),
(102, 20, 3),
(102, 21, 3),
(102, 22, 3),
(102, 23, 3),
(102, 24, 3),
(102, 25, 3),
(102, 26, 3),
(102, 27, 3),
(102, 28, 3),
(102, 29, 3),
(102, 62, 3),
(103, 1, 4),
(103, 38, 4),
(103, 39, 4),
(103, 40, 4),
(103, 41, 4),
(103, 47, 4),
(103, 48, 4),
(103, 49, 4),
(103, 50, 4),
(103, 51, 4),
(103, 61, 4),
(103, 64, 4),
(103, 4, 4),
(103, 5, 4),
(103, 6, 4),
(103, 7, 4),
(103, 8, 4),
(103, 9, 4),
(103, 10, 4),
(103, 11, 4),
(103, 12, 4),
(103, 52, 4),
(103, 63, 4),
(103, 55, 4),
(103, 56, 4),
(103, 31, 4),
(103, 32, 4),
(103, 33, 4),
(103, 34, 4),
(103, 35, 4),
(103, 36, 4),
(103, 37, 4),
(103, 58, 4),
(103, 59, 4),
(103, 60, 4),
(103, 19, 4),
(103, 20, 4),
(103, 21, 4),
(103, 22, 4),
(103, 23, 4),
(103, 24, 4),
(103, 25, 4),
(103, 26, 4),
(103, 27, 4),
(103, 28, 4),
(103, 29, 4),
(103, 62, 4),
(106, 4, 1),
(113, 3, 1),
(91, 1, 1),
(91, 19, 2),
(91, 20, 2),
(91, 21, 2),
(91, 22, 2),
(91, 23, 2),
(91, 24, 2),
(91, 25, 2),
(91, 26, 2),
(91, 27, 2),
(91, 28, 2),
(91, 29, 1),
(91, 61, 1),
(91, 31, 2),
(91, 32, 2),
(91, 33, 2),
(91, 34, 2),
(91, 35, 2),
(91, 36, 2),
(91, 37, 2),
(91, 62, 1),
(91, 38, 1),
(91, 39, 1),
(91, 40, 1),
(91, 41, 1),
(91, 63, 1),
(91, 64, 1),
(91, 52, 1),
(91, 47, 1),
(91, 48, 1),
(91, 49, 1),
(91, 50, 1),
(91, 51, 1),
(91, 55, 1),
(91, 56, 1),
(91, 58, 1),
(91, 59, 1),
(91, 60, 1),
(35, 68, 1),
(35, 67, 1),
(35, 70, 1),
(35, 65, 1),
(35, 66, 1),
(35, 73, 1),
(35, 71, 1),
(48, 68, 1),
(48, 67, 1),
(48, 70, 1),
(48, 65, 1),
(48, 66, 1),
(48, 73, 1),
(48, 71, 1),
(36, 68, 1),
(36, 67, 1),
(36, 70, 1),
(36, 65, 1),
(36, 66, 1),
(36, 73, 1),
(36, 71, 1),
(47, 68, 1),
(47, 67, 1),
(47, 70, 1),
(47, 65, 1),
(47, 66, 1),
(47, 73, 1),
(47, 71, 1),
(37, 68, 1),
(37, 67, 1),
(37, 70, 1),
(37, 65, 1),
(37, 66, 1),
(37, 73, 1),
(37, 71, 1),
(40, 68, 1),
(40, 67, 1),
(40, 70, 1),
(40, 65, 1),
(40, 66, 1),
(40, 73, 1),
(40, 71, 1),
(41, 68, 2),
(41, 67, 2),
(41, 70, 2),
(41, 65, 2),
(41, 66, 2),
(41, 73, 2),
(41, 71, 2),
(42, 68, 3),
(42, 67, 3),
(42, 70, 3),
(42, 65, 3),
(42, 66, 3),
(42, 73, 3),
(42, 71, 3),
(43, 68, 4),
(43, 67, 4),
(43, 70, 4),
(43, 65, 4),
(43, 66, 4),
(43, 73, 4),
(43, 71, 4),
(86, 68, 1),
(86, 67, 1),
(86, 70, 1),
(86, 65, 1),
(86, 66, 1),
(86, 73, 1),
(86, 71, 1),
(91, 68, 1),
(91, 67, 1),
(91, 70, 1),
(91, 65, 1),
(91, 66, 1),
(91, 73, 1),
(91, 71, 1),
(100, 68, 1),
(100, 67, 1),
(100, 70, 1),
(100, 65, 1),
(100, 66, 1),
(100, 73, 1),
(100, 71, 1),
(101, 68, 2),
(101, 67, 2),
(101, 70, 2),
(101, 65, 2),
(101, 66, 2),
(101, 73, 2),
(101, 71, 2),
(102, 68, 3),
(102, 67, 3),
(102, 70, 3),
(102, 65, 3),
(102, 66, 3),
(102, 73, 3),
(102, 71, 3),
(103, 68, 4),
(103, 67, 4),
(103, 70, 4),
(103, 65, 4),
(103, 66, 4),
(103, 73, 4),
(103, 71, 4),
(16, 68, 1),
(16, 67, 1),
(16, 70, 1),
(16, 65, 1),
(16, 66, 1),
(16, 73, 1),
(16, 71, 1),
(21, 68, 1),
(21, 67, 1),
(21, 70, 1),
(21, 65, 1),
(21, 66, 1),
(21, 73, 1),
(21, 71, 1),
(11, 68, 1),
(11, 67, 1),
(11, 70, 1),
(11, 65, 1),
(11, 66, 1),
(11, 73, 1),
(11, 71, 1),
(12, 68, 2),
(12, 67, 2),
(12, 70, 2),
(12, 65, 2),
(12, 66, 2),
(12, 73, 2),
(12, 71, 2),
(5, 68, 1),
(5, 67, 1),
(5, 70, 1),
(5, 65, 1),
(5, 66, 1),
(5, 73, 1),
(5, 71, 1),
(6, 68, 2),
(6, 67, 2),
(6, 70, 2),
(6, 65, 2),
(6, 66, 2),
(6, 73, 2),
(6, 71, 2),
(20, 68, 1),
(20, 67, 1),
(20, 70, 1),
(20, 65, 1),
(20, 66, 1),
(20, 73, 1),
(20, 71, 1),
(17, 68, 1),
(17, 67, 1),
(17, 70, 1),
(17, 65, 1),
(17, 66, 1),
(17, 73, 1),
(17, 71, 1),
(13, 68, 1),
(13, 67, 1),
(13, 70, 1),
(13, 65, 1),
(13, 66, 1),
(13, 73, 1),
(13, 71, 1),
(14, 68, 2),
(14, 67, 2),
(14, 70, 2),
(14, 65, 2),
(14, 66, 2),
(14, 73, 2),
(14, 71, 2),
(7, 68, 1),
(7, 67, 1),
(7, 70, 1),
(7, 65, 1),
(7, 66, 1),
(7, 73, 1),
(7, 71, 1),
(8, 68, 2),
(8, 67, 2),
(8, 70, 2),
(8, 65, 2),
(8, 66, 2),
(8, 73, 2),
(8, 71, 2),
(9, 68, 3),
(9, 67, 3),
(9, 70, 3),
(9, 65, 3),
(9, 66, 3),
(9, 73, 3),
(9, 71, 3),
(10, 68, 4),
(10, 67, 4),
(10, 70, 4),
(10, 65, 4),
(10, 66, 4),
(10, 73, 4),
(10, 71, 4),
(30, 68, 1),
(30, 67, 1),
(30, 70, 1),
(30, 65, 1),
(30, 66, 1),
(30, 73, 1),
(30, 71, 1),
(28, 68, 1),
(28, 67, 1),
(28, 70, 1),
(28, 65, 1),
(28, 66, 1),
(28, 73, 1),
(28, 71, 1),
(29, 68, 1),
(29, 67, 1),
(29, 70, 1),
(29, 65, 1),
(29, 66, 1),
(29, 73, 1),
(29, 71, 1),
(22, 68, 1),
(22, 67, 1),
(22, 70, 1),
(22, 65, 1),
(22, 66, 1),
(22, 73, 1),
(22, 71, 1),
(23, 68, 2),
(23, 67, 2),
(23, 70, 2),
(23, 65, 2),
(23, 66, 2),
(23, 73, 2),
(23, 71, 2),
(24, 68, 1),
(24, 67, 1),
(24, 70, 1),
(24, 65, 1),
(24, 66, 1),
(24, 73, 1),
(24, 71, 1),
(25, 68, 2),
(25, 67, 2),
(25, 70, 2),
(25, 65, 2),
(25, 66, 2),
(25, 73, 2),
(25, 71, 2),
(26, 68, 3),
(26, 67, 3),
(26, 70, 3),
(26, 65, 3),
(26, 66, 3),
(26, 73, 3),
(26, 71, 3),
(27, 68, 4),
(27, 67, 4),
(27, 70, 4),
(27, 65, 4),
(27, 66, 4),
(27, 73, 4),
(27, 71, 4),
(65, 68, 1),
(65, 67, 1),
(65, 70, 1),
(65, 65, 1),
(65, 66, 1),
(65, 73, 1),
(65, 71, 1),
(66, 68, 1),
(66, 67, 1),
(66, 70, 1),
(66, 65, 1),
(66, 66, 1),
(66, 73, 1),
(66, 71, 1),
(67, 68, 1),
(67, 67, 1),
(67, 70, 1),
(67, 65, 1),
(67, 66, 1),
(67, 73, 1),
(67, 71, 1),
(68, 68, 1),
(68, 67, 1),
(68, 70, 1),
(68, 65, 1),
(68, 66, 1),
(68, 73, 1),
(68, 71, 1),
(69, 68, 2),
(69, 67, 2),
(69, 70, 2),
(69, 65, 2),
(69, 66, 2),
(69, 73, 2),
(69, 71, 2),
(72, 68, 1),
(72, 67, 1),
(72, 70, 1),
(72, 65, 1),
(72, 66, 1),
(72, 73, 1),
(72, 71, 1),
(73, 68, 2),
(73, 67, 2),
(73, 70, 2),
(73, 65, 2),
(73, 66, 2),
(73, 73, 2),
(73, 71, 2),
(74, 68, 1),
(74, 67, 1),
(74, 70, 1),
(74, 65, 1),
(74, 66, 1),
(74, 73, 1),
(74, 71, 1),
(75, 68, 1),
(75, 67, 1),
(75, 70, 1),
(75, 65, 1),
(75, 66, 1),
(75, 73, 1),
(75, 71, 1),
(76, 68, 1),
(76, 67, 1),
(76, 70, 1),
(76, 65, 1),
(76, 66, 1),
(76, 73, 1),
(76, 71, 1),
(77, 68, 1),
(77, 67, 1),
(77, 70, 1),
(77, 65, 1),
(77, 66, 1),
(77, 73, 1),
(77, 71, 1),
(78, 68, 2),
(78, 67, 2),
(78, 70, 2),
(78, 65, 2),
(78, 66, 2),
(78, 73, 2),
(78, 71, 2),
(79, 68, 1),
(79, 67, 1),
(79, 70, 1),
(79, 65, 1),
(79, 66, 1),
(79, 73, 1),
(79, 71, 1),
(80, 68, 2),
(80, 67, 2),
(80, 70, 2),
(80, 65, 2),
(80, 66, 2),
(80, 73, 2),
(80, 71, 2),
(81, 68, 3),
(81, 67, 3),
(81, 70, 3),
(81, 65, 3),
(81, 66, 3),
(81, 73, 3),
(81, 71, 3),
(82, 68, 4),
(82, 67, 4),
(82, 70, 4),
(82, 65, 4),
(82, 66, 4),
(82, 73, 4),
(82, 71, 4),
(83, 68, 1),
(83, 67, 1),
(83, 70, 1),
(83, 65, 1),
(83, 66, 1),
(83, 73, 1),
(83, 71, 1),
(50, 68, 1),
(50, 67, 1),
(50, 70, 1),
(50, 65, 1),
(50, 66, 1),
(50, 73, 1),
(50, 71, 1),
(51, 68, 1),
(51, 67, 1),
(51, 70, 1),
(51, 65, 1),
(51, 66, 1),
(51, 73, 1),
(51, 71, 1),
(52, 68, 1),
(52, 67, 1),
(52, 70, 1),
(52, 65, 1),
(52, 66, 1),
(52, 73, 1),
(52, 71, 1),
(54, 68, 1),
(54, 67, 1),
(54, 70, 1),
(54, 65, 1),
(54, 66, 1),
(54, 73, 1),
(54, 71, 1),
(55, 68, 2),
(55, 67, 2),
(55, 70, 2),
(55, 65, 2),
(55, 66, 2),
(55, 73, 2),
(55, 71, 2),
(56, 68, 1),
(56, 67, 1),
(56, 70, 1),
(56, 65, 1),
(56, 66, 1),
(56, 73, 1),
(56, 71, 1),
(57, 68, 1),
(57, 67, 1),
(57, 70, 1),
(57, 65, 1),
(57, 66, 1),
(57, 73, 1),
(57, 71, 1),
(58, 68, 1),
(58, 67, 1),
(58, 70, 1),
(58, 65, 1),
(58, 66, 1),
(58, 73, 1),
(58, 71, 1),
(59, 68, 1),
(59, 67, 1),
(59, 70, 1),
(59, 65, 1),
(59, 66, 1),
(59, 73, 1),
(59, 71, 1),
(60, 68, 2),
(60, 67, 2),
(60, 70, 2),
(60, 65, 2),
(60, 66, 2),
(60, 73, 2),
(60, 71, 2),
(61, 68, 3),
(61, 67, 3),
(61, 70, 3),
(61, 65, 3),
(61, 66, 3),
(61, 73, 3),
(61, 71, 3),
(62, 68, 4),
(62, 67, 4),
(62, 70, 4),
(62, 65, 4),
(62, 66, 4),
(62, 73, 4),
(62, 71, 4),
(113, 49, 2),
(113, 48, 2),
(113, 47, 2),
(113, 52, 2),
(113, 64, 2),
(113, 63, 2),
(113, 41, 2),
(113, 40, 2),
(113, 39, 2),
(113, 38, 2),
(113, 62, 2),
(113, 37, 3),
(113, 36, 3),
(113, 35, 3),
(113, 34, 3),
(113, 33, 3),
(113, 32, 3),
(113, 31, 3),
(113, 61, 2),
(113, 29, 2),
(113, 28, 3),
(112, 65, 3),
(113, 27, 3),
(113, 26, 3),
(113, 25, 3),
(113, 24, 3),
(113, 23, 3),
(113, 22, 3),
(113, 21, 3),
(112, 70, 3),
(113, 20, 3),
(113, 19, 3),
(113, 12, 2),
(113, 11, 2),
(112, 67, 3),
(112, 68, 3),
(113, 5, 2),
(113, 10, 2),
(113, 9, 2),
(113, 8, 2),
(113, 7, 2),
(113, 6, 2),
(113, 4, 2),
(113, 1, 2),
(112, 71, 3),
(112, 73, 3),
(112, 66, 3),
(111, 68, 2),
(111, 67, 2),
(111, 70, 2),
(111, 65, 2),
(111, 66, 2),
(111, 73, 2),
(111, 71, 2),
(113, 50, 2),
(113, 51, 2),
(113, 55, 2),
(113, 56, 2),
(113, 58, 2),
(113, 59, 2),
(113, 60, 2),
(113, 68, 4),
(113, 67, 4),
(113, 70, 4),
(113, 65, 4),
(113, 66, 4),
(113, 73, 4),
(113, 71, 4),
(115, 1, 1),
(115, 4, 1),
(115, 5, 1),
(115, 6, 1),
(115, 7, 1),
(115, 8, 1),
(115, 9, 1),
(115, 10, 1),
(115, 11, 1),
(115, 12, 1),
(115, 19, 1),
(115, 20, 1),
(115, 21, 1),
(115, 22, 1),
(115, 23, 1),
(115, 24, 1),
(115, 25, 1),
(115, 26, 1),
(115, 27, 1),
(115, 28, 1),
(115, 29, 1),
(115, 61, 1),
(115, 31, 1),
(115, 32, 1),
(115, 33, 1),
(115, 34, 1),
(115, 35, 1),
(115, 36, 1),
(115, 37, 1),
(115, 62, 1),
(115, 38, 1),
(115, 39, 1),
(115, 40, 1),
(115, 41, 1),
(115, 63, 1),
(115, 64, 1),
(115, 52, 1),
(115, 47, 1),
(115, 48, 1),
(115, 49, 1),
(115, 50, 1),
(115, 51, 1),
(115, 55, 1),
(115, 56, 1),
(115, 58, 1),
(115, 59, 1),
(115, 60, 1),
(115, 68, 1),
(115, 67, 1),
(115, 70, 1),
(115, 65, 1),
(115, 66, 1),
(115, 73, 1),
(115, 71, 1),
(116, 1, 1),
(116, 4, 2),
(116, 5, 1),
(116, 6, 1),
(116, 7, 1),
(116, 8, 1),
(116, 9, 1),
(116, 10, 1),
(116, 11, 1),
(116, 12, 1),
(116, 19, 1),
(116, 20, 1),
(116, 21, 1),
(116, 22, 1),
(116, 23, 1),
(116, 24, 1),
(116, 25, 1),
(116, 26, 1),
(116, 27, 1),
(116, 28, 1),
(116, 29, 1),
(116, 61, 2),
(116, 31, 1),
(116, 32, 1),
(116, 33, 1),
(116, 34, 1),
(116, 35, 1),
(116, 36, 1),
(116, 37, 1),
(116, 62, 1),
(116, 38, 1),
(116, 39, 1),
(116, 40, 1),
(116, 41, 1),
(116, 63, 1),
(116, 64, 1),
(116, 52, 1),
(116, 47, 1),
(116, 48, 1),
(116, 49, 1),
(116, 50, 1),
(116, 51, 1),
(116, 55, 1),
(116, 56, 1),
(116, 58, 1),
(116, 59, 1),
(116, 60, 1),
(116, 68, 1),
(116, 67, 1),
(116, 70, 1),
(116, 65, 1),
(116, 66, 1),
(116, 73, 1),
(116, 71, 1),
(91, 3, 2),
(120, 4, 1),
(121, 4, 1),
(124, 3, 1),
(124, 1, 1),
(124, 4, 1),
(124, 5, 1),
(124, 6, 1),
(124, 7, 1),
(124, 8, 1),
(124, 9, 1),
(124, 10, 1),
(124, 11, 1),
(124, 12, 1),
(124, 19, 1),
(124, 20, 1),
(124, 21, 1),
(124, 22, 1),
(124, 23, 1),
(124, 24, 1),
(124, 25, 1),
(124, 26, 1),
(124, 27, 1),
(124, 28, 1),
(124, 29, 1),
(124, 61, 1),
(124, 31, 1),
(124, 32, 1),
(124, 33, 1),
(124, 34, 1),
(124, 35, 1),
(124, 36, 1),
(124, 37, 1),
(124, 62, 1),
(124, 38, 1),
(124, 39, 1),
(124, 40, 1),
(124, 41, 1),
(124, 63, 1),
(124, 64, 1),
(124, 52, 1),
(124, 47, 1),
(124, 48, 1),
(124, 49, 1),
(124, 50, 1),
(124, 51, 1),
(124, 55, 1),
(124, 56, 1),
(124, 58, 1),
(124, 59, 1),
(124, 60, 1),
(124, 68, 1),
(124, 67, 1),
(124, 70, 1),
(124, 65, 1),
(124, 66, 1),
(124, 73, 1),
(124, 71, 1),
(127, 3, 3),
(127, 1, 3),
(127, 4, 3),
(127, 5, 3),
(127, 6, 3),
(127, 7, 3),
(127, 8, 3),
(127, 9, 3),
(127, 10, 3),
(127, 11, 3),
(127, 12, 3),
(127, 19, 4),
(127, 20, 4),
(127, 21, 4),
(127, 22, 4),
(127, 23, 4),
(127, 24, 4),
(127, 25, 4),
(127, 26, 4),
(127, 27, 4),
(127, 28, 4),
(127, 29, 3),
(127, 61, 3),
(127, 31, 4),
(127, 32, 4),
(127, 33, 4),
(127, 34, 4),
(127, 35, 4),
(127, 36, 4),
(127, 37, 4),
(127, 62, 3),
(127, 38, 3),
(127, 39, 3),
(127, 40, 3),
(127, 41, 3),
(127, 63, 3),
(127, 64, 3),
(127, 52, 3),
(127, 47, 3),
(127, 48, 3),
(127, 49, 3),
(127, 50, 3),
(127, 51, 3),
(127, 55, 3),
(127, 56, 3),
(127, 58, 3),
(127, 59, 3),
(127, 60, 3),
(127, 68, 5),
(127, 67, 5),
(127, 70, 5),
(127, 65, 5),
(127, 66, 5),
(127, 73, 5),
(127, 71, 5),
(128, 3, 4),
(128, 1, 4),
(128, 4, 4),
(128, 5, 4),
(128, 6, 4),
(128, 7, 4),
(128, 8, 4),
(128, 9, 4),
(128, 10, 4),
(128, 11, 4),
(128, 12, 4),
(128, 19, 5),
(128, 20, 5),
(128, 21, 5),
(128, 22, 5),
(128, 23, 5),
(128, 24, 5),
(128, 25, 5),
(128, 26, 5),
(128, 27, 5),
(128, 28, 5),
(128, 29, 4),
(128, 61, 4),
(128, 31, 5),
(128, 32, 5),
(128, 33, 5),
(128, 34, 5),
(128, 35, 5),
(128, 36, 5),
(128, 37, 5),
(128, 62, 4),
(128, 38, 4),
(128, 39, 4),
(128, 40, 4),
(128, 41, 4),
(128, 63, 4),
(128, 64, 4),
(128, 52, 4),
(128, 47, 4),
(128, 48, 4),
(128, 49, 4),
(128, 50, 4),
(128, 51, 4),
(128, 55, 4),
(128, 56, 4),
(128, 58, 4),
(128, 59, 4),
(128, 60, 4),
(128, 68, 6),
(128, 67, 6),
(128, 70, 6),
(128, 65, 6),
(128, 66, 6),
(128, 73, 6),
(128, 71, 6),
(17, 3, 1),
(153, 3, 1),
(153, 1, 2),
(153, 4, 1),
(153, 5, 2),
(153, 6, 2),
(153, 7, 2),
(153, 8, 2),
(153, 9, 2),
(153, 10, 2),
(153, 11, 2),
(153, 12, 2),
(153, 19, 2),
(153, 20, 2),
(153, 21, 2),
(153, 22, 2),
(153, 23, 2),
(153, 24, 2),
(153, 25, 2),
(153, 26, 2),
(153, 27, 2),
(153, 28, 2),
(153, 29, 2),
(153, 61, 1),
(153, 31, 2),
(153, 32, 2),
(153, 33, 2),
(153, 34, 2),
(153, 35, 2),
(153, 36, 2),
(153, 37, 2),
(153, 62, 2),
(153, 38, 2),
(153, 39, 2),
(153, 40, 2),
(153, 41, 2),
(153, 63, 2),
(153, 64, 2),
(153, 52, 2),
(153, 47, 2),
(153, 48, 2),
(153, 49, 2),
(153, 50, 2),
(153, 51, 2),
(153, 55, 2),
(153, 56, 2),
(153, 58, 2),
(153, 59, 2),
(153, 60, 2),
(153, 68, 2),
(153, 67, 2),
(153, 70, 2),
(153, 65, 2),
(153, 66, 2),
(153, 73, 2),
(153, 71, 2),
(156, 3, 1),
(156, 1, 1),
(156, 4, 1),
(156, 5, 1),
(156, 6, 1),
(156, 7, 1),
(156, 8, 1),
(156, 9, 1),
(156, 10, 1),
(156, 11, 1),
(156, 12, 1),
(156, 19, 1),
(156, 20, 1),
(156, 21, 1),
(156, 22, 1),
(156, 23, 1),
(156, 24, 1),
(156, 25, 1),
(156, 26, 1),
(156, 27, 1),
(156, 28, 1),
(156, 29, 1),
(156, 61, 1),
(156, 31, 1),
(156, 32, 1),
(156, 33, 1),
(156, 34, 1),
(156, 35, 1),
(156, 36, 1),
(156, 37, 1),
(156, 62, 1),
(156, 38, 1),
(156, 39, 1),
(156, 40, 1),
(156, 41, 1),
(156, 63, 1),
(156, 64, 1),
(156, 52, 1),
(156, 47, 1),
(156, 48, 1),
(156, 49, 1),
(156, 50, 1),
(156, 51, 1),
(156, 55, 1),
(156, 56, 1),
(156, 58, 1),
(156, 59, 1),
(156, 60, 1),
(156, 68, 1),
(156, 67, 1),
(156, 70, 1),
(156, 65, 1),
(156, 66, 1),
(156, 73, 1),
(156, 71, 1),
(158, 3, 1),
(158, 1, 1),
(158, 38, 1),
(158, 39, 1),
(158, 40, 1),
(158, 41, 1),
(158, 47, 1),
(158, 48, 1),
(158, 49, 1),
(158, 50, 1),
(158, 51, 1),
(158, 61, 1),
(158, 64, 1),
(158, 68, 1),
(158, 67, 1),
(158, 70, 1),
(158, 65, 1),
(158, 66, 1),
(158, 73, 1),
(158, 71, 1),
(158, 4, 1),
(158, 5, 1),
(158, 6, 1),
(158, 7, 1),
(158, 8, 1),
(158, 9, 1),
(158, 10, 1),
(158, 11, 1),
(158, 12, 1),
(158, 52, 1),
(158, 63, 1),
(158, 55, 1),
(158, 56, 1),
(158, 31, 1),
(158, 32, 1),
(158, 33, 1),
(158, 34, 1),
(158, 35, 1),
(158, 36, 1),
(158, 37, 1),
(158, 58, 1),
(158, 59, 1),
(158, 60, 1),
(158, 19, 1),
(158, 20, 1),
(158, 21, 1),
(158, 22, 1),
(158, 23, 1),
(158, 24, 1),
(158, 25, 1),
(158, 26, 1),
(158, 27, 1),
(158, 28, 1),
(158, 29, 1),
(158, 62, 1),
(159, 3, 1),
(159, 1, 1),
(159, 38, 1),
(159, 39, 1),
(159, 40, 1),
(159, 41, 1),
(159, 47, 1),
(159, 48, 1),
(159, 49, 1),
(159, 50, 1),
(159, 51, 1),
(159, 61, 1),
(159, 64, 1),
(159, 68, 1),
(159, 67, 1),
(159, 70, 1),
(159, 65, 1),
(159, 66, 1),
(159, 73, 1),
(159, 71, 1),
(159, 4, 1),
(159, 5, 1),
(159, 6, 1),
(159, 7, 1),
(159, 8, 1),
(159, 9, 1),
(159, 10, 1),
(159, 11, 1),
(159, 12, 1),
(159, 52, 1),
(159, 63, 1),
(159, 55, 1),
(159, 56, 1),
(159, 31, 1),
(159, 32, 1),
(159, 33, 1),
(159, 34, 1),
(159, 35, 1),
(159, 36, 1),
(159, 37, 1),
(159, 58, 1),
(159, 59, 1),
(159, 60, 1),
(159, 19, 1),
(159, 20, 1),
(159, 21, 1),
(159, 22, 1),
(159, 23, 1),
(159, 24, 1),
(159, 25, 1),
(159, 26, 1),
(159, 27, 1),
(159, 28, 1),
(159, 29, 1),
(159, 62, 1),
(160, 3, 1),
(160, 1, 1),
(160, 38, 1),
(160, 39, 1),
(160, 40, 1),
(160, 41, 1),
(160, 47, 1),
(160, 48, 1),
(160, 49, 1),
(160, 50, 1),
(160, 51, 1),
(160, 61, 1),
(160, 64, 1),
(160, 68, 1),
(160, 67, 1),
(160, 70, 1),
(160, 65, 1),
(160, 66, 1),
(160, 73, 1),
(160, 71, 1),
(160, 4, 1),
(160, 5, 1),
(160, 6, 1),
(160, 7, 1),
(160, 8, 1),
(160, 9, 1),
(160, 10, 1),
(160, 11, 1),
(160, 12, 1),
(160, 52, 1),
(160, 63, 1),
(160, 55, 1),
(160, 56, 1),
(160, 31, 1),
(160, 32, 1),
(160, 33, 1),
(160, 34, 1),
(160, 35, 1),
(160, 36, 1),
(160, 37, 1),
(160, 58, 1),
(160, 59, 1),
(160, 60, 1),
(160, 19, 1),
(160, 20, 1),
(160, 21, 1),
(160, 22, 1),
(160, 23, 1),
(160, 24, 1),
(160, 25, 1),
(160, 26, 1),
(160, 27, 1),
(160, 28, 1),
(160, 29, 1),
(160, 62, 1),
(161, 3, 1),
(161, 1, 1),
(161, 38, 1),
(161, 39, 1),
(161, 40, 1),
(161, 41, 1),
(161, 47, 1),
(161, 48, 1),
(161, 49, 1),
(161, 50, 1),
(161, 51, 1),
(161, 61, 1),
(161, 64, 1),
(161, 68, 1),
(161, 67, 1),
(161, 70, 1),
(161, 65, 1),
(161, 66, 1),
(161, 73, 1),
(161, 71, 1),
(161, 4, 1),
(161, 5, 1),
(161, 6, 1),
(161, 7, 1),
(161, 8, 1),
(161, 9, 1),
(161, 10, 1),
(161, 11, 1),
(161, 12, 1),
(161, 52, 1),
(161, 63, 1),
(161, 55, 1),
(161, 56, 1),
(161, 31, 1),
(161, 32, 1),
(161, 33, 1),
(161, 34, 1),
(161, 35, 1),
(161, 36, 1),
(161, 37, 1),
(161, 58, 1),
(161, 59, 1),
(161, 60, 1),
(161, 19, 1),
(161, 20, 1),
(161, 21, 1),
(161, 22, 1),
(161, 23, 1),
(161, 24, 1),
(161, 25, 1),
(161, 26, 1),
(161, 27, 1),
(161, 28, 1),
(161, 29, 1),
(161, 62, 1),
(162, 3, 2),
(162, 1, 2),
(162, 38, 2),
(162, 39, 2),
(162, 40, 2),
(162, 41, 2),
(162, 47, 2),
(162, 48, 2),
(162, 49, 2),
(162, 50, 2),
(162, 51, 2),
(162, 61, 2),
(162, 64, 2),
(162, 68, 2),
(162, 67, 2),
(162, 70, 2),
(162, 65, 2),
(162, 66, 2),
(162, 73, 2),
(162, 71, 2),
(162, 4, 2),
(162, 5, 2),
(162, 6, 2),
(162, 7, 2),
(162, 8, 2),
(162, 9, 2),
(162, 10, 2),
(162, 11, 2),
(162, 12, 2),
(162, 52, 2),
(162, 63, 2),
(162, 55, 2),
(162, 56, 2),
(162, 31, 2),
(162, 32, 2),
(162, 33, 2),
(162, 34, 2),
(162, 35, 2),
(162, 36, 2),
(162, 37, 2),
(162, 58, 2),
(162, 59, 2),
(162, 60, 2),
(162, 19, 2),
(162, 20, 2),
(162, 21, 2),
(162, 22, 2),
(162, 23, 2),
(162, 24, 2),
(162, 25, 2),
(162, 26, 2),
(162, 27, 2),
(162, 28, 2),
(162, 29, 2),
(162, 62, 2),
(163, 4, 1),
(163, 5, 1),
(163, 6, 1),
(163, 7, 1),
(163, 8, 1),
(163, 9, 1),
(163, 10, 1),
(163, 11, 1),
(163, 12, 1),
(164, 3, 1),
(164, 1, 1),
(164, 38, 1),
(164, 39, 1),
(164, 40, 1),
(164, 41, 1),
(164, 47, 1),
(164, 48, 1),
(164, 49, 1),
(164, 50, 1),
(164, 51, 1),
(164, 61, 1),
(164, 64, 1),
(164, 68, 1),
(164, 67, 1),
(164, 70, 1),
(164, 65, 1),
(164, 66, 1),
(164, 73, 1),
(164, 71, 1),
(164, 4, 2),
(164, 5, 2),
(164, 6, 2),
(164, 7, 2),
(164, 8, 2),
(164, 9, 2),
(164, 10, 2),
(164, 11, 2),
(164, 12, 2),
(164, 52, 1),
(164, 63, 1),
(164, 55, 1),
(164, 56, 1),
(164, 31, 1),
(164, 32, 1),
(164, 33, 1),
(164, 34, 1),
(164, 35, 1),
(164, 36, 1),
(164, 37, 1),
(164, 58, 1),
(164, 59, 1),
(164, 60, 1),
(164, 19, 1),
(164, 20, 1),
(164, 21, 1),
(164, 22, 1),
(164, 23, 1),
(164, 24, 1),
(164, 25, 1),
(164, 26, 1),
(164, 27, 1),
(164, 28, 1),
(164, 29, 1),
(164, 62, 1),
(165, 3, 2),
(165, 1, 2),
(165, 38, 2),
(165, 39, 2),
(165, 40, 2),
(165, 41, 2),
(165, 47, 2),
(165, 48, 2),
(165, 49, 2),
(165, 50, 2),
(165, 51, 2),
(165, 61, 2),
(165, 64, 2),
(165, 68, 2),
(165, 67, 2),
(165, 70, 2),
(165, 65, 2),
(165, 66, 2),
(165, 73, 2);
INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(165, 71, 2),
(165, 4, 3),
(165, 5, 3),
(165, 6, 3),
(165, 7, 3),
(165, 8, 3),
(165, 9, 3),
(165, 10, 3),
(165, 11, 3),
(165, 12, 3),
(165, 52, 2),
(165, 63, 2),
(165, 55, 2),
(165, 56, 2),
(165, 31, 2),
(165, 32, 2),
(165, 33, 2),
(165, 34, 2),
(165, 35, 2),
(165, 36, 2),
(165, 37, 2),
(165, 58, 2),
(165, 59, 2),
(165, 60, 2),
(165, 19, 2),
(165, 20, 2),
(165, 21, 2),
(165, 22, 2),
(165, 23, 2),
(165, 24, 2),
(165, 25, 2),
(165, 26, 2),
(165, 27, 2),
(165, 28, 2),
(165, 29, 2),
(165, 62, 2),
(166, 3, 1),
(166, 1, 1),
(166, 38, 1),
(166, 39, 1),
(166, 40, 1),
(166, 41, 1),
(166, 47, 1),
(166, 48, 1),
(166, 49, 1),
(166, 50, 1),
(166, 51, 1),
(166, 61, 1),
(166, 64, 1),
(166, 68, 1),
(166, 67, 1),
(166, 70, 1),
(166, 65, 1),
(166, 66, 1),
(166, 73, 1),
(166, 71, 1),
(166, 4, 1),
(166, 5, 1),
(166, 6, 1),
(166, 7, 1),
(166, 8, 1),
(166, 9, 1),
(166, 10, 1),
(166, 11, 1),
(166, 12, 1),
(166, 52, 1),
(166, 63, 1),
(166, 55, 1),
(166, 56, 1),
(166, 31, 1),
(166, 32, 1),
(166, 33, 1),
(166, 34, 1),
(166, 35, 1),
(166, 36, 1),
(166, 37, 1),
(166, 58, 1),
(166, 59, 1),
(166, 60, 1),
(166, 19, 1),
(166, 20, 1),
(166, 21, 1),
(166, 22, 1),
(166, 23, 1),
(166, 24, 1),
(166, 25, 1),
(166, 26, 1),
(166, 27, 1),
(166, 28, 1),
(166, 29, 1),
(166, 62, 1),
(167, 3, 1),
(167, 1, 1),
(167, 38, 1),
(167, 39, 1),
(167, 40, 1),
(167, 41, 1),
(167, 47, 1),
(167, 48, 1),
(167, 49, 1),
(167, 50, 1),
(167, 51, 1),
(167, 61, 1),
(167, 64, 1),
(167, 68, 1),
(167, 67, 1),
(167, 70, 1),
(167, 65, 1),
(167, 66, 1),
(167, 73, 1),
(167, 71, 1),
(167, 4, 1),
(167, 5, 1),
(167, 6, 1),
(167, 7, 1),
(167, 8, 1),
(167, 9, 1),
(167, 10, 1),
(167, 11, 1),
(167, 12, 1),
(167, 52, 1),
(167, 63, 1),
(167, 55, 1),
(167, 56, 1),
(167, 31, 1),
(167, 32, 1),
(167, 33, 1),
(167, 34, 1),
(167, 35, 1),
(167, 36, 1),
(167, 37, 1),
(167, 58, 1),
(167, 59, 1),
(167, 60, 1),
(167, 19, 1),
(167, 20, 1),
(167, 21, 1),
(167, 22, 1),
(167, 23, 1),
(167, 24, 1),
(167, 25, 1),
(167, 26, 1),
(167, 27, 1),
(167, 28, 1),
(167, 29, 1),
(167, 62, 1),
(168, 3, 1),
(168, 1, 1),
(168, 38, 1),
(168, 39, 1),
(168, 40, 1),
(168, 41, 1),
(168, 47, 1),
(168, 48, 1),
(168, 49, 1),
(168, 50, 1),
(168, 51, 1),
(168, 61, 1),
(168, 64, 1),
(168, 68, 1),
(168, 67, 1),
(168, 70, 1),
(168, 65, 1),
(168, 66, 1),
(168, 73, 1),
(168, 71, 1),
(168, 4, 1),
(168, 5, 1),
(168, 6, 1),
(168, 7, 1),
(168, 8, 1),
(168, 9, 1),
(168, 10, 1),
(168, 11, 1),
(168, 12, 1),
(168, 52, 1),
(168, 63, 1),
(168, 55, 1),
(168, 56, 1),
(168, 31, 1),
(168, 32, 1),
(168, 33, 1),
(168, 34, 1),
(168, 35, 1),
(168, 36, 1),
(168, 37, 1),
(168, 58, 1),
(168, 59, 1),
(168, 60, 1),
(168, 19, 1),
(168, 20, 1),
(168, 21, 1),
(168, 22, 1),
(168, 23, 1),
(168, 24, 1),
(168, 25, 1),
(168, 26, 1),
(168, 27, 1),
(168, 28, 1),
(168, 29, 1),
(168, 62, 1),
(169, 3, 1),
(169, 1, 1),
(169, 38, 1),
(169, 39, 1),
(169, 40, 1),
(169, 41, 1),
(169, 47, 1),
(169, 48, 1),
(169, 49, 1),
(169, 50, 1),
(169, 51, 1),
(169, 61, 1),
(169, 64, 1),
(169, 68, 1),
(169, 67, 1),
(169, 70, 1),
(169, 65, 1),
(169, 66, 1),
(169, 73, 1),
(169, 71, 1),
(169, 4, 1),
(169, 5, 1),
(169, 6, 1),
(169, 7, 1),
(169, 8, 1),
(169, 9, 1),
(169, 10, 1),
(169, 11, 1),
(169, 12, 1),
(169, 52, 1),
(169, 63, 1),
(169, 55, 1),
(169, 56, 1),
(169, 31, 1),
(169, 32, 1),
(169, 33, 1),
(169, 34, 1),
(169, 35, 1),
(169, 36, 1),
(169, 37, 1),
(169, 58, 1),
(169, 59, 1),
(169, 60, 1),
(169, 19, 1),
(169, 20, 1),
(169, 21, 1),
(169, 22, 1),
(169, 23, 1),
(169, 24, 1),
(169, 25, 1),
(169, 26, 1),
(169, 27, 1),
(169, 28, 1),
(169, 29, 1),
(169, 62, 1),
(170, 3, 1),
(170, 1, 1),
(170, 38, 1),
(170, 39, 1),
(170, 40, 1),
(170, 41, 1),
(170, 47, 1),
(170, 48, 1),
(170, 49, 1),
(170, 50, 1),
(170, 51, 1),
(170, 61, 1),
(170, 64, 1),
(170, 68, 1),
(170, 67, 1),
(170, 70, 1),
(170, 65, 1),
(170, 66, 1),
(170, 73, 1),
(170, 71, 1),
(170, 4, 1),
(170, 5, 1),
(170, 6, 1),
(170, 7, 1),
(170, 8, 1),
(170, 9, 1),
(170, 10, 1),
(170, 11, 1),
(170, 12, 1),
(170, 52, 1),
(170, 63, 1),
(170, 55, 1),
(170, 56, 1),
(170, 31, 1),
(170, 32, 1),
(170, 33, 1),
(170, 34, 1),
(170, 35, 1),
(170, 36, 1),
(170, 37, 1),
(170, 58, 1),
(170, 59, 1),
(170, 60, 1),
(170, 19, 1),
(170, 20, 1),
(170, 21, 1),
(170, 22, 1),
(170, 23, 1),
(170, 24, 1),
(170, 25, 1),
(170, 26, 1),
(170, 27, 1),
(170, 28, 1),
(170, 29, 1),
(170, 62, 1),
(171, 3, 2),
(171, 1, 2),
(171, 38, 2),
(171, 39, 2),
(171, 40, 2),
(171, 41, 2),
(171, 47, 2),
(171, 48, 2),
(171, 49, 2),
(171, 50, 2),
(171, 51, 2),
(171, 61, 2),
(171, 64, 2),
(171, 68, 2),
(171, 67, 2),
(171, 70, 2),
(171, 65, 2),
(171, 66, 2),
(171, 73, 2),
(171, 71, 2),
(171, 4, 2),
(171, 5, 2),
(171, 6, 2),
(171, 7, 2),
(171, 8, 2),
(171, 9, 2),
(171, 10, 2),
(171, 11, 2),
(171, 12, 2),
(171, 52, 2),
(171, 63, 2),
(171, 55, 2),
(171, 56, 2),
(171, 31, 2),
(171, 32, 2),
(171, 33, 2),
(171, 34, 2),
(171, 35, 2),
(171, 36, 2),
(171, 37, 2),
(171, 58, 2),
(171, 59, 2),
(171, 60, 2),
(171, 19, 2),
(171, 20, 2),
(171, 21, 2),
(171, 22, 2),
(171, 23, 2),
(171, 24, 2),
(171, 25, 2),
(171, 26, 2),
(171, 27, 2),
(171, 28, 2),
(171, 29, 2),
(171, 62, 2),
(172, 3, 3),
(172, 1, 3),
(172, 38, 3),
(172, 39, 3),
(172, 40, 3),
(172, 41, 3),
(172, 47, 3),
(172, 48, 3),
(172, 49, 3),
(172, 50, 3),
(172, 51, 3),
(172, 61, 3),
(172, 64, 3),
(172, 68, 3),
(172, 67, 3),
(172, 70, 3),
(172, 65, 3),
(172, 66, 3),
(172, 73, 3),
(172, 71, 3),
(172, 4, 3),
(172, 5, 3),
(172, 6, 3),
(172, 7, 3),
(172, 8, 3),
(172, 9, 3),
(172, 10, 3),
(172, 11, 3),
(172, 12, 3),
(172, 52, 3),
(172, 63, 3),
(172, 55, 3),
(172, 56, 3),
(172, 31, 3),
(172, 32, 3),
(172, 33, 3),
(172, 34, 3),
(172, 35, 3),
(172, 36, 3),
(172, 37, 3),
(172, 58, 3),
(172, 59, 3),
(172, 60, 3),
(172, 19, 3),
(172, 20, 3),
(172, 21, 3),
(172, 22, 3),
(172, 23, 3),
(172, 24, 3),
(172, 25, 3),
(172, 26, 3),
(172, 27, 3),
(172, 28, 3),
(172, 29, 3),
(172, 62, 3),
(173, 3, 4),
(173, 1, 4),
(173, 38, 4),
(173, 39, 4),
(173, 40, 4),
(173, 41, 4),
(173, 47, 4),
(173, 48, 4),
(173, 49, 4),
(173, 50, 4),
(173, 51, 4),
(173, 61, 4),
(173, 64, 4),
(173, 68, 4),
(173, 67, 4),
(173, 70, 4),
(173, 65, 4),
(173, 66, 4),
(173, 73, 4),
(173, 71, 4),
(173, 4, 4),
(173, 5, 4),
(173, 6, 4),
(173, 7, 4),
(173, 8, 4),
(173, 9, 4),
(173, 10, 4),
(173, 11, 4),
(173, 12, 4),
(173, 52, 4),
(173, 63, 4),
(173, 55, 4),
(173, 56, 4),
(173, 31, 4),
(173, 32, 4),
(173, 33, 4),
(173, 34, 4),
(173, 35, 4),
(173, 36, 4),
(173, 37, 4),
(173, 58, 4),
(173, 59, 4),
(173, 60, 4),
(173, 19, 4),
(173, 20, 4),
(173, 21, 4),
(173, 22, 4),
(173, 23, 4),
(173, 24, 4),
(173, 25, 4),
(173, 26, 4),
(173, 27, 4),
(173, 28, 4),
(173, 29, 4),
(173, 62, 4),
(174, 4, 1),
(175, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_comment`
--

CREATE TABLE `nv4_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT 0,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `likes` mediumint(9) NOT NULL DEFAULT 0,
  `dislikes` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_department`
--

CREATE TABLE `nv4_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_contact_department`
--

INSERT INTO `nv4_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{\"viber\":\"myViber2\",\"skype\":\"mySkype2\",\"yahoo\":\"myYahoo2\"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 0, 2, 0),
(3, 'Cục Công nghệ thông tin', 'Cuc-Cong-nghe-thong-tin', '', '024.38695144', '', 'cuccntt@moet.gov.vn', '', '', '[]', '', '1/1/1/0', 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_reply`
--

CREATE TABLE `nv4_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `reply_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_send`
--

CREATE TABLE `nv4_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_supporter`
--

CREATE TABLE `nv4_vi_contact_supporter` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `departmentid` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_blocks`
--

CREATE TABLE `nv4_vi_freecontent_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_blocks`
--

INSERT INTO `nv4_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_rows`
--

CREATE TABLE `nv4_vi_freecontent_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT 0,
  `end_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_rows`
--

INSERT INTO `nv4_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1606359771, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1606359771, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1606359771, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1606359771, 0, 1),
(5, 1, 'Giải pháp bán hàng trực tuyến', '<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1606359771, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_area`
--

CREATE TABLE `nv4_vi_laws_area` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `parentid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `alias` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_area`
--

INSERT INTO `nv4_vi_laws_area` (`id`, `parentid`, `alias`, `title`, `introduction`, `keywords`, `addtime`, `weight`) VALUES
(1, 0, 'Giao-duc-1', 'Giáo dục', '', '', 1412265295, 1),
(2, 0, 'Phap-quy-2', 'Pháp quy', '', '', 1412265295, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_cat`
--

CREATE TABLE `nv4_vi_laws_cat` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `parentid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `alias` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT 5,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_cat`
--

INSERT INTO `nv4_vi_laws_cat` (`id`, `parentid`, `alias`, `title`, `introduction`, `keywords`, `newday`, `addtime`, `weight`) VALUES
(1, 0, 'Cong-van', 'Công văn', '', '', 5, 1412265295, 1),
(2, 0, 'Thong-tu', 'Thông tư', '', '', 5, 1412265295, 2),
(3, 0, 'Quyet-dinh', 'Quyết định', '', '', 5, 1412265295, 3),
(4, 0, 'Nghi-dinh', 'Nghị định', '', '', 5, 1412265295, 4),
(5, 0, 'Thong-bao', 'Thông báo', '', '', 5, 1412998152, 5),
(6, 0, 'Huong-dan', 'Hướng dẫn', '', '', 5, 1412998170, 6),
(7, 0, 'Bao-cao', 'Báo cáo', '', '', 5, 1412998182, 7),
(8, 0, 'Chi-thi', 'Chỉ thị', '', '', 5, 1412998193, 8),
(9, 0, 'Ke-hoach', 'Kế hoạch', '', '', 5, 1412998208, 9);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_config`
--

CREATE TABLE `nv4_vi_laws_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_config`
--

INSERT INTO `nv4_vi_laws_config` (`config_name`, `config_value`) VALUES
('nummain', '50'),
('numsub', '50'),
('typeview', '0'),
('down_in_home', '1'),
('detail_other', 'a:1:{i:0;s:3:\"cat\";}'),
('detail_hide_empty_field', '1'),
('detail_show_link_cat', '1'),
('detail_show_link_area', '1'),
('detail_show_link_subject', '1'),
('detail_show_link_signer', '1'),
('detail_pdf_quick_view', '1'),
('other_numlinks', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_examine`
--

CREATE TABLE `nv4_vi_laws_examine` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_examine`
--

INSERT INTO `nv4_vi_laws_examine` (`id`, `title`, `weight`) VALUES
(1, 'Ủy ban Pháp luật', 1),
(2, 'Ủy ban Đối ngoại', 2),
(3, 'Ủy ban Kinh tế', 3),
(4, 'Ủy ban Tư pháp', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_row`
--

CREATE TABLE `nv4_vi_laws_row` (
  `id` int(10) NOT NULL,
  `replacement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `relatement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `eid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sgid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `introtext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodytext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_download` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approval` tinyint(1) NOT NULL,
  `addtime` int(11) NOT NULL,
  `edittime` int(11) NOT NULL,
  `publtime` int(11) NOT NULL DEFAULT 0,
  `start_comm_time` int(11) DEFAULT NULL,
  `end_comm_time` int(11) DEFAULT NULL,
  `startvalid` int(11) NOT NULL DEFAULT 0,
  `exptime` int(11) NOT NULL DEFAULT 0,
  `view_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `download_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `admin_add` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `admin_edit` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_row`
--

INSERT INTO `nv4_vi_laws_row` (`id`, `replacement`, `relatement`, `title`, `alias`, `code`, `cid`, `sid`, `eid`, `sgid`, `note`, `introtext`, `bodytext`, `keywords`, `groups_view`, `groups_download`, `files`, `status`, `approval`, `addtime`, `edittime`, `publtime`, `start_comm_time`, `end_comm_time`, `startvalid`, `exptime`, `view_hits`, `download_hits`, `admin_add`, `admin_edit`) VALUES
(1, '', '', 'Tài liệu hướng dẫn xây dựng LMS đảm bảo kết nối với hệ thống TEMIS của Bộ GDĐT', 'Tai-lieu-huong-dan-xay-dung-LMS-dam-bao-ket-noi-voi-he-thong-TEMIS-cua-Bo-GDDT-1', '4756&#x002F;BGDĐT-CNTT', 1, 1, 0, 1, '', 'Kính gửi&#x3A;	- Các sở giáo dục và đào tạo;<br /> 	- Các trường đại học sư phạm, Học viện Quản lý giáo dục tham gia Chương trình ETEP.<br /><br />Thực hiện Kế hoạch số 41&#x002F;KH-BGDĐT ngày 22 tháng 01 năm 2020 của Bộ Giáo dục và Đào tạo về tổ chức bồi dưỡng giáo viên, cán bộ quản lý cơ sở giáo dục phổ thông, giảng viên sư phạm, giảng viên quản lý giáo dục chủ chốt năm 2020 &#40;trong khuôn khổ các dự án ODA&#41;, Bộ Giáo dục và Đào tạo ban hành Tài liệu hướng dẫn xây dựng LMS đảm bảo kết nối với hệ thống TEMIS của Bộ GDĐT &#40;phiên bản 1.0&#41; để các địa phương và các trường đại học sư phạm tham gia Chương trình ETEP nghiên cứu, triển khai hiệu quả hoạt động tập huấn, bồi dưỡng giáo viên qua mạng trong khuôn khổ Chương trình ETEP.<br /><br />Trong quá trình thực hiện, nếu có vướng mắc, đề nghị phản ánh về Bộ Giáo dục và Đào tạo &#40;thông qua Cục Công nghệ thông tin&#41; để được hướng dẫn và giải đáp.&#x002F;.<br /><br />Nội dung chi tiết xem tại file đính kèm&#x3A; &lt;&gt;', '', 'giáo dục,đào tạo,đại học,sư phạm,học viện,quản lý,tham gia,chương trình,kế hoạch,tổ chức,bồi dưỡng,giáo viên,cán bộ,cơ sở,phổ thông,giảng viên,khuôn khổ,dự án,ban hành,tài liệu,hướng dẫn', '6', '6', '', 1, 0, 1607508152, 0, 1607446800, 0, 0, 0, 0, 0, 0, 1, 0),
(2, '', '', 'Hướng dẫn nhiệm vụ Công nghệ thông tin năm học 2020-2021', 'Huong-dan-nhiem-vu-Cong-nghe-thong-tin-nam-hoc-2020-2021-2', '4003&#x002F;BGDĐT-CNTT', 1, 1, 0, 1, '', 'Kính gửi&#x3A;    Các sở giáo dục và đào tạo<br /> <br />Thực hiện Quyết định số 749&#x002F;QĐ-TTg ngày 03&#x002F;6&#x002F;2020 của Thủ tướng Chính phủ phê duyệt Chương trình Chuyển đổi số quốc gia đến năm 2025, định hướng đến năm 2030; Quyết định số 117&#x002F;QĐ-TTg ngày 25&#x002F;01&#x002F;2017 của Thủ tướng Chính phủ Phê duyệt Đề án “Tăng cường ứng dụng công nghệ thông tin trong quản lý và hỗ trợ các hoạt động dạy – học, nghiên cứu khoa học góp phần nâng cao chất lượng giáo dục và đào tạo giai đoạn 2016-2020 định hướng đến năm 2025; Chỉ thị số 666&#x002F;CT-BGDĐT ngày 24&#x002F;8&#x002F;2020 của Bộ trưởng Bộ Giáo dục và Đào tạo về nhiệm vụ và giải pháp năm học 2020 – 2021 của ngành Giáo dục, Bộ Giáo dục và Đào tạo &#40;GDĐT&#41; hướng dẫn thực hiện nhiệm vụ công nghệ thông tin &#40;CNTT&#41; năm học 2020 - 2021 như sau&#x3A;<br /><br />I. MỘT SỐ NHIỆM VỤ TRỌNG TÂM<br />1. Triển khai có hiệu quả Chương trình chuyển đổi số quốc gia trong ngành Giáo dục; triển khai các nhiệm vụ, giải pháp trọng tâm phát triển Chính phủ điện tử theo Nghị quyết số 17&#x002F;NQ-CP ngày 07&#x002F;03&#x002F;2019 của Chính phủ; đẩy mạnh ứng dụng công nghệ thông tin trong các hoạt động giáo dục và đào tạo theo Quyết định số 117&#x002F;QĐ-TTg ngày 25&#x002F;01&#x002F;2017 của Thủ tướng Chính phủ phê duyệt Đề án &quot;Tăng cường ứng dụng công nghệ thông tin trong quản lý và hỗ trợ các hoạt động dạy - học, nghiên cứu khoa học góp phần nâng cao chất lượng giáo dục và đào tạo giai đoạn 2016-2020, định hướng đến năm 2025&quot;. <br /><br />2. Tiếp tục xây dựng, hoàn thiện và khai thác hiệu quả cơ sở dữ liệu ngành về giáo dục mầm non, giáo dục phổ thông, giáo dục đại học và giáo dục thường xuyên; triển khai kết nối liên thông dữ liệu, tích hợp các hệ thống thông tin vào cơ sở dữ liệu ngành.<br /><br />3. Tăng cường ứng dụng CNTT trong đổi mới nội dung, phương pháp dạy, học, thi và kiểm tra đánh giá, quản lý giáo dục, quản trị nhà trường; áp dụng dạy, học trực tuyến; phát triển kho học liệu số toàn ngành, ngân hàng câu hỏi trực tuyến dùng chung, kho bài giảng e-learning kết nối với Hệ tri thức Việt số hóa.<br /><br />II. MỘT SỐ NHIỆM VỤ CỤ THỂ<br /><br />1. Ứng dụng CNTT trong các hoạt động điều hành và quản lý giáo dục<br />a&#41;    Tiếp tục triển khai có hiệu quả cơ sở dữ liệu ngành giáo dục &#40;tại địa chỉ csdl.moet.gov.vn&#41; theo yêu cầu của Thông tư số 26&#x002F;2019&#x002F;TT-BGDĐT ngày 30&#x002F;12&#x002F;2019 Quy định về quản lý, vận hành và sử dụng Hệ thống cơ sở dữ liệu ngành về giáo dục mầm non, giáo dục phổ thông, giáo dục thường xuyên và các văn bản hướng dẫn chỉ đạo khác của Bộ; đảm bảo 100&#x25; các cơ sở giáo dục báo cáo dữ liệu đầy đủ, chính xác và đúng thời hạn theo yêu cầu của Bộ GDĐT; trong trường hợp các sở GDĐT, phòng GDĐT xây dựng cơ sở dữ liệu về GDĐT phục vụ nhu cầu quản lý giáo dục ở địa phương, phải đáp ứng chuẩn dữ liệu, kết nối với cơ sở dữ liệu của ngành và tuân thủ các quy định của pháp luật về sở hữu dữ liệu, bảo vệ an toàn thông tin cá nhân &#40;trường học, cơ quan quản lý giáo dục ở địa phương phải quản lý và chịu trách nhiệm về dữ liệu số hóa trong phạm vi quản lý theo quy định&#41;.<br />b&#41;    Đẩy mạnh triển khai phần mềm quản lý trường học tới các cơ sở giáo dục mầm non, phổ thông và giáo dục thường xuyên; phần mềm quản lý trường học phải đáp ứng quy định kỹ thuật về dữ liệu của Bộ  và kết nối trao đổi được dữ liệu với cơ sở dữ liệu ngành giáo dục &#40;do Bộ GDĐT quản lý&#41;; đẩy mạnh sử dụng sổ điểm điện tử, học bạ điện tử &#40;có thể dùng sổ in ra từ phần mềm, đáp ứng đúng-đủ nội dung, có xác nhận của người có thẩm quyền hoặc gắn chữ ký điện tử&#41;; triển khai ứng dụng CNTT kết nối, tương tác, trao đổi thông tin giữa phụ huynh với nhà trường, tăng cường áp dụng các giải pháp trao đổi thông tin miễn phí như tin nhắn OTT, email, ứng dụng trên thiết bị di động và website giáo dục.<br />c&#41;    Đẩy mạnh triển khai dịch vụ công trực tuyến trong giáo dục, ưu tiên triển khai dịch vụ công trực tuyến về xét tuyển học sinh đầu cấp mức độ 3, mức độ 4; thực hiện thanh toán học phí không dùng tiền mặt; tiếp tục sử dụng có hiệu quả hệ thống quản lý hành chính điện tử &#40;e-office&#41;, liên thông trao đổi văn bản điện tử giữa tất cả các sở GDĐT với Bộ GDĐT.<br />d&#41;    Tăng cường ứng dụng phương thức họp trực tuyến để tổ chức họp, hội nghị, hội thảo qua mạng và tổ chức sinh hoạt chuyên môn nói chung và sinh hoạt chuyên môn thực hiện Chương trình Giáo dục phổ thông 2018 nói riêng &#40;đặc biệt đối với hình thức tổ chức sinh hoạt chuyên môn theo cụm trường, huyện hay tỉnh&#x002F;TP&#41;; tiếp tục triển khai hiệu quả hệ thống hội nghị trực tuyến phục vụ kết nối giữa các sở GDĐT với Bộ GDĐT; khai thác sử dụng hiệu quả hệ thống họp qua mạng do Bộ GDĐT cung cấp miễn phí tại địa chỉ http&#x3A;&#x002F;&#x002F;hop.moet.edu.vn.<br />đ&#41; Triển khai có hiệu quả Cổng thông tin điện tử, thư điện tử theo quy định tại Thông tư số 53&#x002F;2012&#x002F;TT-BGDĐT ngày 20&#x002F;12&#x002F;2012 của Bộ GDĐT; triển khai hệ thống thông tin quản lý phổ cập giáo dục và chống mù chữ theo Thông tư số 35&#x002F;2017&#x002F;TT-BGDĐT ngày 28&#x002F;12&#x002F;2017 của Bộ GDĐT &#40;địa chỉ truy cập&#x3A; http&#x3A;&#x002F;&#x002F;pcgd.moet.gov.vn&#41;.<br />e&#41;    Khai thác hiệu quả các hệ thống thông tin toàn ngành gồm&#x3A; <br />-    Cổng thông tin điện tử của của Bộ tại địa chỉ https&#x3A;&#x002F;&#x002F;moet.gov.vn.<br />-    Cổng thông tin thi và tuyển sinh của Bộ tại địa chỉ https&#x3A;&#x002F;&#x002F;thituyensinh.vn.<br />-    Kho bài giảng e-leanring tại địa chỉ https&#x3A;&#x002F;&#x002F;elearning.moet.edu.vn.<br />-    Phân hệ về giáo dục và đào tạo trên Hệ tri thức Việt số hóa tại địa chỉ igiaoduc.vn. <br /><br />2. Ứng dụng CNTT hỗ trợ đổi mới nội dung, phương pháp dạy, học, thi và kiểm tra đánh giá<br />a&#41;    Đẩy mạnh ứng dụng CNTT hỗ trợ đổi mới nội dung, phương pháp dạy, học, thi và kiểm tra đánh giá trong tất cả các môn học; triển khai phương thức dạy học trực tuyến &#40;tăng cường đảm bảo điều kiện về cơ sở vật chất, đường truyền Internet, phần mềm, học liệu và tập huấn giáo viên, học sinh áp dụng dạy học trực tuyến hiệu quả&#41;; triển khai các giải pháp ứng dụng CNTT trong kiểm tra, đánh giá &#40;xây dựng ngân hàng câu hỏi, phần mềm khảo thí và các điều kiện triển khai&#41;.<br />b&#41;    Chỉ đạo các nhà trường, giáo viên tích cực xây dựng học liệu dạy học trực tuyến, chú trọng xây dựng bài giảng e-learning, ngân hàng câu hỏi trực tuyến, tư liệu 3D, thí nghiệm ảo, phần mềm mô phỏng, sách điện tử tương tác, … đóng góp vào kho bài giảng e-learning, ngân hàng câu hỏi trắc nghiệm trực tuyến, kho học liệu số của ngành và Hệ tri thức Việt số hóa &#40;tại địa chỉ igiaoduc.vn&#41;. <br />c&#41;    Tiếp tục triển khai mô hình ứng dụng CNTT trong các cơ sở giáo dục theo hướng dẫn tại văn bản số 5807&#x002F;BGDĐT-CNTT ngày 21&#x002F;12&#x002F;2018 của Bộ GDĐT; Triển khai giải pháp trường học điện tử, lớp học điện tử &#40;các giải pháp giáo dục thông minh&#41; ở những nơi có điều kiện, đảm bảo tính hiệu quả.<br />d&#41;    Tăng cường vai trò của các tổ chuyên môn trong nhà trường giúp hiệu trưởng đánh giá nội dung học liệu số trước khi đưa vào sử dụng; rà soát, đánh giá, hoàn thiện các mô hình, giải pháp, phương pháp ứng dụng công nghệ thông tin đổi mới nội dung, phương pháp dạy học, đặc biệt là dạy học trực tuyến đảm bảo hiệu quả, phù hợp điều kiện ở từng địa phương.<br />e&#41;    Lựa chọn các giải pháp phần mềm dạy học trực tuyến &#40;dạy học trực tuyến đồng bộ, dạy học trực tuyến không đồng bộ&#41;, phần mềm kiểm tra đánh giá, phần mềm kho học liệu số, phần mềm thư viện số theo hướng tổng thể, đồng bộ, kết nối trao đổi dữ liệu với phần mềm quản lý trường học theo mã định danh, phục vụ có hiệu quả việc tổ chức và quản lý được các hoạt động dạy học trực tuyến.<br /><br />3. Triển khai hạ tầng và thiết bị CNTT<br />a&#41;    Rà soát và có kế hoạch mua sắm bổ sung, duy trì, nâng cấp trang thiết bị CNTT đáp ứng yêu cầu triển khai ứng dụng CNTT, dạy môn Tin học và tổ chức dạy học trực tuyến; đẩy mạnh kết nối cáp quang Internet tới các cơ sở giáo dục.<br />b&#41;    Triển khai các biện pháp đảm bảo an toàn an ninh thông tin đối với các hệ thống CNTT &#40;phần cứng, phần mềm, wesbite...&#41;. Thường xuyên rà soát, khắc phục các nguy cơ mất an toàn, an ninh thông tin. Đẩy mạnh tuyên truyền tới toàn thể cán bộ, giáo viên và học sinh kỹ năng nhận biết, phòng tránh các nguy cơ mất an toàn thông tin khi sử dụng các phần mềm trực tuyến và thiết bị cá nhân như điện thoại thông minh, máy tính, máy tính bảng, máy tính cá nhân.<br /><br />4. Bồi dưỡng kỹ năng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục<br />a&#41;    Rà soát, và liên tục bồi dưỡng kỹ năng ứng dụng CNTT cho giáo viên, cán bộ quản lý giáo dục và học sinh. Nội dung bồi dưỡng gắn liền với nhu cầu thực tiễn về triển khai ứng dụng CNTT trong nhà trường, bám sát một số nội dung như sau&#x3A;<br />-    Kỹ năng sử dụng CNTT quy định tại Thông tư số 03&#x002F;2014&#x002F;TT-BTTTT ngày 11&#x002F;3&#x002F;2014 của Bộ Thông tin và Truyền thông; nâng cao nhận thức và kỹ năng về an toàn thông tin.<br />-    Kỹ năng khai thác sử dụng có hiệu quả các phần mềm quản lý trong nhà trường; Kỹ năng quản lý, khai thác sử dụng có hiệu quả cơ sở dữ liệu ngành.<br />-    Kỹ năng dạy-học trực tuyến&#x3A; Kỹ năng xây dựng học liệu, khai thác các nguồn học liệu, kỹ năng tìm kiếm thông tin trên Internet; kỹ năng sử dụng các phần mềm trình chiếu, phần mềm soạn bài giảng e-learning, câu hỏi trắc nghiệm trực tuyến, phần mềm mô phỏng, thí nghiệm ảo, phần mềm dạy học để đổi mới nội dung, phương pháp dạy học trên lớp học; kỹ năng tham gia các hoạt động dạy học trực tuyến đối với học sinh.<br />b&#41;    Đẩy mạnh ứng dụng CNTT tập huấn giáo viên qua mạng theo hướng dẫn của Thông tư số 21&#x002F;2017&#x002F;TT-BGDĐT ngày 06&#x002F;9&#x002F;2017 về việc Quy định ứng dụng CNTT trong hoạt động bồi dưỡng, tập huấn qua mạng Internet cho giáo viên, nhân viên và cán bộ quản lý giáo dục; báo cáo kịp thời kết quả tập huấn giáo viên về Hệ thống thông tin quản lý quá trình đào tạo, bồi dưỡng giáo viên &#40;TEMIS&#41; theo hướng dẫn của Bộ.<br /><br />III. MỘT SỐ GIẢI PHÁP CƠ BẢN<br /><br />1. Tiếp tục kiện toàn tổ chức bộ phận phụ trách CNTT&#x3A;<br />a&#41;    Đối với sở GDĐT&#x3A; Phân công lãnh đạo Sở phụ trách, lãnh đạo cấp phòng và chuyên viên làm đầu mối theo dõi triển khai nhiệm vụ CNTT. Đối với những sở GDĐT không thành lập phòng CNTT đề nghị ghép nhiệm vụ CNTT vào một phòng chuyên môn phù hợp.<br />b&#41;    Đối với phòng GDĐT&#x3A; Phân công lãnh đạo Phòng phụ trách và chuyên viên làm đầu mối theo dõi, triển khai nhiệm vụ CNTT.<br />c&#41; Đối với cơ sở giáo dục&#x3A; Phân công một lãnh đạo nhà trường phụ trách và viên chức CNTT làm đầu mối triển khai nhiệm vụ CNTT.<br /><br />2. Các cơ quan, đơn vị chủ trì quản lý hệ thống thông tin phải rà soát và hoàn thiện quy chế quản lý, duy trì và khai thác sử dụng các hệ thống CNTT; phân công cụ thể trách nhiệm về quản lý, sử dụng hệ thống &#40;phân công các phòng&#x002F;bộ phận chuyên môn chịu trách nhiệm rà soát, đối chiếu và chuẩn hóa đảm báo tính chính xác của các dữ liệu thành phần trên cơ sở dữ liệu ngành&#41;; triển khai ứng dụng CNTT phải đi đôi với việc đảm bảo an toàn, an ninh thông tin; có các hình thức khen thưởng đơn vị, cá nhân làm tốt; có các biện pháp, chế tài đối với các đơn vị chưa hoàn thành mục tiêu, nhiệm vụ đề ra.<br /><br />3. Đẩy mạnh công tác thông tin, tuyên truyền nâng nhằm cao nhận thức cho cán bộ quản lý và giáo viên về vai trò của ứng dụng CNTT trong các hoạt động GDĐT và các kết quả ứng dụng CNTT đã đạt được.<br /><br />4. Tăng cường huy động nguồn lực xã hội hóa; phối hợp có hiệu quả việc đầu tư với thuê dịch vụ công nghệ thông tin.<br /><br />IV. TỔ CHỨC THỰC HIỆN<br />Trên cơ sở những nội dung của hướng dẫn này, Giám đốc sở GDĐT chỉ đạo&#x3A;<br /><br />1.    Xây dựng kế hoạch, hướng dẫn các phòng GDĐT và các đơn vị trực thuộc triển khai nhiệm vụ CNTT năm học 2020-2021. Văn bản chỉ đạo, hướng dẫn triển khai nhiệm vụ CNTT của Sở đề nghị gửi về Bộ GDĐT &#40;qua Cục CNTT để tổng hợp&#41; trước ngày 20&#x002F;10&#x002F;2020. <br /><br />2.    Tổ chức sơ kết đánh giá tình hình triển khai nhiệm vụ CNTT sau khi kết thúc học kỳ 1 và gửi về Bộ GDĐT &#40;qua Cục CNTT để tổng hợp&#41; trước ngày 30&#x002F;01&#x002F;2021.<br /><br />3.    Tổ chức đánh giá, tổng kết triển khai nhiệm vụ CNTT năm học 2020-2021; lập báo cáo đánh giá và tự chấm điểm tiêu chi thi đua năm học và gửi Bộ GDĐT &#40;qua Cục CNTT để tổng hợp&#41; trước ngày 15&#x002F;6&#x002F;2021.<br />Trong quá trình thực hiện, nếu có khó khăn, vướng mắc cần báo cáo kịp thời về Bộ GDĐT &#40;qua Cục CNTT&#41; để hỗ trợ, tư vấn triển khai&#x3A; điện thoại&#x3A; 024.38695144, email&#x3A; CucCNTT@moet.gov.vn &#40;gửi kèm theo Phụ lục danh sách các văn bản của Trung ương và Bộ GDĐT liên quan đến triển khai CNTT trong giáo dục để Quý Sở nghiên cứu và quán triệt thực hiện&#41;.&#x002F;.', '', 'giáo dục,đào tạo,thực hiện,quyết định,thủ tướng,chương trình,quốc gia,định hướng,tăng cường,ứng dụng,công nghệ,thông tin,quản lý,hỗ trợ,hoạt động,nghiên cứu,khoa học,góp phần,nâng cao,giai đoạn,chỉ thị', '6', '6', '', 1, 0, 1607565795, 0, 1607533200, 0, 0, 0, 0, 0, 0, 1, 0),
(3, '', '', 'Thông tư Quy định về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở giáo dục mầm non, giáo dục phổ thông và giáo dục thường xuyên', 'Thong-tu-Quy-dinh-ve-to-chuc-hoat-dong-su-dung-thu-dien-tu-va-cong-thong-tin-dien-tu-tai-so-giao-duc-va-dao-tao-phong-giao-duc-va-dao-tao-va-cac-co-so-giao-duc-mam-non-giao-duc-pho-thong-va-giao-duc-thuong-xuyen-3', '37&#x002F;2020&#x002F;TT-BGDĐT', 1, 1, 0, 1, '', 'THÔNG TƯ<br />Quy định về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở giáo dục mầm non, giáo dục phổ thông và giáo dục thường xuyên<br /><br />Căn cứ Luật Giao dịch điện tử ngày 29&#x002F;11&#x002F;2005;<br />Căn cứ Luật Công nghệ thông tin ngày 29&#x002F;6&#x002F;2006;<br />Căn cứ Nghị định số 69&#x002F;2017&#x002F;NĐ-CP ngày 25&#x002F;5&#x002F;2017 của Chính phủ quy định chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức của Bộ Giáo dục và  Đào tạo;<br />Căn cứ Nghị định số 64&#x002F;2007&#x002F;NĐ-CP ngày 10&#x002F;4&#x002F;2007 của Chính phủ về Ứng dụng công nghệ thông tin trong hoạt động của cơ quan nhà nước;<br />Căn cứ Nghị định số 43&#x002F;2011&#x002F;NĐ-CP ngày 13&#x002F;6&#x002F;2011 của Chính phủ về việc cung cấp thông tin và dịch vụ công trực tuyến trên trang thông tin điện tử hoặc cổng thông tin điện tử của cơ quan nhà nước;<br />Căn cứ Nghị định số 72&#x002F;2013&#x002F;NĐ-CP ngày 15&#x002F;7&#x002F;2013 của Chính phủ về quản lý, cung cấp, sử dụng dịch vụ Internet và thông tin trên mạng; Nghị định số 27&#x002F;2018&#x002F;NĐ-CP sửa đổi, bổ sung một số điều của Nghị định số 72&#x002F;2013&#x002F;NĐ-CP ngày 15&#x002F;7&#x002F;2013 của Chính phủ về quản lý, cung cấp, sử dụng dịch vụ Internet và thông tin trên mạng;<br />Căn cứ Chỉ thị số 34&#x002F;2008&#x002F;CT-TTg ngày 03&#x002F;12&#x002F;2008 về việc tăng cường sử dụng hệ thống thư điện tử trong hoạt động của cơ quan nhà nước;<br />Theo đề nghị của Cục trưởng Cục công nghệ thông tin,<br />Bộ trưởng Bộ Giáo dục và Đào tạo ban hành Thông tư quy định về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở giáo dục mầm non, giáo dục phổ thông và giáo dục thường xuyên.<br /> <br />Chương I<br />QUY ĐỊNH CHUNG<br />Điều 1. Phạm vi điều chỉnh và đối tượng áp dụng<br />1. Thông tư này quy định về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử hoặc trang thông tin điện tử &#40;sau đây gọi chung là cổng thông tin điện tử&#41; tại các sở giáo dục và đào tạo, Sở Giáo dục - Khoa học và Công nghệ Bạc Liêu &#40;sau đây gọi chung là sở giáo dục và đào tạo&#41;, phòng giáo dục và đào tạo và các cơ sở giáo dục mầm non, giáo dục phổ thông và giáo dục thường xuyên.<br /><br />2. Thông tư này áp dụng đối với các sở giáo dục và đào tạo, phòng giáo dục và đào tạo &#40;sau đây gọi chung là cơ quan quản lý giáo dục&#41; và các nhà trẻ, nhóm trẻ độc lập, trường mẫu giáo, lớp mẫu giáo độc lập, trường mầm non, lớp mầm non độc lập; trường tiểu học, trường trung học cơ sở, trường trung học phổ thông, trường phổ thông có nhiều cấp học, Trung tâm giáo dục thường xuyên, Trung tâm giáo dục nghề nghiệp - giáo dục thường xuyên, Trung tâm học tập cộng đồng, Trung tâm khác thực hiện nhiệm vụ giáo dục thường xuyên &#40;sau đây gọi chung là cơ sở giáo dục&#41; và các tổ chức, cá nhân có liên quan.<br /><br />Điều 2. Giải thích từ ngữ<br />Trong văn bản này các từ ngữ dưới đây được hiểu như sau&#x3A;<br />1. Cổng thông tin điện tử là điểm truy cập duy nhất của cơ quan quản lý giáo dục, cơ sở giáo dục trên môi trường mạng, liên kết, tích hợp các kênh thông tin, các dịch vụ và các ứng dụng mà qua đó người dùng có thể khai thác, sử dụng.<br />2. Đơn vị chủ quản hệ thống thư điện tử, cổng thông tin điện tử là cơ quan quản lý giáo dục, cơ sở giáo dục quy định tại khoản 2 Điều 1 Thông tư này &#40;sau đây gọi tắt là đơn vị chủ quản&#41;.<br />3. Thủ trưởng đơn vị là giám đốc sở giáo dục và đào tạo, trưởng phòng giáo dục và đào tạo, hiệu trưởng hoặc người đứng đầu các cơ sở giáo dục.<br />4. Tên miền của cơ quan quản lý giáo dục và cơ sở giáo dục là tên đăng ký sở hữu của cơ quan, đơn vị đó trên mạng Internet; tên miền được dùng để tạo lập, truy cập thư điện tử và cổng thông tin điện tử theo quy định hiện hành.<br />5. Nhóm thư điện tử &#40;email group&#41; là các địa chỉ thư điện tử được tập hợp dưới một tên thư điện tử chung ở đó các địa chỉ thành viên sẽ nhận được thông tin gửi tới nhóm.<br /><br />Điều 3. Yêu cầu chung của thư điện tử và cổng thông tin điện tử<br />1. Việc triển khai thư điện tử và cổng thông tin điện tử phải đáp ứng các yêu cầu sau&#x3A;<br />a&#41; Tuân thủ các tiêu chuẩn kỹ thuật về ứng dụng công nghệ thông tin quy định tại Thông tư số 39&#x002F;2017&#x002F;TT-BTTTT ngày 15&#x002F;12&#x002F;2017 của Bộ Thông tin và Truyền thông ban hành danh mục tiêu chuẩn kỹ thuật về ứng dụng công nghệ thông tin trong cơ quan nhà nước;<br />b&#41; Tên miền truy cập hệ thống thư điện tử, cổng thông tin điện tử của cơ quan quản lý giáo dục và cơ sở giáo dục thực hiện theo quy định hiện hành; sử dụng thêm tên miền cấp 2 có dạng “edu.vn” phù hợp với điều kiện cụ thể;<br />c&#41; Cơ quan quản lý giáo dục cung cấp cổng thông tin điện tử thành viên cho các cơ sở giáo dục trực thuộc phù hợp với điều kiện thực tế.<br />2. Phương thức triển khai hệ thống thư điện tử, cổng thông tin điện tử <br />a&#41; Tự đầu tư triển khai hệ thống;<br />b&#41; Thuê dịch vụ công nghệ thông tin;<br />c&#41; Sử dụng dịch vụ công nghệ thông tin đã được cung cấp.<br />3. Yêu cầu của công tác quản lý thư điện tử và cổng thông tin điện tử<br />a&#41; Có quy chế quản lý, vận hành, sử dụng thư điện tử và cổng thông tin điện tử;<br />b&#41; Có kế hoạch nâng cấp, bảo trì đáp ứng yêu cầu quản lý, an toàn thông tin và nhu cầu sử dụng.<br />4. Thủ trưởng đơn vị đảm bảo duy trì, vận hành ổn định hệ thống thư điện tử và cổng thông tin điện tử, an toàn thông tin, đảm bảo an toàn thông tin cá nhân; chịu trách nhiệm về thông tin đăng tải trên cổng thông tin điện tử.<br /> <br />Chương II<br />THƯ ĐIỆN TỬ<br />Điều 4. Cung cấp, quản lý, vận hành, sử dụng thư điện tử<br />1. Thư điện tử là một phương thức dùng để trao đổi thông tin điện tử phục vụ công việc trong các cơ quan quản lý giáo dục và cơ sở giáo dục.  <br />2. Cơ quan quản lý giáo dục, cơ sở giáo dục phải công khai thư điện tử &#40;bao gồm công khai trên cổng thông tin điện tử&#41; để tiếp nhận thông tin trao đổi, phản ánh của tổ chức, cá nhân trong xã hội.<br />3. Thủ trưởng đơn vị có trách nhiệm cung cấp miễn phí thư điện tử cho công chức, viên chức, người lao động và các bộ phận trong đơn vị mình quản lý; cung cấp cho các đơn vị thuộc và trực thuộc phù hợp với điều kiện và yêu cầu thực tế.<br />4. Thủ trưởng đơn vị ban hành quy chế quản lý, vận hành, sử dụng thư điện tử gồm tối thiểu các nội dung sau&#x3A;<br />a&#41; Quy định về cung cấp, quản trị thư điện tử;<br />b&#41; Quy định về việc sử dụng thư điện tử trong giao dịch công tác;<br />c&#41; Quy trình xử lý công việc thông qua hệ thống thư điện tử &#40;gồm cả kiểm tra, xử lý thông tin hàng ngày&#41;;<br />d&#41; Quy định trách nhiệm của các đơn vị, cá nhân trong việc thiết lập, duy trì, sử dụng, bảo mật tài khoản thư điện tử cá nhân và tài khoản thư điện tử đơn vị. <br />5. Thủ trưởng đơn vị phân công cán bộ đầu mối phụ trách triển khai thư điện tử.<br /><br />Điều 5. Nhóm thư điện tử<br />1. Bộ Giáo dục và Đào tạo thiết lập nhóm thư điện tử dùng để gửi thông tin đến các sở giáo dục và đào tạo, gồm&#x3A; <br />a&#41; Nhóm thư điện tử của giám đốc các sở giáo dục và đào tạo&#x3A;<br />Giamdocso@moet.gov.vn.<br />b&#41; Nhóm thư điện tử của văn thư các sở giáo dục và đào tạo&#x3A;<br />Vanthuso@moet.gov.vn.<br />2. Sở giáo dục và đào tạo có trách nhiệm đăng ký với Bộ Giáo dục và Đào tạo &#40;qua thư điện tử của Cục Công nghệ thông tin CucCNTT@moet.gov.vn&#41; để cập nhật địa chỉ thư điện tử của giám đốc và bộ phận văn thư sở giáo dục và đào tạo vào các nhóm thư điện tử quy định tại Khoản 1 Điều này.<br />3. Các cơ quan quản lý giáo dục thiết lập các nhóm thư điện tử dùng chung phục vụ công việc phù hợp điều kiện và nhu cầu thực tế.<br /> <br />Chương III<br />CỔNG THÔNG TIN ĐIỆN TỬ<br />Điều 6. Vai trò của cổng thông tin điện tử<br />1. Cổng thông tin điện tử của cơ quan quản lý giáo dục, cơ sở giáo dục là cổng tích hợp thông tin giáo dục và tích hợp thông tin dịch vụ công trực tuyến, dịch vụ trực tuyến thuộc phạm vi quản lý.<br />2. Thông tin đăng tải trên cổng thông tin điện tử của cơ quan quản lý giáo dục, cơ sở giáo dục là thông tin chính thống, đảm bảo đầy đủ, chính xác, kịp thời trên môi trường mạng.<br /><br />Điều 7. Nguyên tắc cung cấp thông tin<br />1. Thông tin cung cấp trên cổng thông tin điện tử của cơ quan quản lý giáo dục, cơ sở giáo dục phải đúng với quan điểm, chủ trương, đường lối của Đảng, chính sách, pháp luật của Nhà nước.<br />2. Thông tin cung cấp trên cổng thông tin điện tử của cơ quan quản lý giáo dục, cơ sở giáo dục phải tuân thủ các quy định của pháp luật về an toàn, an ninh mạng, bảo vệ bí mật nhà nước, sở hữu trí tuệ và quản lý thông tin trên Internet.<br />3. Việc đăng tải, trích dẫn, sử dụng lại thông tin trên cổng thông tin điện tử của cơ quan quản lý giáo dục, cơ sở giáo dục phải ghi rõ thông tin về tác giả, nguồn thông tin và tuân theo các quy định hiện hành của nhà nước về việc khai thác thông tin.<br /><br />Điều 8. Thông tin chủ yếu trên cổng thông tin điện tử của cơ quan quản lý giáo dục<br />1. Thông tin giới thiệu&#x3A;<br />a&#41; Thông tin về sơ đồ, cơ cấu tổ chức, chức năng, nhiệm vụ, quyền hạn của cơ quan, đơn vị trực thuộc; họ và tên, chức vụ, điện thoại, địa chỉ thư điện tử và nhiệm vụ đảm nhiệm của lãnh đạo cơ quan quản lý giáo dục; <br />b&#41; Thông tin liên hệ, trao đổi, giải đáp thắc mắc của cơ quan quản lý giáo dục với người dân.<br />2. Tin tức, sự kiện về hoạt động, các vấn đề liên quan thuộc lĩnh vực quản lý của cơ quan quản lý giáo dục.<br />3. Văn bản quy định liên quan đến hoạt động của cơ quan quản lý giáo dục.<br />4. Thông tin về thủ tục hành chính và dịch vụ công trực tuyến gồm&#x3A;<br />a&#41; Thông tin về cung cấp dịch vụ công trực tuyến thực hiện theo Nghị định số 43&#x002F;2011&#x002F;NĐ-CP ngày 13&#x002F;6&#x002F;2011 của Chính phủ quy định về việc cung cấp thông tin và dịch vụ công trực tuyến trên trang thông tin hoặc cổng thông tin điện tử của cơ quan nhà nước và Thông tư số 32&#x002F;2017&#x002F;TT-BTTTT ngày 15&#x002F;11&#x002F;2017 của Bộ Thông tin và Truyền thông quy định về việc cung cấp dịch vụ công trực tuyến và đảm bảo khả năng truy cập thuận tiện đối với trang thông tin điện tử hoặc cổng thông tin điện tử của cơ quan nhà nước;<br />b&#41; Danh mục các dịch vụ trực tuyến, dịch vụ công trực tuyến;<br />c&#41; Quy trình, thủ tục, hồ sơ, nơi tiếp nhận, tên và thông tin giao dịch của người trực tiếp xử lý hồ sơ, thời hạn giải quyết, phí và lệ phí &#40;nếu có&#41;; thủ tục dịch vụ trực tuyến thi, xét tuyển đầu cấp học &#40;trong đó gồm đăng ký và điền mẫu đơn trực tuyến, thông báo kết quả trực tuyến&#41;.<br />5. Thông tin tuyên truyền, phổ biến, hướng dẫn thực hiện pháp luật, chế độ, chính sách.<br />6. Mục lấy ý kiến góp ý của tổ chức, cá nhân gồm&#x3A; Danh sách các vấn đề cần xin ý kiến; nội dung vấn đề xin ý kiến; địa chỉ, thư điện tử tiếp nhận ý kiến và thời hạn tiếp nhận ý kiến.<br />7. Các dữ liệu đặc tả hỗ trợ tìm kiếm, trao đổi, chia sẻ thông tin, đảm bảo khả năng liên kết, tích hợp giữa các hệ thống, đảm bảo sự tương thích về công nghệ.<br />8. Niên giám thống kê ít nhất 5 năm gần nhất gồm số liệu thống kê về trường, lớp, học sinh, cơ sở vật chất của các cơ sở giáo dục trong phạm vi quản lý.<br />9. Trang tài nguyên số &#40;gồm kho học liệu số, bài giảng eLearning, sách điện tử, phần mềm&#41; chia sẻ dùng chung cho cán bộ quản lý giáo dục, giáo viên, học sinh trên địa bàn; trang tài nguyên có đường kết nối thư viện tài nguyên của cơ quan quản lý giáo dục đến thư viện tài nguyên của Bộ Giáo dục và Đào tạo.  <br />10. Thông tin kiểm định chất lượng, phổ cập giáo dục xóa mù chữ.<br />11. Thông tin tra cứu điểm, kết quả các kì thi &#40;gồm thi học sinh giỏi, thi nghề phổ thông, thi tốt nghiệp các cấp học&#41;.<br />12. Thông tin tra cứu về công tác quản lý cấp phát văn bằng, chứng chỉ.<br />13. Thông tin về dự án, hạng mục đầu tư, đấu thầu, mua sắm công.<br />14. Thông tin về hệ thống họp trực tuyến &#40;web conference&#41; của Bộ Giáo dục và Đào tạo. Cơ quan quản lý giáo dục có trách nhiệm liên hệ với Bộ Giáo dục và Đào tạo &#40;qua Cục Công nghệ thông tin&#41; để được hướng dẫn, hỗ trợ, triển khai.<br />15. Thông tin giới thiệu, thông tin liên hệ và thông tin dịch vụ công trực tuyến liên quan đến người nước ngoài theo quy định tại Điều này của Thông tư này bằng tiếng Anh để tham khảo.<br />16. Thông tin liên quan đến các trung tâm ngoại ngữ, tin học theo quy định tại Khoản 3 Điều 27 Quy chế tổ chức và hoạt động của trung tâm ngoại ngữ, tin học trên Cổng thông tin điện tử của sở giáo dục và đào tạo ban hành kèm theo Thông tư số 21&#x002F;2018&#x002F;TT-BGDĐT ngày 24&#x002F;8&#x002F;2018 của Bộ Giáo dục và Đào tạo.<br /><br />Điều 9. Thông tin chủ yếu trên cổng thông tin điện tử của cơ sở giáo dục<br />1. Thông tin giới thiệu<br />a&#41; Thông tin về sơ đồ, cơ cấu tổ chức, chức năng, nhiệm vụ, quyền hạn; tóm lược quá trình hình thành và phát triển; họ và tên, chức vụ, điện thoại, địa chỉ thư điện tử và nhiệm vụ đảm nhiệm của lãnh đạo cơ sở giáo dục; <br />b&#41; Thông tin liên hệ, trao đổi, giải đáp thắc mắc của cơ sở giáo dục với người dân.<br />2. Tin tức, sự kiện về hoạt động, các vấn đề liên quan thuộc lĩnh vực quản lý của cơ sở giáo dục.<br />3. Văn bản quy định liên quan đến hoạt động của cơ sở giáo dục.<br />4. Thông tin về dịch vụ trực tuyến xét tuyển đầu cấp học &#40;trong đó gồm đăng ký và điền mẫu đơn trực tuyến, thông báo kết quả trực tuyến&#41;.<br />5. Mục lấy ý kiến góp ý của tổ chức, cá nhân gồm&#x3A; Danh sách các vấn đề cần xin ý kiến; nội dung vấn đề xin ý kiến; địa chỉ, thư điện tử tiếp nhận ý kiến và thời hạn tiếp nhận ý kiến.<br />6. Các dữ liệu đặc tả hỗ trợ tìm kiếm, trao đổi, chia sẻ thông tin, đảm bảo khả năng liên kết, tích hợp giữa các hệ thống, đảm bảo sự tương thích về công nghệ.<br />7. Thông tin về công khai đối với cơ sở giáo dục và thời hạn đăng tin thực hiện theo quy định tại Thông tư số 36&#x002F;2017&#x002F;TT-BGDĐT ngày 28&#x002F;12&#x002F;2017 của Bộ Giáo dục và Đào tạo ban hành Quy chế thực hiện công khai đối với cơ sở giáo dục và đào tạo thuộc hệ thống giáo dục quốc dân.<br />8. Thông tin tuyển sinh gồm kế hoạch tuyển sinh, thông báo tuyển sinh &#40;trong đó bao gồm thông tin về đối tượng, chỉ tiêu tuyển sinh, hình thức tuyển sinh, điều kiện, hồ sơ, thời gian, địa điểm thi&#41;, danh sách dự tuyển.<br />9. Niêm giám thống kê trong thời gian 5 năm gần nhất gồm số liệu thống kê về quy mô của trường, lớp, giáo viên, học sinh, cơ sở vật chất.<br />10. Trang tài nguyên số &#40;gồm kho học liệu số, bài giảng E-learning, sách điện tử, phần mềm&#41; chia sẻ dùng chung cho cán bộ quản lý giáo dục, giáo viên, học sinh của trường; trang tài nguyên có đường kết nối thư viện tài nguyên của cơ quan quản lý giáo dục.<br />11. Hệ thống quản lý trường học trực tuyến &#40;nếu có&#41;. Trong đó, gồm các mô đun quản lý hồ sơ, kết quả học tập và rèn luyện của học sinh, quản lý giáo viên, quản lý trang thiết bị, thư viện điện tử, quản lý thi, tuyển sinh.<br /><br />Điều 10. Thông tin khác <br />Ngoài các thông tin quy định tại Điều 8, Điều 9 của Thông tư này, cơ quan quản lý giáo dục, cơ sở giáo dục cung cấp các thông tin khác phù hợp điều kiện và nhu cầu cụ thể gồm&#x3A;<br />1. Cổng thông tin của sở giáo dục và đào tạo tạo đường liên kết với Cổng thông tin của Bộ Giáo dục và Đào tạo, các phòng giáo dục và đào tạo và các cơ sở giáo dục trực thuộc; Cổng thông tin của phòng giáo dục và đào tạo tạo liên kết với cổng thông tin điện tử của sở giáo dục và đào tạo chủ quản và các cơ sở giáo dục trực thuộc.<br />2. Thông tin về tổ chức học tập trực tuyến &#40;E-learning&#41;, phòng họp ảo, phát truyền hình quảng bá qua web các buổi hội nghị, hội thảo.<br />3. Thông tin về các tổ chức Đảng, Đoàn thanh niên và các đoàn thể khác.<br />4. Thông cáo báo chí, trả lời phỏng vấn và phát ngôn chính thức của cơ quan quản lý giáo dục, cơ sở giáo dục về các vấn đề có liên quan.<br />5. Giải đáp theo yêu cầu của giáo viên, học sinh, phụ huynh học sinh về các vấn đề có liên quan. <br />6. Học bổng, tín dụng vay vốn, tư vấn hướng nghiệp và các dịch vụ hỗ trợ khác cho học sinh.<br />7. Mục lấy ý kiến thăm dò dư luận.<br /><br />Điều 11. Quản lý, vận hành, sử dụng cổng thông tin điện tử<br />1. Thủ trưởng đơn vị thành lập Ban Biên tập cổng thông tin điện tử &#40;hoạt động theo hình thức kiêm nhiệm&#41;; phân công một lãnh đạo đơn vị làm trưởng Ban Biên tập. <br />2. Thủ trưởng đơn vị ban hành Quy chế quản lý, vận hành, sử dụng cổng thông tin điện tử, trong đó cần quy định tối thiểu các nội dung sau&#x3A;<br />a&#41; Nội dung đăng tải trên cổng thông tin điện tử;<br />b&#41; Quy trình tiếp nhận, xử lý, biên tập, cập nhật và xử lý thông tin đăng tải trên cổng thông tin điện tử;<br />c&#41; Thời hạn cung cấp, cập nhật thông tin trên cổng thông tin điện tử;<br />d&#41; Trách nhiệm của các đơn vị, cá nhân trong việc cung cấp, tổng hợp, thẩm định và duyệt nội dung đăng tải trên cổng thông tin điện tử;<br />đ&#41; Quy định về trách nhiệm quản lý, vận hành kỹ thuật cổng thông tin điện tử;<br />e&#41; Chế độ làm việc của các thành viên Ban Biên tập.<br />3. Thủ trưởng đơn vị phân công một bộ phận trực thuộc, cán bộ làm đầu mối quản lý chịu trách nhiệm phối hợp với đơn vị cung cấp dịch vụ hoặc tự thực hiện, vận hành kỹ thuật đảm bảo hoạt động ổn định và an toàn thông tin cho cổng thông tin điện tử &#40;đăng kí và quản lý tên miền, điều chỉnh giao diện, quản lý máy chủ, phân cấp phân quyền, tạo tài khoản, tạo mật khẩu, triển khai giải pháp an toàn thông tin, hỗ trợ và xử lý kỹ thuật&#41;.<br /><br />Điều 12. Sử dụng công nghệ và áp dụng tiêu chuẩn kỹ thuật<br />Cổng thông tin điện tử của cơ quan quản lý giáo dục, cơ sở giáo dục sử dụng các công nghệ, tiêu chuẩn, giải pháp kỹ thuật sau&#x3A;<br />1. Bộ mã ký tự chữ tiếng Việt Unicode theo tiêu chuẩn TCVN 6909&#x3A;2001 trong việc lưu trữ dữ liệu và trao đổi thông tin trên cổng thông tin điện tử đối với phiên bản tiếng Việt.<br />2. Giải pháp kỹ thuật hỗ trợ người dùng truy cập cổng thông tin điện tử từ các thiết bị di động.<br />3. Giải pháp hỗ trợ người khuyết tật truy cập thông tin theo quy định.<br />4. Giải pháp cung cấp công cụ tìm kiếm toàn văn.<br />5. Giải pháp cho phép chia sẻ nội dung RSS.<br />6. Các dữ liệu đặc tả hỗ trợ tìm kiếm, trao đổi, chia sẻ thông tin, đảm bảo khả năng liên kết, tích hợp giữa các hệ thống, đảm bảo sự tương thích về công nghệ.<br />7. Hỗ trợ địa chỉ Internet thế hệ mới IPv6, DNSSEC phù hợp với lộ trình ứng dụng IPv6.<br /> <br />Chương IV<br />TỔ CHỨC THỰC HIỆN<br /><br />Điều 13. Trách nhiệm của sở giáo dục và đào tạo<br />1. Sở giáo dục và đào tạo chịu trách nhiệm hướng dẫn, triển khai tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở, các phòng giáo dục và đào tạo, các cơ sở giáo dục tại địa phương theo quy định tại Thông tư này.<br />2. Đưa nội dung xây dựng, nâng cấp, quản lý, vận hành hệ thống thư điện tử, cổng thông tin điện tử vào kế hoạch công tác hằng năm.<br />3. Báo cáo kết quả triển khai tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử của sở, các phòng giáo dục và đào tạo, các cơ sở giáo dục tại địa phương về Bộ Giáo dục và Đào tạo &#40;qua Cục Công nghệ thông tin&#41; khi có yêu cầu.<br /><br />Điều 14. Trách nhiệm của phòng giáo dục và đào tạo <br />1. Phòng giáo dục và đào tạo chịu trách nhiệm hướng dẫn, triển khai tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại phòng và cơ sở giáo dục trực thuộc theo quy định tại Thông tư này.<br />2. Đưa nội dung xây dựng, nâng cấp, quản lý, vận hành hệ thống thư điện tử, cổng thông tin điện tử vào kế hoạch công tác hằng năm.<br />3. Báo cáo kết quả triển khai tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử theo yêu cầu của sở giáo dục và đào tạo.<br /><br />Điều 15. Trách nhiệm của các cơ sở giáo dục<br />1. Các cơ sở giáo dục chịu trách nhiệm triển khai, sử dụng thư điện tử và cổng thông tin điện tử đảm bảo giao dịch, kết nối, chia sẻ và công khai thông tin trên môi trường mạng theo quy định tại Thông tư này.<br />2. Đưa nội dung xây dựng, nâng cấp, quản lý, vận hành hệ thống thư điện tử, cổng thông tin điện tử vào kế hoạch công tác hằng năm.<br />3. Báo cáo kết quả triển khai tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử khi có yêu cầu của cơ quan quản lý giáo dục.<br /><br />Điều 16. Kiểm tra, đánh giá hoạt động của hệ thống thư điện tử và cổng thông tin điện tử của cơ quan quản lý giáo dục và cơ sở giáo dục<br />1. Hệ thống thư điện tử, cổng thông tin điện tử của cơ quan quản lý giáo dục, cơ sở giáo dục được kiểm tra, đánh giá, xếp hạng định kỳ hoặc đột xuất theo yêu cầu của cơ quan nhà nước có thẩm quyền. <br />2. Nội dung kiểm tra, đánh giá gồm kiểm tra việc tuân thủ và đánh giá mức độ thực hiện các quy định tại Thông tư này và các văn bản pháp luật liên quan. <br />3. Bộ Giáo dục và Đào tạo tổ chức kiểm tra, đánh giá, xếp hạng hoạt động hệ thống thư điện tử, cổng thông tin điện tử của các sở giáo dục và đào tạo, công khai kết quả trên Cổng thông tin điện tử của Bộ.<br />4. Sở giáo dục và đào tạo tổ chức kiểm tra, đánh giá, xếp hạng hoạt động hệ thống thư điện tử, cổng thông tin điện tử của các phòng giáo dục và đào tạo và các cơ sở giáo dục trực thuộc; công khai kết quả trên cổng thông tin điện tử của sở.<br />5. Phòng giáo dục và đào tạo tổ chức kiểm tra, đánh giá, xếp hạng hoạt động hệ thống thư điện tử, cổng thông tin điện tử của các cơ sở giáo dục trực thuộc; công khai kết quả trên cổng thông tin điện tử của phòng.<br /><br />Điều 17. Hiệu lực thi hành<br />1. Thông tư này có hiệu lực thi hành từ ngày 20 tháng 11 năm 2020.<br />2. Thông tư này thay thế Thông tư số 53&#x002F;2012&#x002F;TT-BGDĐT ngày 20&#x002F;12&#x002F;2012 của Bộ Giáo dục và Đào tạo quy định về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở giáo dục mầm non, giáo dục phổ thông và giáo dục thường xuyên.<br /><br />Điều 18. Trách nhiệm thi hành<br />Chánh Văn phòng, Cục trưởng Cục Công nghệ thông tin, Thủ trưởng các đơn vị liên quan thuộc Bộ Giáo dục và Đào tạo; Giám đốc các sở giáo dục và đào tạo, Trưởng phòng các phòng giáo dục và đào tạo, Thủ trưởng các cơ sở giáo dục chịu trách nhiệm thi hành Thông tư này.&#x002F;.', '', 'tổ chức,hoạt động,sử dụng,thông tin,giáo dục,đào tạo,cơ sở,mầm non,phổ thông,giao dịch,công nghệ,nghị định,ứng dụng,cơ quan,quản lý,sửa đổi,bổ sung,chỉ thị,tăng cường,hệ thống,đề nghị', '6', '6', '', 1, 0, 1607565863, 0, 1607533200, 0, 0, 0, 0, 0, 0, 1, 0),
(4, '', '', 'Quyết định số 06&#x002F;QĐ-CNTT ngày 11&#x002F;05&#x002F;2020 Công bố hệ thống quản lý chất lượng mở rộng tại Cục Công nghệ thông tin phù hợp Tiêu chuẩn quốc gia TCVN ISO 9001&#x3A;2015', 'Quyet-dinh-so-06-QD-CNTT-ngay-11-05-2020-Cong-bo-he-thong-quan-ly-chat-luong-mo-rong-tai-Cuc-Cong-nghe-thong-tin-phu-hop-Tieu-chuan-quoc-gia-TCVN-ISO-9001-2015-4', '06&#x002F;QĐ-CNTT', 1, 1, 0, 1, '', 'QUYẾT ĐỊNH<br />Công bố hệ thống quản lý chất lượng mở rộng tại Cục Công nghệ thông tin<br />phù hợp Tiêu chuẩn quốc gia TCVN ISO 9001&#x3A;2015 <br />__________________<br /> <br />CỤC TRƯỞNG CỤC CÔNG NGHỆ THÔNG TIN<br /><br />Căn cứ Quyết định số 19&#x002F;2014&#x002F;QĐ-TTg ngày 05&#x002F;3&#x002F;2014 của Thủ tướng Chính phủ về việc áp dụng Hệ thống quản lý chất lượng theo Tiêu chuẩn quốc gia TCVN ISO 9001&#x3A;2008;<br />Căn cứ Quyết định số 2077&#x002F;QĐ-BGDĐT ngày 19&#x002F;6&#x002F;2017 của Bộ trưởng Bộ Giáo dục và Đào tạo ban hành quy định chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức của các đơn vị giúp Bộ trưởng thực hiện chức năng quản lý nhà nước thuộc Bộ Giáo dục và Đào tạo;<br />Xét đề nghị của Tổ trưởng Tổ triển khai, áp dụng hệ thống quản lý chất lượng theo Tiêu chuẩn quốc gia TCVN ISO 9001&#x3A;2015 của Cục Công nghệ thông tin và Trưởng phòng Hành chính - Tổng hợp.<br /> <br />QUYẾT ĐỊNH&#x3A;<br /><br />Điều 1. Công bố hệ thống quản lý chất lượng mở rộng tại Cục Công nghệ thông tin phù hợp Tiêu chuẩn quốc gia TCVN ISO 9001&#x3A;2015 theo quy định tại Quyết định số 19&#x002F;2014&#x002F;QĐ-TTg ngày 05&#x002F;3&#x002F;2014 của Thủ tướng Chính phủ &#40;văn bản kèm theo&#41;. <br />Điều 2. Quyết định này có hiệu lực kể từ ngày ký.<br />Điều 3. Các Trưởng phòng, Kế toán trưởng, Giám đốc Trung tâm Giải pháp công nghệ thông tin giáo dục, công chức, viên chức, người lao động, Tổ triển khai, áp dụng hệ thống quản lý chất lượng theo tiêu chuẩn quốc gia TCVN ISO 9001&#x3A;2015 tại Cục Công nghệ thông tin, các cá nhân, đơn vị có liên quan chịu trách nhiệm thi hành Quyết định này.&#x002F;.', '', 'hệ thống,quản lý,công nghệ,tiêu chuẩn,quốc gia,quyết định,thủ tướng,áp dụng,giáo dục,đào tạo,ban hành,quy định,nhiệm vụ,quyền hạn,tổ chức,đơn vị,thực hiện,nhà nước,đề nghị,tổ trưởng,triển khai', '6', '6', '', 1, 0, 1607565954, 0, 1607533200, 0, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_row_area`
--

CREATE TABLE `nv4_vi_laws_row_area` (
  `row_id` int(10) UNSIGNED NOT NULL,
  `area_id` smallint(4) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_row_area`
--

INSERT INTO `nv4_vi_laws_row_area` (`row_id`, `area_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_set_replace`
--

CREATE TABLE `nv4_vi_laws_set_replace` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `oid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_signer`
--

CREATE TABLE `nv4_vi_laws_signer` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `positions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_signer`
--

INSERT INTO `nv4_vi_laws_signer` (`id`, `title`, `offices`, `positions`, `addtime`) VALUES
(1, 'Phạm Vũ Luận', '', 'Bộ trưởng', 1412265295),
(2, 'Bùi Văn Ga', '', 'Thứ trưởng', 1412265295),
(3, 'Nguyễn Thị Nghĩa', '', 'Thứ trưởng', 1412265295),
(4, 'Nguyễn Vinh Hiển', '', 'Thứ trưởng', 1412265295),
(5, 'Khác', '', '', 1412265295),
(6, 'HÀ', 'ád', 'ád', 1607508076);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_subject`
--

CREATE TABLE `nv4_vi_laws_subject` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numcount` int(10) NOT NULL DEFAULT 0,
  `numlink` tinyint(2) NOT NULL DEFAULT 5,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_subject`
--

INSERT INTO `nv4_vi_laws_subject` (`id`, `alias`, `title`, `introduction`, `keywords`, `numcount`, `numlink`, `addtime`, `weight`) VALUES
(1, 'Bo-GD-DT', 'Bộ GD&amp;ĐT', '', '', 4, 5, 1412265295, 1),
(2, 'So-GD-DT', 'Sở GD&amp;ĐT', '', '', 0, 5, 1412265295, 2),
(3, 'Phong-GD-DT', 'Phòng GD', '', '', 0, 5, 1412265295, 3),
(4, 'Khac', 'Khác', '', '', 0, 5, 1412265295, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu`
--

CREATE TABLE `nv4_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu`
--

INSERT INTO `nv4_vi_menu` (`id`, `title`) VALUES
(4, 'footer'),
(2, 'cục công nghệ thông tin'),
(3, 'Danh mục'),
(5, 'Liên kết web');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu_rows`
--

CREATE TABLE `nv4_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `lev` int(11) NOT NULL DEFAULT 0,
  `subitem` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT 0,
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu_rows`
--

INSERT INTO `nv4_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(64, 0, 5, 'trung tâm giải pháp', 'https://eitsc.edu.vn/', '', '', '', 6, 6, 0, '', '6', '0', '', 2, '', 0, 1),
(63, 0, 5, 'cổng thông tin tập huấn', 'http://taphuan.moet.edu.vn/', '', '', '', 5, 5, 0, '', '6', '0', '', 2, '', 0, 1),
(62, 0, 5, 'edunet', 'http://edu.net.vn/media/', '', '', '', 4, 4, 0, '', '6', '0', '', 2, '', 0, 1),
(61, 0, 5, 'e-learing', 'https://elearning.moet.edu.vn/', '', '', '', 3, 3, 0, '', '6', '0', '', 2, '', 0, 1),
(60, 0, 5, 'bộ giáo dục và đào tạo', 'https://moet.gov.vn/Pages/home.aspx', '', '', '', 1, 1, 0, '', '6', '0', '', 2, '', 0, 1),
(59, 0, 5, 'Chính phủ', 'http://www.chinhphu.vn/portal/page/portal/chinhphu/trangchu', '', '', '', 2, 2, 0, '', '6', 'page', '', 3, '', 0, 1),
(58, 0, 4, 'Góp ý', '/index.php?language=vi&nv=contact', '', '', '', 4, 4, 0, '', '6', 'contact', '', 1, '', 0, 1),
(55, 0, 4, 'Danh bạ website', '', '', '', '', 1, 1, 0, '', '6', '0', '', 1, '', 0, 1),
(56, 0, 4, 'DV công trực tuyến', '', '', '', '', 2, 2, 0, '', '6', '0', '', 1, '', 0, 1),
(57, 0, 4, 'Tài nguyên số', '', '', '', '', 3, 3, 0, '', '6', '0', '', 1, '', 0, 1),
(31, 0, 2, 'Cục CNTT', '/index.php?language=vi&nv=about', '', '', '', 1, 1, 0, '32,33,34,35', '6', 'about', '', 1, '', 0, 1),
(32, 31, 2, 'Giới thiệu', '/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet.html', '', '', '', 1, 2, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet.html', 1, '', 0, 1),
(33, 31, 2, 'Chức năng, nhiệm vụ', '/index.php?language=vi&nv=about&op=chuc-nang-nhiem-vu.html', '', '', '', 2, 3, 1, '', '6', 'about', 'chuc-nang-nhiem-vu.html', 1, '', 0, 1),
(34, 31, 2, 'Danh bạ', '', '', '', '', 3, 4, 1, '', '6', '0', '', 1, '', 0, 1),
(35, 31, 2, 'Văn bản CNTT', '', '', '', '', 4, 5, 1, '', '6', '0', '', 1, '', 0, 1),
(36, 0, 2, 'Tin Tức', '/index.php?language=vi&nv=news', '', '', '', 2, 6, 0, '42,43,44,45,46', '6', 'news', '', 1, '', 0, 1),
(37, 0, 2, 'Danh bạ web', '', '', '', '', 3, 12, 0, '', '6', '0', '', 1, '', 0, 1),
(38, 0, 2, 'DV công trực tuyến', '', '', '', '', 4, 13, 0, '', '6', '0', '', 1, '', 0, 1),
(39, 0, 2, 'Các cuộc thi', '', '', '', '', 5, 14, 0, '', '6', '0', '', 1, '', 0, 1),
(40, 0, 2, 'Tài nguyên số', '', '', '', '', 6, 15, 0, '', '6', '0', '', 1, '', 0, 1),
(41, 0, 2, 'Liên hệ', '/index.php?language=vi&nv=contact', '', '', '', 7, 16, 0, '', '6', 'contact', '', 1, '', 0, 1),
(42, 36, 2, 'Cục CNTT', '/index.php?language=vi&nv=news&op=cuc-cntt', '', '', '', 1, 7, 1, '', '6', 'news', 'cuc-cntt', 1, '', 0, 1),
(43, 36, 2, 'Tin địa phương', '/index.php?language=vi&nv=news&op=tin-dia-phuong', '', '', '', 2, 8, 1, '', '6', 'news', '', 1, '', 0, 1),
(44, 36, 2, 'Kinh nghiệm ứng dụng CNTT', '/index.php?language=vi&nv=news&op=itc', '', '', '', 3, 9, 1, '', '6', 'news', '', 1, '', 0, 1),
(45, 36, 2, 'Tin Ảnh', '', '', '', '', 4, 10, 1, '', '6', '0', '', 1, '', 0, 1),
(46, 36, 2, 'Tin Video', '', '', '', '', 5, 11, 1, '', '6', '0', '', 1, '', 0, 1),
(47, 0, 3, 'Đào tạo - Tập huấn trực tuyến', '', '', '', '', 1, 1, 0, '', '6', '0', '', 1, '', 0, 1),
(48, 0, 3, 'Hệ thống thi - tuyển sinh ĐH, CĐ', '', '', '', '', 2, 2, 0, '', '6', '0', '', 1, '', 0, 1),
(49, 0, 3, 'Phòng họp trực tuyến', '', '', '', '', 3, 3, 0, '', '6', '0', '', 1, '', 0, 1),
(50, 0, 3, 'Hệ thống phổ cập giáo dục - chống mù chữ', '', '', '', '', 4, 4, 0, '', '6', '0', '', 1, '', 0, 1),
(51, 0, 3, 'Cuộc thi quốc gia - Thiết kế bài giảng E-Elearning', '', '', '', '', 5, 5, 0, '', '6', '0', '', 1, '', 0, 1),
(52, 0, 3, 'Cuộc thi quốc gia - Sinh viên với an toàn thông tin', '', '', '', '', 6, 6, 0, '', '6', '0', '', 1, '', 0, 1),
(53, 0, 3, 'Cuộc thi Olympic tin học sinh viên', '', '', '', '', 7, 7, 0, '', '6', '0', '', 1, '', 0, 1),
(54, 0, 3, 'Tài nguyên số giáo dục', '', '', '', '', 8, 8, 0, '', '6', '0', '', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modfuncs`
--

CREATE TABLE `nv4_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT 0,
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT 1,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modfuncs`
--

INSERT INTO `nv4_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', '', 'about', 1, 0, 0, ''),
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(18, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(19, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(20, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(21, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(22, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(23, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(24, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(25, 'editinfo', 'editinfo', 'Thiết lập tài khoản', '', 'users', 1, 1, 7, ''),
(26, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(27, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 9, ''),
(28, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 10, ''),
(29, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 0, 11, ''),
(30, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(31, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''),
(32, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', '', 'statistics', 1, 1, 2, ''),
(33, 'allcountries', 'allcountries', 'Theo quốc gia', '', 'statistics', 1, 1, 3, ''),
(34, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', '', 'statistics', 1, 1, 4, ''),
(35, 'allos', 'allos', 'Theo hệ điều hành', '', 'statistics', 1, 1, 5, ''),
(36, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', '', 'statistics', 1, 1, 6, ''),
(37, 'referer', 'referer', 'Đường dẫn đến site theo tháng', '', 'statistics', 1, 0, 7, ''),
(38, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(39, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(40, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(41, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(42, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(43, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(44, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(45, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(46, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(47, 'main', 'main', 'main', '', 'comment', 1, 0, 1, ''),
(48, 'post', 'post', 'post', '', 'comment', 1, 0, 2, ''),
(49, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(50, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(51, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(55, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''),
(56, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''),
(57, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''),
(58, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(59, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(60, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(61, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(62, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''),
(63, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(64, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''),
(65, 'area', 'area', 'Area', '', 'laws', 1, 1, 4, ''),
(66, 'cat', 'cat', 'Cat', '', 'laws', 1, 1, 5, ''),
(67, 'detail', 'detail', 'Detail', '', 'laws', 1, 1, 2, ''),
(68, 'main', 'main', 'Main', '', 'laws', 1, 1, 1, ''),
(69, 'rss', 'rss', 'Rss', '', 'laws', 0, 0, 0, ''),
(70, 'search', 'search', 'Search', '', 'laws', 1, 1, 3, ''),
(71, 'signer', 'signer', 'Signer', '', 'laws', 1, 1, 7, ''),
(72, 'sitemap', 'sitemap', 'Sitemap', '', 'laws', 0, 0, 0, ''),
(73, 'subject', 'subject', 'Subject', '', 'laws', 1, 1, 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modthemes`
--

CREATE TABLE `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modthemes`
--

INSERT INTO `nv4_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main', 'ccntt2'),
(0, 'left-main', 'testt'),
(0, 'left-main-right', 'ccntt'),
(0, 'left-main-right', 'default'),
(0, 'left-main-right', 'test'),
(0, 'left-main-right', 'testttt'),
(0, 'main', 'mobile_default'),
(1, 'left-main', 'ccntt'),
(1, 'left-main', 'ccntt2'),
(1, 'left-main', 'testt'),
(1, 'left-main', 'testttt'),
(1, 'left-main-right', 'default'),
(1, 'left-main-right', 'test'),
(1, 'main', 'mobile_default'),
(3, 'left-main', 'ccntt2'),
(3, 'left-main', 'testt'),
(3, 'left-main-right', 'default'),
(4, 'left-main', 'ccntt'),
(4, 'left-main', 'ccntt2'),
(4, 'left-main', 'testt'),
(4, 'left-main', 'testttt'),
(4, 'left-main-right', 'test'),
(4, 'main', 'default'),
(4, 'main', 'mobile_default'),
(5, 'left-main', 'ccntt'),
(5, 'left-main', 'ccntt2'),
(5, 'left-main', 'testt'),
(5, 'left-main', 'testttt'),
(5, 'left-main-right', 'test'),
(5, 'main', 'default'),
(5, 'main', 'mobile_default'),
(6, 'left-main', 'ccntt'),
(6, 'left-main', 'ccntt2'),
(6, 'left-main', 'testt'),
(6, 'left-main', 'testttt'),
(6, 'left-main-right', 'test'),
(6, 'main', 'default'),
(6, 'main', 'mobile_default'),
(7, 'left-main', 'ccntt'),
(7, 'left-main', 'ccntt2'),
(7, 'left-main', 'testt'),
(7, 'left-main', 'testttt'),
(7, 'left-main-right', 'test'),
(7, 'main', 'default'),
(7, 'main', 'mobile_default'),
(8, 'left-main', 'ccntt'),
(8, 'left-main', 'ccntt2'),
(8, 'left-main', 'testt'),
(8, 'left-main', 'testttt'),
(8, 'left-main-right', 'test'),
(8, 'main', 'default'),
(8, 'main', 'mobile_default'),
(9, 'left-main', 'ccntt'),
(9, 'left-main', 'ccntt2'),
(9, 'left-main', 'testt'),
(9, 'left-main', 'testttt'),
(9, 'left-main-right', 'test'),
(9, 'main', 'default'),
(9, 'main', 'mobile_default'),
(10, 'left-main', 'ccntt'),
(10, 'left-main', 'ccntt2'),
(10, 'left-main', 'testt'),
(10, 'left-main', 'testttt'),
(10, 'left-main-right', 'test'),
(10, 'main', 'default'),
(11, 'left-main', 'ccntt'),
(11, 'left-main', 'ccntt2'),
(11, 'left-main', 'testt'),
(11, 'left-main', 'testttt'),
(11, 'left-main-right', 'test'),
(11, 'main', 'default'),
(11, 'main', 'mobile_default'),
(12, 'left-main', 'ccntt'),
(12, 'left-main', 'ccntt2'),
(12, 'left-main', 'testt'),
(12, 'left-main', 'testttt'),
(12, 'left-main-right', 'test'),
(12, 'main', 'default'),
(12, 'main', 'mobile_default'),
(19, 'left-main', 'ccntt'),
(19, 'left-main', 'ccntt2'),
(19, 'left-main', 'testt'),
(19, 'left-main', 'testttt'),
(19, 'left-main-right', 'default'),
(19, 'left-main-right', 'test'),
(19, 'main', 'mobile_default'),
(20, 'left-main', 'ccntt'),
(20, 'left-main', 'ccntt2'),
(20, 'left-main', 'testt'),
(20, 'left-main', 'testttt'),
(20, 'left-main-right', 'default'),
(20, 'left-main-right', 'test'),
(20, 'main', 'mobile_default'),
(21, 'left-main', 'ccntt'),
(21, 'left-main', 'ccntt2'),
(21, 'left-main', 'testt'),
(21, 'left-main', 'testttt'),
(21, 'left-main-right', 'default'),
(21, 'left-main-right', 'test'),
(21, 'main', 'mobile_default'),
(22, 'left-main', 'ccntt'),
(22, 'left-main', 'ccntt2'),
(22, 'left-main', 'testt'),
(22, 'left-main', 'testttt'),
(22, 'left-main-right', 'default'),
(22, 'left-main-right', 'test'),
(22, 'main', 'mobile_default'),
(23, 'left-main', 'ccntt'),
(23, 'left-main', 'ccntt2'),
(23, 'left-main', 'testt'),
(23, 'left-main', 'testttt'),
(23, 'left-main-right', 'default'),
(23, 'left-main-right', 'test'),
(23, 'main', 'mobile_default'),
(24, 'left-main', 'ccntt'),
(24, 'left-main', 'ccntt2'),
(24, 'left-main', 'testt'),
(24, 'left-main', 'testttt'),
(24, 'left-main-right', 'default'),
(24, 'left-main-right', 'test'),
(24, 'main', 'mobile_default'),
(25, 'left-main', 'ccntt'),
(25, 'left-main', 'ccntt2'),
(25, 'left-main', 'default'),
(25, 'left-main', 'test'),
(25, 'left-main', 'testt'),
(25, 'left-main', 'testttt'),
(25, 'main', 'mobile_default'),
(26, 'left-main', 'ccntt'),
(26, 'left-main', 'ccntt2'),
(26, 'left-main', 'testt'),
(26, 'left-main', 'testttt'),
(26, 'left-main-right', 'default'),
(26, 'left-main-right', 'test'),
(26, 'main', 'mobile_default'),
(27, 'left-main', 'ccntt'),
(27, 'left-main', 'ccntt2'),
(27, 'left-main', 'testt'),
(27, 'left-main', 'testttt'),
(27, 'left-main-right', 'default'),
(27, 'left-main-right', 'test'),
(28, 'left-main', 'ccntt'),
(28, 'left-main', 'ccntt2'),
(28, 'left-main', 'testt'),
(28, 'left-main', 'testttt'),
(28, 'left-main-right', 'default'),
(28, 'left-main-right', 'test'),
(28, 'main', 'mobile_default'),
(29, 'left-main', 'ccntt'),
(29, 'left-main', 'ccntt2'),
(29, 'left-main', 'default'),
(29, 'left-main', 'test'),
(29, 'left-main', 'testt'),
(29, 'left-main', 'testttt'),
(29, 'main', 'mobile_default'),
(31, 'left-main', 'ccntt'),
(31, 'left-main', 'ccntt2'),
(31, 'left-main', 'default'),
(31, 'left-main', 'test'),
(31, 'left-main', 'testt'),
(31, 'left-main', 'testttt'),
(31, 'main', 'mobile_default'),
(32, 'left-main', 'ccntt'),
(32, 'left-main', 'ccntt2'),
(32, 'left-main', 'default'),
(32, 'left-main', 'test'),
(32, 'left-main', 'testt'),
(32, 'left-main', 'testttt'),
(32, 'main', 'mobile_default'),
(33, 'left-main', 'ccntt'),
(33, 'left-main', 'ccntt2'),
(33, 'left-main', 'default'),
(33, 'left-main', 'test'),
(33, 'left-main', 'testt'),
(33, 'left-main', 'testttt'),
(33, 'main', 'mobile_default'),
(34, 'left-main', 'ccntt'),
(34, 'left-main', 'ccntt2'),
(34, 'left-main', 'default'),
(34, 'left-main', 'test'),
(34, 'left-main', 'testt'),
(34, 'left-main', 'testttt'),
(34, 'main', 'mobile_default'),
(35, 'left-main', 'ccntt'),
(35, 'left-main', 'ccntt2'),
(35, 'left-main', 'default'),
(35, 'left-main', 'test'),
(35, 'left-main', 'testt'),
(35, 'left-main', 'testttt'),
(35, 'main', 'mobile_default'),
(36, 'left-main', 'ccntt'),
(36, 'left-main', 'ccntt2'),
(36, 'left-main', 'default'),
(36, 'left-main', 'test'),
(36, 'left-main', 'testt'),
(36, 'left-main', 'testttt'),
(36, 'main', 'mobile_default'),
(37, 'left-main', 'ccntt'),
(37, 'left-main', 'ccntt2'),
(37, 'left-main', 'default'),
(37, 'left-main', 'test'),
(37, 'left-main', 'testt'),
(37, 'left-main', 'testttt'),
(37, 'main', 'mobile_default'),
(38, 'left-main', 'ccntt'),
(38, 'left-main', 'ccntt2'),
(38, 'left-main', 'testt'),
(38, 'left-main', 'testttt'),
(38, 'left-main-right', 'default'),
(38, 'left-main-right', 'test'),
(38, 'main', 'mobile_default'),
(39, 'left-main', 'ccntt'),
(39, 'left-main', 'ccntt2'),
(39, 'left-main', 'testt'),
(39, 'left-main', 'testttt'),
(39, 'left-main-right', 'default'),
(39, 'left-main-right', 'test'),
(39, 'main', 'mobile_default'),
(40, 'left-main', 'ccntt'),
(40, 'left-main', 'ccntt2'),
(40, 'left-main', 'testt'),
(40, 'left-main', 'testttt'),
(40, 'left-main-right', 'default'),
(40, 'left-main-right', 'test'),
(40, 'main', 'mobile_default'),
(41, 'left-main', 'ccntt'),
(41, 'left-main', 'ccntt2'),
(41, 'left-main', 'testt'),
(41, 'left-main', 'testttt'),
(41, 'left-main-right', 'default'),
(41, 'left-main-right', 'test'),
(41, 'main', 'mobile_default'),
(47, 'left-main', 'ccntt'),
(47, 'left-main', 'ccntt2'),
(47, 'left-main', 'testt'),
(47, 'left-main', 'testttt'),
(47, 'left-main-right', 'default'),
(47, 'left-main-right', 'test'),
(47, 'main', 'mobile_default'),
(48, 'left-main', 'ccntt'),
(48, 'left-main', 'ccntt2'),
(48, 'left-main', 'testt'),
(48, 'left-main', 'testttt'),
(48, 'left-main-right', 'default'),
(48, 'left-main-right', 'test'),
(48, 'main', 'mobile_default'),
(49, 'left-main', 'ccntt'),
(49, 'left-main', 'ccntt2'),
(49, 'left-main', 'testt'),
(49, 'left-main', 'testttt'),
(49, 'left-main-right', 'default'),
(49, 'left-main-right', 'test'),
(49, 'main', 'mobile_default'),
(50, 'left-main', 'ccntt'),
(50, 'left-main', 'ccntt2'),
(50, 'left-main', 'testt'),
(50, 'left-main', 'testttt'),
(50, 'left-main-right', 'default'),
(50, 'left-main-right', 'test'),
(50, 'main', 'mobile_default'),
(51, 'left-main', 'ccntt'),
(51, 'left-main', 'ccntt2'),
(51, 'left-main', 'testt'),
(51, 'left-main', 'testttt'),
(51, 'left-main-right', 'default'),
(51, 'left-main-right', 'test'),
(52, 'left-main', 'ccntt'),
(52, 'left-main', 'ccntt2'),
(52, 'left-main', 'default'),
(52, 'left-main', 'test'),
(52, 'left-main', 'testt'),
(52, 'left-main', 'testttt'),
(52, 'main', 'mobile_default'),
(55, 'left-main', 'ccntt'),
(55, 'left-main', 'ccntt2'),
(55, 'left-main', 'testt'),
(55, 'left-main', 'testttt'),
(55, 'left-main-right', 'default'),
(55, 'left-main-right', 'test'),
(55, 'main', 'mobile_default'),
(56, 'left-main', 'ccntt'),
(56, 'left-main', 'ccntt2'),
(56, 'left-main', 'testt'),
(56, 'left-main', 'testttt'),
(56, 'left-main-right', 'default'),
(56, 'left-main-right', 'test'),
(56, 'main', 'mobile_default'),
(58, 'left-main', 'ccntt'),
(58, 'left-main', 'ccntt2'),
(58, 'left-main', 'testt'),
(58, 'left-main', 'testttt'),
(58, 'left-main-right', 'default'),
(58, 'left-main-right', 'test'),
(58, 'main', 'mobile_default'),
(59, 'left-main', 'ccntt'),
(59, 'left-main', 'ccntt2'),
(59, 'left-main', 'testt'),
(59, 'left-main', 'testttt'),
(59, 'left-main-right', 'default'),
(59, 'left-main-right', 'test'),
(59, 'main', 'mobile_default'),
(60, 'left-main', 'ccntt'),
(60, 'left-main', 'ccntt2'),
(60, 'left-main', 'testt'),
(60, 'left-main', 'testttt'),
(60, 'left-main-right', 'default'),
(60, 'left-main-right', 'test'),
(60, 'main', 'mobile_default'),
(61, 'left-main', 'ccntt'),
(61, 'left-main', 'ccntt2'),
(61, 'left-main', 'default'),
(61, 'left-main', 'test'),
(61, 'left-main', 'testt'),
(61, 'left-main', 'testttt'),
(61, 'main', 'mobile_default'),
(62, 'left-main', 'ccntt'),
(62, 'left-main', 'ccntt2'),
(62, 'left-main', 'default'),
(62, 'left-main', 'test'),
(62, 'left-main', 'testt'),
(62, 'left-main', 'testttt'),
(62, 'main', 'mobile_default'),
(63, 'left-main', 'ccntt'),
(63, 'left-main', 'ccntt2'),
(63, 'left-main', 'testt'),
(63, 'left-main', 'testttt'),
(63, 'left-main-right', 'default'),
(63, 'left-main-right', 'test'),
(63, 'main', 'mobile_default'),
(64, 'left-main', 'ccntt'),
(64, 'left-main', 'ccntt2'),
(64, 'left-main', 'testt'),
(64, 'left-main', 'testttt'),
(64, 'left-main-right', 'default'),
(64, 'left-main-right', 'test'),
(64, 'main', 'mobile_default'),
(65, 'left-main', 'testt'),
(65, 'left-main-right', 'ccntt2'),
(65, 'left-main-right', 'default'),
(65, 'main', 'mobile_default'),
(66, 'left-main', 'testt'),
(66, 'left-main-right', 'ccntt2'),
(66, 'left-main-right', 'default'),
(66, 'main', 'mobile_default'),
(67, 'left-main', 'testt'),
(67, 'left-main-right', 'ccntt2'),
(67, 'left-main-right', 'default'),
(67, 'main', 'mobile_default'),
(68, 'left-main', 'testt'),
(68, 'left-main-right', 'ccntt2'),
(68, 'left-main-right', 'default'),
(68, 'main', 'mobile_default'),
(69, 'left-main-right', 'ccntt2'),
(70, 'left-main', 'testt'),
(70, 'left-main-right', 'ccntt2'),
(70, 'left-main-right', 'default'),
(70, 'main', 'mobile_default'),
(71, 'left-main', 'testt'),
(71, 'left-main-right', 'ccntt2'),
(71, 'left-main-right', 'default'),
(71, 'main', 'mobile_default'),
(72, 'left-main-right', 'ccntt2'),
(73, 'left-main', 'testt'),
(73, 'left-main-right', 'ccntt2'),
(73, 'left-main-right', 'default'),
(73, 'main', 'mobile_default');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modules`
--

CREATE TABLE `nv4_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT 1,
  `sitemap` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modules`
--

INSERT INTO `nv4_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`) VALUES
('about', 'page', 'about', 'about', 'page', 'Giới thiệu', '', '', 1606359771, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 1),
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1606359771, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 1),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1606359771, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 1),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1606359771, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 1),
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', '', 1606359771, 1, 1, '', '', '', 'online, statistics', '6', 5, 1, '', 0, 1),
('voting', 'voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', '', 1606359771, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 1),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1606359771, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 1),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1606359771, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 1),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1606359771, 0, 1, '', '', '', '', '6', 9, 1, '', 0, 1),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', 'RSS-feeds', 1606359771, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 1),
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1606359771, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1606359771, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 1),
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1606359771, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 1),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', '', 1606359771, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 1),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1606359771, 1, 0, '', '', '', '', '6', 15, 1, '', 0, 1),
('laws', 'laws', 'laws', 'laws', 'laws', 'Laws', '', '', 1607508035, 1, 1, '', '', '', '', '6', 16, 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_1`
--

CREATE TABLE `nv4_vi_news_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_1`
--

INSERT INTO `nv4_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(23, 1, '1', 0, 1, '', 0, 1607670775, 1607670775, 1, 1, 1607670480, 0, 2, 'Đại hội Chi bộ Cục Công nghệ thông tin thành công tốt đẹp', 'dai-hoi-chi-bo-cuc-cong-nghe-thong-tin-thanh-cong-tot-dep', 'Nhiệm kỳ 2015-2020, Chi bộ Cục Công nghệ thông tin (Bộ GD&ĐT) đã hoàn thành xuất sắc các nhiệm vụ chính trị được giao, luôn đạt danh hiệu Tổ chức cơ sở Đảng trong sạch, vững mạnh.', '2020_12/dhd-cits2.jpg', 'Đại hội Chi bộ Cục Công nghệ thông tin.', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(28, 1, '1', 0, 1, '', 0, 1607672658, 1607672695, 1, 4, 1607672580, 0, 2, 'Hội thảo chuyên đề chuyển đổi số ngành GDĐT và xây dựng môi trường giáo dục 4.0', 'hoi-thao-chuyen-de-chuyen-doi-so-nganh-gddt-va-xay-dung-moi-truong-giao-duc-4-0', 'Chiều ngày 17/9, Cục Công nghệ Thông tin đã điều phối thành công hội thảo chuyên đề “Chuyển đổi số ngành Giáo dục và Xây dựng môi trường Giáo dục 4.0” diễn ra tại TP. Hồ Chí Minh. Tham dự Hội thảo chuyên đề có gần 200 đại biểu đến từ các cơ quan quản lý, cơ sở giáo dục và công ty công nghệ trên toàn quốc.', '2020_12/tin-bai-01.jpg', 'Ông Nguyễn Sơn Hải, Cục trưởng Cục CNTT - Bộ GDĐT phát biểu tại phiên Tọa đàm của Hội thảo', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(24, 1, '1', 0, 1, '', 0, 1607670994, 1607671143, 1, 2, 1607670960, 0, 2, 'Công văn số 173&#x002F;CNTT ngày 01&#x002F;04&#x002F;2020 của Cục CNTT về việc hỗ trợ của các doanh nghiệp ngành TTTT cho GDĐT trong phòng, chống dịch bệnh Covid-19', 'cong-van-so-173-cntt-ngay-01-04-2020-cua-cuc-cntt-ve-viec-ho-tro-cua-cac-doanh-nghiep-nganh-tttt-cho-gddt-trong-phong-chong-dich-benh-covid-19', '', '', '', 0, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_2`
--

CREATE TABLE `nv4_vi_news_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_2`
--

INSERT INTO `nv4_vi_news_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(30, 2, '2', 0, 1, '', 0, 1607672875, 1607672875, 1, 6, 1607672760, 0, 2, 'Số hóa ngành giáo dục - lợi mọi bề', 'so-hoa-nganh-giao-duc-loi-moi-be', 'Ứng dụng CNTT vào công tác sổ sách, hồ sơ như sổ liên lạc điện tử, giáo án điện tử, sổ theo dõi chất lượng giáo dục, sổ chủ nhiệm… giúp giáo viên giảm bớt công việc không tên. Xa hơn, số hóa ngành GD được kỳ vọng sẽ triệt tiêu tiêu cực trong học tập, thi cử, đồng thời giúp phụ huynh theo dõi, đồng hành cùng nhà trường trong việc GD trẻ.', '2020_12/tin-bai-01-1.jpg', 'Số hóa sổ sách, hồ sơ giúp giáo viên có nhiều thời gian hơn cho công tác chuyên môn', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(26, 2, '2', 0, 1, '', 0, 1607672219, 1607672219, 1, 3, 1607672340, 0, 2, 'Tăng cường ứng dụng CNTT trong quản lý chuyên môn trường mầm non', 'tang-cuong-ung-dung-cntt-trong-quan-ly-chuyen-mon-truong-mam-non', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(29, 2, '2', 0, 1, '', 0, 1607672756, 1607672807, 1, 5, 1607672700, 0, 2, 'Cần một cách nhìn khác về “vá lỗ hổng bảo mật”', 'can-mot-cach-nhin-khac-ve-va-lo-hong-bao-mat', 'Mới đây, trong cuộc trao đổi với phóng viên ICTnews, ông Ngô Việt Khôi cho biết, các chuyên gia an ninh mạng thống kê được 74% các cuộc tấn công thành công ngay trong ngày đầu tiên lỗ hổng được công bố, trong khi bản vá chính hãng cần trung bình 30-45 ngày để phát hành. Khoảng thời gian hệ thống dễ bị tổn thương nhất, được gọi là zero-day.', 'http://image1.ictnews.vn/_Files/2016/04/07/NgoVietKhoi.jpg', '', 3, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_10`
--

CREATE TABLE `nv4_vi_news_10` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_10`
--

INSERT INTO `nv4_vi_news_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(31, 10, '10', 0, 1, '', 0, 1607672981, 1607672981, 1, 7, 1607672880, 0, 2, 'Hải Phòng&#x3A; Ký kết và triển khai công nghệ thông tin trong GD-ĐT', 'hai-phong-ky-ket-va-trien-khai-cong-nghe-thong-tin-trong-gd-dt', 'GD&TĐ - Sáng 23/8, Sở GD&ĐT Hải Phòng cùng đại diện các Vụ, Cục của Bộ GD&ĐT cùng ký kết và triển khai các dự án để phát triển giáo dục và đào tạo thành phố Hải Phòng giai đoạn 2020-2025.', '2020_12/tin-01-1.1.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(32, 10, '10', 0, 1, '', 0, 1607673039, 1607673039, 1, 8, 1607672940, 0, 2, 'Bắc Kạn&#x3A; Đẩy mạnh số hóa dữ liệu trong giáo dục', 'bac-kan-day-manh-so-hoa-du-lieu-trong-giao-duc', 'GD&TĐ - Mặc dù là một tỉnh miền núi với điều kiện còn khó khăn hạn chế, trong những năm gần đây, Bắc Kạn đã triển khai số hóa toàn bộ dữ liệu của học sinh, giáo viên, các nhà trường, đem lại những tiện ích và hiệu quả rõ rệt. Bắc Kạn: Đẩy mạnh số hóa dữ liệu trong giáo dục', '2020_12/tin-02-1.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(33, 10, '10', 0, 1, '', 0, 1607673168, 1607916742, 1, 9, 1607673060, 0, 2, 'Hải Phòng&#x3A; Chuyển đổi số góp phần nâng cao chất lượng giáo dục', 'hai-phong-chuyen-doi-so-gop-phan-nang-cao-chat-luong-giao-duc', 'GD&TĐ - Hải Phòng là địa phương đi đầu trong việc chuyển đổi số, ứng dụng CNTT góp phần nâng cao chất lượng giáo dục và đào tạo.', '2020_12/tin-bai-01_1.jpg', 'Điểm cầu Hải Phòng tại Hội nghị toàn quốc tổng kết năm học 2019-2020, triển khai nhiệm vụ năm học 2020-2021 và những năm tiếp theo.', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_11`
--

CREATE TABLE `nv4_vi_news_11` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_11`
--

INSERT INTO `nv4_vi_news_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(34, 11, '11', 0, 1, '', 0, 1607674242, 1607674308, 1, 10, 1607674200, 0, 2, 'Triển lãm công nghệ giáo dục BESS Vietnam 2019 đã sẵn sàng', 'trien-lam-cong-nghe-giao-duc-bess-vietnam-2019-da-san-sang', '', '', '', 0, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(35, 11, '11', 0, 1, '', 0, 1607674411, 1607855380, 1, 11, 1607674260, 0, 2, 'Chính thức ra mắt nền tảng công nghệ giáo dục số', 'chinh-thuc-ra-mat-nen-tang-cong-nghe-giao-duc-so', 'GDVN- Nền tảng giáo dục số - iGiaoduc.vn là sản phẩm hợp tác giữa Bộ Giáo dục và Đào tạo, Ban điều hành Đề án Hệ tri thức Việt số hóa và các đối tác tài trợ.', 'https://e-ict.gov.vn/uploads/news/2020_10/1-737.jpg', '', 3, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_14`
--

CREATE TABLE `nv4_vi_news_14` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_14`
--

INSERT INTO `nv4_vi_news_14` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(36, 14, '14', 0, 1, '', 0, 1607674521, 1607855375, 1, 12, 1607674440, 0, 2, 'Dạy học trực tuyến&#x3A; Nỗ lực và quyết tâm từ những địa phương khó khăn', 'day-hoc-truc-tuyen-no-luc-va-quyet-tam-tu-nhung-dia-phuong-kho-khan', 'Ngày 16/4, Thứ trưởng Nguyễn Hữu Độ chủ trì họp trực tuyến với 19 Sở Giáo dục và Đào tạo (GDĐT) thuộc các vùng khó khăn về việc triển khai hoạt động dạy học từ xa qua internet và truyền hình; đồng thời chuẩn bị các điều kiện để sẵn sàng khi học sinh đi học trở lại.', '2020_12/16_4_thu-truong-nguyen-huu-do-1.jpg', 'Thứ trưởng Nguyễn Hứu Độ chù trì cuộc họp trực tuyến với 19 Sở GDĐT ngày 16&#x002F;4', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(37, 14, '14', 0, 1, '', 0, 1607674573, 1607855370, 1, 13, 1607674500, 0, 2, 'Đại học tiên phong đẩy mạnh chuyển đổi số giáo dục', 'dai-hoc-tien-phong-day-manh-chuyen-doi-so-giao-duc', 'Ngày 17/4, Thứ trưởng Nguyễn Văn Phúc chủ trì Hội nghị “Đào tạo trực tuyến của giáo dục đại học trong đại dịch Covid-19”. Hội nghị được kết nối tới hơn 300 điểm cầu gồm các cơ sở giáo dục đại học (GDĐH), nhà cung cấp công nghệ, dịch vụ hạ tầng kỹ thuật hàng đầu của Việt Nam và thế giới.', '2020_12/img-0033-1.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(39, 14, '14', 0, 1, '', 0, 1607674656, 1607855356, 1, 15, 1607674620, 0, 2, 'Tiên phong chuyển đổi số thu hẹp khoảng cách tiếp cận giáo dục ASEAN', 'tien-phong-chuyen-doi-so-thu-hep-khoang-cach-tiep-can-giao-duc-asean', 'Ngày 15/10/2020, Bộ Giáo dục và Đào tạo (GDĐT) phối hợp với Quỹ Nhi đồng Liên Hợp quốc (UNICEF) và Ban Thư ký Hiệp hội các quốc gia Đông Nam Á (ASEAN) tổ chức “Hội nghị ASEAN - UNICEF về Chuyển đổi kỹ thuật số các hệ thống giáo dục trong toàn ASEAN”.', 'https://e-ict.gov.vn/uploads/news/2020_10/tb2-01.jpg', '', 3, 1, '4', 1, 0, 7, 0, 0, 0, 0, '', 0),
(38, 14, '14', 0, 1, '', 0, 1607674620, 1607916710, 1, 14, 1607674560, 0, 2, 'Trường học thay đổi để thích ứng trong thời đại số', 'truong-hoc-thay-doi-de-thich-ung-trong-thoi-dai-so', 'Thời gian qua, giáo dục trực tuyến trở thành hình thức học tập được nhắc tới nhiều nhất. Chỉ trong thời gian ngắn, các bài giảng trực tuyến đã và đang tạo ra những thay đổi lớn đến việc dạy-học của giáo viên và học sinh. Điều này cũng đem đến những cơ hội lớn cho ngành giáo dục với những bước chuyển tích cực để xây dựng môi trường học tập hiện đại, đáp ứng cuộc Cách mạng công nghiệp (CMCN) 4.0.', '', '', 0, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_admins`
--

CREATE TABLE `nv4_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `catid` smallint(5) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `pub_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0,
  `app_content` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block`
--

CREATE TABLE `nv4_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block`
--

INSERT INTO `nv4_vi_news_block` (`bid`, `id`, `weight`) VALUES
(2, 33, 7),
(2, 31, 9),
(2, 29, 11),
(2, 26, 13),
(2, 30, 10),
(2, 24, 14),
(2, 23, 15),
(2, 28, 12),
(2, 32, 8),
(2, 34, 6),
(2, 35, 5),
(2, 36, 4),
(2, 37, 3),
(2, 38, 2),
(2, 39, 1),
(3, 39, 5),
(3, 33, 1),
(3, 37, 4),
(3, 36, 3),
(3, 35, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block_cat`
--

CREATE TABLE `nv4_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT 0,
  `numbers` smallint(5) NOT NULL DEFAULT 10,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block_cat`
--

INSERT INTO `nv4_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445),
(3, 0, 4, 'Điểm tin nhanh', 'diem-tin-nhanh', '', '', 3, '', 1607488576, 1607488576);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_cat`
--

CREATE TABLE `nv4_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT 0,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sort` smallint(5) NOT NULL DEFAULT 0,
  `lev` smallint(5) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT 0,
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT 3,
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT 2,
  `featured` int(11) NOT NULL DEFAULT 0,
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_cat`
--

INSERT INTO `nv4_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Cục CNTT', '', 'cuc-cntt', '', '', '', 0, 1, 1, 0, 'viewcat_page_new', 0, '', 4, 0, 0, '', '', '', 1274986690, 1607657691, '6', 1),
(2, 0, 'Kinh nghiệm ứng dụng CNTT', '', 'itc', '', '', '', 0, 2, 2, 0, 'viewcat_page_new', 0, '', 4, 0, 0, '', '', '', 1274986705, 1607658274, '6', 1),
(10, 0, 'Tin địa phương', '', 'tin-dia-phuong', '', '', '', 0, 3, 3, 0, 'viewcat_page_new', 0, '', 4, 0, 0, '', '', '', 1274987460, 1607658307, '6', 1),
(11, 0, 'đề án 117', '', 'de-an-117-14', '', '', '', 0, 4, 4, 0, 'viewcat_page_new', 0, '', 4, 0, 0, '', '', '', 1274987538, 1607658466, '6', 1),
(14, 0, 'tin cntt trong gdđt', '', 'tin-cntt-trong-gddt', '', '', '', 0, 5, 5, 0, 'viewcat_page_new', 0, '', 4, 0, 0, '', '', '', 1607658566, 1607658566, '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_config_post`
--

CREATE TABLE `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_config_post`
--

INSERT INTO `nv4_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_detail`
--

CREATE TABLE `nv4_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT 1,
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_send` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_print` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_detail`
--

INSERT INTO `nv4_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(28, '', '', '<br />\r\nPhát biểu tại hội thảo, Cục trưởng Nguyễn Sơn Hải đã nhấn mạnh định hướng phát triển ứng dụng Công nghệ Thông tin (CNTT) giai đoạn 2020 - 2025 là: Hoàn thành mục tiêu xây dựng Chính phủ số; Chính phủ vận hành trên nền tảng dữ liệu lớn, cung cấp các dịch vụ thông minh, trí tuệ nhân tạo.<br />\r\n<br />\r\nHướng tới mục tiêu trên, Bộ Giáo dục và Đào tạo (GDĐT) đã triển khai ứng dụng CNTT đối với các cấp giáo dục phổ thông, mầm non và đại học; đồng thời phát huy CNTT trong mọi mặt, từ hoạt động quản lý, điều hành cho tới đổi mới nội dung, phương pháp dạy - học,..v.v..<br />\r\n<br />\r\nNằm trong khuôn khổ chương trình hội thảo, đại diện cơ quan quản lý, các cơ sở giáo dục và doanh nghiệp công nghệ đã đưa ra 8 bài tham luận hướng tới chủ đề chuyển đổi số trong ngành giáo dục nhằm nâng cao hiệu quả giảng dạy và học tập tại Việt Nam.<br />\r\n<br />\r\nCụ thể, các cơ sở giáo dục chia sẻ những kinh nghiệm trong việc ứng dụng công nghệ thông tin vào trường học, đồng thời bày tỏ những quan điểm độc đáo khi nhìn nhận về hoạt động chuyển đổi số trong lĩnh vực giáo dục. Bên cạnh đó, đại diện nhà trường cũng nêu ra những khó khăn, thách thức và các giải pháp, kiến nghị đề xuất nhằm xây dựng môi trường giáo dục 4.0.<br />\r\n<br />\r\nVề phía công ty công nghệ, đại diện những doanh nghiệp uy tín giới thiệu những giải pháp thông minh nhằm hỗ trợ cơ sở giáo dục và cơ quan quản lý tiến hành chuyển đổi số một cách hiệu quả và phù hợp nhất.<br />\r\n&nbsp;<br />\r\nTại hội thảo, các đại biểu đã có những trao đổi, tham luận thẳng thắn, đánh giá đúng thực trạng, đồng thời nêu lên những vướng mắc và xây dựng ý kiến nhằm hướng đến nâng cao chất lượng hệ sinh thái giáo dục trực tuyến tại Việt Nam.', 'Bộ Giáo dục và Đào tạo, cục công nghệ thông tin, chuyển đổi số ngành giáo dục', '', '', 2, '', 0, 1, 1, 1),
(37, '', '', '<strong>Khi giải pháp tình thế trở thành xu thế</strong><br />\r\n<br />\r\nPhát biểu mở đầu Hội nghị, Thứ trưởng Nguyễn Văn Phúc nhấn mạnh, ứng dụng CNTT nhằm nâng cao chất lượng đào tạo, thúc đẩy xây dựng xã hội học tập và học tập suốt đời là xu thế của giáo dục thế giới. Tại Việt Nam, việc triển khai đào tạo từ xa theo phương thức đào tạo trực tuyến trong hệ thống GDĐH đã có chủ trương, kế hoạch và lộ trình từ trước.<br />\r\n<br />\r\nTrước đây, một số trường đại học đã chủ động triển khai đào tạo trực tuyến kết hợp với đào tạo tập trung truyền thống. Dịch bệnh Covid-19 diễn biến phức tạp khiến 192 quốc gia và vùng lãnh thổ đã phải đóng cửa trường học, trong đó có Việt Nam. Lúc này, vai trò của đào tạo từ xa, đào tạo trực tuyến để “không thể dừng việc học” được nhìn nhận rõ ràng hơn bao giờ hết. “Giai đoạn khó khăn là thời cơ cho chúng ta chuyển đổi số mạnh mẽ trong giáo dục và GDĐH đi đầu thực hiện nhiệm vụ này” - Thứ trưởng Nguyễn Văn Phúc khẳng định.<br />\r\n<br />\r\nTheo số liệu báo cáo của PGS.TS Nguyễn Thu Thủy, Quyền Vụ trưởng Vụ GDĐH, đến nay, khoảng 110/240 cơ sở giáo dục đại học đã triển khai đào tạo trực tuyến, với các cấp độ &nbsp;khác nhau. Do đặc thù, nhiều trường thuộc khối văn hóa nghệ thuật chưa tổ chức đào tạo trực tuyến và 33 trường thuộc nhóm quốc phòng - an ninh đang đào tạo tập trung.<br />\r\n<br />\r\nMột số trường gặp khó khăn do chưa kịp chuẩn bị, nhưng đa số cơ sở GDĐH đang dần dịch chuyển từ thế bị động ban đầu sang thế chủ động và tính đến những kịch bản lâu dài hơn. Qua giai đoạn thử thách này, các cơ sở đào tạo được nâng cao nhận thức về đào tạo trực tuyến và tái cấu trúc đội ngũ cán bộ giảng viên. Đây cũng là cơ hội để GDĐH tăng cường hợp tác với tập đoàn, doanh nghiệp ICT quốc gia, đa quốc gia.<br />\r\n<br />\r\nÔng Nguyễn Sơn Hải, Cục trưởng Cục CNTT, Bộ GDĐT cho biết, đến nay có 11 tập đoàn ICT đã tham gia hỗ trợ ngành giáo dục triển khai đào tạo trực tuyến. Với lợi thế về hạ tầng công nghệ, các doanh nghiệp đã, đang và sẽ đồng hành tháo gỡ khó khăn về hạ tầng, giải pháp phần mềm và cước truy cập Internet.<br />\r\n<br />\r\nNgay trong giai đoạn đầu của dịch bệnh, Trường Đại học Kinh tế Quốc dân đã nhanh chóng tổ chức đào tạo trực tuyến, cung cấp toàn bộ bài giảng giáo trình của trường dưới dạng học liệu số. TS. Lê Việt Thủy - Giám đốc Trung tâm ứng dụng CNTT, Trường Đại học Kinh tế Quốc dân cho rằng, những hỗ trợ từ các doanh nghiệp vào giai đoạn hiện nay cần được tích hợp với hệ thống đang được triển khai và giảm chi phí cho những những phần mềm đã sử dụng”.<br />\r\n<br />\r\nHiệu trưởng Trường Đại học Bách khoa Hà Nội Hoàng Minh Sơn chia sẻ, Trường Đại học Bách khoa Hà Nội sẽ ứng dụng trí tuệ nhân tạo để cá nhân hóa trong đào tạo trực tuyến. “Bộ GDĐT nên hợp tác với Bộ TTTT để có kế hoạch chuyển đổi số thực sự. Trường Đại học Bách khoa Hà Nội sẵn sàng đi đầu trong công cuộc này” - &nbsp;PGS TS Hoàng Minh Sơn đề xuất.<br />\r\n<br />\r\nĐể hợp tác giữa cơ sở giáo dục và doanh nghiệp ICT đạt hiệu quả, đại diện Đại học Quốc gia TP HCM đề xuất cần cụ thể hóa những cam kết của doanh nghiệp ICT thành các gói sản phẩm cụ thể, hỗ trợ tối đa các trường tùy đặc thù từng đơn vị. GS Nguyễn Trọng Hoài - Phó Hiệu trưởng Trường Đại học Kinh tế TP HCM thì cho rằng, các doanh nghiệp cung cấp gói dịch vụ cloud nên giảm giá khoảng 40-50% cho các trường.<br />\r\n<br />\r\n<strong>Mong muốn xây dựng kho học liệu mở</strong><br />\r\n<br />\r\nPGS Nguyễn Thu Thủy, Quyền Vụ trưởng Vụ GDĐH cho rằng, muốn chuyển đổi số, các trường phải cùng phát triển học liệu điện tử và học liệu, trao đổi kinh nghiệm thực tiễn, tăng cường hợp tác quốc tế trong lĩnh vực đào tạo trực tuyến. Tài nguyên mở sẽ được phân phối trên mạng thông tin, giúp mọi đối tượng tiếp cận tri thức. Có kho học liệu mở thì dù ở đâu, thời gian nào, có bị cách ly xã hội như hiện nay hay không, việc học tập cũng không bị “cách ly” với xu hướng phát triển của thế giới.<br />\r\n<br />\r\nTheo TS Trương Tiến Tùng, Hiệu trưởng Trường Đại học Mở Hà Nội, có 3 yếu tố chính trong đào tạo trực tuyến, trong đó nhân lực phát triển học liệu là hết sức quan trọng. Vì vậy, cần hợp tác mạnh mẽ hơn giữa các trường trong xây dựng học liệu điện tử, khóa học. &nbsp;PGS Nguyễn Minh Hà, Hiệu trưởng Trường Đại học Mở TP HCM cũng cho rằng, để có mô hình đào tạo trực tuyến hoàn toàn cần chương trình hoàn chỉnh, kho học liệu sẵn sàng và áp dụng phương pháp sư phạm phù hợp với đào tạo trực tuyến.<br />\r\n<br />\r\nKho học liệu mở cũng được đại diện Bộ Khoa học và Công nghệ thông tin tại Hội nghị khi chia sẻ về Đề án Hệ tri thức Việt số hóa do Chính phủ phê duyệt năm 2017. Đề án đã tập hợp 300 nhà khoa học, chủ yếu đến từ các trường đại học, cùng làm việc trực tuyến trong dịch bệnh Covid-19 để phân tích thông tin, đưa ra mô hình nguy cơ, cung cấp dữ liệu, hỗ trợ quá trình ra quyết định của Chính phủ.<br />\r\n<br />\r\nThực tế hiện nay, nhiều trường đại học hàng đầu thế giới đã mở kho học liệu hoặc một phần kho học liệu điện tử để bất kỳ ai cũng có thể sử dụng. Tại Việt Nam, nếu các cơ sở GDĐH sẵn sàng chia sẻ kinh nghiệm, tài nguyên, cùng xây dựng kho học liệu mở thì đây sẽ là kho học liệu điện tử lớn nhất trong lịch sử đất nước.<br />\r\n<br />\r\nPGS Hoàng Minh Sơn, Hiệu trưởng Trường Đại học Bách khoa Hà Nội tin tưởng, sự chia sẻ tài nguyên của các trường đại học sẽ thực hiện được, từ đó hình thành chuỗi giá trị chung. “Chúng tôi sẵn sàng chia sẻ mô hình học tập trực tuyến của trường” - GS.TS Lê Anh Phương, Hiệu trưởng trường ĐH Sư phạm - ĐH Huế khẳng định.<br />\r\n<br />\r\n<strong>&nbsp;Bộ GDĐT nỗ lực hoàn thiện hành lang pháp lý</strong><br />\r\n<br />\r\nThách thức, hạn chế trong đào tạo trực tuyến xoay quanh hạ tầng công nghệ; quy trình, kinh nghiệm của các cơ sở đào tạo; kỹ năng dạy học trên môi trường mạng của giảng viên, sinh viên. Bên cạnh đó, giảng viên, sinh viên có thể đối diện với một số rủi ro về an toàn, an ninh thông tin cùng những nguy cơ tiềm ẩn từ Internet và mạng xã hội.<br />\r\n<br />\r\nTrong thời gian tới, Bộ GDĐT tiếp tục ban hành những văn bản để hoàn thiện hành lang pháp lý cho đào tạo trực tuyến. Trong đó, xem xét đưa phương thức đào tạo trực tuyến vào quy chế đào tạo đại học sửa đổi với tỷ lệ phần trăm thích hợp. Bộ cũng sẽ sớm ban hành quy chế bảo đảm chất lượng các chương trình đào tạo từ xa và xây dựng đề án phát triển đào tạo từ xa cho giai đoạn tiếp theo. Đồng thời, tiếp tục thúc đẩy kết nối để GDĐH và doanh nghiệp hợp tác tốt hơn trong tương lai.<br />\r\n<br />\r\n“Về phía các cơ sở GDĐH, cần xác định rõ mục tiêu, nhu cầu, khả năng, từ đó chủ động hợp tác với doanh nghiệp và đầu tư hợp lý cho đào tạo trực tuyến. Lãnh đạo các trường nhân cơ hội này huy động cả bộ máy đồng lòng, đồng sức, đẩy mạnh thực hiện chuyển đổi số trong giáo dục, thực chất là cuộc cách mạng công nghiệp lần thứ tư trong giáo dục” - Thứ trưởng Nguyễn Văn Phúc yêu cầu.<br />\r\n<br />\r\nĐánh giá cao trách nhiệm xã hội của doanh nghiệp, Thứ trưởng đề nghị các doanh nghiệp ICT thực hiện cam kết trong thời gian nhanh nhất. Theo Thứ trưởng, cơ hội thực hiện chuyển đổi số trong giáo dục mở ra cơ hội đầu tư rất lớn cho doanh nghiệp.<br />\r\n<br />\r\nThứ trưởng Nguyễn Văn Phúc giao Cục CNTT phối hợp với Bộ Thông tin và Truyền thông giám sát quá trình thực hiện cam kết của doanh nghiệp ICT. Đại diện Bộ Thông tin và Truyền thông đề nghị các cơ sở GDĐH và doanh nghiệp kịp thời báo cáo những vướng mắc để hai Bộ có giải pháp tháo gỡ, hỗ trợ.', '', '', '', 2, '', 0, 1, 1, 1),
(38, '', '', '<br />\r\nNhắc tới ưu thế của CNTT, tôi muốn dẫn chứng từ kho bài giảng e-Learning mà Bộ GD&amp;ĐT xây dựng được trong 10 năm qua. Tôi nhớ vào năm 2010, khi bộ bắt đầu phổ biến, tập huấn cho giáo viên dạy học trên nền tảng e-Learning, không ít giáo viên bày tỏ hoài nghi về tính khả thi của hình thức giáo dục này. Nhưng sau 7 năm, từ năm 2010 đến 2017, Bộ GD&amp;ĐT phát động và triển khai Cuộc thi quốc gia Thiết kế bài giảng e-Learning, tỷ lệ không nhỏ giáo viên đã hiểu và có thể soạn được bài giảng e-Learning. Việc số hóa bài giảng mang lại cho giáo viên cơ hội trau dồi, nâng cao kỹ năng ứng dụng CNTT trong dạy học. Đặc biệt, kho bài giảng e-Learning xây dựng từ cuộc thi đã góp phần mở rộng không gian học tập cho người học ngoài lớp học truyền thống, nhất là trong thời gian qua, khi mà các trường học thực hiện việc giãn cách xã hội theo chủ trương của Thủ tướng Chính phủ để phòng, chống dịch Covid-19.<br />\r\n<br />\r\nThực tế cho thấy, khi học sinh không đến trường thì giải pháp dạy học trực tuyến là tối ưu để có thể duy trì việc học tập cho học sinh. Đặc biệt, trong bối cảnh cuộc CMCN 4.0 đang tác động mạnh mẽ ở mọi lĩnh vực, trong đó có GD&amp;ĐT thì giáo dục trực tuyến là xu thế tất yếu trong giáo dục hiện đại.<br />\r\n<br />\r\n<strong>PV:</strong>&nbsp;<em>Vậy việc dạy học truyền thống tới đây sẽ thay đổi như thế nào để thích ứng với cuộc CMCN 4.0, thưa ông?</em><br />\r\n<br />\r\n<strong>Ông Nguyễn Sơn Hải:</strong>&nbsp;Trong giai đoạn học sinh phải nghỉ học kéo dài để phòng, chống dịch Covid-19, dạy học trực tuyến đã thể hiện những ưu điểm vượt trội. Trên nền tảng công nghệ, nhiều trường đã tổ chức các lớp học trực tuyến với chất lượng và hiệu quả rất cao, từ việc dạy bài mới, giao nhiệm vụ học tập, quản lý lớp học đến kiểm tra, đánh giá kết quả học tập. Mô hình “lớp học ảo” đã mang lại thuận tiện cho người học, đáp ứng nhu cầu học ở bất kỳ đâu, bất kỳ lúc nào khi công nghệ truyền thông được kết nối. Rất nhiều giáo viên, học sinh đã kịp chuyển đổi từ mô hình dạy học truyền thống sang dạy và học trực tuyến.<br />\r\n<br />\r\nĐây cũng là cơ hội để ngành giáo dục đẩy nhanh tốc độ chuyển đổi số trong các hoạt động dạy và học, nghĩa là chuyển đổi từ một mô hình dạy học truyền thống thuần túy sang mô hình dạy học trên nền tảng số. Phải khẳng định, trong giáo dục phổ thông, dạy học trực tuyến không thể thay thế được phương pháp dạy học truyền thống. Tuy nhiên, với những gì ngành giáo dục đã và đang làm được trong thời điểm dịch Covid-19, dạy học trực tuyến sẽ tiếp tục được đẩy mạnh, duy trì triển khai lồng ghép với dạy học truyền thống theo mô hình dạy học kết hợp (blended learning), thích ứng với nền tảng công nghệ của CMCN 4.0.<br />\r\n<br />\r\n<strong>PV:</strong>&nbsp;<em>Bộ GD&amp;ĐT đã đề ra những giải pháp nào để đẩy nhanh tốc độ chuyển đổi số trong hoạt động giáo dục thời gian tới?</em><br />\r\n<br />\r\n<strong>Ông Nguyễn Sơn Hải:</strong>&nbsp;Hiện nay, ngành giáo dục đã và đang có những bước chuyển mạnh mẽ trên cơ sở ứng dụng các công nghệ mới của cuộc CMCN 4.0. Cụ thể là ngành đã xây dựng được cơ sở dữ liệu của ngành (big data) nhằm đẩy mạnh ứng dụng CNTT trong các hoạt động quản lý giáo dục. Cơ sở dữ liệu này đã số hóa thông tin của gần 53.000 trường học từ mầm non đến THPT, với gần 25 triệu học sinh và 1,5 triệu cán bộ, giáo viên, nhân viên trong ngành. Tất cả những đối tượng trong phạm vi quản lý của ngành đều được số hóa bằng mã định danh. Đây là nền tảng dữ liệu số hóa quan trọng để ngành giáo dục triển khai đồng bộ, có hiệu quả các giải pháp Chính phủ điện tử, hướng đến vận hành theo mô hình Chính phủ số đến năm 2025.<br />\r\n<br />\r\nTrong thời gian phòng, chống dịch Covid-19 vừa qua, ngành giáo dục đã tìm cơ hội trong khó khăn để nhà trường, giáo viên và học sinh kịp thời, thích nghi chuyển đổi số trong các hoạt động dạy học và kiểm tra đánh giá thông qua hình thức trực tuyến. Đồng thời, Bộ trưởng Bộ GD&amp;ĐT đã chỉ đạo các đơn vị tập trung xây dựng và nhanh chóng ban hành các quy định về mô hình dạy học trực tuyến trong trường phổ thông, kèm theo các hướng dẫn về quy trình tổ chức dạy học trực tuyến, khung quy chế quản lý tổ chức dạy học trực tuyến... tạo hành lang pháp lý, hướng dẫn cụ thể để các địa phương, nhà trường tổ chức triển khai phương thức dạy học trực tuyến đi vào thực chất hơn, hiệu quả hơn.<br />\r\n<br />\r\n<strong>PV:</strong>&nbsp;<em>Ông đánh giá như thế nào về vai trò của đội ngũ giáo viên trong quá trình chuyển đổi số?</em><br />\r\n<br />\r\n<strong>Ông Nguyễn Sơn Hải:</strong>&nbsp;Nguồn nhân lực triển khai chuyển đổi số có vai trò đặc biệt quan trọng. Tới đây, môn Tin học sẽ được đưa vào học bắt buộc đối với học sinh từ lớp 3. Một trong 3 mạch nội dung chính của môn Tin học là khoa học máy tính với nhiều công nghệ mới của CMCN 4.0 được phổ biến tới học sinh. Việc lồng ghép đưa vào dạy học các kiến thức, kỹ năng về chuyển đổi số trong nhà trường cũng được Bộ GD&amp;ĐT chỉ đạo thực hiện với mục tiêu hình thành một nguồn nhân lực có kỹ năng số, hướng đến xây dựng một thế hệ “công dân số” cho đất nước.<br />\r\n<br />\r\nĐội ngũ giáo viên cũng phải thay đổi để có thể thích ứng, làm việc trong môi trường số. Công nghệ số sẽ được áp dụng vào mọi hoạt động liên quan tới nghiệp vụ của nhà giáo, như: Sổ liên lạc điện tử, sổ điểm điện tử, học bạ điện tử, giáo án điện tử, bài giảng điện tử, sách điện tử, lớp học ảo… Do vậy, đội ngũ giáo viên phải đi tiên phong trong chuyển đổi số, thường xuyên trau dồi, bồi dưỡng nghiệp vụ, các kỹ năng ứng dụng công nghệ 4.0 và các công nghệ khác để hoàn thành tốt nhiệm vụ, chức trách của mình với tinh thần: Làm chủ được công nghệ, sử dụng công nghệ hiệu quả và không bị lạm dụng công nghệ.<br />\r\n<br />\r\n<strong>PV:</strong>&nbsp;<em>Trân trọng cảm ơn ông!</em><br />\r\n<strong>(Theo Quân đội Nhân dân)</strong>', '', '', '', 2, '', 0, 1, 1, 1),
(39, '', '', '<br />\r\n<strong>Chung tay xây dựng một bộ tiêu chuẩn kỹ năng số</strong><br />\r\n<br />\r\nĐây là sự kiện nằm trong khuôn khổ các hoạt động năm Việt Nam làm Chủ tịch ASEAN và trong bối cảnh ngành Giáo dục các nước ASEAN đang cố gắng đối phó với COVID-19, đảm bảo cho mọi học sinh được an toàn và không bị gián đoạn việc học.<br />\r\n<br />\r\nHội nghị phù hợp với chủ đề năm Chủ tịch ASEAN 2020 “Gắn kết và chủ động thích ứng”, với một trong năm trọng tâm ưu tiên là “thúc đẩy phát triển thịnh vượng trên cơ sở liên kết và kết nối khu vực, nâng cao khả năng thích ứng, tận dụng cơ hội của Cách mạng công nghiệp 4.0”.<br />\r\n&nbsp;<br />\r\n<img alt=\"tb2 01\" height=\"400\" src=\"https://e-ict.gov.vn/uploads/news/2020_10/tb2-01.jpg\" width=\"600\" /><br />\r\n<em>Bộ trưởng Phùng Xuân Nhạ chủ trì Hội nghị AIPA</em><br />\r\nPhát biểu khai mạc, Bộ trưởng Bộ GDĐT Phùng Xuân Nhạ cho biết, hơn hai tháng trước, Hội nghị AIPA với chủ đề “Đối tác nghị viện về hợp tác giáo dục và văn hóa” đã kết luận ưu tiên cấp bách hàng đầu hiện nay là phải đổi mới giáo dục thông qua chuyển đổi kỹ thuật số để giảm thiểu gián đoạn giáo dục trong tương lai.<br />\r\n<br />\r\nBộ trưởng đề nghị: “Tại Hội nghị này, chúng ta với tư cách là những người tiên phong sẽ cùng thảo luận, trao đổi cách thức làm thế nào để hình thành sáng kiến kết nối được công nghệ và ý tưởng tốt”.<br />\r\n<br />\r\nHọc sinh và giáo viên cần được tiếp cận không hạn chế ứng dụng công nghệ thông tin để kết nối, khai thác, tận dụng tri thức của nhân loại. Vì vậy, nhiệm vụ của Bộ trưởng Giáo dục ASEAN là tạo điều kiện thuận lợi cho tiến trình này, đồng thời thiết lập một nền tảng chung để chia sẻ tài nguyên kỹ thuật số, nhằm thu hẹp khoảng cách tiếp cận giáo dục do chênh lệch công nghệ trong khu vực gây ra.<br />\r\n<br />\r\nĐể kết nối giáo dục khu vực bền vững, Bộ trưởng cho rằng, cần thúc đẩy chia sẻ kiến thức, trao đổi kinh nghiệm, hiểu biết lẫn nhau, huy động linh hoạt, phân bổ hiệu quả nguồn lực trong khu vực.<br />\r\n<br />\r\nBộ trưởng cũng nhấn mạnh tính cấp thiết của hạ tầng công nghệ, hệ thống giải pháp số đồng bộ trên cơ sở của phát triển công nghệ hiện nay. Đây là cách các Bộ trưởng Giáo dục có thể xây dựng tinh thần trách nhiệm cộng đồng cũng như tầm nhìn khu vực.<br />\r\n<br />\r\nĐể áp dụng công nghệ rộng rãi và có hệ thống, Bộ trưởng Bộ GDĐT Việt Nam kêu gọi các Bộ trưởng Giáo dục ASEAN cùng chung tay xây dựng một bộ tiêu chuẩn kỹ năng số thống nhất trong khu vực, hướng tới hình thành một khung năng lực số được các nước thành viên công nhận.<br />\r\n<br />\r\nBộ kỹ năng này rất có giá trị, giúp thúc đẩy năng lực sáng tạo vượt ra ngoài môi trường lớp học hoặc trường học thông thường. Vì vậy, nâng cao kỹ năng số, mở rộng khả năng tiếp cận thế giới số của học sinh phải là ưu tiên hàng đầu, ngay từ cấp học đầu tiên.<br />\r\n<br />\r\nKết nối này được kỳ vọng sẽ tạo ra một tương lai cho tất cả người dân ASEAN, ở mọi lứa tuổi trẻ hay già. “Chúng ta muốn cuộc sống trở nên tốt đẹp hơn và chúng ta có trong tay những gì cần thiết để thực hiện được tầm nhìn này - đó là việc chia sẻ kinh nghiệm về năng lực kỹ thuật số, kết hợp các nguồn lực để cùng tạo ra bước nhảy vọt”, Bộ trưởng Phùng Xuân Nhạ nhấn mạnh.<br />\r\n<br />\r\n<strong>Bộ trưởng Giáo dục ASEAN đồng thuận nỗ lực “xoá mù” công nghệ</strong><br />\r\n<br />\r\nTrực tiếp tham dự Hội nghị có đại diện 10 Đại sứ quán các nước ASEAN tại Việt Nam, UNICEF Việt Nam, UNESCO Việt Nam, các trường đại học tại Hà Nội và các đối tác công nghệ liên quan. Tham gia trực tuyến có Bộ trưởng Giáo dục và các quan chức cấp cao của 10 nước ASEAN; Ban thư ký ASEAN, UNICEF khu vực, UNESCO khu vực, đại diện trường đại học Harvard, đại diện các đối tác công nghệ liên quan khác.<br />\r\n&nbsp;<br />\r\n<img alt=\"tb2 02\" height=\"400\" src=\"https://e-ict.gov.vn/uploads/news/2020_10/tb2-02.jpg\" width=\"600\" /><br />\r\n<em>Toàn cảnh Hội nghị ASEAN - UNICEF về Chuyển đổi kỹ thuật số các hệ thống<br />\r\ngiáo dục trong toàn ASEAN</em><br />\r\nBà Rana Flowers, Trưởng Đại diện của UNICEF tại Việt Nam cho biết: “Tôi ấn tượng với những nỗ lực và phản ứng rất nhanh của Bộ GDĐT Việt Nam. Tôi cũng rất tự hào về những nỗ lực của ngành GDĐT Việt Nam trong việc đảm bảo duy trì việc học tập của trẻ em khi trường học đóng cửa trong đại dịch COVID-19, đặt ưu tiên cho an toàn của trẻ em lên hàng đầu; đồng thời, có những hỗ trợ kịp thời để đảm bảo sức khoẻ thể chất và tinh thần cho trẻ em khi quay lại trường học”.<br />\r\n<br />\r\nTrong khuôn khổ Hội nghị, các đại biểu đã đánh giá cao sáng kiến tổ chức Hội nghị này của Bộ GDĐT Việt Nam, đồng thời, chia sẻ nhiều vấn đề quan trọng.<br />\r\n<br />\r\nTrong đó, nêu rõ những cơ hội và thách thức hiện hữu của hệ thống giáo dục trong việc thúc đẩy phát triển kỹ năng số và kỹ năng chuyển đổi số, cũng như kinh nghiệm và giải pháp trong việc bảo vệ trẻ em khỏi các lạm dụng, ảnh hưởng xấu trên mạng.<br />\r\n<br />\r\nTừ chia sẻ kinh nghiệm và thách thức, Hội nghị thiết lập đồng thuận giữa các quốc gia thành viên ASEAN để tìm ra giải pháp bền vững, sáng tạo, nhằm tích hợp kỹ năng thông thạo kỹ thuật số cùng kỹ năng có thể chuyển giao trong các hệ thống giáo dục.&nbsp;<br />\r\n<br />\r\nNhững giải pháp nhằm huy động sự phối hợp liên ngành, bao gồm hợp tác với các đối tác tư nhân, mở rộng quy mô cho việc học tập những kỹ năng số và thu hẹp khoảng cách số cho những nhóm học sinh yếu thế, dễ bị tổn thương nhất.<br />\r\n<br />\r\nNhững bài học, kinh nghiệm và giải pháp trong việc hỗ trợ giáo viên và học sinh tiếp tục việc học trong thời gian cách ly xã hội, đóng cửa trường học và mở cửa trở lại trường học; kinh nghiệm trong việc “xóa mù” công nghệ, nâng cao kỹ năng số và kỹ năng chuyển đổi số tại các nước thành viên ASEAN và vai trò của trẻ em và thanh thiếu niên trong việc xây dựng những sáng kiến giáo dục mới.<br />\r\n<br />\r\nKết thúc Hội nghị, các Bộ trưởng Giáo dục ASEAN đã thông qua Tuyên bố chung, khẳng định tầm quan trọng của các nỗ lực nhằm xóa mù công nghệ, tăng cường thúc đẩy phát triển kỹ năng số và kỹ năng chuyển đổi số trong hệ thống giáo dục của các nước thành viên ASEAN; đồng thời nhấn mạnh vai trò của trẻ em, thanh thiếu niên và công việc trong tương lai trong chuyển đổi kỹ thuật số các hệ thống giáo dục.<br />\r\n<br />\r\nCác Bộ trưởng đồng thuận: nỗ lực phấn đấu học tập suốt đời và chuyển đổi kỹ thuật số các hệ thống giáo dục trong ASEAN; thúc đẩy tiếp cận các cơ hội học tập kỹ thuật số an toàn, khuyến khích khu vực tư nhân hợp tác, đưa ra các giải pháp đổi mới về kiến thức kỹ thuật số, trang bị kỹ năng cho trẻ em và thanh thiếu niên trước các công việc trong tương lai; hợp tác với các bên liên quan trong các lĩnh vực như tài nguyên giáo dục mở và học tập truy cập mở; hỗ trợ xây dựng Tuyên bố ASEAN về Chuyển đổi Kỹ thuật số các Hệ thống Giáo dục trong những năm tiếp theo nhằm thúc đẩy trao đổi kinh nghiệm và cách làm hiệu quả.<br />\r\n<br />\r\nBộ trưởng các nước cam kết thực hiện tuyên bố nói trên và tích hợp kiến thức kỹ thuật số vào Kế hoạch Công tác ASEAN về Giáo dục giai đoạn 2021-2025.<br />\r\n&nbsp;\r\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Trong những năm qua, Việt Nam đã không ngừng nỗ lực trong thực hiện chuyển đổi số giáo dục. Thực hiện Đề án đẩy mạnh ứng dụng CNTT trong các hoạt động của ngành Giáo dục, Bộ GDĐT đã triển khai nhiều nhiệm vụ và đạt được kết quả quan trọng về nhân lực số, nội dung số, quản lý giáo dục trên nền tảng số hoá.<br />\r\n			<br />\r\n			Đến nay đã có hơn 7.000 bài giảng e-learning và gần 200 đầu sách giáo khoa được số hóa và chia sẻ trên Internet tại địa chỉ igiaoduc.vn.<br />\r\n			<br />\r\n			Bộ GDĐT đã đánh mã định danh và số hóa thông tin hồ sơ của 23 triệu học sinh, hồ sơ của 1,4 triệu giáo viên thuộc 53 ngàn trường học trên cả nước; giúp ngành Giáo dục thực hiện có hiệu quả công tác quy hoạch, kế hoạch, đánh giá, dự báo về các hoạt động giáo dục.<br />\r\n			<br />\r\n			Hiện nay, Bộ GDĐT đang xây dựng khung năng lực số cho học sinh, từ bậc mầm non đến phổ thông, trong đó không chỉ dừng lại ở những kỹ năng sử dụng, kiến thức công nghệ mà hướng đến phát triển năng lực tư duy, khả năng sáng tạo, thích ứng với môi trường công nghệ<br />\r\n			<br />\r\n			Theo số liệu báo cáo PISA của Tổ chức Hợp tác và Phát triển kinh tế (OECD) ngày 29/9/2020, việc học trực tuyến phòng chống Covid-19 của Việt Nam có nhiều điểm khả quan so với các quốc gia và vùng lãnh thổ. Cụ thể, Việt Nam có 79,7% học sinh được học trực tuyến. Tỷ lệ này cao hơn mức trung bình chung của các nước OECD (67,5%).<br />\r\n			<br />\r\n			Bộ GDĐT đang chuẩn bị ban hành quy chế quản lý dạy học trực tuyến ở bậc phổ thông, tạo hành lang pháp lý để hình thức dạy học trực tuyến được công nhận như một phương thức bổ trợ cho dạy học trực tiếp và được công nhận kết quả.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', '', '', 2, '', 0, 1, 1, 1),
(23, '', '', 'Chi bộ Cục Cục Công nghệ thông tin (Bộ GD&amp;ĐT) vừa tổ chức thành công Đại hội lần thứ 3 nhiệm kỳ 2020-2025. Theo báo cáo chính trị, trong nhiệm kỳ 2015-2020, Chi bộ Cục Công nghệ thông tin đã lãnh đạo Cục Công nghệ thông tin hoàn thành 100% các nhiệm vụ được giao về xây dựng văn bản quy phạm pháp luật trong các năm 2015, 2016, 2017, 2018 và 2019.<br />\r\n<br />\r\nTrong 5 năm từ 2015 đến 2019, Cục CNTT đã chủ trì tham mưu giúp Bộ trưởng trình ban hành, ban hành nhiều văn bản quy phạm pháp luật, văn bản chỉ đạo điều hành, hướng dẫn tăng cường ứng dụng công nghệ thông tin trong toàn ngành.<br />\r\n<br />\r\nBên cạnh đó, hằng năm tham mưu giúp Bộ trưởng ban hành các văn bản hướng dẫn nhiệm vụ CNTT cho các địa phương, trường đại học; ban hành văn bản hướng dẫn triển khai mô hình ứng dụng CNTT trong trường phổ thông; hướng dẫn các địa phương, nhà trường triển khai giải pháp dạy học trực tuyến, xây dựng kho học liệu số dùng chung và huy động nguồn lực từ doanh nghiệp tham gia hỗ trợ.<br />\r\n<br />\r\nTrong thời gian qua, về ứng dụng CNTT vào quản lý giáo dục, ngành giáo dục đào tạo đã triển khai đạt nhiều kết quả đáng ghi nhận. Cơ sở dữ liệu ngành về giáo dục mầm non và GDPT được triển khai đồng bộ. Cổng thông tin tuyển sinh và các hệ thống nghiệp vụ phục vụ các hoạt động của kỳ thi THPT quốc gia và tuyển sinh vào ĐH được triển khai hoạt động hiệu quả nhiều năm qua.<br />\r\n<br />\r\nNăm 2018, chỉ số hiện đại hóa cải cách hành chính của Bộ GD&amp;ĐT tăng 8 bậc (từ vị trí thứ 10 năm 2017, lên vị trí thứ 2 năm 2018). Cổng dịch vụ công trực tuyến của Bộ GD&amp;ĐT cung cấp 22 dịch vụ công trực tuyến mức độ 3 và 4 dịch vụ công trực tuyến mức độ 4.<br />\r\n<img alt=\"Các đại biểu dự đại hội\" height=\"486\" src=\"/uploads/news/2020_12/dhd-cits.jpg\" width=\"800\" />\r\n<div><br />\r\nTham mưu giúp Bộ trưởng trong việc xây dựng và đóng góp vào Hệ tri thức Việt số hóa gần 5.000 bài giảng điện tử e-learning có chất lượng; tổng hợp và cập nhật hơn 2.000 video các bài giảng trực tuyến trên truyền hình; trên 900 đề án tuyển sinh của các trường ĐH, CĐ (của các năm 2017, 2018 và 2019); trên 7.500 luận án tiến sĩ; gần 30 nghìn câu hỏi trắc nghiệm và dữ liệu trường học kết nối.<br />\r\n<br />\r\nĐã có gần 40% số lượt GV được tham gia các lớp tập huấn về ứng dụng công nghệ thông tin, trong đó 29% GV có thể thiết kế bài giảng e-learning hỗ trợ học sinh tự học. Nhiều địa phương đã xây dựng và triển khai kho học liệu số dùng chung và đóng góp vào kho học liệu của Bộ.<br />\r\n<br />\r\nCông tác cán bộ luôn được thực hiện đúng quy định, minh bạch. Cục đã thực hiện tốt công tác quy hoạch cán bộ lãnh đạo, quản lý cấp cục, phòng, trung tâm giai đoạn 2016-2021 và 2021-2026, thực hiện tốt công tác quy hoạch cấp ủy, được Đảng ủy Bộ GD&amp;ĐT phê duyệt.<br />\r\n<br />\r\nVề phương hướng, nhiệm vụ, giải pháp nhiệm kì 2020, báo cáo chỉ rõ: Lãnh đạo chi bộ tiếp tục tập trung triển khai và tổ chức thực hiện Nghị quyết số 29-NQ/TW của Trung ương và Nghị quyết số 44/NQ-CP của Chính phủ về đổi mới căn bản, toàn diện giáo dục và đào tạo; Nghị quyết số 88/2014/QH13 của Quốc hội về đổi mới chương trình, sách giáo khoa giáo dục phổ thông; Điều lệ Đảng các nghị quyết, chỉ thị, quy định, quyết định, hướng của Trung ương và của Đảng bộ Bộ GD&amp;ĐT.<br />\r\n<br />\r\nLãnh đạo, chỉ đạo thực hiện tốt công tác giáo dục chính trị tư tưởng, nâng cao bản lĩnh chính trị, năng lực hoạt động thực tiễn và ý thức tu dưỡng, rèn luyện đạo đức, lối sống của cán bộ, đảng viên theo tấm gương đạo đức Hồ Chí Minh; nâng cao chất lượng chi bộ, chất lượng đội ngũ đảng viên, phát huy mạnh mẽ vai trò lãnh đạo của tổ chức Đảng.<br />\r\n<br />\r\nPhấn đấu trong nhiệm kỳ 2020-2025, hoàn thành 100% kế hoạch ban hành văn bản quy phạm pháp luật hằng năm được Bộ trưởng giao; hoàn thành 80% kế hoạch các nhiệm vụ chuyên môn được giao trong kế hoạch năm; phấn đấu 100% đảng viên được xếp loại đảng viên hoàn thành tốt nhiệm vụ, trong đó 15% đảng viên hoàn thành xuất sắc nhiệm vụ.</div>', '', '', '', 2, '', 0, 1, 1, 1),
(24, '', '', '<table align=\"center\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Kính gửi:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"4\">&nbsp;</td>\r\n			<td>- Các đại học, trường đại học, học viện;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>- Các trường cao đẳng sư phạm, trung cấp sư phạm;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>- Các sở giáo dục và đào tạo;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>- Sở Giáo dục - Khoa học và Công nghệ tỉnh Bạc Liêu.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\nTriển khai Biên bản hợp tác số 01/BB-BTTT-BGDĐT ngày 26/3/2020 giữa Bộ Thông tin và Truyền thông (Bộ TTTT) và Bộ Giáo dục và Đào tạo (Bộ GDĐT) trong phòng, chống dịch bệnh Covid-19, căn cứ Biên bản hợp tác đồng hành, hỗ trợ của doanh nghiệp ngành thông tin và truyền thông với ngành giáo dục đào tạo trong phòng, chống dịch bệnh Covid-19 (Biên bản gửi kèm), Cục Công nghệ thông tin (CNTT) thông tin cụ thể nội dung và đầu mối liên hệ hỗ trợ như sau:<br />\r\n&nbsp;\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>TT</strong></td>\r\n			<td><strong>Tên doanh nghiệp</strong></td>\r\n			<td><strong>Nội dung hỗ trợ</strong></td>\r\n			<td><strong>Đầu mối liên hệ hỗ trợ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Tập đoàn Công nghiệp - Viễn thông Quân đội (Viettel)</td>\r\n			<td>1. Hỗ trợ miễn phí hạ tầng CNTT cho các cơ sở đào tạo đại học gồm: Máy chủ, chỗ đặt máy chủ, đường truyền đảm bảo dạy, học trực tuyến.<br />\r\n			2. Cung cấp miễn phí giải pháp đào tạo trực tuyến cho toàn bộ các trường phổ thông, đại học trên toàn quốc.<br />\r\n			3. Miễn phí cước data di động cho học sinh, giáo viên và phụ huynh khi sử dụng các giải pháp đào tạo trực tuyến do Bộ TTTT và Bộ GDĐT công bố trong giai đoạn dịch bệnh.</td>\r\n			<td>Bà Phạm Thị Ngọc Lan, Giám đốc khối Giáo dục, số điện thoại: 033.666.7788, Email: lanptn1@viettel.com.vn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Tập đoàn Bưu chính Viễn thông Việt Nam (VNPT)</td>\r\n			<td>1. Hỗ trợ miễn phí hạ tầng CNTT cho các cơ sở đào tạo đại học gồm: Máy chủ, chỗ đặt máy chủ, đường truyền đảm bảo dạy, học trực tuyến.<br />\r\n			2. Cung cấp miễn phí giải pháp đào tạo trực tuyến cho toàn bộ các<br />\r\n			trường phổ thông, đại học trên toàn quốc.<br />\r\n			3. Miễn phí cước data di động cho học sinh, giáo viên và phụ huynh<br />\r\n			khi sử dụng các giải pháp đào tạo trực tuyến do Bộ TTTT và Bộ GDĐT công bố trong giai đoạn dịch bệnh.<br />\r\n			&nbsp;</td>\r\n			<td>Bà Lê Thị Thanh Thùy, Chuyên viên Ban Chiến lược sản phẩm VNPT, số điện thoại: 0911361388.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Tổng Công ty Viễn thông MobiFone</td>\r\n			<td>Miễn phí cước data di động cho học sinh, giáo viên và phụ huynh khi sử dụng các giải pháp đào tạo trực tuyến do Bộ TTTT và Bộ GDĐT công bố trong giai đoạn dịch bệnh.</td>\r\n			<td>Ông Nguyễn Hải Việt, Chuyên viên Ban<br />\r\n			KHCN -TCT Viễn thông MobiFone, số điện thoại: 0904348886.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Công ty Cổ phần Viễn thông Di<br />\r\n			động Vietnamobile</td>\r\n			<td>Miễn phí cước data di động cho học sinh, giáo viên và phụ huynh khi sử dụng các giải pháp đào tạo trực tuyến do Bộ TTTT và Bộ GDĐT công bố trong giai đoạn dịch bệnh.</td>\r\n			<td>Bà Phạm Thu Hải - Phụ trách Chính sách, đối ngoại, Vietnamobile, số điện thoại: 0928866288.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\nCăn cứ điều kiện, nhu cầu thực tế, đề nghị các đại học, học viện, các trường đại&nbsp;học, cao đẳng sư phạm, trung cấp sư phạm và các sở giáo dục và đào tạo nghiên cứu, liên hệ với các doanh nghiệp nêu trên để phổ biến, tổ chức triển khai, hỗ trợ kịp thời việc dạy - học trực tuyến trong thời gian dịch bệnh Covid-19.<br />\r\nTrong quá trình thực hiện nếu có khó khăn, vướng mắc đề nghị phản ánh về Cục Công nghệ thông tin - Bộ Giáo dục và Đào tạo (Địa chỉ: số 35 Đại Cồ Việt, Hai Bà Trưng, Hà Nội; Email: Cuccntt@moet.gov.vn; Điện thoại: 024 38695144 – máy lẻ 438) để phối hợp, giải quyết.<br />\r\nNội dung chi tiết xem tại file đính kèm./.', 'Bộ Giáo dục và Đào tạo', '', '2020_12/cv-ho-tro-dich-covid-19.pdf,2020_12/cam-ket-4-nha-mang.pdf', 2, '', 0, 1, 1, 1),
(30, '', '', '<strong>“Bớt việc” cho giáo viên</strong><br />\r\n<br />\r\nTừ nhiều năm nay, các trường học trên địa bàn TPHCM sử dụng sổ liên lạc điện tử, giáo án điện tử... Từ điểm số, nhận xét, đánh giá HS được thực hiện thông qua cổng thông tin điện tử. Việc liên lạc với phụ huynh cũng được các trường kết nối thường xuyên thông qua hệ thống tin nhắn online, phần mềm để phụ huynh truy cập vào xem tình hình học tập của con em mình.<br />\r\n<br />\r\nThầy Nguyễn Công Phúc Khánh, Phó Hiệu trưởng Trường THCS Nguyễn Du (quận 1) chia sẻ, việc số hóa sổ sách, hồ sơ cho giáo viên được các cán bộ quản lý ủng hộ, quan tâm để họ có nhiều thời gian hơn cho việc nâng cao chất lượng giảng dạy. Khi các giáo viên nhập điểm số, lời nhận xét hay cần gửi đi một thông báo tới phụ huynh, qua việc ứng dụng CNTT sẽ giúp các thao tác nhanh hơn, lưu trữ dễ dàng, dễ quản lý và giảm những chi phí (thay vì thông báo in giấy mời ra).<br />\r\n<br />\r\nPhần mềm quản lý mà trường đang sử dụng là smas.edu.vn sẽ phân quyền trong sử dụng, tạo sự thuận lợi trong khâu quản lý, quản trị. Cũng theo thầy Khánh, để bảo đảm dữ liệu an toàn, trường còn lưu trữ bằng cách chép ra ổ cứng theo từng học kỳ, dán niêm phong.<br />\r\n<br />\r\nNgoài ra, theo nhiều cán bộ quản lý, việc ứng dụng số hóa các loại sổ sách, ví dụ như học bạ điện tử, sẽ “triệt tiêu” tiêu cực về điểm số (nếu có), bởi khi giáo viên nhập dữ liệu xong và lưu trữ sẽ không được phân quyền sửa vào phần điểm. Sổ điểm hằng ngày của họ trong giờ lên lớp ghi bằng tay, ví dụ điểm số 15 phút, 1 tiết sẽ được nhà trường thu lại. Thậm chí, một số trường còn giao nhiệm vụ nhập điểm số của học sinh cho bộ phận hành chính, tin học của nhà trường.<br />\r\n&nbsp;<br />\r\n<img alt=\"Tin bai 01 2\" height=\"375\" src=\"https://e-ict.gov.vn/uploads/news/2019_09/tin-bai-01-2.jpg\" width=\"500\" /><br />\r\n<em>Tập huấn giáo viên soạn giáo án điện tử</em><br />\r\nThầy Huỳnh Thanh Phú, Hiệu trưởng Trường Trường THPT Nguyễn Du (quận 10) cho rằng, vai trò của người đứng đầu nhà trường rất quan trọng, có dám đột phá, chủ động hay không. “Nếu việc số hóa này được triển khai triệt để, ngoài giảm bớt việc cho giáo viên, còn giúp lãnh đạo trường quản lý dễ dàng, nhanh chóng. Tính liên thông của nó có thể giúp các học sinh chuyển trường dễ dàng mà không cần nhiều thủ tục, giấy tờ liên quan như hiện nay”, thầy Phú nói.<br />\r\n<br />\r\n<strong>Cần triển khai mạnh mẽ</strong><br />\r\n<br />\r\nViệc số hóa sổ sách cho giáo viên đã và đang từng bước được thực hiện tại nhiều đơn vị nhưng vẫn gặp phải một số vấn đề cần được tháo gỡ.\r\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Một giáo viên tiểu học tại TPHCM chia sẻ: “Qua tham khảo, tôi thấy đồng nghiệp ở quận Bình Tân, Bình Thạnh… vẫn phải chép tay học bạ của HS dù đã có sẵn trên hệ thống. Trong học bạ giấy, phần trống để cho giáo viên ghi rất nhỏ, nên chỉ ghi được vài dòng, không thể hiện hết những gì cần nhận xét. Đó là chưa kể việc ghi vào học bạ, nếu sai, giáo viên phải bỏ phần sai, ghi mực đỏ vào phần sửa lại và mở ngoặc “tôi đã sửa”, nó vô cùng “nhiêu khê”. Nếu số hóa toàn bộ sổ sách, hồ sơ cho giáo viên thì mọi thứ dễ dàng hơn rất nhiều”.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\nTheo các hiệu trưởng, việc số hóa sổ sách, hồ sơ có những ưu điểm ai cũng thấy rõ, nhưng với cương vị là người quản lý, khi triển khai, thấy một vài giáo viên vẫn có tình trạng làm theo kiểu đối phó, các nhận xét của HS cơ bản giống nhau (copy em này qua em khác), thậm chí có giáo viên copy giáo án nên một số trường vẫn yêu cầu giáo viên viết tay.<br />\r\n<br />\r\nNgoài ra, dù đã dùng sổ liên lạc điện tử, tin nhắn điện tử để thông báo cho phụ huynh, hay là sử dụng các phần mềm để phụ huynh đăng nhập vào xem tình hình học tập của con em mình, thông báo của nhà trường… nhưng có phụ huynh đăng kí nhận tin nhắn, không sử dụng phần mềm. Vì vậy, một số trường phải vừa báo tin nhắn, vừa gửi thông báo bằng giấy cho phụ huynh.<br />\r\n<br />\r\nTheo cô Phan Ngọc Thắm, Hiệu trưởng Trường TH Bình Quới, quận Thủ Đức, do sử dụng phần mềm, khi phụ huynh truy cập hay nhận thông báo bằng tin nhắn phải đóng một khoản phí trên tinh thần tự nguyện nên không phải ai cũng sẵn sàng tham gia.<br />\r\n<br />\r\nKhông chỉ riêng TPHCM, nhiều tỉnh, thành trong cả nước cũng đang gặp phải một số vấn đề tương tự khi triển khai sổ liên lạc điện tử, học bạ điện tử, số hóa các hồ sơ, sổ sách do điều kiện khác nhau và thiếu tính thống nhất giữa các nơi. Thậm chí trong một địa phương, có nơi làm, nơi chưa triển khai…<br />\r\n&nbsp;\r\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Nhằm giảm tải cho giáo viên liên quan đến vấn đề này, ngày 18/1/2019, Bộ GD&amp;ĐT đã ra Chỉ thị 138/CT-BGDĐT về việc chấn chỉnh tình trạng lạm dụng hồ sơ, sổ sách trong nhà trường, trong đó có ghi rõ: Giáo viên được phép chọn hình thức trình bày, viết tay hoặc đánh máy khi sử dụng các loại hồ sơ, sổ sách theo quy định; từng bước sử dụng hồ sơ, sổ sách điện tử thay cho các loại hiện hành theo lộ trình phù hợp điều kiện của địa phương, nhà trường và khả năng thực hiện của giáo viên; Cơ quan quản lý giáo dục tuyệt đối không chỉ đạo phát hành hoặc trực tiếp phát hành các loại hồ sơ, sổ sách của nhà trường và giáo viên.<br />\r\n			<br />\r\n			&nbsp;Chỉ thị nhận được sự ủng hộ của giáo viên toàn ngành, bởi việc số hóa sổ sách, hồ sơ sẽ giúp họ bớt đi những thủ tục về mặt hành chính, để tập trung nhiều hơn cho chuyên môn.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', '', '', 2, '', 0, 1, 1, 1),
(31, '', '', '&nbsp;<br />\r\nTham dự hội nghị có ông Nguyễn Sơn Hải- Cục trưởng Cục CNTT; ông Trịnh Xuân Hiếu- Vụ trưởng Vụ Thi đua khen thưởng; ông Phạm Hùng Anh- Cục trưởng Cục CSVC; ông Trần Nam Tú- Phó Cục trưởng Cục KHCN, thuộc Bộ GD&amp;ĐT.<br />\r\n<br />\r\nViệc ký kết hợp tác, triển khai các dự án giáo dục của Sở GD&amp;ĐT Hải Phòng với các Cục, Vụ của Sở GD&amp;ĐT nhắm cụ thể hóa việc thực hiện các thông tư, quy định ứng với các điều kiện thực tế trong giáo dục tại địa phương để từng bước đưa Hải Phòng thành trung tâm giáo dục mang tầm cỡ quốc tế.<br />\r\n<br />\r\nPhát biểu tại Hội nghị, ông Nguyễn Sơn Hải- Cục trưởng Cục CNTT nhấn mạnh: Các Vụ, Cục của Bộ GD&amp;ĐT có mối quan hệ khăng khít với ngành GD&amp;ĐT TP Hải Phòng. Đặc biệt trong năm học vừa qua trực tiếp GD Sở GĐ&amp;ĐT đã chủ động liên hệ, hợp tác với các Vụ, Cục của Bộ về các mảng thi đua khen thưởng, KHCN, CSVC.<br />\r\n<br />\r\nĐối với lĩnh vực CNTT, ngành giáo dục Hải Phòng có mối quan hệ công việc, đi đến những nhiệm vụ cụ thể và đã đạt được thành quả. Lần đầu tiên Hải Phòng xây dựng được cơ sở dữ liệu giáo dục, đào tạo theo hướng hợp tác, phát triển. Ngoài phục vụ hiệu quả trong quản lý ngành, dựa trên cơ sở dữ liệu, các hoạt động khác được triển khai thuận lợi như việc dạy học trực tuyến. Kế tiếp những thành quả đó, ông Sơn Hải tin rằng sự phối hợp chặt chẽ như hiện nay Hải Phòng nhanh chóng hoàn thiện đề án phát triển giáo dục, đào tạo trong giai đoạn tới.<br />\r\n&nbsp;<br />\r\n<img alt=\"Tin 01 2 1\" height=\"450\" src=\"https://e-ict.gov.vn/uploads/news/2020_08/tin-01-2.1.jpg\" width=\"600\" /><br />\r\n<em>Quang cảnh Hội nghị</em><br />\r\n&nbsp;<br />\r\nÔng Lê Quốc Tiến- Giám đốc Sở GD&amp;ĐT Hải Phòng cho rằng, Hải Phòng được sự hỗ trợ của Bộ GĐ&amp;ĐT đã xây dựng thành công cơ sở dữ liệu ngành. Hải Phòng hiện có 490.523 học sinh với 999 trường và cơ sở đào tạo, với 4.331 nhóm trẻ gia đình.<br />\r\n<br />\r\nHiện nay, mỗi học sinh có 1 mã định danh, do vậy Sở có thể thống kê rõ ràng về tình hình học tập, dữ liệu về chiều cao, cân nặng của học sinh. Gần đây nhất Sở GD&amp;ĐT phối hợp với Vụ GD Thể chất triển khai chương trình phòng chống tai nạn thương tích, đuối nước. Dựa trên cơ sở dữ liệu ngành, Sở xác định được tỷ lệ học sinh không biết bơi của từng lớp, từng trường và gửi tới các quận, huyện để đưa ra giải pháp kịp thời.<br />\r\n<br />\r\nDựa vào dữ liệu ngành, Hải Phòng đã đưa ra tỷ lệ trẻ em bị béo phì dựa trên cân nặng, tỷ lệ trẻ mắc bệnh về mắt… Hiện nay, trên toàn hệ thống có 32.114 giáo viên, dựa vào mã định danh, độ tuổi, môn học trên tỷ lệ học sinh, Sở có thể thống kê sẽ thiếu bao nhiêu giáo viên ở những môn học nào trong thời gian tới, để tính toán đặt hàng với cơ sở đào tạo.<br />\r\n<br />\r\nGiám đốc Sở GD&amp;ĐT Lê Quốc Tiến bày tỏ niềm vui khi Hải Phòng vừa có 1 HCV quốc tế môn Hóa Học, 1 HCĐ môn Tin học. Đặc biệt, 35 học sinh của lớp 11, trường THPT Thái phiên thi ILETS trong đó có 4 học sinh đạt 8.0; 5 em đạt 7.5; 9 học sinh đạt 7.0; 9 em đạt 6.5; 9 học sinh 6.0 và 2 học sinh 5.5. &quot;Thực hiện Nghị quyết 45 của Bộ Chính trị xây dựng và phát triển Hải Phòng thành trung tâm giáo dục đào tạo quốc tế, chúng tôi rất mong muốn các Vụ, Cục định hướng cho Hải Phòng đưa các chuẩn quốc tế vào phổ thông&quot; - ông Lê Quốc Tiến nói.', '', '', '', 2, '', 0, 1, 1, 1),
(26, '', '', '<div>\r\n<video controls=\"controls\" height=\"300\" id=\"video20201111143614\" poster=\"\" width=\"400\"><source src=\"https://e-ict.gov.vn/uploads/news/2017_09/videocustum.mp4\" type=\"video/mp4\" />Your browser doesn&#039;t support video.<br />\r\nPlease download the file: <a href=\"https://e-ict.gov.vn/uploads/news/2017_09/videocustum.mp4\">video/mp4</a></video>\r\n</div>\r\n<br />\r\n<strong>Nguồn: Chương trình chuyển động 24h, VTV</strong>', '', '', '', 2, '', 0, 1, 1, 1),
(29, '', '', '<p>Trong đó, quy trình kiểm nghiệm bản vá, phê duyệt kết quả,&nbsp;sao lưu dữ liệu, tiến hành vá... kéo dài hàng tháng, hàng quý. Không những vậy, việc cập nhật bản vá phụ thuộc vào quy trình, chính sách của đơn vị hoặc quy mô của hệ thống cần và chính độ trì trệ, quan liêu của tổ chức đó. Thói quen sử dụng phần mềm bẻ khóa (crack, không có bản quyền hoặc các ứng dụng đã cũ (được lập trình để chạy trên hệ điều hành đã hết hạn hỗ trợ như Windows XP, Windows 7, Windows Server 2013…) cũng tăng khả năng&nbsp; các lỗ hổng bảo mật không được vá. Bên cạnh đó, trong một số trường hợp, chi phí nâng cấp phần mềm, phần cứng không được đưa vào trong ngân sách đã được phê duyệt của các cơ quan, doanh nghiệp cũng là lý do để các lỗ hổng đó tồn tại sang năm tài chính tiếp theo.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><a title=\"\"><img alt=\"\" src=\"http://image1.ictnews.vn/_Files/2016/04/07/NgoVietKhoi.jpg\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Theo ông Ngô Việt Khôi, các cơ quan và doanh nghiệp tại Việt Nam cần&nbsp;chủ động hơn&nbsp;trong việc&nbsp;khi xử lý các lỗ hổng bảo mật trong hệ thống dữ liệu&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Hiện nay, các cuộc tấn công có chủ đích (APT) nhằm vào các mục tiêu đã định trước như cơ quan nhà nước, các doanh nghiệp và tổ chức quân sự, năng lượng, hàng không vũ trụ,… nhằm đánh cắp những thông tin tài liệu, chính trị, kinh tế, an ninh, quốc phòng. Vì nhiều nguyên nhân nêu trên, việc vá lỗ hổng bảo mật diễn ra chậm chạp&nbsp;sẽ tạo điều kiện rất tốt cho tin tặc hoành hành.</p>\r\n\r\n<p>Cũng theo ông Ngô Việt Khôi, hoạt động CNTT của các cơ quan, tổ chức Chính phủ hay doanh nghiệp phụ thuộc rất nhiều vào hệ thống máy chủ (server hoặc datacenter). Vá các lỗ hổng bảo mật trên ứng dụng và hệ điều hành là đặc thù công việc (ngoài mong muốn) của các quản trị viên. Trong nhiều trường hợp, các lỗ hổng bảo mật bị khai thác trước khi hãng cung cấp phần mềm phát hiện ra (unknow vulnerability). Bằng những công cụ dò quét, các đối tượng tội phạm mạng có thể nhanh chóng phát hiện được các lỗ hổng này để tận dụng trước khi các bản vá chính hãng xuất hiện.</p>\r\n\r\n<p>Trong khi đó, nhận thức về ATTT tại nhiều bộ, ngành, cơ quan nhà nước cũng như các doanh nghiệp tại Việt Nam&nbsp;còn thấp hơn mức cần thiết. Điển hình như có những đơn vị chỉ chấp nhận trang bị giải pháp bảo mật một lần duy nhất và đầu tư vào các bản cập nhật mới&nbsp;để tiết kiệm chi phí. Có những đơn vị chưa có chính sách bảo mật hoặc bộ phận chuyên trách về ATTT. Thậm chí, khi được cảnh báo, các đơn vị này cũng không có bộ phận xử lý, hoặc phớt lờ. Không những vậy, có những lỗ hổng chỉ được xử lý khi có bằng chứng bị tin tặc khai thác và gây thiệt hại.&nbsp; Còn nguy cơ từ lỗ hổng chưa biết thì vẫn không được kiểm tra để ngăn chặn. Nhiều đơn vị chưa kịp trang bị giải pháp dò quét tổng thể để phát hiện các lỗ hổng bảo mật đang bị lợi dụng, các hoạt động đáng ngờ hay những truy nhập không được phép đang chạy trên mạng nội bộ hoặc liên lạc với server điều khiển và ra lệnh (C&amp;C server của tin tặc).</p>\r\n\r\n<p>Cách xử lý theo kiểu “thủng đâu vá đó” này khiến cho công tác đảm bảo ATTT rơi vào thế bị động, đầu tư dàn trải nhưng nguy cơ mất ATTT không hề giảm. “Nếu đặt trong tình hình của Việt Nam, nơi mà ý thức về đảm bảo ATTT của phần đông cán bộ nhà nước, người dân còn rất hạn chế thì vấn đề mất ATTT là đặc biệt nghiêm trọng”, ông Ngô Việt Khôi lo ngại.</p>\r\n\r\n<p>Chính vì vậy, nguyên Giám đốc của TrendMicro Việt Nam khuyến nghị đội ngũ chuyên viên ATTT tại các đơn vị nên chủ động tiếp cận các phương pháp vá lỗ hổng mới thay vì chờ đợi bản vá từ các nhà cung cấp dịch vụ, phần mềm và triển khai theo các truyền thống. Một trong những gợi ý được ông Khôi đưa ra là sử dụng giải pháp ATTT có tính năng vá ảo. Với giải pháp này, thời gian zero-day được rút ngắn từ xuông mức vài tiếng hoặc&nbsp; từ vài ngày ngày. Đây là một giải pháp tình thế trong khi bản vá chính hãng chưa tới, hoặc đang được thử nghiệm hoặc không bao giờ tới (trong trường hợp phần mềm đã hết hạn hỗ trợ bản vá của hãng).</p>\r\n\r\n<p>Bản vá ảo sẽ tự động nhận dạng khi bản vá chính hãng được cập nhật để chủ động ngừng hoạt động, nhằm tránh xung đột trong hệ thống. Vá ảo cũng giảm thiểu các khâu trong quy trình như sao lưu dữ liệu, khởi động lại máy chủ sau khi cập nhật bản vá (gây gián đoạn dịch vụ). Giải pháp mang tính tạm thời này giúp cho việc cung cấp các dịch vụ của các đơn vị không bị gián đoạn. Hệ thống không bị đặt vào tình trạng rủi ro cao khi chưa có bản vá chính thức. Thông thường, chỉ những công ty bảo mật lớn có công nghệ lõi dựa trên nền điện toán đám mây và khả năng xử lý dữ liệu lớn (Big Data) mới có đủ mẫu để phục vụ cho tính năng vá ảo.</p>\r\n\r\n<p>Theo hãng bảo mật Kaspersky, Việt Nam đứng số 1 thế giới về tỷ lệ lây nhiễm mã độc qua thiết bị lưu trữ ngoài (USB, thẻ nhớ, ổ cứng di động) với tỷ lệ 70,83% máy tính bị lây nhiễm. 39,55% người dùng phải đối mặt với mã độc từ Internet. Trong năm 2015, có hơn 10.000 trang, cổng thông tin điện tử có tên miền .vn bị tấn công, chiếm quyền điều khiển, thay đổi giao diện. Đa phần các cổng thông tin điện tử bị tấn công do tồn tại các lỗ hổng bảo mật nghiêm trọng nhưng lại không được đầu tư nâng cấp, khắc phục.</p>\r\n\r\n<p align=\"right\"><b>Lê Hoàng</b></p>', '', '', '', 2, '', 0, 1, 1, 1);
INSERT INTO `nv4_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(32, '', '', '<br />\r\nSau 3 năm triển khai, đến nay, dữ liệu của hơn 7.000 giáo viên và hơn 73.000 học sinh trong 318 trường học, trung tâm GDTX trên toàn tỉnh đã được số hóa. Trong đó, các bậc tiểu học, THCS, THPT, GDTX đã được triển khai hoàn chỉnh. Riêng với bậc mầm non, do đặc thù riêng, việc ứng dụng còn ở mức hạn chế.<br />\r\n<br />\r\nĐánh giá về quá trình thực hiện số hóa, ông Ma Thế Quyên, Giám đốc Sở GD&amp;ĐT Bắc Kạn cho biết: &quot;Chương trình số hóa dữ liệu được Sở GD&amp;ĐT bắt đầu thực hiện từ năm 2017. Ban đầu, công tác triển khai cũng gặp khó khăn nhất định khi một số giáo viên và đơn vị còn tỏ ra bỡ ngỡ, tuy nhiên chúng tôi xác định đây là việc quan trọng và cần thiết cho nên đặt quyết tâm cao. Đến nay, việc số hóa cơ bản đã hoàn thành, tiện ích và hiệu quả của nó là rất rõ&quot;.<br />\r\n<br />\r\nViệc số hóa dữ liệu giáo dục Bắc Kạn hiện đang được VNPT hỗ trợ về phần mềm, với hệ thống quản lí dành cho Sở và các nhà trường, ngoài ra là các App ứng dụng để giáo viên, phụ huynh, học sinh sử dụng.<br />\r\n<br />\r\nĐể giáo viên dễ dàng và thuận lợi tiếp nhận và áp dụng trong việc sử dụng dữ liệu số, Phòng Quản lí chất lượng giáo dục - Công nghệ thông tin của Sở đã trực tiếp chuyển giao công nghệ và tập huấn, hướng dẫn cụ thể đến các nhà trường.<br />\r\n<br />\r\nViệc lưu trữ và sử dụng dữ liệu phục vụ cho các hoạt động giúp các nhà trường tiết kiệm được nhiều thời gian và công sức. Bên cạnh đó, tính chính xác và khoa học cũng là ưu điểm quan trọng giúp các nhà trường quản lí, vận hành công việc một cách hiệu quả.<br />\r\n<br />\r\nPhát huy những ưu điểm đó, Sở đã chỉ đạo các nhà trường nhanh chóng ứng dụng hệ thống vào nhiều hoạt động quan trọng, như: dạy học trực tuyến qua internet trong thời gian nghỉ để phòng chống dịch Covid-19, thi tuyển sinh đầu cấp, thi học kì, tổng hợp điểm số, quản lí hồ sơ, triển khai nội dung chương trình và lịch công tác, xây dựng thời khóa biểu…<br />\r\n<br />\r\nĐối với giáo viên, học sinh, phụ huynh, việc theo dõi và chia sẻ thông tin, tương tác trao đổi trở nên nhanh chóng, thường xuyên, kịp thời hơn. Từ kế hoạch học tập, điểm số, kết quả…, tất cả đều được thông báo đến từng cá nhân thông qua các phương tiện như điện thoại, máy vi tính.<br />\r\n<br />\r\n&quot;Việc quản lí của nhà trường theo hệ thống dữ liệu đã được số hóa là rất thuận tiện. Một số giáo viên ban đầu còn chưa quen, nhưng sau khi sử dụng thành thạo thì tâm đắc và công nhận cách làm mới hiệu quả hơn&quot; - cô giáo Tạ Thị Chung, Phó hiệu trưởng trường THPT Ngân Sơn cho biết:<br />\r\n<br />\r\nTuy nhiên, cũng theo cô Chung, vẫn còn những băn khoăn mà các cấp chức năng cần tiếp tục tìm hướng giải quyết, nổi bật như: hiện tại hệ thống chưa hỗ trợ bộ thống kê và lọc dữ liệu; một số phụ huynh và học sinh do điều kiện hạn chế nên chưa thành thạo trong việc sử dụng…<br />\r\n<br />\r\nDù trong điều kiện của một tỉnh miền núi còn nhiều khó khăn, nhưng với những nỗ lực vượt bậc, Bắc Kạn đã trở thành một trong những tỉnh sớm nhất cả nước đồng bộ hóa dữ liệu vào hệ thống dữ liệu của Bộ GD&amp;ĐT. Đây là một nền tảng vững vàng cho những bước tiến tiếp theo của giáo dục Bắc Kạn, nhất là trong xu thế của thời đại công nghệ như hiện nay.', '', '', '', 2, '', 0, 1, 1, 1),
(33, '', '', '<strong>Đột phá về chất lượng</strong><br />\r\nTrường Tiểu học Núi Đèo (huyện Thủy Nguyên) là đơn vị đi đầu trong việc ứng dụng CNTT trong giảng dạy đem lại hiệu quả giáo dục cao được lãnh đạo ngành giáo dục ghi nhận. Nhiều GV của trường chủ động với bài dạy, tài liệu sử dụng CNTT, tham gia soạn bài giảng e-Learning, thiết kế các hoạt động giáo dục bằng CNTT, xây dựng lớp học thông minh qua dữ liệu ngành…<br />\r\n<br />\r\nCô giáo Vũ Thị Thảo, GV lớp 3 Trường Tiểu học Núi Đèo cho biết: Việc số hóa bài giảng mang lại cho GV cơ hội trau dồi kiến thức, nâng cao kỹ năng ứng dụng CNTT trong dạy học. Mở rộng không gian học tập ngoài lớp học truyền thốn khiến HS thêm hào hứng, đem lại hiệu quả giáo dục. Đặc biệt, thời gian toàn ngành thực hiện giãn cách xã hội theo chủ trương của Thủ tướng Chính phủ để phòng, chống dịch Covid-19, lợi ích từ việc ứng dụng CNTT mang lại trong hoạt động giáo dục là rất lớn.<br />\r\n&nbsp;<br />\r\n<img alt=\"Tin bai 01 2\" height=\"380\" src=\"https://e-ict.gov.vn/uploads/news/2020_11/tin-bai-01_2.jpg\" width=\"650\" /><br />\r\n<em>Cô giáo Vũ Thị Thảo trao đổi cùng Báo GD&amp;TĐ.</em><br />\r\nTừ cơ sở dữ liệu ngành giáo dục giúp GV quản lý HS một cách khoa học, triển khai các hoạt động giáo dục hiệu quả hơn.<br />\r\n<br />\r\nNêu quan điểm về vấn đề này, cô giáo Vũ Thị Thảo chia sẻ: “Cơ sở dữ liệu ngành giáo dục giúp chúng tôi quản lý thông tin lớp học, hồ sơ học sinh, năng lực, phẩm chất, điểm kiểm tra định kỳ đồng thời tự động lập các báo cáo tổng hợp hồ sơ học sinh, tổng hợp kết quả đánh giá giáo dục một cách thuận tiện. Mỗi giáo viên chúng tôi đều thực hiện và thành thạo các việc đó.<br />\r\n<br />\r\nTừ cách quản lý thông tin học sinh đến việc tổng hợp, báo cáo các hoạt động giáo dục với cơ quan quản lý một cách khoa học sẽ giúp chúng tôi nhàn hơn trong việc làm giấy tờ, sổ sách và có phương pháp giáo dục cụ thể, hiệu quả với từng học sinh. Đặc biệt, việc này còn giúp phụ huynh biết thông tin, tình hình học tập, hoạt động của con tại trường, từ đó có sự phối hợp chặt chẽ với nhà trường trong giáo dục con em mình”.<br />\r\n<br />\r\nTrong việc đổi mới phương pháp dạy và học vai trò của CNTT đã thể hiện ngày một rõ nét với việc triển khai các giải pháp về lớp học điện tử, lớp học thông minh, xây dựng kho học liệu số, thư viện điện tử, sách giáo khoa điện tử, kho bài giảng e-learning dùng chung. Cô Thảo cho rằng, việc giao dịch, tập huấn trên môi trường mạng sẽ giúp cán bộ quản lý, giáo viên tiết kiệm thời gian, trao đổi công việc nhanh, hiệu quả, khoa học.<br />\r\n&nbsp;<br />\r\n<img alt=\"Tin bai 01 3\" height=\"799\" src=\"https://e-ict.gov.vn/uploads/news/2020_11/tin-bai-01_3.jpg\" width=\"600\" /><br />\r\n<em>HS lớp cô Thảo trong giờ học Toán.</em><br />\r\n<strong>Phụ huynh đồng tình, HS hào hứng</strong><br />\r\nCô Vũ Thị Thảo là người đam mê công nghệ, ham học hỏi và có những sáng tạo trong các hoạt động dạy học bằng ứng dụng CNTT. Thời gian HS nghỉ học vì dịch Covid-19, bản thân cô giáo đã ứng dụng công nghệ thông tin dạy trực tuyến cho HS. Hướng dẫn phụ huynh cài phần mềm Zoom trên điện thoại và máy tính. Thiết kế bài giảng với kênh hình, kênh chữ, âm thanh sống động làm cho HS dễ thấy, dễ tiếp thu.<br />\r\n<br />\r\nMột trong những giải pháp nâng cao chất lượng GD&amp;ĐT là khả năng khai thác hệ tri thức Việt số hóa- kho học liệu để tiếp cận với những bài giảng, giáo trình điện tử.<br />\r\n&nbsp;\r\n<div class=\"image-center\"><img alt=\"Tin bai 01 4\" height=\"456\" src=\"https://e-ict.gov.vn/uploads/news/2020_11/tin-bai-01_4.jpg\" width=\"650\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Hoạt động tập thể của cô trò Trường Tiểu học Núi Đèo.</em></div>\r\nKho học liệu trực tuyến có nhiều tài liệu tham khảo, bài giảng hay, sinh động tạo hứng thú cho HS. Cách làm này giúp bản thân cô Thảo cũng như nhiều đồng nghiệp tiết kiệm được thời gian hoàn thành kế hoạch của mình.<br />\r\n<br />\r\nQua thực tế giảng dạy, cô Thảo cho rằng, ứng dụng CNTT giúp GV thỏa sức sáng tạo, chủ động trong việc lập kế hoạch giảng dạy và kiến tạo tri thức.<br />\r\n<br />\r\n&nbsp;“Các tiết học tôi đều thiết kế bài giảng điện tử cho HS, tìm các bài hát và trò chơi liên quan đến bài học, lên internet lấy hình ảnh theo đúng chủ đề bài dạy, tự làm video. HS chủ động tiếp thu một cách hứng thú, tương tác tích cực với GV. Việc tăng cường khả năng tìm kiếm thông tin trong bài học giúp các em dễ dàng làm quen với các hình thức tự học như học online, học qua cầu truyền hình”, cô Thảo cho biết thêm.', '', '', '', 2, '', 0, 1, 1, 1),
(34, '', '', '<div>\r\n<video controls=\"controls\" height=\"350\" id=\"video20201111151030\" poster=\"\" width=\"600\"><source src=\"https://e-ict.gov.vn/uploads/news/2019_03/bess-vietnam-2019.mp4\" type=\"video/mp4\" />Your browser doesn&#039;t support video.<br />\r\nPlease download the file: <a href=\"https://e-ict.gov.vn/uploads/news/2019_03/bess-vietnam-2019.mp4\">video/mp4</a></video>\r\n</div>', '', '', '', 2, '', 0, 1, 1, 1),
(35, '', '', '<br />\r\nTrong khuôn khổ Đề án Chính phủ “Phát triển Hệ tri thức Việt số hoá”, ngày 01/10, tại Hà Nội, Chương trình “Kết nối triệu con tim” phát động Chiến dịch thiện nguyện trên nền tảng số iNhandao và ra mắt các nền tảng số trong lĩnh vực giáo dục, y tế, văn hóa đã được tổ chức.<br />\r\n<br />\r\nĐến dự sự kiện có Phó Thủ tướng Chính phủ Vũ Đức Đam; đại diện lãnh đạo Ban Tuyên giáo Trung ương; Bộ Khoa học và Công nghệ; Bộ Giáo dục và Đào tạo; Bộ Thông tin và Truyền thông; Bộ Y tế; Bộ Văn hoá, Thể thao và Du lịch; Hội Chữ thập đỏ Việt Nam.<br />\r\n<br />\r\nĐược triển khai từ năm 2018, với mục tiêu xây dựng nền tảng dữ liệu và phổ biến tri thức trong các lĩnh vực kinh tế - xã hội, khoa học và công nghệ, tạo điều kiện để cộng đồng tham gia đóng góp, chia sẻ và khai thác, tạo ra các ứng dụng số phục vụ sản xuất, kinh doanh và đời sống, đến nay, Đề án “Phát triển Hệ tri thức Việt số hoá” đã xây dựng được nền tảng số trong các lĩnh vực nhân đạo, giáo dục, y tế, văn hóa, du lịch, bưu chính… cho phép kết nối cộng đồng, chia sẻ dữ liệu, chung tay triển khai các hoạt động vì lợi ích của toàn xã hội, góp phần đẩy nhanh công cuộc chuyển đổi số ở Việt Nam.<br />\r\n&nbsp;\r\n<div class=\"image-center\"><img alt=\"1 737\" height=\"374\" src=\"https://e-ict.gov.vn/uploads/news/2020_10/1-737.jpg\" width=\"650\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Phó Thủ tưởng Vũ Đức Đam, Bộ trưởng Phùng Xuân Nhạ và đại diện Hội chữ thập đỏ Việt Nam</em></div>\r\n\r\n<div style=\"text-align: center;\"><em>&nbsp;thực hiện nghi thức ra mắt các nền tảng công nghệ (ảnh: Bộ Giáo dục và Đào tạo)</em></div>\r\nTại chương trình, thông qua nền tảng nhân đạo số (iNhandao.vn), Hội Chữ thập đỏ Việt Nam phối hợp cùng Ngân hàng Thương mại cổ phần Quân đội (MB), Tổng công ty Bưu điện Việt Nam (Vietnam Post), Bộ Giáo dục và Đào tạo chính thức phát động Chiến dịch “Kết nối tương lai” quyên góp máy tính bảng và điện thoại thông minh cũ còn sử dụng được để giúp đỡ cho các em học sinh miền núi 02 tỉnh Phú Thọ và Yên Bái. Chiến dịch kéo dài trong 03 tháng, từ 01/10-31/12/2020.<br />\r\n<br />\r\nCũng tại chương trình, 3 nền tảng mới cũng chính thức được ra mắt gồm: Bản đồ chung sống an toàn Covid - antoancovid.vn; Nền tảng giáo dục số - iGiaoduc.vn; Đề án Biên soạn Bách khoa toàn thư Việt Nam - bktt.vn.<br />\r\n<br />\r\nNền tảng giáo dục số - iGiaoduc.vn là sản phẩm hợp tác giữa Bộ Giáo dục và Đào tạo, Ban điều hành Đề án Hệ tri thức Việt số hóa và các đối tác tài trợ, hỗ trợ với mục tiêu ban đầu là tạo ra một nền tảng kho học liệu số trực tuyến nhằm thu thập, lựa chọn, chia sẻ học liệu số dùng chung phục vụ đổi mới nội dung, phương pháp dạy học và kiểm tra, đánh giá trong các nhà trường.<br />\r\n<br />\r\nĐồng thời giúp nâng cao năng lực số cho giáo viên về biên soạn, xây dựng và sử dụng học liệu số có hiệu quả. Hệ thống cũng cho phép cộng đồng tham gia biên soạn, đóng góp học liệu số lên kho dùng chung.<br />\r\n<br />\r\nĐến nay, nền tảng đã hoàn thành phần mềm nền tảng thu thập và chia sẻ dữ liệu trên địa chỉ igiaoduc.vn và cập nhật gần 5.000 bài giảng e-learning (do giáo viên xây dựng), hơn 2.000 bài giảng trên truyền hình, hơn 36.000 câu hỏi trắc nghiệm, gần 200 đầu sách giáo khoa theo chương trình giáo dục phổ thông.<br />\r\n<br />\r\nHệ thống cũng đã tích hợp tài khoản người dùng đặt theo mã định danh từ cơ sở dữ liệu ngành giáo dục. Hiện đã cấp tài khoản cho hơn 1 triệu giáo viên trên cả nước để tham gia đóng góp, chia sẻ và khai thác sử dụng. Được phát triển trên nền tảng mở, iGiaoduc khuyến khích cộng đồng, đặc biệt là các thầy, cô giáo và các em học sinh vào tham gia sử dụng và đóng góp nội dung và các tài liệu học tập lên hệ thống.<br />\r\n&nbsp;\r\n<div class=\"image-center\"><img alt=\"dsc 0761 6497\" height=\"433\" src=\"https://e-ict.gov.vn/uploads/news/2020_10/dsc-0761-6497.jpg\" width=\"650\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Tại buổi lễ, 10 đơn vị đã ký kết thỏa thuận hợp tác phát triển kho học liệu số</em></div>\r\n\r\n<div style=\"text-align: center;\"><em>&nbsp;trực tuyến (ảnh: Bộ Giáo dục và Đào tạo)</em></div>\r\nPhát biểu tại sự kiện, Bộ trưởng Bộ Giáo dục và Đào tạo Phùng Xuân Nhạ cho biết, trong suốt 2 năm qua, Bộ đã hợp tác chặt chẽ với Ban điều hành Đề án xây dựng, phát triển nền tảng giáo dục số iGiaoduc.vn nhằm tạo ra một nền tảng thu thập và chia sẻ Kho học liệu số dùng chung phục vụ đổi mới nội dung, phương pháp dạy học trong các nhà trường, đặc biệt phục vụ cho dạy - học trực tuyến.<br />\r\n<br />\r\nTheo Bộ trưởng, kho học liệu số trực tuyến sẽ là một trong những giải pháp quan trọng để thúc đẩy và nâng cao chất lượng dạy học trực tuyến của ngành giáo dục trong thời gian tới. Với những bài giảng e-learning sinh động, học sinh ở những khu vực còn khó khăn có thể được học những bài giảng trên Internet của thầy cô dạy giỏi ở thành thị, mang lại sự công bằng trong tiếp cận nội dung giáo dục có chất lượng của người học giữa các vùng miền.<br />\r\n<br />\r\nĐối với nền tảng Bản đồ chung sống an toàn Covid - antoancovid.vn, Bộ trưởng cho rằng, đây là ứng dụng rất hữu ích, giúp công khai thông tin về các điều kiện đảm bảo an toàn chống dịch, từ đó tạo sự an tâm của phụ huynh, học sinh và xã hội về trường học an toàn trong dịch Covid.<br />\r\n<br />\r\nBộ trưởng Phùng Xuân Nhạ đề nghị các nhà trường, các cô thầy là hiệu trưởng tham gia tích cực trong việc khai báo các điều kiện đảm bảo an toàn cho phòng chống dịch Covid (bằng cách điền các thông tin theo chỉ dẫn của ngành y tế) lên ứng dụng AntoanCovid. Bộ cũng sẽ ban hành văn bản hướng dẫn, phát động các nhà trường tham gia sử dụng ứng dụng AntoanCovid.', '', '', '', 2, '', 0, 1, 1, 1),
(36, '', '', '<br />\r\n<strong>Nỗ lực dạy học trực tuyến để học sinh không thiệt thòi</strong><br />\r\n<br />\r\nTrước tình hình dịch bệnh Covid-19 diễn biến phức tạp, với phương châm “tạm dừng đến trường, không dừng việc học”, ngành Giáo dục đã triển khai đồng bộ các giải pháp về dạy và học phù hợp với tình hình thực tế, trong đó, giải pháp dạy học qua internet, trên truyền hình đã được thực hiện trên toàn quốc và bước đầu có kết quả.<br />\r\n<br />\r\nTại tỉnh Điện Biên, đến nay đã có khoảng 73% học sinh bậc THPT được học từ xa, qua internet, trên truyền hình hoặc giao bài tập trực tiếp. Theo ông Cù Huy Hoàng, Phó Giám đốc Sở GDĐT Điện Biên, đây là nỗ lực rất lớn, bởi Điện Biên là tỉnh miền núi với 40% hộ nghèo, rất nhiều bản làng vùng sâu, vùng xa chưa có mạng internet, sóng điện thoại tới nơi.<br />\r\n<br />\r\nĐể triển khai được việc dạy học từ xa, ngành Giáo dục Điện Biên đã tổ chức rà soát tới từng học sinh để nắm được khả năng tiếp cận việc học của các em, với những trường hợp học sinh không thể học qua internet hay truyền hình, các trường học sẽ phối hợp chặt chẽ với phụ huynh để chuyển tải nội dung, phát phiếu học tập trực tiếp đến các em. &nbsp; &nbsp;<br />\r\n<br />\r\nVới đặc thù một tỉnh với trên 2000 cơ sở giáo dục, 11 huyện miền núi, thời gian qua, tỉnh Thanh Hóa đã có rất nhiều giải pháp để triển khai dạy học từ xa đạt hiệu quả. Ông Hoàng Văn Thi, Phó Giám đốc Sở GDĐT Thanh Hóa cho biết, ngay từ cuối tháng 2, đầu tháng 3, ngành Giáo dục tỉnh Thanh Hóa đã triển khai việc ôn tập và củng cố kiến thức cho học sinh qua hình thức trực tuyến.<br />\r\n<br />\r\nĐối với việc dạy học qua truyền hình, ngay sau khi có hướng dẫn của Bộ, tỉnh Thanh Hóa thành lập nhóm giáo viên, tổ chức bài giảng và cho 2 khối lớp 9 và 12 trên Đài Truyền hình Thanh Hóa. “Đối với các khối khác, ở những nơi có điều kiện ngành Giáo dục triển khai dạy học trực tuyến, phối hợp với phụ huynh tăng cường quản lý hỗ trợ học sinh tự học, kể cả bậc mầm non cũng có hướng dẫn cho phụ huynh cách chăm sóc trẻ” - Ông Thi nói.<br />\r\n<br />\r\nĐến thời điểm này, 100% các trường học trên địa bàn tỉnh Quảng Nam đã triển khai dạy học trực tuyến. Tuy nhiên, theo ông Hà Thanh Quốc, Giám đốc Sở GDĐT Quảng Nam, tùy vào vùng miền mà việc học trực tuyến đạt hiệu quả khác nhau. Tại các địa bàn thuận lợi, số học sinh tham gia học trực tuyến bình quân đạt trên 80%.<br />\r\n<br />\r\nGiám đốc Sở GDĐT Quảng Nam cho rằng, học trực tuyến hiệu quả ở mức độ nào là do nhà trường, giáo viên, phụ huynh và học sinh. Những nơi nào Ban giám hiệu nhà trường, giáo viên phối hợp chặt chẽ với phụ huynh, phụ huynh lo việc học cho con, nơi đó sẽ hiệu quả.<br />\r\n<br />\r\nVẫn biết là còn khó khăn nhưng nếu nhìn khó khăn mà nhận xét dạy học trực tuyến không hiệu quả là không công bằng. “Việc dạy học trực tuyến trong thời gian qua là có hiệu quả” - ông Quốc khẳng định.<br />\r\n<br />\r\n<strong>Huy động mọi nguồn lực dạy học qua interner, trên truyền hình</strong><br />\r\n<br />\r\nĐánh giá cao chỉ đạo của Bộ GDĐT, ông Thái Văn Thành, Giám đốc Sở GDĐT Nghệ An cho rằng, những chỉ đạo kịp thời, rõ ràng của Bộ đã tạo điều kiện thuận lợi cho địa phương triển khai thực hiện dạy học trực tuyến.<br />\r\n<br />\r\nTheo Giám đốc Sở GDĐT Nghệ An, triển khai dạy học trực tuyến đạt được 3 hiệu quả: Duy trì việc học, phần nào đó tạo được cho học sinh ý thức học tập, và thực hiện được mục tiêu “Tạm dừng đến trường, không dừng việc học”.<br />\r\n<br />\r\n“Tỉnh Nghệ An đã huy động tất cả các nguồn lực địa phương để tổ chức dạy học qua internet, truyền hình. Đến nay, ở cấp THPT đã có gần 80%, THCS 70% tham gia học tập theo các hình thức này” - Ông Thành thông tin.<br />\r\n<br />\r\nTại tỉnh Đắk Lắk, ngay từ đầu mùa dịch, ngành Giáo dục địa phương đã triển khai dạy học qua internet, từ ngày 1/4 triển khai dạy qua truyền hình với 3 môn Toán, Văn, Tiếng Anh.<br />\r\n<br />\r\nÔng Phạm Đăng Khoa, Giám đốc Sở GDĐT Đắk Lắk cho biết, ở Đắk Lắk có nhiều học sinh sinh sống ở vùng sâu, vùng xa nên ngoài dạy học qua internet, trên truyền hình, các giáo viên còn đến tận nơi giao bài trực tiếp cho học sinh, nhất là với cấp tiểu học.<br />\r\n<br />\r\n“Giáo viên rất nỗ lực, tinh thần trách nhiệm rất cao. Ngoài ra còn có sự phối hợp của cán bộ đoàn, phụ huynh để hỗ trợ học sinh học tập trong thời gian ở nhà. Tuy nhiên, Đắk Lắk đang vào mùa phát nương làm rẫy, các em học sinh phải tham gia lao động cùng gia đình, do đó việc triển khai học từ xa gặp không ít khó khăn” - Ông Khoa nói.<br />\r\n<br />\r\nGiám đốc Sở GDĐT Đắk Lắk đề nghị, Bộ GDĐT tiếp tục có những hỗ trợ địa phương về hệ thống cơ sở hạ tầng, hệ thống học liệu, nhất là các bài giảng mới để triển khai dạy học qua internet, truyền hình. “Thời gian qua, tỉnh &nbsp;Đắk Lắk mới triển khai giai đoạn 1 dạy học trên truyền hình, giai đoạn 2 sẽ mở rộng dạy thêm các môn thi THPT quốc gia đối với lớp 12 và 3 môn đối với lớp 9. Vì vậy, rất cần Bộ hỗ trợ bài giảng để địa phương thuận lợi trong thực hiện”.<br />\r\n<br />\r\n<strong>5 yếu tố quyết định thành công trong dạy học trực tuyến</strong><br />\r\n<br />\r\nPhát biểu tại cuộc họp, Thứ trưởng Nguyễn Hữu Độ đánh giá cao nỗ lực của các địa phương, đặc biệt trong triển khai dạy học qua internet, trên truyền hình, đáp ứng mục tiêu “tạm dừng đến trường, không dừng học”. Theo Thứ trưởng, ở bậc đại học, dạy học trực tuyến đã được tiếp cận từ lâu, nhưng với bậc phổ thông đây là việc mới; và dù là giải pháp tình thế trong tình hình dịch bệnh, nhưng quá trình triển khai đã bước đầu có kết quả, đáp ứng được yêu cầu.<br />\r\n<br />\r\n“Các địa phương, nhất là địa phương khó khăn đã thể hiện quyết tâm rất lớn, tiếp cận nhanh với yêu cầu mới, 70-80% học sinh bậc THPT ở các địa phương khó khăn được học trực tuyến, học qua truyền hình là con số cho thấy nỗ lực lớn của các địa phương, cơ sở giáo dục, giáo viên và học sinh”.<br />\r\n<br />\r\nCó 5 yếu tố quyết định thành công trong dạy học trực tuyến được Thứ trưởng đưa ra, trong đó trước hết là cơ sở hạ tầng, từ máy tính, phần mềm, đến đường truyền. Về vấn đề này, Bộ GDĐT đã làm việc với các doanh nghiệp, tập đoàn viễn thông để có hỗ trợ địa phương. Các địa phương cần rà soát, phân loại học sinh để đưa ra những phương án dạy và học phù hợp, học sinh nào được học trực tuyến đều đặn, chưa đều hoặc chưa được học thì phải có phương án án dạy bù khi các em quay lại trường học.<br />\r\n<br />\r\nYếu tố thứ hai là công tác quản lý chỉ đạo. Theo Thứ trưởng, sự quyết liệt trong quản lý, theo dõi, động viên, ghi nhận trong thời điểm khó khăn sẽ tạo động lực cho học sinh, giáo viên. Lãnh đạo sở GDĐT và hiệu trưởng nào tâm huyết sẽ triển khai thành công. “Hiệu trưởng cần quán triệt đây là nhiệm vụ để không có tâm lý vì nghỉ dạy mà làm việc với tinh thần không cao” - Thứ trưởng nhấn mạnh.<br />\r\n<br />\r\nĐội ngũ giáo viên là yếu tố quan trọng thứ ba trong triển khai dạy học trực tuyến. Để nâng cao chất lượng dạy học trực tuyến, Thứ trưởng đề nghị các địa phương tăng cường bồi dưỡng nghiệp vụ cho đội ngũ giáo viên. Bộ GDĐT sẵn sàng giới thiệu và hỗ trợ đội ngũ chuyên gia để bồi dường trực tuyến cho giáo viên các địa phương.<br />\r\n<br />\r\nCó hạ tầng tốt, người quản lý quyết liệt, giáo viên chất lượng, tâm huyết nhưng học sinh thiếu động lực học tập, phụ huynh thiếu sự chia sẻ, hỗ trợ thì quá trình triển khai dạy học trực tuyến, dạy học qua truyền hình không thể thành công. Đây cũng hai yếu tố cuối cùng được Thứ trưởng Nguyễn Hữu Độ đề cập. “Học sinh phải có ý thức tự học, nhất là các em cuối cấp. Phụ huynh học sinh cần động viên, hỗ trợ, tạo điều kiện cho các em học tập” - Thứ trưởng nói.<br />\r\n<br />\r\nĐịa phương đề xuất đi học trở lại từ đầu tháng 5; giữ kỳ thi THPT quốc gia<br />\r\n<br />\r\nTại cuộc họp, nhiều địa phương thông tin dự kiến đề xuất cho học sinh đi học trở lại vào đầu tháng 5. Ông Vũ Văn Dương, Giám đốc Sở GDĐT Cao Bằng cho biết, dự kiến sẽ tham mưu UBND tỉnh cho học sinh đi học trở lại vào cuối tháng 4, đầu tháng 5. Để bảo đảm an toàn cho học sinh, thầy cô giáo, một số giải pháp được Sở GDĐT tính đến, như phân chia khối lớp học khác buổi, ví dụ học sinh khối 9, 12 học sáng; các khối khác học buổi chiều… để học sinh không đến trường một lúc quá đông.<br />\r\n<br />\r\nTương tự Cao Bằng, Đắk Lắk hiện nay chưa có dịch và được xếp vào nhóm nguy cơ thấp. Bởi vậy, thông tin từ ông Phạm Đăng Khoa, giám đốc Sở GDĐT, nếu không có chuyển biến bất thường, Sở cũng sẽ tham mưu UBND tỉnh cho học sinh đi học lại vào đầu tháng 5 tới. Tại Nghệ An, Quảng Nam thời điểm mở cửa trường học cũng dự kiến vào thời điểm này. Thanh Hóa dự kiến đề xuất UBND tỉnh cho học sinh THCS, THPT đi học lại vào đầu tháng 5; các cấp học thấp hơn trở lại trường học sau đó khoảng từ 1-2 tuần…<br />\r\n<br />\r\nVới Yên Bái, ông Vương Văn Bằng, Giám đốc Sở GDĐT cho biết đã chủ động đưa ra 5 kịch bản tương ứng với 5 mốc thời gian dự kiến học sinh đi học trở lại, mốc sớm nhất là 20/4 và mốc muộn nhất là 15/6; kịch bản tương ứng với mỗi mốc thời gian đều tính đến đầy đủ các yếu tố, từ thực hiện chương trình đến ôn tập, đội ngũ, kinh phí kèm theo…<br />\r\n<br />\r\nÔng Đỗ Minh Tâm, Phó giám đốc Sở GDĐT Lào Cai cho biết đang cố gắng để học sinh có thể đi học lại vào đầu tháng 5. “Sở đang xây dựng 2 phương án. Phương án 1, dự kiến học sinh khối THPT và GDTX đi học trước, sau 1 tuần đến các khối còn lại. Phương án 2 dự kiến chỉ khối lớp 9 và lớp 12 đi học lại từ đầu tháng 5, sau đó đến các khối lớp khác” - ông Tâm chia sẻ.<br />\r\n<br />\r\nLiên quan đến vấn đề học sinh đi học trở lại, Thứ trưởng Nguyễn Hữu Độ cho rằng, đây là việc cần được tính toán, xem xét rất kỹ dựa trên nguyên tắc đảm bảo an toàn tuyệt đối cho học sinh, giáo viên. Thứ trưởng gợi ý, các địa phương nằm trong nhóm có nguy cơ cao theo khuyến nghị của Thủ tướng Chính phủ, cần xem xét, cân nhắc; địa phương nguy cơ thấp có thể xem xét đề xuất UBND tỉnh cho học sinh đi học trở lại.<br />\r\n<br />\r\n“Học sinh đi học phải an toàn, trường học có an toàn mới cho học sinh đi học. Các địa phương có thể tính toán để học sinh lớp 9, lớp 12 đi học trước, các lớp khác học sau; cũng không nhất thiết phải xếp lịch học cả tuần mà có thể xếp lịch học đan xen các khối lớp 3 buổi/tuần. Ở mỗi lớp học cũng có thể tách đôi số lượng học sinh để bố trí giảng dạy; kết hợp giữa học trực tiếp và trực tuyến…” - Thứ trưởng nhấn mạnh.<br />\r\n<br />\r\nThứ trưởng cũng lưu ý, trên tinh thần nội dung dạy học đã tinh giản, các trường xây dựng kế hoạch dạy học theo đúng thời gian và chương trình đã tinh giản, đồng thời tổ chức dạy học và ôn tập sao cho phù hợp. Quyết tâm để có thể hoàn thành chương trình trước 15/7, đặc biệt với học sinh khối 12.<br />\r\n<br />\r\nVới kỳ thi THPT quốc gia, tại cuộc họp, nhiều lãnh đạo sở GDĐT nêu mong muốn vẫn tổ chức thi. Việc giữ ổn định kỳ thi tránh được nhiều xáo trộn, đặc biệt với học sinh. Hiện nay, số lượng học sinh có nhu cầu thi đại học rất lớn. Nếu không tổ chức thi THPT quốc gia, các em sẽ phải đến thành phố lớn để dự thi tại các trường đại học, như vậy áp lực, căng thẳng và tốn kém. Về nội dung này, Thứ trưởng cho biết, Bộ GDĐT tính toán để có phương án phù hợp cho mọi tình huống.', '', '', '', 2, '', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_logs`
--

CREATE TABLE `nv4_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_rows`
--

CREATE TABLE `nv4_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_rows`
--

INSERT INTO `nv4_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(23, 1, '1', 0, 1, '', 0, 1607670775, 1607670775, 1, 1, 1607670480, 0, 2, 'Đại hội Chi bộ Cục Công nghệ thông tin thành công tốt đẹp', 'dai-hoi-chi-bo-cuc-cong-nghe-thong-tin-thanh-cong-tot-dep', 'Nhiệm kỳ 2015-2020, Chi bộ Cục Công nghệ thông tin (Bộ GD&ĐT) đã hoàn thành xuất sắc các nhiệm vụ chính trị được giao, luôn đạt danh hiệu Tổ chức cơ sở Đảng trong sạch, vững mạnh.', '2020_12/dhd-cits2.jpg', 'Đại hội Chi bộ Cục Công nghệ thông tin.', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(24, 1, '1', 0, 1, '', 0, 1607670994, 1607671143, 1, 2, 1607670960, 0, 2, 'Công văn số 173&#x002F;CNTT ngày 01&#x002F;04&#x002F;2020 của Cục CNTT về việc hỗ trợ của các doanh nghiệp ngành TTTT cho GDĐT trong phòng, chống dịch bệnh Covid-19', 'cong-van-so-173-cntt-ngay-01-04-2020-cua-cuc-cntt-ve-viec-ho-tro-cua-cac-doanh-nghiep-nganh-tttt-cho-gddt-trong-phong-chong-dich-benh-covid-19', '', '', '', 0, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(30, 2, '2', 0, 1, '', 0, 1607672875, 1607672875, 1, 6, 1607672760, 0, 2, 'Số hóa ngành giáo dục - lợi mọi bề', 'so-hoa-nganh-giao-duc-loi-moi-be', 'Ứng dụng CNTT vào công tác sổ sách, hồ sơ như sổ liên lạc điện tử, giáo án điện tử, sổ theo dõi chất lượng giáo dục, sổ chủ nhiệm… giúp giáo viên giảm bớt công việc không tên. Xa hơn, số hóa ngành GD được kỳ vọng sẽ triệt tiêu tiêu cực trong học tập, thi cử, đồng thời giúp phụ huynh theo dõi, đồng hành cùng nhà trường trong việc GD trẻ.', '2020_12/tin-bai-01-1.jpg', 'Số hóa sổ sách, hồ sơ giúp giáo viên có nhiều thời gian hơn cho công tác chuyên môn', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(31, 10, '10', 0, 1, '', 0, 1607672981, 1607672981, 1, 7, 1607672880, 0, 2, 'Hải Phòng&#x3A; Ký kết và triển khai công nghệ thông tin trong GD-ĐT', 'hai-phong-ky-ket-va-trien-khai-cong-nghe-thong-tin-trong-gd-dt', 'GD&TĐ - Sáng 23/8, Sở GD&ĐT Hải Phòng cùng đại diện các Vụ, Cục của Bộ GD&ĐT cùng ký kết và triển khai các dự án để phát triển giáo dục và đào tạo thành phố Hải Phòng giai đoạn 2020-2025.', '2020_12/tin-01-1.1.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(32, 10, '10', 0, 1, '', 0, 1607673039, 1607673039, 1, 8, 1607672940, 0, 2, 'Bắc Kạn&#x3A; Đẩy mạnh số hóa dữ liệu trong giáo dục', 'bac-kan-day-manh-so-hoa-du-lieu-trong-giao-duc', 'GD&TĐ - Mặc dù là một tỉnh miền núi với điều kiện còn khó khăn hạn chế, trong những năm gần đây, Bắc Kạn đã triển khai số hóa toàn bộ dữ liệu của học sinh, giáo viên, các nhà trường, đem lại những tiện ích và hiệu quả rõ rệt. Bắc Kạn: Đẩy mạnh số hóa dữ liệu trong giáo dục', '2020_12/tin-02-1.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(28, 1, '1', 0, 1, '', 0, 1607672658, 1607672695, 1, 4, 1607672580, 0, 2, 'Hội thảo chuyên đề chuyển đổi số ngành GDĐT và xây dựng môi trường giáo dục 4.0', 'hoi-thao-chuyen-de-chuyen-doi-so-nganh-gddt-va-xay-dung-moi-truong-giao-duc-4-0', 'Chiều ngày 17/9, Cục Công nghệ Thông tin đã điều phối thành công hội thảo chuyên đề “Chuyển đổi số ngành Giáo dục và Xây dựng môi trường Giáo dục 4.0” diễn ra tại TP. Hồ Chí Minh. Tham dự Hội thảo chuyên đề có gần 200 đại biểu đến từ các cơ quan quản lý, cơ sở giáo dục và công ty công nghệ trên toàn quốc.', '2020_12/tin-bai-01.jpg', 'Ông Nguyễn Sơn Hải, Cục trưởng Cục CNTT - Bộ GDĐT phát biểu tại phiên Tọa đàm của Hội thảo', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(33, 10, '10', 0, 1, '', 0, 1607673168, 1607916742, 1, 9, 1607673060, 0, 2, 'Hải Phòng&#x3A; Chuyển đổi số góp phần nâng cao chất lượng giáo dục', 'hai-phong-chuyen-doi-so-gop-phan-nang-cao-chat-luong-giao-duc', 'GD&TĐ - Hải Phòng là địa phương đi đầu trong việc chuyển đổi số, ứng dụng CNTT góp phần nâng cao chất lượng giáo dục và đào tạo.', '2020_12/tin-bai-01_1.jpg', 'Điểm cầu Hải Phòng tại Hội nghị toàn quốc tổng kết năm học 2019-2020, triển khai nhiệm vụ năm học 2020-2021 và những năm tiếp theo.', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(34, 11, '11', 0, 1, '', 0, 1607674242, 1607674308, 1, 10, 1607674200, 0, 2, 'Triển lãm công nghệ giáo dục BESS Vietnam 2019 đã sẵn sàng', 'trien-lam-cong-nghe-giao-duc-bess-vietnam-2019-da-san-sang', '', '', '', 0, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(35, 11, '11', 0, 1, '', 0, 1607674411, 1607855380, 1, 11, 1607674260, 0, 2, 'Chính thức ra mắt nền tảng công nghệ giáo dục số', 'chinh-thuc-ra-mat-nen-tang-cong-nghe-giao-duc-so', 'GDVN- Nền tảng giáo dục số - iGiaoduc.vn là sản phẩm hợp tác giữa Bộ Giáo dục và Đào tạo, Ban điều hành Đề án Hệ tri thức Việt số hóa và các đối tác tài trợ.', 'https://e-ict.gov.vn/uploads/news/2020_10/1-737.jpg', '', 3, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(36, 14, '14', 0, 1, '', 0, 1607674521, 1607855375, 1, 12, 1607674440, 0, 2, 'Dạy học trực tuyến&#x3A; Nỗ lực và quyết tâm từ những địa phương khó khăn', 'day-hoc-truc-tuyen-no-luc-va-quyet-tam-tu-nhung-dia-phuong-kho-khan', 'Ngày 16/4, Thứ trưởng Nguyễn Hữu Độ chủ trì họp trực tuyến với 19 Sở Giáo dục và Đào tạo (GDĐT) thuộc các vùng khó khăn về việc triển khai hoạt động dạy học từ xa qua internet và truyền hình; đồng thời chuẩn bị các điều kiện để sẵn sàng khi học sinh đi học trở lại.', '2020_12/16_4_thu-truong-nguyen-huu-do-1.jpg', 'Thứ trưởng Nguyễn Hứu Độ chù trì cuộc họp trực tuyến với 19 Sở GDĐT ngày 16&#x002F;4', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(37, 14, '14', 0, 1, '', 0, 1607674573, 1607855370, 1, 13, 1607674500, 0, 2, 'Đại học tiên phong đẩy mạnh chuyển đổi số giáo dục', 'dai-hoc-tien-phong-day-manh-chuyen-doi-so-giao-duc', 'Ngày 17/4, Thứ trưởng Nguyễn Văn Phúc chủ trì Hội nghị “Đào tạo trực tuyến của giáo dục đại học trong đại dịch Covid-19”. Hội nghị được kết nối tới hơn 300 điểm cầu gồm các cơ sở giáo dục đại học (GDĐH), nhà cung cấp công nghệ, dịch vụ hạ tầng kỹ thuật hàng đầu của Việt Nam và thế giới.', '2020_12/img-0033-1.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(38, 14, '14', 0, 1, '', 0, 1607674620, 1607916710, 1, 14, 1607674560, 0, 2, 'Trường học thay đổi để thích ứng trong thời đại số', 'truong-hoc-thay-doi-de-thich-ung-trong-thoi-dai-so', 'Thời gian qua, giáo dục trực tuyến trở thành hình thức học tập được nhắc tới nhiều nhất. Chỉ trong thời gian ngắn, các bài giảng trực tuyến đã và đang tạo ra những thay đổi lớn đến việc dạy-học của giáo viên và học sinh. Điều này cũng đem đến những cơ hội lớn cho ngành giáo dục với những bước chuyển tích cực để xây dựng môi trường học tập hiện đại, đáp ứng cuộc Cách mạng công nghiệp (CMCN) 4.0.', '', '', 0, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(39, 14, '14', 0, 1, '', 0, 1607674656, 1607855356, 1, 15, 1607674620, 0, 2, 'Tiên phong chuyển đổi số thu hẹp khoảng cách tiếp cận giáo dục ASEAN', 'tien-phong-chuyen-doi-so-thu-hep-khoang-cach-tiep-can-giao-duc-asean', 'Ngày 15/10/2020, Bộ Giáo dục và Đào tạo (GDĐT) phối hợp với Quỹ Nhi đồng Liên Hợp quốc (UNICEF) và Ban Thư ký Hiệp hội các quốc gia Đông Nam Á (ASEAN) tổ chức “Hội nghị ASEAN - UNICEF về Chuyển đổi kỹ thuật số các hệ thống giáo dục trong toàn ASEAN”.', 'https://e-ict.gov.vn/uploads/news/2020_10/tb2-01.jpg', '', 3, 1, '4', 1, 0, 7, 0, 0, 0, 0, '', 0),
(26, 2, '2', 0, 1, '', 0, 1607672219, 1607672219, 1, 3, 1607672340, 0, 2, 'Tăng cường ứng dụng CNTT trong quản lý chuyên môn trường mầm non', 'tang-cuong-ung-dung-cntt-trong-quan-ly-chuyen-mon-truong-mam-non', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(29, 2, '2', 0, 1, '', 0, 1607672756, 1607672807, 1, 5, 1607672700, 0, 2, 'Cần một cách nhìn khác về “vá lỗ hổng bảo mật”', 'can-mot-cach-nhin-khac-ve-va-lo-hong-bao-mat', 'Mới đây, trong cuộc trao đổi với phóng viên ICTnews, ông Ngô Việt Khôi cho biết, các chuyên gia an ninh mạng thống kê được 74% các cuộc tấn công thành công ngay trong ngày đầu tiên lỗ hổng được công bố, trong khi bản vá chính hãng cần trung bình 30-45 ngày để phát hành. Khoảng thời gian hệ thống dễ bị tổn thương nhất, được gọi là zero-day.', 'http://image1.ictnews.vn/_Files/2016/04/07/NgoVietKhoi.jpg', '', 3, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_sources`
--

CREATE TABLE `nv4_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_sources`
--

INSERT INTO `nv4_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags`
--

CREATE TABLE `nv4_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT 0,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags`
--

INSERT INTO `nv4_vi_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, 'việt-nam', '', '', 'việt nam'),
(5, 0, 'hoạt-động', '', '', 'hoạt động'),
(6, 0, 'tin-tức', '', '', 'tin tức'),
(7, 0, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, 'điện-tử', '', '', 'điện tử'),
(9, 1, 'nukeviet', '', '', 'nukeviet'),
(10, 1, 'vinades', '', '', 'vinades'),
(11, 0, 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 0, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 0, 'php', '', '', 'php'),
(14, 0, 'mysql', '', '', 'mysql'),
(15, 0, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 0, 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 0, 'nukeviet4', '', '', 'nukeviet4'),
(18, 0, 'mail', '', '', 'mail'),
(19, 0, 'fpt', '', '', 'fpt'),
(20, 0, 'smtp', '', '', 'smtp'),
(21, 0, 'bootstrap', '', '', 'bootstrap'),
(22, 0, 'block', '', '', 'block'),
(23, 0, 'modules', '', '', 'modules'),
(24, 0, 'banner', '', '', 'banner'),
(25, 0, 'liên-kết', '', '', 'liên kết'),
(26, 1, 'hosting', '', '', 'hosting'),
(27, 0, 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 0, 'hợp-tác', '', '', 'hợp tác'),
(29, 1, 'tốc-độ', '', '', 'tốc độ'),
(30, 1, 'website', '', '', 'website'),
(31, 1, 'bảo-mật', '', '', 'bảo mật'),
(32, 0, 'giáo-dục', '', '', 'giáo dục'),
(33, 0, 'edu-gate', '', '', 'edu gate'),
(34, 0, 'lập-trình', '', '', 'lập trình'),
(35, 0, 'logo', '', '', 'logo'),
(36, 0, 'code', '', '', 'code'),
(37, 0, 'thực-tập', '', '', 'thực tập'),
(38, 0, 'kinh-doanh', '', '', 'kinh doanh'),
(39, 0, 'nhân-viên', '', '', 'nhân viên'),
(40, 0, 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 0, 'module', '', '', 'module'),
(42, 0, 'php-nuke', '', '', 'php-nuke'),
(43, 1, 'bộ-giáo-dục-và-đào-tạo', '', '', 'Bộ Giáo dục và Đào tạo'),
(44, 1, 'cục-công-nghệ-thông-tin', '', '', 'cục công nghệ thông tin'),
(45, 1, 'đại-hội-chi-bộ', '', '', 'đại hội chi bộ');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags_id`
--

CREATE TABLE `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags_id`
--

INSERT INTO `nv4_vi_news_tags_id` (`id`, `tid`, `keyword`) VALUES
(23, 45, 'đại hội chi bộ'),
(23, 44, 'cục công nghệ thông tin'),
(23, 43, 'Bộ Giáo dục và Đào tạo');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tmp`
--

CREATE TABLE `nv4_vi_news_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tmp`
--

INSERT INTO `nv4_vi_news_tmp` (`id`, `admin_id`, `time_edit`, `time_late`, `ip`) VALUES
(21, 1, 1607658410, 1607658421, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_topics`
--

CREATE TABLE `nv4_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_topics`
--

INSERT INTO `nv4_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page`
--

CREATE TABLE `nv4_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page_config`
--

CREATE TABLE `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_page_config`
--

INSERT INTO `nv4_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_referer_stats`
--

CREATE TABLE `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `month01` int(11) NOT NULL DEFAULT 0,
  `month02` int(11) NOT NULL DEFAULT 0,
  `month03` int(11) NOT NULL DEFAULT 0,
  `month04` int(11) NOT NULL DEFAULT 0,
  `month05` int(11) NOT NULL DEFAULT 0,
  `month06` int(11) NOT NULL DEFAULT 0,
  `month07` int(11) NOT NULL DEFAULT 0,
  `month08` int(11) NOT NULL DEFAULT 0,
  `month09` int(11) NOT NULL DEFAULT 0,
  `month10` int(11) NOT NULL DEFAULT 0,
  `month11` int(11) NOT NULL DEFAULT 0,
  `month12` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_searchkeys`
--

CREATE TABLE `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms`
--

CREATE TABLE `nv4_vi_siteterms` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms`
--

INSERT INTO `nv4_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3 style=\"text-align: justify;\">1.1. Thu thập tự động:</h3>  <div style=\"text-align: justify;\">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style=\"text-align: justify;\">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style=\"text-align: justify;\">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style=\"text-align: justify;\">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style=\"text-align: justify;\">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style=\"text-align: justify;\">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style=\"text-align: justify;\">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style=\"text-align: justify;\">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style=\"text-align: justify;\">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử lý thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p style=\"text-align: justify;\">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style=\"text-align: justify;\">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style=\"text-align: justify;\">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style=\"text-align: justify;\">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style=\"text-align: justify;\">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style=\"text-align: justify;\">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style=\"text-align: justify;\">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style=\"text-align: justify;\">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style=\"text-align: justify;\">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style=\"text-align: justify;\">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style=\"text-align: justify;\">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>', '', 0, '4', '', 1, 1, 1606359771, 1606359771, 1, 1, 0),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style=\"text-align: justify;\">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style=\"text-align: justify;\">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style=\"text-align: justify;\">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p style=\"text-align: justify;\">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p style=\"text-align: justify;\">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p style=\"text-align: justify;\">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p style=\"text-align: justify;\">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style=\"text-align: justify;\">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style=\"text-align: justify;\">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 2, 1, 1606359771, 1606359771, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms_config`
--

CREATE TABLE `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms_config`
--

INSERT INTO `nv4_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting`
--

CREATE TABLE `nv4_vi_voting` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT 1,
  `active_captcha` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting`
--

INSERT INTO `nv4_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `active_captcha`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 0, 1, '6', 1275318563, 0, 1),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 0, 1, '6', 1275318563, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting_rows`
--

CREATE TABLE `nv4_vi_voting_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `vid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting_rows`
--

INSERT INTO `nv4_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv4_authors`
--
ALTER TABLE `nv4_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `nv4_authors_oauth`
--
ALTER TABLE `nv4_authors_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`oauth_server`,`oauth_uid`),
  ADD KEY `oauth_email` (`oauth_email`);

--
-- Indexes for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Indexes for table `nv4_config`
--
ALTER TABLE `nv4_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `nv4_cookies`
--
ALTER TABLE `nv4_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `nv4_counter`
--
ALTER TABLE `nv4_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `nv4_ips`
--
ALTER TABLE `nv4_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Indexes for table `nv4_language`
--
ALTER TABLE `nv4_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`);

--
-- Indexes for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `admin_view_allowed` (`admin_view_allowed`),
  ADD KEY `logic_mode` (`logic_mode`);

--
-- Indexes for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `nv4_sessions`
--
ALTER TABLE `nv4_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `nv4_setup_extensions`
--
ALTER TABLE `nv4_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_setup_language`
--
ALTER TABLE `nv4_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `nv4_upload_file`
--
ALTER TABLE `nv4_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_users`
--
ALTER TABLE `nv4_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Indexes for table `nv4_users_config`
--
ALTER TABLE `nv4_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `nv4_users_edit`
--
ALTER TABLE `nv4_users_edit`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `ktitle` (`title`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_users_groups_users`
--
ALTER TABLE `nv4_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `nv4_users_info`
--
ALTER TABLE `nv4_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_openid`
--
ALTER TABLE `nv4_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_about_config`
--
ALTER TABLE `nv4_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_vi_blocks_weight`
--
ALTER TABLE `nv4_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_laws_area`
--
ALTER TABLE `nv4_vi_laws_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`,`parentid`),
  ADD KEY `weight` (`weight`);

--
-- Indexes for table `nv4_vi_laws_cat`
--
ALTER TABLE `nv4_vi_laws_cat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`,`parentid`),
  ADD KEY `weight` (`weight`);

--
-- Indexes for table `nv4_vi_laws_config`
--
ALTER TABLE `nv4_vi_laws_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_laws_examine`
--
ALTER TABLE `nv4_vi_laws_examine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_laws_row`
--
ALTER TABLE `nv4_vi_laws_row`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_laws_row_area`
--
ALTER TABLE `nv4_vi_laws_row_area`
  ADD UNIQUE KEY `alias` (`row_id`,`area_id`);

--
-- Indexes for table `nv4_vi_laws_set_replace`
--
ALTER TABLE `nv4_vi_laws_set_replace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_laws_signer`
--
ALTER TABLE `nv4_vi_laws_signer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_laws_subject`
--
ALTER TABLE `nv4_vi_laws_subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `weight` (`weight`);

--
-- Indexes for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `nv4_vi_modthemes`
--
ALTER TABLE `nv4_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `nv4_vi_modules`
--
ALTER TABLE `nv4_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_14`
--
ALTER TABLE `nv4_vi_news_14`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_admins`
--
ALTER TABLE `nv4_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_vi_news_block`
--
ALTER TABLE `nv4_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_config_post`
--
ALTER TABLE `nv4_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_news_detail`
--
ALTER TABLE `nv4_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_tags_id`
--
ALTER TABLE `nv4_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_vi_news_tmp`
--
ALTER TABLE `nv4_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page_config`
--
ALTER TABLE `nv4_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_referer_stats`
--
ALTER TABLE `nv4_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `nv4_vi_searchkeys`
--
ALTER TABLE `nv4_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_siteterms_config`
--
ALTER TABLE `nv4_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nv4_authors_oauth`
--
ALTER TABLE `nv4_authors_oauth`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `nv4_ips`
--
ALTER TABLE `nv4_ips`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_language`
--
ALTER TABLE `nv4_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- AUTO_INCREMENT for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nv4_users`
--
ALTER TABLE `nv4_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_area`
--
ALTER TABLE `nv4_vi_laws_area`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_cat`
--
ALTER TABLE `nv4_vi_laws_cat`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_examine`
--
ALTER TABLE `nv4_vi_laws_examine`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_row`
--
ALTER TABLE `nv4_vi_laws_row`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_set_replace`
--
ALTER TABLE `nv4_vi_laws_set_replace`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_signer`
--
ALTER TABLE `nv4_vi_laws_signer`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_subject`
--
ALTER TABLE `nv4_vi_laws_subject`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `nv4_vi_news_14`
--
ALTER TABLE `nv4_vi_news_14`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  MODIFY `vid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
