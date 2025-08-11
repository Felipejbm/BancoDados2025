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
-- Banco de dados: `lavarapido`
--
CREATE DATABASE IF NOT EXISTS `lavarapido` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lavarapido`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codOS` int(11) NOT NULL,
  `totalGeral` decimal(10,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `codCarro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`codOS`, `totalGeral`, `data`, `codCarro`) VALUES
(1, 80.00, '2025-07-01', 1),
(2, 150.00, '2025-07-02', 2),
(3, 200.00, '2025-07-03', 3),
(4, 90.00, '2025-07-04', 4),
(5, 300.00, '2025-07-05', 5),
(6, 50.00, '2025-07-06', 6),
(7, 100.00, '2025-07-07', 7),
(8, 130.00, '2025-07-08', 8),
(9, 250.00, '2025-07-09', 9),
(10, 70.00, '2025-07-10', 10),
(11, 120.00, '2025-07-11', 11),
(12, 180.00, '2025-07-12', 12),
(13, 300.00, '2025-07-13', 13),
(14, 110.00, '2025-07-14', 14),
(15, 60.00, '2025-07-15', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento_servico`
--

CREATE TABLE `atendimento_servico` (
  `codOS` int(11) NOT NULL,
  `codServico` int(11) NOT NULL,
  `qtde` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atendimento_servico`
--

INSERT INTO `atendimento_servico` (`codOS`, `codServico`, `qtde`) VALUES
(1, 1, 1),
(1, 3, 1),
(2, 2, 1),
(2, 4, 1),
(3, 5, 1),
(3, 6, 1),
(4, 1, 1),
(5, 7, 1),
(5, 8, 1),
(6, 1, 1),
(7, 9, 1),
(8, 10, 1),
(9, 11, 1),
(10, 12, 1),
(11, 13, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro`
--

CREATE TABLE `carro` (
  `codCarro` int(11) NOT NULL,
  `ano` int(11) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL,
  `codModelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`codCarro`, `ano`, `codCliente`, `codModelo`) VALUES
(1, 2015, 1, 1),
(2, 2018, 2, 2),
(3, 2020, 3, 3),
(4, 2014, 4, 4),
(5, 2022, 5, 5),
(6, 2017, 6, 6),
(7, 2019, 7, 7),
(8, 2016, 8, 8),
(9, 2021, 9, 9),
(10, 2013, 10, 10),
(11, 2012, 11, 11),
(12, 2015, 12, 12),
(13, 2018, 13, 13),
(14, 2020, 14, 14),
(15, 2019, 15, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `codEndereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codCliente`, `nome`, `dataNascimento`, `telefone`, `email`, `codEndereco`) VALUES
(1, 'João Silva', '1985-05-10', '11988887777', 'joao.silva@email.com', 1),
(2, 'Maria Oliveira', '1990-03-15', '21977776666', 'maria.oliveira@email.com', 2),
(3, 'Carlos Pereira', '1982-07-22', '31966665555', 'carlos.pereira@email.com', 3),
(4, 'Ana Souza', '1995-12-01', '41955554444', 'ana.souza@email.com', 4),
(5, 'Pedro Santos', '1988-04-18', '81944443333', 'pedro.santos@email.com', 5),
(6, 'Fernanda Lima', '1992-09-09', '51933332222', 'fernanda.lima@email.com', 6),
(7, 'Bruno Almeida', '1986-10-30', '71922221111', 'bruno.almeida@email.com', 7),
(8, 'Juliana Costa', '1991-06-25', '31911112222', 'juliana.costa@email.com', 8),
(9, 'Ricardo Mendes', '1984-02-14', '92999998888', 'ricardo.mendes@email.com', 9),
(10, 'Patrícia Araújo', '1993-08-19', '85988887777', 'patricia.araujo@email.com', 10),
(11, 'Eduardo Martins', '1987-11-03', '31977776666', 'eduardo.martins@email.com', 11),
(12, 'Camila Rocha', '1994-05-07', '51966665555', 'camila.rocha@email.com', 12),
(13, 'Felipe Ribeiro', '1989-03-29', '86955554444', 'felipe.ribeiro@email.com', 13),
(14, 'Larissa Ferreira', '1996-01-12', '84944443333', 'larissa.ferreira@email.com', 14),
(15, 'Marcelo Gomes', '1983-07-16', '11933332222', 'marcelo.gomes@email.com', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `codEndereco` int(11) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `num` varchar(10) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`codEndereco`, `rua`, `num`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Rua das Flores', '123', 'Centro', 'São Paulo', 'SP', '01001-000'),
(2, 'Av. Paulista', '1500', 'Bela Vista', 'São Paulo', 'SP', '01310-200'),
(3, 'Rua das Acácias', '45', 'Jardim América', 'Rio de Janeiro', 'RJ', '22220-030'),
(4, 'Av. Atlântica', '200', 'Copacabana', 'Rio de Janeiro', 'RJ', '22010-000'),
(5, 'Rua XV de Novembro', '300', 'Centro', 'Curitiba', 'PR', '80020-310'),
(6, 'Rua Independência', '50', 'Centro', 'Porto Alegre', 'RS', '90035-070'),
(7, 'Av. Brasil', '2500', 'Boa Vista', 'Recife', 'PE', '50070-000'),
(8, 'Rua Goiás', '18', 'Savassi', 'Belo Horizonte', 'MG', '30140-080'),
(9, 'Av. Amazonas', '900', 'Centro', 'Manaus', 'AM', '69010-040'),
(10, 'Rua Santos Dumont', '700', 'Centro', 'Fortaleza', 'CE', '60060-000'),
(11, 'Rua Bahia', '150', 'Funcionários', 'Belo Horizonte', 'MG', '30150-330'),
(12, 'Av. Ipiranga', '600', 'Centro Histórico', 'Porto Alegre', 'RS', '90035-160'),
(13, 'Rua Piauí', '420', 'Centro', 'Teresina', 'PI', '64000-030'),
(14, 'Av. Rui Barbosa', '88', 'Centro', 'Natal', 'RN', '59025-000'),
(15, 'Rua da Liberdade', '555', 'Liberdade', 'São Paulo', 'SP', '01503-000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `codMarca` int(11) NOT NULL,
  `marca` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`codMarca`, `marca`) VALUES
(1, 'Volkswagen'),
(2, 'Fiat'),
(3, 'Chevrolet'),
(4, 'Ford'),
(5, 'Toyota'),
(6, 'Honda'),
(7, 'Hyundai'),
(8, 'Renault'),
(9, 'Nissan'),
(10, 'Peugeot'),
(11, 'Citroën'),
(12, 'Kia'),
(13, 'Mitsubishi'),
(14, 'Jeep'),
(15, 'BMW');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `codMarca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`, `codMarca`) VALUES
(1, 'Gol', 1),
(2, 'Uno', 2),
(3, 'Onix', 3),
(4, 'Ka', 4),
(5, 'Corolla', 5),
(6, 'Civic', 6),
(7, 'HB20', 7),
(8, 'Sandero', 8),
(9, 'Versa', 9),
(10, '208', 10),
(11, 'C3', 11),
(12, 'Sportage', 12),
(13, 'Lancer', 13),
(14, 'Compass', 14),
(15, '320i', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `codServico` int(11) NOT NULL,
  `servico` varchar(255) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`codServico`, `servico`, `valor`) VALUES
(1, 'Lavagem Simples', 30.00),
(2, 'Lavagem Completa', 50.00),
(3, 'Higienização Interna', 80.00),
(4, 'Polimento', 120.00),
(5, 'Enceramento', 70.00),
(6, 'Cristalização de Pintura', 200.00),
(7, 'Lavagem do Motor', 60.00),
(8, 'Hidratação de Bancos', 100.00),
(9, 'Descontaminação de Pintura', 150.00),
(10, 'Revitalização de Faróis', 90.00),
(11, 'Aspiração Interna', 40.00),
(12, 'Lavagem Técnica', 110.00),
(13, 'Aplicação de Película', 250.00),
(14, 'Remoção de Chuva Ácida', 130.00),
(15, 'Proteção Cerâmica', 300.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codOS`),
  ADD KEY `codCarro` (`codCarro`);

--
-- Índices para tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD PRIMARY KEY (`codOS`,`codServico`),
  ADD KEY `codServico` (`codServico`);

--
-- Índices para tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codCarro`),
  ADD KEY `codCliente` (`codCliente`),
  ADD KEY `codModelo` (`codModelo`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`),
  ADD KEY `codEndereco` (`codEndereco`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`codEndereco`);

--
-- Índices para tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codMarca`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`),
  ADD KEY `codMarca` (`codMarca`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codServico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codCarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `codEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `codMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codServico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`codCarro`) REFERENCES `carro` (`codCarro`);

--
-- Limitadores para a tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD CONSTRAINT `atendimento_servico_ibfk_1` FOREIGN KEY (`codOS`) REFERENCES `atendimento` (`codOS`),
  ADD CONSTRAINT `atendimento_servico_ibfk_2` FOREIGN KEY (`codServico`) REFERENCES `servico` (`codServico`);

--
-- Limitadores para a tabela `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`),
  ADD CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`codEndereco`) REFERENCES `endereco` (`codEndereco`);

--
-- Limitadores para a tabela `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`codMarca`) REFERENCES `marca` (`codMarca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
