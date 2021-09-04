-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 04, 2021 at 06:23 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neom_orixpay_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_item` int(10) NOT NULL,
  `id_merchant` int(10) NOT NULL,
  `user` varchar(200) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0189bde9aff6dc8d94df5cb9d9db41c7fc1c1106', '119.160.101.156', 1630347114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334363837343b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b6c6f676765645f696e7c613a31303a7b733a323a226964223b733a323a223232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a373a224f726978506179223b733a353a22656d61696c223b733a31373a2261646d696e406f7269787061792e636f6d223b733a383a226c616e6775616765223b733a373a22656e676c697368223b733a383a2269735f61646d696e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323031382d30342d31312032313a34383a3535223b733a373a2275706461746564223b733a31393a22323032302d30352d30392031343a30373a3339223b7d72656665727265727c733a37373a22687474703a2f2f6e65772e6e656f6d7472616e736c6174696f6e2e636f6d2f61646d696e2f75736572733f736f72743d6964266469723d64657363266c696d69743d3235266f66667365743d30223b6d6573736167657c733a33323a2245786368616e6765205375636365737366756c6c7920436f6d706c6574656421223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('07ebdc7c7f7d152db2be8b099b84b45ac2c2444b', '119.155.46.44', 1630747942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303734373933373b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('0a2c5ee53b04b11c77d404c8d466e64af73ca914', '156.146.56.105', 1630418214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303431383139373b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('139f10ec3b24cb588b1115011532304e79a0bf6b', '119.160.101.156', 1630344126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334343039373b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('17a46d0ca4843ba4e4ebbad0e36cf491fdc7c6e6', '37.0.10.54', 1630492570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303439323537303b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('2d83547b06b61d4bdb6ec2209989a4c387b5e87e', '162.241.196.243', 1630713821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303731333832313b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('2d9e15b2edceca8737f006090a232b41ff9a594d', '162.241.196.243', 1630712148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303731323134383b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('3626422b550840da60243178a03346439d8602c1', '119.160.101.156', 1630343051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334333035313b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('3d3686c2249e4fee0aca8825dc19586fcae8b5cb', '92.118.160.1', 1630746934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303734363933343b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('5dda0214cd0e73b605378c1d257ee2a2a9ae677c', '119.160.101.156', 1630343099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334333035323b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b6c6f676765645f696e7c613a31303a7b733a323a226964223b733a323a223232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a373a224f726978506179223b733a353a22656d61696c223b733a31373a2261646d696e406f7269787061792e636f6d223b733a383a226c616e6775616765223b733a373a22656e676c697368223b733a383a2269735f61646d696e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323031382d30342d31312032313a34383a3535223b733a373a2275706461746564223b733a31393a22323032302d30352d30392031343a30373a3339223b7d),
('7530feece7231c300704bae683127f986d2e0e8f', '119.160.101.156', 1630345711, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334353436323b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b6c6f676765645f696e7c613a31303a7b733a323a226964223b733a323a223232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a373a224f726978506179223b733a353a22656d61696c223b733a31373a2261646d696e406f7269787061792e636f6d223b733a383a226c616e6775616765223b733a373a22656e676c697368223b733a383a2269735f61646d696e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323031382d30342d31312032313a34383a3535223b733a373a2275706461746564223b733a31393a22323032302d30352d30392031343a30373a3339223b7d72656665727265727c733a38343a22687474703a2f2f6e65772e6e656f6d7472616e736c6174696f6e2e636f6d2f61646d696e2f7472616e73616374696f6e733f736f72743d6964266469723d64657363266c696d69743d3235266f66667365743d30223b),
('7c2ebbfe721046d0c74815d17ff79b915c69db13', '119.160.101.156', 1630345081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334343738313b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b6c6f676765645f696e7c613a31303a7b733a323a226964223b733a323a223232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a373a224f726978506179223b733a353a22656d61696c223b733a31373a2261646d696e406f7269787061792e636f6d223b733a383a226c616e6775616765223b733a373a22656e676c697368223b733a383a2269735f61646d696e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323031382d30342d31312032313a34383a3535223b733a373a2275706461746564223b733a31393a22323032302d30352d30392031343a30373a3339223b7d72656665727265727c733a39303a22687474703a2f2f6e65772e6e656f6d7472616e736c6174696f6e2e636f6d2f61646d696e2f73657474696e67732f7769746864726177616c3f736f72743d6964266469723d617363266c696d69743d3235266f66667365743d30223b),
('7d23e1fdb5fd0299dcfc10e6f08b1347ed8c5ba0', '119.155.46.44', 1630747936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303734373933363b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('8757064817f87a2fc5232c761658b2c68f24ebfe', '162.241.196.243', 1630734766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303733343735393b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('8caf75b246af16629a078731a851737b486102bd', '14.192.150.71', 1630344100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334343039393b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b6572726f727c733a32383a2254686973206d65726368616e74206973206e6f742061637469766521223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('91e1e84b6fb6418132841126bd8180be7c3b4f8c', '144.86.173.132', 1630621008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303632313030383b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('91ee2257c0607b4a1b6d4708db6eececfb7a91b0', '78.46.178.141', 1630522537, 0x6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('a4be9ab24cfb3627c177add3a72d5ed35a5078c9', '185.15.21.74', 1630633790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303633333739303b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('b01f88ab443fd269e6e6ee7b1ee3bc367117341d', '119.160.101.156', 1630346098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334353836373b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b6c6f676765645f696e7c613a31303a7b733a323a226964223b733a323a223232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a373a224f726978506179223b733a353a22656d61696c223b733a31373a2261646d696e406f7269787061792e636f6d223b733a383a226c616e6775616765223b733a373a22656e676c697368223b733a383a2269735f61646d696e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323031382d30342d31312032313a34383a3535223b733a373a2275706461746564223b733a31393a22323032302d30352d30392031343a30373a3339223b7d72656665727265727c733a37373a22687474703a2f2f6e65772e6e656f6d7472616e736c6174696f6e2e636f6d2f61646d696e2f75736572733f736f72743d6964266469723d64657363266c696d69743d3235266f66667365743d30223b),
('bb628eac66bcbbb333017f03d2f2098ca9dfcce2', '119.160.101.156', 1630343473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334333437333b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b6c6f676765645f696e7c613a31303a7b733a323a226964223b733a323a223232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a373a224f726978506179223b733a353a22656d61696c223b733a31373a2261646d696e406f7269787061792e636f6d223b733a383a226c616e6775616765223b733a373a22656e676c697368223b733a383a2269735f61646d696e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323031382d30342d31312032313a34383a3535223b733a373a2275706461746564223b733a31393a22323032302d30352d30392031343a30373a3339223b7d),
('c1f92bdb664fba2bdada35b8aef5048d4806b132', '103.17.203.231', 1630344785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334343738333b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b72656469726563747c733a35333a22687474703a2f2f6e65772e6e656f6d7472616e736c6174696f6e2e636f6d2f61646d696e2f73657474696e67732f6465706f736974223b),
('c69d406dde012a2963238e6f57bd908c63c4e548', '119.160.101.156', 1630347429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334373234343b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b6c6f676765645f696e7c613a31303a7b733a323a226964223b733a323a223232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a373a224f726978506179223b733a353a22656d61696c223b733a31373a2261646d696e406f7269787061792e636f6d223b733a383a226c616e6775616765223b733a373a22656e676c697368223b733a383a2269735f61646d696e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323031382d30342d31312032313a34383a3535223b733a373a2275706461746564223b733a31393a22323032302d30352d30392031343a30373a3339223b7d72656665727265727c733a38343a22687474703a2f2f6e65772e6e656f6d7472616e736c6174696f6e2e636f6d2f61646d696e2f636f6e746163743f736f72743d63726561746564266469723d44455343266c696d69743d3235266f66667365743d30223b),
('f3f75eed2a47fff13a3e91a3d30673925041383c', '119.160.101.156', 1630345387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334353039323b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b6c6f676765645f696e7c613a31303a7b733a323a226964223b733a323a223232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a373a224f726978506179223b733a353a22656d61696c223b733a31373a2261646d696e406f7269787061792e636f6d223b733a383a226c616e6775616765223b733a373a22656e676c697368223b733a383a2269735f61646d696e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323031382d30342d31312032313a34383a3535223b733a373a2275706461746564223b733a31393a22323032302d30352d30392031343a30373a3339223b7d72656665727265727c733a38343a22687474703a2f2f6e65772e6e656f6d7472616e736c6174696f6e2e636f6d2f61646d696e2f7472616e73616374696f6e733f736f72743d6964266469723d64657363266c696d69743d3235266f66667365743d30223b),
('f51297d7005338367a6948bd131dfe6de53ca895', '162.241.196.243', 1630713727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303731333732373b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b),
('f8d958acd661fab6c1ce2fd6040d16f4fc60f09c', '119.160.101.156', 1630346656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633303334363335343b6c616e6775616765737c613a313a7b733a373a22656e676c697368223b733a373a22456e676c697368223b7d6c616e67756167657c733a373a22656e676c697368223b6c6f676765645f696e7c613a31303a7b733a323a226964223b733a323a223232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a373a224f726978506179223b733a353a22656d61696c223b733a31373a2261646d696e406f7269787061792e636f6d223b733a383a226c616e6775616765223b733a373a22656e676c697368223b733a383a2269735f61646d696e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323031382d30342d31312032313a34383a3535223b733a373a2275706461746564223b733a31393a22323032302d30352d30392031343a30373a3339223b7d72656665727265727c733a37373a22687474703a2f2f6e65772e6e656f6d7472616e736c6174696f6e2e636f6d2f61646d696e2f75736572733f736f72743d6964266469723d64657363266c696d69743d3235266f66667365743d30223b);

-- --------------------------------------------------------

--
-- Table structure for table `currencys`
--

CREATE TABLE `currencys` (
  `id` int(11) NOT NULL,
  `base_name` varchar(256) NOT NULL,
  `base_code` varchar(128) NOT NULL,
  `extra1_check` int(11) NOT NULL,
  `extra1_name` varchar(256) NOT NULL,
  `extra1_code` varchar(128) NOT NULL,
  `extra1_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extra2_check` int(11) NOT NULL,
  `extra2_name` varchar(256) NOT NULL,
  `extra2_code` varchar(256) NOT NULL,
  `extra2_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extra3_check` int(11) NOT NULL,
  `extra3_name` varchar(256) NOT NULL,
  `extra3_code` varchar(128) NOT NULL,
  `extra3_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extra4_check` int(11) NOT NULL,
  `extra4_name` varchar(256) NOT NULL,
  `extra4_code` varchar(128) NOT NULL,
  `extra4_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extra5_check` int(11) NOT NULL,
  `extra5_name` varchar(256) NOT NULL,
  `extra5_code` varchar(128) NOT NULL,
  `extra5_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fee` decimal(10,2) NOT NULL,
  `fee_fix` decimal(10,2) NOT NULL,
  `api_extra1` enum('0','1') NOT NULL,
  `api_extra2` enum('0','1') NOT NULL,
  `api_extra3` enum('0','1') NOT NULL,
  `api_extra4` enum('0','1') NOT NULL,
  `api_extra5` enum('0','1') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencys`
--

INSERT INTO `currencys` (`id`, `base_name`, `base_code`, `extra1_check`, `extra1_name`, `extra1_code`, `extra1_rate`, `extra2_check`, `extra2_name`, `extra2_code`, `extra2_rate`, `extra3_check`, `extra3_name`, `extra3_code`, `extra3_rate`, `extra4_check`, `extra4_name`, `extra4_code`, `extra4_rate`, `extra5_check`, `extra5_name`, `extra5_code`, `extra5_rate`, `fee`, `fee_fix`, `api_extra1`, `api_extra2`, `api_extra3`, `api_extra4`, `api_extra5`) VALUES
(1, 'Great Britain Pound', 'GBP', 1, 'American Dollar', 'USD', 1.24, 1, 'Euro', 'EUR', 1.14, 1, 'Canadian Dollar', 'CAD', 1.74, 1, 'Arab Emirate Dirham', 'AED', 4.54, 1, 'Suadi Riyal ', 'SAR', 4.65, 2.50, 0.00, '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE `disputes` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction` int(10) NOT NULL,
  `time_transaction` datetime NOT NULL,
  `time_dispute` datetime NOT NULL,
  `claimant` varchar(200) NOT NULL,
  `defendant` varchar(200) NOT NULL,
  `status` enum('1','2','3','4') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `title` enum('1','2') NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `disputes_comment`
--

CREATE TABLE `disputes_comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_dispute` int(10) NOT NULL,
  `time` datetime NOT NULL,
  `user` varchar(200) NOT NULL,
  `role` enum('1','2','3','4','5') NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `title` varchar(128) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  `read` datetime DEFAULT NULL,
  `read_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `title`, `message`, `status`) VALUES
(1, 'Confirm registration', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Account registration</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Confirm account!</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]<br />\r\n						<br />\r\n						Thank you for creating an account at [SITE_NAME]. Click the link below to validate your email address and activate your account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[CHECK_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">Confirm email</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(2, 'Signed in', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Signing in to your account</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear, [NAME]!<br />\r\n						<br />\r\n						You or someone else has logged into your account. If you did not attempt to access your account and think that it was someone else, it&#39;s best to change your password to access the account.</p>\r\n\r\n						<p style=\"color: #303030; font: 18px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\"><strong>IP address [IP_ADDRESS]</strong></p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[ACCOUNT_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '0'),
(3, 'Reset password', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n    @media only screen and (min-width: 640px) {\r\n      *[class].wrapper { width: 480px !important; }\r\n      *[class].wrapper__indent { width: 60px !important; }\r\n    }\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Reset password</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Hello!<br />\r\n						<br />\r\n						Your password at [SITE_NAME] has been reset. Click the link below to log in with your new password.</p>\r\n\r\n						<p style=\"color: #303030; font: 18px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\"><strong>[PASSWORD]</strong></p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[ACCOUNT_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1'),
(4, 'Create ticket', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Support message</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>New ticket</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						For you a new ticket has been created on the site [SITE_NAME].</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[TICKET_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">Read message</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(5, 'New comment in ticket', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Support message</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>New comment</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						A new comment is available for the ticket [CODE_TICKET].</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[TICKET_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">Read message</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(6, 'Ticket closed', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Support message</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Ticket closed</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						Ticket [CODE_TICKET]&nbsp;was closed and unavailable for comment.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[TICKET_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">See ticket</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(7, 'Verification request verified', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Account status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Your account is verified</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						Your account has been successfully verified.&nbsp;You can use your account without restrictions!</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(8, 'Verification request rejected', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Account status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #F44336;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#F44336\" height=\"50\" style=\"background: #F44336;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Verification request rejected</strong></p>\r\n						</td>\r\n						<td style=\"background: #F44336;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						We checked your documents and could not verify your account.&nbsp;Reason for rejection:</p>\r\n\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\"><strong>[COMMENT]</strong></p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(9, 'Notice to receive', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Transaction status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Notice to receive</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						The funds amount equal to [SUM] [CUR] were received on your account. You can see details of the transaction after sign in your account!</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">Transactions</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(10, 'Withdrawal pending!', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Transaction status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Withdrawal pending</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						The withdrawal, amount equal to [SUM] [CUR], were deducted from your account. Time of execution depends on the type of withdrawal you chosen.!</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">Transactions</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(11, 'Completed currency exchange!', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Transaction status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Completed currency exchange</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						You successfully exchanged [SUM_1] [CUR_1] on&nbsp;[SUM_2] [CUR_2]. You can checked the current balance and transaction history after log in your account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(12, 'Open dispute!', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Dispute status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Open dispute</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						User [CLAIMANT] opened&nbsp;a dispute about the&nbsp;transaction ID [ID_TRANSACTION]. Check out the subject of the dispute and give your answer.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(13, 'New comment for dispute', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Dispute status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>New comment for dispute</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						New comment was added for the dispute ID [ID_DISPUTE]. You can read it after log in the account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(14, 'Claim opened!', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Dispute status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Claim opened!</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						Your dispute ID [ID_DISPUTE] was transferred to the claim!</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1');
INSERT INTO `email_templates` (`id`, `title`, `message`, `status`) VALUES
(15, 'Claim rejected', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Dispute status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Claim rejected</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						After a thorough analysis of the evidence provided by ID [ID_DISPUTE], we have completed the investigation and decided in favor of the seller.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(18, 'Documents received for review', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Account status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Documents received for review</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						Your account has been successfully verified.&nbsp;You can use your account without restrictions!</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(21, 'Claim satisfied', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Dispute status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Claim satisfied</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						After a thorough analysis of the evidence provided in the dispute ID [ID_DISPUTE], we completed the investigation and decided in favor of the sender of payment. Money was returned by transaction ID [ID_TRANSACTION].</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(25, 'Success money transfer', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Transaction status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Success money transfer</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						You have successfully transferred [SUM] [CUR]&nbsp;to the user [RECEIVER].&nbsp;You can see the details transaction in your account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(26, 'Withdrawal is confirmed', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Account status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Withdrawal is confirmed</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						The withdrawal of funds in the amount of [SUM] [CUR] was confirmed by the administrator.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(27, 'Withdrawal of funds denied', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Transaction status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #F44336;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#F44336\" height=\"50\" style=\"background: #F44336;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Withdrawal of funds denied</strong></p>\r\n						</td>\r\n						<td style=\"background: #F44336;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						The withdrawal of funds in the amount of [SUM] [CUR] was rejected by the administrator. Funds refund to your account.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(28, 'Invoice pending', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Invoice status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Invoice pending</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						Received new invoice for the amount of [SUM] [CUR].&nbsp;You can pay the invoice or reject.</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(29, 'Invoice rejected', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Invoice status</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>Invoice rejected</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]!<br />\r\n						<br />\r\n						The invoice ID [ID_INVOICE]&nbsp;was rejected..</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[SITE_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(30, 'New message', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">New message</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 200px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n						<td align=\"center\" bgcolor=\"#ffc107\" height=\"50\" style=\"background: #ffc107;\">\r\n						<p style=\"font: 17px/20px Helvetica, Arial, sans-serif; color: #ffffff;\"><strong>[TITLE]</strong></p>\r\n						</td>\r\n						<td style=\"background: #ffc107;\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear [NAME]<br />\r\n						<br />\r\n						[MESSAGE]</p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\">&nbsp;</p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1'),
(31, 'Confirm login', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<title></title>\r\n<style type=\"text/css\">a:hover { text-decoration: underline !important; }\r\n\r\n		@media only screen and (min-width: 640px) {\r\n    	*[class].wrapper { width: 480px !important; }\r\n    	*[class].wrapper__indent { width: 60px !important; }\r\n		}\r\n</style>\r\n<table bgcolor=\"#ebedef\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/24px Arial, sans-serif, Helvetica; color: #939aa4; margin: 0px;\">Signing in to your account</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table align=\"center\" bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"wrapper\" style=\"background-color: #ffffff; border: 1px solid #c8cace; border-radius: 4px; margin: auto;\" width=\"480\">\r\n				<tbody>\r\n					<tr>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n						<td align=\"center\" height=\"70\" style=\"border-bottom: 1px solid #wwwwww;\" valign=\"middle\"><a alias=\"site_logo\" href=\"#\" target=\"_blank\"><img alt=\"\" src=\"https://www.orixpay.com/myimages/logo-mail.png\" style=\"display: block; width: 286px; height: 40px;\" /> </a></td>\r\n						<td class=\"wrapper__indent\" style=\"border-bottom: 1px solid #wwwwww;\" width=\"30\">&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p style=\"color: #303030; font: 15px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\">Dear, [NAME]!<br />\r\n						<br />\r\n						Someone is trying to enter your account.&nbsp;If this is you, enter this code on the authentication page:</p>\r\n\r\n						<p style=\"color: #303030; font: 18px/20px Helvetica, Arial, sans-serif; margin: 25px 0 25px 0; text-align: center;\"><strong>[CODE]</strong></p>\r\n						</td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">\r\n						<p align=\"center\" style=\"margin: 10px 0 25px;\"><a alias=\"button\" href=\"[ACCOUNT_LINK]\" style=\"text-decoration: none; font: 17px/40px Helvetica, Arial, sans-serif; color: #ffffff; display: block; width: 225px; background: #28a745; border-radius: 4px;\" target=\"_blank\">My account</a></p>\r\n						</td>\r\n						<td style=\"border-top: 0px solid #dee0e1; \">&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: collapse;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td align=\"center\" height=\"45\" valign=\"middle\">\r\n						<p style=\"font: 13px/20px Arial, sans-serif, Helvetica; color: #939aa4; margin: 20px 0 0;\">Have a questions? Write to the Support Service.<br />\r\n						[SITE_NAME]</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<!--// 100% body table -->', '1');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('1','2','3','4','5','6') NOT NULL,
  `user` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `type`, `user`, `ip`, `date`, `code`) VALUES
(5320, '1', 'admin', '119.160.98.147', '2020-05-08 22:13:18', 'evn_5eb5cb6e8eb7d'),
(5321, '1', 'admin', '119.160.98.147', '2020-05-09 14:07:01', 'evn_5eb6aaf536607'),
(5322, '1', 'admin', '119.160.100.226', '2020-05-10 11:42:04', 'evn_5eb7da7cb7f95'),
(5323, '1', 'admin', '102.101.172.61', '2020-05-10 22:12:03', 'evn_5eb86e23c1157'),
(5324, '1', 'admin', '111.119.188.14', '2020-05-11 20:03:42', 'evn_5eb9a18ea8fb2'),
(5325, '1', 'admin', '119.160.101.97', '2020-05-16 19:27:48', 'evn_5ec030a481297'),
(5326, '1', 'admin', '196.113.24.239', '2020-05-17 00:43:24', 'evn_5ec07a9c230d4'),
(5327, '1', 'admin', '92.98.29.81', '2020-05-20 19:07:36', 'evn_5ec571e81fe57'),
(5328, '1', 'admin', '92.98.29.81', '2020-05-20 19:42:07', 'evn_5ec579ffc1d85'),
(5329, '1', 'admin', '119.160.99.154', '2020-05-21 14:53:40', 'evn_5ec687e44831c'),
(5330, '1', 'admin', '92.96.236.155', '2020-05-27 21:27:33', 'evn_5ececd3510f7a'),
(5331, '1', 'admin', '119.160.97.125', '2020-05-27 22:00:55', 'evn_5eced5073f091'),
(5332, '1', 'admin', '119.160.102.155', '2020-05-29 21:47:35', 'evn_5ed174e756a4f'),
(5333, '1', 'admin', '41.214.232.106', '2020-05-31 20:33:06', 'evn_5ed40672f3db3'),
(5334, '1', 'admin', '119.160.102.44', '2020-05-31 21:10:51', 'evn_5ed40f4be8281'),
(5335, '1', 'yestotrade', '41.214.232.106', '2020-05-31 21:45:18', 'evn_5ed4175e89b97'),
(5336, '1', 'admin', '92.96.236.155', '2020-06-03 22:55:24', 'evn_5ed81c4cdf08f'),
(5337, '1', 'admin', '92.96.236.155', '2020-06-04 22:49:37', 'evn_5ed96c7141908'),
(5338, '1', 'admin', '92.96.236.155', '2020-06-13 21:15:30', 'evn_5ee533e267790'),
(5339, '1', 'admin', '119.160.99.254', '2020-08-01 10:46:46', 'evn_5f253a06215e5'),
(5340, '1', 'admin', '119.160.97.26', '2020-08-08 15:16:41', 'evn_5f2eb3c9a7acb'),
(5341, '1', 'admin', '119.160.97.67', '2020-08-08 21:40:03', 'evn_5f2f0da3dba63'),
(5342, '1', 'admin', '119.160.103.130', '2020-08-09 16:20:29', 'evn_5f30143d6df22'),
(5343, '1', 'admin', '223.29.228.151', '2021-08-30 14:15:40', 'evn_612cd9fca54ed'),
(5344, '1', 'admin', '119.160.101.156', '2021-08-30 18:04:58', 'evn_612d0fbaba982'),
(5345, '1', 'admin', '119.160.101.156', '2021-08-30 18:33:19', 'evn_612d165f5c1a5');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `name` text NOT NULL,
  `info` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `receiver` varchar(200) NOT NULL,
  `status` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(100) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `about` text NOT NULL,
  `category_id` int(10) NOT NULL,
  `merchant_id` int(10) NOT NULL,
  `availability` int(10) NOT NULL,
  `img` text NOT NULL,
  `download_link` text NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `user` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `currency` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `about`, `category_id`, `merchant_id`, `availability`, `img`, `download_link`, `status`, `user`, `price`, `currency`) VALUES
(17, 'YGHS Donation', 'In social activities there isn’t an area that hasn’t been touched by the YGHS Pakistan. Especially we’ve made tremendous progress on important issue of Pakistan’s Youth that is Unemployment. In this regards, YGHS took initiative to cope with this bad situation of employment in Pakistan to design a project namely “Yes to Trade”. Yes to Trade will train the people of Pakistan through 3-Days training sessions about online trading to equip them with the tools of online trading. With this initiative people can convert their entrepreneurial potential in practice and can transform their lives to sustainable living pattern.\r\n\r\nThrough the generosity of people like you, our work has made a difference in the lives of thousands around the Pakistan. Your contribution allows us to improve communities by promoting education, preventing disease and providing awareness sessions to beat unemployment.\r\n\r\nWe are thankful to Almighty and appreciate Members like you who helped YGHS to achieve so much, but we need you to keep this thing as habit. We need to keep pressure on Government to make real reforms to create jobs, end economic inequality, and improve education.\r\n\r\nJoin hands to support our efforts, it’s not only an activities this is our responsibility to make the homeland a better place for our generations. To make contribution you can choose whatever you afford.', 18, 8, 10000, 'e6fdd3dd1bdb11619efedd2ce33dd74b.png', 'http://www.yghspk.com/', '1', 'yghspk', 10.00, 'debit_base'),
(18, 'Clients Payments', 'TECH-alfkay is known for creating high quality, feature-packed web and mobile solutions as well as have proven capabilities to deliver some of the most robust and complex enterprise-level content management, integration, big data and business intelligence solutions on the market. TECH-alfkay has won client\'s trust and confidence on its technology, innovation and business success.', 19, 9, 10000, '0ccd9cc16b834362c639d3b13c95d3ff.png', 'https://tech.alfkay.com/', '1', 'alfkay', 100.00, 'debit_base'),
(19, 'OrioCard Visa Debit Card', 'for fee and card transaction limits please refer to the link below\r\nhttps://www.orixpay.com/instructions', 20, 10, 9985, '7d20ba8c85af1d7de726f951b62a84ad.png', 'https://www.orixpay.com/instructions', '1', 'admin', 35.00, 'debit_base'),
(20, '500 Facebook Post, Video & Picture Likes - 100% Genuine & Non Drop Guarantee ', '500 Facebook Post, Video & Picture Likes - 100% Genuine & Non Drop Guarantee ', 21, 11, 10000, '7d9b780186165cf8dfd6b0b04cc96303.png', 'https://www.facebook.com', '1', 'zarnab.lashari', 10.00, 'debit_base'),
(21, 'invoice001', 'invoice payment', 25, 13, 999, 'default.png', 'https://cp3.freehostia.com/mail/', '1', 'Mother001', 100.00, 'debit_base');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `ip` varchar(20) NOT NULL,
  `attempt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`ip`, `attempt`) VALUES
('119.160.101.156', '2021-08-30 18:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `name` text NOT NULL,
  `user` varchar(300) NOT NULL,
  `link` text NOT NULL,
  `status_link` text NOT NULL,
  `success_link` text NOT NULL,
  `fail_link` text NOT NULL,
  `password` text NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `comment` text NOT NULL,
  `logo` text NOT NULL,
  `category` varchar(200) NOT NULL,
  `show_category` enum('0','1') NOT NULL,
  `note_payment` text NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `fix_fee` decimal(10,2) NOT NULL,
  `payeer_fee` enum('0','1') NOT NULL,
  `test_mode` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `date`, `name`, `user`, `link`, `status_link`, `success_link`, `fail_link`, `password`, `status`, `comment`, `logo`, `category`, `show_category`, `note_payment`, `fee`, `fix_fee`, `payeer_fee`, `test_mode`) VALUES
(10, '2018-04-29 12:40:15', 'Official Products', 'admin', 'https://www.orixpay.com', 'https://www.orixpay.com', 'https://www.orixpay.com/account/transactions', 'http://www.orixpay.com/account/deposit', '*Mypassword00', '2', 'please approve', '1b1ab3eb612cb4daf5fa8eebdc51a824.png', '33', '1', 'please refer to the link for fee and limits https://www.orixpay.com/instructions', 10.00, 1.00, '1', '0'),
(15, '2018-11-26 22:59:15', 'MetLife Shop', 'metlifepk', 'https://shopmetlife.pk', 'https://shopmetlife.pk/sci/form', 'https://shopmetlife.pk/my-account/orders/', 'https://shopmetlife.pk/my-account/orders/', 'PakistanMetlife1972', '2', 'kindly approve my marchant as your earliest. thanks', 'b2327e28ecfa74fb2cc8f806a7db0ed3.png', '27', '0', 'Pay with PayPal, Skrill, AdvCash and many other methods', 5.00, 0.00, '0', '0'),
(19, '2020-01-25 07:08:33', 'Elitesupport', 'mjguirim', 'elitesupporttech.com', 'elitesupporttech.com', 'http://elitesupport.epizy.com/merci/', 'http://elitesupport.epizy.com/veuillez-reessayer/', 'Marouen17+', '2', '', '4b34e75107746492e86eb788e1ab5b82.png', '31', '0', 'Test', 5.00, 0.00, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `merchants_categories`
--

CREATE TABLE `merchants_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_merchant` int(10) NOT NULL,
  `name` text NOT NULL,
  `status` enum('1','2') NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `merchants_categories`
--

INSERT INTO `merchants_categories` (`id`, `id_merchant`, `name`, `status`, `user`) VALUES
(18, 8, 'a:1:{s:7:\"english\";s:8:\"Donation\";}', '1', 'yghspk'),
(19, 9, 'a:1:{s:7:\"english\";s:15:\"Alfkay Invoices\";}', '1', 'alfkay'),
(20, 10, 'a:1:{s:7:\"english\";s:11:\"Debit Cards\";}', '1', 'admin'),
(21, 11, 'a:1:{s:7:\"english\";s:18:\"Facebook Marketing\";}', '1', 'zarnab.lashari'),
(22, 11, 'a:1:{s:7:\"english\";s:19:\"Instagram Marketing\";}', '1', 'zarnab.lashari'),
(23, 11, 'a:1:{s:7:\"english\";s:17:\"Twitter Marketing\";}', '1', 'zarnab.lashari'),
(24, 11, 'a:1:{s:7:\"english\";s:17:\"YouTube Marketing\";}', '1', 'zarnab.lashari'),
(25, 13, 'a:1:{s:7:\"english\";s:7:\"Invoice\";}', '1', 'Mother001');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_categories`
--

CREATE TABLE `merchant_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('0','1') NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `merchant_categories`
--

INSERT INTO `merchant_categories` (`id`, `code`, `date`, `status`, `name`, `img`) VALUES
(22, 'mcw_5ae5a2b246710', '2018-04-29 11:47:14', '1', 'a:1:{s:7:\"english\";s:18:\"Gifts & Life Style\";}', '82c5675f134f682b590d68f18a06f473.png'),
(23, 'mcw_5ae5a2bfa4d1c', '2018-04-29 11:47:27', '1', 'a:1:{s:7:\"english\";s:15:\"Sports & Travel\";}', '3bfe589a009a6107eeb8715c0218e8a3.png'),
(24, 'mcw_5ae5a2cbc893a', '2018-04-29 11:47:39', '1', 'a:1:{s:7:\"english\";s:19:\"Living & Appliances\";}', '323f124d8cf3c336f45424fdbeace071.png'),
(25, 'mcw_5ae5a2eda68cb', '2018-04-29 11:48:13', '1', 'a:1:{s:7:\"english\";s:14:\"Audio & Camera\";}', '47df07348d1a3d24c19edbc7b30a6280.png'),
(26, 'mcw_5ae5a31d0ccb5', '2018-04-29 11:49:01', '1', 'a:1:{s:7:\"english\";s:20:\"Computer Electronics\";}', '95904da0473181d263e85724340a17e1.png'),
(27, 'mcw_5ae5a3283730d', '2018-04-29 11:49:12', '1', 'a:1:{s:7:\"english\";s:15:\"Beauty & Health\";}', '694b734539573672db951e6ac6949683.png'),
(28, 'mcw_5ae5a3448dff0', '2018-04-29 11:49:40', '1', 'a:1:{s:7:\"english\";s:15:\"Women\'s Fashion\";}', '91a51a3a86cbf5e5d10044a7b6380e89.png'),
(29, 'mcw_5ae5a3542703b', '2018-04-29 11:49:56', '1', 'a:1:{s:7:\"english\";s:13:\"Men\'s Fashion\";}', 'ec33b4f47729cc8f6775151ffa907b5f.png'),
(30, 'mcw_5ae5a36374528', '2018-04-29 11:50:11', '1', 'a:1:{s:7:\"english\";s:15:\"Phone & Tablets\";}', '15c2e69096d0426e86768211c9b09834.png'),
(31, 'mcw_5ae5a370c7433', '2018-04-29 11:50:24', '1', 'a:1:{s:7:\"english\";s:21:\"Software & Technology\";}', 'ec4e3e2524fe78be46719cc8e6d21848.png'),
(32, 'mcw_5ae5a37d9c6fb', '2018-04-29 11:50:37', '1', 'a:1:{s:7:\"english\";s:18:\"Charity & Donation\";}', '4bb9735b2a64d215f0d4fd90b7ece592.png'),
(33, 'mcw_5ae5a38ad6240', '2018-04-29 11:50:50', '1', 'a:1:{s:7:\"english\";s:16:\"OrixPay Official\";}', '4c39cee60709477518a162675df462b8.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `id_item` int(10) NOT NULL,
  `id_merchant` int(10) NOT NULL,
  `id_transaction` int(10) NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `content` text NOT NULL,
  `translite` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `translite`) VALUES
(1, 'Home', 'a:1:{s:7:\"english\";s:6884:\"<div class=\"landing\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-5 mt-6\">\r\n<h4>&nbsp;</h4>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row mt-2\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-5\">\r\n<h2 class=\"text-center\">You can send and receive payments</h2>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-25\" src=\"https://www.orixpay.com/assets/themes/escrow/img/icon/user.png\" />\r\n<h5 class=\"mt-3\">Multi Currency Account</h5>\r\n\r\n<p class=\"mt-3\">keep money in local currency and transfer money to any country by username&nbsp;only</p>\r\n<a class=\"btn btn-outline-secondary\" href=\"https://www.orixpay.com/login\">Learn more</a></div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-25\" src=\"https://www.orixpay.com/assets/themes/escrow/img/icon/shop.png\" />\r\n<h5 class=\"mt-3\">Merchant Integration</h5>\r\n\r\n<p class=\"mt-3\">accept payments on your site using a simple HTML form and IPM notifications</p>\r\n<a class=\"btn btn-outline-secondary\" href=\"https://www.orixpay.com/developers\">Learn more</a></div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-25\" src=\"https://www.orixpay.com/assets/themes/escrow/img/icon/lock.png\" />\r\n<h5 class=\"mt-3\">Protect Purchase</h5>\r\n\r\n<p class=\"mt-3\">buy goods and pay for services, and if something goes wrong, we will refund money</p>\r\n<a class=\"btn btn-outline-secondary\" href=\"https://www.orixpay.com/how-it-works\">Learn more</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"top-merchant mt-5\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-5 mb-5\">\r\n<h2 class=\"text-center\">OrixPay unites buyers and sellers around the world</h2>\r\n</div>\r\n\r\n<div class=\"col-md-12\">\r\n<div class=\"text-center\">\r\n<div aria-label=\"Basic example\" class=\"btn-group\" role=\"group\"><a aria-controls=\"nav-home\" aria-selected=\"true\" class=\"btn btn-outline-success\" data-toggle=\"tab\" href=\"#nav-home\" id=\"nav-home-tab\" role=\"tab\">For buyers</a> <a aria-controls=\"nav-profile\" aria-selected=\"false\" class=\"btn btn-outline-success\" data-toggle=\"tab\" href=\"#nav-profile\" id=\"nav-profile-tab\" role=\"tab\">For sellers</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-12\">\r\n<div class=\"tab-content\" id=\"nav-tabContent\">\r\n<div aria-labelledby=\"nav-home-tab\" class=\"tab-pane fade show active\" id=\"nav-home\" role=\"tabpanel\">\r\n<div class=\"row\">\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-75\" src=\"https://www.orixpay.com/myimages/payer1.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge\">1</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p><a href=\"#\">Sign in</a> to your account or <a href=\"https://www.orixpay.com/user/register\">Sign up</a> if you are a new user</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-75\" src=\"https://www.orixpay.com/myimages/payer2.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge-2\">2</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p>Add funds to your account through convenient deposit methods</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-75\" src=\"https://www.orixpay.com/myimages//payer3.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge-2\">3</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p>Pay for the purchase simply by providing your username and password</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div aria-labelledby=\"nav-profile-tab\" class=\"tab-pane\" id=\"nav-profile\" role=\"tabpanel\">\r\n<div class=\"row\">\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-75\" src=\"https://www.orixpay.com/assets/themes/escrow/img/icon/seller2.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge\">1</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p>Perform simple account verification so that customers can trust you</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-75\" src=\"https://www.orixpay.com/assets/themes/escrow/img/icon/seller1.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge-2\">2</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p>Become a merchant by filling a simple form</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-75\" src=\"https://www.orixpay.com/assets/themes/escrow/img/icon/seller3.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge-2\">3</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p>Publish HTML form on your website and start receiving payments</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-12 mt-4 mb-5\">\r\n<div class=\"text-center\"><a class=\"btn btn-secondary btn-lg\" href=\"https://www.orixpay.com/developers\">Documentation for Developers</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"foot-merchant\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-5\">\r\n<h2 class=\"text-center text-white\">Join thousands of OrixPay users around the world</h2>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-3 mt-5 mb-5\">\r\n<h5 class=\"text-center text-white\">Safe and Secure</h5>\r\n\r\n<p class=\"text-center text-white\">Don&#39;t worry, if you do not receive the product&nbsp;you will get the refund to your account!</p>\r\n</div>\r\n\r\n<div class=\"col-md-3 mt-5 mb-5\">\r\n<h5 class=\"text-center text-white\">Invoice System</h5>\r\n\r\n<p class=\"text-center text-white\">Issue bills to your customers, get paid and withdraw funds from your account conveniently!</p>\r\n</div>\r\n\r\n<div class=\"col-md-3 mt-5 mb-5\">\r\n<h5 class=\"text-center text-white\">Shops and Payment</h5>\r\n\r\n<p class=\"text-center text-white\">Pay for goods and services in two steps only. Select a store and buy the product.&nbsp;it&#39;s fast and safe!</p>\r\n</div>\r\n\r\n<div class=\"col-md-3 mt-5 mb-5\">\r\n<h5 class=\"text-center text-white\">Exchange Currency</h5>\r\n\r\n<p class=\"text-center text-white\">Exchange&nbsp;different currencies in one wallet. You will be&nbsp;surprised by the low exchange rate of currencies!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"top-merchant\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12  mt-5\">\r\n<h4 class=\"text-center\">Create account and get started</h4>\r\n</div>\r\n\r\n<div class=\"col-md-12 mt-4 mb-5\">\r\n<h4 class=\"text-center\"><a class=\"btn btn-success btn-lg\" href=\"https://www.orixpay.com/user/register\">Sign up now</a></h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\";}', '1'),
(2, 'How it works', 'a:1:{s:7:\"english\";s:3551:\"<div class=\"landing-2\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-5 mt-6\">\r\n<h4>&nbsp;</h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"top-protect\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-4 mt-3 mb-3\">\r\n<div class=\"row\">\r\n<div class=\"col-md-2 mt-4\"><span class=\"top-badge\">1</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p class=\"text-white\">Safe shopping around the world in different currencies</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-3 mb-3\">\r\n<div class=\"row\">\r\n<div class=\"col-md-2 mt-4\"><span class=\"top-badge-2\">2</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p class=\"text-white\">Do not need to enter card data - just sign in OrixPay</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-3 mb-3\">\r\n<div class=\"row\">\r\n<div class=\"col-md-2 mt-4\"><span class=\"top-badge-2\">3</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p class=\"text-white\">Save time - order in two steps without superfluous forms</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-5 mb-5\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-10\" src=\"https://www.orixpay.com/assets/themes/escrow/img/icon/ok.png\" /></div>\r\n\r\n<h2 class=\"text-center\">Your private information will not be disclosed.</h2>\r\n\r\n<h5 class=\"text-center text-muted\">Your protected personal information is not shared with any merchant.&nbsp;</h5>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"landing-3\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-7 mt-6\">&nbsp;</div>\r\n\r\n<div class=\"col-md-5 mt-6\">\r\n<h4>SHOPPING IN STORES AROUND THE GLOBE</h4>\r\n\r\n<p>Pay for purchases in 6 different currencies with&nbsp;minimum commission. You can&nbsp;purchases products from number of registered stores at OrixPay or from third party seller&#39;s websites.</p>\r\n<a class=\"btn btn-light btn-lg\" href=\"https://www.orixpay.com/login\">Store Explorer</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"top-merchant\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-5 mb-5\">\r\n<h2 class=\"text-center\">Are you unhappy with the purchase?</h2>\r\n</div>\r\n\r\n<div class=\"col-md-6 mt-1 mb-5\"><img alt=\"\" class=\"w-100\" src=\"https://www.orixpay.com/assets/themes/escrow/img/dispute2.png\" /></div>\r\n\r\n<div class=\"col-md-6 mt-1 mb-5\">\r\n<div class=\"row\">\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge\">1</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p>Open a dispute with the seller and describe the cause of dissatisfaction. Seller may return your payment after listening to you.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge-2\">2</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p>You may report a claim if the disagreement persists,&nbsp;We will get acquainted with the problem and contact the seller. Be sure we will conduct a detailed investigation of the problem.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge-2\">3</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p>In case we decide in your favor, you may get upto full refund.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"foot-merchant\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-6\">\r\n<h4 class=\"text-center text-white\">Create account and get started</h4>\r\n</div>\r\n\r\n<div class=\"col-md-12 mt-4 mb-5\">\r\n<h4 class=\"text-center\"><a class=\"btn btn-outline-light btn-lg\" href=\"https://www.orixpay.com/user/register\">Sign up</a></h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\";}', '1'),
(3, 'For developers', 'a:1:{s:7:\"english\";s:12464:\"<!--?php defined(\'BASEPATH\') OR exit(\'No direct script access allowed\'); ?-->\r\n<div class=\"header-st mb-head\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"col-md-8 col-sm-6 col-xs-7\">\r\n<div class=\"code-editor\">\r\n<div class=\"tabs\">\r\n<div class=\"title -javascript\">For Developers</div>\r\n</div>\r\n\r\n<div class=\"content\">\r\n<ul class=\"lines\">\r\n	<li class=\"line\"><span class=\"linenumber\">1</span> <span class=\"comment\">// Publish on your site</span></li>\r\n	<li class=\"line\"><span class=\"linenumber\">2</span><span class=\"yellow\">&lt;form method=&quot;POST&quot; action=&quot;https://www.orixpay.com/sci/form&quot; target=&quot;_blank&quot;&gt;</span></li>\r\n	<li class=\"line\"><span class=\"linenumber\">3</span><span class=\"red\"> &lt;input type=&quot;hidden&quot; name=&quot;merchant&quot; value=&quot;7&quot;&gt; </span></li>\r\n	<li class=\"line\"><span class=\"linenumber\">4</span><span class=\"red\"> &lt;input type=&quot;hidden&quot; name=&quot;item_name&quot; value=&quot;Testing payment&quot;&gt;</span></li>\r\n	<li class=\"line\"><span class=\"linenumber\">5</span><span class=\"red\"> &lt;input type=&quot;hidden&quot; name=&quot;amount&quot; value=&quot;112&quot;&gt;</span></li>\r\n	<li class=\"line\"><span class=\"linenumber\">6</span><span class=\"red\"> &lt;input type=&quot;hidden&quot; name=&quot;currency&quot; value=&quot;debit_base&quot;&gt;</span></li>\r\n	<li class=\"line\"><span class=\"linenumber\">7</span><span class=\"red\"> &lt;input type=&quot;hidden&quot; name=&quot;custom&quot; value=&quot;comment&quot;&gt;</span></li>\r\n	<li class=\"line\"><span class=\"linenumber\">8</span><span class=\"red\"> &lt;button type=&quot;submit&quot;&gt;Pay now!&lt;/button&gt;</span></li>\r\n	<li class=\"line\"><span class=\"linenumber\">9</span><span class=\"yellow\">&lt;form/&gt;</span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-5\">\r\n<h3 class=\"text-center\">&nbsp;</h3>\r\n\r\n<h3 class=\"text-center\">&nbsp;</h3>\r\n\r\n<h3 class=\"text-center\">Simple form and instant payment POST notifications</h3>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-25\" src=\"https://www.orixpay.com/assets/themes/escrow/img/icon/space.png\" />\r\n<h5 class=\"mt-3\">Fast Start</h5>\r\n\r\n<p class=\"mt-3\">register your account, go through verification and start accepting payments!</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-25\" src=\"https://www.orixpay.com/assets/themes/escrow/img/icon/ipn.png\" />\r\n<h5 class=\"mt-3\">IPN System</h5>\r\n\r\n<p class=\"mt-3\">get notifications about payments to your sites built on any CMS!</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-5\">\r\n<div class=\"text-center\"><img alt=\"\" class=\"w-25\" src=\"https://www.orixpay.com/assets/themes/escrow/img/icon/tool.png\" />\r\n<h5 class=\"mt-3\">Test Mode</h5>\r\n\r\n<p class=\"mt-3\">special test payment mode for developers without using real money!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"top-merchant mt-5\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-5 mb-4\">\r\n<h3 class=\"text-center\">Get payments using the&nbsp;HTML form or Woocommerce Plugin</h3>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h4 class=\"text-primary text-center\">How to receive payments?</h4>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge\">1</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p><strong>On your site</strong> - just publish the HTML form and enter payment parameters. User pays for the purchase on a secure&nbsp;page.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge-2\">2</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p><strong>Shops and payment</strong> - add your store to our categories and the user pays for the purchases in your account.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2 mt-4\"><span class=\"step-badge-2\">3</span></div>\r\n\r\n<div class=\"col-md-10 mt-3\">\r\n<p><strong>Invoicing system</strong> - Enter the cost, the recipient and the description of the invoice.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-8\"><img alt=\"\" class=\"w-100\" src=\"https://www.orixpay.com/myimages/mac-merchant.png\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"foot-merchant\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-5 mb-4\">\r\n<h3 class=\"text-center text-white\">Popular deposit methods for users</h3>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4 mb-4\">\r\n<div class=\"text-center\"><img class=\"w-50 win-img\" src=\"https://www.orixpay.com/assets/themes/account/img/pay-icon/paypal.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4 mb-4\">\r\n<div class=\"text-center\"><img class=\"w-50 win-img\" src=\"https://www.orixpay.com/assets/themes/account/img/pay-icon/skrill.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4 mb-4\">\r\n<div class=\"text-center\"><img class=\"w-50 win-img\" src=\"https://www.orixpay.com/assets/themes/account/img/pay-icon/pm.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4 mb-4\">\r\n<div class=\"text-center\"><img class=\"w-50 win-img\" src=\"https://www.orixpay.com/assets/themes/account/img/pay-icon/payeer.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4 mb-4\">\r\n<div class=\"text-center\"><img class=\"w-50 win-img\" src=\"https://www.orixpay.com/assets/themes/account/img/pay-icon/btc.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-2 mt-4 mb-4\">\r\n<div class=\"text-center\"><img class=\"w-50 win-img\" src=\"https://www.orixpay.com/assets/themes/account/img/pay-icon/advcash.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-12 mt-4 mb-4\">\r\n<div class=\"text-center text-white\">\r\n<p>and many other methods</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-5\">\r\n<h3 class=\"text-center\">Documentation</h3>\r\n\r\n<p class=\"text-center text-muted\">POST form for payment</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-4\">\r\n<table class=\"table table-hover table-responsive\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">Variable</th>\r\n			<th scope=\"col\">Description</th>\r\n			<th scope=\"col\">Conditions</th>\r\n			<th scope=\"col\">Necessarily</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<th><code>merchant</code></th>\r\n			<td>Merchant ID in the system OrixPay. Assigned to the merchant automatically after adding a store to your account. Your store must be moderated.</td>\r\n			<td>Not equal to 0</td>\r\n			<td><strong>Yes</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>item_name</code></th>\r\n			<td>Product name or purpose of payment. This item is visible to the payer.</td>\r\n			<td>Minimum number of characters 3, maximum - 100</td>\r\n			<td><strong>Yes</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>amount</code></th>\r\n			<td>The sum in any form. The sum is rounded to decimal places. The total amount including commission will be calculated automatically.</td>\r\n			<td>Sum is more than 1</td>\r\n			<td><strong>Yes</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>currency</code></th>\r\n			<td>Currency of payment. Available currencies <code>debit_base</code>, <code>debit_extra1</code>, <code>debit_extra2</code>, <code>debit_extra3</code>, <code>debit_extra4</code>, <code>debit_extra5</code></td>\r\n			<td>Only values from the list</td>\r\n			<td><strong>Yes</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>custom</code></th>\r\n			<td>Comment to the payment. For example, the order number in your store. This item is not displayed to the buyer.</td>\r\n			<td>Maximum - 100</td>\r\n			<td><strong>Yes</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class=\"col-md-12 mt-4\">\r\n<p class=\"text-center text-muted\">IPN notifications</p>\r\n</div>\r\n\r\n<div class=\"col-md-12 mt-4\">\r\n<table class=\"table table-hover table-responsive\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">Variable</th>\r\n			<th scope=\"col\">Description</th>\r\n			<th scope=\"col\">Example</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<th><code>$POST[&#39;amount&#39;]</code></th>\r\n			<td>The received amount without commissions</td>\r\n			<td><code>100.00</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;fee&#39;]</code></th>\r\n			<td>Fee for payment. Paid by the buyer or merchant according to the settings</td>\r\n			<td><code>0.20</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;total&#39;]</code></th>\r\n			<td>Total transaction amount including commission</td>\r\n			<td><code>100.20</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;currency&#39;]</code></th>\r\n			<td>Transaction currency for which payment was made</td>\r\n			<td><code>debit_base</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;payer&#39;]</code></th>\r\n			<td>Buyer username in the system OrixPay</td>\r\n			<td><code>johndoe</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;receiver&#39;]</code></th>\r\n			<td>Merchant username in the system OrixPay</td>\r\n			<td><code>envato</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;status&#39;]</code></th>\r\n			<td>The status of the transaction. Always Value &quot;Confirmed&quot;</td>\r\n			<td><code>Confirmed</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;date&#39;]</code></th>\r\n			<td>Transaction date</td>\r\n			<td><code>2018-01-09 03:11:07</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;id_transfer&#39;]</code></th>\r\n			<td>Unique transaction number in the system OrixPay</td>\r\n			<td><code>58954</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;merchant_name&#39;]</code></th>\r\n			<td>Merchant store name in the system OrixPay</td>\r\n			<td><code>Google Inc</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;merchant_id&#39;]</code></th>\r\n			<td>Unique number of merchant in the system OrixPay</td>\r\n			<td><code>21</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;balance&#39;]</code></th>\r\n			<td>Available merchant balance in transaction currency</td>\r\n			<td><code>2100.56</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;item_name&#39;]</code></th>\r\n			<td>Name of paid goods</td>\r\n			<td><code>Test payment</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;custom&#39;]</code></th>\r\n			<td>Comment on payment, formed by the merchant in the HTML form</td>\r\n			<td><code>INV 1452485</code></td>\r\n		</tr>\r\n		<tr>\r\n			<th><code>$POST[&#39;hash&#39;]</code></th>\r\n			<td>A unique signature that is used to verify the validity of a notification. A string join is created of the total amount, merchant password, date transaction and transaction ID. The string is encrypted using an algorithm MD5.</td>\r\n			<td><code>C93D3BF7A7C4AFE94B64E30C2CE39F4F</code></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class=\"col-md-12 mt-4\">\r\n<p class=\"text-center text-muted\">Example of a notification handler in PHP</p>\r\n</div>\r\n\r\n<div class=\"col-md-12 mt-4\">\r\n<div class=\"card\">\r\n<div class=\"card-body\">\r\n<div class=\"form-group\"><textarea class=\"form-control\" id=\"exampleFormControlTextarea1\" rows=\"12\">// merchant password		\r\n$merchant_password = &quot;t43t43t34t43t34t6545845&quot;;\r\n\r\n// transaction info\r\n$amount = $_POST[&#39;amount&#39;];\r\n$fee = $_POST[&#39;fee&#39;];\r\n$total = $_POST[&#39;total&#39;];\r\n$currency = $_POST[&#39;currency&#39;];\r\n$payer = $_POST[&#39;payer&#39;];\r\n$receiver = $_POST[&#39;receiver&#39;];\r\n$status = $_POST[&#39;status&#39;];\r\n$date = $_POST[&#39;date&#39;];\r\n$id_transfer = $_POST[&#39;id_transfer&#39;];\r\n// Merchant info\r\n$merchant_name = $_POST[&#39;merchant_name&#39;];\r\n$merchant_id = $_POST[&#39;merchant_id&#39;];\r\n$balance = $_POST[&#39;balance&#39;];\r\n// Purchase Information\r\n$item_name = $_POST[&#39;item_name&#39;];\r\n$custom = $_POST[&#39;custom&#39;];\r\n// Verification of the transaction\r\n$hash = $_POST[&#39;hash&#39;];\r\n\r\n$hash_string = $total.&#39;:&#39;.$merchant_password.&#39;:&#39;.$date.&#39;:&#39;.$id_transfer;\r\n		\r\n$user_hash = strtoupper(md5($hash_string));\r\n\r\nif ($hash_string == $user_hash) {\r\n\r\n	echo &quot;Confirmed!&quot;;\r\n\r\n} else {\r\n\r\n	echo &quot;Dasabled!&quot;;\r\n\r\n}</textarea></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"foot-merchant mt-5\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 mt-6\">\r\n<h4 class=\"text-center text-white\">Create account and get started</h4>\r\n</div>\r\n\r\n<div class=\"col-md-12 mt-4 mb-5\">\r\n<h4 class=\"text-center\"><a class=\"btn btn-outline-light btn-lg\" href=\"https://www.orixpay.com/user/register\">Sign up</a></h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--?php // echo $content; ?-->\";}', '1'),
(4, 'Help', 'a:1:{s:7:\"english\";s:0:\"\";}', '1'),
(5, 'Terms of agreement', 'a:1:{s:7:\"english\";s:0:\"\";}', '1'),
(6, 'Privacy policy', 'a:1:{s:7:\"english\";s:0:\"\";}', '1'),
(7, 'Fee Structure', 'a:1:{s:7:\"english\";s:0:\"\";}', '1'),
(8, 'Page not found', 'a:1:{s:7:\"english\";s:380:\"<div class=\"header-st mb-4\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h3>Page not found</h3>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"container mt-5\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 text-center\">\r\n<h3 class=\"mt-4\">This page has been deleted or does not exist</h3>\r\n\r\n<h1 class=\"mt-4\"><strong>404</strong></h1>\r\n</div>\r\n</div>\r\n</div>\";}', '1');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `input_type` enum('input','textarea','radio','dropdown','timezones') CHARACTER SET latin1 NOT NULL,
  `options` text COMMENT 'Use for radio and dropdown: key|value on each line',
  `is_numeric` enum('0','1') NOT NULL DEFAULT '0' COMMENT 'forces numeric keypad on mobile devices',
  `show_editor` enum('0','1') NOT NULL DEFAULT '0',
  `input_size` enum('large','medium','small') DEFAULT NULL,
  `translate` enum('0','1') NOT NULL DEFAULT '0',
  `help_text` varchar(256) DEFAULT NULL,
  `validation` varchar(128) NOT NULL,
  `sort_order` tinyint(3) UNSIGNED NOT NULL,
  `label` varchar(128) NOT NULL,
  `value` text COMMENT 'If translate is 1, just start with your default language',
  `last_update` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `input_type`, `options`, `is_numeric`, `show_editor`, `input_size`, `translate`, `help_text`, `validation`, `sort_order`, `label`, `value`, `last_update`, `updated_by`) VALUES
(1, 'site_name', 'input', NULL, '0', '0', 'large', '0', NULL, 'required|trim|min_length[3]|max_length[128]', 10, 'Site Name', 'the only virtual bank', '2018-05-22 19:53:58', 22),
(2, 'per_page_limit', 'dropdown', '10|10\r\n25|25\r\n50|50\r\n75|75\r\n100|100', '1', '0', 'small', '0', NULL, 'required|trim|numeric', 50, 'Items Per Page', '25', '2018-05-22 19:53:58', 22),
(3, 'meta_keywords', 'input', NULL, '0', '0', 'large', '0', 'Comma-seperated list of site keywords', 'trim', 20, 'Meta Keywords', 'money transfer, receive money, send money, receive money instantly, send money instantly, send money anywhere in the world, currency exchange, free currency exchange, deposit with paypal, depsit with payza, deposit with skrill, deposit with sms, deposit with call, deposit with bitcoin, deposit with advcash, withdraw with skrill, withdraw with paypal, withdraw with payza, withdraw with bitcoin, simple deposit and withdraw, digital currency exchange, paypal to payeer, paypal to ADV Cash, paypal to  skrill, paypal to 2checkout, paypal to perfect money, paypal to bitcoin, paypal to payoneer, paypal to bank account, payeer to adv cash, payeer to skrill, payeer to 2checkout, payeer to payza, payeer to perfect money, payeer to bitcoin, payeer to payoneer, payeer to bank account, adv cash to skrill, adv cash to 2checkout, adv cash to payza, adv cash to perfect money, adv cash to bitcoin, adv cash to payoneer, adv cash to bank account, skrill to 2checkout, skrill to payza, skrill to perfect money, skrill to bitcoin, skrill to payoneer, skrill to bank account, 2checkout to payza, 2checkout to perfect money, 2checkout to bitcoin, 2checkout to payoneer, 2checkout to bank account, payza to perfect money, payza to bitcoin, payza to payoneer, payza to bank account, perfect money to bitcoin, perfect money to payoneer, perfect money to bank account,bitcoin to payoneer, bitcoin to bank account, marchant account, API, SMS notification, sms alerts, virtual master card, loadable virtual master card, send voucher, request money, bitcoin deposit', '2018-05-22 19:53:58', 22),
(4, 'meta_description', 'textarea', NULL, '0', '0', 'large', '0', 'Short description describing your site.', 'trim', 30, 'Meta Description', 'get and transfer money around the world, Simple & Reliable Solution.', '2018-05-22 19:53:58', 22),
(5, 'site_email', 'input', NULL, '0', '0', 'medium', '0', 'Email address all emails will be sent from.', 'required|trim|valid_email', 40, 'Site Email', 'info@orixpay.com', '2018-05-22 19:53:58', 22),
(6, 'timezones', 'timezones', NULL, '0', '0', 'medium', '0', NULL, 'required|trim', 60, 'Timezone', 'UTC', '2018-05-22 19:53:58', 22),
(7, 'com_transfer', 'input', NULL, '1', '0', 'medium', '0', NULL, 'required|trim|numeric', 70, 'Transer fee, %', '0', '2018-05-22 19:53:58', 22),
(8, 'com_invoice', 'input', NULL, '1', '0', 'medium', '0', NULL, 'required|trim|numeric', 80, 'Invoice fee, %', '0', '2018-05-22 19:53:58', 22),
(10, 'google_secret', 'input', NULL, '0', '0', 'medium', '0', NULL, 'required|trim', 90, 'reCAPTCHA secret', '6LellPQUAAAAAMeqKpNfI-jpblUh3U3fOqe3liw_', '2018-05-22 19:53:58', 22),
(11, 'phone', 'input', NULL, '0', '0', 'medium', '0', NULL, 'numeric', 100, 'Phone', '14157921555', '2018-05-22 19:53:58', 22),
(12, 'skype', 'input', NULL, '0', '0', 'medium', '0', NULL, 'trim', 110, 'Skype', 'orixpay', '2018-05-22 19:53:58', 22),
(13, 'twilio_sid', 'input', NULL, '0', '0', 'medium', '0', NULL, 'trim', 120, 'Twilio SID', 'AC33d1afe1ae1cb0bc6d1280fc8666da13', '2018-05-22 19:53:58', 22),
(14, 'twilio_token', 'input', NULL, '0', '0', 'medium', '0', NULL, 'trim', 130, 'Twilio token', 'e68f1d946e9d413ea478a7c68f272891', '2018-05-22 19:53:58', 22),
(15, 'twilio_phone', 'input', NULL, '0', '0', NULL, '0', NULL, 'required|trim|numeric', 140, 'Twilio phone number', '+14157921555', '2018-05-22 19:53:58', 22),
(17, 'google_site_key', 'input', NULL, '0', '0', 'medium', '0', NULL, 'required|trim', 150, 'reCAPTCHA site key', '6LellPQUAAAAAGzjFo0FScTol36kB74_AudFdStM', '2018-05-22 19:53:58', 22),
(18, 'fixer', 'input', NULL, '0', '0', 'medium', '0', NULL, 'required|trim', 160, 'API Access Key Fixer.io', 'e8f3f37007e56bad6c94277580de4448', '2018-05-22 19:53:58', 22);

-- --------------------------------------------------------

--
-- Table structure for table `settings_deposit`
--

CREATE TABLE `settings_deposit` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) NOT NULL,
  `fee_fix` decimal(10,2) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `start_verify` enum('0','1') NOT NULL,
  `standart_verify` enum('0','1') NOT NULL,
  `expanded_verify` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL,
  `debit_base` enum('0','1') NOT NULL,
  `debit_extra1` enum('0','1') NOT NULL,
  `debit_extra2` enum('0','1') NOT NULL,
  `debit_extra3` enum('0','1') NOT NULL,
  `debit_extra4` enum('0','1') NOT NULL,
  `debit_extra5` enum('0','1') NOT NULL,
  `minimum_debit_base` decimal(10,2) NOT NULL,
  `maximum_debit_base` decimal(10,2) NOT NULL,
  `minimum_debit_extra1` decimal(10,2) NOT NULL,
  `maximum_debit_extra1` decimal(10,2) NOT NULL,
  `minimum_debit_extra2` decimal(10,2) NOT NULL,
  `maximum_debit_extra2` decimal(10,2) NOT NULL,
  `minimum_debit_extra3` decimal(10,2) NOT NULL,
  `maximum_debit_extra3` decimal(10,2) NOT NULL,
  `minimum_debit_extra4` decimal(10,2) NOT NULL,
  `maximum_debit_extra4` decimal(10,2) NOT NULL,
  `minimum_debit_extra5` decimal(10,2) NOT NULL,
  `maximum_debit_extra5` decimal(10,2) NOT NULL,
  `ac_debit_base` text NOT NULL,
  `ac_debit_extra1` text NOT NULL,
  `ac_debit_extra2` text NOT NULL,
  `ac_debit_extra3` text NOT NULL,
  `ac_debit_extra4` text NOT NULL,
  `ac_debit_extra5` text NOT NULL,
  `api_value1` varchar(100) NOT NULL,
  `api_value2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_deposit`
--

INSERT INTO `settings_deposit` (`id`, `name`, `fee_fix`, `fee`, `start_verify`, `standart_verify`, `expanded_verify`, `status`, `debit_base`, `debit_extra1`, `debit_extra2`, `debit_extra3`, `debit_extra4`, `debit_extra5`, `minimum_debit_base`, `maximum_debit_base`, `minimum_debit_extra1`, `maximum_debit_extra1`, `minimum_debit_extra2`, `maximum_debit_extra2`, `minimum_debit_extra3`, `maximum_debit_extra3`, `minimum_debit_extra4`, `maximum_debit_extra4`, `minimum_debit_extra5`, `maximum_debit_extra5`, `ac_debit_base`, `ac_debit_extra1`, `ac_debit_extra2`, `ac_debit_extra3`, `ac_debit_extra4`, `ac_debit_extra5`, `api_value1`, `api_value2`) VALUES
(1, 'PayPal', 1.00, 0.00, '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', 10.00, 3000.00, 10.00, 2000.00, 10.00, 2500.00, 10.00, 10000.00, 10.00, 10000.00, 1000.00, 300000.00, 'payments@paymitly.com', 'payments@paymitly.com', 'payments@paymitly.com', 'payments@paymitly.com', 'payments@paymitly.com', 'payments@paymitly.com', 'Not used', 'Not used'),
(2, 'PerfectMoney', 0.00, 0.00, '1', '1', '1', '1', '0', '1', '1', '0', '0', '0', 0.00, 3000.00, 0.00, 2000.00, 0.00, 2500.00, 0.00, 10000.00, 0.00, 10000.00, 0.00, 300000.00, 'admin@orixpay.com', 'U24044046', 'E14602089', 'admin@orixpay.com', 'admin@orixpay.com', 'admin@orixpay.com', '3u6gs2K60VOOXlZnTkziFLVpg', 'Not used'),
(3, 'ADVCash', 0.00, 0.00, '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', 10.00, 3000.00, 10.00, 2000.00, 10.00, 2500.00, 50.00, 10000.00, 50.00, 10000.00, 50.00, 10000.00, 'admin@orixpay.com', 'admin@orixpay.com', 'admin@orixpay.com', 'admin@orixpay.com', 'admin@orixpay.com', 'admin@orixpay.com', 'orixpay', '6j87zWtP$n'),
(4, 'Payeer', 0.00, 0.00, '1', '1', '1', '0', '1', '0', '1', '0', '0', '0', 10.00, 3000.00, 10.00, 2000.00, 10.00, 2500.00, 50.00, 10000.00, 50.00, 10000.00, 1000.00, 300000.00, '390409805', '390409805', '390409805', '390409805', '390409805', '390409805', '123', '987654321'),
(5, 'Skrill', 0.00, 0.00, '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', 10.00, 3000.00, 10.00, 2000.00, 10.00, 2500.00, 50.00, 10000.00, 50.00, 10000.00, 1000.00, 300000.00, 'deposit@orixpay.com', 'deposit@orixpay.com', 'deposit@orixpay.com', 'deposit@orixpay.com', 'deposit@orixpay.com', 'deposit@orixpay.com', 'N/A', 'N/A'),
(6, 'PayGol', 0.00, 0.00, '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', 10.00, 3000.00, 10.00, 2000.00, 10.00, 2500.00, 50.00, 10000.00, 50.00, 10000.00, 1000.00, 300000.00, '445653', '445653', '445653', '445653', '445653', '445653', '76579c69-7703-11e7-91b6-128b57940774', 'Not used'),
(7, 'Cash Deposit', 0.00, 0.00, '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', 10.00, 3000.00, 10.00, 2000.00, 10.00, 2500.00, 50.00, 10000.00, 50.00, 10000.00, 1000.00, 300000.00, 'By opting Cash Deposit option, you need to send payment in our Bank Account No.................... Once we received your payment,  after necessary verification, your payment would be credited to your account.\r\n\r\nNote:- Once you have done cash deposit with your bank please provide the deposit slip scanned copy at admin@orixpay.com.', 'By opting Cash Deposit option, you need to send payment in our Bank Account No.................... Once we received your payment,  after necessary verification, your payment would be credited to your account.\r\n\r\nNote:- Once you have done cash deposit with your bank please provide the deposit slip scanned copy at admin@orixpay.com.', 'By opting Cash Deposit option, you need to send payment in our Bank Account No.................... Once we received your payment,  after necessary verification, your payment would be credited to your account.\r\n\r\nNote:- Once you have done cash deposit with your bank please provide the deposit slip scanned copy at admin@orixpay.com.', 'By opting Cash Deposit option, you need to send payment in our Bank Account No.................... Once we received your payment,  after necessary verification, your payment would be credited to your account.\r\n\r\nNote:- Once you have done cash deposit with your bank please provide the deposit slip scanned copy at admin@orixpay.com.', 'By opting Cash Deposit option, you need to send payment in our Bank Account No.................... Once we received your payment,  after necessary verification, your payment would be credited to your account.\r\n\r\nNote:- Once you have done cash deposit with your bank please provide the deposit slip scanned copy at admin@orixpay.com.', 'By opting Cash Deposit option, you need to send payment in our Bank Account No.................... Once we received your payment,  after necessary verification, your payment would be credited to your account.\r\n\r\nNote:- Once you have done cash deposit with your bank please provide the deposit slip scanned copy at admin@orixpay.com.', 'Not used', 'Not used'),
(8, 'OrioCard', 0.00, 0.00, '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', 10.00, 3000.00, 10.00, 2000.00, 10.00, 2500.00, 50.00, 10000.00, 50.00, 10000.00, 1000.00, 300000.00, 'By opting OrioCard deposit option, you need to setup your billing details by the following links, Account settings I Billing settings then fill up the last 4 digits of your OrioCard and Click Save. After necessary verification your requested payment would be deducted from your card and credited to your OrixPay account with in 1 business day.', 'By opting OrioCard deposit option, you need to setup your billing details by the following links, Account settings I Billing settings then fill up the last 4 digits of your OrioCard and Click Save. After necessary verification your requested payment would be deducted from your card and credited to your OrixPay account with in 1 business day.', 'By opting OrioCard deposit option, you need to setup your billing details by the following links, Account settings I Billing settings then fill up the last 4 digits of your OrioCard and Click Save. After necessary verification your requested payment would be deducted from your card and credited to your OrixPay account with in 1 business day.', 'By opting OrioCard deposit option, you need to setup your billing details by the following links, Account settings I Billing settings then fill up the last 4 digits of your OrioCard and Click Save. After necessary verification your requested payment would be deducted from your card and credited to your OrixPay account with in 1 business day.', 'By opting OrioCard deposit option, you need to setup your billing details by the following links, Account settings I Billing settings then fill up the last 4 digits of your OrioCard and Click Save. After necessary verification your requested payment would be deducted from your card and credited to your OrixPay account with in 1 business day.', 'By opting OrioCard deposit option, you need to setup your billing details by the following links, Account settings I Billing settings then fill up the last 4 digits of your OrioCard and Click Save. After necessary verification your requested payment would be deducted from your card and credited to your OrixPay account with in 1 business day.', 'Not used', 'Not used'),
(9, 'CryptoCoins', 0.00, 0.00, '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', 10.00, 3000.00, 10.00, 2000.00, 10.00, 2500.00, 50.00, 10000.00, 50.00, 10000.00, 1000.00, 300000.00, '18360a8f014a71b7f3180d315efbb52c', '18360a8f014a71b7f3180d315efbb52c', '18360a8f014a71b7f3180d315efbb52c', '18360a8f014a71b7f3180d315efbb52c', '18360a8f014a71b7f3180d315efbb52c', '18360a8f014a71b7f3180d315efbb52c', 'orixpay', 'Not used'),
(10, 'Blockchain', 0.00, 0.00, '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', 10.00, 3000.00, 10.00, 2000.00, 10.00, 2500.00, 50.00, 10000.00, 50.00, 10000.00, 1000.00, 300000.00, '96769c56-1fd8-44e3-9ab7-5eb436e6eb95', '96769c56-1fd8-44e3-9ab7-5eb436e6eb95', '96769c56-1fd8-44e3-9ab7-5eb436e6eb95', '96769c56-1fd8-44e3-9ab7-5eb436e6eb95', '96769c56-1fd8-44e3-9ab7-5eb436e6eb95', '96769c56-1fd8-44e3-9ab7-5eb436e6eb95', 'a2703ca9-b449-48ab-a99c-181186519593', 'a2703ca9-b449-48ab-a99c-181186519593');

-- --------------------------------------------------------

--
-- Table structure for table `settings_withdrawal`
--

CREATE TABLE `settings_withdrawal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) NOT NULL,
  `fee_fix` decimal(10,2) NOT NULL,
  `fee` decimal(10,0) NOT NULL,
  `terms` text NOT NULL,
  `start_verify` enum('0','1') NOT NULL,
  `standart_verify` enum('0','1') NOT NULL,
  `expanded_verify` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL,
  `debit_base` enum('0','1') NOT NULL,
  `debit_extra1` enum('0','1') NOT NULL,
  `debit_extra2` enum('0','1') NOT NULL,
  `debit_extra3` enum('0','1') NOT NULL,
  `debit_extra4` enum('0','1') NOT NULL,
  `debit_extra5` enum('0','1') NOT NULL,
  `minimum_debit_base` decimal(10,2) NOT NULL,
  `maximum_debit_base` decimal(10,2) NOT NULL,
  `minimum_debit_extra1` decimal(10,2) NOT NULL,
  `maximum_debit_extra1` decimal(10,2) NOT NULL,
  `minimum_debit_extra2` decimal(10,2) NOT NULL,
  `maximum_debit_extra2` decimal(10,2) NOT NULL,
  `minimum_debit_extra3` decimal(10,2) NOT NULL,
  `maximum_debit_extra3` decimal(10,2) NOT NULL,
  `minimum_debit_extra4` decimal(10,2) NOT NULL,
  `maximum_debit_extra4` decimal(10,2) NOT NULL,
  `minimum_debit_extra5` decimal(10,2) NOT NULL,
  `maximum_debit_extra5` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_withdrawal`
--

INSERT INTO `settings_withdrawal` (`id`, `name`, `fee_fix`, `fee`, `terms`, `start_verify`, `standart_verify`, `expanded_verify`, `status`, `debit_base`, `debit_extra1`, `debit_extra2`, `debit_extra3`, `debit_extra4`, `debit_extra5`, `minimum_debit_base`, `maximum_debit_base`, `minimum_debit_extra1`, `maximum_debit_extra1`, `minimum_debit_extra2`, `maximum_debit_extra2`, `minimum_debit_extra3`, `maximum_debit_extra3`, `minimum_debit_extra4`, `maximum_debit_extra4`, `minimum_debit_extra5`, `maximum_debit_extra5`) VALUES
(1, 'PayPal', 2.00, 4, ': currency other than GBP would be charged additional 2.5% conversion fee: PROCESSING TIME: 1 BUSINESS DAY', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', 8.00, 400.00, 10.00, 500.00, 9.00, 450.00, 15.00, 700.00, 35.00, 2000.00, 40.00, 2000.00),
(2, 'OrioCard', 1.00, 2, ': currency other than GBP would be charged additional 2.5% conversion fee: PROCESSING TIME: 1 BUSINESS DAY', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', 8.00, 400.00, 10.00, 500.00, 9.00, 450.00, 15.00, 700.00, 35.00, 2000.00, 40.00, 2000.00),
(3, 'Bitcoin', 4.00, 8, ': currency other than GBP would be charged additional 2.5% conversion fee: PROCESSING TIME: 1 BUSINESS DAY', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', 8.00, 400.00, 10.00, 500.00, 9.00, 450.00, 15.00, 700.00, 35.00, 2000.00, 40.00, 2000.00),
(4, 'IBAN Transfer', 3.00, 6, ': currency other than GBP would be charged additional 2.5% conversion fee: PROCESSING TIME: 1 BUSINESS DAY', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', 10.00, 500.00, 8.00, 400.00, 9.00, 450.00, 15.00, 700.00, 35.00, 2000.00, 40.00, 2000.00),
(5, 'Skrill', 2.00, 4, ': currency other than GBP would be charged additional 2.5% conversion fee: PROCESSING TIME: 1 BUSINESS DAY', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', 10.00, 500.00, 8.00, 400.00, 9.00, 450.00, 15.00, 700.00, 35.00, 2000.00, 40.00, 2000.00),
(6, 'Payza', 1.63, 4, 'within 24 hours', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', 7.00, 400.00, 10.00, 500.00, 8.00, 450.00, 35.00, 700.00, 35.00, 2000.00, 1500.00, 2000.00),
(7, 'ADVCash', 2.00, 4, ': currency other than GBP would be charged additional 2.5% conversion fee: PROCESSING TIME: 1 BUSINESS DAY', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', 8.00, 400.00, 10.00, 500.00, 9.00, 450.00, 15.00, 700.00, 35.00, 2000.00, 40.00, 2000.00),
(8, 'PerfectMoney', 2.00, 4, ': currency other than GBP would be charged additional 2.5% conversion fee: PROCESSING TIME: 1 BUSINESS DAY', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', 8.00, 400.00, 10.00, 500.00, 9.00, 450.00, 15.00, 700.00, 35.00, 2000.00, 40.00, 2000.00);

-- --------------------------------------------------------

--
-- Table structure for table `sms_template`
--

CREATE TABLE `sms_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_template`
--

INSERT INTO `sms_template` (`id`, `title`, `message`, `status`) VALUES
(1, 'Confirm login', 'Your code [CODE] -  OrixPay', '1'),
(2, 'Signed in', 'Signed in to your account [IP_ADDRESS] - OrixPay', '0'),
(3, 'Create ticket', 'a new ticket has been created - OrixPay', '0'),
(4, 'New comment on ticket', 'comment received on your ticket [CODE_TICKET] - OrixPay', '0'),
(5, 'Ticket closed', 'Ticket [CODE_TICKET] was closed and unavailable for comment - OrixPay', '0'),
(6, 'Verification request verified', 'Your account has been successfully verified - OrixPay', '1'),
(7, 'Verification request rejected', 'we checked your documents and could not verify your account - OrixPay', '1'),
(8, 'Withdrawal pending', 'withdrawal, amount [SUM] [CUR], were deducted from your account - OrixPay', '0'),
(9, 'Completed currency exchange', 'You have successfully exchanged [SUM_1] [CUR_1] on [SUM_2] [CUR_2] - OrixPay', '0'),
(10, 'Open dispute', 'User [CLAIMANT] opened a dispute about the transaction ID [ID_TRANSACTION] - OrixPay', '0'),
(11, 'New comment for dispute', 'New comment was added for the dispute ID [ID_DISPUTE] - OrixPay', '0'),
(12, 'Claim opened', 'Your dispute ID [ID_DISPUTE] was transferred to the claim - OrixPay', '0'),
(13, 'Claim rejected', 'Claim ID [ID_DISPUTE] rejected - OrixPay', '0'),
(14, 'Claim satisfied', 'Claim ID [ID_DISPUTE] satisfied - OrixPay', '0'),
(15, 'Success money transfer', 'You have successfully transferred [SUM] [CUR] to the user [RECEIVER] - OrixPay', '0'),
(16, 'Withdrawal is confirmed', 'Withdrawal of funds in the amount of [SUM] [CUR] was confirmed - OrixPay', '1'),
(17, 'Withdrawal of funds denied', 'Withdrawal of funds in the amount of [SUM] [CUR] was rejected - OrixPay', '0'),
(18, 'Invoice pending', 'Received new invoice for the amount of [SUM] [CUR] - OrixPay', '0'),
(19, 'Invoice rejected', 'Invoice ID [ID_INVOICE] was rejected - OrixPay', '0'),
(20, 'Notice to receive', 'Notice to receive funds[SUM] [CUR] - OrixPay', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `user` varchar(100) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_comments`
--

CREATE TABLE `tickets_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_ticket` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `user` varchar(100) NOT NULL,
  `role` enum('0','1') NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` datetime NOT NULL,
  `type` enum('1','2','3','4','5') NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `currency` varchar(128) NOT NULL,
  `status` enum('1','2','3','4','5') NOT NULL,
  `sender` varchar(128) NOT NULL,
  `receiver` varchar(128) NOT NULL,
  `user_comment` text NOT NULL,
  `admin_comment` text NOT NULL,
  `label` varchar(128) NOT NULL,
  `ip_address` varchar(128) NOT NULL,
  `protect` varchar(100) NOT NULL DEFAULT 'none',
  `protect_attempts` int(10) NOT NULL,
  `merchant` int(10) NOT NULL DEFAULT '0',
  `payer_fee` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `time`, `type`, `sum`, `amount`, `fee`, `currency`, `status`, `sender`, `receiver`, `user_comment`, `admin_comment`, `label`, `ip_address`, `protect`, `protect_attempts`, `merchant`, `payer_fee`) VALUES
(885, '2020-05-14 00:23:10', '1', 11.72, 12.34, 0.62, 'debit_extra1', '2', 'PayPal', 'admin', '504061046', 'PayPal email payeer # buyer@paypalsandbox.com', 'ppd_5ebc815e0110c', 'none', 'none', 0, 0, '0'),
(886, '2020-05-14 01:02:54', '1', 137.75, 145.00, 7.25, 'debit_extra1', '2', 'PayPal', 'admin', '736896590', 'PayPal email payeer # buyer@paypalsandbox.com', 'ppd_5ebc8aae60aca', 'none', 'none', 0, 0, '0'),
(887, '2020-05-20 19:46:03', '1', 10.00, 10.00, 0.00, 'debit_extra1', '2', 'system', 'yestotrade', 'for testing purpose', '', 'adt_5ec57aeb3fe70', '92.98.29.81', 'none', 0, 0, '0'),
(888, '2020-05-21 07:03:35', '1', 6.00, 7.00, 1.00, 'debit_extra1', '2', 'PayPal', 'admin', '0SV195743K685173F', 'PayPal email payeer # paymitly@gmail.com', 'ppd_5ec619b708caf', 'none', 'none', 0, 0, '0'),
(889, '2020-05-21 15:01:55', '5', 5.00, 5.00, 0.00, 'debit_extra1', '2', 'yestotrade', 'admin', 'Testing payment', 'none', 'sci_5ec689d353bb5', '119.160.99.154', 'none', 0, 10, '0'),
(890, '2020-05-21 15:02:36', '5', 5.00, 5.00, 0.00, 'debit_extra1', '2', 'yestotrade', 'admin', 'Testing payment', 'none', 'sci_5ec689fccfa70', '119.160.99.154', 'none', 0, 10, '0'),
(891, '2020-05-21 15:05:42', '1', 40.00, 40.00, 0.00, 'debit_extra1', '2', 'system', 'yestotrade', '', '', 'adt_5ec68ab67272a', '119.160.99.154', 'none', 0, 0, '0'),
(892, '2020-05-22 00:01:48', '1', 4.00, 5.00, 1.00, 'debit_base', '2', 'PayPal', 'admin', '3AX915330F198603K', 'PayPal email payeer # y.sadik-buyer@insea.ac.ma', 'ppd_5ec7085cd00c0', 'none', 'none', 0, 0, '0'),
(893, '2020-05-23 00:02:52', '1', 4.00, 5.00, 1.00, 'debit_base', '2', 'PayPal', 'admin', '18X3594686701910N', 'PayPal email payeer # y.sadik-buyer@insea.ac.ma', 'ppd_5ec85a1c6f88a', 'none', 'none', 0, 0, '0'),
(894, '2020-05-23 00:03:01', '1', 4.00, 5.00, 1.00, 'debit_base', '2', 'PayPal', 'admin', '7XC08283G39365438', 'PayPal email payeer # y.sadik-buyer@insea.ac.ma', 'ppd_5ec85a257f963', 'none', 'none', 0, 0, '0'),
(895, '2020-05-27 21:34:07', '1', 3.50, 4.50, 1.00, 'debit_extra1', '5', 'PayPal', 'admin', '7SX35837TA3482337', 'PayPal email payeer # paymitly@gmail.com', 'ppd_5ececebfec9ec', 'none', 'none', 0, 0, '0'),
(896, '2020-05-27 21:40:37', '5', 4.50, 4.50, 0.00, 'debit_extra1', '2', 'yestotrade', 'admin', 'Testing payment', 'none', 'sci_5eced045acbc7', '92.96.236.155', 'none', 0, 10, '0'),
(897, '2020-05-27 21:41:54', '2', 32.00, 32.00, 0.00, 'debit_extra1', '2', 'system', 'yestotrade', '', '', 'adt_5eced092c0d44', '92.96.236.155', 'none', 0, 0, '0'),
(898, '2020-05-29 22:16:02', '1', 10.00, 10.00, 0.00, 'debit_extra1', '2', 'system', 'yestotrade', '', '', 'adt_5ed17b9284981', '119.160.102.155', 'none', 0, 0, '0'),
(899, '2020-05-29 22:18:39', '5', 5.00, 5.00, 0.00, 'debit_extra1', '2', 'yestotrade', 'admin', 'Testing payment', 'none', 'sci_5ed17c2fc4a06', '119.160.102.155', 'none', 0, 10, '0'),
(900, '2020-05-31 20:49:10', '5', 5.00, 5.00, 0.00, 'debit_extra1', '2', 'yestotrade', 'admin', 'Testing payment', 'none', 'sci_5ed40a36a3847', '41.214.232.106', 'none', 0, 10, '0'),
(901, '2020-05-31 21:05:35', '5', 4.00, 5.00, 1.00, 'debit_extra1', '5', 'PayPal', 'admin', '988223512P431901X', 'PayPal email payeer # y.sadik-buyer@insea.ac.ma', 'ppd_5ed40e0f572a1', 'none', 'none', 0, 0, '1'),
(902, '2020-06-03 23:01:24', '1', 5.00, 5.00, 0.00, 'debit_extra1', '2', 'system', 'yestotrade', '', '', 'adt_5ed81db469de9', '92.96.236.155', 'none', 0, 0, '0'),
(903, '2020-06-03 23:03:43', '5', 5.40, 4.00, 1.40, 'debit_extra1', '2', 'yestotrade', 'admin', 'Testing payment', 'none', 'sci_5ed81e3f60043', '92.96.236.155', 'none', 0, 10, '0'),
(904, '2020-06-03 23:05:18', '1', 10.00, 10.00, 0.00, 'debit_base', '2', 'system', 'yestotrade', '', '', 'adt_5ed81e9e4985f', '92.96.236.155', 'none', 0, 0, '0'),
(905, '2020-06-03 23:06:06', '1', 10.00, 10.00, 0.00, 'debit_extra1', '2', 'system', 'yestotrade', '', '', 'adt_5ed81eceb0ee4', '92.96.236.155', 'none', 0, 0, '0'),
(906, '2020-06-03 23:06:36', '5', 5.40, 4.00, 1.40, 'debit_extra1', '2', 'yestotrade', 'admin', 'Testing payment', 'none', 'sci_5ed81eec7a8fd', '92.96.236.155', 'none', 0, 10, '0'),
(907, '2020-06-03 23:10:22', '5', 5.40, 4.00, 1.40, 'debit_extra1', '2', 'yestotrade', 'admin', 'Testing payment', 'none', 'sci_5ed81fce0f3dc', '92.96.236.155', 'none', 0, 10, '0'),
(908, '2020-06-10 21:47:25', '5', 5.50, 6.50, 1.00, 'debit_extra1', '5', 'PayPal', 'admin', '2S070124TF287152T', 'PayPal email payeer # y.sadik-buyer@insea.ac.ma', 'ppd_5ee146dd13fdc', 'none', 'none', 0, 0, '0'),
(909, '2021-08-30 15:17:23', '2', 12.40, 10.00, 2.40, 'debit_base', '2', 'admin', 'system', 'PayPal', 'PayPal', 'wfs_612ce87301f64', '223.29.228.151', 'none', 0, 0, '0'),
(910, '2021-08-30 18:44:43', '1', 200.00, 200.00, 0.00, 'debit_base', '2', 'system', 'admin', '', '', 'adt_612d190b0fd15', '119.160.101.156', 'none', 0, 0, '0'),
(911, '2021-08-30 18:45:05', '2', 12.40, 10.00, 2.40, 'debit_base', '3', 'admin', 'system', 'PayPal', 'PayPal', 'wfs_612d1921298bd', '119.160.101.156', 'none', 0, 0, '0'),
(912, '2021-08-30 18:54:55', '2', 22.80, 20.00, 2.80, 'debit_base', '1', 'admin', 'system', 'PayPal', 'PayPal', 'wfs_612d1b6f594c1', '119.160.101.156', 'none', 0, 0, '0'),
(913, '2021-08-30 19:11:53', '4', 51.25, 50.00, 1.25, 'debit_base', '2', 'admin', 'system', '', '', 'exw_612d1f6959b87', '119.160.101.156', 'none', 0, 0, '0'),
(914, '2021-08-30 19:11:53', '1', 62.00, 62.00, 0.00, 'debit_extra1', '2', 'system', 'admin', 'Exchange transaction ID 913', '', 'exd_612d1f6959bc8', '119.160.101.156', 'none', 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(256) NOT NULL,
  `language` varchar(64) DEFAULT NULL,
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `validation_code` varchar(50) DEFAULT NULL COMMENT 'Temporary code for opt-in registration',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `verify_status` enum('0','1','2') NOT NULL,
  `paypal` varchar(100) NOT NULL,
  `card` varchar(50) NOT NULL,
  `bitcoin` varchar(100) NOT NULL,
  `skrill` varchar(100) NOT NULL,
  `payza` varchar(100) NOT NULL,
  `advcash` varchar(100) NOT NULL,
  `perfect_m` varchar(100) NOT NULL,
  `swift` text NOT NULL,
  `company` varchar(150) NOT NULL,
  `country` varchar(100) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address_1` text NOT NULL,
  `address_2` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `debit_base` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_extra1` decimal(10,2) DEFAULT '0.00',
  `debit_extra2` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_extra3` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_extra4` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_extra5` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fraud` enum('0','1') NOT NULL,
  `phone` varchar(50) NOT NULL,
  `method_login` enum('1','2','3','4') NOT NULL DEFAULT '1',
  `login_token` varchar(100) NOT NULL,
  `2fa_login` varchar(100) NOT NULL,
  `login_status` enum('1','2') NOT NULL,
  `ip_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `first_name`, `last_name`, `email`, `language`, `is_admin`, `status`, `deleted`, `validation_code`, `created`, `updated`, `verify_status`, `paypal`, `card`, `bitcoin`, `skrill`, `payza`, `advcash`, `perfect_m`, `swift`, `company`, `country`, `zip`, `city`, `address_1`, `address_2`, `time`, `debit_base`, `debit_extra1`, `debit_extra2`, `debit_extra3`, `debit_extra4`, `debit_extra5`, `fraud`, `phone`, `method_login`, `login_token`, `2fa_login`, `login_status`, `ip_address`) VALUES
(22, 'admin', '5437097a66d644928dba8ea886ba1372be1915a4a7149f63a8987a9c7c27507000eaa5c97eca3e4f54d9a695c170287a1cf639e6b9944005af36884682a34b9f', '1cacab88a35ee4cb51a9145cde2f70c76261b834b7ee21ba90e525607ad21e0426b22b1b6fa122f659df99a51c6530cb96c94dc82f4bb2fd94f33b1afe17838a', 'Admin', 'OrixPay', 'admin@orixpay.com', 'english', '1', '1', '0', NULL, '2018-04-11 21:48:55', '2020-05-09 14:07:39', '2', 'deposit@orixpay.com', '', '', 'admin@orixpay.com', '', '', '', '', 'OrixPay', 'United Kingdom', 'PE12PF', 'Peterborough', '341-C, Lincoln Road,', '', 0, 126.15, 302.85, 22.75, 0.00, 0.00, 0.01, '0', '+923336931614', '1', '91760614', '', '2', '119.158.18.31'),
(23, 'yghspk', 'f45c367d14b0927f322645616a3b52e8e48aa647b1c9c59bd55e155e680222daf92548c62c5d47e6e4fc315664ecad666697179827b406f6e0e130e18feeee33', '18144748c7ffce4cd423a8fd21e6276c00ecc0a765a79edd4e986234feb663053f2947323390395e37448734590425ec5afa5e22bf75faf03fec18b5e1d03c2b', 'Young Generation', 'Helping Society', 'president@yghspk.com', 'english', '0', '1', '0', NULL, '2018-04-18 14:46:09', '2018-05-04 21:43:44', '2', '', '', '', '', '', '', '', '', 'Young Generation Helping Society', 'Pakistan (‫پاکستان‬‎)', '54000', 'Lahore', '315-B, Faisal Town,', '', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', '+923334112220', '1', '57958247', '', '1', '182.191.184.9'),
(24, 'alfkay', 'cb85d2cfe1fb05b0c6ba87bcb5fc61f2a37d18b56d1856c314a681b028a5ad761791ffff3f87a4c34e8dc65d99397ac5ec8ec9bda479219bf6f1660ae5381106', '5ec5fa1eed505c5b57cfa7ec610bb613763a683968bc5135f063949374132c80e9e3af3a2a83d02da17b76ef346516f9b89de6d4df9686cb9c532b6f865d5b7b', 'Haseeb', 'Asmat', 'tech@alfkay.com', 'english', '0', '1', '0', '70310ef6b05a46ace43d4d8052bcc319a0c03ca0', '2018-04-21 14:36:29', '2019-01-10 16:11:59', '2', 'ahmadyar2001@yahoo.com', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0.35, 0.00, 0.00, 0.00, 0.00, 0.00, '0', '+923217699630', '1', '93395316', '', '2', '119.155.26.219'),
(25, 'abid.mian', '1b4f28397c082c306b88ca5ef416bad4a94ceaba13eb75c8704eee54ec95dae763bfe77f4f52ce083f378523a0689b0ef75a0ff4652e62f80164016ca99c4b31', 'f813e875285ecce4d43c8c618c8116890bb6a9e919af2bf9bde087e1039dfc21df76bfa22d420fa85387423a0bb6b1a1226106feb5f0d3c925b0ed5d1c733a12', 'Abid', 'Raza', 'abid.mian@gmail.com', 'english', '0', '1', '0', NULL, '2018-04-22 19:46:41', '2018-06-01 15:02:00', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', '', '1', '', '', '2', '103.255.4.97'),
(26, 'Jatoi', '16bcf14778d821b91852fc0c02bddf64bfa13da9410e3d9de8b259b8d241215fef0b4843599e150a0e03e9fde793850f2fe4ae2ffc0874dd5fdd9de2c1e8d049', '392144c15e9a6d895260c5fb6142a5cff62b06b689be943d339b4c1581ab5e8277de52b1dc41b1b4872c1d723481bcb70ee1bef56db1a09a19dfe31457e780b0', 'Zulqarnain', 'Jatoi', 'zulqarnain.jattoi@outlook.com', 'english', '0', '1', '0', '4276d3d46fdd192cbaa9cc800a0d394367e17ba2', '2018-05-03 12:02:03', '2018-06-19 09:48:50', '2', '', '', '', '', '', '', '', '', 'Jatoi ', 'Pakistan', '38000', 'Faisalabad', 'Faisalabad', 'Faisalabad', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', '+923007936886', '1', '', '', '2', '103.7.79.40'),
(27, 'zarnab.lashari', '82687bc9bb4b4bd8fa81b16d289bd386122688ca91bf86f1a47bed7d32ba2517d20d9c4c548b952edb578c2672dd6570779a43d972c9fb9755830d96e6bb5819', '112cc2c3924d86693a6ed03f6ec7c0d0c0fdf2d77fb27d81c00ca364a6602b2a1a231ce0b330c0b82e9cf149d5b767c3cdbea0c4e1486a1db274749af879726f', 'Zarnab', 'Khan', 'zarnab.khan77@gmail.com', 'english', '0', '0', '1', NULL, '2018-05-04 21:46:01', '2019-01-06 18:47:57', '2', '', '', '', '', '', '', '', '', 'Malhars Band', 'United Arab Emirates (‫الإمارات العربية المتحدة‬‎)', '00971', 'Abu Dhabi', 'Room#1302, Eldorado Building,', 'Zayed The First Street (Electra)', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, '0', '+971507747397', '1', '', '', '2', '94.59.12.90'),
(29, 'ioa.uae', 'e2c7983ef52e6cbbfe7a593333996b706325fd626358c7f76b3973afa64fd86b64f785e25c7181911e2f5303ece553ecd7cb2064449c8236a5d0ddfa1fa907ed', 'b4bd5a90f97f4b443b8cdd6154eab37fda9364d1f48d0a658796bca4e4e7d4f0b032604c4f4a7098bdef3ecb55563892af6f07792a21c53575530fa85e0df137', 'International To', 'Organize Accounts', 'ioaabudhabi@gmail.com', 'english', '0', '1', '0', NULL, '2018-05-10 09:39:30', '2018-05-10 09:39:30', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0', '', '1', '', '', '2', '83.110.88.190'),
(31, 'yestotrade', '0c1f80d1b988ff6f8efb2bcbcccd21cd8843fbbb545ed8de09c8cb37e38e6aa3f7430863cbf0f8b63d89a5dfbf6c7e32676d6e6b70fef801683323dae0680052', 'e575f502c69cdd3091914136ee35ce9e1be97256f3d1856fc7e4a8b701294d8dc1167807c69269a251aef727599b811f11b080427b585c0761cb7cbb017133d1', 'Yes to', 'Trade', 'info@yestotrade.org', 'english', '0', '1', '0', NULL, '2018-05-23 10:22:56', '2020-06-03 23:03:05', '2', '', '', '', '', '', '', '', '', 'Yes to Trade', 'Pakistan (‫پاکستان‬‎)', '54000', 'Lahore', '82-A, Main Ferozpur Road', '', 0, 10.00, 2.30, 0.00, 0.00, 0.00, 0.00, '0', '+923005552125', '1', '', '', '2', '119.152.145.128');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `id_card` text NOT NULL,
  `id_address` text NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `comment` text NOT NULL,
  `user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `date_creature` datetime NOT NULL,
  `creator` varchar(200) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `date_activation` datetime NOT NULL,
  `activator` varchar(200) NOT NULL,
  `status` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `currencys`
--
ALTER TABLE `currencys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disputes_comment`
--
ALTER TABLE `disputes_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `title` (`title`),
  ADD KEY `created` (`created`),
  ADD KEY `read` (`read`),
  ADD KEY `read_by` (`read_by`),
  ADD KEY `email` (`email`(78));

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants_categories`
--
ALTER TABLE `merchants_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_categories`
--
ALTER TABLE `merchant_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `settings_deposit`
--
ALTER TABLE `settings_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_withdrawal`
--
ALTER TABLE `settings_withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_template`
--
ALTER TABLE `sms_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets_comments`
--
ALTER TABLE `tickets_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencys`
--
ALTER TABLE `currencys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disputes_comment`
--
ALTER TABLE `disputes_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5346;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `merchants_categories`
--
ALTER TABLE `merchants_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `merchant_categories`
--
ALTER TABLE `merchant_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `settings_deposit`
--
ALTER TABLE `settings_deposit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings_withdrawal`
--
ALTER TABLE `settings_withdrawal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sms_template`
--
ALTER TABLE `sms_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets_comments`
--
ALTER TABLE `tickets_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=915;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
