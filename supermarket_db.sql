-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2020 at 12:21 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add stores', 7, 'add_stores'),
(26, 'Can change stores', 7, 'change_stores'),
(27, 'Can delete stores', 7, 'delete_stores'),
(28, 'Can view stores', 7, 'view_stores'),
(29, 'Can add brands', 8, 'add_brands'),
(30, 'Can change brands', 8, 'change_brands'),
(31, 'Can delete brands', 8, 'delete_brands'),
(32, 'Can view brands', 8, 'view_brands'),
(33, 'Can add deals', 9, 'add_deals'),
(34, 'Can change deals', 9, 'change_deals'),
(35, 'Can delete deals', 9, 'delete_deals'),
(36, 'Can view deals', 9, 'view_deals'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user'),
(41, 'Can add Token', 11, 'add_token'),
(42, 'Can change Token', 11, 'change_token'),
(43, 'Can delete Token', 11, 'delete_token'),
(44, 'Can view Token', 11, 'view_token');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$FRVJaBxABFa7$AvZyARWQCuGkGccr4flO8TexPPvK54hT7uV/iSI+as0=', '2020-12-14 22:09:20.939958', 1, 'desarrollo', '', '', 'desarrollo@correo.com', 1, 1, '2020-12-14 22:08:44.551722');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `brands_brands`
--

CREATE TABLE `brands_brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands_brands`
--

INSERT INTO `brands_brands` (`id`, `name`, `logo`) VALUES
(1, 'Almacenes Exito', 'https://es.wikipedia.org/wiki/%C3%89xito_(supermercado)#/media/Archivo:Grupo_Exito_logo.svg'),
(2, 'Almacenes Pereira', 'https://www.pereiraplaza.co/wp-content/uploads/2020/11/logo-home-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `deals_deals`
--

CREATE TABLE `deals_deals` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `store` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deals_deals`
--

INSERT INTO `deals_deals` (`id`, `name`, `store`, `image`, `price`) VALUES
(1, 'Bicicleta Roadmastaer Jumper 29 shimano Negro Naranja', 2, 'https://exitocol.vtexassets.com/arquivos/ids/3791393-1200-auto?width=1200&height=auto&aspect=true', 689900),
(2, 'Bicicleta Roadmastaer Jumper 29 shimano Negro Verde', 1, 'https://exitocol.vtexassets.com/arquivos/ids/3791393-1200-auto?width=1200&height=auto&aspect=true', 679900);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-12-14 23:15:19.152862', '1', 'Almacenes Exito', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-12-14 23:16:16.095473', '2', 'Almacenes Pereira', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-12-14 23:17:06.424083', '1', 'exito_parque_arboleda', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-12-14 23:18:18.904075', '2', 'pereira_plaza', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-12-14 23:19:02.885327', '1', 'Bicicleta Roadmastaer Jumper 29 shimano Negro Naranja', 1, '[{\"added\": {}}]', 9, 1),
(6, '2020-12-14 23:19:35.912258', '2', 'Bicicleta Roadmastaer Jumper 29 shimano Negro Verde', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'authtoken', 'token'),
(8, 'brands', 'brands'),
(5, 'contenttypes', 'contenttype'),
(9, 'deals', 'deals'),
(6, 'sessions', 'session'),
(7, 'stores', 'stores'),
(10, 'users', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-14 21:38:37.960435'),
(2, 'auth', '0001_initial', '2020-12-14 21:38:38.152484'),
(3, 'admin', '0001_initial', '2020-12-14 21:38:38.505878'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-14 21:38:38.606478'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-14 21:38:38.633240'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-14 21:38:38.714499'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-14 21:38:38.774689'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-14 21:38:38.805343'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-14 21:38:38.835317'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-14 21:38:38.891839'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-14 21:38:38.897651'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-14 21:38:38.918492'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-14 21:38:38.948745'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-14 21:38:38.979120'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-14 21:38:39.013890'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-14 21:38:39.044620'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-14 21:38:39.098895'),
(18, 'authtoken', '0001_initial', '2020-12-14 21:38:39.149652'),
(19, 'authtoken', '0002_auto_20160226_1747', '2020-12-14 21:38:39.310261'),
(20, 'brands', '0001_initial', '2020-12-14 21:38:39.331264'),
(21, 'deals', '0001_initial', '2020-12-14 21:38:39.356492'),
(22, 'deals', '0002_auto_20201212_0142', '2020-12-14 21:38:39.491194'),
(23, 'deals', '0003_auto_20201212_0157', '2020-12-14 21:38:39.510613'),
(24, 'deals', '0004_auto_20201212_0158', '2020-12-14 21:38:39.531693'),
(25, 'deals', '0005_auto_20201212_0444', '2020-12-14 21:38:39.621349'),
(26, 'sessions', '0001_initial', '2020-12-14 21:38:39.649160'),
(27, 'stores', '0001_initial', '2020-12-14 21:38:39.698541'),
(28, 'stores', '0002_auto_20201211_0706', '2020-12-14 21:38:39.741564'),
(29, 'users', '0001_initial', '2020-12-14 21:38:39.766813'),
(30, 'users', '0002_auto_20201214_0149', '2020-12-14 21:38:39.821780');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1dfgato9lt3srpb171y0dn2fwz8lsrcz', '.eJxVjEEOgjAQRe_StWmYtkyrS_ecgUxnBkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzMWBOv1smfmjZgdyp3GbLc1mXKdtdsQettptFn9fD_TsYqY7f2kXfMrgoPnJkhqzDOYfQJGRATUJOyGNwkFIamja2MkSvJJhAETCb9wfZRjer:1kow1w:55YRjuBMohQGxPbSaOgg4rXikOsQCpT18k4f6LEvdKI', '2020-12-28 22:09:20.945981');

-- --------------------------------------------------------

--
-- Table structure for table `stores_stores`
--

CREATE TABLE `stores_stores` (
  `id` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `thumbnail` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stores_stores`
--

INSERT INTO `stores_stores` (`id`, `brand`, `identifier`, `name`, `thumbnail`, `address`) VALUES
(1, 1, 'exito_parque_arboleda', 'Exito Parque Arboleda', '#', 'Cra. 14 #5-20, Pereira, Risaralda'),
(2, 2, 'pereira_plaza', 'Centro Comercial Pereira Plaza', '#', 'Calle 15 No. 13-110');

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE `users_user` (
  `id` int(11) NOT NULL,
  `id_fb` varchar(120) NOT NULL,
  `email` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`id`, `id_fb`, `email`, `name`, `phoneNumber`) VALUES
(1, 'StYrLDZZYqQ1d76HGj9Odzh00v43', '***', '***', '***');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `brands_brands`
--
ALTER TABLE `brands_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals_deals`
--
ALTER TABLE `deals_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `stores_stores`
--
ALTER TABLE `stores_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands_brands`
--
ALTER TABLE `brands_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deals_deals`
--
ALTER TABLE `deals_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `stores_stores`
--
ALTER TABLE `stores_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
