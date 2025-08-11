-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Ago-2025 às 13:17
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
-- Banco de dados: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `arearestaurante`
--

CREATE TABLE `arearestaurante` (
  `codArea` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `arearestaurante`
--

INSERT INTO `arearestaurante` (`codArea`, `descricao`) VALUES
(1, 'Salão Principal'),
(2, 'Varanda Externa'),
(3, 'Área VIP'),
(4, 'Mezanino'),
(5, 'Área Infantil'),
(6, 'Salão Leste'),
(7, 'Salão Oeste'),
(8, 'Deck Externo'),
(9, 'Salão de Eventos'),
(10, 'Área Lounge'),
(11, 'Área de Churrasco'),
(12, 'Terraço Panorâmico'),
(13, 'Sala Privativa 1'),
(14, 'Sala Privativa 2'),
(15, 'Área Pet Friendly');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codAtendimento` int(11) NOT NULL,
  `horarioEntrada` time DEFAULT NULL,
  `horarioSaida` time DEFAULT NULL,
  `qtdPessoas` int(11) DEFAULT NULL,
  `codMesa` int(11) DEFAULT NULL,
  `codGarcom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`codAtendimento`, `horarioEntrada`, `horarioSaida`, `qtdPessoas`, `codMesa`, `codGarcom`) VALUES
(1, '12:00:00', '13:30:00', 4, 1, 1),
(2, '12:15:00', '13:45:00', 2, 2, 2),
(3, '13:00:00', '14:20:00', 3, 3, 3),
(4, '13:10:00', '14:00:00', 5, 4, 4),
(5, '14:00:00', '15:15:00', 6, 5, 5),
(6, '14:30:00', '15:50:00', 4, 6, 6),
(7, '15:00:00', '16:20:00', 2, 7, 7),
(8, '15:10:00', '16:10:00', 3, 8, 8),
(9, '16:00:00', '17:10:00', 4, 9, 9),
(10, '16:15:00', '17:25:00', 2, 10, 10),
(11, '17:00:00', '18:15:00', 5, 11, 11),
(12, '17:30:00', '18:50:00', 3, 12, 12),
(13, '18:00:00', '19:00:00', 4, 13, 13),
(14, '18:15:00', '19:20:00', 2, 14, 14),
(15, '19:00:00', '20:10:00', 6, 15, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `codConta` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `valorPorPessoa` decimal(10,2) DEFAULT NULL,
  `valorTotal` decimal(10,2) DEFAULT NULL,
  `codAtendimento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`codConta`, `data`, `valorPorPessoa`, `valorTotal`, `codAtendimento`) VALUES
(1, '2025-08-01', 25.00, 100.00, 1),
(2, '2025-08-01', 30.00, 60.00, 2),
(3, '2025-08-01', 28.00, 84.00, 3),
(4, '2025-08-01', 35.00, 175.00, 4),
(5, '2025-08-02', 32.00, 192.00, 5),
(6, '2025-08-02', 29.00, 116.00, 6),
(7, '2025-08-02', 24.00, 48.00, 7),
(8, '2025-08-02', 27.00, 81.00, 8),
(9, '2025-08-03', 26.00, 104.00, 9),
(10, '2025-08-03', 22.00, 44.00, 10),
(11, '2025-08-03', 31.00, 155.00, 11),
(12, '2025-08-03', 28.00, 84.00, 12),
(13, '2025-08-04', 30.00, 120.00, 13),
(14, '2025-08-04', 25.00, 50.00, 14),
(15, '2025-08-04', 35.00, 210.00, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `garcom`
--

CREATE TABLE `garcom` (
  `codGarcom` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `garcom`
--

INSERT INTO `garcom` (`codGarcom`, `nome`) VALUES
(1, 'João Silva'),
(2, 'Maria Oliveira'),
(3, 'Carlos Santos'),
(4, 'Ana Pereira'),
(5, 'Pedro Lima'),
(6, 'Fernanda Alves'),
(7, 'Lucas Rocha'),
(8, 'Juliana Souza'),
(9, 'Marcos Ribeiro'),
(10, 'Patrícia Costa'),
(11, 'Rafael Mendes'),
(12, 'Beatriz Moreira'),
(13, 'Diego Almeida'),
(14, 'Camila Araújo'),
(15, 'Rodrigo Barbosa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

CREATE TABLE `item` (
  `codItem` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `item`
--

INSERT INTO `item` (`codItem`, `nome`, `preco`) VALUES
(1, 'Pizza Margherita', 35.00),
(2, 'Pizza Calabresa', 38.50),
(3, 'Pizza Quatro Queijos', 42.00),
(4, 'Pizza Portuguesa', 40.00),
(5, 'Hambúrguer Clássico', 25.00),
(6, 'Hambúrguer Duplo', 32.00),
(7, 'Hot Dog Simples', 15.00),
(8, 'Hot Dog Especial', 20.00),
(9, 'Salada Caesar', 22.00),
(10, 'Salada Tropical', 24.00),
(11, 'Sopa de Legumes', 18.00),
(12, 'Sopa de Cebola', 19.50),
(13, 'Macarrão à Bolonhesa', 28.00),
(14, 'Macarrão ao Alho e Óleo', 26.00),
(15, 'Macarrão à Carbonara', 30.00),
(16, 'Bife à Parmegiana', 38.00),
(17, 'Filé de Frango Grelhado', 27.50),
(18, 'Peixe Frito', 33.00),
(19, 'Porção de Batata Frita', 18.00),
(20, 'Porção de Polenta', 20.00),
(21, 'Suco de Laranja', 8.00),
(22, 'Refrigerante Lata', 6.00),
(23, 'Água Mineral', 4.00),
(24, 'Cerveja Long Neck', 10.00),
(25, 'Caipirinha', 15.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itensconta`
--

CREATE TABLE `itensconta` (
  `codItensConta` int(11) NOT NULL,
  `codConta` int(11) DEFAULT NULL,
  `codItem` int(11) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `totalItem` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `itensconta`
--

INSERT INTO `itensconta` (`codItensConta`, `codConta`, `codItem`, `qtde`, `totalItem`) VALUES
(1, 1, 1, 2, 70.00),
(2, 1, 19, 1, 18.00),
(3, 2, 2, 1, 38.50),
(4, 2, 21, 2, 16.00),
(5, 3, 5, 2, 50.00),
(6, 3, 22, 1, 6.00),
(7, 4, 16, 3, 114.00),
(8, 4, 25, 2, 30.00),
(9, 5, 4, 4, 160.00),
(10, 6, 6, 3, 96.00),
(11, 7, 7, 1, 15.00),
(12, 8, 13, 2, 56.00),
(13, 9, 14, 2, 52.00),
(14, 10, 18, 1, 33.00),
(15, 11, 3, 2, 84.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesa`
--

CREATE TABLE `mesa` (
  `codMesa` int(11) NOT NULL,
  `comporta` int(11) DEFAULT NULL,
  `codArea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `mesa`
--

INSERT INTO `mesa` (`codMesa`, `comporta`, `codArea`) VALUES
(1, 4, 1),
(2, 6, 1),
(3, 2, 2),
(4, 4, 2),
(5, 8, 3),
(6, 6, 4),
(7, 4, 5),
(8, 2, 6),
(9, 6, 7),
(10, 8, 8),
(11, 4, 9),
(12, 6, 10),
(13, 2, 11),
(14, 8, 12),
(15, 6, 13);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  ADD PRIMARY KEY (`codArea`);

--
-- Índices para tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codAtendimento`),
  ADD KEY `codMesa` (`codMesa`),
  ADD KEY `codGarcom` (`codGarcom`);

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`codConta`),
  ADD KEY `codAtendimento` (`codAtendimento`);

--
-- Índices para tabela `garcom`
--
ALTER TABLE `garcom`
  ADD PRIMARY KEY (`codGarcom`);

--
-- Índices para tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`codItem`);

--
-- Índices para tabela `itensconta`
--
ALTER TABLE `itensconta`
  ADD PRIMARY KEY (`codItensConta`),
  ADD KEY `codConta` (`codConta`),
  ADD KEY `codItem` (`codItem`);

--
-- Índices para tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`codMesa`),
  ADD KEY `codArea` (`codArea`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  MODIFY `codArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codAtendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `codConta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `garcom`
--
ALTER TABLE `garcom`
  MODIFY `codGarcom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `codItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `itensconta`
--
ALTER TABLE `itensconta`
  MODIFY `codItensConta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `mesa`
--
ALTER TABLE `mesa`
  MODIFY `codMesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`codMesa`) REFERENCES `mesa` (`codMesa`),
  ADD CONSTRAINT `atendimento_ibfk_2` FOREIGN KEY (`codGarcom`) REFERENCES `garcom` (`codGarcom`);

--
-- Limitadores para a tabela `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`codAtendimento`) REFERENCES `atendimento` (`codAtendimento`);

--
-- Limitadores para a tabela `itensconta`
--
ALTER TABLE `itensconta`
  ADD CONSTRAINT `itensconta_ibfk_1` FOREIGN KEY (`codConta`) REFERENCES `conta` (`codConta`),
  ADD CONSTRAINT `itensconta_ibfk_2` FOREIGN KEY (`codItem`) REFERENCES `item` (`codItem`);

--
-- Limitadores para a tabela `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`codArea`) REFERENCES `arearestaurante` (`codArea`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
