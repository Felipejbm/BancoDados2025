-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Set-2025 às 14:05
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `veterinaria`
--
CREATE DATABASE IF NOT EXISTS `veterinaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `veterinaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `codAnimal` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tipoAnimal` varchar(255) DEFAULT NULL,
  `racaoAnimal` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`codAnimal`, `nome`, `tipoAnimal`, `racaoAnimal`, `cidade`) VALUES
('ANI123', 'Toto Peri', 'Cachorro', 'Boxer', 'Ribeirão Pires'),
('ANI124', 'Mimi', 'Gato', 'Vira-Lata', 'Mauá'),
('ANI125', 'Merlin', 'Peixe', 'Tetra', 'Santo André');

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

CREATE TABLE `consulta` (
  `codConsulta` varchar(255) NOT NULL,
  `dataConsulta` date DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `diagnostico` varchar(255) DEFAULT NULL,
  `codAnimal` varchar(255) DEFAULT NULL,
  `codVeterinario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `consulta`
--

INSERT INTO `consulta` (`codConsulta`, `dataConsulta`, `valor`, `diagnostico`, `codAnimal`, `codVeterinario`) VALUES
('CA1', '2016-05-08', 120.00, 'Hipotermia', 'ANI125', 2),
('CB2', '2016-05-05', 150.00, 'Pneumonia', 'ANI124', 3),
('CC3', '2016-06-07', 200.00, 'Internação', 'ANI124', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veterinario`
--

CREATE TABLE `veterinario` (
  `codVeterinario` int(11) NOT NULL,
  `crmv` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rg` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `veterinario`
--

INSERT INTO `veterinario` (`codVeterinario`, `crmv`, `nome`, `telefone`, `email`, `rg`) VALUES
(1, '13444', 'Maria Fernanda', '5555-9999', 'maria.fernanda@gmail.com', '22.765.987-x'),
(2, '28765', 'Pedro Henrique', '7777-8888', 'pedro.henrique@gmail.com', '11.123.123-x'),
(3, '35432', 'Joelma Assis', '9999-4444', 'joelma.assis@yahoo.com.br', '33.456.456-x');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`codAnimal`);

--
-- Índices para tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`codConsulta`),
  ADD KEY `codAnimal` (`codAnimal`),
  ADD KEY `codVeterinario` (`codVeterinario`);

--
-- Índices para tabela `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`codVeterinario`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`codAnimal`) REFERENCES `animal` (`codAnimal`),
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`codVeterinario`) REFERENCES `veterinario` (`codVeterinario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
