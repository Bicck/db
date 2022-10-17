-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14-Out-2022 às 13:43
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `start influp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

DROP TABLE IF EXISTS `empresas`;
CREATE TABLE IF NOT EXISTS `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(220) COLLATE utf8_general_mysql500_ci NOT NULL,
  `email` varchar(220) COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` varchar(220) COLLATE utf8_general_mysql500_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `company`, `email`, `password`, `created`) VALUES
(1, 'Nike', 'nike@nike.com', '123', '2022-10-11 11:49:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `influenciadores`
--

DROP TABLE IF EXISTS `influenciadores`;
CREATE TABLE IF NOT EXISTS `influenciadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(220) COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` varchar(220) COLLATE utf8_general_mysql500_ci NOT NULL,
  `email` varchar(220) COLLATE utf8_general_mysql500_ci NOT NULL,
  `whats` varchar(220) COLLATE utf8_general_mysql500_ci NOT NULL,
  `userinsta` varchar(220) COLLATE utf8_general_mysql500_ci NOT NULL,
  `followinsta` varchar(220) COLLATE utf8_general_mysql500_ci NOT NULL,
  `created` datetime NOT NULL,
  `modifield` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `influenciadores`
--

INSERT INTO `influenciadores` (`id`, `name`, `password`, `email`, `whats`, `userinsta`, `followinsta`, `created`, `modifield`) VALUES
(1, 'Hugo Leonardo Poltronieri', 'H@123', 'hugo.nieri99@gmail.com', '15981402621', '@hugolp99', '1000', '2022-09-28 12:58:34', NULL),
(2, 'Neymar', 'N@123', 'neymar@gmail.com', '15981402623', '@neymarjr', '1000000', '2022-09-28 15:49:42', NULL),
(3, 'Bruna Marquezine', 'B@123', 'bruna@gmail.com', '11981402625', '@bruna', '230000', '2022-09-28 15:50:29', NULL),
(4, 'Antonio Bandeiras', 'A@123', 'antonio@gmail.com', '11981662625', '@bandeiras', '36000', '2022-09-28 15:57:55', NULL),
(5, 'Chuck Norris', 'C@123', 'chuck@gmail.com', '11981699625', '@chuck', '665140', '2022-09-28 15:58:51', NULL),
(6, 'Leana Lovings', 'L@123', 'leana@gmail.com', '11980002763', '@lovings', '594112', '2022-09-28 16:41:53', NULL),
(7, 'Luva', 'dawdawdwa', 'pedreiro@gmail', '156669854', '@luva', '3000000', '2022-09-28 17:08:12', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
