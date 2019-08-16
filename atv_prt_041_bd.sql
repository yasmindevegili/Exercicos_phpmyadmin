-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 16-Ago-2019 às 11:21
-- Versão do servidor: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.14-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atv_prt_041_bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipes`
--

CREATE TABLE `equipes` (
  `num_equipe` int(11) NOT NULL,
  `nome_equipe` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `equipes`
--

INSERT INTO `equipes` (`num_equipe`, `nome_equipe`) VALUES
(10, 'azul'),
(23, 'amarelo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola`
--

CREATE TABLE `escola` (
  `nome_escola` varchar(30) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `escola`
--

INSERT INTO `escola` (`nome_escola`, `cidade`, `estado`) VALUES
('Paul Harris', 'Joinville', 'SC'),
('Virginia Soares', 'Curitiba', 'PR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

CREATE TABLE `membros` (
  `email` varchar(25) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `escola` varchar(40) NOT NULL,
  `funcao` varchar(1000) NOT NULL,
  `num_equipe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `membros`
--

INSERT INTO `membros` (`email`, `nome`, `escola`, `funcao`, `num_equipe`) VALUES
('carol@gmail.com', 'Carol Pontes', 'Virginia Soares', 'Estudante', 10),
('yasmin@gmail.com', 'Yasmin Devegili', 'Paul Harris', 'Estudante', 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`num_equipe`);

--
-- Indexes for table `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `num_equipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
