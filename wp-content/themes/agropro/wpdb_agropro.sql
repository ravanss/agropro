-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Maio-2022 às 16:05
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wpdb_agropro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-04-26 10:27:03', '2022-04-26 13:27:03', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://localhost/cursos/agropro', 'yes'),
(2, 'home', 'https://localhost/cursos/agropro', 'yes'),
(3, 'blogname', 'AgroPro', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'psaulo7@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:39:\"disable-gutenberg/disable-gutenberg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'agropro', 'yes'),
(41, 'stylesheet', 'agropro', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '10', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1666531613', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1652192835;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1652232434;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1652232435;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1652275632;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652275656;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652275658;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1650981066;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(127, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(146, 'can_compress_scripts', '1', 'no'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(159, 'current_theme', '', 'yes'),
(160, 'theme_mods_agropro', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(209, 'recently_activated', 'a:0:{}', 'yes'),
(212, 'acf_version', '5.9.4', 'yes'),
(303, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":1,\"critical\":2}', 'yes'),
(448, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1652191451;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(449, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1652191454;s:7:\"checked\";a:1:{s:7:\"agropro\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(466, '_site_transient_timeout_browser_7c8d05c80ca86e628019852d1d7d66c0', '1652364028', 'no'),
(467, '_site_transient_browser_7c8d05c80ca86e628019852d1d7d66c0', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"99.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(468, '_site_transient_timeout_php_check_e0da9a46ec9b74424e3af84a2a13de68', '1652364029', 'no'),
(469, '_site_transient_php_check_e0da9a46ec9b74424e3af84a2a13de68', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(485, 'recovery_mode_email_last_sent', '1651770185', 'yes'),
(495, '_site_transient_timeout_browser_f0f466a59a9efd2032e38b07d3447d1c', '1652386583', 'no'),
(496, '_site_transient_browser_f0f466a59a9efd2032e38b07d3447d1c', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"100.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(497, '_site_transient_timeout_php_check_6c9aa7b1087ab72b13d3f99b1ffc068f', '1652386584', 'no'),
(498, '_site_transient_php_check_6c9aa7b1087ab72b13d3f99b1ffc068f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(603, '_transient_timeout_acf_plugin_updates', '1652309261', 'no'),
(604, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.4\";}}', 'no'),
(643, '_transient_timeout_global_styles_agropro', '1652191510', 'no'),
(644, '_transient_global_styles_agropro', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(646, '_site_transient_timeout_theme_roots', '1652193253', 'no'),
(647, '_site_transient_theme_roots', 'a:1:{s:7:\"agropro\";s:7:\"/themes\";}', 'no'),
(648, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1652191456;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.6\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.4\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.6\";}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1651361615:1'),
(4, 5, '_wp_page_template', 'page-home.php'),
(5, 8, '_edit_lock', '1651958048:1'),
(6, 8, '_wp_page_template', 'page-about.php'),
(7, 10, '_edit_lock', '1650983553:1'),
(8, 10, '_wp_page_template', 'page-blog.php'),
(9, 12, '_edit_lock', '1650983570:1'),
(10, 12, '_wp_page_template', 'page-contact.php'),
(11, 14, '_edit_lock', '1652191321:1'),
(12, 14, '_wp_page_template', 'page-service.php'),
(13, 1, '_edit_lock', '1650985304:1'),
(14, 16, '_edit_last', '1'),
(15, 16, '_edit_lock', '1652147682:1'),
(16, 5, '_edit_last', '1'),
(17, 5, 'title_content', 'Agropecuária'),
(18, 5, '_title_content', 'field_6268320e64fb4'),
(19, 5, 'choose_title', 'Porque escolher-nos'),
(20, 5, '_choose_title', 'field_6268324c64fb5'),
(21, 5, 'choose_itens_0_choose_number', '300'),
(22, 5, '_choose_itens_0_choose_number', 'field_6268329e64fb7'),
(23, 5, 'choose_itens_0_choose_text', 'Clientes\r\nRegulamentares'),
(24, 5, '_choose_itens_0_choose_text', 'field_626832c164fb8'),
(25, 5, 'choose_itens', '4'),
(26, 5, '_choose_itens', 'field_6268328964fb6'),
(27, 22, 'title_content', 'Agropecuária'),
(28, 22, '_title_content', 'field_6268320e64fb4'),
(29, 22, 'choose_title', 'Porque escolher-nos'),
(30, 22, '_choose_title', 'field_6268324c64fb5'),
(31, 22, 'choose_itens_0_choose_number', ''),
(32, 22, '_choose_itens_0_choose_number', 'field_6268329e64fb7'),
(33, 22, 'choose_itens_0_choose_text', 'Clientes Regulamentares'),
(34, 22, '_choose_itens_0_choose_text', 'field_626832c164fb8'),
(35, 22, 'choose_itens', '1'),
(36, 22, '_choose_itens', 'field_6268328964fb6'),
(37, 23, 'title_content', 'Agropecuária'),
(38, 23, '_title_content', 'field_6268320e64fb4'),
(39, 23, 'choose_title', 'Porque escolher-nos'),
(40, 23, '_choose_title', 'field_6268324c64fb5'),
(41, 23, 'choose_itens_0_choose_number', ''),
(42, 23, '_choose_itens_0_choose_number', 'field_6268329e64fb7'),
(43, 23, 'choose_itens_0_choose_text', 'Clientes Regulamentares'),
(44, 23, '_choose_itens_0_choose_text', 'field_626832c164fb8'),
(45, 23, 'choose_itens', '1'),
(46, 23, '_choose_itens', 'field_6268328964fb6'),
(47, 24, 'title_content', 'Agropecuária'),
(48, 24, '_title_content', 'field_6268320e64fb4'),
(49, 24, 'choose_title', 'Porque escolher-nos'),
(50, 24, '_choose_title', 'field_6268324c64fb5'),
(51, 24, 'choose_itens_0_choose_number', '300'),
(52, 24, '_choose_itens_0_choose_number', 'field_6268329e64fb7'),
(53, 24, 'choose_itens_0_choose_text', 'Clientes\r\nRegulamentares'),
(54, 24, '_choose_itens_0_choose_text', 'field_626832c164fb8'),
(55, 24, 'choose_itens', '1'),
(56, 24, '_choose_itens', 'field_6268328964fb6'),
(57, 25, 'title_content', 'Agropecuária'),
(58, 25, '_title_content', 'field_6268320e64fb4'),
(59, 25, 'choose_title', 'Porque escolher-nos'),
(60, 25, '_choose_title', 'field_6268324c64fb5'),
(61, 25, 'choose_itens_0_choose_number', '300'),
(62, 25, '_choose_itens_0_choose_number', 'field_6268329e64fb7'),
(63, 25, 'choose_itens_0_choose_text', 'Clientes\r\nRegulamentares'),
(64, 25, '_choose_itens_0_choose_text', 'field_626832c164fb8'),
(65, 25, 'choose_itens', '1'),
(66, 25, '_choose_itens', 'field_6268328964fb6'),
(67, 5, 'choose_itens_1_choose_number', '250'),
(68, 5, '_choose_itens_1_choose_number', 'field_6268329e64fb7'),
(69, 5, 'choose_itens_1_choose_text', 'Profissional\r\nEngenharia'),
(70, 5, '_choose_itens_1_choose_text', 'field_626832c164fb8'),
(71, 5, 'choose_itens_2_choose_number', '15'),
(72, 5, '_choose_itens_2_choose_number', 'field_6268329e64fb7'),
(73, 5, 'choose_itens_2_choose_text', 'Pontos de venda\r\nBens\r\n\r\n'),
(74, 5, '_choose_itens_2_choose_text', 'field_626832c164fb8'),
(75, 5, 'choose_itens_3_choose_number', '55'),
(76, 5, '_choose_itens_3_choose_number', 'field_6268329e64fb7'),
(77, 5, 'choose_itens_3_choose_text', 'Prêmios\r\nGanho'),
(78, 5, '_choose_itens_3_choose_text', 'field_626832c164fb8'),
(79, 26, 'title_content', 'Agropecuária'),
(80, 26, '_title_content', 'field_6268320e64fb4'),
(81, 26, 'choose_title', 'Porque escolher-nos'),
(82, 26, '_choose_title', 'field_6268324c64fb5'),
(83, 26, 'choose_itens_0_choose_number', '300'),
(84, 26, '_choose_itens_0_choose_number', 'field_6268329e64fb7'),
(85, 26, 'choose_itens_0_choose_text', 'Clientes\r\nRegulamentares'),
(86, 26, '_choose_itens_0_choose_text', 'field_626832c164fb8'),
(87, 26, 'choose_itens', '4'),
(88, 26, '_choose_itens', 'field_6268328964fb6'),
(89, 26, 'choose_itens_1_choose_number', '25'),
(90, 26, '_choose_itens_1_choose_number', 'field_6268329e64fb7'),
(91, 26, 'choose_itens_1_choose_text', 'Profissional\r\nEngenharia'),
(92, 26, '_choose_itens_1_choose_text', 'field_626832c164fb8'),
(93, 26, 'choose_itens_2_choose_number', '15'),
(94, 26, '_choose_itens_2_choose_number', 'field_6268329e64fb7'),
(95, 26, 'choose_itens_2_choose_text', 'Pontos de venda\r\nBens\r\n\r\n'),
(96, 26, '_choose_itens_2_choose_text', 'field_626832c164fb8'),
(97, 26, 'choose_itens_3_choose_number', '55'),
(98, 26, '_choose_itens_3_choose_number', 'field_6268329e64fb7'),
(99, 26, 'choose_itens_3_choose_text', 'Prêmios\r\nGanho'),
(100, 26, '_choose_itens_3_choose_text', 'field_626832c164fb8'),
(101, 27, 'title_content', 'Agropecuária'),
(102, 27, '_title_content', 'field_6268320e64fb4'),
(103, 27, 'choose_title', 'Porque escolher-nos'),
(104, 27, '_choose_title', 'field_6268324c64fb5'),
(105, 27, 'choose_itens_0_choose_number', '300'),
(106, 27, '_choose_itens_0_choose_number', 'field_6268329e64fb7'),
(107, 27, 'choose_itens_0_choose_text', 'Clientes\r\nRegulamentares'),
(108, 27, '_choose_itens_0_choose_text', 'field_626832c164fb8'),
(109, 27, 'choose_itens', '4'),
(110, 27, '_choose_itens', 'field_6268328964fb6'),
(111, 27, 'choose_itens_1_choose_number', '250'),
(112, 27, '_choose_itens_1_choose_number', 'field_6268329e64fb7'),
(113, 27, 'choose_itens_1_choose_text', 'Profissional\r\nEngenharia'),
(114, 27, '_choose_itens_1_choose_text', 'field_626832c164fb8'),
(115, 27, 'choose_itens_2_choose_number', '15'),
(116, 27, '_choose_itens_2_choose_number', 'field_6268329e64fb7'),
(117, 27, 'choose_itens_2_choose_text', 'Pontos de venda\r\nBens\r\n\r\n'),
(118, 27, '_choose_itens_2_choose_text', 'field_626832c164fb8'),
(119, 27, 'choose_itens_3_choose_number', '55'),
(120, 27, '_choose_itens_3_choose_number', 'field_6268329e64fb7'),
(121, 27, 'choose_itens_3_choose_text', 'Prêmios\r\nGanho'),
(122, 27, '_choose_itens_3_choose_text', 'field_626832c164fb8'),
(123, 33, '_wp_attached_file', '2022/04/banner.jpg'),
(124, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:880;s:4:\"file\";s:18:\"2022/04/banner.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 5, 'carrosel_itens_0_carrosel-item', '33'),
(126, 5, '_carrosel_itens_0_carrosel-item', 'field_626daa513ed04'),
(127, 5, 'carrosel_itens_0_alt-carrosel-item', 'Banner principal do site, e um lindo campo verde plano'),
(128, 5, '_carrosel_itens_0_alt-carrosel-item', 'field_626daa6d3ed05'),
(129, 5, 'carrosel_itens', '3'),
(130, 5, '_carrosel_itens', 'field_626daa343ed03'),
(131, 34, 'title_content', 'Agropecuária'),
(132, 34, '_title_content', 'field_6268320e64fb4'),
(133, 34, 'choose_title', 'Porque escolher-nos'),
(134, 34, '_choose_title', 'field_6268324c64fb5'),
(135, 34, 'choose_itens_0_choose_number', '300'),
(136, 34, '_choose_itens_0_choose_number', 'field_6268329e64fb7'),
(137, 34, 'choose_itens_0_choose_text', 'Clientes\r\nRegulamentares'),
(138, 34, '_choose_itens_0_choose_text', 'field_626832c164fb8'),
(139, 34, 'choose_itens', '4'),
(140, 34, '_choose_itens', 'field_6268328964fb6'),
(141, 34, 'choose_itens_1_choose_number', '250'),
(142, 34, '_choose_itens_1_choose_number', 'field_6268329e64fb7'),
(143, 34, 'choose_itens_1_choose_text', 'Profissional\r\nEngenharia'),
(144, 34, '_choose_itens_1_choose_text', 'field_626832c164fb8'),
(145, 34, 'choose_itens_2_choose_number', '15'),
(146, 34, '_choose_itens_2_choose_number', 'field_6268329e64fb7'),
(147, 34, 'choose_itens_2_choose_text', 'Pontos de venda\r\nBens\r\n\r\n'),
(148, 34, '_choose_itens_2_choose_text', 'field_626832c164fb8'),
(149, 34, 'choose_itens_3_choose_number', '55'),
(150, 34, '_choose_itens_3_choose_number', 'field_6268329e64fb7'),
(151, 34, 'choose_itens_3_choose_text', 'Prêmios\r\nGanho'),
(152, 34, '_choose_itens_3_choose_text', 'field_626832c164fb8'),
(153, 34, 'carrosel_itens_0_carrosel-item', '33'),
(154, 34, '_carrosel_itens_0_carrosel-item', 'field_626daa513ed04'),
(155, 34, 'carrosel_itens_0_alt-carrosel-item', 'Banner principal do site, e um lindo campo verde plano'),
(156, 34, '_carrosel_itens_0_alt-carrosel-item', 'field_626daa6d3ed05'),
(157, 34, 'carrosel_itens', '1'),
(158, 34, '_carrosel_itens', 'field_626daa343ed03'),
(159, 5, 'carrosel_itens_1_carrosel-item', '33'),
(160, 5, '_carrosel_itens_1_carrosel-item', 'field_626daa513ed04'),
(161, 5, 'carrosel_itens_1_alt-carrosel-item', 'Banner principal do site, e um lindo campo verde plano'),
(162, 5, '_carrosel_itens_1_alt-carrosel-item', 'field_626daa6d3ed05'),
(163, 5, 'carrosel_itens_2_carrosel-item', '33'),
(164, 5, '_carrosel_itens_2_carrosel-item', 'field_626daa513ed04'),
(165, 5, 'carrosel_itens_2_alt-carrosel-item', 'Banner principal do site, e um lindo campo verde plano'),
(166, 5, '_carrosel_itens_2_alt-carrosel-item', 'field_626daa6d3ed05'),
(167, 35, 'title_content', 'Agropecuária'),
(168, 35, '_title_content', 'field_6268320e64fb4'),
(169, 35, 'choose_title', 'Porque escolher-nos'),
(170, 35, '_choose_title', 'field_6268324c64fb5'),
(171, 35, 'choose_itens_0_choose_number', '300'),
(172, 35, '_choose_itens_0_choose_number', 'field_6268329e64fb7'),
(173, 35, 'choose_itens_0_choose_text', 'Clientes\r\nRegulamentares'),
(174, 35, '_choose_itens_0_choose_text', 'field_626832c164fb8'),
(175, 35, 'choose_itens', '4'),
(176, 35, '_choose_itens', 'field_6268328964fb6'),
(177, 35, 'choose_itens_1_choose_number', '250'),
(178, 35, '_choose_itens_1_choose_number', 'field_6268329e64fb7'),
(179, 35, 'choose_itens_1_choose_text', 'Profissional\r\nEngenharia'),
(180, 35, '_choose_itens_1_choose_text', 'field_626832c164fb8'),
(181, 35, 'choose_itens_2_choose_number', '15'),
(182, 35, '_choose_itens_2_choose_number', 'field_6268329e64fb7'),
(183, 35, 'choose_itens_2_choose_text', 'Pontos de venda\r\nBens\r\n\r\n'),
(184, 35, '_choose_itens_2_choose_text', 'field_626832c164fb8'),
(185, 35, 'choose_itens_3_choose_number', '55'),
(186, 35, '_choose_itens_3_choose_number', 'field_6268329e64fb7'),
(187, 35, 'choose_itens_3_choose_text', 'Prêmios\r\nGanho'),
(188, 35, '_choose_itens_3_choose_text', 'field_626832c164fb8'),
(189, 35, 'carrosel_itens_0_carrosel-item', '33'),
(190, 35, '_carrosel_itens_0_carrosel-item', 'field_626daa513ed04'),
(191, 35, 'carrosel_itens_0_alt-carrosel-item', 'Banner principal do site, e um lindo campo verde plano'),
(192, 35, '_carrosel_itens_0_alt-carrosel-item', 'field_626daa6d3ed05'),
(193, 35, 'carrosel_itens', '3'),
(194, 35, '_carrosel_itens', 'field_626daa343ed03'),
(195, 35, 'carrosel_itens_1_carrosel-item', '33'),
(196, 35, '_carrosel_itens_1_carrosel-item', 'field_626daa513ed04'),
(197, 35, 'carrosel_itens_1_alt-carrosel-item', 'Banner principal do site, e um lindo campo verde plano'),
(198, 35, '_carrosel_itens_1_alt-carrosel-item', 'field_626daa6d3ed05'),
(199, 35, 'carrosel_itens_2_carrosel-item', '33'),
(200, 35, '_carrosel_itens_2_carrosel-item', 'field_626daa513ed04'),
(201, 35, 'carrosel_itens_2_alt-carrosel-item', 'Banner principal do site, e um lindo campo verde plano'),
(202, 35, '_carrosel_itens_2_alt-carrosel-item', 'field_626daa6d3ed05'),
(203, 38, '_edit_last', '1'),
(204, 38, '_edit_lock', '1651958048:1'),
(205, 8, '_edit_last', '1'),
(206, 8, 'link-span', 'About Us'),
(207, 8, '_link-span', 'field_6275d988b25ed'),
(208, 8, 'link-title', 'AGRICULTURE MARKET'),
(209, 8, '_link-title', 'field_62765543b25ee'),
(210, 8, 'about-text', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact th'),
(211, 8, '_about-text', 'field_6276d5bdd161b'),
(212, 8, 'link-about', 'Learn More'),
(213, 8, '_link-about', 'field_6276d5d9d161c'),
(214, 44, 'link-span', 'About Us'),
(215, 44, '_link-span', 'field_6275d988b25ed'),
(216, 44, 'link-title', 'AGRICULTURE MARKET'),
(217, 44, '_link-title', 'field_62765543b25ee'),
(218, 44, 'about-text', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact th'),
(219, 44, '_about-text', 'field_6276d5bdd161b'),
(220, 44, 'link-about', 'Learn More'),
(221, 44, '_link-about', 'field_6276d5d9d161c'),
(222, 8, 'about_itens_0_link-span', 'Sobre nós'),
(223, 8, '_about_itens_0_link-span', 'field_6275d988b25ed'),
(224, 8, 'about_itens_0_link-title', 'Agroprodutividad'),
(225, 8, '_about_itens_0_link-title', 'field_62765543b25ee'),
(226, 8, 'about_itens_0_about-text', 'Agropecuária é a junção dos substantivos agricultura e pecuária. É o cultivo de plantas (agricultura) e a criação de animais (pecuária) para o consumo humano ou para o fornecimento de matérias-primas na fabricação de roupas, medicamentos, biocombustíveis, produtos de beleza, entre outros.'),
(227, 8, '_about_itens_0_about-text', 'field_6276dc04ff55b'),
(228, 8, 'about_itens_0_link-about', 'Leia mais'),
(229, 8, '_about_itens_0_link-about', 'field_6276d5d9d161c'),
(230, 8, 'about_itens', '1'),
(231, 8, '_about_itens', 'field_6276db3bff558'),
(232, 46, 'link-span', 'About Us'),
(233, 46, '_link-span', 'field_6275d988b25ed'),
(234, 46, 'link-title', 'AGRICULTURE MARKET'),
(235, 46, '_link-title', 'field_62765543b25ee'),
(236, 46, 'about-text', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact th'),
(237, 46, '_about-text', 'field_6276d5bdd161b'),
(238, 46, 'link-about', 'Learn More'),
(239, 46, '_link-about', 'field_6276d5d9d161c'),
(240, 46, 'about_itens_0_link-span', 'Sobre nós'),
(241, 46, '_about_itens_0_link-span', 'field_6275d988b25ed'),
(242, 46, 'about_itens_0_link-title', 'Agroprodutividad'),
(243, 46, '_about_itens_0_link-title', 'field_62765543b25ee'),
(244, 46, 'about_itens_0_about-text', 'Agropecuária é a junção dos substantivos agricultura e pecuária. É o cultivo de plantas (agricultura) e a criação de animais (pecuária) para o consumo humano ou para o fornecimento de matérias-primas na fabricação de roupas, medicamentos, biocombustíveis, produtos de beleza, entre outros.'),
(245, 46, '_about_itens_0_about-text', 'field_6276d5bdd161b'),
(246, 46, 'about_itens_0_link-about', 'Leia mais'),
(247, 46, '_about_itens_0_link-about', 'field_6276d5d9d161c'),
(248, 46, 'about_itens', '1'),
(249, 46, '_about_itens', 'field_6276d994d1f7d'),
(250, 47, 'link-span', 'About Us'),
(251, 47, '_link-span', 'field_6275d988b25ed'),
(252, 47, 'link-title', 'AGRICULTURE MARKET'),
(253, 47, '_link-title', 'field_62765543b25ee'),
(254, 47, 'about-text', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact th'),
(255, 47, '_about-text', 'field_6276d5bdd161b'),
(256, 47, 'link-about', 'Learn More'),
(257, 47, '_link-about', 'field_6276d5d9d161c'),
(258, 47, 'about_itens_0_link-span', 'Sobre nós'),
(259, 47, '_about_itens_0_link-span', 'field_6275d988b25ed'),
(260, 47, 'about_itens_0_link-title', 'Agroprodutividad'),
(261, 47, '_about_itens_0_link-title', 'field_62765543b25ee'),
(262, 47, 'about_itens_0_about-text', 'Agropecuária é a junção dos substantivos agricultura e pecuária. É o cultivo de plantas (agricultura) e a criação de animais (pecuária) para o consumo humano ou para o fornecimento de matérias-primas na fabricação de roupas, medicamentos, biocombustíveis, produtos de beleza, entre outros.'),
(263, 47, '_about_itens_0_about-text', 'field_6276d5bdd161b'),
(264, 47, 'about_itens_0_link-about', 'Leia mais'),
(265, 47, '_about_itens_0_link-about', 'field_6276d5d9d161c'),
(266, 47, 'about_itens', '1'),
(267, 47, '_about_itens', 'field_6276d994d1f7d'),
(268, 8, 'about_itens_0_about-span', 'Sobre nós'),
(269, 8, '_about_itens_0_about-span', 'field_6276dbe5ff559'),
(270, 8, 'about_itens_0_about-title', 'Agro-produtividade'),
(271, 8, '_about_itens_0_about-title', 'field_6276dbf7ff55a'),
(272, 8, 'about_itens_0_about-about', 'Leia mais'),
(273, 8, '_about_itens_0_about-about', 'field_6276d5d9d161c'),
(274, 48, 'link-span', 'About Us'),
(275, 48, '_link-span', 'field_6275d988b25ed'),
(276, 48, 'link-title', 'AGRICULTURE MARKET'),
(277, 48, '_link-title', 'field_62765543b25ee'),
(278, 48, 'about-text', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact th'),
(279, 48, '_about-text', 'field_6276d5bdd161b'),
(280, 48, 'link-about', 'Learn More'),
(281, 48, '_link-about', 'field_6276d5d9d161c'),
(282, 48, 'about_itens_0_link-span', 'Sobre nós'),
(283, 48, '_about_itens_0_link-span', 'field_6275d988b25ed'),
(284, 48, 'about_itens_0_link-title', 'Agroprodutividad'),
(285, 48, '_about_itens_0_link-title', 'field_62765543b25ee'),
(286, 48, 'about_itens_0_about-text', 'Agropecuária é a junção dos substantivos agricultura e pecuária. É o cultivo de plantas (agricultura) e a criação de animais (pecuária) para o consumo humano ou para o fornecimento de matérias-primas na fabricação de roupas, medicamentos, biocombustíveis, produtos de beleza, entre outros.'),
(287, 48, '_about_itens_0_about-text', 'field_6276d5bdd161b'),
(288, 48, 'about_itens_0_link-about', 'Leia mais'),
(289, 48, '_about_itens_0_link-about', 'field_6276d5d9d161c'),
(290, 48, 'about_itens', '1'),
(291, 48, '_about_itens', 'field_6276d994d1f7d'),
(292, 48, 'about_itens_0_about-span', 'Sobre nós'),
(293, 48, '_about_itens_0_about-span', 'field_6275d988b25ed'),
(294, 48, 'about_itens_0_about-title', 'Agro-produtividade'),
(295, 48, '_about_itens_0_about-title', 'field_62765543b25ee'),
(296, 48, 'about_itens_0_about-about', 'Leia mais'),
(297, 48, '_about_itens_0_about-about', 'field_6276d5d9d161c'),
(298, 8, 'about_itens_0_about-link', 'Leia mais'),
(299, 8, '_about_itens_0_about-link', 'field_6276dc1bff55c'),
(300, 54, 'link-span', 'About Us'),
(301, 54, '_link-span', 'field_6275d988b25ed'),
(302, 54, 'link-title', 'AGRICULTURE MARKET'),
(303, 54, '_link-title', 'field_62765543b25ee'),
(304, 54, 'about-text', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact th'),
(305, 54, '_about-text', 'field_6276d5bdd161b'),
(306, 54, 'link-about', 'Learn More'),
(307, 54, '_link-about', 'field_6276d5d9d161c'),
(308, 54, 'about_itens_0_link-span', 'Sobre nós'),
(309, 54, '_about_itens_0_link-span', 'field_6275d988b25ed'),
(310, 54, 'about_itens_0_link-title', 'Agroprodutividad'),
(311, 54, '_about_itens_0_link-title', 'field_62765543b25ee'),
(312, 54, 'about_itens_0_about-text', 'Agropecuária é a junção dos substantivos agricultura e pecuária. É o cultivo de plantas (agricultura) e a criação de animais (pecuária) para o consumo humano ou para o fornecimento de matérias-primas na fabricação de roupas, medicamentos, biocombustíveis, produtos de beleza, entre outros.'),
(313, 54, '_about_itens_0_about-text', 'field_6276dc04ff55b'),
(314, 54, 'about_itens_0_link-about', 'Leia mais'),
(315, 54, '_about_itens_0_link-about', 'field_6276d5d9d161c'),
(316, 54, 'about_itens', '1'),
(317, 54, '_about_itens', 'field_6276db3bff558'),
(318, 54, 'about_itens_0_about-span', 'Sobre nós'),
(319, 54, '_about_itens_0_about-span', 'field_6276dbe5ff559'),
(320, 54, 'about_itens_0_about-title', 'Agro-produtividade'),
(321, 54, '_about_itens_0_about-title', 'field_6276dbf7ff55a'),
(322, 54, 'about_itens_0_about-about', 'Leia mais'),
(323, 54, '_about_itens_0_about-about', 'field_6276d5d9d161c'),
(324, 54, 'about_itens_0_about-link', 'Leia mais'),
(325, 54, '_about_itens_0_about-link', 'field_6276dc1bff55c'),
(326, 56, '_wp_attached_file', '2022/05/about_img.jpg'),
(327, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:468;s:6:\"height\";i:466;s:4:\"file\";s:21:\"2022/05/about_img.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 8, 'about_itens_0_about-img-big', '56'),
(329, 8, '_about_itens_0_about-img-big', 'field_6276e014ea742'),
(330, 57, 'link-span', 'About Us'),
(331, 57, '_link-span', 'field_6275d988b25ed'),
(332, 57, 'link-title', 'AGRICULTURE MARKET'),
(333, 57, '_link-title', 'field_62765543b25ee'),
(334, 57, 'about-text', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact th'),
(335, 57, '_about-text', 'field_6276d5bdd161b'),
(336, 57, 'link-about', 'Learn More'),
(337, 57, '_link-about', 'field_6276d5d9d161c'),
(338, 57, 'about_itens_0_link-span', 'Sobre nós'),
(339, 57, '_about_itens_0_link-span', 'field_6275d988b25ed'),
(340, 57, 'about_itens_0_link-title', 'Agroprodutividad'),
(341, 57, '_about_itens_0_link-title', 'field_62765543b25ee'),
(342, 57, 'about_itens_0_about-text', 'Agropecuária é a junção dos substantivos agricultura e pecuária. É o cultivo de plantas (agricultura) e a criação de animais (pecuária) para o consumo humano ou para o fornecimento de matérias-primas na fabricação de roupas, medicamentos, biocombustíveis, produtos de beleza, entre outros.'),
(343, 57, '_about_itens_0_about-text', 'field_6276dc04ff55b'),
(344, 57, 'about_itens_0_link-about', 'Leia mais'),
(345, 57, '_about_itens_0_link-about', 'field_6276d5d9d161c'),
(346, 57, 'about_itens', '1'),
(347, 57, '_about_itens', 'field_6276db3bff558'),
(348, 57, 'about_itens_0_about-span', 'Sobre nós'),
(349, 57, '_about_itens_0_about-span', 'field_6276dbe5ff559'),
(350, 57, 'about_itens_0_about-title', 'Agro-produtividade'),
(351, 57, '_about_itens_0_about-title', 'field_6276dbf7ff55a'),
(352, 57, 'about_itens_0_about-about', 'Leia mais'),
(353, 57, '_about_itens_0_about-about', 'field_6276d5d9d161c'),
(354, 57, 'about_itens_0_about-link', 'Leia mais'),
(355, 57, '_about_itens_0_about-link', 'field_6276dc1bff55c'),
(356, 57, 'about_itens_0_about-img-big', '56'),
(357, 57, '_about_itens_0_about-img-big', 'field_6276e014ea742'),
(358, 61, '_wp_attached_file', '2022/05/about_img1.jpg'),
(359, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:284;s:6:\"height\";i:283;s:4:\"file\";s:22:\"2022/05/about_img1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(360, 8, 'about_itens_0_about-img-small', '61'),
(361, 8, '_about_itens_0_about-img-small', 'field_6276e0a1b695b'),
(362, 8, 'about_itens_0_about-img-big-alt', 'Imagen 1 do about'),
(363, 8, '_about_itens_0_about-img-big-alt', 'field_6276e0c5b695c'),
(364, 8, 'about_itens_0_about-img-small-alt', 'Imagem 2 do about'),
(365, 8, '_about_itens_0_about-img-small-alt', 'field_6276e0ccb695d'),
(366, 62, 'link-span', 'About Us'),
(367, 62, '_link-span', 'field_6275d988b25ed'),
(368, 62, 'link-title', 'AGRICULTURE MARKET'),
(369, 62, '_link-title', 'field_62765543b25ee'),
(370, 62, 'about-text', 'fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact th'),
(371, 62, '_about-text', 'field_6276d5bdd161b'),
(372, 62, 'link-about', 'Learn More'),
(373, 62, '_link-about', 'field_6276d5d9d161c'),
(374, 62, 'about_itens_0_link-span', 'Sobre nós'),
(375, 62, '_about_itens_0_link-span', 'field_6275d988b25ed'),
(376, 62, 'about_itens_0_link-title', 'Agroprodutividad'),
(377, 62, '_about_itens_0_link-title', 'field_62765543b25ee'),
(378, 62, 'about_itens_0_about-text', 'Agropecuária é a junção dos substantivos agricultura e pecuária. É o cultivo de plantas (agricultura) e a criação de animais (pecuária) para o consumo humano ou para o fornecimento de matérias-primas na fabricação de roupas, medicamentos, biocombustíveis, produtos de beleza, entre outros.'),
(379, 62, '_about_itens_0_about-text', 'field_6276dc04ff55b'),
(380, 62, 'about_itens_0_link-about', 'Leia mais'),
(381, 62, '_about_itens_0_link-about', 'field_6276d5d9d161c'),
(382, 62, 'about_itens', '1'),
(383, 62, '_about_itens', 'field_6276db3bff558'),
(384, 62, 'about_itens_0_about-span', 'Sobre nós'),
(385, 62, '_about_itens_0_about-span', 'field_6276dbe5ff559'),
(386, 62, 'about_itens_0_about-title', 'Agro-produtividade'),
(387, 62, '_about_itens_0_about-title', 'field_6276dbf7ff55a'),
(388, 62, 'about_itens_0_about-about', 'Leia mais'),
(389, 62, '_about_itens_0_about-about', 'field_6276d5d9d161c'),
(390, 62, 'about_itens_0_about-link', 'Leia mais'),
(391, 62, '_about_itens_0_about-link', 'field_6276dc1bff55c'),
(392, 62, 'about_itens_0_about-img-big', '56'),
(393, 62, '_about_itens_0_about-img-big', 'field_6276e014ea742'),
(394, 62, 'about_itens_0_about-img-small', '61'),
(395, 62, '_about_itens_0_about-img-small', 'field_6276e0a1b695b'),
(396, 62, 'about_itens_0_about-img-big-alt', 'Imagen 1 do about'),
(397, 62, '_about_itens_0_about-img-big-alt', 'field_6276e0c5b695c'),
(398, 62, 'about_itens_0_about-img-small-alt', 'Imagem 2 do about'),
(399, 62, '_about_itens_0_about-img-small-alt', 'field_6276e0ccb695d'),
(400, 64, '_edit_last', '1'),
(401, 64, '_edit_lock', '1652191325:1'),
(402, 14, '_edit_last', '1'),
(403, 14, 'services-title', 'What We Do'),
(404, 14, '_services-title', 'field_6279a2cc38c64'),
(405, 14, 'services-subtite', 'SERVICES WE OFFER'),
(406, 14, '_services-subtite', 'field_6279a2db38c65'),
(407, 68, 'services-title', 'What We Do'),
(408, 68, '_services-title', 'field_6279a2cc38c64'),
(409, 68, 'services-subtite', 'SERVICES WE OFFER'),
(410, 68, '_services-subtite', 'field_6279a2db38c65');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-04-26 10:27:03', '2022-04-26 13:27:03', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2022-04-26 10:27:03', '2022-04-26 13:27:03', '', 0, 'https://localhost/cursos/agropro/?p=1', 0, 'post', '', 1),
(2, 1, '2022-04-26 10:27:03', '2022-04-26 13:27:03', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"https://localhost/cursos/agropro/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2022-04-26 10:27:03', '2022-04-26 13:27:03', '', 0, 'https://localhost/cursos/agropro/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-04-26 10:27:03', '2022-04-26 13:27:03', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: https://localhost/cursos/agropro.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2022-04-26 10:27:03', '2022-04-26 13:27:03', '', 0, 'https://localhost/cursos/agropro/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-04-26 11:34:10', '2022-04-26 14:34:10', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-04-30 18:37:42', '2022-04-30 21:37:42', '', 0, 'https://localhost/cursos/agropro/?page_id=5', 0, 'page', '', 0),
(6, 1, '2022-04-26 11:33:17', '2022-04-26 14:33:17', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-agropro', '', '', '2022-04-26 11:33:17', '2022-04-26 14:33:17', '', 0, 'https://localhost/cursos/agropro/?p=6', 0, 'wp_global_styles', '', 0),
(7, 1, '2022-04-26 11:34:10', '2022-04-26 14:34:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-04-26 11:34:10', '2022-04-26 14:34:10', '', 5, 'https://localhost/cursos/agropro/?p=7', 0, 'revision', '', 0),
(8, 1, '2022-04-26 11:34:39', '2022-04-26 14:34:39', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-05-07 18:14:01', '2022-05-07 21:14:01', '', 0, 'https://localhost/cursos/agropro/?page_id=8', 0, 'page', '', 0),
(9, 1, '2022-04-26 11:34:39', '2022-04-26 14:34:39', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-04-26 11:34:39', '2022-04-26 14:34:39', '', 8, 'https://localhost/cursos/agropro/?p=9', 0, 'revision', '', 0),
(10, 1, '2022-04-26 11:34:56', '2022-04-26 14:34:56', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2022-04-26 11:34:56', '2022-04-26 14:34:56', '', 0, 'https://localhost/cursos/agropro/?page_id=10', 0, 'page', '', 0),
(11, 1, '2022-04-26 11:34:56', '2022-04-26 14:34:56', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-04-26 11:34:56', '2022-04-26 14:34:56', '', 10, 'https://localhost/cursos/agropro/?p=11', 0, 'revision', '', 0),
(12, 1, '2022-04-26 11:35:12', '2022-04-26 14:35:12', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-04-26 11:35:12', '2022-04-26 14:35:12', '', 0, 'https://localhost/cursos/agropro/?page_id=12', 0, 'page', '', 0),
(13, 1, '2022-04-26 11:35:12', '2022-04-26 14:35:12', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2022-04-26 11:35:12', '2022-04-26 14:35:12', '', 12, 'https://localhost/cursos/agropro/?p=13', 0, 'revision', '', 0),
(14, 1, '2022-04-26 11:35:30', '2022-04-26 14:35:30', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2022-05-10 11:04:20', '2022-05-10 14:04:20', '', 0, 'https://localhost/cursos/agropro/?page_id=14', 0, 'page', '', 0),
(15, 1, '2022-04-26 11:35:30', '2022-04-26 14:35:30', '', 'Services', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-04-26 11:35:30', '2022-04-26 14:35:30', '', 14, 'https://localhost/cursos/agropro/?p=15', 0, 'revision', '', 0),
(16, 1, '2022-04-26 14:59:13', '2022-04-26 17:59:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_62683047f1ba4', '', '', '2022-04-30 18:37:21', '2022-04-30 21:37:21', '', 0, 'https://localhost/cursos/agropro/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2022-04-26 14:59:13', '2022-04-26 17:59:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:40:\"Titulo em branco com fundo verde da home\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_content', 'title_content', 'publish', 'closed', 'closed', '', 'field_6268320e64fb4', '', '', '2022-04-30 18:33:10', '2022-04-30 21:33:10', '', 16, 'https://localhost/cursos/agropro/?post_type=acf-field&#038;p=17', 3, 'acf-field', '', 0),
(18, 1, '2022-04-26 14:59:14', '2022-04-26 17:59:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:43:\"Titulo da parte de números que tem na home\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'choose_title', 'choose_title', 'publish', 'closed', 'closed', '', 'field_6268324c64fb5', '', '', '2022-04-30 18:33:10', '2022-04-30 21:33:10', '', 16, 'https://localhost/cursos/agropro/?post_type=acf-field&#038;p=18', 4, 'acf-field', '', 0),
(19, 1, '2022-04-26 14:59:14', '2022-04-26 17:59:14', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'choose_itens', 'choose_itens', 'publish', 'closed', 'closed', '', 'field_6268328964fb6', '', '', '2022-04-30 18:33:10', '2022-04-30 21:33:10', '', 16, 'https://localhost/cursos/agropro/?post_type=acf-field&#038;p=19', 5, 'acf-field', '', 0),
(20, 1, '2022-04-26 14:59:14', '2022-04-26 17:59:14', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:34:\"Numero dentro da bolinha ao centro\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'choose_number', 'choose_number', 'publish', 'closed', 'closed', '', 'field_6268329e64fb7', '', '', '2022-04-26 14:59:14', '2022-04-26 17:59:14', '', 19, 'https://localhost/cursos/agropro/?post_type=acf-field&p=20', 0, 'acf-field', '', 0),
(21, 1, '2022-04-26 14:59:14', '2022-04-26 17:59:14', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:23:\"Texto abaixo da bolinha\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:40;s:4:\"rows\";i:3;s:9:\"new_lines\";s:2:\"br\";}', 'choose_text', 'choose_text', 'publish', 'closed', 'closed', '', 'field_626832c164fb8', '', '', '2022-04-26 15:09:49', '2022-04-26 18:09:49', '', 19, 'https://localhost/cursos/agropro/?post_type=acf-field&#038;p=21', 1, 'acf-field', '', 0),
(22, 1, '2022-04-26 15:01:50', '2022-04-26 18:01:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-04-26 15:01:50', '2022-04-26 18:01:50', '', 5, 'https://localhost/cursos/agropro/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-04-26 15:02:47', '2022-04-26 18:02:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-04-26 15:02:47', '2022-04-26 18:02:47', '', 5, 'https://localhost/cursos/agropro/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-04-26 15:03:21', '2022-04-26 18:03:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-04-26 15:03:21', '2022-04-26 18:03:21', '', 5, 'https://localhost/cursos/agropro/?p=24', 0, 'revision', '', 0),
(25, 1, '2022-04-26 15:10:03', '2022-04-26 18:10:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-04-26 15:10:03', '2022-04-26 18:10:03', '', 5, 'https://localhost/cursos/agropro/?p=25', 0, 'revision', '', 0),
(26, 1, '2022-04-26 15:11:42', '2022-04-26 18:11:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-04-26 15:11:42', '2022-04-26 18:11:42', '', 5, 'https://localhost/cursos/agropro/?p=26', 0, 'revision', '', 0),
(27, 1, '2022-04-26 15:12:29', '2022-04-26 18:12:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-04-26 15:12:29', '2022-04-26 18:12:29', '', 5, 'https://localhost/cursos/agropro/?p=27', 0, 'revision', '', 0),
(28, 1, '2022-04-30 18:28:26', '2022-04-30 21:28:26', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'choose', 'choose', 'publish', 'closed', 'closed', '', 'field_626da9da1b539', '', '', '2022-04-30 18:33:10', '2022-04-30 21:33:10', '', 16, 'https://localhost/cursos/agropro/?post_type=acf-field&#038;p=28', 2, 'acf-field', '', 0),
(29, 1, '2022-04-30 18:33:09', '2022-04-30 21:33:09', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'carrosel', 'carrosel', 'publish', 'closed', 'closed', '', 'field_626daa113ed02', '', '', '2022-04-30 18:33:09', '2022-04-30 21:33:09', '', 16, 'https://localhost/cursos/agropro/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2022-04-30 18:33:10', '2022-04-30 21:33:10', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'carrosel_itens', 'carrosel_itens', 'publish', 'closed', 'closed', '', 'field_626daa343ed03', '', '', '2022-04-30 18:33:10', '2022-04-30 21:33:10', '', 16, 'https://localhost/cursos/agropro/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2022-04-30 18:33:10', '2022-04-30 21:33:10', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:24:\"Banner principal da home\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'carrosel-item', 'carrosel-item', 'publish', 'closed', 'closed', '', 'field_626daa513ed04', '', '', '2022-04-30 18:37:21', '2022-04-30 21:37:21', '', 30, 'https://localhost/cursos/agropro/?post_type=acf-field&#038;p=31', 0, 'acf-field', '', 0),
(32, 1, '2022-04-30 18:33:10', '2022-04-30 21:33:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:10:\"Alt da img\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'alt-carrosel-item', 'alt-carrosel-item', 'publish', 'closed', 'closed', '', 'field_626daa6d3ed05', '', '', '2022-04-30 18:33:10', '2022-04-30 21:33:10', '', 30, 'https://localhost/cursos/agropro/?post_type=acf-field&p=32', 1, 'acf-field', '', 0),
(33, 1, '2022-04-30 18:34:19', '2022-04-30 21:34:19', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2022-04-30 18:34:19', '2022-04-30 21:34:19', '', 5, 'https://localhost/cursos/agropro/wp-content/uploads/2022/04/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2022-04-30 18:34:52', '2022-04-30 21:34:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-04-30 18:34:52', '2022-04-30 21:34:52', '', 5, 'https://localhost/cursos/agropro/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-04-30 18:35:22', '2022-04-30 21:35:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-04-30 18:35:22', '2022-04-30 21:35:22', '', 5, 'https://localhost/cursos/agropro/?p=35', 0, 'revision', '', 0),
(36, 1, '2022-05-05 11:00:31', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-05-05 11:00:31', '0000-00-00 00:00:00', '', 0, 'https://localhost/cursos/agropro/?p=36', 0, 'post', '', 0),
(37, 1, '2022-05-05 12:30:58', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-05-05 12:30:58', '0000-00-00 00:00:00', '', 0, 'https://localhost/cursos/agropro/?post_type=acf-field-group&p=37', 0, 'acf-field-group', '', 0),
(38, 1, '2022-05-07 12:22:34', '2022-05-07 15:22:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"page-about.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_6275d981c4010', '', '', '2022-05-07 18:13:51', '2022-05-07 21:13:51', '', 0, 'https://localhost/cursos/agropro/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(41, 1, '2022-05-07 17:27:52', '2022-05-07 20:27:52', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'About', 'about', 'publish', 'closed', 'closed', '', 'field_6276d5f6d161d', '', '', '2022-05-07 17:27:52', '2022-05-07 20:27:52', '', 38, 'https://localhost/cursos/agropro/?post_type=acf-field&p=41', 0, 'acf-field', '', 0),
(44, 1, '2022-05-07 17:29:37', '2022-05-07 20:29:37', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-05-07 17:29:37', '2022-05-07 20:29:37', '', 8, 'https://localhost/cursos/agropro/?p=44', 0, 'revision', '', 0),
(46, 1, '2022-05-07 17:44:51', '2022-05-07 20:44:51', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-05-07 17:44:51', '2022-05-07 20:44:51', '', 8, 'https://localhost/cursos/agropro/?p=46', 0, 'revision', '', 0),
(47, 1, '2022-05-07 17:45:38', '2022-05-07 20:45:38', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-05-07 17:45:38', '2022-05-07 20:45:38', '', 8, 'https://localhost/cursos/agropro/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-05-07 17:47:18', '2022-05-07 20:47:18', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-05-07 17:47:18', '2022-05-07 20:47:18', '', 8, 'https://localhost/cursos/agropro/?p=48', 0, 'revision', '', 0),
(49, 1, '2022-05-07 17:53:31', '2022-05-07 20:53:31', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'about_itens', 'about_itens', 'publish', 'closed', 'closed', '', 'field_6276db3bff558', '', '', '2022-05-07 18:13:51', '2022-05-07 21:13:51', '', 38, 'https://localhost/cursos/agropro/?post_type=acf-field&#038;p=49', 1, 'acf-field', '', 0),
(50, 1, '2022-05-07 17:53:31', '2022-05-07 20:53:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'about-span', 'about-span', 'publish', 'closed', 'closed', '', 'field_6276dbe5ff559', '', '', '2022-05-07 17:53:31', '2022-05-07 20:53:31', '', 49, 'https://localhost/cursos/agropro/?post_type=acf-field&p=50', 0, 'acf-field', '', 0),
(51, 1, '2022-05-07 17:53:31', '2022-05-07 20:53:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'about-title', 'about-title', 'publish', 'closed', 'closed', '', 'field_6276dbf7ff55a', '', '', '2022-05-07 17:53:31', '2022-05-07 20:53:31', '', 49, 'https://localhost/cursos/agropro/?post_type=acf-field&p=51', 1, 'acf-field', '', 0),
(52, 1, '2022-05-07 17:53:31', '2022-05-07 20:53:31', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'about-text', 'about-text', 'publish', 'closed', 'closed', '', 'field_6276dc04ff55b', '', '', '2022-05-07 17:53:31', '2022-05-07 20:53:31', '', 49, 'https://localhost/cursos/agropro/?post_type=acf-field&p=52', 2, 'acf-field', '', 0),
(53, 1, '2022-05-07 17:53:31', '2022-05-07 20:53:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'about-link', 'about-link', 'publish', 'closed', 'closed', '', 'field_6276dc1bff55c', '', '', '2022-05-07 17:53:31', '2022-05-07 20:53:31', '', 49, 'https://localhost/cursos/agropro/?post_type=acf-field&p=53', 3, 'acf-field', '', 0),
(54, 1, '2022-05-07 17:53:50', '2022-05-07 20:53:50', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-05-07 17:53:50', '2022-05-07 20:53:50', '', 8, 'https://localhost/cursos/agropro/?p=54', 0, 'revision', '', 0),
(55, 1, '2022-05-07 18:10:31', '2022-05-07 21:10:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:26:\"imagem about maior e menor\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'about-img-big', 'about-img-big', 'publish', 'closed', 'closed', '', 'field_6276e014ea742', '', '', '2022-05-07 18:10:31', '2022-05-07 21:10:31', '', 49, 'https://localhost/cursos/agropro/?post_type=acf-field&p=55', 4, 'acf-field', '', 0),
(56, 1, '2022-05-07 18:11:30', '2022-05-07 21:11:30', '', 'about_img', '', 'inherit', 'open', 'closed', '', 'about_img', '', '', '2022-05-07 18:11:30', '2022-05-07 21:11:30', '', 8, 'https://localhost/cursos/agropro/wp-content/uploads/2022/05/about_img.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2022-05-07 18:11:34', '2022-05-07 21:11:34', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-05-07 18:11:34', '2022-05-07 21:11:34', '', 8, 'https://localhost/cursos/agropro/?p=57', 0, 'revision', '', 0),
(58, 1, '2022-05-07 18:12:59', '2022-05-07 21:12:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'about-img-small', 'about-img-small', 'publish', 'closed', 'closed', '', 'field_6276e0a1b695b', '', '', '2022-05-07 18:12:59', '2022-05-07 21:12:59', '', 49, 'https://localhost/cursos/agropro/?post_type=acf-field&p=58', 5, 'acf-field', '', 0),
(59, 1, '2022-05-07 18:12:59', '2022-05-07 21:12:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'about-img-big-alt', 'about-img-big-alt', 'publish', 'closed', 'closed', '', 'field_6276e0c5b695c', '', '', '2022-05-07 18:12:59', '2022-05-07 21:12:59', '', 49, 'https://localhost/cursos/agropro/?post_type=acf-field&p=59', 6, 'acf-field', '', 0),
(60, 1, '2022-05-07 18:12:59', '2022-05-07 21:12:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'about-img-small-alt', 'about-img-small-alt', 'publish', 'closed', 'closed', '', 'field_6276e0ccb695d', '', '', '2022-05-07 18:12:59', '2022-05-07 21:12:59', '', 49, 'https://localhost/cursos/agropro/?post_type=acf-field&p=60', 7, 'acf-field', '', 0),
(61, 1, '2022-05-07 18:13:07', '2022-05-07 21:13:07', '', 'about_img1', '', 'inherit', 'open', 'closed', '', 'about_img1', '', '', '2022-05-07 18:13:07', '2022-05-07 21:13:07', '', 8, 'https://localhost/cursos/agropro/wp-content/uploads/2022/05/about_img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2022-05-07 18:13:36', '2022-05-07 21:13:36', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-05-07 18:13:36', '2022-05-07 21:13:36', '', 8, 'https://localhost/cursos/agropro/?p=62', 0, 'revision', '', 0),
(63, 1, '2022-05-08 12:30:28', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-05-08 12:30:28', '0000-00-00 00:00:00', '', 0, 'https://localhost/cursos/agropro/?post_type=acf-field-group&p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2022-05-09 20:26:15', '2022-05-09 23:26:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-service.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'group_6279a2c464a3f', '', '', '2022-05-09 22:55:50', '2022-05-10 01:55:50', '', 0, 'https://localhost/cursos/agropro/?post_type=acf-field-group&#038;p=64', 0, 'acf-field-group', '', 0),
(65, 1, '2022-05-09 20:26:15', '2022-05-09 23:26:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'services-title', 'services-title', 'publish', 'closed', 'closed', '', 'field_6279a2cc38c64', '', '', '2022-05-09 20:26:47', '2022-05-09 23:26:47', '', 64, 'https://localhost/cursos/agropro/?post_type=acf-field&#038;p=65', 1, 'acf-field', '', 0),
(66, 1, '2022-05-09 20:26:15', '2022-05-09 23:26:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'services-subtite', 'services-subtite', 'publish', 'closed', 'closed', '', 'field_6279a2db38c65', '', '', '2022-05-09 20:26:47', '2022-05-09 23:26:47', '', 64, 'https://localhost/cursos/agropro/?post_type=acf-field&#038;p=66', 2, 'acf-field', '', 0),
(67, 1, '2022-05-09 20:26:47', '2022-05-09 23:26:47', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'field_6279a31fbba81', '', '', '2022-05-09 20:26:47', '2022-05-09 23:26:47', '', 64, 'https://localhost/cursos/agropro/?post_type=acf-field&p=67', 0, 'acf-field', '', 0),
(68, 1, '2022-05-09 22:55:58', '2022-05-10 01:55:58', '', 'Services', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-05-09 22:55:58', '2022-05-10 01:55:58', '', 14, 'https://localhost/cursos/agropro/?p=68', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'agropro', 'agropro', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Agro_admin'),
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"bc2c877fbe8598d2276d2b4da673fcd290dc2f012967c7e9a42f79ab0e66296d\";a:4:{s:10:\"expiration\";i:1652189255;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0\";s:5:\"login\";i:1650979655;}s:64:\"15fe18f19f2f544925396e377615ff3b100e737a490cd9e448f75dffd2c973fe\";a:4:{s:10:\"expiration\";i:1652991381;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0\";s:5:\"login\";i:1651781781;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '36'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1651354492');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Agro_admin', '$P$BTXgCpXllVKz1pWGVmRIPeKzqSYJ7/1', 'agro_admin', 'psaulo7@gmail.com', 'https://localhost/cursos/agropro', '2022-04-26 13:27:02', '1651781169:$P$BAASpQfD8zUFJnqwm0TqdwNwtJGA4l/', 0, 'Agro_admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
