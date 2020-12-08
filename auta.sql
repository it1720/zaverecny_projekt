-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 08. pro 2020, 18:05
-- Verze serveru: 10.4.11-MariaDB
-- Verze PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `auta`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `app_data`
--

CREATE TABLE `app_data` (
  `id` int(11) NOT NULL,
  `spz` varchar(10) COLLATE utf16_czech_ci NOT NULL,
  `jmeno` varchar(20) COLLATE utf16_czech_ci NOT NULL,
  `prijmeni` varchar(30) COLLATE utf16_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf16_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf16_czech_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf16_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

--
-- Vypisuji data pro tabulku `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add data', 7, 'add_data'),
(26, 'Can change data', 7, 'change_data'),
(27, 'Can delete data', 7, 'delete_data'),
(28, 'Can view data', 7, 'view_data');

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf16_czech_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf16_czech_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf16_czech_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf16_czech_ci NOT NULL,
  `email` varchar(254) COLLATE utf16_czech_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

--
-- Vypisuji data pro tabulku `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$9CO9d35zPevT$BLMrXRQMIxcWUYxUxcCq0s6cbFF/SUgPkIZwb2Lxe4U=', '2020-12-07 19:57:24.377401', 1, 'admin', '', '', 'admin@admin.cz', 1, 1, '2020-12-07 19:56:43.283483');

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `spz` varchar(10) COLLATE utf16_czech_ci DEFAULT NULL,
  `jmeno` varchar(20) COLLATE utf16_czech_ci DEFAULT NULL,
  `prijmeni` varchar(20) COLLATE utf16_czech_ci DEFAULT NULL,
  `cas` time DEFAULT NULL,
  `datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

--
-- Vypisuji data pro tabulku `data`
--

INSERT INTO `data` (`id`, `spz`, `jmeno`, `prijmeni`, `cas`, `datum`) VALUES
(1, '4SY5152', 'Tomáš', 'Novák', '12:44:26', '2020-12-04'),
(2, '4SY5152', 'Tomáš', 'Novák', '17:59:11', '2020-12-08');

-- --------------------------------------------------------

--
-- Struktura tabulky `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf16_czech_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf16_czech_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf16_czech_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf16_czech_ci NOT NULL,
  `model` varchar(100) COLLATE utf16_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

--
-- Vypisuji data pro tabulku `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'data'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktura tabulky `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf16_czech_ci NOT NULL,
  `name` varchar(255) COLLATE utf16_czech_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

--
-- Vypisuji data pro tabulku `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-07 19:50:34.042060'),
(2, 'auth', '0001_initial', '2020-12-07 19:50:34.230557'),
(3, 'admin', '0001_initial', '2020-12-07 19:50:34.742703'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-07 19:50:34.864376'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-07 19:50:34.874350'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-07 19:50:34.956133'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-07 19:50:35.033923'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-07 19:50:35.051876'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-07 19:50:35.062845'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-07 19:50:35.127672'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-07 19:50:35.130664'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-07 19:50:35.139642'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-07 19:50:35.157594'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-07 19:50:35.211448'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-07 19:50:35.231396'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-07 19:50:35.243364'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-07 19:50:35.261315'),
(18, 'sessions', '0001_initial', '2020-12-07 19:50:35.296222'),
(19, 'app', '0001_initial', '2020-12-07 19:50:44.145869');

-- --------------------------------------------------------

--
-- Struktura tabulky `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf16_czech_ci NOT NULL,
  `session_data` longtext COLLATE utf16_czech_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

--
-- Vypisuji data pro tabulku `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('pgm8a9hvxixb6k7ae3fspvi2w66wmjws', '.eJxVjMsOwiAQRf-FtSED5enSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2Ol3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtrV5SXgqAUGQVkY5UtEDOKbI2jVBQl4cFoKdFbQxZAJ5rAoIPJkGTvD92lN24:1kmMdQ:BLyN6ST0_DYDTfmvDYmgYCruTv6nP4CmSF86Cn4umuo', '2020-12-21 19:57:24.381390');

-- --------------------------------------------------------

--
-- Struktura tabulky `vlastnici`
--

CREATE TABLE `vlastnici` (
  `id` int(11) NOT NULL,
  `spz` varchar(10) COLLATE utf16_czech_ci DEFAULT NULL,
  `jmeno` varchar(20) COLLATE utf16_czech_ci DEFAULT NULL,
  `prijmeni` varchar(30) COLLATE utf16_czech_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

--
-- Vypisuji data pro tabulku `vlastnici`
--

INSERT INTO `vlastnici` (`id`, `spz`, `jmeno`, `prijmeni`) VALUES
(1, '4SY5152', 'Tomáš', 'Novák');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `app_data`
--
ALTER TABLE `app_data`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Klíče pro tabulku `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Klíče pro tabulku `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Klíče pro tabulku `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Klíče pro tabulku `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Klíče pro tabulku `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Klíče pro tabulku `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Klíče pro tabulku `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Klíče pro tabulku `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Klíče pro tabulku `vlastnici`
--
ALTER TABLE `vlastnici`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `app_data`
--
ALTER TABLE `app_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pro tabulku `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pro tabulku `vlastnici`
--
ALTER TABLE `vlastnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Omezení pro tabulku `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Omezení pro tabulku `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Omezení pro tabulku `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Omezení pro tabulku `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
