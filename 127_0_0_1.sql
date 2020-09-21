-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Set-2020 às 20:03
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beyondwords`
--
CREATE DATABASE IF NOT EXISTS `beyondwords` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `beyondwords`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `ID_livro` int(7) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `dt_lancamento` date NOT NULL,
  `genero` varchar(30) NOT NULL,
  `autor` varchar(70) NOT NULL,
  `foto` varchar(73) NOT NULL,
  `valor_unitario` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`ID_livro`, `nome`, `dt_lancamento`, `genero`, `autor`, `foto`, `valor_unitario`) VALUES
(1, 'Percy Jackson e o Ladrão de Raios', '2003-06-17', 'Ação e Ficção', 'Rick Riordan', '3zYQBTGcaD.jpg', 17.50),
(2, 'Jogos Vorazes - vol. 1', '2019-11-03', 'Ação e Aventura', 'Suzanne Collins', 'JR_NdjVqYs1t6C@DfsIW7dEkrWkS-iWb7gkePXiSU-.jpg', 27.99),
(3, 'A culpa é das estrelas', '2009-10-12', 'Drama', 'John Green', 'L@ObjmDfRv7IXS8BqRFgZDaOaPx!V0K8Qc.jpg', 21.00),
(4, 'Os instrumentos mortais - Cidade dos Ossos', '2019-11-01', 'Ficção', 'Cassandra Clare', 'hCKxgGpVaVgb!xQdbrkH8DRT@lu9lqLfbv.jpg', 24.99),
(5, 'Os instrumentos mortais - Cidade das cinzas', '2012-12-12', 'Ficção', 'Cassandra Clare', 'yiIrKujmj_WSdEXXHzgDFwWrXPcqy2p9tC4aWo.jpg', 27.00),
(6, 'Percy Jackson e o mar de monstros', '2019-11-03', 'Ficção e aventura', 'Rick Riordan', 'whnCOqZFWBkuGtW1oInNm0.jpg', 18.99),
(7, 'Percy Jackson e a maldição do titã', '2019-11-05', 'Aventura e Ficção', 'Rick Riordan', '!-e9L8uJTeku_QtpN.jpg', 23.00),
(8, 'As Crônicas de Nárnia', '2019-11-03', 'Ficção e Aventura', 'C. S. Lewis', 'FBj2YLSuZcXsFO6qiMKa7ToKxDbeOmWUYDcZ!rfmWWiGQupMs.jpg', 26.91),
(9, 'Rangers: A ordem dos arqueiros - Ruínas de Gorlan ', '2019-11-10', 'Ação e Aventura', 'John Flanagan', 'vD6WOqvr_Cf6t1DJkGyxS9G64ypx4lQsn2VMNrZ8ZhW.jpg', 24.90),
(10, 'Harry Potter e a pedra filosofal', '2019-11-01', 'Ficção e Aventura', 'J.K. Rowling', 'KKX9bsJqRIv!fTy_KRx71bv.jpg', 14.99),
(11, 'Good Omens', '2019-07-15', 'Ficção e comédia', 'Neil Gaiman e Terry Pratchett', '-oC3f76j1.jpg', 18.40),
(12, 'Jogos vorazes - vol. 2 ', '2019-11-04', 'Ação e aventura', 'Suzanne Collins', 'h!t4QbBQ7tJyZ0a.jpg', 26.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro_pedido`
--

CREATE TABLE `livro_pedido` (
  `valor_total` double(10,2) NOT NULL,
  `ID_livro` int(7) NOT NULL,
  `ID_pedido` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `ID_pedido` int(7) NOT NULL,
  `quant_livro` int(10) NOT NULL,
  `ID_livro` int(7) NOT NULL,
  `preco` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `ID_usuario` int(7) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `nm_usuario` varchar(20) NOT NULL,
  `senha` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`ID_usuario`, `nome`, `sobrenome`, `dt_nascimento`, `nm_usuario`, `senha`) VALUES
(10, 'Thiago Campos', 'De Souza', '2001-02-17', 'thiaguinho', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(11, 'João Vitor', 'Belarmino Dias Silva', '2003-06-17', 'jojo', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(12, 'teste', 'teste', '1997-11-12', 'teste', '2e6f9b0d5885b6010f9167787445617f553a735f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`ID_livro`);

--
-- Indexes for table `livro_pedido`
--
ALTER TABLE `livro_pedido`
  ADD KEY `fk_id_livro` (`ID_livro`),
  ADD KEY `fk_id_pedido` (`ID_pedido`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID_pedido`),
  ADD KEY `fk_id_livros` (`ID_livro`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `ID_livro` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ID_pedido` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_usuario` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `livro_pedido`
--
ALTER TABLE `livro_pedido`
  ADD CONSTRAINT `fk_id_livro` FOREIGN KEY (`ID_livro`) REFERENCES `livro` (`ID_livro`),
  ADD CONSTRAINT `fk_id_pedido` FOREIGN KEY (`ID_pedido`) REFERENCES `pedido` (`ID_pedido`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_id_livros` FOREIGN KEY (`ID_livro`) REFERENCES `livro` (`ID_livro`);
--
-- Database: `curso`
--
CREATE DATABASE IF NOT EXISTS `curso` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `curso`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_cidades`
--

CREATE TABLE `app_cidades` (
  `cidade_id` int(11) NOT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `cidade_nome` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `cidade_uf` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_cidades`
--

INSERT INTO `app_cidades` (`cidade_id`, `estado_id`, `cidade_nome`, `cidade_uf`) VALUES
(1, 9, 'Abadia de Goiás', 'GO'),
(2, 13, 'Abadia dos Dourados', 'MG'),
(3, 9, 'Abadiânia', 'GO'),
(4, 13, 'Abaeté', 'MG'),
(5, 14, 'Abaetetuba', 'PA'),
(6, 6, 'Abaiara', 'CE'),
(7, 5, 'Abaíra', 'BA'),
(8, 5, 'Abaré', 'BA'),
(9, 16, 'Abatiá', 'PR'),
(10, 24, 'Abdon Batista', 'SC'),
(11, 14, 'Abel Figueiredo', 'PA'),
(12, 24, 'Abelardo Luz', 'SC'),
(13, 13, 'Abre Campo', 'MG'),
(14, 17, 'Abreu e Lima', 'PE'),
(15, 27, 'Abreulândia', 'TO'),
(16, 13, 'Acaiaca', 'MG'),
(17, 10, 'Açailândia', 'MA'),
(18, 5, 'Acajutiba', 'BA'),
(19, 14, 'Acará', 'PA'),
(20, 6, 'Acarape', 'CE'),
(21, 6, 'Acaraú', 'CE'),
(22, 20, 'Acari', 'RN'),
(23, 18, 'Acauã', 'PI'),
(24, 21, 'Aceguá', 'RS'),
(25, 6, 'Acopiara', 'CE'),
(26, 11, 'Acorizal', 'MT'),
(27, 1, 'Acrelândia', 'AC'),
(28, 9, 'Acreúna', 'GO'),
(29, 20, 'Açu', 'RN'),
(30, 13, 'Açucena', 'MG'),
(31, 25, 'Adamantina', 'SP'),
(32, 9, 'Adelândia', 'GO'),
(33, 25, 'Adolfo', 'SP'),
(34, 16, 'Adrianópolis', 'PR'),
(35, 5, 'Adustina', 'BA'),
(36, 17, 'Afogados da Ingazeira', 'PE'),
(37, 20, 'Afonso Bezerra', 'RN'),
(38, 8, 'Afonso Cláudio', 'ES'),
(39, 10, 'Afonso Cunha', 'MA'),
(40, 17, 'Afrânio', 'PE'),
(41, 14, 'Afuá', 'PA'),
(42, 17, 'Agrestina', 'PE'),
(43, 18, 'Agricolândia', 'PI'),
(44, 24, 'Agrolândia', 'SC'),
(45, 24, 'Agronômica', 'SC'),
(46, 14, 'Água Azul do Norte', 'PA'),
(47, 13, 'Água Boa', 'MG'),
(48, 11, 'Água Boa', 'MT'),
(49, 2, 'Água Branca', 'AL'),
(50, 15, 'Água Branca', 'PB'),
(51, 18, 'Água Branca', 'PI'),
(52, 12, 'Água Clara', 'MS'),
(53, 13, 'Água Comprida', 'MG'),
(54, 24, 'Água Doce', 'SC'),
(55, 10, 'Água Doce do Maranhão', 'MA'),
(56, 8, 'Água Doce do Norte', 'ES'),
(57, 5, 'Água Fria', 'BA'),
(58, 9, 'Água Fria de Goiás', 'GO'),
(59, 9, 'Água Limpa', 'GO'),
(60, 20, 'Água Nova', 'RN'),
(61, 17, 'Água Preta', 'PE'),
(62, 21, 'Água Santa', 'RS'),
(63, 25, 'Aguaí', 'SP'),
(64, 13, 'Aguanil', 'MG'),
(65, 17, 'Águas Belas', 'PE'),
(66, 25, 'Águas da Prata', 'SP'),
(67, 24, 'Águas de Chapecó', 'SC'),
(68, 25, 'Águas de Lindóia', 'SP'),
(69, 25, 'Águas de Santa Bárbara', 'SP'),
(70, 25, 'Águas de São Pedro', 'SP'),
(71, 13, 'Águas Formosas', 'MG'),
(72, 24, 'Águas Frias', 'SC'),
(73, 9, 'Águas Lindas de Goiás', 'GO'),
(74, 24, 'Águas Mornas', 'SC'),
(75, 13, 'Águas Vermelhas', 'MG'),
(76, 21, 'Agudo', 'RS'),
(77, 25, 'Agudos', 'SP'),
(78, 16, 'Agudos do Sul', 'PR'),
(79, 8, 'Águia Branca', 'ES'),
(80, 15, 'Aguiar', 'PB'),
(81, 27, 'Aguiarnópolis', 'TO'),
(82, 13, 'Aimorés', 'MG'),
(83, 5, 'Aiquara', 'BA'),
(84, 6, 'Aiuaba', 'CE'),
(85, 13, 'Aiuruoca', 'MG'),
(86, 21, 'Ajuricaba', 'RS'),
(87, 13, 'Alagoa', 'MG'),
(88, 15, 'Alagoa Grande', 'PB'),
(89, 15, 'Alagoa Nova', 'PB'),
(90, 15, 'Alagoinha', 'PB'),
(91, 17, 'Alagoinha', 'PE'),
(92, 18, 'Alagoinha do Piauí', 'PI'),
(93, 5, 'Alagoinhas', 'BA'),
(94, 25, 'Alambari', 'SP'),
(95, 13, 'Albertina', 'MG'),
(96, 10, 'Alcântara', 'MA'),
(97, 6, 'Alcântaras', 'CE'),
(98, 15, 'Alcantil', 'PB'),
(99, 12, 'Alcinópolis', 'MS'),
(100, 5, 'Alcobaça', 'BA'),
(101, 10, 'Aldeias Altas', 'MA'),
(102, 21, 'Alecrim', 'RS'),
(103, 8, 'Alegre', 'ES'),
(104, 21, 'Alegrete', 'RS'),
(105, 18, 'Alegrete do Piauí', 'PI'),
(106, 21, 'Alegria', 'RS'),
(107, 13, 'Além Paraíba', 'MG'),
(108, 14, 'Alenquer', 'PA'),
(109, 20, 'Alexandria', 'RN'),
(110, 9, 'Alexânia', 'GO'),
(111, 13, 'Alfenas', 'MG'),
(112, 8, 'Alfredo Chaves', 'ES'),
(113, 25, 'Alfredo Marcondes', 'SP'),
(114, 13, 'Alfredo Vasconcelos', 'MG'),
(115, 24, 'Alfredo Wagner', 'SC'),
(116, 15, 'Algodão de Jandaíra', 'PB'),
(117, 15, 'Alhandra', 'PB'),
(118, 17, 'Aliança', 'PE'),
(119, 27, 'Aliança do Tocantins', 'TO'),
(120, 5, 'Almadina', 'BA'),
(121, 27, 'Almas', 'TO'),
(122, 14, 'Almeirim', 'PA'),
(123, 13, 'Almenara', 'MG'),
(124, 20, 'Almino Afonso', 'RN'),
(125, 16, 'Almirante Tamandaré', 'PR'),
(126, 21, 'Almirante Tamandaré do Sul', 'RS'),
(127, 9, 'Aloândia', 'GO'),
(128, 13, 'Alpercata', 'MG'),
(129, 21, 'Alpestre', 'RS'),
(130, 13, 'Alpinópolis', 'MG'),
(131, 11, 'Alta Floresta', 'MT'),
(132, 22, 'Alta Floresta D\'Oeste', 'RO'),
(133, 25, 'Altair', 'SP'),
(134, 14, 'Altamira', 'PA'),
(135, 10, 'Altamira do Maranhão', 'MA'),
(136, 16, 'Altamira do Paraná', 'PR'),
(137, 6, 'Altaneira', 'CE'),
(138, 13, 'Alterosa', 'MG'),
(139, 17, 'Altinho', 'PE'),
(140, 25, 'Altinópolis', 'SP'),
(141, 23, 'Alto Alegre', 'RR'),
(142, 21, 'Alto Alegre', 'RS'),
(143, 25, 'Alto Alegre', 'SP'),
(144, 10, 'Alto Alegre do Maranhão', 'MA'),
(145, 10, 'Alto Alegre do Pindaré', 'MA'),
(146, 22, 'Alto Alegre dos Parecis', 'RO'),
(147, 11, 'Alto Araguaia', 'MT'),
(148, 24, 'Alto Bela Vista', 'SC'),
(149, 11, 'Alto Boa Vista', 'MT'),
(150, 13, 'Alto Caparaó', 'MG'),
(151, 20, 'Alto do Rodrigues', 'RN'),
(152, 21, 'Alto Feliz', 'RS'),
(153, 11, 'Alto Garças', 'MT'),
(154, 9, 'Alto Horizonte', 'GO'),
(155, 13, 'Alto Jequitibá', 'MG'),
(156, 18, 'Alto Longá', 'PI'),
(157, 11, 'Alto Paraguai', 'MT'),
(158, 16, 'Alto Paraíso', 'PR'),
(159, 22, 'Alto Paraíso', 'RO'),
(160, 9, 'Alto Paraíso de Goiás', 'GO'),
(161, 16, 'Alto Paraná', 'PR'),
(162, 10, 'Alto Parnaíba', 'MA'),
(163, 16, 'Alto Piquiri', 'PR'),
(164, 13, 'Alto Rio Doce', 'MG'),
(165, 8, 'Alto Rio Novo', 'ES'),
(166, 6, 'Alto Santo', 'CE'),
(167, 11, 'Alto Taquari', 'MT'),
(168, 16, 'Altônia', 'PR'),
(169, 18, 'Altos', 'PI'),
(170, 25, 'Alumínio', 'SP'),
(171, 4, 'Alvarães', 'AM'),
(172, 13, 'Alvarenga', 'MG'),
(173, 25, 'Álvares Florence', 'SP'),
(174, 25, 'Álvares Machado', 'SP'),
(175, 25, 'Álvaro de Carvalho', 'SP'),
(176, 25, 'Alvinlândia', 'SP'),
(177, 13, 'Alvinópolis', 'MG'),
(178, 21, 'Alvorada', 'RS'),
(179, 27, 'Alvorada', 'TO'),
(180, 13, 'Alvorada de Minas', 'MG'),
(181, 18, 'Alvorada do Gurguéia', 'PI'),
(182, 9, 'Alvorada do Norte', 'GO'),
(183, 16, 'Alvorada do Sul', 'PR'),
(184, 22, 'Alvorada D\'Oeste', 'RO'),
(185, 23, 'Amajari', 'RR'),
(186, 12, 'Amambai', 'MS'),
(187, 3, 'Amapá', 'AP'),
(188, 10, 'Amapá do Maranhão', 'MA'),
(189, 16, 'Amaporã', 'PR'),
(190, 17, 'Amaraji', 'PE'),
(191, 21, 'Amaral Ferrador', 'RS'),
(192, 9, 'Amaralina', 'GO'),
(193, 18, 'Amarante', 'PI'),
(194, 10, 'Amarante do Maranhão', 'MA'),
(195, 5, 'Amargosa', 'BA'),
(196, 4, 'Amaturá', 'AM'),
(197, 5, 'Amélia Rodrigues', 'BA'),
(198, 5, 'América Dourada', 'BA'),
(199, 25, 'Americana', 'SP'),
(200, 9, 'Americano do Brasil', 'GO'),
(201, 25, 'Américo Brasiliense', 'SP'),
(202, 25, 'Américo de Campos', 'SP'),
(203, 21, 'Ametista do Sul', 'RS'),
(204, 6, 'Amontada', 'CE'),
(205, 9, 'Amorinópolis', 'GO'),
(206, 15, 'Amparo', 'PB'),
(207, 25, 'Amparo', 'SP'),
(208, 26, 'Amparo de São Francisco', 'SE'),
(209, 13, 'Amparo do Serra', 'MG'),
(210, 16, 'Ampére', 'PR'),
(211, 2, 'Anadia', 'AL'),
(212, 5, 'Anagé', 'BA'),
(213, 16, 'Anahy', 'PR'),
(214, 14, 'Anajás', 'PA'),
(215, 10, 'Anajatuba', 'MA'),
(216, 25, 'Analândia', 'SP'),
(217, 4, 'Anamã', 'AM'),
(218, 27, 'Ananás', 'TO'),
(219, 14, 'Ananindeua', 'PA'),
(220, 9, 'Anápolis', 'GO'),
(221, 14, 'Anapu', 'PA'),
(222, 10, 'Anapurus', 'MA'),
(223, 12, 'Anastácio', 'MS'),
(224, 12, 'Anaurilândia', 'MS'),
(225, 8, 'Anchieta', 'ES'),
(226, 24, 'Anchieta', 'SC'),
(227, 5, 'Andaraí', 'BA'),
(228, 16, 'Andirá', 'PR'),
(229, 5, 'Andorinha', 'BA'),
(230, 13, 'Andradas', 'MG'),
(231, 25, 'Andradina', 'SP'),
(232, 21, 'André da Rocha', 'RS'),
(233, 13, 'Andrelândia', 'MG'),
(234, 25, 'Angatuba', 'SP'),
(235, 13, 'Angelândia', 'MG'),
(236, 12, 'Angélica', 'MS'),
(237, 17, 'Angelim', 'PE'),
(238, 24, 'Angelina', 'SC'),
(239, 5, 'Angical', 'BA'),
(240, 18, 'Angical do Piauí', 'PI'),
(241, 27, 'Angico', 'TO'),
(242, 20, 'Angicos', 'RN'),
(243, 19, 'Angra dos Reis', 'RJ'),
(244, 5, 'Anguera', 'BA'),
(245, 16, 'Ângulo', 'PR'),
(246, 9, 'Anhanguera', 'GO'),
(247, 25, 'Anhembi', 'SP'),
(248, 25, 'Anhumas', 'SP'),
(249, 9, 'Anicuns', 'GO'),
(250, 18, 'Anísio de Abreu', 'PI'),
(251, 24, 'Anita Garibaldi', 'SC'),
(252, 24, 'Anitápolis', 'SC'),
(253, 4, 'Anori', 'AM'),
(254, 21, 'Anta Gorda', 'RS'),
(255, 5, 'Antas', 'BA'),
(256, 16, 'Antonina', 'PR'),
(257, 6, 'Antonina do Norte', 'CE'),
(258, 18, 'Antônio Almeida', 'PI'),
(259, 5, 'Antônio Cardoso', 'BA'),
(260, 13, 'Antônio Carlos', 'MG'),
(261, 24, 'Antônio Carlos', 'SC'),
(262, 13, 'Antônio Dias', 'MG'),
(263, 5, 'Antônio Gonçalves', 'BA'),
(264, 12, 'Antônio João', 'MS'),
(265, 20, 'Antônio Martins', 'RN'),
(266, 16, 'Antônio Olinto', 'PR'),
(267, 21, 'Antônio Prado', 'RS'),
(268, 13, 'Antônio Prado de Minas', 'MG'),
(269, 15, 'Aparecida', 'PB'),
(270, 25, 'Aparecida', 'SP'),
(271, 9, 'Aparecida de Goiânia', 'GO'),
(272, 9, 'Aparecida do Rio Doce', 'GO'),
(273, 27, 'Aparecida do Rio Negro', 'TO'),
(274, 12, 'Aparecida do Taboado', 'MS'),
(275, 25, 'Aparecida d\'Oeste', 'SP'),
(276, 19, 'Aperibé', 'RJ'),
(277, 8, 'Apiacá', 'ES'),
(278, 11, 'Apiacás', 'MT'),
(279, 25, 'Apiaí', 'SP'),
(280, 10, 'Apicum-Açu', 'MA'),
(281, 24, 'Apiúna', 'SC'),
(282, 20, 'Apodi', 'RN'),
(283, 5, 'Aporá', 'BA'),
(284, 9, 'Aporé', 'GO'),
(285, 5, 'Apuarema', 'BA'),
(286, 16, 'Apucarana', 'PR'),
(287, 4, 'Apuí', 'AM'),
(288, 6, 'Apuiarés', 'CE'),
(289, 26, 'Aquidabã', 'SE'),
(290, 12, 'Aquidauana', 'MS'),
(291, 6, 'Aquiraz', 'CE'),
(292, 24, 'Arabutã', 'SC'),
(293, 15, 'Araçagi', 'PB'),
(294, 13, 'Araçaí', 'MG'),
(295, 26, 'Aracaju', 'SE'),
(296, 25, 'Araçariguama', 'SP'),
(297, 5, 'Araças', 'BA'),
(298, 6, 'Aracati', 'CE'),
(299, 5, 'Aracatu', 'BA'),
(300, 25, 'Araçatuba', 'SP'),
(301, 5, 'Araci', 'BA'),
(302, 13, 'Aracitaba', 'MG'),
(303, 6, 'Aracoiaba', 'CE'),
(304, 17, 'Araçoiaba', 'PE'),
(305, 25, 'Araçoiaba da Serra', 'SP'),
(306, 8, 'Aracruz', 'ES'),
(307, 9, 'Araçu', 'GO'),
(308, 13, 'Araçuaí', 'MG'),
(309, 9, 'Aragarças', 'GO'),
(310, 9, 'Aragoiânia', 'GO'),
(311, 27, 'Aragominas', 'TO'),
(312, 27, 'Araguacema', 'TO'),
(313, 27, 'Araguaçu', 'TO'),
(314, 11, 'Araguaiana', 'MT'),
(315, 27, 'Araguaína', 'TO'),
(316, 11, 'Araguainha', 'MT'),
(317, 10, 'Araguanã', 'MA'),
(318, 27, 'Araguanã', 'TO'),
(319, 9, 'Araguapaz', 'GO'),
(320, 13, 'Araguari', 'MG'),
(321, 27, 'Araguatins', 'TO'),
(322, 10, 'Araioses', 'MA'),
(323, 12, 'Aral Moreira', 'MS'),
(324, 5, 'Aramari', 'BA'),
(325, 21, 'Arambaré', 'RS'),
(326, 10, 'Arame', 'MA'),
(327, 25, 'Aramina', 'SP'),
(328, 25, 'Arandu', 'SP'),
(329, 13, 'Arantina', 'MG'),
(330, 25, 'Arapeí', 'SP'),
(331, 2, 'Arapiraca', 'AL'),
(332, 27, 'Arapoema', 'TO'),
(333, 13, 'Araponga', 'MG'),
(334, 16, 'Arapongas', 'PR'),
(335, 13, 'Araporã', 'MG'),
(336, 16, 'Arapoti', 'PR'),
(337, 13, 'Arapuá', 'MG'),
(338, 16, 'Arapuã', 'PR'),
(339, 11, 'Araputanga', 'MT'),
(340, 24, 'Araquari', 'SC'),
(341, 15, 'Arara', 'PB'),
(342, 24, 'Araranguá', 'SC'),
(343, 25, 'Araraquara', 'SP'),
(344, 25, 'Araras', 'SP'),
(345, 6, 'Ararendá', 'CE'),
(346, 10, 'Arari', 'MA'),
(347, 21, 'Araricá', 'RS'),
(348, 6, 'Araripe', 'CE'),
(349, 17, 'Araripina', 'PE'),
(350, 19, 'Araruama', 'RJ'),
(351, 15, 'Araruna', 'PB'),
(352, 16, 'Araruna', 'PR'),
(353, 5, 'Arataca', 'BA'),
(354, 21, 'Aratiba', 'RS'),
(355, 6, 'Aratuba', 'CE'),
(356, 5, 'Aratuípe', 'BA'),
(357, 26, 'Arauá', 'SE'),
(358, 16, 'Araucária', 'PR'),
(359, 13, 'Araújos', 'MG'),
(360, 13, 'Araxá', 'MG'),
(361, 13, 'Arceburgo', 'MG'),
(362, 25, 'Arco-Íris', 'SP'),
(363, 13, 'Arcos', 'MG'),
(364, 17, 'Arcoverde', 'PE'),
(365, 13, 'Areado', 'MG'),
(366, 19, 'Areal', 'RJ'),
(367, 25, 'Arealva', 'SP'),
(368, 15, 'Areia', 'PB'),
(369, 20, 'Areia Branca', 'RN'),
(370, 26, 'Areia Branca', 'SE'),
(371, 15, 'Areia de Baraúnas', 'PB'),
(372, 15, 'Areial', 'PB'),
(373, 25, 'Areias', 'SP'),
(374, 25, 'Areiópolis', 'SP'),
(375, 11, 'Arenápolis', 'MT'),
(376, 9, 'Arenópolis', 'GO'),
(377, 20, 'Arês', 'RN'),
(378, 13, 'Argirita', 'MG'),
(379, 13, 'Aricanduva', 'MG'),
(380, 13, 'Arinos', 'MG'),
(381, 11, 'Aripuanã', 'MT'),
(382, 22, 'Ariquemes', 'RO'),
(383, 25, 'Ariranha', 'SP'),
(384, 16, 'Ariranha do Ivaí', 'PR'),
(385, 19, 'Armação dos Búzios', 'RJ'),
(386, 24, 'Armazém', 'SC'),
(387, 6, 'Arneiroz', 'CE'),
(388, 18, 'Aroazes', 'PI'),
(389, 15, 'Aroeiras', 'PB'),
(390, 18, 'Aroeiras do Itaim', 'PI'),
(391, 18, 'Arraial', 'PI'),
(392, 19, 'Arraial do Cabo', 'RJ'),
(393, 27, 'Arraias', 'TO'),
(394, 21, 'Arroio do Meio', 'RS'),
(395, 21, 'Arroio do Padre', 'RS'),
(396, 21, 'Arroio do Sal', 'RS'),
(397, 21, 'Arroio do Tigre', 'RS'),
(398, 21, 'Arroio dos Ratos', 'RS'),
(399, 21, 'Arroio Grande', 'RS'),
(400, 24, 'Arroio Trinta', 'SC'),
(401, 25, 'Artur Nogueira', 'SP'),
(402, 9, 'Aruanã', 'GO'),
(403, 25, 'Arujá', 'SP'),
(404, 24, 'Arvoredo', 'SC'),
(405, 21, 'Arvorezinha', 'RS'),
(406, 24, 'Ascurra', 'SC'),
(407, 25, 'Aspásia', 'SP'),
(408, 16, 'Assaí', 'PR'),
(409, 6, 'Assaré', 'CE'),
(410, 25, 'Assis', 'SP'),
(411, 1, 'Assis Brasil', 'AC'),
(412, 16, 'Assis Chateaubriand', 'PR'),
(413, 15, 'Assunção', 'PB'),
(414, 18, 'Assunção do Piauí', 'PI'),
(415, 13, 'Astolfo Dutra', 'MG'),
(416, 16, 'Astorga', 'PR'),
(417, 2, 'Atalaia', 'AL'),
(418, 16, 'Atalaia', 'PR'),
(419, 4, 'Atalaia do Norte', 'AM'),
(420, 24, 'Atalanta', 'SC'),
(421, 13, 'Ataléia', 'MG'),
(422, 25, 'Atibaia', 'SP'),
(423, 8, 'Atilio Vivacqua', 'ES'),
(424, 27, 'Augustinópolis', 'TO'),
(425, 14, 'Augusto Corrêa', 'PA'),
(426, 13, 'Augusto de Lima', 'MG'),
(427, 21, 'Augusto Pestana', 'RS'),
(428, 20, 'Augusto Severo', 'RN'),
(429, 21, 'Áurea', 'RS'),
(430, 5, 'Aurelino Leal', 'BA'),
(431, 25, 'Auriflama', 'SP'),
(432, 9, 'Aurilândia', 'GO'),
(433, 6, 'Aurora', 'CE'),
(434, 24, 'Aurora', 'SC'),
(435, 14, 'Aurora do Pará', 'PA'),
(436, 27, 'Aurora do Tocantins', 'TO'),
(437, 4, 'Autazes', 'AM'),
(438, 25, 'Avaí', 'SP'),
(439, 25, 'Avanhandava', 'SP'),
(440, 25, 'Avaré', 'SP'),
(441, 14, 'Aveiro', 'PA'),
(442, 18, 'Avelino Lopes', 'PI'),
(443, 9, 'Avelinópolis', 'GO'),
(444, 10, 'Axixá', 'MA'),
(445, 27, 'Axixá do Tocantins', 'TO'),
(446, 27, 'Babaçulândia', 'TO'),
(447, 10, 'Bacabal', 'MA'),
(448, 10, 'Bacabeira', 'MA'),
(449, 10, 'Bacuri', 'MA'),
(450, 10, 'Bacurituba', 'MA'),
(451, 25, 'Bady Bassitt', 'SP'),
(452, 13, 'Baependi', 'MG'),
(453, 21, 'Bagé', 'RS'),
(454, 14, 'Bagre', 'PA'),
(455, 15, 'Baía da Traição', 'PB'),
(456, 20, 'Baía Formosa', 'RN'),
(457, 5, 'Baianópolis', 'BA'),
(458, 14, 'Baião', 'PA'),
(459, 5, 'Baixa Grande', 'BA'),
(460, 18, 'Baixa Grande do Ribeiro', 'PI'),
(461, 6, 'Baixio', 'CE'),
(462, 8, 'Baixo Guandu', 'ES'),
(463, 25, 'Balbinos', 'SP'),
(464, 13, 'Baldim', 'MG'),
(465, 9, 'Baliza', 'GO'),
(466, 24, 'Balneário Arroio do Silva', 'SC'),
(467, 24, 'Balneário Barra do Sul', 'SC'),
(468, 24, 'Balneário Camboriú', 'SC'),
(469, 24, 'Balneário Gaivota', 'SC'),
(470, 24, 'Balneário Piçarras', 'SC'),
(471, 21, 'Balneário Pinhal', 'RS'),
(472, 16, 'Balsa Nova', 'PR'),
(473, 25, 'Bálsamo', 'SP'),
(474, 10, 'Balsas', 'MA'),
(475, 13, 'Bambuí', 'MG'),
(476, 6, 'Banabuiú', 'CE'),
(477, 25, 'Bananal', 'SP'),
(478, 15, 'Bananeiras', 'PB'),
(479, 13, 'Bandeira', 'MG'),
(480, 13, 'Bandeira do Sul', 'MG'),
(481, 24, 'Bandeirante', 'SC'),
(482, 12, 'Bandeirantes', 'MS'),
(483, 16, 'Bandeirantes', 'PR'),
(484, 27, 'Bandeirantes do Tocantins', 'TO'),
(485, 14, 'Bannach', 'PA'),
(486, 5, 'Banzaê', 'BA'),
(487, 21, 'Barão', 'RS'),
(488, 25, 'Barão de Antonina', 'SP'),
(489, 13, 'Barão de Cocais', 'MG'),
(490, 21, 'Barão de Cotegipe', 'RS'),
(491, 10, 'Barão de Grajaú', 'MA'),
(492, 11, 'Barão de Melgaço', 'MT'),
(493, 13, 'Barão de Monte Alto', 'MG'),
(494, 21, 'Barão do Triunfo', 'RS'),
(495, 15, 'Baraúna', 'PB'),
(496, 20, 'Baraúna', 'RN'),
(497, 13, 'Barbacena', 'MG'),
(498, 6, 'Barbalha', 'CE'),
(499, 25, 'Barbosa', 'SP'),
(500, 16, 'Barbosa Ferraz', 'PR'),
(501, 14, 'Barcarena', 'PA'),
(502, 20, 'Barcelona', 'RN'),
(503, 4, 'Barcelos', 'AM'),
(504, 25, 'Bariri', 'SP'),
(505, 5, 'Barra', 'BA'),
(506, 24, 'Barra Bonita', 'SC'),
(507, 25, 'Barra Bonita', 'SP'),
(508, 5, 'Barra da Estiva', 'BA'),
(509, 18, 'Barra D\'Alcântara', 'PI'),
(510, 17, 'Barra de Guabiraba', 'PE'),
(511, 15, 'Barra de Santa Rosa', 'PB'),
(512, 15, 'Barra de Santana', 'PB'),
(513, 2, 'Barra de Santo Antônio', 'AL'),
(514, 8, 'Barra de São Francisco', 'ES'),
(515, 2, 'Barra de São Miguel', 'AL'),
(516, 15, 'Barra de São Miguel', 'PB'),
(517, 11, 'Barra do Bugres', 'MT'),
(518, 25, 'Barra do Chapéu', 'SP'),
(519, 5, 'Barra do Choça', 'BA'),
(520, 10, 'Barra do Corda', 'MA'),
(521, 11, 'Barra do Garças', 'MT'),
(522, 21, 'Barra do Guarita', 'RS'),
(523, 16, 'Barra do Jacaré', 'PR'),
(524, 5, 'Barra do Mendes', 'BA'),
(525, 27, 'Barra do Ouro', 'TO'),
(526, 19, 'Barra do Piraí', 'RJ'),
(527, 21, 'Barra do Quaraí', 'RS'),
(528, 21, 'Barra do Ribeiro', 'RS'),
(529, 21, 'Barra do Rio Azul', 'RS'),
(530, 5, 'Barra do Rocha', 'BA'),
(531, 25, 'Barra do Turvo', 'SP'),
(532, 26, 'Barra dos Coqueiros', 'SE'),
(533, 21, 'Barra Funda', 'RS'),
(534, 13, 'Barra Longa', 'MG'),
(535, 19, 'Barra Mansa', 'RJ'),
(536, 24, 'Barra Velha', 'SC'),
(537, 16, 'Barracão', 'PR'),
(538, 21, 'Barracão', 'RS'),
(539, 18, 'Barras', 'PI'),
(540, 6, 'Barreira', 'CE'),
(541, 5, 'Barreiras', 'BA'),
(542, 18, 'Barreiras do Piauí', 'PI'),
(543, 4, 'Barreirinha', 'AM'),
(544, 10, 'Barreirinhas', 'MA'),
(545, 17, 'Barreiros', 'PE'),
(546, 25, 'Barretos', 'SP'),
(547, 25, 'Barrinha', 'SP'),
(548, 6, 'Barro', 'CE'),
(549, 5, 'Barro Alto', 'BA'),
(550, 9, 'Barro Alto', 'GO'),
(551, 18, 'Barro Duro', 'PI'),
(552, 5, 'Barro Preto', 'BA'),
(553, 5, 'Barrocas', 'BA'),
(554, 27, 'Barrolândia', 'TO'),
(555, 6, 'Barroquinha', 'CE'),
(556, 21, 'Barros Cassal', 'RS'),
(557, 13, 'Barroso', 'MG'),
(558, 25, 'Barueri', 'SP'),
(559, 25, 'Bastos', 'SP'),
(560, 12, 'Bataguassu', 'MS'),
(561, 2, 'Batalha', 'AL'),
(562, 18, 'Batalha', 'PI'),
(563, 25, 'Batatais', 'SP'),
(564, 12, 'Batayporã', 'MS'),
(565, 6, 'Baturité', 'CE'),
(566, 25, 'Bauru', 'SP'),
(567, 15, 'Bayeux', 'PB'),
(568, 25, 'Bebedouro', 'SP'),
(569, 6, 'Beberibe', 'CE'),
(570, 6, 'Bela Cruz', 'CE'),
(571, 12, 'Bela Vista', 'MS'),
(572, 16, 'Bela Vista da Caroba', 'PR'),
(573, 9, 'Bela Vista de Goiás', 'GO'),
(574, 13, 'Bela Vista de Minas', 'MG'),
(575, 10, 'Bela Vista do Maranhão', 'MA'),
(576, 16, 'Bela Vista do Paraíso', 'PR'),
(577, 18, 'Bela Vista do Piauí', 'PI'),
(578, 24, 'Bela Vista do Toldo', 'SC'),
(579, 10, 'Belágua', 'MA'),
(580, 2, 'Belém', 'AL'),
(581, 14, 'Belém', 'PA'),
(582, 15, 'Belém', 'PB'),
(583, 17, 'Belém de Maria', 'PE'),
(584, 15, 'Belém do Brejo do Cruz', 'PB'),
(585, 18, 'Belém do Piauí', 'PI'),
(586, 17, 'Belém do São Francisco', 'PE'),
(587, 19, 'Belford Roxo', 'RJ'),
(588, 13, 'Belmiro Braga', 'MG'),
(589, 5, 'Belmonte', 'BA'),
(590, 24, 'Belmonte', 'SC'),
(591, 5, 'Belo Campo', 'BA'),
(592, 13, 'Belo Horizonte', 'MG'),
(593, 17, 'Belo Jardim', 'PE'),
(594, 2, 'Belo Monte', 'AL'),
(595, 13, 'Belo Oriente', 'MG'),
(596, 13, 'Belo Vale', 'MG'),
(597, 14, 'Belterra', 'PA'),
(598, 18, 'Beneditinos', 'PI'),
(599, 10, 'Benedito Leite', 'MA'),
(600, 24, 'Benedito Novo', 'SC'),
(601, 14, 'Benevides', 'PA'),
(602, 4, 'Benjamin Constant', 'AM'),
(603, 21, 'Benjamin Constant do Sul', 'RS'),
(604, 25, 'Bento de Abreu', 'SP'),
(605, 20, 'Bento Fernandes', 'RN'),
(606, 21, 'Bento Gonçalves', 'RS'),
(607, 10, 'Bequimão', 'MA'),
(608, 13, 'Berilo', 'MG'),
(609, 13, 'Berizal', 'MG'),
(610, 15, 'Bernardino Batista', 'PB'),
(611, 25, 'Bernardino de Campos', 'SP'),
(612, 10, 'Bernardo do Mearim', 'MA'),
(613, 27, 'Bernardo Sayão', 'TO'),
(614, 25, 'Bertioga', 'SP'),
(615, 18, 'Bertolínia', 'PI'),
(616, 13, 'Bertópolis', 'MG'),
(617, 4, 'Beruri', 'AM'),
(618, 17, 'Betânia', 'PE'),
(619, 18, 'Betânia do Piauí', 'PI'),
(620, 13, 'Betim', 'MG'),
(621, 17, 'Bezerros', 'PE'),
(622, 13, 'Bias Fortes', 'MG'),
(623, 13, 'Bicas', 'MG'),
(624, 24, 'Biguaçu', 'SC'),
(625, 25, 'Bilac', 'SP'),
(626, 13, 'Biquinhas', 'MG'),
(627, 25, 'Birigui', 'SP'),
(628, 25, 'Biritiba-Mirim', 'SP'),
(629, 5, 'Biritinga', 'BA'),
(630, 16, 'Bituruna', 'PR'),
(631, 24, 'Blumenau', 'SC'),
(632, 8, 'Boa Esperança', 'ES'),
(633, 13, 'Boa Esperança', 'MG'),
(634, 16, 'Boa Esperança', 'PR'),
(635, 16, 'Boa Esperança do Iguaçu', 'PR'),
(636, 25, 'Boa Esperança do Sul', 'SP'),
(637, 18, 'Boa Hora', 'PI'),
(638, 5, 'Boa Nova', 'BA'),
(639, 15, 'Boa Ventura', 'PB'),
(640, 16, 'Boa Ventura de São Roque', 'PR'),
(641, 6, 'Boa Viagem', 'CE'),
(642, 15, 'Boa Vista', 'PB'),
(643, 23, 'Boa Vista', 'RR'),
(644, 16, 'Boa Vista da Aparecida', 'PR'),
(645, 21, 'Boa Vista das Missões', 'RS'),
(646, 21, 'Boa Vista do Buricá', 'RS'),
(647, 21, 'Boa Vista do Cadeado', 'RS'),
(648, 10, 'Boa Vista do Gurupi', 'MA'),
(649, 21, 'Boa Vista do Incra', 'RS'),
(650, 4, 'Boa Vista do Ramos', 'AM'),
(651, 21, 'Boa Vista do Sul', 'RS'),
(652, 5, 'Boa Vista do Tupim', 'BA'),
(653, 2, 'Boca da Mata', 'AL'),
(654, 4, 'Boca do Acre', 'AM'),
(655, 18, 'Bocaina', 'PI'),
(656, 25, 'Bocaina', 'SP'),
(657, 13, 'Bocaina de Minas', 'MG'),
(658, 24, 'Bocaina do Sul', 'SC'),
(659, 13, 'Bocaiúva', 'MG'),
(660, 16, 'Bocaiúva do Sul', 'PR'),
(661, 20, 'Bodó', 'RN'),
(662, 17, 'Bodocó', 'PE'),
(663, 12, 'Bodoquena', 'MS'),
(664, 25, 'Bofete', 'SP'),
(665, 25, 'Boituva', 'SP'),
(666, 17, 'Bom Conselho', 'PE'),
(667, 13, 'Bom Despacho', 'MG'),
(668, 10, 'Bom Jardim', 'MA'),
(669, 17, 'Bom Jardim', 'PE'),
(670, 19, 'Bom Jardim', 'RJ'),
(671, 24, 'Bom Jardim da Serra', 'SC'),
(672, 9, 'Bom Jardim de Goiás', 'GO'),
(673, 13, 'Bom Jardim de Minas', 'MG'),
(674, 15, 'Bom Jesus', 'PB'),
(675, 18, 'Bom Jesus', 'PI'),
(676, 20, 'Bom Jesus', 'RN'),
(677, 21, 'Bom Jesus', 'RS'),
(678, 24, 'Bom Jesus', 'SC'),
(679, 5, 'Bom Jesus da Lapa', 'BA'),
(680, 13, 'Bom Jesus da Penha', 'MG'),
(681, 5, 'Bom Jesus da Serra', 'BA'),
(682, 10, 'Bom Jesus das Selvas', 'MA'),
(683, 9, 'Bom Jesus de Goiás', 'GO'),
(684, 13, 'Bom Jesus do Amparo', 'MG'),
(685, 11, 'Bom Jesus do Araguaia', 'MT'),
(686, 13, 'Bom Jesus do Galho', 'MG'),
(687, 19, 'Bom Jesus do Itabapoana', 'RJ'),
(688, 8, 'Bom Jesus do Norte', 'ES'),
(689, 24, 'Bom Jesus do Oeste', 'SC'),
(690, 16, 'Bom Jesus do Sul', 'PR'),
(691, 14, 'Bom Jesus do Tocantins', 'PA'),
(692, 27, 'Bom Jesus do Tocantins', 'TO'),
(693, 25, 'Bom Jesus dos Perdões', 'SP'),
(694, 10, 'Bom Lugar', 'MA'),
(695, 21, 'Bom Princípio', 'RS'),
(696, 18, 'Bom Princípio do Piauí', 'PI'),
(697, 21, 'Bom Progresso', 'RS'),
(698, 13, 'Bom Repouso', 'MG'),
(699, 24, 'Bom Retiro', 'SC'),
(700, 21, 'Bom Retiro do Sul', 'RS'),
(701, 13, 'Bom Sucesso', 'MG'),
(702, 15, 'Bom Sucesso', 'PB'),
(703, 16, 'Bom Sucesso', 'PR'),
(704, 25, 'Bom Sucesso de Itararé', 'SP'),
(705, 16, 'Bom Sucesso do Sul', 'PR'),
(706, 24, 'Bombinhas', 'SC'),
(707, 13, 'Bonfim', 'MG'),
(708, 23, 'Bonfim', 'RR'),
(709, 18, 'Bonfim do Piauí', 'PI'),
(710, 9, 'Bonfinópolis', 'GO'),
(711, 13, 'Bonfinópolis de Minas', 'MG'),
(712, 5, 'Boninal', 'BA'),
(713, 5, 'Bonito', 'BA'),
(714, 12, 'Bonito', 'MS'),
(715, 14, 'Bonito', 'PA'),
(716, 17, 'Bonito', 'PE'),
(717, 13, 'Bonito de Minas', 'MG'),
(718, 15, 'Bonito de Santa Fé', 'PB'),
(719, 9, 'Bonópolis', 'GO'),
(720, 15, 'Boqueirão', 'PB'),
(721, 21, 'Boqueirão do Leão', 'RS'),
(722, 18, 'Boqueirão do Piauí', 'PI'),
(723, 26, 'Boquim', 'SE'),
(724, 5, 'Boquira', 'BA'),
(725, 25, 'Borá', 'SP'),
(726, 25, 'Boracéia', 'SP'),
(727, 4, 'Borba', 'AM'),
(728, 15, 'Borborema', 'PB'),
(729, 25, 'Borborema', 'SP'),
(730, 13, 'Borda da Mata', 'MG'),
(731, 25, 'Borebi', 'SP'),
(732, 16, 'Borrazópolis', 'PR'),
(733, 21, 'Bossoroca', 'RS'),
(734, 13, 'Botelhos', 'MG'),
(735, 25, 'Botucatu', 'SP'),
(736, 13, 'Botumirim', 'MG'),
(737, 5, 'Botuporã', 'BA'),
(738, 24, 'Botuverá', 'SC'),
(739, 21, 'Bozano', 'RS'),
(740, 24, 'Braço do Norte', 'SC'),
(741, 24, 'Braço do Trombudo', 'SC'),
(742, 21, 'Braga', 'RS'),
(743, 14, 'Bragança', 'PA'),
(744, 25, 'Bragança Paulista', 'SP'),
(745, 16, 'Braganey', 'PR'),
(746, 2, 'Branquinha', 'AL'),
(747, 13, 'Brás Pires', 'MG'),
(748, 14, 'Brasil Novo', 'PA'),
(749, 12, 'Brasilândia', 'MS'),
(750, 13, 'Brasilândia de Minas', 'MG'),
(751, 16, 'Brasilândia do Sul', 'PR'),
(752, 27, 'Brasilândia do Tocantins', 'TO'),
(753, 1, 'Brasiléia', 'AC'),
(754, 18, 'Brasileira', 'PI'),
(755, 7, 'Brasília', 'DF'),
(756, 13, 'Brasília de Minas', 'MG'),
(757, 11, 'Brasnorte', 'MT'),
(758, 13, 'Brasópolis', 'MG'),
(759, 25, 'Braúna', 'SP'),
(760, 13, 'Braúnas', 'MG'),
(761, 9, 'Brazabrantes', 'GO'),
(762, 17, 'Brejão', 'PE'),
(763, 8, 'Brejetuba', 'ES'),
(764, 17, 'Brejinho', 'PE'),
(765, 20, 'Brejinho', 'RN'),
(766, 27, 'Brejinho de Nazaré', 'TO'),
(767, 10, 'Brejo', 'MA'),
(768, 25, 'Brejo Alegre', 'SP'),
(769, 17, 'Brejo da Madre de Deus', 'PE'),
(770, 10, 'Brejo de Areia', 'MA'),
(771, 15, 'Brejo do Cruz', 'PB'),
(772, 18, 'Brejo do Piauí', 'PI'),
(773, 15, 'Brejo dos Santos', 'PB'),
(774, 26, 'Brejo Grande', 'SE'),
(775, 14, 'Brejo Grande do Araguaia', 'PA'),
(776, 6, 'Brejo Santo', 'CE'),
(777, 5, 'Brejões', 'BA'),
(778, 5, 'Brejolândia', 'BA'),
(779, 14, 'Breu Branco', 'PA'),
(780, 14, 'Breves', 'PA'),
(781, 9, 'Britânia', 'GO'),
(782, 21, 'Brochier', 'RS'),
(783, 25, 'Brodowski', 'SP'),
(784, 25, 'Brotas', 'SP'),
(785, 5, 'Brotas de Macaúbas', 'BA'),
(786, 13, 'Brumadinho', 'MG'),
(787, 5, 'Brumado', 'BA'),
(788, 24, 'Brunópolis', 'SC'),
(789, 24, 'Brusque', 'SC'),
(790, 13, 'Bueno Brandão', 'MG'),
(791, 13, 'Buenópolis', 'MG'),
(792, 17, 'Buenos Aires', 'PE'),
(793, 5, 'Buerarema', 'BA'),
(794, 13, 'Bugre', 'MG'),
(795, 17, 'Buíque', 'PE'),
(796, 1, 'Bujari', 'AC'),
(797, 14, 'Bujaru', 'PA'),
(798, 25, 'Buri', 'SP'),
(799, 25, 'Buritama', 'SP'),
(800, 10, 'Buriti', 'MA'),
(801, 9, 'Buriti Alegre', 'GO'),
(802, 10, 'Buriti Bravo', 'MA'),
(803, 9, 'Buriti de Goiás', 'GO'),
(804, 27, 'Buriti do Tocantins', 'TO'),
(805, 18, 'Buriti dos Lopes', 'PI'),
(806, 18, 'Buriti dos Montes', 'PI'),
(807, 10, 'Buriticupu', 'MA'),
(808, 9, 'Buritinópolis', 'GO'),
(809, 5, 'Buritirama', 'BA'),
(810, 10, 'Buritirana', 'MA'),
(811, 13, 'Buritis', 'MG'),
(812, 22, 'Buritis', 'RO'),
(813, 25, 'Buritizal', 'SP'),
(814, 13, 'Buritizeiro', 'MG'),
(815, 21, 'Butiá', 'RS'),
(816, 4, 'Caapiranga', 'AM'),
(817, 15, 'Caaporã', 'PB'),
(818, 12, 'Caarapó', 'MS'),
(819, 5, 'Caatiba', 'BA'),
(820, 15, 'Cabaceiras', 'PB'),
(821, 5, 'Cabaceiras do Paraguaçu', 'BA'),
(822, 13, 'Cabeceira Grande', 'MG'),
(823, 9, 'Cabeceiras', 'GO'),
(824, 18, 'Cabeceiras do Piauí', 'PI'),
(825, 15, 'Cabedelo', 'PB'),
(826, 22, 'Cabixi', 'RO'),
(827, 17, 'Cabo de Santo Agostinho', 'PE'),
(828, 19, 'Cabo Frio', 'RJ'),
(829, 13, 'Cabo Verde', 'MG'),
(830, 25, 'Cabrália Paulista', 'SP'),
(831, 25, 'Cabreúva', 'SP'),
(832, 17, 'Cabrobó', 'PE'),
(833, 24, 'Caçador', 'SC'),
(834, 25, 'Caçapava', 'SP'),
(835, 21, 'Caçapava do Sul', 'RS'),
(836, 22, 'Cacaulândia', 'RO'),
(837, 21, 'Cacequi', 'RS'),
(838, 11, 'Cáceres', 'MT'),
(839, 5, 'Cachoeira', 'BA'),
(840, 9, 'Cachoeira Alta', 'GO'),
(841, 13, 'Cachoeira da Prata', 'MG'),
(842, 9, 'Cachoeira de Goiás', 'GO'),
(843, 13, 'Cachoeira de Minas', 'MG'),
(844, 13, 'Cachoeira de Pajeú', 'MG'),
(845, 14, 'Cachoeira do Arari', 'PA'),
(846, 14, 'Cachoeira do Piriá', 'PA'),
(847, 21, 'Cachoeira do Sul', 'RS'),
(848, 15, 'Cachoeira dos Índios', 'PB'),
(849, 9, 'Cachoeira Dourada', 'GO'),
(850, 13, 'Cachoeira Dourada', 'MG'),
(851, 10, 'Cachoeira Grande', 'MA'),
(852, 25, 'Cachoeira Paulista', 'SP'),
(853, 19, 'Cachoeiras de Macacu', 'RJ'),
(854, 17, 'Cachoeirinha', 'PE'),
(855, 21, 'Cachoeirinha', 'RS'),
(856, 27, 'Cachoeirinha', 'TO'),
(857, 8, 'Cachoeiro de Itapemirim', 'ES'),
(858, 15, 'Cacimba de Areia', 'PB'),
(859, 15, 'Cacimba de Dentro', 'PB'),
(860, 15, 'Cacimbas', 'PB'),
(861, 2, 'Cacimbinhas', 'AL'),
(862, 21, 'Cacique Doble', 'RS'),
(863, 22, 'Cacoal', 'RO'),
(864, 25, 'Caconde', 'SP'),
(865, 9, 'Caçu', 'GO'),
(866, 5, 'Caculé', 'BA'),
(867, 5, 'Caém', 'BA'),
(868, 13, 'Caetanópolis', 'MG'),
(869, 5, 'Caetanos', 'BA'),
(870, 13, 'Caeté', 'MG'),
(871, 17, 'Caetés', 'PE'),
(872, 5, 'Caetité', 'BA'),
(873, 5, 'Cafarnaum', 'BA'),
(874, 16, 'Cafeara', 'PR'),
(875, 16, 'Cafelândia', 'PR'),
(876, 25, 'Cafelândia', 'SP'),
(877, 16, 'Cafezal do Sul', 'PR'),
(878, 25, 'Caiabu', 'SP'),
(879, 13, 'Caiana', 'MG'),
(880, 9, 'Caiapônia', 'GO'),
(881, 21, 'Caibaté', 'RS'),
(882, 24, 'Caibi', 'SC'),
(883, 15, 'Caiçara', 'PB'),
(884, 21, 'Caiçara', 'RS'),
(885, 20, 'Caiçara do Norte', 'RN'),
(886, 20, 'Caiçara do Rio do Vento', 'RN'),
(887, 20, 'Caicó', 'RN'),
(888, 25, 'Caieiras', 'SP'),
(889, 5, 'Cairu', 'BA'),
(890, 25, 'Caiuá', 'SP'),
(891, 25, 'Cajamar', 'SP'),
(892, 10, 'Cajapió', 'MA'),
(893, 10, 'Cajari', 'MA'),
(894, 25, 'Cajati', 'SP'),
(895, 15, 'Cajazeiras', 'PB'),
(896, 18, 'Cajazeiras do Piauí', 'PI'),
(897, 15, 'Cajazeirinhas', 'PB'),
(898, 25, 'Cajobi', 'SP'),
(899, 2, 'Cajueiro', 'AL'),
(900, 18, 'Cajueiro da Praia', 'PI'),
(901, 13, 'Cajuri', 'MG'),
(902, 25, 'Cajuru', 'SP'),
(903, 17, 'Calçado', 'PE'),
(904, 3, 'Calçoene', 'AP'),
(905, 13, 'Caldas', 'MG'),
(906, 15, 'Caldas Brandão', 'PB'),
(907, 9, 'Caldas Novas', 'GO'),
(908, 9, 'Caldazinha', 'GO'),
(909, 5, 'Caldeirão Grande', 'BA'),
(910, 18, 'Caldeirão Grande do Piauí', 'PI'),
(911, 16, 'Califórnia', 'PR'),
(912, 24, 'Calmon', 'SC'),
(913, 17, 'Calumbi', 'PE'),
(914, 5, 'Camacan', 'BA'),
(915, 5, 'Camaçari', 'BA'),
(916, 13, 'Camacho', 'MG'),
(917, 15, 'Camalaú', 'PB'),
(918, 5, 'Camamu', 'BA'),
(919, 13, 'Camanducaia', 'MG'),
(920, 12, 'Camapuã', 'MS'),
(921, 21, 'Camaquã', 'RS'),
(922, 17, 'Camaragibe', 'PE'),
(923, 21, 'Camargo', 'RS'),
(924, 16, 'Cambará', 'PR'),
(925, 21, 'Cambará do Sul', 'RS'),
(926, 16, 'Cambé', 'PR'),
(927, 16, 'Cambira', 'PR'),
(928, 24, 'Camboriú', 'SC'),
(929, 19, 'Cambuci', 'RJ'),
(930, 13, 'Cambuí', 'MG'),
(931, 13, 'Cambuquira', 'MG'),
(932, 14, 'Cametá', 'PA'),
(933, 6, 'Camocim', 'CE'),
(934, 17, 'Camocim de São Félix', 'PE'),
(935, 13, 'Campanário', 'MG'),
(936, 13, 'Campanha', 'MG'),
(937, 2, 'Campestre', 'AL'),
(938, 13, 'Campestre', 'MG'),
(939, 21, 'Campestre da Serra', 'RS'),
(940, 9, 'Campestre de Goiás', 'GO'),
(941, 10, 'Campestre do Maranhão', 'MA'),
(942, 16, 'Campina da Lagoa', 'PR'),
(943, 21, 'Campina das Missões', 'RS'),
(944, 25, 'Campina do Monte Alegre', 'SP'),
(945, 16, 'Campina do Simão', 'PR'),
(946, 15, 'Campina Grande', 'PB'),
(947, 16, 'Campina Grande do Sul', 'PR'),
(948, 13, 'Campina Verde', 'MG'),
(949, 9, 'Campinaçu', 'GO'),
(950, 11, 'Campinápolis', 'MT'),
(951, 25, 'Campinas', 'SP'),
(952, 18, 'Campinas do Piauí', 'PI'),
(953, 21, 'Campinas do Sul', 'RS'),
(954, 9, 'Campinorte', 'GO'),
(955, 2, 'Campo Alegre', 'AL'),
(956, 24, 'Campo Alegre', 'SC'),
(957, 9, 'Campo Alegre de Goiás', 'GO'),
(958, 5, 'Campo Alegre de Lourdes', 'BA'),
(959, 18, 'Campo Alegre do Fidalgo', 'PI'),
(960, 13, 'Campo Azul', 'MG'),
(961, 13, 'Campo Belo', 'MG'),
(962, 24, 'Campo Belo do Sul', 'SC'),
(963, 21, 'Campo Bom', 'RS'),
(964, 16, 'Campo Bonito', 'PR'),
(965, 26, 'Campo do Brito', 'SE'),
(966, 13, 'Campo do Meio', 'MG'),
(967, 16, 'Campo do Tenente', 'PR'),
(968, 24, 'Campo Erê', 'SC'),
(969, 13, 'Campo Florido', 'MG'),
(970, 5, 'Campo Formoso', 'BA'),
(971, 2, 'Campo Grande', 'AL'),
(972, 12, 'Campo Grande', 'MS'),
(973, 18, 'Campo Grande do Piauí', 'PI'),
(974, 16, 'Campo Largo', 'PR'),
(975, 18, 'Campo Largo do Piauí', 'PI'),
(976, 9, 'Campo Limpo de Goiás', 'GO'),
(977, 25, 'Campo Limpo Paulista', 'SP'),
(978, 16, 'Campo Magro', 'PR'),
(979, 18, 'Campo Maior', 'PI'),
(980, 16, 'Campo Mourão', 'PR'),
(981, 21, 'Campo Novo', 'RS'),
(982, 22, 'Campo Novo de Rondônia', 'RO'),
(983, 11, 'Campo Novo do Parecis', 'MT'),
(984, 20, 'Campo Redondo', 'RN'),
(985, 11, 'Campo Verde', 'MT'),
(986, 13, 'Campos Altos', 'MG'),
(987, 9, 'Campos Belos', 'GO'),
(988, 21, 'Campos Borges', 'RS'),
(989, 11, 'Campos de Júlio', 'MT'),
(990, 25, 'Campos do Jordão', 'SP'),
(991, 19, 'Campos dos Goytacazes', 'RJ'),
(992, 13, 'Campos Gerais', 'MG'),
(993, 27, 'Campos Lindos', 'TO'),
(994, 24, 'Campos Novos', 'SC'),
(995, 25, 'Campos Novos Paulista', 'SP'),
(996, 6, 'Campos Sales', 'CE'),
(997, 9, 'Campos Verdes', 'GO'),
(998, 17, 'Camutanga', 'PE'),
(999, 13, 'Cana Verde', 'MG'),
(1000, 13, 'Canaã', 'MG'),
(1001, 14, 'Canaã dos Carajás', 'PA'),
(1002, 11, 'Canabrava do Norte', 'MT'),
(1003, 25, 'Cananéia', 'SP'),
(1004, 2, 'Canapi', 'AL'),
(1005, 5, 'Canápolis', 'BA'),
(1006, 13, 'Canápolis', 'MG'),
(1007, 5, 'Canarana', 'BA'),
(1008, 11, 'Canarana', 'MT'),
(1009, 25, 'Canas', 'SP'),
(1010, 18, 'Canavieira', 'PI'),
(1011, 5, 'Canavieiras', 'BA'),
(1012, 5, 'Candeal', 'BA'),
(1013, 5, 'Candeias', 'BA'),
(1014, 13, 'Candeias', 'MG'),
(1015, 22, 'Candeias do Jamari', 'RO'),
(1016, 21, 'Candelária', 'RS'),
(1017, 5, 'Candiba', 'BA'),
(1018, 16, 'Cândido de Abreu', 'PR'),
(1019, 21, 'Cândido Godói', 'RS'),
(1020, 10, 'Cândido Mendes', 'MA'),
(1021, 25, 'Cândido Mota', 'SP'),
(1022, 25, 'Cândido Rodrigues', 'SP'),
(1023, 5, 'Cândido Sales', 'BA'),
(1024, 21, 'Candiota', 'RS'),
(1025, 16, 'Candói', 'PR'),
(1026, 21, 'Canela', 'RS'),
(1027, 24, 'Canelinha', 'SC'),
(1028, 20, 'Canguaretama', 'RN'),
(1029, 21, 'Canguçu', 'RS'),
(1030, 26, 'Canhoba', 'SE'),
(1031, 17, 'Canhotinho', 'PE'),
(1032, 6, 'Canindé', 'CE'),
(1033, 26, 'Canindé de São Francisco', 'SE'),
(1034, 25, 'Canitar', 'SP'),
(1035, 21, 'Canoas', 'RS'),
(1036, 24, 'Canoinhas', 'SC'),
(1037, 5, 'Cansanção', 'BA'),
(1038, 23, 'Cantá', 'RR'),
(1039, 13, 'Cantagalo', 'MG'),
(1040, 16, 'Cantagalo', 'PR'),
(1041, 19, 'Cantagalo', 'RJ'),
(1042, 10, 'Cantanhede', 'MA'),
(1043, 18, 'Canto do Buriti', 'PI'),
(1044, 5, 'Canudos', 'BA'),
(1045, 21, 'Canudos do Vale', 'RS'),
(1046, 4, 'Canutama', 'AM'),
(1047, 14, 'Capanema', 'PA'),
(1048, 16, 'Capanema', 'PR'),
(1049, 24, 'Capão Alto', 'SC'),
(1050, 25, 'Capão Bonito', 'SP'),
(1051, 21, 'Capão Bonito do Sul', 'RS'),
(1052, 21, 'Capão da Canoa', 'RS'),
(1053, 21, 'Capão do Cipó', 'RS'),
(1054, 21, 'Capão do Leão', 'RS'),
(1055, 13, 'Caparaó', 'MG'),
(1056, 2, 'Capela', 'AL'),
(1057, 26, 'Capela', 'SE'),
(1058, 21, 'Capela de Santana', 'RS'),
(1059, 25, 'Capela do Alto', 'SP'),
(1060, 5, 'Capela do Alto Alegre', 'BA'),
(1061, 13, 'Capela Nova', 'MG'),
(1062, 13, 'Capelinha', 'MG'),
(1063, 13, 'Capetinga', 'MG'),
(1064, 15, 'Capim', 'PB'),
(1065, 13, 'Capim Branco', 'MG'),
(1066, 5, 'Capim Grosso', 'BA'),
(1067, 13, 'Capinópolis', 'MG'),
(1068, 24, 'Capinzal', 'SC'),
(1069, 10, 'Capinzal do Norte', 'MA'),
(1070, 6, 'Capistrano', 'CE'),
(1071, 21, 'Capitão', 'RS'),
(1072, 13, 'Capitão Andrade', 'MG'),
(1073, 18, 'Capitão de Campos', 'PI'),
(1074, 13, 'Capitão Enéas', 'MG'),
(1075, 18, 'Capitão Gervásio Oliveira', 'PI'),
(1076, 16, 'Capitão Leônidas Marques', 'PR'),
(1077, 14, 'Capitão Poço', 'PA'),
(1078, 13, 'Capitólio', 'MG'),
(1079, 25, 'Capivari', 'SP'),
(1080, 24, 'Capivari de Baixo', 'SC'),
(1081, 21, 'Capivari do Sul', 'RS'),
(1082, 1, 'Capixaba', 'AC'),
(1083, 17, 'Capoeiras', 'PE'),
(1084, 13, 'Caputira', 'MG'),
(1085, 21, 'Caraá', 'RS'),
(1086, 23, 'Caracaraí', 'RR'),
(1087, 12, 'Caracol', 'MS'),
(1088, 18, 'Caracol', 'PI'),
(1089, 25, 'Caraguatatuba', 'SP'),
(1090, 13, 'Caraí', 'MG'),
(1091, 5, 'Caraíbas', 'BA'),
(1092, 16, 'Carambeí', 'PR'),
(1093, 13, 'Caranaíba', 'MG'),
(1094, 13, 'Carandaí', 'MG'),
(1095, 13, 'Carangola', 'MG'),
(1096, 19, 'Carapebus', 'RJ'),
(1097, 25, 'Carapicuíba', 'SP'),
(1098, 13, 'Caratinga', 'MG'),
(1099, 4, 'Carauari', 'AM'),
(1100, 15, 'Caraúbas', 'PB'),
(1101, 20, 'Caraúbas', 'RN'),
(1102, 18, 'Caraúbas do Piauí', 'PI'),
(1103, 5, 'Caravelas', 'BA'),
(1104, 21, 'Carazinho', 'RS'),
(1105, 13, 'Carbonita', 'MG'),
(1106, 5, 'Cardeal da Silva', 'BA'),
(1107, 25, 'Cardoso', 'SP'),
(1108, 19, 'Cardoso Moreira', 'RJ'),
(1109, 13, 'Careaçu', 'MG'),
(1110, 4, 'Careiro', 'AM'),
(1111, 4, 'Careiro da Várzea', 'AM'),
(1112, 8, 'Cariacica', 'ES'),
(1113, 6, 'Caridade', 'CE'),
(1114, 18, 'Caridade do Piauí', 'PI'),
(1115, 5, 'Carinhanha', 'BA'),
(1116, 26, 'Carira', 'SE'),
(1117, 6, 'Cariré', 'CE'),
(1118, 27, 'Cariri do Tocantins', 'TO'),
(1119, 6, 'Caririaçu', 'CE'),
(1120, 6, 'Cariús', 'CE'),
(1121, 11, 'Carlinda', 'MT'),
(1122, 16, 'Carlópolis', 'PR'),
(1123, 21, 'Carlos Barbosa', 'RS'),
(1124, 13, 'Carlos Chagas', 'MG'),
(1125, 21, 'Carlos Gomes', 'RS'),
(1126, 13, 'Carmésia', 'MG'),
(1127, 19, 'Carmo', 'RJ'),
(1128, 13, 'Carmo da Cachoeira', 'MG'),
(1129, 13, 'Carmo da Mata', 'MG'),
(1130, 13, 'Carmo de Minas', 'MG'),
(1131, 13, 'Carmo do Cajuru', 'MG'),
(1132, 13, 'Carmo do Paranaíba', 'MG'),
(1133, 13, 'Carmo do Rio Claro', 'MG'),
(1134, 9, 'Carmo do Rio Verde', 'GO'),
(1135, 27, 'Carmolândia', 'TO'),
(1136, 26, 'Carmópolis', 'SE'),
(1137, 13, 'Carmópolis de Minas', 'MG'),
(1138, 17, 'Carnaíba', 'PE'),
(1139, 20, 'Carnaúba dos Dantas', 'RN'),
(1140, 20, 'Carnaubais', 'RN'),
(1141, 6, 'Carnaubal', 'CE'),
(1142, 17, 'Carnaubeira da Penha', 'PE'),
(1143, 13, 'Carneirinho', 'MG'),
(1144, 2, 'Carneiros', 'AL'),
(1145, 23, 'Caroebe', 'RR'),
(1146, 10, 'Carolina', 'MA'),
(1147, 17, 'Carpina', 'PE'),
(1148, 13, 'Carrancas', 'MG'),
(1149, 15, 'Carrapateira', 'PB'),
(1150, 27, 'Carrasco Bonito', 'TO'),
(1151, 17, 'Caruaru', 'PE'),
(1152, 10, 'Carutapera', 'MA'),
(1153, 13, 'Carvalhópolis', 'MG'),
(1154, 13, 'Carvalhos', 'MG'),
(1155, 25, 'Casa Branca', 'SP'),
(1156, 13, 'Casa Grande', 'MG'),
(1157, 5, 'Casa Nova', 'BA'),
(1158, 21, 'Casca', 'RS'),
(1159, 13, 'Cascalho Rico', 'MG'),
(1160, 6, 'Cascavel', 'CE'),
(1161, 16, 'Cascavel', 'PR'),
(1162, 27, 'Caseara', 'TO'),
(1163, 21, 'Caseiros', 'RS'),
(1164, 19, 'Casimiro de Abreu', 'RJ'),
(1165, 17, 'Casinhas', 'PE'),
(1166, 15, 'Casserengue', 'PB'),
(1167, 13, 'Cássia', 'MG'),
(1168, 25, 'Cássia dos Coqueiros', 'SP'),
(1169, 12, 'Cassilândia', 'MS'),
(1170, 14, 'Castanhal', 'PA'),
(1171, 11, 'Castanheira', 'MT'),
(1172, 22, 'Castanheiras', 'RO'),
(1173, 9, 'Castelândia', 'GO'),
(1174, 8, 'Castelo', 'ES'),
(1175, 18, 'Castelo do Piauí', 'PI'),
(1176, 25, 'Castilho', 'SP'),
(1177, 16, 'Castro', 'PR'),
(1178, 5, 'Castro Alves', 'BA'),
(1179, 13, 'Cataguases', 'MG'),
(1180, 9, 'Catalão', 'GO'),
(1181, 25, 'Catanduva', 'SP'),
(1182, 16, 'Catanduvas', 'PR'),
(1183, 24, 'Catanduvas', 'SC'),
(1184, 6, 'Catarina', 'CE'),
(1185, 13, 'Catas Altas', 'MG'),
(1186, 13, 'Catas Altas da Noruega', 'MG'),
(1187, 17, 'Catende', 'PE'),
(1188, 25, 'Catiguá', 'SP'),
(1189, 15, 'Catingueira', 'PB'),
(1190, 5, 'Catolândia', 'BA'),
(1191, 15, 'Catolé do Rocha', 'PB'),
(1192, 5, 'Catu', 'BA'),
(1193, 21, 'Catuípe', 'RS'),
(1194, 13, 'Catuji', 'MG'),
(1195, 6, 'Catunda', 'CE'),
(1196, 9, 'Caturaí', 'GO'),
(1197, 5, 'Caturama', 'BA'),
(1198, 15, 'Caturité', 'PB'),
(1199, 13, 'Catuti', 'MG'),
(1200, 6, 'Caucaia', 'CE'),
(1201, 9, 'Cavalcante', 'GO'),
(1202, 13, 'Caxambu', 'MG'),
(1203, 24, 'Caxambu do Sul', 'SC'),
(1204, 10, 'Caxias', 'MA'),
(1205, 21, 'Caxias do Sul', 'RS'),
(1206, 18, 'Caxingó', 'PI'),
(1207, 20, 'Ceará-Mirim', 'RN'),
(1208, 10, 'Cedral', 'MA'),
(1209, 25, 'Cedral', 'SP'),
(1210, 6, 'Cedro', 'CE'),
(1211, 17, 'Cedro', 'PE'),
(1212, 26, 'Cedro de São João', 'SE'),
(1213, 13, 'Cedro do Abaeté', 'MG'),
(1214, 24, 'Celso Ramos', 'SC'),
(1215, 21, 'Centenário', 'RS'),
(1216, 27, 'Centenário', 'TO'),
(1217, 16, 'Centenário do Sul', 'PR'),
(1218, 5, 'Central', 'BA'),
(1219, 13, 'Central de Minas', 'MG'),
(1220, 10, 'Central do Maranhão', 'MA'),
(1221, 13, 'Centralina', 'MG'),
(1222, 10, 'Centro do Guilherme', 'MA'),
(1223, 10, 'Centro Novo do Maranhão', 'MA'),
(1224, 22, 'Cerejeiras', 'RO'),
(1225, 9, 'Ceres', 'GO'),
(1226, 25, 'Cerqueira César', 'SP'),
(1227, 25, 'Cerquilho', 'SP'),
(1228, 21, 'Cerrito', 'RS'),
(1229, 16, 'Cerro Azul', 'PR'),
(1230, 21, 'Cerro Branco', 'RS'),
(1231, 20, 'Cerro Corá', 'RN'),
(1232, 21, 'Cerro Grande', 'RS'),
(1233, 21, 'Cerro Grande do Sul', 'RS'),
(1234, 21, 'Cerro Largo', 'RS'),
(1235, 24, 'Cerro Negro', 'SC'),
(1236, 25, 'Cesário Lange', 'SP'),
(1237, 16, 'Céu Azul', 'PR'),
(1238, 9, 'Cezarina', 'GO'),
(1239, 17, 'Chã de Alegria', 'PE'),
(1240, 17, 'Chã Grande', 'PE'),
(1241, 2, 'Chã Preta', 'AL'),
(1242, 13, 'Chácara', 'MG'),
(1243, 13, 'Chalé', 'MG'),
(1244, 21, 'Chapada', 'RS'),
(1245, 27, 'Chapada da Natividade', 'TO'),
(1246, 27, 'Chapada de Areia', 'TO'),
(1247, 13, 'Chapada do Norte', 'MG'),
(1248, 11, 'Chapada dos Guimarães', 'MT'),
(1249, 13, 'Chapada Gaúcha', 'MG'),
(1250, 9, 'Chapadão do Céu', 'GO'),
(1251, 24, 'Chapadão do Lageado', 'SC'),
(1252, 12, 'Chapadão do Sul', 'MS'),
(1253, 10, 'Chapadinha', 'MA'),
(1254, 24, 'Chapecó', 'SC'),
(1255, 25, 'Charqueada', 'SP'),
(1256, 21, 'Charqueadas', 'RS'),
(1257, 21, 'Charrua', 'RS'),
(1258, 6, 'Chaval', 'CE'),
(1259, 25, 'Chavantes', 'SP'),
(1260, 14, 'Chaves', 'PA'),
(1261, 13, 'Chiador', 'MG'),
(1262, 21, 'Chiapetta', 'RS'),
(1263, 16, 'Chopinzinho', 'PR'),
(1264, 6, 'Choró', 'CE'),
(1265, 6, 'Chorozinho', 'CE'),
(1266, 5, 'Chorrochó', 'BA'),
(1267, 21, 'Chuí', 'RS'),
(1268, 22, 'Chupinguaia', 'RO'),
(1269, 21, 'Chuvisca', 'RS'),
(1270, 16, 'Cianorte', 'PR'),
(1271, 5, 'Cícero Dantas', 'BA'),
(1272, 16, 'Cidade Gaúcha', 'PR'),
(1273, 9, 'Cidade Ocidental', 'GO'),
(1274, 10, 'Cidelândia', 'MA'),
(1275, 21, 'Cidreira', 'RS'),
(1276, 5, 'Cipó', 'BA'),
(1277, 13, 'Cipotânea', 'MG'),
(1278, 21, 'Ciríaco', 'RS'),
(1279, 13, 'Claraval', 'MG'),
(1280, 13, 'Claro dos Poções', 'MG'),
(1281, 11, 'Cláudia', 'MT'),
(1282, 13, 'Cláudio', 'MG'),
(1283, 25, 'Clementina', 'SP'),
(1284, 16, 'Clevelândia', 'PR'),
(1285, 5, 'Coaraci', 'BA'),
(1286, 4, 'Coari', 'AM'),
(1287, 18, 'Cocal', 'PI'),
(1288, 18, 'Cocal de Telha', 'PI'),
(1289, 24, 'Cocal do Sul', 'SC'),
(1290, 18, 'Cocal dos Alves', 'PI'),
(1291, 11, 'Cocalinho', 'MT'),
(1292, 9, 'Cocalzinho de Goiás', 'GO'),
(1293, 5, 'Cocos', 'BA'),
(1294, 4, 'Codajás', 'AM'),
(1295, 10, 'Codó', 'MA'),
(1296, 10, 'Coelho Neto', 'MA'),
(1297, 13, 'Coimbra', 'MG'),
(1298, 2, 'Coité do Nóia', 'AL'),
(1299, 18, 'Coivaras', 'PI'),
(1300, 14, 'Colares', 'PA'),
(1301, 8, 'Colatina', 'ES'),
(1302, 11, 'Colíder', 'MT'),
(1303, 25, 'Colina', 'SP'),
(1304, 10, 'Colinas', 'MA'),
(1305, 21, 'Colinas', 'RS'),
(1306, 9, 'Colinas do Sul', 'GO'),
(1307, 27, 'Colinas do Tocantins', 'TO'),
(1308, 27, 'Colméia', 'TO'),
(1309, 11, 'Colniza', 'MT'),
(1310, 25, 'Colômbia', 'SP'),
(1311, 16, 'Colombo', 'PR'),
(1312, 18, 'Colônia do Gurguéia', 'PI'),
(1313, 18, 'Colônia do Piauí', 'PI'),
(1314, 2, 'Colônia Leopoldina', 'AL'),
(1315, 16, 'Colorado', 'PR'),
(1316, 21, 'Colorado', 'RS'),
(1317, 22, 'Colorado do Oeste', 'RO'),
(1318, 13, 'Coluna', 'MG'),
(1319, 27, 'Combinado', 'TO'),
(1320, 13, 'Comendador Gomes', 'MG'),
(1321, 19, 'Comendador Levy Gasparian', 'RJ'),
(1322, 13, 'Comercinho', 'MG'),
(1323, 11, 'Comodoro', 'MT'),
(1324, 15, 'Conceição', 'PB'),
(1325, 13, 'Conceição da Aparecida', 'MG'),
(1326, 8, 'Conceição da Barra', 'ES'),
(1327, 13, 'Conceição da Barra de Minas', 'MG'),
(1328, 5, 'Conceição da Feira', 'BA'),
(1329, 13, 'Conceição das Alagoas', 'MG'),
(1330, 13, 'Conceição das Pedras', 'MG'),
(1331, 13, 'Conceição de Ipanema', 'MG'),
(1332, 19, 'Conceição de Macabu', 'RJ'),
(1333, 5, 'Conceição do Almeida', 'BA'),
(1334, 14, 'Conceição do Araguaia', 'PA'),
(1335, 18, 'Conceição do Canindé', 'PI'),
(1336, 8, 'Conceição do Castelo', 'ES'),
(1337, 5, 'Conceição do Coité', 'BA'),
(1338, 5, 'Conceição do Jacuípe', 'BA'),
(1339, 10, 'Conceição do Lago-Açu', 'MA'),
(1340, 13, 'Conceição do Mato Dentro', 'MG'),
(1341, 13, 'Conceição do Pará', 'MG'),
(1342, 13, 'Conceição do Rio Verde', 'MG'),
(1343, 27, 'Conceição do Tocantins', 'TO'),
(1344, 13, 'Conceição dos Ouros', 'MG'),
(1345, 25, 'Conchal', 'SP'),
(1346, 25, 'Conchas', 'SP'),
(1347, 24, 'Concórdia', 'SC'),
(1348, 14, 'Concórdia do Pará', 'PA'),
(1349, 15, 'Condado', 'PB'),
(1350, 17, 'Condado', 'PE'),
(1351, 5, 'Conde', 'BA'),
(1352, 15, 'Conde', 'PB'),
(1353, 5, 'Condeúba', 'BA'),
(1354, 21, 'Condor', 'RS'),
(1355, 13, 'Cônego Marinho', 'MG'),
(1356, 13, 'Confins', 'MG'),
(1357, 11, 'Confresa', 'MT'),
(1358, 15, 'Congo', 'PB'),
(1359, 13, 'Congonhal', 'MG'),
(1360, 13, 'Congonhas', 'MG'),
(1361, 13, 'Congonhas do Norte', 'MG'),
(1362, 16, 'Congonhinhas', 'PR'),
(1363, 13, 'Conquista', 'MG'),
(1364, 11, 'Conquista D\'Oeste', 'MT'),
(1365, 13, 'Conselheiro Lafaiete', 'MG'),
(1366, 16, 'Conselheiro Mairinck', 'PR'),
(1367, 13, 'Conselheiro Pena', 'MG'),
(1368, 13, 'Consolação', 'MG'),
(1369, 21, 'Constantina', 'RS'),
(1370, 13, 'Contagem', 'MG'),
(1371, 16, 'Contenda', 'PR'),
(1372, 5, 'Contendas do Sincorá', 'BA'),
(1373, 13, 'Coqueiral', 'MG'),
(1374, 21, 'Coqueiro Baixo', 'RS'),
(1375, 2, 'Coqueiro Seco', 'AL'),
(1376, 21, 'Coqueiros do Sul', 'RS'),
(1377, 13, 'Coração de Jesus', 'MG'),
(1378, 5, 'Coração de Maria', 'BA'),
(1379, 16, 'Corbélia', 'PR'),
(1380, 19, 'Cordeiro', 'RJ'),
(1381, 25, 'Cordeirópolis', 'SP'),
(1382, 5, 'Cordeiros', 'BA'),
(1383, 24, 'Cordilheira Alta', 'SC'),
(1384, 13, 'Cordisburgo', 'MG'),
(1385, 13, 'Cordislândia', 'MG'),
(1386, 6, 'Coreaú', 'CE'),
(1387, 15, 'Coremas', 'PB'),
(1388, 12, 'Corguinho', 'MS'),
(1389, 5, 'Coribe', 'BA'),
(1390, 13, 'Corinto', 'MG'),
(1391, 16, 'Cornélio Procópio', 'PR'),
(1392, 13, 'Coroaci', 'MG'),
(1393, 25, 'Coroados', 'SP'),
(1394, 10, 'Coroatá', 'MA'),
(1395, 13, 'Coromandel', 'MG'),
(1396, 21, 'Coronel Barros', 'RS'),
(1397, 21, 'Coronel Bicaco', 'RS'),
(1398, 16, 'Coronel Domingos Soares', 'PR'),
(1399, 20, 'Coronel Ezequiel', 'RN'),
(1400, 13, 'Coronel Fabriciano', 'MG'),
(1401, 24, 'Coronel Freitas', 'SC'),
(1402, 20, 'Coronel João Pessoa', 'RN'),
(1403, 5, 'Coronel João Sá', 'BA'),
(1404, 18, 'Coronel José Dias', 'PI'),
(1405, 25, 'Coronel Macedo', 'SP'),
(1406, 24, 'Coronel Martins', 'SC'),
(1407, 13, 'Coronel Murta', 'MG'),
(1408, 13, 'Coronel Pacheco', 'MG'),
(1409, 21, 'Coronel Pilar', 'RS'),
(1410, 12, 'Coronel Sapucaia', 'MS'),
(1411, 16, 'Coronel Vivida', 'PR'),
(1412, 13, 'Coronel Xavier Chaves', 'MG'),
(1413, 13, 'Córrego Danta', 'MG'),
(1414, 13, 'Córrego do Bom Jesus', 'MG'),
(1415, 9, 'Córrego do Ouro', 'GO'),
(1416, 13, 'Córrego Fundo', 'MG'),
(1417, 13, 'Córrego Novo', 'MG'),
(1418, 24, 'Correia Pinto', 'SC'),
(1419, 18, 'Corrente', 'PI'),
(1420, 17, 'Correntes', 'PE'),
(1421, 5, 'Correntina', 'BA'),
(1422, 17, 'Cortês', 'PE'),
(1423, 12, 'Corumbá', 'MS'),
(1424, 9, 'Corumbá de Goiás', 'GO'),
(1425, 9, 'Corumbaíba', 'GO'),
(1426, 25, 'Corumbataí', 'SP'),
(1427, 16, 'Corumbataí do Sul', 'PR'),
(1428, 22, 'Corumbiara', 'RO'),
(1429, 24, 'Corupá', 'SC'),
(1430, 2, 'Coruripe', 'AL'),
(1431, 25, 'Cosmópolis', 'SP'),
(1432, 25, 'Cosmorama', 'SP'),
(1433, 22, 'Costa Marques', 'RO'),
(1434, 12, 'Costa Rica', 'MS'),
(1435, 5, 'Cotegipe', 'BA'),
(1436, 25, 'Cotia', 'SP'),
(1437, 21, 'Cotiporã', 'RS'),
(1438, 11, 'Cotriguaçu', 'MT'),
(1439, 13, 'Couto de Magalhães de Minas', 'MG'),
(1440, 27, 'Couto Magalhães', 'TO'),
(1441, 21, 'Coxilha', 'RS'),
(1442, 12, 'Coxim', 'MS'),
(1443, 15, 'Coxixola', 'PB'),
(1444, 2, 'Craíbas', 'AL'),
(1445, 6, 'Crateús', 'CE'),
(1446, 6, 'Crato', 'CE'),
(1447, 25, 'Cravinhos', 'SP'),
(1448, 5, 'Cravolândia', 'BA'),
(1449, 24, 'Criciúma', 'SC'),
(1450, 13, 'Crisólita', 'MG'),
(1451, 5, 'Crisópolis', 'BA'),
(1452, 21, 'Crissiumal', 'RS'),
(1453, 13, 'Cristais', 'MG'),
(1454, 25, 'Cristais Paulista', 'SP'),
(1455, 21, 'Cristal', 'RS'),
(1456, 21, 'Cristal do Sul', 'RS'),
(1457, 27, 'Cristalândia', 'TO'),
(1458, 18, 'Cristalândia do Piauí', 'PI'),
(1459, 13, 'Cristália', 'MG'),
(1460, 9, 'Cristalina', 'GO'),
(1461, 13, 'Cristiano Otoni', 'MG'),
(1462, 9, 'Cristianópolis', 'GO'),
(1463, 13, 'Cristina', 'MG'),
(1464, 26, 'Cristinápolis', 'SE'),
(1465, 18, 'Cristino Castro', 'PI'),
(1466, 5, 'Cristópolis', 'BA'),
(1467, 9, 'Crixás', 'GO'),
(1468, 27, 'Crixás do Tocantins', 'TO'),
(1469, 6, 'Croatá', 'CE'),
(1470, 9, 'Cromínia', 'GO'),
(1471, 13, 'Crucilândia', 'MG'),
(1472, 6, 'Cruz', 'CE'),
(1473, 21, 'Cruz Alta', 'RS'),
(1474, 5, 'Cruz das Almas', 'BA'),
(1475, 15, 'Cruz do Espírito Santo', 'PB'),
(1476, 16, 'Cruz Machado', 'PR'),
(1477, 25, 'Cruzália', 'SP'),
(1478, 21, 'Cruzaltense', 'RS'),
(1479, 25, 'Cruzeiro', 'SP'),
(1480, 13, 'Cruzeiro da Fortaleza', 'MG'),
(1481, 16, 'Cruzeiro do Iguaçu', 'PR'),
(1482, 16, 'Cruzeiro do Oeste', 'PR'),
(1483, 1, 'Cruzeiro do Sul', 'AC'),
(1484, 16, 'Cruzeiro do Sul', 'PR'),
(1485, 21, 'Cruzeiro do Sul', 'RS'),
(1486, 20, 'Cruzeta', 'RN'),
(1487, 13, 'Cruzília', 'MG'),
(1488, 16, 'Cruzmaltina', 'PR'),
(1489, 25, 'Cubatão', 'SP'),
(1490, 15, 'Cubati', 'PB'),
(1491, 11, 'Cuiabá', 'MT'),
(1492, 15, 'Cuité', 'PB'),
(1493, 15, 'Cuité de Mamanguape', 'PB'),
(1494, 15, 'Cuitegi', 'PB'),
(1495, 22, 'Cujubim', 'RO'),
(1496, 9, 'Cumari', 'GO'),
(1497, 17, 'Cumaru', 'PE'),
(1498, 14, 'Cumaru do Norte', 'PA'),
(1499, 26, 'Cumbe', 'SE'),
(1500, 25, 'Cunha', 'SP'),
(1501, 24, 'Cunha Porã', 'SC'),
(1502, 24, 'Cunhataí', 'SC'),
(1503, 13, 'Cuparaque', 'MG'),
(1504, 17, 'Cupira', 'PE'),
(1505, 5, 'Curaçá', 'BA'),
(1506, 18, 'Curimatá', 'PI'),
(1507, 14, 'Curionópolis', 'PA'),
(1508, 16, 'Curitiba', 'PR'),
(1509, 24, 'Curitibanos', 'SC'),
(1510, 16, 'Curiúva', 'PR'),
(1511, 18, 'Currais', 'PI'),
(1512, 20, 'Currais Novos', 'RN'),
(1513, 15, 'Curral de Cima', 'PB'),
(1514, 13, 'Curral de Dentro', 'MG'),
(1515, 18, 'Curral Novo do Piauí', 'PI'),
(1516, 15, 'Curral Velho', 'PB'),
(1517, 14, 'Curralinho', 'PA'),
(1518, 18, 'Curralinhos', 'PI'),
(1519, 14, 'Curuá', 'PA'),
(1520, 14, 'Curuçá', 'PA'),
(1521, 10, 'Cururupu', 'MA'),
(1522, 11, 'Curvelândia', 'MT'),
(1523, 13, 'Curvelo', 'MG'),
(1524, 17, 'Custódia', 'PE'),
(1525, 3, 'Cutias', 'AP'),
(1526, 9, 'Damianópolis', 'GO'),
(1527, 15, 'Damião', 'PB'),
(1528, 9, 'Damolândia', 'GO'),
(1529, 27, 'Darcinópolis', 'TO'),
(1530, 5, 'Dário Meira', 'BA'),
(1531, 13, 'Datas', 'MG'),
(1532, 21, 'David Canabarro', 'RS'),
(1533, 9, 'Davinópolis', 'GO'),
(1534, 10, 'Davinópolis', 'MA'),
(1535, 13, 'Delfim Moreira', 'MG'),
(1536, 13, 'Delfinópolis', 'MG'),
(1537, 2, 'Delmiro Gouveia', 'AL'),
(1538, 13, 'Delta', 'MG'),
(1539, 18, 'Demerval Lobão', 'PI'),
(1540, 11, 'Denise', 'MT'),
(1541, 12, 'Deodápolis', 'MS'),
(1542, 6, 'Deputado Irapuan Pinheiro', 'CE'),
(1543, 21, 'Derrubadas', 'RS'),
(1544, 25, 'Descalvado', 'SP'),
(1545, 24, 'Descanso', 'SC'),
(1546, 13, 'Descoberto', 'MG'),
(1547, 15, 'Desterro', 'PB'),
(1548, 13, 'Desterro de Entre Rios', 'MG'),
(1549, 13, 'Desterro do Melo', 'MG'),
(1550, 21, 'Dezesseis de Novembro', 'RS'),
(1551, 25, 'Diadema', 'SP'),
(1552, 15, 'Diamante', 'PB'),
(1553, 16, 'Diamante do Norte', 'PR'),
(1554, 16, 'Diamante do Sul', 'PR'),
(1555, 16, 'Diamante D\'Oeste', 'PR'),
(1556, 13, 'Diamantina', 'MG'),
(1557, 11, 'Diamantino', 'MT'),
(1558, 27, 'Dianópolis', 'TO'),
(1559, 5, 'Dias d\'Ávila', 'BA'),
(1560, 21, 'Dilermando de Aguiar', 'RS'),
(1561, 13, 'Diogo de Vasconcelos', 'MG'),
(1562, 13, 'Dionísio', 'MG'),
(1563, 24, 'Dionísio Cerqueira', 'SC'),
(1564, 9, 'Diorama', 'GO'),
(1565, 25, 'Dirce Reis', 'SP'),
(1566, 18, 'Dirceu Arcoverde', 'PI'),
(1567, 26, 'Divina Pastora', 'SE'),
(1568, 13, 'Divinésia', 'MG'),
(1569, 13, 'Divino', 'MG'),
(1570, 13, 'Divino das Laranjeiras', 'MG'),
(1571, 8, 'Divino de São Lourenço', 'ES'),
(1572, 25, 'Divinolândia', 'SP'),
(1573, 13, 'Divinolândia de Minas', 'MG'),
(1574, 13, 'Divinópolis', 'MG'),
(1575, 9, 'Divinópolis de Goiás', 'GO'),
(1576, 27, 'Divinópolis do Tocantins', 'TO'),
(1577, 13, 'Divisa Alegre', 'MG'),
(1578, 13, 'Divisa Nova', 'MG'),
(1579, 13, 'Divisópolis', 'MG'),
(1580, 25, 'Dobrada', 'SP'),
(1581, 25, 'Dois Córregos', 'SP'),
(1582, 21, 'Dois Irmãos', 'RS'),
(1583, 21, 'Dois Irmãos das Missões', 'RS'),
(1584, 12, 'Dois Irmãos do Buriti', 'MS'),
(1585, 27, 'Dois Irmãos do Tocantins', 'TO'),
(1586, 21, 'Dois Lajeados', 'RS'),
(1587, 2, 'Dois Riachos', 'AL'),
(1588, 16, 'Dois Vizinhos', 'PR'),
(1589, 25, 'Dolcinópolis', 'SP'),
(1590, 11, 'Dom Aquino', 'MT'),
(1591, 5, 'Dom Basílio', 'BA'),
(1592, 13, 'Dom Bosco', 'MG'),
(1593, 13, 'Dom Cavati', 'MG'),
(1594, 14, 'Dom Eliseu', 'PA'),
(1595, 18, 'Dom Expedito Lopes', 'PI'),
(1596, 21, 'Dom Feliciano', 'RS'),
(1597, 18, 'Dom Inocêncio', 'PI'),
(1598, 13, 'Dom Joaquim', 'MG'),
(1599, 5, 'Dom Macedo Costa', 'BA'),
(1600, 21, 'Dom Pedrito', 'RS'),
(1601, 10, 'Dom Pedro', 'MA'),
(1602, 21, 'Dom Pedro de Alcântara', 'RS'),
(1603, 13, 'Dom Silvério', 'MG'),
(1604, 13, 'Dom Viçoso', 'MG'),
(1605, 8, 'Domingos Martins', 'ES'),
(1606, 18, 'Domingos Mourão', 'PI'),
(1607, 24, 'Dona Emma', 'SC'),
(1608, 13, 'Dona Eusébia', 'MG'),
(1609, 21, 'Dona Francisca', 'RS'),
(1610, 15, 'Dona Inês', 'PB'),
(1611, 13, 'Dores de Campos', 'MG'),
(1612, 13, 'Dores de Guanhães', 'MG'),
(1613, 13, 'Dores do Indaiá', 'MG'),
(1614, 8, 'Dores do Rio Preto', 'ES'),
(1615, 13, 'Dores do Turvo', 'MG'),
(1616, 13, 'Doresópolis', 'MG'),
(1617, 17, 'Dormentes', 'PE'),
(1618, 12, 'Douradina', 'MS'),
(1619, 16, 'Douradina', 'PR'),
(1620, 25, 'Dourado', 'SP'),
(1621, 13, 'Douradoquara', 'MG'),
(1622, 12, 'Dourados', 'MS'),
(1623, 16, 'Doutor Camargo', 'PR'),
(1624, 21, 'Doutor Maurício Cardoso', 'RS'),
(1625, 24, 'Doutor Pedrinho', 'SC'),
(1626, 21, 'Doutor Ricardo', 'RS'),
(1627, 20, 'Doutor Severiano', 'RN'),
(1628, 16, 'Doutor Ulysses', 'PR'),
(1629, 9, 'Doverlândia', 'GO'),
(1630, 25, 'Dracena', 'SP'),
(1631, 25, 'Duartina', 'SP'),
(1632, 19, 'Duas Barras', 'RJ'),
(1633, 15, 'Duas Estradas', 'PB'),
(1634, 27, 'Dueré', 'TO'),
(1635, 25, 'Dumont', 'SP'),
(1636, 10, 'Duque Bacelar', 'MA'),
(1637, 19, 'Duque de Caxias', 'RJ'),
(1638, 13, 'Durandé', 'MG'),
(1639, 25, 'Echaporã', 'SP'),
(1640, 8, 'Ecoporanga', 'ES'),
(1641, 9, 'Edealina', 'GO'),
(1642, 9, 'Edéia', 'GO'),
(1643, 4, 'Eirunepé', 'AM');
INSERT INTO `app_cidades` (`cidade_id`, `estado_id`, `cidade_nome`, `cidade_uf`) VALUES
(1644, 12, 'Eldorado', 'MS'),
(1645, 25, 'Eldorado', 'SP'),
(1646, 21, 'Eldorado do Sul', 'RS'),
(1647, 14, 'Eldorado dos Carajás', 'PA'),
(1648, 18, 'Elesbão Veloso', 'PI'),
(1649, 25, 'Elias Fausto', 'SP'),
(1650, 18, 'Eliseu Martins', 'PI'),
(1651, 25, 'Elisiário', 'SP'),
(1652, 5, 'Elísio Medrado', 'BA'),
(1653, 13, 'Elói Mendes', 'MG'),
(1654, 15, 'Emas', 'PB'),
(1655, 25, 'Embaúba', 'SP'),
(1656, 25, 'Embu', 'SP'),
(1657, 25, 'Embu-Guaçu', 'SP'),
(1658, 25, 'Emilianópolis', 'SP'),
(1659, 21, 'Encantado', 'RS'),
(1660, 20, 'Encanto', 'RN'),
(1661, 5, 'Encruzilhada', 'BA'),
(1662, 21, 'Encruzilhada do Sul', 'RS'),
(1663, 16, 'Enéas Marques', 'PR'),
(1664, 16, 'Engenheiro Beltrão', 'PR'),
(1665, 13, 'Engenheiro Caldas', 'MG'),
(1666, 25, 'Engenheiro Coelho', 'SP'),
(1667, 13, 'Engenheiro Navarro', 'MG'),
(1668, 19, 'Engenheiro Paulo de Frontin', 'RJ'),
(1669, 21, 'Engenho Velho', 'RS'),
(1670, 13, 'Entre Folhas', 'MG'),
(1671, 5, 'Entre Rios', 'BA'),
(1672, 24, 'Entre Rios', 'SC'),
(1673, 13, 'Entre Rios de Minas', 'MG'),
(1674, 16, 'Entre Rios do Oeste', 'PR'),
(1675, 21, 'Entre Rios do Sul', 'RS'),
(1676, 21, 'Entre-Ijuís', 'RS'),
(1677, 4, 'Envira', 'AM'),
(1678, 1, 'Epitaciolândia', 'AC'),
(1679, 20, 'Equador', 'RN'),
(1680, 21, 'Erebango', 'RS'),
(1681, 21, 'Erechim', 'RS'),
(1682, 6, 'Ererê', 'CE'),
(1683, 5, 'Érico Cardoso', 'BA'),
(1684, 24, 'Ermo', 'SC'),
(1685, 21, 'Ernestina', 'RS'),
(1686, 21, 'Erval Grande', 'RS'),
(1687, 21, 'Erval Seco', 'RS'),
(1688, 24, 'Erval Velho', 'SC'),
(1689, 13, 'Ervália', 'MG'),
(1690, 17, 'Escada', 'PE'),
(1691, 21, 'Esmeralda', 'RS'),
(1692, 13, 'Esmeraldas', 'MG'),
(1693, 13, 'Espera Feliz', 'MG'),
(1694, 15, 'Esperança', 'PB'),
(1695, 21, 'Esperança do Sul', 'RS'),
(1696, 16, 'Esperança Nova', 'PR'),
(1697, 18, 'Esperantina', 'PI'),
(1698, 27, 'Esperantina', 'TO'),
(1699, 10, 'Esperantinópolis', 'MA'),
(1700, 16, 'Espigão Alto do Iguaçu', 'PR'),
(1701, 22, 'Espigão d\'Oeste', 'RO'),
(1702, 13, 'Espinosa', 'MG'),
(1703, 20, 'Espírito Santo', 'RN'),
(1704, 13, 'Espírito Santo do Dourado', 'MG'),
(1705, 25, 'Espírito Santo do Pinhal', 'SP'),
(1706, 25, 'Espírito Santo do Turvo', 'SP'),
(1707, 5, 'Esplanada', 'BA'),
(1708, 21, 'Espumoso', 'RS'),
(1709, 21, 'Estação', 'RS'),
(1710, 26, 'Estância', 'SE'),
(1711, 21, 'Estância Velha', 'RS'),
(1712, 21, 'Esteio', 'RS'),
(1713, 13, 'Estiva', 'MG'),
(1714, 25, 'Estiva Gerbi', 'SP'),
(1715, 10, 'Estreito', 'MA'),
(1716, 21, 'Estrela', 'RS'),
(1717, 13, 'Estrela Dalva', 'MG'),
(1718, 2, 'Estrela de Alagoas', 'AL'),
(1719, 13, 'Estrela do Indaiá', 'MG'),
(1720, 9, 'Estrela do Norte', 'GO'),
(1721, 25, 'Estrela do Norte', 'SP'),
(1722, 13, 'Estrela do Sul', 'MG'),
(1723, 25, 'Estrela d\'Oeste', 'SP'),
(1724, 21, 'Estrela Velha', 'RS'),
(1725, 5, 'Euclides da Cunha', 'BA'),
(1726, 25, 'Euclides da Cunha Paulista', 'SP'),
(1727, 21, 'Eugênio de Castro', 'RS'),
(1728, 13, 'Eugenópolis', 'MG'),
(1729, 5, 'Eunápolis', 'BA'),
(1730, 6, 'Eusébio', 'CE'),
(1731, 13, 'Ewbank da Câmara', 'MG'),
(1732, 13, 'Extrema', 'MG'),
(1733, 20, 'Extremoz', 'RN'),
(1734, 17, 'Exu', 'PE'),
(1735, 15, 'Fagundes', 'PB'),
(1736, 21, 'Fagundes Varela', 'RS'),
(1737, 9, 'Faina', 'GO'),
(1738, 13, 'Fama', 'MG'),
(1739, 13, 'Faria Lemos', 'MG'),
(1740, 6, 'Farias Brito', 'CE'),
(1741, 14, 'Faro', 'PA'),
(1742, 16, 'Farol', 'PR'),
(1743, 21, 'Farroupilha', 'RS'),
(1744, 25, 'Fartura', 'SP'),
(1745, 18, 'Fartura do Piauí', 'PI'),
(1746, 5, 'Fátima', 'BA'),
(1747, 27, 'Fátima', 'TO'),
(1748, 12, 'Fátima do Sul', 'MS'),
(1749, 16, 'Faxinal', 'PR'),
(1750, 21, 'Faxinal do Soturno', 'RS'),
(1751, 24, 'Faxinal dos Guedes', 'SC'),
(1752, 21, 'Faxinalzinho', 'RS'),
(1753, 9, 'Fazenda Nova', 'GO'),
(1754, 16, 'Fazenda Rio Grande', 'PR'),
(1755, 21, 'Fazenda Vilanova', 'RS'),
(1756, 1, 'Feijó', 'AC'),
(1757, 5, 'Feira da Mata', 'BA'),
(1758, 5, 'Feira de Santana', 'BA'),
(1759, 2, 'Feira Grande', 'AL'),
(1760, 17, 'Feira Nova', 'PE'),
(1761, 26, 'Feira Nova', 'SE'),
(1762, 10, 'Feira Nova do Maranhão', 'MA'),
(1763, 13, 'Felício dos Santos', 'MG'),
(1764, 20, 'Felipe Guerra', 'RN'),
(1765, 13, 'Felisburgo', 'MG'),
(1766, 13, 'Felixlândia', 'MG'),
(1767, 21, 'Feliz', 'RS'),
(1768, 2, 'Feliz Deserto', 'AL'),
(1769, 11, 'Feliz Natal', 'MT'),
(1770, 16, 'Fênix', 'PR'),
(1771, 16, 'Fernandes Pinheiro', 'PR'),
(1772, 13, 'Fernandes Tourinho', 'MG'),
(1773, 17, 'Fernando de Noronha', 'PE'),
(1774, 10, 'Fernando Falcão', 'MA'),
(1775, 20, 'Fernando Pedroza', 'RN'),
(1776, 25, 'Fernando Prestes', 'SP'),
(1777, 25, 'Fernandópolis', 'SP'),
(1778, 25, 'Fernão', 'SP'),
(1779, 25, 'Ferraz de Vasconcelos', 'SP'),
(1780, 3, 'Ferreira Gomes', 'AP'),
(1781, 17, 'Ferreiros', 'PE'),
(1782, 13, 'Ferros', 'MG'),
(1783, 13, 'Fervedouro', 'MG'),
(1784, 16, 'Figueira', 'PR'),
(1785, 12, 'Figueirão', 'MS'),
(1786, 27, 'Figueirópolis', 'TO'),
(1787, 11, 'Figueirópolis D\'Oeste', 'MT'),
(1788, 5, 'Filadélfia', 'BA'),
(1789, 27, 'Filadélfia', 'TO'),
(1790, 5, 'Firmino Alves', 'BA'),
(1791, 9, 'Firminópolis', 'GO'),
(1792, 2, 'Flexeiras', 'AL'),
(1793, 16, 'Flor da Serra do Sul', 'PR'),
(1794, 24, 'Flor do Sertão', 'SC'),
(1795, 25, 'Flora Rica', 'SP'),
(1796, 16, 'Floraí', 'PR'),
(1797, 20, 'Florânia', 'RN'),
(1798, 25, 'Floreal', 'SP'),
(1799, 17, 'Flores', 'PE'),
(1800, 21, 'Flores da Cunha', 'RS'),
(1801, 9, 'Flores de Goiás', 'GO'),
(1802, 18, 'Flores do Piauí', 'PI'),
(1803, 17, 'Floresta', 'PE'),
(1804, 16, 'Floresta', 'PR'),
(1805, 5, 'Floresta Azul', 'BA'),
(1806, 14, 'Floresta do Araguaia', 'PA'),
(1807, 18, 'Floresta do Piauí', 'PI'),
(1808, 13, 'Florestal', 'MG'),
(1809, 16, 'Florestópolis', 'PR'),
(1810, 18, 'Floriano', 'PI'),
(1811, 21, 'Floriano Peixoto', 'RS'),
(1812, 24, 'Florianópolis', 'SC'),
(1813, 16, 'Flórida', 'PR'),
(1814, 25, 'Flórida Paulista', 'SP'),
(1815, 25, 'Florínia', 'SP'),
(1816, 4, 'Fonte Boa', 'AM'),
(1817, 21, 'Fontoura Xavier', 'RS'),
(1818, 13, 'Formiga', 'MG'),
(1819, 21, 'Formigueiro', 'RS'),
(1820, 9, 'Formosa', 'GO'),
(1821, 10, 'Formosa da Serra Negra', 'MA'),
(1822, 16, 'Formosa do Oeste', 'PR'),
(1823, 5, 'Formosa do Rio Preto', 'BA'),
(1824, 24, 'Formosa do Sul', 'SC'),
(1825, 9, 'Formoso', 'GO'),
(1826, 13, 'Formoso', 'MG'),
(1827, 27, 'Formoso do Araguaia', 'TO'),
(1828, 21, 'Forquetinha', 'RS'),
(1829, 6, 'Forquilha', 'CE'),
(1830, 24, 'Forquilhinha', 'SC'),
(1831, 6, 'Fortaleza', 'CE'),
(1832, 13, 'Fortaleza de Minas', 'MG'),
(1833, 27, 'Fortaleza do Tabocão', 'TO'),
(1834, 10, 'Fortaleza dos Nogueiras', 'MA'),
(1835, 21, 'Fortaleza dos Valos', 'RS'),
(1836, 6, 'Fortim', 'CE'),
(1837, 10, 'Fortuna', 'MA'),
(1838, 13, 'Fortuna de Minas', 'MG'),
(1839, 16, 'Foz do Iguaçu', 'PR'),
(1840, 16, 'Foz do Jordão', 'PR'),
(1841, 24, 'Fraiburgo', 'SC'),
(1842, 25, 'Franca', 'SP'),
(1843, 18, 'Francinópolis', 'PI'),
(1844, 16, 'Francisco Alves', 'PR'),
(1845, 18, 'Francisco Ayres', 'PI'),
(1846, 13, 'Francisco Badaró', 'MG'),
(1847, 16, 'Francisco Beltrão', 'PR'),
(1848, 20, 'Francisco Dantas', 'RN'),
(1849, 13, 'Francisco Dumont', 'MG'),
(1850, 18, 'Francisco Macedo', 'PI'),
(1851, 25, 'Francisco Morato', 'SP'),
(1852, 13, 'Francisco Sá', 'MG'),
(1853, 18, 'Francisco Santos', 'PI'),
(1854, 13, 'Franciscópolis', 'MG'),
(1855, 25, 'Franco da Rocha', 'SP'),
(1856, 6, 'Frecheirinha', 'CE'),
(1857, 21, 'Frederico Westphalen', 'RS'),
(1858, 13, 'Frei Gaspar', 'MG'),
(1859, 13, 'Frei Inocêncio', 'MG'),
(1860, 13, 'Frei Lagonegro', 'MG'),
(1861, 15, 'Frei Martinho', 'PB'),
(1862, 17, 'Frei Miguelinho', 'PE'),
(1863, 26, 'Frei Paulo', 'SE'),
(1864, 24, 'Frei Rogério', 'SC'),
(1865, 13, 'Fronteira', 'MG'),
(1866, 13, 'Fronteira dos Vales', 'MG'),
(1867, 18, 'Fronteiras', 'PI'),
(1868, 13, 'Fruta de Leite', 'MG'),
(1869, 13, 'Frutal', 'MG'),
(1870, 20, 'Frutuoso Gomes', 'RN'),
(1871, 8, 'Fundão', 'ES'),
(1872, 13, 'Funilândia', 'MG'),
(1873, 25, 'Gabriel Monteiro', 'SP'),
(1874, 15, 'Gado Bravo', 'PB'),
(1875, 25, 'Gália', 'SP'),
(1876, 13, 'Galiléia', 'MG'),
(1877, 20, 'Galinhos', 'RN'),
(1878, 24, 'Galvão', 'SC'),
(1879, 17, 'Gameleira', 'PE'),
(1880, 9, 'Gameleira de Goiás', 'GO'),
(1881, 13, 'Gameleiras', 'MG'),
(1882, 5, 'Gandu', 'BA'),
(1883, 17, 'Garanhuns', 'PE'),
(1884, 26, 'Gararu', 'SE'),
(1885, 25, 'Garça', 'SP'),
(1886, 21, 'Garibaldi', 'RS'),
(1887, 24, 'Garopaba', 'SC'),
(1888, 14, 'Garrafão do Norte', 'PA'),
(1889, 21, 'Garruchos', 'RS'),
(1890, 24, 'Garuva', 'SC'),
(1891, 24, 'Gaspar', 'SC'),
(1892, 25, 'Gastão Vidigal', 'SP'),
(1893, 11, 'Gaúcha do Norte', 'MT'),
(1894, 21, 'Gaurama', 'RS'),
(1895, 5, 'Gavião', 'BA'),
(1896, 25, 'Gavião Peixoto', 'SP'),
(1897, 18, 'Geminiano', 'PI'),
(1898, 21, 'General Câmara', 'RS'),
(1899, 11, 'General Carneiro', 'MT'),
(1900, 16, 'General Carneiro', 'PR'),
(1901, 26, 'General Maynard', 'SE'),
(1902, 25, 'General Salgado', 'SP'),
(1903, 6, 'General Sampaio', 'CE'),
(1904, 21, 'Gentil', 'RS'),
(1905, 5, 'Gentio do Ouro', 'BA'),
(1906, 25, 'Getulina', 'SP'),
(1907, 21, 'Getúlio Vargas', 'RS'),
(1908, 18, 'Gilbués', 'PI'),
(1909, 2, 'Girau do Ponciano', 'AL'),
(1910, 21, 'Giruá', 'RS'),
(1911, 13, 'Glaucilândia', 'MG'),
(1912, 25, 'Glicério', 'SP'),
(1913, 5, 'Glória', 'BA'),
(1914, 12, 'Glória de Dourados', 'MS'),
(1915, 17, 'Glória do Goitá', 'PE'),
(1916, 11, 'Glória D\'Oeste', 'MT'),
(1917, 21, 'Glorinha', 'RS'),
(1918, 10, 'Godofredo Viana', 'MA'),
(1919, 16, 'Godoy Moreira', 'PR'),
(1920, 13, 'Goiabeira', 'MG'),
(1921, 17, 'Goiana', 'PE'),
(1922, 13, 'Goianá', 'MG'),
(1923, 9, 'Goianápolis', 'GO'),
(1924, 9, 'Goiandira', 'GO'),
(1925, 9, 'Goianésia', 'GO'),
(1926, 14, 'Goianésia do Pará', 'PA'),
(1927, 9, 'Goiânia', 'GO'),
(1928, 20, 'Goianinha', 'RN'),
(1929, 9, 'Goianira', 'GO'),
(1930, 27, 'Goianorte', 'TO'),
(1931, 9, 'Goiás', 'GO'),
(1932, 27, 'Goiatins', 'TO'),
(1933, 9, 'Goiatuba', 'GO'),
(1934, 16, 'Goioerê', 'PR'),
(1935, 16, 'Goioxim', 'PR'),
(1936, 13, 'Gonçalves', 'MG'),
(1937, 10, 'Gonçalves Dias', 'MA'),
(1938, 5, 'Gongogi', 'BA'),
(1939, 13, 'Gonzaga', 'MG'),
(1940, 13, 'Gouveia', 'MG'),
(1941, 9, 'Gouvelândia', 'GO'),
(1942, 10, 'Governador Archer', 'MA'),
(1943, 24, 'Governador Celso Ramos', 'SC'),
(1944, 20, 'Governador Dix-Sept Rosado', 'RN'),
(1945, 10, 'Governador Edison Lobão', 'MA'),
(1946, 10, 'Governador Eugênio Barros', 'MA'),
(1947, 22, 'Governador Jorge Teixeira', 'RO'),
(1948, 8, 'Governador Lindenberg', 'ES'),
(1949, 10, 'Governador Luiz Rocha', 'MA'),
(1950, 5, 'Governador Mangabeira', 'BA'),
(1951, 10, 'Governador Newton Bello', 'MA'),
(1952, 10, 'Governador Nunes Freire', 'MA'),
(1953, 13, 'Governador Valadares', 'MG'),
(1954, 6, 'Graça', 'CE'),
(1955, 10, 'Graça Aranha', 'MA'),
(1956, 26, 'Gracho Cardoso', 'SE'),
(1957, 10, 'Grajaú', 'MA'),
(1958, 21, 'Gramado', 'RS'),
(1959, 21, 'Gramado dos Loureiros', 'RS'),
(1960, 21, 'Gramado Xavier', 'RS'),
(1961, 16, 'Grandes Rios', 'PR'),
(1962, 17, 'Granito', 'PE'),
(1963, 6, 'Granja', 'CE'),
(1964, 6, 'Granjeiro', 'CE'),
(1965, 13, 'Grão Mogol', 'MG'),
(1966, 24, 'Grão Pará', 'SC'),
(1967, 17, 'Gravatá', 'PE'),
(1968, 21, 'Gravataí', 'RS'),
(1969, 24, 'Gravatal', 'SC'),
(1970, 6, 'Groaíras', 'CE'),
(1971, 20, 'Grossos', 'RN'),
(1972, 13, 'Grupiara', 'MG'),
(1973, 21, 'Guabiju', 'RS'),
(1974, 24, 'Guabiruba', 'SC'),
(1975, 8, 'Guaçuí', 'ES'),
(1976, 18, 'Guadalupe', 'PI'),
(1977, 21, 'Guaíba', 'RS'),
(1978, 25, 'Guaiçara', 'SP'),
(1979, 25, 'Guaimbê', 'SP'),
(1980, 16, 'Guaíra', 'PR'),
(1981, 25, 'Guaíra', 'SP'),
(1982, 16, 'Guairaçá', 'PR'),
(1983, 6, 'Guaiúba', 'CE'),
(1984, 4, 'Guajará', 'AM'),
(1985, 22, 'Guajará-Mirim', 'RO'),
(1986, 5, 'Guajeru', 'BA'),
(1987, 20, 'Guamaré', 'RN'),
(1988, 16, 'Guamiranga', 'PR'),
(1989, 5, 'Guanambi', 'BA'),
(1990, 13, 'Guanhães', 'MG'),
(1991, 13, 'Guapé', 'MG'),
(1992, 25, 'Guapiaçu', 'SP'),
(1993, 25, 'Guapiara', 'SP'),
(1994, 19, 'Guapimirim', 'RJ'),
(1995, 16, 'Guapirama', 'PR'),
(1996, 9, 'Guapó', 'GO'),
(1997, 21, 'Guaporé', 'RS'),
(1998, 16, 'Guaporema', 'PR'),
(1999, 25, 'Guará', 'SP'),
(2000, 15, 'Guarabira', 'PB'),
(2001, 25, 'Guaraçaí', 'SP'),
(2002, 16, 'Guaraci', 'PR'),
(2003, 25, 'Guaraci', 'SP'),
(2004, 13, 'Guaraciaba', 'MG'),
(2005, 24, 'Guaraciaba', 'SC'),
(2006, 6, 'Guaraciaba do Norte', 'CE'),
(2007, 13, 'Guaraciama', 'MG'),
(2008, 27, 'Guaraí', 'TO'),
(2009, 9, 'Guaraíta', 'GO'),
(2010, 6, 'Guaramiranga', 'CE'),
(2011, 24, 'Guaramirim', 'SC'),
(2012, 13, 'Guaranésia', 'MG'),
(2013, 13, 'Guarani', 'MG'),
(2014, 21, 'Guarani das Missões', 'RS'),
(2015, 9, 'Guarani de Goiás', 'GO'),
(2016, 25, 'Guarani d\'Oeste', 'SP'),
(2017, 16, 'Guaraniaçu', 'PR'),
(2018, 25, 'Guarantã', 'SP'),
(2019, 11, 'Guarantã do Norte', 'MT'),
(2020, 8, 'Guarapari', 'ES'),
(2021, 16, 'Guarapuava', 'PR'),
(2022, 16, 'Guaraqueçaba', 'PR'),
(2023, 13, 'Guarará', 'MG'),
(2024, 25, 'Guararapes', 'SP'),
(2025, 25, 'Guararema', 'SP'),
(2026, 5, 'Guaratinga', 'BA'),
(2027, 25, 'Guaratinguetá', 'SP'),
(2028, 16, 'Guaratuba', 'PR'),
(2029, 13, 'Guarda-Mor', 'MG'),
(2030, 25, 'Guareí', 'SP'),
(2031, 25, 'Guariba', 'SP'),
(2032, 18, 'Guaribas', 'PI'),
(2033, 9, 'Guarinos', 'GO'),
(2034, 25, 'Guarujá', 'SP'),
(2035, 24, 'Guarujá do Sul', 'SC'),
(2036, 25, 'Guarulhos', 'SP'),
(2037, 24, 'Guatambú', 'SC'),
(2038, 25, 'Guatapará', 'SP'),
(2039, 13, 'Guaxupé', 'MG'),
(2040, 12, 'Guia Lopes da Laguna', 'MS'),
(2041, 13, 'Guidoval', 'MG'),
(2042, 10, 'Guimarães', 'MA'),
(2043, 13, 'Guimarânia', 'MG'),
(2044, 11, 'Guiratinga', 'MT'),
(2045, 13, 'Guiricema', 'MG'),
(2046, 13, 'Gurinhatã', 'MG'),
(2047, 15, 'Gurinhém', 'PB'),
(2048, 15, 'Gurjão', 'PB'),
(2049, 14, 'Gurupá', 'PA'),
(2050, 27, 'Gurupi', 'TO'),
(2051, 25, 'Guzolândia', 'SP'),
(2052, 21, 'Harmonia', 'RS'),
(2053, 9, 'Heitoraí', 'GO'),
(2054, 13, 'Heliodora', 'MG'),
(2055, 5, 'Heliópolis', 'BA'),
(2056, 25, 'Herculândia', 'SP'),
(2057, 21, 'Herval', 'RS'),
(2058, 24, 'Herval d\'Oeste', 'SC'),
(2059, 21, 'Herveiras', 'RS'),
(2060, 6, 'Hidrolândia', 'CE'),
(2061, 9, 'Hidrolândia', 'GO'),
(2062, 9, 'Hidrolina', 'GO'),
(2063, 25, 'Holambra', 'SP'),
(2064, 16, 'Honório Serpa', 'PR'),
(2065, 6, 'Horizonte', 'CE'),
(2066, 21, 'Horizontina', 'RS'),
(2067, 25, 'Hortolândia', 'SP'),
(2068, 18, 'Hugo Napoleão', 'PI'),
(2069, 21, 'Hulha Negra', 'RS'),
(2070, 4, 'Humaitá', 'AM'),
(2071, 21, 'Humaitá', 'RS'),
(2072, 10, 'Humberto de Campos', 'MA'),
(2073, 25, 'Iacanga', 'SP'),
(2074, 9, 'Iaciara', 'GO'),
(2075, 25, 'Iacri', 'SP'),
(2076, 5, 'Iaçu', 'BA'),
(2077, 13, 'Iapu', 'MG'),
(2078, 25, 'Iaras', 'SP'),
(2079, 17, 'Iati', 'PE'),
(2080, 16, 'Ibaiti', 'PR'),
(2081, 21, 'Ibarama', 'RS'),
(2082, 6, 'Ibaretama', 'CE'),
(2083, 25, 'Ibaté', 'SP'),
(2084, 2, 'Ibateguara', 'AL'),
(2085, 8, 'Ibatiba', 'ES'),
(2086, 16, 'Ibema', 'PR'),
(2087, 13, 'Ibertioga', 'MG'),
(2088, 13, 'Ibiá', 'MG'),
(2089, 21, 'Ibiaçá', 'RS'),
(2090, 13, 'Ibiaí', 'MG'),
(2091, 24, 'Ibiam', 'SC'),
(2092, 6, 'Ibiapina', 'CE'),
(2093, 15, 'Ibiara', 'PB'),
(2094, 5, 'Ibiassucê', 'BA'),
(2095, 5, 'Ibicaraí', 'BA'),
(2096, 24, 'Ibicaré', 'SC'),
(2097, 5, 'Ibicoara', 'BA'),
(2098, 5, 'Ibicuí', 'BA'),
(2099, 6, 'Ibicuitinga', 'CE'),
(2100, 17, 'Ibimirim', 'PE'),
(2101, 5, 'Ibipeba', 'BA'),
(2102, 5, 'Ibipitanga', 'BA'),
(2103, 16, 'Ibiporã', 'PR'),
(2104, 5, 'Ibiquera', 'BA'),
(2105, 25, 'Ibirá', 'SP'),
(2106, 13, 'Ibiracatu', 'MG'),
(2107, 13, 'Ibiraci', 'MG'),
(2108, 8, 'Ibiraçu', 'ES'),
(2109, 21, 'Ibiraiaras', 'RS'),
(2110, 17, 'Ibirajuba', 'PE'),
(2111, 24, 'Ibirama', 'SC'),
(2112, 5, 'Ibirapitanga', 'BA'),
(2113, 5, 'Ibirapuã', 'BA'),
(2114, 21, 'Ibirapuitã', 'RS'),
(2115, 25, 'Ibirarema', 'SP'),
(2116, 5, 'Ibirataia', 'BA'),
(2117, 13, 'Ibirité', 'MG'),
(2118, 21, 'Ibirubá', 'RS'),
(2119, 5, 'Ibitiara', 'BA'),
(2120, 25, 'Ibitinga', 'SP'),
(2121, 8, 'Ibitirama', 'ES'),
(2122, 5, 'Ibititá', 'BA'),
(2123, 13, 'Ibitiúra de Minas', 'MG'),
(2124, 13, 'Ibituruna', 'MG'),
(2125, 25, 'Ibiúna', 'SP'),
(2126, 5, 'Ibotirama', 'BA'),
(2127, 6, 'Icapuí', 'CE'),
(2128, 24, 'Içara', 'SC'),
(2129, 13, 'Icaraí de Minas', 'MG'),
(2130, 16, 'Icaraíma', 'PR'),
(2131, 10, 'Icatu', 'MA'),
(2132, 25, 'Icém', 'SP'),
(2133, 5, 'Ichu', 'BA'),
(2134, 6, 'Icó', 'CE'),
(2135, 8, 'Iconha', 'ES'),
(2136, 20, 'Ielmo Marinho', 'RN'),
(2137, 25, 'Iepê', 'SP'),
(2138, 2, 'Igaci', 'AL'),
(2139, 5, 'Igaporã', 'BA'),
(2140, 25, 'Igaraçu do Tietê', 'SP'),
(2141, 15, 'Igaracy', 'PB'),
(2142, 25, 'Igarapava', 'SP'),
(2143, 13, 'Igarapé', 'MG'),
(2144, 10, 'Igarapé do Meio', 'MA'),
(2145, 10, 'Igarapé Grande', 'MA'),
(2146, 14, 'Igarapé-Açu', 'PA'),
(2147, 14, 'Igarapé-Miri', 'PA'),
(2148, 17, 'Igarassu', 'PE'),
(2149, 25, 'Igaratá', 'SP'),
(2150, 13, 'Igaratinga', 'MG'),
(2151, 5, 'Igrapiúna', 'BA'),
(2152, 2, 'Igreja Nova', 'AL'),
(2153, 21, 'Igrejinha', 'RS'),
(2154, 19, 'Iguaba Grande', 'RJ'),
(2155, 5, 'Iguaí', 'BA'),
(2156, 25, 'Iguape', 'SP'),
(2157, 17, 'Iguaraci', 'PE'),
(2158, 16, 'Iguaraçu', 'PR'),
(2159, 13, 'Iguatama', 'MG'),
(2160, 12, 'Iguatemi', 'MS'),
(2161, 6, 'Iguatu', 'CE'),
(2162, 16, 'Iguatu', 'PR'),
(2163, 13, 'Ijaci', 'MG'),
(2164, 21, 'Ijuí', 'RS'),
(2165, 25, 'Ilha Comprida', 'SP'),
(2166, 26, 'Ilha das Flores', 'SE'),
(2167, 17, 'Ilha de Itamaracá', 'PE'),
(2168, 18, 'Ilha Grande', 'PI'),
(2169, 25, 'Ilha Solteira', 'SP'),
(2170, 25, 'Ilhabela', 'SP'),
(2171, 5, 'Ilhéus', 'BA'),
(2172, 24, 'Ilhota', 'SC'),
(2173, 13, 'Ilicínea', 'MG'),
(2174, 21, 'Ilópolis', 'RS'),
(2175, 15, 'Imaculada', 'PB'),
(2176, 24, 'Imaruí', 'SC'),
(2177, 16, 'Imbaú', 'PR'),
(2178, 21, 'Imbé', 'RS'),
(2179, 13, 'Imbé de Minas', 'MG'),
(2180, 24, 'Imbituba', 'SC'),
(2181, 16, 'Imbituva', 'PR'),
(2182, 24, 'Imbuia', 'SC'),
(2183, 21, 'Imigrante', 'RS'),
(2184, 10, 'Imperatriz', 'MA'),
(2185, 16, 'Inácio Martins', 'PR'),
(2186, 9, 'Inaciolândia', 'GO'),
(2187, 17, 'Inajá', 'PE'),
(2188, 16, 'Inajá', 'PR'),
(2189, 13, 'Inconfidentes', 'MG'),
(2190, 13, 'Indaiabira', 'MG'),
(2191, 24, 'Indaial', 'SC'),
(2192, 25, 'Indaiatuba', 'SP'),
(2193, 6, 'Independência', 'CE'),
(2194, 21, 'Independência', 'RS'),
(2195, 25, 'Indiana', 'SP'),
(2196, 13, 'Indianópolis', 'MG'),
(2197, 16, 'Indianópolis', 'PR'),
(2198, 25, 'Indiaporã', 'SP'),
(2199, 9, 'Indiara', 'GO'),
(2200, 26, 'Indiaroba', 'SE'),
(2201, 11, 'Indiavaí', 'MT'),
(2202, 15, 'Ingá', 'PB'),
(2203, 13, 'Ingaí', 'MG'),
(2204, 17, 'Ingazeira', 'PE'),
(2205, 21, 'Inhacorá', 'RS'),
(2206, 5, 'Inhambupe', 'BA'),
(2207, 14, 'Inhangapi', 'PA'),
(2208, 2, 'Inhapi', 'AL'),
(2209, 13, 'Inhapim', 'MG'),
(2210, 13, 'Inhaúma', 'MG'),
(2211, 18, 'Inhuma', 'PI'),
(2212, 9, 'Inhumas', 'GO'),
(2213, 13, 'Inimutaba', 'MG'),
(2214, 12, 'Inocência', 'MS'),
(2215, 25, 'Inúbia Paulista', 'SP'),
(2216, 24, 'Iomerê', 'SC'),
(2217, 13, 'Ipaba', 'MG'),
(2218, 9, 'Ipameri', 'GO'),
(2219, 13, 'Ipanema', 'MG'),
(2220, 20, 'Ipanguaçu', 'RN'),
(2221, 6, 'Ipaporanga', 'CE'),
(2222, 13, 'Ipatinga', 'MG'),
(2223, 6, 'Ipaumirim', 'CE'),
(2224, 25, 'Ipaussu', 'SP'),
(2225, 21, 'Ipê', 'RS'),
(2226, 5, 'Ipecaetá', 'BA'),
(2227, 25, 'Iperó', 'SP'),
(2228, 25, 'Ipeúna', 'SP'),
(2229, 13, 'Ipiaçu', 'MG'),
(2230, 5, 'Ipiaú', 'BA'),
(2231, 25, 'Ipiguá', 'SP'),
(2232, 24, 'Ipira', 'SC'),
(2233, 5, 'Ipirá', 'BA'),
(2234, 16, 'Ipiranga', 'PR'),
(2235, 9, 'Ipiranga de Goiás', 'GO'),
(2236, 11, 'Ipiranga do Norte', 'MT'),
(2237, 18, 'Ipiranga do Piauí', 'PI'),
(2238, 21, 'Ipiranga do Sul', 'RS'),
(2239, 4, 'Ipixuna', 'AM'),
(2240, 14, 'Ipixuna do Pará', 'PA'),
(2241, 17, 'Ipojuca', 'PE'),
(2242, 9, 'Iporá', 'GO'),
(2243, 16, 'Iporã', 'PR'),
(2244, 24, 'Iporã do Oeste', 'SC'),
(2245, 25, 'Iporanga', 'SP'),
(2246, 6, 'Ipu', 'CE'),
(2247, 25, 'Ipuã', 'SP'),
(2248, 24, 'Ipuaçu', 'SC'),
(2249, 17, 'Ipubi', 'PE'),
(2250, 20, 'Ipueira', 'RN'),
(2251, 6, 'Ipueiras', 'CE'),
(2252, 27, 'Ipueiras', 'TO'),
(2253, 13, 'Ipuiúna', 'MG'),
(2254, 24, 'Ipumirim', 'SC'),
(2255, 5, 'Ipupiara', 'BA'),
(2256, 6, 'Iracema', 'CE'),
(2257, 23, 'Iracema', 'RR'),
(2258, 16, 'Iracema do Oeste', 'PR'),
(2259, 25, 'Iracemápolis', 'SP'),
(2260, 24, 'Iraceminha', 'SC'),
(2261, 21, 'Iraí', 'RS'),
(2262, 13, 'Iraí de Minas', 'MG'),
(2263, 5, 'Irajuba', 'BA'),
(2264, 5, 'Iramaia', 'BA'),
(2265, 4, 'Iranduba', 'AM'),
(2266, 24, 'Irani', 'SC'),
(2267, 25, 'Irapuã', 'SP'),
(2268, 25, 'Irapuru', 'SP'),
(2269, 5, 'Iraquara', 'BA'),
(2270, 5, 'Irará', 'BA'),
(2271, 16, 'Irati', 'PR'),
(2272, 24, 'Irati', 'SC'),
(2273, 6, 'Irauçuba', 'CE'),
(2274, 5, 'Irecê', 'BA'),
(2275, 16, 'Iretama', 'PR'),
(2276, 24, 'Irineópolis', 'SC'),
(2277, 14, 'Irituia', 'PA'),
(2278, 8, 'Irupi', 'ES'),
(2279, 18, 'Isaías Coelho', 'PI'),
(2280, 9, 'Israelândia', 'GO'),
(2281, 24, 'Itá', 'SC'),
(2282, 21, 'Itaara', 'RS'),
(2283, 15, 'Itabaiana', 'PB'),
(2284, 26, 'Itabaiana', 'SE'),
(2285, 26, 'Itabaianinha', 'SE'),
(2286, 5, 'Itabela', 'BA'),
(2287, 25, 'Itaberá', 'SP'),
(2288, 5, 'Itaberaba', 'BA'),
(2289, 9, 'Itaberaí', 'GO'),
(2290, 26, 'Itabi', 'SE'),
(2291, 13, 'Itabira', 'MG'),
(2292, 13, 'Itabirinha', 'MG'),
(2293, 13, 'Itabirito', 'MG'),
(2294, 19, 'Itaboraí', 'RJ'),
(2295, 5, 'Itabuna', 'BA'),
(2296, 27, 'Itacajá', 'TO'),
(2297, 13, 'Itacambira', 'MG'),
(2298, 13, 'Itacarambi', 'MG'),
(2299, 5, 'Itacaré', 'BA'),
(2300, 4, 'Itacoatiara', 'AM'),
(2301, 17, 'Itacuruba', 'PE'),
(2302, 21, 'Itacurubi', 'RS'),
(2303, 5, 'Itaeté', 'BA'),
(2304, 5, 'Itagi', 'BA'),
(2305, 5, 'Itagibá', 'BA'),
(2306, 5, 'Itagimirim', 'BA'),
(2307, 8, 'Itaguaçu', 'ES'),
(2308, 5, 'Itaguaçu da Bahia', 'BA'),
(2309, 19, 'Itaguaí', 'RJ'),
(2310, 16, 'Itaguajé', 'PR'),
(2311, 13, 'Itaguara', 'MG'),
(2312, 9, 'Itaguari', 'GO'),
(2313, 9, 'Itaguaru', 'GO'),
(2314, 27, 'Itaguatins', 'TO'),
(2315, 25, 'Itaí', 'SP'),
(2316, 17, 'Itaíba', 'PE'),
(2317, 6, 'Itaiçaba', 'CE'),
(2318, 18, 'Itainópolis', 'PI'),
(2319, 24, 'Itaiópolis', 'SC'),
(2320, 10, 'Itaipava do Grajaú', 'MA'),
(2321, 13, 'Itaipé', 'MG'),
(2322, 16, 'Itaipulândia', 'PR'),
(2323, 6, 'Itaitinga', 'CE'),
(2324, 14, 'Itaituba', 'PA'),
(2325, 9, 'Itajá', 'GO'),
(2326, 20, 'Itajá', 'RN'),
(2327, 24, 'Itajaí', 'SC'),
(2328, 25, 'Itajobi', 'SP'),
(2329, 25, 'Itaju', 'SP'),
(2330, 5, 'Itaju do Colônia', 'BA'),
(2331, 13, 'Itajubá', 'MG'),
(2332, 5, 'Itajuípe', 'BA'),
(2333, 19, 'Italva', 'RJ'),
(2334, 5, 'Itamaraju', 'BA'),
(2335, 13, 'Itamarandiba', 'MG'),
(2336, 4, 'Itamarati', 'AM'),
(2337, 13, 'Itamarati de Minas', 'MG'),
(2338, 5, 'Itamari', 'BA'),
(2339, 13, 'Itambacuri', 'MG'),
(2340, 16, 'Itambaracá', 'PR'),
(2341, 5, 'Itambé', 'BA'),
(2342, 17, 'Itambé', 'PE'),
(2343, 16, 'Itambé', 'PR'),
(2344, 13, 'Itambé do Mato Dentro', 'MG'),
(2345, 13, 'Itamogi', 'MG'),
(2346, 13, 'Itamonte', 'MG'),
(2347, 5, 'Itanagra', 'BA'),
(2348, 25, 'Itanhaém', 'SP'),
(2349, 13, 'Itanhandu', 'MG'),
(2350, 11, 'Itanhangá', 'MT'),
(2351, 5, 'Itanhém', 'BA'),
(2352, 13, 'Itanhomi', 'MG'),
(2353, 13, 'Itaobim', 'MG'),
(2354, 25, 'Itaóca', 'SP'),
(2355, 19, 'Itaocara', 'RJ'),
(2356, 9, 'Itapaci', 'GO'),
(2357, 6, 'Itapagé', 'CE'),
(2358, 13, 'Itapagipe', 'MG'),
(2359, 5, 'Itaparica', 'BA'),
(2360, 5, 'Itapé', 'BA'),
(2361, 5, 'Itapebi', 'BA'),
(2362, 13, 'Itapecerica', 'MG'),
(2363, 25, 'Itapecerica da Serra', 'SP'),
(2364, 10, 'Itapecuru Mirim', 'MA'),
(2365, 16, 'Itapejara d\'Oeste', 'PR'),
(2366, 24, 'Itapema', 'SC'),
(2367, 8, 'Itapemirim', 'ES'),
(2368, 16, 'Itaperuçu', 'PR'),
(2369, 19, 'Itaperuna', 'RJ'),
(2370, 17, 'Itapetim', 'PE'),
(2371, 5, 'Itapetinga', 'BA'),
(2372, 25, 'Itapetininga', 'SP'),
(2373, 13, 'Itapeva', 'MG'),
(2374, 25, 'Itapeva', 'SP'),
(2375, 25, 'Itapevi', 'SP'),
(2376, 5, 'Itapicuru', 'BA'),
(2377, 6, 'Itapipoca', 'CE'),
(2378, 25, 'Itapira', 'SP'),
(2379, 4, 'Itapiranga', 'AM'),
(2380, 24, 'Itapiranga', 'SC'),
(2381, 9, 'Itapirapuã', 'GO'),
(2382, 25, 'Itapirapuã Paulista', 'SP'),
(2383, 27, 'Itapiratins', 'TO'),
(2384, 17, 'Itapissuma', 'PE'),
(2385, 5, 'Itapitanga', 'BA'),
(2386, 6, 'Itapiúna', 'CE'),
(2387, 24, 'Itapoá', 'SC'),
(2388, 25, 'Itápolis', 'SP'),
(2389, 12, 'Itaporã', 'MS'),
(2390, 27, 'Itaporã do Tocantins', 'TO'),
(2391, 15, 'Itaporanga', 'PB'),
(2392, 25, 'Itaporanga', 'SP'),
(2393, 26, 'Itaporanga d\'Ajuda', 'SE'),
(2394, 15, 'Itapororoca', 'PB'),
(2395, 22, 'Itapuã do Oeste', 'RO'),
(2396, 21, 'Itapuca', 'RS'),
(2397, 25, 'Itapuí', 'SP'),
(2398, 25, 'Itapura', 'SP'),
(2399, 9, 'Itapuranga', 'GO'),
(2400, 25, 'Itaquaquecetuba', 'SP'),
(2401, 5, 'Itaquara', 'BA'),
(2402, 21, 'Itaqui', 'RS'),
(2403, 12, 'Itaquiraí', 'MS'),
(2404, 17, 'Itaquitinga', 'PE'),
(2405, 8, 'Itarana', 'ES'),
(2406, 5, 'Itarantim', 'BA'),
(2407, 25, 'Itararé', 'SP'),
(2408, 6, 'Itarema', 'CE'),
(2409, 25, 'Itariri', 'SP'),
(2410, 9, 'Itarumã', 'GO'),
(2411, 21, 'Itati', 'RS'),
(2412, 19, 'Itatiaia', 'RJ'),
(2413, 13, 'Itatiaiuçu', 'MG'),
(2414, 25, 'Itatiba', 'SP'),
(2415, 21, 'Itatiba do Sul', 'RS'),
(2416, 5, 'Itatim', 'BA'),
(2417, 25, 'Itatinga', 'SP'),
(2418, 6, 'Itatira', 'CE'),
(2419, 15, 'Itatuba', 'PB'),
(2420, 20, 'Itaú', 'RN'),
(2421, 13, 'Itaú de Minas', 'MG'),
(2422, 11, 'Itaúba', 'MT'),
(2423, 3, 'Itaubal', 'AP'),
(2424, 9, 'Itauçu', 'GO'),
(2425, 18, 'Itaueira', 'PI'),
(2426, 13, 'Itaúna', 'MG'),
(2427, 16, 'Itaúna do Sul', 'PR'),
(2428, 13, 'Itaverava', 'MG'),
(2429, 13, 'Itinga', 'MG'),
(2430, 10, 'Itinga do Maranhão', 'MA'),
(2431, 11, 'Itiquira', 'MT'),
(2432, 25, 'Itirapina', 'SP'),
(2433, 25, 'Itirapuã', 'SP'),
(2434, 5, 'Itiruçu', 'BA'),
(2435, 5, 'Itiúba', 'BA'),
(2436, 25, 'Itobi', 'SP'),
(2437, 5, 'Itororó', 'BA'),
(2438, 25, 'Itu', 'SP'),
(2439, 5, 'Ituaçu', 'BA'),
(2440, 5, 'Ituberá', 'BA'),
(2441, 13, 'Itueta', 'MG'),
(2442, 13, 'Ituiutaba', 'MG'),
(2443, 9, 'Itumbiara', 'GO'),
(2444, 13, 'Itumirim', 'MG'),
(2445, 25, 'Itupeva', 'SP'),
(2446, 14, 'Itupiranga', 'PA'),
(2447, 24, 'Ituporanga', 'SC'),
(2448, 13, 'Iturama', 'MG'),
(2449, 13, 'Itutinga', 'MG'),
(2450, 25, 'Ituverava', 'SP'),
(2451, 5, 'Iuiú', 'BA'),
(2452, 8, 'Iúna', 'ES'),
(2453, 16, 'Ivaí', 'PR'),
(2454, 16, 'Ivaiporã', 'PR'),
(2455, 16, 'Ivaté', 'PR'),
(2456, 16, 'Ivatuba', 'PR'),
(2457, 12, 'Ivinhema', 'MS'),
(2458, 9, 'Ivolândia', 'GO'),
(2459, 21, 'Ivorá', 'RS'),
(2460, 21, 'Ivoti', 'RS'),
(2461, 17, 'Jaboatão dos Guararapes', 'PE'),
(2462, 24, 'Jaborá', 'SC'),
(2463, 5, 'Jaborandi', 'BA'),
(2464, 25, 'Jaborandi', 'SP'),
(2465, 16, 'Jaboti', 'PR'),
(2466, 21, 'Jaboticaba', 'RS'),
(2467, 25, 'Jaboticabal', 'SP'),
(2468, 13, 'Jaboticatubas', 'MG'),
(2469, 20, 'Jaçanã', 'RN'),
(2470, 5, 'Jacaraci', 'BA'),
(2471, 15, 'Jacaraú', 'PB'),
(2472, 2, 'Jacaré dos Homens', 'AL'),
(2473, 14, 'Jacareacanga', 'PA'),
(2474, 25, 'Jacareí', 'SP'),
(2475, 16, 'Jacarezinho', 'PR'),
(2476, 25, 'Jaci', 'SP'),
(2477, 11, 'Jaciara', 'MT'),
(2478, 13, 'Jacinto', 'MG'),
(2479, 24, 'Jacinto Machado', 'SC'),
(2480, 5, 'Jacobina', 'BA'),
(2481, 18, 'Jacobina do Piauí', 'PI'),
(2482, 13, 'Jacuí', 'MG'),
(2483, 2, 'Jacuípe', 'AL'),
(2484, 21, 'Jacuizinho', 'RS'),
(2485, 14, 'Jacundá', 'PA'),
(2486, 25, 'Jacupiranga', 'SP'),
(2487, 13, 'Jacutinga', 'MG'),
(2488, 21, 'Jacutinga', 'RS'),
(2489, 16, 'Jaguapitã', 'PR'),
(2490, 5, 'Jaguaquara', 'BA'),
(2491, 13, 'Jaguaraçu', 'MG'),
(2492, 21, 'Jaguarão', 'RS'),
(2493, 5, 'Jaguarari', 'BA'),
(2494, 8, 'Jaguaré', 'ES'),
(2495, 6, 'Jaguaretama', 'CE'),
(2496, 21, 'Jaguari', 'RS'),
(2497, 16, 'Jaguariaíva', 'PR'),
(2498, 6, 'Jaguaribara', 'CE'),
(2499, 6, 'Jaguaribe', 'CE'),
(2500, 5, 'Jaguaripe', 'BA'),
(2501, 25, 'Jaguariúna', 'SP'),
(2502, 6, 'Jaguaruana', 'CE'),
(2503, 24, 'Jaguaruna', 'SC'),
(2504, 13, 'Jaíba', 'MG'),
(2505, 18, 'Jaicós', 'PI'),
(2506, 25, 'Jales', 'SP'),
(2507, 25, 'Jambeiro', 'SP'),
(2508, 13, 'Jampruca', 'MG'),
(2509, 13, 'Janaúba', 'MG'),
(2510, 9, 'Jandaia', 'GO'),
(2511, 16, 'Jandaia do Sul', 'PR'),
(2512, 5, 'Jandaíra', 'BA'),
(2513, 20, 'Jandaíra', 'RN'),
(2514, 25, 'Jandira', 'SP'),
(2515, 20, 'Janduís', 'RN'),
(2516, 11, 'Jangada', 'MT'),
(2517, 16, 'Janiópolis', 'PR'),
(2518, 13, 'Januária', 'MG'),
(2519, 20, 'Januário Cicco', 'RN'),
(2520, 13, 'Japaraíba', 'MG'),
(2521, 2, 'Japaratinga', 'AL'),
(2522, 26, 'Japaratuba', 'SE'),
(2523, 19, 'Japeri', 'RJ'),
(2524, 20, 'Japi', 'RN'),
(2525, 16, 'Japira', 'PR'),
(2526, 26, 'Japoatã', 'SE'),
(2527, 13, 'Japonvar', 'MG'),
(2528, 12, 'Japorã', 'MS'),
(2529, 4, 'Japurá', 'AM'),
(2530, 16, 'Japurá', 'PR'),
(2531, 17, 'Jaqueira', 'PE'),
(2532, 21, 'Jaquirana', 'RS'),
(2533, 9, 'Jaraguá', 'GO'),
(2534, 24, 'Jaraguá do Sul', 'SC'),
(2535, 12, 'Jaraguari', 'MS'),
(2536, 2, 'Jaramataia', 'AL'),
(2537, 6, 'Jardim', 'CE'),
(2538, 12, 'Jardim', 'MS'),
(2539, 16, 'Jardim Alegre', 'PR'),
(2540, 20, 'Jardim de Angicos', 'RN'),
(2541, 20, 'Jardim de Piranhas', 'RN'),
(2542, 18, 'Jardim do Mulato', 'PI'),
(2543, 20, 'Jardim do Seridó', 'RN'),
(2544, 16, 'Jardim Olinda', 'PR'),
(2545, 24, 'Jardinópolis', 'SC'),
(2546, 25, 'Jardinópolis', 'SP'),
(2547, 21, 'Jari', 'RS'),
(2548, 25, 'Jarinu', 'SP'),
(2549, 22, 'Jaru', 'RO'),
(2550, 9, 'Jataí', 'GO'),
(2551, 16, 'Jataizinho', 'PR'),
(2552, 17, 'Jataúba', 'PE'),
(2553, 12, 'Jateí', 'MS'),
(2554, 6, 'Jati', 'CE'),
(2555, 10, 'Jatobá', 'MA'),
(2556, 17, 'Jatobá', 'PE'),
(2557, 18, 'Jatobá do Piauí', 'PI'),
(2558, 25, 'Jaú', 'SP'),
(2559, 27, 'Jaú do Tocantins', 'TO'),
(2560, 9, 'Jaupaci', 'GO'),
(2561, 11, 'Jauru', 'MT'),
(2562, 13, 'Jeceaba', 'MG'),
(2563, 13, 'Jenipapo de Minas', 'MG'),
(2564, 10, 'Jenipapo dos Vieiras', 'MA'),
(2565, 13, 'Jequeri', 'MG'),
(2566, 2, 'Jequiá da Praia', 'AL'),
(2567, 5, 'Jequié', 'BA'),
(2568, 13, 'Jequitaí', 'MG'),
(2569, 13, 'Jequitibá', 'MG'),
(2570, 13, 'Jequitinhonha', 'MG'),
(2571, 5, 'Jeremoabo', 'BA'),
(2572, 15, 'Jericó', 'PB'),
(2573, 25, 'Jeriquara', 'SP'),
(2574, 8, 'Jerônimo Monteiro', 'ES'),
(2575, 18, 'Jerumenha', 'PI'),
(2576, 13, 'Jesuânia', 'MG'),
(2577, 16, 'Jesuítas', 'PR'),
(2578, 9, 'Jesúpolis', 'GO'),
(2579, 6, 'Jijoca de Jericoacoara', 'CE'),
(2580, 22, 'Ji-Paraná', 'RO'),
(2581, 5, 'Jiquiriçá', 'BA'),
(2582, 5, 'Jitaúna', 'BA'),
(2583, 24, 'Joaçaba', 'SC'),
(2584, 13, 'Joaíma', 'MG'),
(2585, 13, 'Joanésia', 'MG'),
(2586, 25, 'Joanópolis', 'SP'),
(2587, 17, 'João Alfredo', 'PE'),
(2588, 20, 'João Câmara', 'RN'),
(2589, 18, 'João Costa', 'PI'),
(2590, 20, 'João Dias', 'RN'),
(2591, 5, 'João Dourado', 'BA'),
(2592, 10, 'João Lisboa', 'MA'),
(2593, 13, 'João Monlevade', 'MG'),
(2594, 8, 'João Neiva', 'ES'),
(2595, 15, 'João Pessoa', 'PB'),
(2596, 13, 'João Pinheiro', 'MG'),
(2597, 25, 'João Ramalho', 'SP'),
(2598, 13, 'Joaquim Felício', 'MG'),
(2599, 2, 'Joaquim Gomes', 'AL'),
(2600, 17, 'Joaquim Nabuco', 'PE'),
(2601, 18, 'Joaquim Pires', 'PI'),
(2602, 16, 'Joaquim Távora', 'PR'),
(2603, 15, 'Joca Claudino', 'PB'),
(2604, 18, 'Joca Marques', 'PI'),
(2605, 21, 'Jóia', 'RS'),
(2606, 24, 'Joinville', 'SC'),
(2607, 13, 'Jordânia', 'MG'),
(2608, 1, 'Jordão', 'AC'),
(2609, 24, 'José Boiteux', 'SC'),
(2610, 25, 'José Bonifácio', 'SP'),
(2611, 20, 'José da Penha', 'RN'),
(2612, 18, 'José de Freitas', 'PI'),
(2613, 13, 'José Gonçalves de Minas', 'MG'),
(2614, 13, 'José Raydan', 'MG'),
(2615, 10, 'Joselândia', 'MA'),
(2616, 13, 'Josenópolis', 'MG'),
(2617, 9, 'Joviânia', 'GO'),
(2618, 11, 'Juara', 'MT'),
(2619, 15, 'Juarez Távora', 'PB'),
(2620, 27, 'Juarina', 'TO'),
(2621, 13, 'Juatuba', 'MG'),
(2622, 15, 'Juazeirinho', 'PB'),
(2623, 5, 'Juazeiro', 'BA'),
(2624, 6, 'Juazeiro do Norte', 'CE'),
(2625, 18, 'Juazeiro do Piauí', 'PI'),
(2626, 6, 'Jucás', 'CE'),
(2627, 17, 'Jucati', 'PE'),
(2628, 5, 'Jucuruçu', 'BA'),
(2629, 20, 'Jucurutu', 'RN'),
(2630, 11, 'Juína', 'MT'),
(2631, 13, 'Juiz de Fora', 'MG'),
(2632, 18, 'Júlio Borges', 'PI'),
(2633, 21, 'Júlio de Castilhos', 'RS'),
(2634, 25, 'Júlio Mesquita', 'SP'),
(2635, 25, 'Jumirim', 'SP'),
(2636, 10, 'Junco do Maranhão', 'MA'),
(2637, 15, 'Junco do Seridó', 'PB'),
(2638, 2, 'Jundiá', 'AL'),
(2639, 20, 'Jundiá', 'RN'),
(2640, 25, 'Jundiaí', 'SP'),
(2641, 16, 'Jundiaí do Sul', 'PR'),
(2642, 2, 'Junqueiro', 'AL'),
(2643, 25, 'Junqueirópolis', 'SP'),
(2644, 17, 'Jupi', 'PE'),
(2645, 24, 'Jupiá', 'SC'),
(2646, 25, 'Juquiá', 'SP'),
(2647, 25, 'Juquitiba', 'SP'),
(2648, 13, 'Juramento', 'MG'),
(2649, 16, 'Juranda', 'PR'),
(2650, 17, 'Jurema', 'PE'),
(2651, 18, 'Jurema', 'PI'),
(2652, 15, 'Juripiranga', 'PB'),
(2653, 15, 'Juru', 'PB'),
(2654, 4, 'Juruá', 'AM'),
(2655, 13, 'Juruaia', 'MG'),
(2656, 11, 'Juruena', 'MT'),
(2657, 14, 'Juruti', 'PA'),
(2658, 11, 'Juscimeira', 'MT'),
(2659, 5, 'Jussara', 'BA'),
(2660, 9, 'Jussara', 'GO'),
(2661, 16, 'Jussara', 'PR'),
(2662, 5, 'Jussari', 'BA'),
(2663, 5, 'Jussiape', 'BA'),
(2664, 4, 'Jutaí', 'AM'),
(2665, 12, 'Juti', 'MS'),
(2666, 13, 'Juvenília', 'MG'),
(2667, 16, 'Kaloré', 'PR'),
(2668, 4, 'Lábrea', 'AM'),
(2669, 24, 'Lacerdópolis', 'SC'),
(2670, 13, 'Ladainha', 'MG'),
(2671, 12, 'Ladário', 'MS'),
(2672, 5, 'Lafaiete Coutinho', 'BA'),
(2673, 13, 'Lagamar', 'MG'),
(2674, 26, 'Lagarto', 'SE'),
(2675, 24, 'Lages', 'SC'),
(2676, 10, 'Lago da Pedra', 'MA'),
(2677, 10, 'Lago do Junco', 'MA'),
(2678, 10, 'Lago dos Rodrigues', 'MA'),
(2679, 10, 'Lago Verde', 'MA'),
(2680, 15, 'Lagoa', 'PB'),
(2681, 18, 'Lagoa Alegre', 'PI'),
(2682, 21, 'Lagoa Bonita do Sul', 'RS'),
(2683, 2, 'Lagoa da Canoa', 'AL'),
(2684, 27, 'Lagoa da Confusão', 'TO'),
(2685, 13, 'Lagoa da Prata', 'MG'),
(2686, 20, 'Lagoa d\'Anta', 'RN'),
(2687, 15, 'Lagoa de Dentro', 'PB'),
(2688, 17, 'Lagoa de Itaenga', 'PE'),
(2689, 20, 'Lagoa de Pedras', 'RN'),
(2690, 18, 'Lagoa de São Francisco', 'PI'),
(2691, 20, 'Lagoa de Velhos', 'RN'),
(2692, 18, 'Lagoa do Barro do Piauí', 'PI'),
(2693, 17, 'Lagoa do Carro', 'PE'),
(2694, 10, 'Lagoa do Mato', 'MA'),
(2695, 17, 'Lagoa do Ouro', 'PE'),
(2696, 18, 'Lagoa do Piauí', 'PI'),
(2697, 18, 'Lagoa do Sítio', 'PI'),
(2698, 27, 'Lagoa do Tocantins', 'TO'),
(2699, 17, 'Lagoa dos Gatos', 'PE'),
(2700, 13, 'Lagoa dos Patos', 'MG'),
(2701, 21, 'Lagoa dos Três Cantos', 'RS'),
(2702, 13, 'Lagoa Dourada', 'MG'),
(2703, 13, 'Lagoa Formosa', 'MG'),
(2704, 13, 'Lagoa Grande', 'MG'),
(2705, 17, 'Lagoa Grande', 'PE'),
(2706, 10, 'Lagoa Grande do Maranhão', 'MA'),
(2707, 20, 'Lagoa Nova', 'RN'),
(2708, 5, 'Lagoa Real', 'BA'),
(2709, 20, 'Lagoa Salgada', 'RN'),
(2710, 9, 'Lagoa Santa', 'GO'),
(2711, 13, 'Lagoa Santa', 'MG'),
(2712, 15, 'Lagoa Seca', 'PB'),
(2713, 21, 'Lagoa Vermelha', 'RS'),
(2714, 21, 'Lagoão', 'RS'),
(2715, 25, 'Lagoinha', 'SP'),
(2716, 18, 'Lagoinha do Piauí', 'PI'),
(2717, 24, 'Laguna', 'SC'),
(2718, 12, 'Laguna Carapã', 'MS'),
(2719, 5, 'Laje', 'BA'),
(2720, 19, 'Laje do Muriaé', 'RJ'),
(2721, 21, 'Lajeado', 'RS'),
(2722, 27, 'Lajeado', 'TO'),
(2723, 21, 'Lajeado do Bugre', 'RS'),
(2724, 24, 'Lajeado Grande', 'SC'),
(2725, 10, 'Lajeado Novo', 'MA'),
(2726, 5, 'Lajedão', 'BA'),
(2727, 5, 'Lajedinho', 'BA'),
(2728, 17, 'Lajedo', 'PE'),
(2729, 5, 'Lajedo do Tabocal', 'BA'),
(2730, 20, 'Lajes', 'RN'),
(2731, 20, 'Lajes Pintadas', 'RN'),
(2732, 13, 'Lajinha', 'MG'),
(2733, 5, 'Lamarão', 'BA'),
(2734, 13, 'Lambari', 'MG'),
(2735, 11, 'Lambari D\'Oeste', 'MT'),
(2736, 13, 'Lamim', 'MG'),
(2737, 18, 'Landri Sales', 'PI'),
(2738, 16, 'Lapa', 'PR'),
(2739, 5, 'Lapão', 'BA'),
(2740, 8, 'Laranja da Terra', 'ES'),
(2741, 13, 'Laranjal', 'MG'),
(2742, 16, 'Laranjal', 'PR'),
(2743, 3, 'Laranjal do Jari', 'AP'),
(2744, 25, 'Laranjal Paulista', 'SP'),
(2745, 26, 'Laranjeiras', 'SE'),
(2746, 16, 'Laranjeiras do Sul', 'PR'),
(2747, 13, 'Lassance', 'MG'),
(2748, 15, 'Lastro', 'PB'),
(2749, 24, 'Laurentino', 'SC'),
(2750, 5, 'Lauro de Freitas', 'BA'),
(2751, 24, 'Lauro Muller', 'SC'),
(2752, 27, 'Lavandeira', 'TO'),
(2753, 25, 'Lavínia', 'SP'),
(2754, 13, 'Lavras', 'MG'),
(2755, 6, 'Lavras da Mangabeira', 'CE'),
(2756, 21, 'Lavras do Sul', 'RS'),
(2757, 25, 'Lavrinhas', 'SP'),
(2758, 13, 'Leandro Ferreira', 'MG'),
(2759, 24, 'Lebon Régis', 'SC'),
(2760, 25, 'Leme', 'SP'),
(2761, 13, 'Leme do Prado', 'MG'),
(2762, 5, 'Lençóis', 'BA'),
(2763, 25, 'Lençóis Paulista', 'SP'),
(2764, 24, 'Leoberto Leal', 'SC'),
(2765, 13, 'Leopoldina', 'MG'),
(2766, 9, 'Leopoldo de Bulhões', 'GO'),
(2767, 16, 'Leópolis', 'PR'),
(2768, 21, 'Liberato Salzano', 'RS'),
(2769, 13, 'Liberdade', 'MG'),
(2770, 5, 'Licínio de Almeida', 'BA'),
(2771, 16, 'Lidianópolis', 'PR'),
(2772, 10, 'Lima Campos', 'MA'),
(2773, 13, 'Lima Duarte', 'MG'),
(2774, 25, 'Limeira', 'SP'),
(2775, 13, 'Limeira do Oeste', 'MG'),
(2776, 17, 'Limoeiro', 'PE'),
(2777, 2, 'Limoeiro de Anadia', 'AL'),
(2778, 14, 'Limoeiro do Ajuru', 'PA'),
(2779, 6, 'Limoeiro do Norte', 'CE'),
(2780, 16, 'Lindoeste', 'PR'),
(2781, 25, 'Lindóia', 'SP'),
(2782, 24, 'Lindóia do Sul', 'SC'),
(2783, 21, 'Lindolfo Collor', 'RS'),
(2784, 21, 'Linha Nova', 'RS'),
(2785, 8, 'Linhares', 'ES'),
(2786, 25, 'Lins', 'SP'),
(2787, 15, 'Livramento', 'PB'),
(2788, 5, 'Livramento de Nossa Senhora', 'BA'),
(2789, 27, 'Lizarda', 'TO'),
(2790, 16, 'Loanda', 'PR'),
(2791, 16, 'Lobato', 'PR'),
(2792, 15, 'Logradouro', 'PB'),
(2793, 16, 'Londrina', 'PR'),
(2794, 13, 'Lontra', 'MG'),
(2795, 24, 'Lontras', 'SC'),
(2796, 25, 'Lorena', 'SP'),
(2797, 10, 'Loreto', 'MA'),
(2798, 25, 'Lourdes', 'SP'),
(2799, 25, 'Louveira', 'SP'),
(2800, 11, 'Lucas do Rio Verde', 'MT'),
(2801, 25, 'Lucélia', 'SP'),
(2802, 15, 'Lucena', 'PB'),
(2803, 25, 'Lucianópolis', 'SP'),
(2804, 11, 'Luciara', 'MT'),
(2805, 20, 'Lucrécia', 'RN'),
(2806, 25, 'Luís Antônio', 'SP'),
(2807, 18, 'Luís Correia', 'PI'),
(2808, 10, 'Luís Domingues', 'MA'),
(2809, 5, 'Luís Eduardo Magalhães', 'BA'),
(2810, 20, 'Luís Gomes', 'RN'),
(2811, 13, 'Luisburgo', 'MG'),
(2812, 13, 'Luislândia', 'MG'),
(2813, 24, 'Luiz Alves', 'SC'),
(2814, 16, 'Luiziana', 'PR'),
(2815, 25, 'Luiziânia', 'SP'),
(2816, 13, 'Luminárias', 'MG'),
(2817, 16, 'Lunardelli', 'PR'),
(2818, 25, 'Lupércio', 'SP'),
(2819, 16, 'Lupionópolis', 'PR'),
(2820, 25, 'Lutécia', 'SP'),
(2821, 13, 'Luz', 'MG'),
(2822, 24, 'Luzerna', 'SC'),
(2823, 9, 'Luziânia', 'GO'),
(2824, 18, 'Luzilândia', 'PI'),
(2825, 27, 'Luzinópolis', 'TO'),
(2826, 19, 'Macaé', 'RJ'),
(2827, 20, 'Macaíba', 'RN'),
(2828, 5, 'Macajuba', 'BA'),
(2829, 21, 'Maçambará', 'RS'),
(2830, 26, 'Macambira', 'SE'),
(2831, 3, 'Macapá', 'AP'),
(2832, 17, 'Macaparana', 'PE'),
(2833, 5, 'Macarani', 'BA'),
(2834, 25, 'Macatuba', 'SP'),
(2835, 20, 'Macau', 'RN'),
(2836, 25, 'Macaubal', 'SP'),
(2837, 5, 'Macaúbas', 'BA'),
(2838, 25, 'Macedônia', 'SP'),
(2839, 2, 'Maceió', 'AL'),
(2840, 13, 'Machacalis', 'MG'),
(2841, 21, 'Machadinho', 'RS'),
(2842, 22, 'Machadinho D\'Oeste', 'RO'),
(2843, 13, 'Machado', 'MG'),
(2844, 17, 'Machados', 'PE'),
(2845, 24, 'Macieira', 'SC'),
(2846, 19, 'Macuco', 'RJ'),
(2847, 5, 'Macururé', 'BA'),
(2848, 6, 'Madalena', 'CE'),
(2849, 18, 'Madeiro', 'PI'),
(2850, 5, 'Madre de Deus', 'BA'),
(2851, 13, 'Madre de Deus de Minas', 'MG'),
(2852, 15, 'Mãe d\'Água', 'PB'),
(2853, 14, 'Mãe do Rio', 'PA'),
(2854, 5, 'Maetinga', 'BA'),
(2855, 24, 'Mafra', 'SC'),
(2856, 14, 'Magalhães Barata', 'PA'),
(2857, 10, 'Magalhães de Almeida', 'MA'),
(2858, 25, 'Magda', 'SP'),
(2859, 19, 'Magé', 'RJ'),
(2860, 5, 'Maiquinique', 'BA'),
(2861, 5, 'Mairi', 'BA'),
(2862, 25, 'Mairinque', 'SP'),
(2863, 25, 'Mairiporã', 'SP'),
(2864, 9, 'Mairipotaba', 'GO'),
(2865, 24, 'Major Gercino', 'SC'),
(2866, 2, 'Major Isidoro', 'AL'),
(2867, 20, 'Major Sales', 'RN'),
(2868, 24, 'Major Vieira', 'SC'),
(2869, 13, 'Malacacheta', 'MG'),
(2870, 5, 'Malhada', 'BA'),
(2871, 5, 'Malhada de Pedras', 'BA'),
(2872, 26, 'Malhada dos Bois', 'SE'),
(2873, 26, 'Malhador', 'SE'),
(2874, 16, 'Mallet', 'PR'),
(2875, 15, 'Malta', 'PB'),
(2876, 15, 'Mamanguape', 'PB'),
(2877, 9, 'Mambaí', 'GO'),
(2878, 16, 'Mamborê', 'PR'),
(2879, 13, 'Mamonas', 'MG'),
(2880, 21, 'Mampituba', 'RS'),
(2881, 4, 'Manacapuru', 'AM'),
(2882, 15, 'Manaíra', 'PB'),
(2883, 4, 'Manaquiri', 'AM'),
(2884, 17, 'Manari', 'PE'),
(2885, 4, 'Manaus', 'AM'),
(2886, 1, 'Mâncio Lima', 'AC'),
(2887, 16, 'Mandaguaçu', 'PR'),
(2888, 16, 'Mandaguari', 'PR'),
(2889, 16, 'Mandirituba', 'PR'),
(2890, 25, 'Manduri', 'SP'),
(2891, 16, 'Manfrinópolis', 'PR'),
(2892, 13, 'Manga', 'MG'),
(2893, 19, 'Mangaratiba', 'RJ'),
(2894, 16, 'Mangueirinha', 'PR'),
(2895, 13, 'Manhuaçu', 'MG'),
(2896, 13, 'Manhumirim', 'MG'),
(2897, 4, 'Manicoré', 'AM'),
(2898, 18, 'Manoel Emídio', 'PI'),
(2899, 16, 'Manoel Ribas', 'PR'),
(2900, 1, 'Manoel Urbano', 'AC'),
(2901, 21, 'Manoel Viana', 'RS'),
(2902, 5, 'Manoel Vitorino', 'BA'),
(2903, 5, 'Mansidão', 'BA'),
(2904, 13, 'Mantena', 'MG'),
(2905, 8, 'Mantenópolis', 'ES'),
(2906, 21, 'Maquiné', 'RS'),
(2907, 13, 'Mar de Espanha', 'MG'),
(2908, 2, 'Mar Vermelho', 'AL'),
(2909, 9, 'Mara Rosa', 'GO'),
(2910, 4, 'Maraã', 'AM'),
(2911, 14, 'Marabá', 'PA'),
(2912, 25, 'Marabá Paulista', 'SP'),
(2913, 10, 'Maracaçumé', 'MA'),
(2914, 25, 'Maracaí', 'SP'),
(2915, 24, 'Maracajá', 'SC'),
(2916, 12, 'Maracaju', 'MS'),
(2917, 14, 'Maracanã', 'PA'),
(2918, 6, 'Maracanaú', 'CE'),
(2919, 5, 'Maracás', 'BA'),
(2920, 2, 'Maragogi', 'AL'),
(2921, 5, 'Maragogipe', 'BA'),
(2922, 17, 'Maraial', 'PE'),
(2923, 10, 'Marajá do Sena', 'MA'),
(2924, 6, 'Maranguape', 'CE'),
(2925, 10, 'Maranhãozinho', 'MA'),
(2926, 14, 'Marapanim', 'PA'),
(2927, 25, 'Marapoama', 'SP'),
(2928, 21, 'Maratá', 'RS'),
(2929, 8, 'Marataízes', 'ES'),
(2930, 21, 'Marau', 'RS'),
(2931, 5, 'Maraú', 'BA'),
(2932, 2, 'Maravilha', 'AL'),
(2933, 24, 'Maravilha', 'SC'),
(2934, 13, 'Maravilhas', 'MG'),
(2935, 15, 'Marcação', 'PB'),
(2936, 11, 'Marcelândia', 'MT'),
(2937, 21, 'Marcelino Ramos', 'RS'),
(2938, 20, 'Marcelino Vieira', 'RN'),
(2939, 5, 'Marcionílio Souza', 'BA'),
(2940, 6, 'Marco', 'CE'),
(2941, 18, 'Marcolândia', 'PI'),
(2942, 18, 'Marcos Parente', 'PI'),
(2943, 16, 'Marechal Cândido Rondon', 'PR'),
(2944, 2, 'Marechal Deodoro', 'AL'),
(2945, 8, 'Marechal Floriano', 'ES'),
(2946, 1, 'Marechal Thaumaturgo', 'AC'),
(2947, 24, 'Marema', 'SC'),
(2948, 15, 'Mari', 'PB'),
(2949, 13, 'Maria da Fé', 'MG'),
(2950, 16, 'Maria Helena', 'PR'),
(2951, 16, 'Marialva', 'PR'),
(2952, 13, 'Mariana', 'MG'),
(2953, 21, 'Mariana Pimentel', 'RS'),
(2954, 21, 'Mariano Moro', 'RS'),
(2955, 27, 'Marianópolis do Tocantins', 'TO'),
(2956, 25, 'Mariápolis', 'SP'),
(2957, 2, 'Maribondo', 'AL'),
(2958, 19, 'Maricá', 'RJ'),
(2959, 13, 'Marilac', 'MG'),
(2960, 8, 'Marilândia', 'ES'),
(2961, 16, 'Marilândia do Sul', 'PR'),
(2962, 16, 'Marilena', 'PR'),
(2963, 25, 'Marília', 'SP'),
(2964, 16, 'Mariluz', 'PR'),
(2965, 16, 'Maringá', 'PR'),
(2966, 25, 'Marinópolis', 'SP'),
(2967, 13, 'Mário Campos', 'MG'),
(2968, 16, 'Mariópolis', 'PR'),
(2969, 16, 'Maripá', 'PR'),
(2970, 13, 'Maripá de Minas', 'MG'),
(2971, 14, 'Marituba', 'PA'),
(2972, 15, 'Marizópolis', 'PB'),
(2973, 13, 'Marliéria', 'MG'),
(2974, 16, 'Marmeleiro', 'PR'),
(2975, 13, 'Marmelópolis', 'MG'),
(2976, 21, 'Marques de Souza', 'RS'),
(2977, 16, 'Marquinho', 'PR'),
(2978, 13, 'Martinho Campos', 'MG'),
(2979, 6, 'Martinópole', 'CE'),
(2980, 25, 'Martinópolis', 'SP'),
(2981, 20, 'Martins', 'RN'),
(2982, 13, 'Martins Soares', 'MG'),
(2983, 26, 'Maruim', 'SE'),
(2984, 16, 'Marumbi', 'PR'),
(2985, 9, 'Marzagão', 'GO'),
(2986, 5, 'Mascote', 'BA'),
(2987, 6, 'Massapê', 'CE'),
(2988, 18, 'Massapê do Piauí', 'PI'),
(2989, 15, 'Massaranduba', 'PB'),
(2990, 24, 'Massaranduba', 'SC'),
(2991, 21, 'Mata', 'RS'),
(2992, 5, 'Mata de São João', 'BA'),
(2993, 2, 'Mata Grande', 'AL'),
(2994, 10, 'Mata Roma', 'MA'),
(2995, 13, 'Mata Verde', 'MG'),
(2996, 25, 'Matão', 'SP'),
(2997, 15, 'Mataraca', 'PB'),
(2998, 27, 'Mateiros', 'TO'),
(2999, 16, 'Matelândia', 'PR'),
(3000, 13, 'Materlândia', 'MG'),
(3001, 13, 'Mateus Leme', 'MG'),
(3002, 13, 'Mathias Lobato', 'MG'),
(3003, 13, 'Matias Barbosa', 'MG'),
(3004, 13, 'Matias Cardoso', 'MG'),
(3005, 18, 'Matias Olímpio', 'PI'),
(3006, 5, 'Matina', 'BA'),
(3007, 10, 'Matinha', 'MA'),
(3008, 15, 'Matinhas', 'PB'),
(3009, 16, 'Matinhos', 'PR'),
(3010, 13, 'Matipó', 'MG'),
(3011, 21, 'Mato Castelhano', 'RS'),
(3012, 15, 'Mato Grosso', 'PB'),
(3013, 21, 'Mato Leitão', 'RS'),
(3014, 21, 'Mato Queimado', 'RS'),
(3015, 16, 'Mato Rico', 'PR'),
(3016, 13, 'Mato Verde', 'MG'),
(3017, 10, 'Matões', 'MA'),
(3018, 10, 'Matões do Norte', 'MA'),
(3019, 24, 'Matos Costa', 'SC'),
(3020, 13, 'Matozinhos', 'MG'),
(3021, 9, 'Matrinchã', 'GO'),
(3022, 2, 'Matriz de Camaragibe', 'AL'),
(3023, 11, 'Matupá', 'MT'),
(3024, 15, 'Maturéia', 'PB'),
(3025, 13, 'Matutina', 'MG'),
(3026, 25, 'Mauá', 'SP'),
(3027, 16, 'Mauá da Serra', 'PR'),
(3028, 4, 'Maués', 'AM'),
(3029, 9, 'Maurilândia', 'GO'),
(3030, 27, 'Maurilândia do Tocantins', 'TO'),
(3031, 6, 'Mauriti', 'CE'),
(3032, 20, 'Maxaranguape', 'RN'),
(3033, 21, 'Maximiliano de Almeida', 'RS'),
(3034, 3, 'Mazagão', 'AP'),
(3035, 13, 'Medeiros', 'MG'),
(3036, 5, 'Medeiros Neto', 'BA'),
(3037, 16, 'Medianeira', 'PR'),
(3038, 14, 'Medicilândia', 'PA'),
(3039, 13, 'Medina', 'MG'),
(3040, 24, 'Meleiro', 'SC'),
(3041, 14, 'Melgaço', 'PA'),
(3042, 19, 'Mendes', 'RJ'),
(3043, 13, 'Mendes Pimentel', 'MG'),
(3044, 25, 'Mendonça', 'SP'),
(3045, 16, 'Mercedes', 'PR'),
(3046, 13, 'Mercês', 'MG'),
(3047, 25, 'Meridiano', 'SP'),
(3048, 6, 'Meruoca', 'CE'),
(3049, 25, 'Mesópolis', 'SP'),
(3050, 13, 'Mesquita', 'MG'),
(3051, 19, 'Mesquita', 'RJ'),
(3052, 2, 'Messias', 'AL'),
(3053, 20, 'Messias Targino', 'RN'),
(3054, 18, 'Miguel Alves', 'PI'),
(3055, 5, 'Miguel Calmon', 'BA'),
(3056, 18, 'Miguel Leão', 'PI'),
(3057, 19, 'Miguel Pereira', 'RJ'),
(3058, 25, 'Miguelópolis', 'SP'),
(3059, 5, 'Milagres', 'BA'),
(3060, 6, 'Milagres', 'CE'),
(3061, 10, 'Milagres do Maranhão', 'MA'),
(3062, 6, 'Milhã', 'CE'),
(3063, 18, 'Milton Brandão', 'PI'),
(3064, 9, 'Mimoso de Goiás', 'GO'),
(3065, 8, 'Mimoso do Sul', 'ES'),
(3066, 9, 'Minaçu', 'GO'),
(3067, 2, 'Minador do Negrão', 'AL'),
(3068, 21, 'Minas do Leão', 'RS'),
(3069, 13, 'Minas Novas', 'MG'),
(3070, 13, 'Minduri', 'MG'),
(3071, 9, 'Mineiros', 'GO'),
(3072, 25, 'Mineiros do Tietê', 'SP'),
(3073, 22, 'Ministro Andreazza', 'RO'),
(3074, 25, 'Mira Estrela', 'SP'),
(3075, 13, 'Mirabela', 'MG'),
(3076, 25, 'Miracatu', 'SP'),
(3077, 19, 'Miracema', 'RJ'),
(3078, 27, 'Miracema do Tocantins', 'TO'),
(3079, 10, 'Mirador', 'MA'),
(3080, 16, 'Mirador', 'PR'),
(3081, 13, 'Miradouro', 'MG'),
(3082, 21, 'Miraguaí', 'RS'),
(3083, 13, 'Miraí', 'MG'),
(3084, 6, 'Miraíma', 'CE'),
(3085, 12, 'Miranda', 'MS'),
(3086, 10, 'Miranda do Norte', 'MA'),
(3087, 17, 'Mirandiba', 'PE'),
(3088, 25, 'Mirandópolis', 'SP'),
(3089, 5, 'Mirangaba', 'BA'),
(3090, 27, 'Miranorte', 'TO'),
(3091, 5, 'Mirante', 'BA'),
(3092, 22, 'Mirante da Serra', 'RO'),
(3093, 25, 'Mirante do Paranapanema', 'SP'),
(3094, 16, 'Miraselva', 'PR'),
(3095, 25, 'Mirassol', 'SP'),
(3096, 11, 'Mirassol d\'Oeste', 'MT'),
(3097, 25, 'Mirassolândia', 'SP'),
(3098, 13, 'Miravânia', 'MG'),
(3099, 24, 'Mirim Doce', 'SC'),
(3100, 10, 'Mirinzal', 'MA'),
(3101, 16, 'Missal', 'PR'),
(3102, 6, 'Missão Velha', 'CE'),
(3103, 14, 'Mocajuba', 'PA'),
(3104, 25, 'Mococa', 'SP'),
(3105, 24, 'Modelo', 'SC'),
(3106, 13, 'Moeda', 'MG'),
(3107, 13, 'Moema', 'MG'),
(3108, 15, 'Mogeiro', 'PB'),
(3109, 25, 'Mogi das Cruzes', 'SP'),
(3110, 25, 'Mogi Guaçu', 'SP'),
(3111, 9, 'Moiporá', 'GO'),
(3112, 26, 'Moita Bonita', 'SE'),
(3113, 25, 'Moji Mirim', 'SP'),
(3114, 14, 'Moju', 'PA'),
(3115, 6, 'Mombaça', 'CE'),
(3116, 25, 'Mombuca', 'SP'),
(3117, 10, 'Monção', 'MA'),
(3118, 25, 'Monções', 'SP'),
(3119, 24, 'Mondaí', 'SC'),
(3120, 25, 'Mongaguá', 'SP'),
(3121, 13, 'Monjolos', 'MG'),
(3122, 18, 'Monsenhor Gil', 'PI'),
(3123, 18, 'Monsenhor Hipólito', 'PI'),
(3124, 13, 'Monsenhor Paulo', 'MG'),
(3125, 6, 'Monsenhor Tabosa', 'CE'),
(3126, 15, 'Montadas', 'PB'),
(3127, 13, 'Montalvânia', 'MG'),
(3128, 8, 'Montanha', 'ES'),
(3129, 20, 'Montanhas', 'RN'),
(3130, 21, 'Montauri', 'RS'),
(3131, 14, 'Monte Alegre', 'PA'),
(3132, 20, 'Monte Alegre', 'RN'),
(3133, 9, 'Monte Alegre de Goiás', 'GO'),
(3134, 13, 'Monte Alegre de Minas', 'MG'),
(3135, 26, 'Monte Alegre de Sergipe', 'SE'),
(3136, 18, 'Monte Alegre do Piauí', 'PI'),
(3137, 25, 'Monte Alegre do Sul', 'SP'),
(3138, 21, 'Monte Alegre dos Campos', 'RS'),
(3139, 25, 'Monte Alto', 'SP'),
(3140, 25, 'Monte Aprazível', 'SP'),
(3141, 13, 'Monte Azul', 'MG'),
(3142, 25, 'Monte Azul Paulista', 'SP'),
(3143, 13, 'Monte Belo', 'MG'),
(3144, 21, 'Monte Belo do Sul', 'RS'),
(3145, 24, 'Monte Carlo', 'SC'),
(3146, 13, 'Monte Carmelo', 'MG'),
(3147, 24, 'Monte Castelo', 'SC'),
(3148, 25, 'Monte Castelo', 'SP'),
(3149, 20, 'Monte das Gameleiras', 'RN'),
(3150, 27, 'Monte do Carmo', 'TO'),
(3151, 13, 'Monte Formoso', 'MG'),
(3152, 15, 'Monte Horebe', 'PB'),
(3153, 25, 'Monte Mor', 'SP'),
(3154, 22, 'Monte Negro', 'RO'),
(3155, 5, 'Monte Santo', 'BA'),
(3156, 13, 'Monte Santo de Minas', 'MG'),
(3157, 27, 'Monte Santo do Tocantins', 'TO'),
(3158, 13, 'Monte Sião', 'MG'),
(3159, 15, 'Monteiro', 'PB'),
(3160, 25, 'Monteiro Lobato', 'SP'),
(3161, 2, 'Monteirópolis', 'AL'),
(3162, 21, 'Montenegro', 'RS'),
(3163, 10, 'Montes Altos', 'MA'),
(3164, 13, 'Montes Claros', 'MG'),
(3165, 9, 'Montes Claros de Goiás', 'GO'),
(3166, 13, 'Montezuma', 'MG'),
(3167, 9, 'Montividiu', 'GO'),
(3168, 9, 'Montividiu do Norte', 'GO'),
(3169, 6, 'Morada Nova', 'CE'),
(3170, 13, 'Morada Nova de Minas', 'MG'),
(3171, 6, 'Moraújo', 'CE'),
(3172, 17, 'Moreilândia', 'PE'),
(3173, 16, 'Moreira Sales', 'PR'),
(3174, 17, 'Moreno', 'PE'),
(3175, 21, 'Mormaço', 'RS'),
(3176, 5, 'Morpará', 'BA'),
(3177, 16, 'Morretes', 'PR'),
(3178, 6, 'Morrinhos', 'CE'),
(3179, 9, 'Morrinhos', 'GO'),
(3180, 21, 'Morrinhos do Sul', 'RS'),
(3181, 25, 'Morro Agudo', 'SP'),
(3182, 9, 'Morro Agudo de Goiás', 'GO'),
(3183, 18, 'Morro Cabeça no Tempo', 'PI'),
(3184, 24, 'Morro da Fumaça', 'SC'),
(3185, 13, 'Morro da Garça', 'MG'),
(3186, 5, 'Morro do Chapéu', 'BA'),
(3187, 18, 'Morro do Chapéu do Piauí', 'PI'),
(3188, 13, 'Morro do Pilar', 'MG'),
(3189, 24, 'Morro Grande', 'SC'),
(3190, 21, 'Morro Redondo', 'RS'),
(3191, 21, 'Morro Reuter', 'RS'),
(3192, 10, 'Morros', 'MA'),
(3193, 5, 'Mortugaba', 'BA'),
(3194, 25, 'Morungaba', 'SP'),
(3195, 9, 'Mossâmedes', 'GO'),
(3196, 20, 'Mossoró', 'RN'),
(3197, 21, 'Mostardas', 'RS'),
(3198, 25, 'Motuca', 'SP'),
(3199, 9, 'Mozarlândia', 'GO'),
(3200, 14, 'Muaná', 'PA'),
(3201, 23, 'Mucajaí', 'RR'),
(3202, 6, 'Mucambo', 'CE'),
(3203, 5, 'Mucugê', 'BA'),
(3204, 21, 'Muçum', 'RS'),
(3205, 5, 'Mucuri', 'BA'),
(3206, 8, 'Mucurici', 'ES'),
(3207, 21, 'Muitos Capões', 'RS'),
(3208, 21, 'Muliterno', 'RS'),
(3209, 6, 'Mulungu', 'CE'),
(3210, 15, 'Mulungu', 'PB'),
(3211, 5, 'Mulungu do Morro', 'BA'),
(3212, 5, 'Mundo Novo', 'BA'),
(3213, 9, 'Mundo Novo', 'GO'),
(3214, 12, 'Mundo Novo', 'MS'),
(3215, 13, 'Munhoz', 'MG'),
(3216, 16, 'Munhoz de Melo', 'PR'),
(3217, 5, 'Muniz Ferreira', 'BA'),
(3218, 8, 'Muniz Freire', 'ES'),
(3219, 5, 'Muquém de São Francisco', 'BA'),
(3220, 8, 'Muqui', 'ES'),
(3221, 13, 'Muriaé', 'MG'),
(3222, 26, 'Muribeca', 'SE'),
(3223, 2, 'Murici', 'AL'),
(3224, 18, 'Murici dos Portelas', 'PI'),
(3225, 27, 'Muricilândia', 'TO'),
(3226, 5, 'Muritiba', 'BA'),
(3227, 25, 'Murutinga do Sul', 'SP'),
(3228, 5, 'Mutuípe', 'BA'),
(3229, 13, 'Mutum', 'MG'),
(3230, 9, 'Mutunópolis', 'GO'),
(3231, 13, 'Muzambinho', 'MG'),
(3232, 13, 'Nacip Raydan', 'MG'),
(3233, 25, 'Nantes', 'SP'),
(3234, 13, 'Nanuque', 'MG'),
(3235, 21, 'Não-Me-Toque', 'RS'),
(3236, 13, 'Naque', 'MG'),
(3237, 25, 'Narandiba', 'SP'),
(3238, 20, 'Natal', 'RN'),
(3239, 13, 'Natalândia', 'MG'),
(3240, 13, 'Natércia', 'MG'),
(3241, 19, 'Natividade', 'RJ'),
(3242, 27, 'Natividade', 'TO'),
(3243, 25, 'Natividade da Serra', 'SP'),
(3244, 15, 'Natuba', 'PB'),
(3245, 24, 'Navegantes', 'SC'),
(3246, 12, 'Naviraí', 'MS'),
(3247, 5, 'Nazaré', 'BA'),
(3248, 27, 'Nazaré', 'TO'),
(3249, 17, 'Nazaré da Mata', 'PE'),
(3250, 18, 'Nazaré do Piauí', 'PI'),
(3251, 25, 'Nazaré Paulista', 'SP'),
(3252, 13, 'Nazareno', 'MG'),
(3253, 15, 'Nazarezinho', 'PB'),
(3254, 18, 'Nazária ', 'PI'),
(3255, 9, 'Nazário', 'GO'),
(3256, 26, 'Neópolis', 'SE'),
(3257, 13, 'Nepomuceno', 'MG'),
(3258, 9, 'Nerópolis', 'GO'),
(3259, 25, 'Neves Paulista', 'SP'),
(3260, 4, 'Nhamundá', 'AM'),
(3261, 25, 'Nhandeara', 'SP'),
(3262, 21, 'Nicolau Vergueiro', 'RS'),
(3263, 5, 'Nilo Peçanha', 'BA'),
(3264, 19, 'Nilópolis', 'RJ'),
(3265, 10, 'Nina Rodrigues', 'MA'),
(3266, 13, 'Ninheira', 'MG'),
(3267, 12, 'Nioaque', 'MS'),
(3268, 25, 'Nipoã', 'SP'),
(3269, 9, 'Niquelândia', 'GO'),
(3270, 20, 'Nísia Floresta', 'RN'),
(3271, 19, 'Niterói', 'RJ'),
(3272, 11, 'Nobres', 'MT'),
(3273, 21, 'Nonoai', 'RS'),
(3274, 5, 'Nordestina', 'BA'),
(3275, 23, 'Normandia', 'RR'),
(3276, 11, 'Nortelândia', 'MT'),
(3277, 26, 'Nossa Senhora Aparecida', 'SE'),
(3278, 26, 'Nossa Senhora da Glória', 'SE'),
(3279, 26, 'Nossa Senhora das Dores', 'SE'),
(3280, 16, 'Nossa Senhora das Graças', 'PR'),
(3281, 26, 'Nossa Senhora de Lourdes', 'SE'),
(3282, 18, 'Nossa Senhora de Nazaré', 'PI'),
(3283, 11, 'Nossa Senhora do Livramento', 'MT'),
(3284, 26, 'Nossa Senhora do Socorro', 'SE'),
(3285, 18, 'Nossa Senhora dos Remédios', 'PI'),
(3286, 25, 'Nova Aliança', 'SP'),
(3287, 16, 'Nova Aliança do Ivaí', 'PR'),
(3288, 21, 'Nova Alvorada', 'RS'),
(3289, 12, 'Nova Alvorada do Sul', 'MS'),
(3290, 9, 'Nova América', 'GO'),
(3291, 16, 'Nova América da Colina', 'PR'),
(3292, 12, 'Nova Andradina', 'MS'),
(3293, 21, 'Nova Araçá', 'RS'),
(3294, 9, 'Nova Aurora', 'GO'),
(3295, 16, 'Nova Aurora', 'PR'),
(3296, 11, 'Nova Bandeirantes', 'MT'),
(3297, 21, 'Nova Bassano', 'RS'),
(3298, 13, 'Nova Belém', 'MG'),
(3299, 21, 'Nova Boa Vista', 'RS'),
(3300, 11, 'Nova Brasilândia', 'MT'),
(3301, 22, 'Nova Brasilândia D\'Oeste', 'RO'),
(3302, 21, 'Nova Bréscia', 'RS'),
(3303, 25, 'Nova Campina', 'SP');
INSERT INTO `app_cidades` (`cidade_id`, `estado_id`, `cidade_nome`, `cidade_uf`) VALUES
(3304, 5, 'Nova Canaã', 'BA'),
(3305, 11, 'Nova Canaã do Norte', 'MT'),
(3306, 25, 'Nova Canaã Paulista', 'SP'),
(3307, 21, 'Nova Candelária', 'RS'),
(3308, 16, 'Nova Cantu', 'PR'),
(3309, 25, 'Nova Castilho', 'SP'),
(3310, 10, 'Nova Colinas', 'MA'),
(3311, 9, 'Nova Crixás', 'GO'),
(3312, 20, 'Nova Cruz', 'RN'),
(3313, 13, 'Nova Era', 'MG'),
(3314, 24, 'Nova Erechim', 'SC'),
(3315, 16, 'Nova Esperança', 'PR'),
(3316, 14, 'Nova Esperança do Piriá', 'PA'),
(3317, 16, 'Nova Esperança do Sudoeste', 'PR'),
(3318, 21, 'Nova Esperança do Sul', 'RS'),
(3319, 25, 'Nova Europa', 'SP'),
(3320, 5, 'Nova Fátima', 'BA'),
(3321, 16, 'Nova Fátima', 'PR'),
(3322, 15, 'Nova Floresta', 'PB'),
(3323, 19, 'Nova Friburgo', 'RJ'),
(3324, 9, 'Nova Glória', 'GO'),
(3325, 25, 'Nova Granada', 'SP'),
(3326, 11, 'Nova Guarita', 'MT'),
(3327, 25, 'Nova Guataporanga', 'SP'),
(3328, 21, 'Nova Hartz', 'RS'),
(3329, 5, 'Nova Ibiá', 'BA'),
(3330, 19, 'Nova Iguaçu', 'RJ'),
(3331, 9, 'Nova Iguaçu de Goiás', 'GO'),
(3332, 25, 'Nova Independência', 'SP'),
(3333, 10, 'Nova Iorque', 'MA'),
(3334, 14, 'Nova Ipixuna', 'PA'),
(3335, 24, 'Nova Itaberaba', 'SC'),
(3336, 5, 'Nova Itarana', 'BA'),
(3337, 11, 'Nova Lacerda', 'MT'),
(3338, 16, 'Nova Laranjeiras', 'PR'),
(3339, 13, 'Nova Lima', 'MG'),
(3340, 16, 'Nova Londrina', 'PR'),
(3341, 25, 'Nova Luzitânia', 'SP'),
(3342, 22, 'Nova Mamoré', 'RO'),
(3343, 11, 'Nova Marilândia', 'MT'),
(3344, 11, 'Nova Maringá', 'MT'),
(3345, 13, 'Nova Módica', 'MG'),
(3346, 11, 'Nova Monte Verde', 'MT'),
(3347, 11, 'Nova Mutum', 'MT'),
(3348, 11, 'Nova Nazaré', 'MT'),
(3349, 25, 'Nova Odessa', 'SP'),
(3350, 11, 'Nova Olímpia', 'MT'),
(3351, 16, 'Nova Olímpia', 'PR'),
(3352, 6, 'Nova Olinda', 'CE'),
(3353, 15, 'Nova Olinda', 'PB'),
(3354, 27, 'Nova Olinda', 'TO'),
(3355, 10, 'Nova Olinda do Maranhão', 'MA'),
(3356, 4, 'Nova Olinda do Norte', 'AM'),
(3357, 21, 'Nova Pádua', 'RS'),
(3358, 21, 'Nova Palma', 'RS'),
(3359, 15, 'Nova Palmeira', 'PB'),
(3360, 21, 'Nova Petrópolis', 'RS'),
(3361, 13, 'Nova Ponte', 'MG'),
(3362, 13, 'Nova Porteirinha', 'MG'),
(3363, 21, 'Nova Prata', 'RS'),
(3364, 16, 'Nova Prata do Iguaçu', 'PR'),
(3365, 21, 'Nova Ramada', 'RS'),
(3366, 5, 'Nova Redenção', 'BA'),
(3367, 13, 'Nova Resende', 'MG'),
(3368, 9, 'Nova Roma', 'GO'),
(3369, 21, 'Nova Roma do Sul', 'RS'),
(3370, 27, 'Nova Rosalândia', 'TO'),
(3371, 6, 'Nova Russas', 'CE'),
(3372, 16, 'Nova Santa Bárbara', 'PR'),
(3373, 11, 'Nova Santa Helena', 'MT'),
(3374, 18, 'Nova Santa Rita', 'PI'),
(3375, 21, 'Nova Santa Rita', 'RS'),
(3376, 16, 'Nova Santa Rosa', 'PR'),
(3377, 13, 'Nova Serrana', 'MG'),
(3378, 5, 'Nova Soure', 'BA'),
(3379, 16, 'Nova Tebas', 'PR'),
(3380, 14, 'Nova Timboteua', 'PA'),
(3381, 24, 'Nova Trento', 'SC'),
(3382, 11, 'Nova Ubiratã', 'MT'),
(3383, 13, 'Nova União', 'MG'),
(3384, 22, 'Nova União', 'RO'),
(3385, 8, 'Nova Venécia', 'ES'),
(3386, 9, 'Nova Veneza', 'GO'),
(3387, 24, 'Nova Veneza', 'SC'),
(3388, 5, 'Nova Viçosa', 'BA'),
(3389, 11, 'Nova Xavantina', 'MT'),
(3390, 25, 'Novais', 'SP'),
(3391, 27, 'Novo Acordo', 'TO'),
(3392, 4, 'Novo Airão', 'AM'),
(3393, 27, 'Novo Alegre', 'TO'),
(3394, 4, 'Novo Aripuanã', 'AM'),
(3395, 21, 'Novo Barreiro', 'RS'),
(3396, 9, 'Novo Brasil', 'GO'),
(3397, 21, 'Novo Cabrais', 'RS'),
(3398, 13, 'Novo Cruzeiro', 'MG'),
(3399, 9, 'Novo Gama', 'GO'),
(3400, 21, 'Novo Hamburgo', 'RS'),
(3401, 5, 'Novo Horizonte', 'BA'),
(3402, 24, 'Novo Horizonte', 'SC'),
(3403, 25, 'Novo Horizonte', 'SP'),
(3404, 11, 'Novo Horizonte do Norte', 'MT'),
(3405, 22, 'Novo Horizonte do Oeste', 'RO'),
(3406, 12, 'Novo Horizonte do Sul', 'MS'),
(3407, 16, 'Novo Itacolomi', 'PR'),
(3408, 27, 'Novo Jardim', 'TO'),
(3409, 2, 'Novo Lino', 'AL'),
(3410, 21, 'Novo Machado', 'RS'),
(3411, 11, 'Novo Mundo', 'MT'),
(3412, 6, 'Novo Oriente', 'CE'),
(3413, 13, 'Novo Oriente de Minas', 'MG'),
(3414, 18, 'Novo Oriente do Piauí', 'PI'),
(3415, 9, 'Novo Planalto', 'GO'),
(3416, 14, 'Novo Progresso', 'PA'),
(3417, 14, 'Novo Repartimento', 'PA'),
(3418, 11, 'Novo Santo Antônio', 'MT'),
(3419, 18, 'Novo Santo Antônio', 'PI'),
(3420, 11, 'Novo São Joaquim', 'MT'),
(3421, 21, 'Novo Tiradentes', 'RS'),
(3422, 5, 'Novo Triunfo', 'BA'),
(3423, 21, 'Novo Xingu', 'RS'),
(3424, 13, 'Novorizonte', 'MG'),
(3425, 25, 'Nuporanga', 'SP'),
(3426, 14, 'Óbidos', 'PA'),
(3427, 6, 'Ocara', 'CE'),
(3428, 25, 'Ocauçu', 'SP'),
(3429, 18, 'Oeiras', 'PI'),
(3430, 14, 'Oeiras do Pará', 'PA'),
(3431, 3, 'Oiapoque', 'AP'),
(3432, 13, 'Olaria', 'MG'),
(3433, 25, 'Óleo', 'SP'),
(3434, 15, 'Olho d\'Água', 'PB'),
(3435, 10, 'Olho d\'Água das Cunhãs', 'MA'),
(3436, 2, 'Olho d\'Água das Flores', 'AL'),
(3437, 2, 'Olho d\'Água do Casado', 'AL'),
(3438, 18, 'Olho D\'Água do Piauí', 'PI'),
(3439, 2, 'Olho d\'Água Grande', 'AL'),
(3440, 20, 'Olho-d\'Água do Borges', 'RN'),
(3441, 13, 'Olhos-d\'Água', 'MG'),
(3442, 25, 'Olímpia', 'SP'),
(3443, 13, 'Olímpio Noronha', 'MG'),
(3444, 17, 'Olinda', 'PE'),
(3445, 10, 'Olinda Nova do Maranhão', 'MA'),
(3446, 5, 'Olindina', 'BA'),
(3447, 15, 'Olivedos', 'PB'),
(3448, 13, 'Oliveira', 'MG'),
(3449, 27, 'Oliveira de Fátima', 'TO'),
(3450, 5, 'Oliveira dos Brejinhos', 'BA'),
(3451, 13, 'Oliveira Fortes', 'MG'),
(3452, 2, 'Olivença', 'AL'),
(3453, 13, 'Onça de Pitangui', 'MG'),
(3454, 25, 'Onda Verde', 'SP'),
(3455, 13, 'Oratórios', 'MG'),
(3456, 25, 'Oriente', 'SP'),
(3457, 25, 'Orindiúva', 'SP'),
(3458, 14, 'Oriximiná', 'PA'),
(3459, 13, 'Orizânia', 'MG'),
(3460, 9, 'Orizona', 'GO'),
(3461, 25, 'Orlândia', 'SP'),
(3462, 24, 'Orleans', 'SC'),
(3463, 17, 'Orobó', 'PE'),
(3464, 17, 'Orocó', 'PE'),
(3465, 6, 'Orós', 'CE'),
(3466, 16, 'Ortigueira', 'PR'),
(3467, 25, 'Osasco', 'SP'),
(3468, 25, 'Oscar Bressane', 'SP'),
(3469, 21, 'Osório', 'RS'),
(3470, 25, 'Osvaldo Cruz', 'SP'),
(3471, 24, 'Otacílio Costa', 'SC'),
(3472, 14, 'Ourém', 'PA'),
(3473, 5, 'Ouriçangas', 'BA'),
(3474, 17, 'Ouricuri', 'PE'),
(3475, 14, 'Ourilândia do Norte', 'PA'),
(3476, 25, 'Ourinhos', 'SP'),
(3477, 16, 'Ourizona', 'PR'),
(3478, 24, 'Ouro', 'SC'),
(3479, 2, 'Ouro Branco', 'AL'),
(3480, 13, 'Ouro Branco', 'MG'),
(3481, 20, 'Ouro Branco', 'RN'),
(3482, 13, 'Ouro Fino', 'MG'),
(3483, 13, 'Ouro Preto', 'MG'),
(3484, 22, 'Ouro Preto do Oeste', 'RO'),
(3485, 15, 'Ouro Velho', 'PB'),
(3486, 24, 'Ouro Verde', 'SC'),
(3487, 25, 'Ouro Verde', 'SP'),
(3488, 9, 'Ouro Verde de Goiás', 'GO'),
(3489, 13, 'Ouro Verde de Minas', 'MG'),
(3490, 16, 'Ouro Verde do Oeste', 'PR'),
(3491, 25, 'Ouroeste', 'SP'),
(3492, 5, 'Ourolândia', 'BA'),
(3493, 9, 'Ouvidor', 'GO'),
(3494, 25, 'Pacaembu', 'SP'),
(3495, 14, 'Pacajá', 'PA'),
(3496, 6, 'Pacajus', 'CE'),
(3497, 23, 'Pacaraima', 'RR'),
(3498, 6, 'Pacatuba', 'CE'),
(3499, 26, 'Pacatuba', 'SE'),
(3500, 10, 'Paço do Lumiar', 'MA'),
(3501, 6, 'Pacoti', 'CE'),
(3502, 6, 'Pacujá', 'CE'),
(3503, 9, 'Padre Bernardo', 'GO'),
(3504, 13, 'Padre Carvalho', 'MG'),
(3505, 18, 'Padre Marcos', 'PI'),
(3506, 13, 'Padre Paraíso', 'MG'),
(3507, 18, 'Paes Landim', 'PI'),
(3508, 13, 'Pai Pedro', 'MG'),
(3509, 24, 'Paial', 'SC'),
(3510, 16, 'Paiçandu', 'PR'),
(3511, 21, 'Paim Filho', 'RS'),
(3512, 13, 'Paineiras', 'MG'),
(3513, 24, 'Painel', 'SC'),
(3514, 13, 'Pains', 'MG'),
(3515, 13, 'Paiva', 'MG'),
(3516, 18, 'Pajeú do Piauí', 'PI'),
(3517, 2, 'Palestina', 'AL'),
(3518, 25, 'Palestina', 'SP'),
(3519, 9, 'Palestina de Goiás', 'GO'),
(3520, 14, 'Palestina do Pará', 'PA'),
(3521, 6, 'Palhano', 'CE'),
(3522, 24, 'Palhoça', 'SC'),
(3523, 13, 'Palma', 'MG'),
(3524, 24, 'Palma Sola', 'SC'),
(3525, 6, 'Palmácia', 'CE'),
(3526, 17, 'Palmares', 'PE'),
(3527, 21, 'Palmares do Sul', 'RS'),
(3528, 25, 'Palmares Paulista', 'SP'),
(3529, 16, 'Palmas', 'PR'),
(3530, 27, 'Palmas', 'TO'),
(3531, 5, 'Palmas de Monte Alto', 'BA'),
(3532, 16, 'Palmeira', 'PR'),
(3533, 24, 'Palmeira', 'SC'),
(3534, 21, 'Palmeira das Missões', 'RS'),
(3535, 18, 'Palmeira do Piauí', 'PI'),
(3536, 25, 'Palmeira d\'Oeste', 'SP'),
(3537, 2, 'Palmeira dos Índios', 'AL'),
(3538, 18, 'Palmeirais', 'PI'),
(3539, 10, 'Palmeirândia', 'MA'),
(3540, 27, 'Palmeirante', 'TO'),
(3541, 5, 'Palmeiras', 'BA'),
(3542, 9, 'Palmeiras de Goiás', 'GO'),
(3543, 27, 'Palmeiras do Tocantins', 'TO'),
(3544, 17, 'Palmeirina', 'PE'),
(3545, 27, 'Palmeirópolis', 'TO'),
(3546, 9, 'Palmelo', 'GO'),
(3547, 9, 'Palminópolis', 'GO'),
(3548, 16, 'Palmital', 'PR'),
(3549, 25, 'Palmital', 'SP'),
(3550, 21, 'Palmitinho', 'RS'),
(3551, 24, 'Palmitos', 'SC'),
(3552, 13, 'Palmópolis', 'MG'),
(3553, 16, 'Palotina', 'PR'),
(3554, 9, 'Panamá', 'GO'),
(3555, 21, 'Panambi', 'RS'),
(3556, 8, 'Pancas', 'ES'),
(3557, 17, 'Panelas', 'PE'),
(3558, 25, 'Panorama', 'SP'),
(3559, 21, 'Pantano Grande', 'RS'),
(3560, 2, 'Pão de Açúcar', 'AL'),
(3561, 13, 'Papagaios', 'MG'),
(3562, 24, 'Papanduva', 'SC'),
(3563, 18, 'Paquetá', 'PI'),
(3564, 13, 'Pará de Minas', 'MG'),
(3565, 19, 'Paracambi', 'RJ'),
(3566, 13, 'Paracatu', 'MG'),
(3567, 6, 'Paracuru', 'CE'),
(3568, 14, 'Paragominas', 'PA'),
(3569, 13, 'Paraguaçu', 'MG'),
(3570, 25, 'Paraguaçu Paulista', 'SP'),
(3571, 21, 'Paraí', 'RS'),
(3572, 19, 'Paraíba do Sul', 'RJ'),
(3573, 10, 'Paraibano', 'MA'),
(3574, 25, 'Paraibuna', 'SP'),
(3575, 6, 'Paraipaba', 'CE'),
(3576, 24, 'Paraíso', 'SC'),
(3577, 25, 'Paraíso', 'SP'),
(3578, 16, 'Paraíso do Norte', 'PR'),
(3579, 21, 'Paraíso do Sul', 'RS'),
(3580, 27, 'Paraíso do Tocantins', 'TO'),
(3581, 13, 'Paraisópolis', 'MG'),
(3582, 6, 'Parambu', 'CE'),
(3583, 5, 'Paramirim', 'BA'),
(3584, 6, 'Paramoti', 'CE'),
(3585, 20, 'Paraná', 'RN'),
(3586, 27, 'Paranã', 'TO'),
(3587, 16, 'Paranacity', 'PR'),
(3588, 16, 'Paranaguá', 'PR'),
(3589, 12, 'Paranaíba', 'MS'),
(3590, 9, 'Paranaiguara', 'GO'),
(3591, 11, 'Paranaíta', 'MT'),
(3592, 25, 'Paranapanema', 'SP'),
(3593, 16, 'Paranapoema', 'PR'),
(3594, 25, 'Paranapuã', 'SP'),
(3595, 17, 'Paranatama', 'PE'),
(3596, 11, 'Paranatinga', 'MT'),
(3597, 16, 'Paranavaí', 'PR'),
(3598, 12, 'Paranhos', 'MS'),
(3599, 13, 'Paraopeba', 'MG'),
(3600, 25, 'Parapuã', 'SP'),
(3601, 15, 'Parari', 'PB'),
(3602, 5, 'Paratinga', 'BA'),
(3603, 19, 'Paraty', 'RJ'),
(3604, 20, 'Paraú', 'RN'),
(3605, 14, 'Parauapebas', 'PA'),
(3606, 9, 'Paraúna', 'GO'),
(3607, 20, 'Parazinho', 'RN'),
(3608, 25, 'Pardinho', 'SP'),
(3609, 21, 'Pareci Novo', 'RS'),
(3610, 22, 'Parecis', 'RO'),
(3611, 20, 'Parelhas', 'RN'),
(3612, 2, 'Pariconha', 'AL'),
(3613, 4, 'Parintins', 'AM'),
(3614, 5, 'Paripiranga', 'BA'),
(3615, 2, 'Paripueira', 'AL'),
(3616, 25, 'Pariquera-Açu', 'SP'),
(3617, 25, 'Parisi', 'SP'),
(3618, 18, 'Parnaguá', 'PI'),
(3619, 18, 'Parnaíba', 'PI'),
(3620, 17, 'Parnamirim', 'PE'),
(3621, 20, 'Parnamirim', 'RN'),
(3622, 10, 'Parnarama', 'MA'),
(3623, 21, 'Parobé', 'RS'),
(3624, 20, 'Passa e Fica', 'RN'),
(3625, 13, 'Passa Quatro', 'MG'),
(3626, 21, 'Passa Sete', 'RS'),
(3627, 13, 'Passa Tempo', 'MG'),
(3628, 13, 'Passabém', 'MG'),
(3629, 15, 'Passagem', 'PB'),
(3630, 20, 'Passagem', 'RN'),
(3631, 10, 'Passagem Franca', 'MA'),
(3632, 18, 'Passagem Franca do Piauí', 'PI'),
(3633, 13, 'Passa-Vinte', 'MG'),
(3634, 17, 'Passira', 'PE'),
(3635, 2, 'Passo de Camaragibe', 'AL'),
(3636, 24, 'Passo de Torres', 'SC'),
(3637, 21, 'Passo do Sobrado', 'RS'),
(3638, 21, 'Passo Fundo', 'RS'),
(3639, 13, 'Passos', 'MG'),
(3640, 24, 'Passos Maia', 'SC'),
(3641, 10, 'Pastos Bons', 'MA'),
(3642, 13, 'Patis', 'MG'),
(3643, 16, 'Pato Bragado', 'PR'),
(3644, 16, 'Pato Branco', 'PR'),
(3645, 15, 'Patos', 'PB'),
(3646, 13, 'Patos de Minas', 'MG'),
(3647, 18, 'Patos do Piauí', 'PI'),
(3648, 13, 'Patrocínio', 'MG'),
(3649, 13, 'Patrocínio do Muriaé', 'MG'),
(3650, 25, 'Patrocínio Paulista', 'SP'),
(3651, 20, 'Patu', 'RN'),
(3652, 19, 'Paty do Alferes', 'RJ'),
(3653, 5, 'Pau Brasil', 'BA'),
(3654, 14, 'Pau D\'Arco', 'PA'),
(3655, 27, 'Pau D\'Arco', 'TO'),
(3656, 18, 'Pau D\'Arco do Piauí', 'PI'),
(3657, 20, 'Pau dos Ferros', 'RN'),
(3658, 17, 'Paudalho', 'PE'),
(3659, 4, 'Pauini', 'AM'),
(3660, 13, 'Paula Cândido', 'MG'),
(3661, 16, 'Paula Freitas', 'PR'),
(3662, 25, 'Paulicéia', 'SP'),
(3663, 25, 'Paulínia', 'SP'),
(3664, 10, 'Paulino Neves', 'MA'),
(3665, 15, 'Paulista', 'PB'),
(3666, 17, 'Paulista', 'PE'),
(3667, 18, 'Paulistana', 'PI'),
(3668, 25, 'Paulistânia', 'SP'),
(3669, 13, 'Paulistas', 'MG'),
(3670, 5, 'Paulo Afonso', 'BA'),
(3671, 21, 'Paulo Bento', 'RS'),
(3672, 25, 'Paulo de Faria', 'SP'),
(3673, 16, 'Paulo Frontin', 'PR'),
(3674, 2, 'Paulo Jacinto', 'AL'),
(3675, 24, 'Paulo Lopes', 'SC'),
(3676, 10, 'Paulo Ramos', 'MA'),
(3677, 13, 'Pavão', 'MG'),
(3678, 21, 'Paverama', 'RS'),
(3679, 18, 'Pavussu', 'PI'),
(3680, 5, 'Pé de Serra', 'BA'),
(3681, 16, 'Peabiru', 'PR'),
(3682, 13, 'Peçanha', 'MG'),
(3683, 25, 'Pederneiras', 'SP'),
(3684, 17, 'Pedra', 'PE'),
(3685, 13, 'Pedra Azul', 'MG'),
(3686, 25, 'Pedra Bela', 'SP'),
(3687, 13, 'Pedra Bonita', 'MG'),
(3688, 6, 'Pedra Branca', 'CE'),
(3689, 15, 'Pedra Branca', 'PB'),
(3690, 3, 'Pedra Branca do Amapari', 'AP'),
(3691, 13, 'Pedra do Anta', 'MG'),
(3692, 13, 'Pedra do Indaiá', 'MG'),
(3693, 13, 'Pedra Dourada', 'MG'),
(3694, 20, 'Pedra Grande', 'RN'),
(3695, 15, 'Pedra Lavrada', 'PB'),
(3696, 26, 'Pedra Mole', 'SE'),
(3697, 11, 'Pedra Preta', 'MT'),
(3698, 20, 'Pedra Preta', 'RN'),
(3699, 13, 'Pedralva', 'MG'),
(3700, 25, 'Pedranópolis', 'SP'),
(3701, 5, 'Pedrão', 'BA'),
(3702, 21, 'Pedras Altas', 'RS'),
(3703, 15, 'Pedras de Fogo', 'PB'),
(3704, 13, 'Pedras de Maria da Cruz', 'MG'),
(3705, 24, 'Pedras Grandes', 'SC'),
(3706, 25, 'Pedregulho', 'SP'),
(3707, 25, 'Pedreira', 'SP'),
(3708, 10, 'Pedreiras', 'MA'),
(3709, 26, 'Pedrinhas', 'SE'),
(3710, 25, 'Pedrinhas Paulista', 'SP'),
(3711, 13, 'Pedrinópolis', 'MG'),
(3712, 27, 'Pedro Afonso', 'TO'),
(3713, 5, 'Pedro Alexandre', 'BA'),
(3714, 20, 'Pedro Avelino', 'RN'),
(3715, 8, 'Pedro Canário', 'ES'),
(3716, 25, 'Pedro de Toledo', 'SP'),
(3717, 10, 'Pedro do Rosário', 'MA'),
(3718, 12, 'Pedro Gomes', 'MS'),
(3719, 18, 'Pedro II', 'PI'),
(3720, 18, 'Pedro Laurentino', 'PI'),
(3721, 13, 'Pedro Leopoldo', 'MG'),
(3722, 21, 'Pedro Osório', 'RS'),
(3723, 15, 'Pedro Régis', 'PB'),
(3724, 13, 'Pedro Teixeira', 'MG'),
(3725, 20, 'Pedro Velho', 'RN'),
(3726, 27, 'Peixe', 'TO'),
(3727, 14, 'Peixe-Boi', 'PA'),
(3728, 11, 'Peixoto de Azevedo', 'MT'),
(3729, 21, 'Pejuçara', 'RS'),
(3730, 21, 'Pelotas', 'RS'),
(3731, 6, 'Penaforte', 'CE'),
(3732, 10, 'Penalva', 'MA'),
(3733, 25, 'Penápolis', 'SP'),
(3734, 20, 'Pendências', 'RN'),
(3735, 2, 'Penedo', 'AL'),
(3736, 24, 'Penha', 'SC'),
(3737, 6, 'Pentecoste', 'CE'),
(3738, 13, 'Pequeri', 'MG'),
(3739, 13, 'Pequi', 'MG'),
(3740, 27, 'Pequizeiro', 'TO'),
(3741, 13, 'Perdigão', 'MG'),
(3742, 13, 'Perdizes', 'MG'),
(3743, 13, 'Perdões', 'MG'),
(3744, 25, 'Pereira Barreto', 'SP'),
(3745, 25, 'Pereiras', 'SP'),
(3746, 6, 'Pereiro', 'CE'),
(3747, 10, 'Peri Mirim', 'MA'),
(3748, 13, 'Periquito', 'MG'),
(3749, 24, 'Peritiba', 'SC'),
(3750, 10, 'Peritoró', 'MA'),
(3751, 16, 'Perobal', 'PR'),
(3752, 16, 'Pérola', 'PR'),
(3753, 16, 'Pérola d\'Oeste', 'PR'),
(3754, 9, 'Perolândia', 'GO'),
(3755, 25, 'Peruíbe', 'SP'),
(3756, 13, 'Pescador', 'MG'),
(3757, 17, 'Pesqueira', 'PE'),
(3758, 17, 'Petrolândia', 'PE'),
(3759, 24, 'Petrolândia', 'SC'),
(3760, 17, 'Petrolina', 'PE'),
(3761, 9, 'Petrolina de Goiás', 'GO'),
(3762, 19, 'Petrópolis', 'RJ'),
(3763, 2, 'Piaçabuçu', 'AL'),
(3764, 25, 'Piacatu', 'SP'),
(3765, 15, 'Piancó', 'PB'),
(3766, 5, 'Piatã', 'BA'),
(3767, 13, 'Piau', 'MG'),
(3768, 21, 'Picada Café', 'RS'),
(3769, 14, 'Piçarra', 'PA'),
(3770, 18, 'Picos', 'PI'),
(3771, 15, 'Picuí', 'PB'),
(3772, 25, 'Piedade', 'SP'),
(3773, 13, 'Piedade de Caratinga', 'MG'),
(3774, 13, 'Piedade de Ponte Nova', 'MG'),
(3775, 13, 'Piedade do Rio Grande', 'MG'),
(3776, 13, 'Piedade dos Gerais', 'MG'),
(3777, 16, 'Piên', 'PR'),
(3778, 5, 'Pilão Arcado', 'BA'),
(3779, 2, 'Pilar', 'AL'),
(3780, 15, 'Pilar', 'PB'),
(3781, 9, 'Pilar de Goiás', 'GO'),
(3782, 25, 'Pilar do Sul', 'SP'),
(3783, 15, 'Pilões', 'PB'),
(3784, 20, 'Pilões', 'RN'),
(3785, 15, 'Pilõezinhos', 'PB'),
(3786, 13, 'Pimenta', 'MG'),
(3787, 22, 'Pimenta Bueno', 'RO'),
(3788, 18, 'Pimenteiras', 'PI'),
(3789, 22, 'Pimenteiras do Oeste', 'RO'),
(3790, 5, 'Pindaí', 'BA'),
(3791, 25, 'Pindamonhangaba', 'SP'),
(3792, 10, 'Pindaré-Mirim', 'MA'),
(3793, 2, 'Pindoba', 'AL'),
(3794, 5, 'Pindobaçu', 'BA'),
(3795, 25, 'Pindorama', 'SP'),
(3796, 27, 'Pindorama do Tocantins', 'TO'),
(3797, 6, 'Pindoretama', 'CE'),
(3798, 13, 'Pingo-d\'Água', 'MG'),
(3799, 16, 'Pinhais', 'PR'),
(3800, 21, 'Pinhal', 'RS'),
(3801, 21, 'Pinhal da Serra', 'RS'),
(3802, 16, 'Pinhal de São Bento', 'PR'),
(3803, 21, 'Pinhal Grande', 'RS'),
(3804, 16, 'Pinhalão', 'PR'),
(3805, 24, 'Pinhalzinho', 'SC'),
(3806, 25, 'Pinhalzinho', 'SP'),
(3807, 16, 'Pinhão', 'PR'),
(3808, 26, 'Pinhão', 'SE'),
(3809, 19, 'Pinheiral', 'RJ'),
(3810, 21, 'Pinheirinho do Vale', 'RS'),
(3811, 10, 'Pinheiro', 'MA'),
(3812, 21, 'Pinheiro Machado', 'RS'),
(3813, 24, 'Pinheiro Preto', 'SC'),
(3814, 8, 'Pinheiros', 'ES'),
(3815, 5, 'Pintadas', 'BA'),
(3816, 13, 'Pintópolis', 'MG'),
(3817, 18, 'Pio IX', 'PI'),
(3818, 10, 'Pio XII', 'MA'),
(3819, 25, 'Piquerobi', 'SP'),
(3820, 6, 'Piquet Carneiro', 'CE'),
(3821, 25, 'Piquete', 'SP'),
(3822, 25, 'Piracaia', 'SP'),
(3823, 9, 'Piracanjuba', 'GO'),
(3824, 13, 'Piracema', 'MG'),
(3825, 25, 'Piracicaba', 'SP'),
(3826, 18, 'Piracuruca', 'PI'),
(3827, 19, 'Piraí', 'RJ'),
(3828, 5, 'Piraí do Norte', 'BA'),
(3829, 16, 'Piraí do Sul', 'PR'),
(3830, 25, 'Piraju', 'SP'),
(3831, 13, 'Pirajuba', 'MG'),
(3832, 25, 'Pirajuí', 'SP'),
(3833, 26, 'Pirambu', 'SE'),
(3834, 13, 'Piranga', 'MG'),
(3835, 25, 'Pirangi', 'SP'),
(3836, 13, 'Piranguçu', 'MG'),
(3837, 13, 'Piranguinho', 'MG'),
(3838, 2, 'Piranhas', 'AL'),
(3839, 9, 'Piranhas', 'GO'),
(3840, 10, 'Pirapemas', 'MA'),
(3841, 13, 'Pirapetinga', 'MG'),
(3842, 21, 'Pirapó', 'RS'),
(3843, 13, 'Pirapora', 'MG'),
(3844, 25, 'Pirapora do Bom Jesus', 'SP'),
(3845, 25, 'Pirapozinho', 'SP'),
(3846, 16, 'Piraquara', 'PR'),
(3847, 27, 'Piraquê', 'TO'),
(3848, 25, 'Pirassununga', 'SP'),
(3849, 21, 'Piratini', 'RS'),
(3850, 25, 'Piratininga', 'SP'),
(3851, 24, 'Piratuba', 'SC'),
(3852, 13, 'Piraúba', 'MG'),
(3853, 9, 'Pirenópolis', 'GO'),
(3854, 9, 'Pires do Rio', 'GO'),
(3855, 6, 'Pires Ferreira', 'CE'),
(3856, 5, 'Piripá', 'BA'),
(3857, 18, 'Piripiri', 'PI'),
(3858, 5, 'Piritiba', 'BA'),
(3859, 15, 'Pirpirituba', 'PB'),
(3860, 16, 'Pitanga', 'PR'),
(3861, 16, 'Pitangueiras', 'PR'),
(3862, 25, 'Pitangueiras', 'SP'),
(3863, 13, 'Pitangui', 'MG'),
(3864, 15, 'Pitimbu', 'PB'),
(3865, 27, 'Pium', 'TO'),
(3866, 8, 'Piúma', 'ES'),
(3867, 13, 'Piumhi', 'MG'),
(3868, 14, 'Placas', 'PA'),
(3869, 1, 'Plácido de Castro', 'AC'),
(3870, 9, 'Planaltina', 'GO'),
(3871, 16, 'Planaltina do Paraná', 'PR'),
(3872, 5, 'Planaltino', 'BA'),
(3873, 5, 'Planalto', 'BA'),
(3874, 16, 'Planalto', 'PR'),
(3875, 21, 'Planalto', 'RS'),
(3876, 25, 'Planalto', 'SP'),
(3877, 24, 'Planalto Alegre', 'SC'),
(3878, 11, 'Planalto da Serra', 'MT'),
(3879, 13, 'Planura', 'MG'),
(3880, 25, 'Platina', 'SP'),
(3881, 25, 'Poá', 'SP'),
(3882, 17, 'Poção', 'PE'),
(3883, 10, 'Poção de Pedras', 'MA'),
(3884, 15, 'Pocinhos', 'PB'),
(3885, 20, 'Poço Branco', 'RN'),
(3886, 15, 'Poço Dantas', 'PB'),
(3887, 21, 'Poço das Antas', 'RS'),
(3888, 2, 'Poço das Trincheiras', 'AL'),
(3889, 15, 'Poço de José de Moura', 'PB'),
(3890, 13, 'Poço Fundo', 'MG'),
(3891, 26, 'Poço Redondo', 'SE'),
(3892, 26, 'Poço Verde', 'SE'),
(3893, 5, 'Poções', 'BA'),
(3894, 11, 'Poconé', 'MT'),
(3895, 13, 'Poços de Caldas', 'MG'),
(3896, 13, 'Pocrane', 'MG'),
(3897, 5, 'Pojuca', 'BA'),
(3898, 25, 'Poloni', 'SP'),
(3899, 15, 'Pombal', 'PB'),
(3900, 17, 'Pombos', 'PE'),
(3901, 24, 'Pomerode', 'SC'),
(3902, 25, 'Pompéia', 'SP'),
(3903, 13, 'Pompéu', 'MG'),
(3904, 25, 'Pongaí', 'SP'),
(3905, 14, 'Ponta de Pedras', 'PA'),
(3906, 16, 'Ponta Grossa', 'PR'),
(3907, 12, 'Ponta Porã', 'MS'),
(3908, 25, 'Pontal', 'SP'),
(3909, 11, 'Pontal do Araguaia', 'MT'),
(3910, 16, 'Pontal do Paraná', 'PR'),
(3911, 9, 'Pontalina', 'GO'),
(3912, 25, 'Pontalinda', 'SP'),
(3913, 21, 'Pontão', 'RS'),
(3914, 24, 'Ponte Alta', 'SC'),
(3915, 27, 'Ponte Alta do Bom Jesus', 'TO'),
(3916, 24, 'Ponte Alta do Norte', 'SC'),
(3917, 27, 'Ponte Alta do Tocantins', 'TO'),
(3918, 11, 'Ponte Branca', 'MT'),
(3919, 13, 'Ponte Nova', 'MG'),
(3920, 21, 'Ponte Preta', 'RS'),
(3921, 24, 'Ponte Serrada', 'SC'),
(3922, 11, 'Pontes e Lacerda', 'MT'),
(3923, 25, 'Pontes Gestal', 'SP'),
(3924, 8, 'Ponto Belo', 'ES'),
(3925, 13, 'Ponto Chique', 'MG'),
(3926, 13, 'Ponto dos Volantes', 'MG'),
(3927, 5, 'Ponto Novo', 'BA'),
(3928, 25, 'Populina', 'SP'),
(3929, 6, 'Poranga', 'CE'),
(3930, 25, 'Porangaba', 'SP'),
(3931, 9, 'Porangatu', 'GO'),
(3932, 19, 'Porciúncula', 'RJ'),
(3933, 16, 'Porecatu', 'PR'),
(3934, 20, 'Portalegre', 'RN'),
(3935, 21, 'Portão', 'RS'),
(3936, 9, 'Porteirão', 'GO'),
(3937, 6, 'Porteiras', 'CE'),
(3938, 13, 'Porteirinha', 'MG'),
(3939, 14, 'Portel', 'PA'),
(3940, 9, 'Portelândia', 'GO'),
(3941, 18, 'Porto', 'PI'),
(3942, 1, 'Porto Acre', 'AC'),
(3943, 21, 'Porto Alegre', 'RS'),
(3944, 11, 'Porto Alegre do Norte', 'MT'),
(3945, 18, 'Porto Alegre do Piauí', 'PI'),
(3946, 27, 'Porto Alegre do Tocantins', 'TO'),
(3947, 16, 'Porto Amazonas', 'PR'),
(3948, 16, 'Porto Barreiro', 'PR'),
(3949, 24, 'Porto Belo', 'SC'),
(3950, 2, 'Porto Calvo', 'AL'),
(3951, 26, 'Porto da Folha', 'SE'),
(3952, 14, 'Porto de Moz', 'PA'),
(3953, 2, 'Porto de Pedras', 'AL'),
(3954, 20, 'Porto do Mangue', 'RN'),
(3955, 11, 'Porto dos Gaúchos', 'MT'),
(3956, 11, 'Porto Esperidião', 'MT'),
(3957, 11, 'Porto Estrela', 'MT'),
(3958, 25, 'Porto Feliz', 'SP'),
(3959, 25, 'Porto Ferreira', 'SP'),
(3960, 13, 'Porto Firme', 'MG'),
(3961, 10, 'Porto Franco', 'MA'),
(3962, 3, 'Porto Grande', 'AP'),
(3963, 21, 'Porto Lucena', 'RS'),
(3964, 21, 'Porto Mauá', 'RS'),
(3965, 12, 'Porto Murtinho', 'MS'),
(3966, 27, 'Porto Nacional', 'TO'),
(3967, 19, 'Porto Real', 'RJ'),
(3968, 2, 'Porto Real do Colégio', 'AL'),
(3969, 16, 'Porto Rico', 'PR'),
(3970, 10, 'Porto Rico do Maranhão', 'MA'),
(3971, 5, 'Porto Seguro', 'BA'),
(3972, 24, 'Porto União', 'SC'),
(3973, 22, 'Porto Velho', 'RO'),
(3974, 21, 'Porto Vera Cruz', 'RS'),
(3975, 16, 'Porto Vitória', 'PR'),
(3976, 1, 'Porto Walter', 'AC'),
(3977, 21, 'Porto Xavier', 'RS'),
(3978, 9, 'Posse', 'GO'),
(3979, 13, 'Poté', 'MG'),
(3980, 6, 'Potengi', 'CE'),
(3981, 25, 'Potim', 'SP'),
(3982, 5, 'Potiraguá', 'BA'),
(3983, 25, 'Potirendaba', 'SP'),
(3984, 6, 'Potiretama', 'CE'),
(3985, 13, 'Pouso Alegre', 'MG'),
(3986, 13, 'Pouso Alto', 'MG'),
(3987, 21, 'Pouso Novo', 'RS'),
(3988, 24, 'Pouso Redondo', 'SC'),
(3989, 11, 'Poxoréo', 'MT'),
(3990, 25, 'Pracinha', 'SP'),
(3991, 3, 'Pracuúba', 'AP'),
(3992, 5, 'Prado', 'BA'),
(3993, 16, 'Prado Ferreira', 'PR'),
(3994, 25, 'Pradópolis', 'SP'),
(3995, 13, 'Prados', 'MG'),
(3996, 24, 'Praia Grande', 'SC'),
(3997, 25, 'Praia Grande', 'SP'),
(3998, 27, 'Praia Norte', 'TO'),
(3999, 14, 'Prainha', 'PA'),
(4000, 16, 'Pranchita', 'PR'),
(4001, 13, 'Prata', 'MG'),
(4002, 15, 'Prata', 'PB'),
(4003, 18, 'Prata do Piauí', 'PI'),
(4004, 25, 'Pratânia', 'SP'),
(4005, 13, 'Pratápolis', 'MG'),
(4006, 13, 'Pratinha', 'MG'),
(4007, 25, 'Presidente Alves', 'SP'),
(4008, 13, 'Presidente Bernardes', 'MG'),
(4009, 25, 'Presidente Bernardes', 'SP'),
(4010, 24, 'Presidente Castello Branco', 'SC'),
(4011, 16, 'Presidente Castelo Branco', 'PR'),
(4012, 5, 'Presidente Dutra', 'BA'),
(4013, 10, 'Presidente Dutra', 'MA'),
(4014, 25, 'Presidente Epitácio', 'SP'),
(4015, 4, 'Presidente Figueiredo', 'AM'),
(4016, 24, 'Presidente Getúlio', 'SC'),
(4017, 5, 'Presidente Jânio Quadros', 'BA'),
(4018, 10, 'Presidente Juscelino', 'MA'),
(4019, 13, 'Presidente Juscelino', 'MG'),
(4020, 20, 'Presidente Juscelino', 'RN'),
(4021, 8, 'Presidente Kennedy', 'ES'),
(4022, 27, 'Presidente Kennedy', 'TO'),
(4023, 13, 'Presidente Kubitschek', 'MG'),
(4024, 21, 'Presidente Lucena', 'RS'),
(4025, 10, 'Presidente Médici', 'MA'),
(4026, 22, 'Presidente Médici', 'RO'),
(4027, 24, 'Presidente Nereu', 'SC'),
(4028, 13, 'Presidente Olegário', 'MG'),
(4029, 25, 'Presidente Prudente', 'SP'),
(4030, 10, 'Presidente Sarney', 'MA'),
(4031, 5, 'Presidente Tancredo Neves', 'BA'),
(4032, 10, 'Presidente Vargas', 'MA'),
(4033, 25, 'Presidente Venceslau', 'SP'),
(4034, 14, 'Primavera', 'PA'),
(4035, 17, 'Primavera', 'PE'),
(4036, 22, 'Primavera de Rondônia', 'RO'),
(4037, 11, 'Primavera do Leste', 'MT'),
(4038, 10, 'Primeira Cruz', 'MA'),
(4039, 16, 'Primeiro de Maio', 'PR'),
(4040, 24, 'Princesa', 'SC'),
(4041, 15, 'Princesa Isabel', 'PB'),
(4042, 9, 'Professor Jamil', 'GO'),
(4043, 21, 'Progresso', 'RS'),
(4044, 25, 'Promissão', 'SP'),
(4045, 26, 'Propriá', 'SE'),
(4046, 21, 'Protásio Alves', 'RS'),
(4047, 13, 'Prudente de Morais', 'MG'),
(4048, 16, 'Prudentópolis', 'PR'),
(4049, 27, 'Pugmil', 'TO'),
(4050, 20, 'Pureza', 'RN'),
(4051, 21, 'Putinga', 'RS'),
(4052, 15, 'Puxinanã', 'PB'),
(4053, 25, 'Quadra', 'SP'),
(4054, 21, 'Quaraí', 'RS'),
(4055, 13, 'Quartel Geral', 'MG'),
(4056, 16, 'Quarto Centenário', 'PR'),
(4057, 25, 'Quatá', 'SP'),
(4058, 16, 'Quatiguá', 'PR'),
(4059, 14, 'Quatipuru', 'PA'),
(4060, 19, 'Quatis', 'RJ'),
(4061, 16, 'Quatro Barras', 'PR'),
(4062, 21, 'Quatro Irmãos', 'RS'),
(4063, 16, 'Quatro Pontes', 'PR'),
(4064, 2, 'Quebrangulo', 'AL'),
(4065, 16, 'Quedas do Iguaçu', 'PR'),
(4066, 18, 'Queimada Nova', 'PI'),
(4067, 5, 'Queimadas', 'BA'),
(4068, 15, 'Queimadas', 'PB'),
(4069, 19, 'Queimados', 'RJ'),
(4070, 25, 'Queiroz', 'SP'),
(4071, 25, 'Queluz', 'SP'),
(4072, 13, 'Queluzito', 'MG'),
(4073, 11, 'Querência', 'MT'),
(4074, 16, 'Querência do Norte', 'PR'),
(4075, 21, 'Quevedos', 'RS'),
(4076, 5, 'Quijingue', 'BA'),
(4077, 24, 'Quilombo', 'SC'),
(4078, 16, 'Quinta do Sol', 'PR'),
(4079, 25, 'Quintana', 'SP'),
(4080, 21, 'Quinze de Novembro', 'RS'),
(4081, 17, 'Quipapá', 'PE'),
(4082, 9, 'Quirinópolis', 'GO'),
(4083, 19, 'Quissamã', 'RJ'),
(4084, 16, 'Quitandinha', 'PR'),
(4085, 6, 'Quiterianópolis', 'CE'),
(4086, 17, 'Quixaba', 'PE'),
(4087, 15, 'Quixabá', 'PB'),
(4088, 5, 'Quixabeira', 'BA'),
(4089, 6, 'Quixadá', 'CE'),
(4090, 6, 'Quixelô', 'CE'),
(4091, 6, 'Quixeramobim', 'CE'),
(4092, 6, 'Quixeré', 'CE'),
(4093, 20, 'Rafael Fernandes', 'RN'),
(4094, 20, 'Rafael Godeiro', 'RN'),
(4095, 5, 'Rafael Jambeiro', 'BA'),
(4096, 25, 'Rafard', 'SP'),
(4097, 16, 'Ramilândia', 'PR'),
(4098, 25, 'Rancharia', 'SP'),
(4099, 16, 'Rancho Alegre', 'PR'),
(4100, 16, 'Rancho Alegre D\'Oeste', 'PR'),
(4101, 24, 'Rancho Queimado', 'SC'),
(4102, 10, 'Raposa', 'MA'),
(4103, 13, 'Raposos', 'MG'),
(4104, 13, 'Raul Soares', 'MG'),
(4105, 16, 'Realeza', 'PR'),
(4106, 16, 'Rebouças', 'PR'),
(4107, 17, 'Recife', 'PE'),
(4108, 13, 'Recreio', 'MG'),
(4109, 27, 'Recursolândia', 'TO'),
(4110, 6, 'Redenção', 'CE'),
(4111, 14, 'Redenção', 'PA'),
(4112, 25, 'Redenção da Serra', 'SP'),
(4113, 18, 'Redenção do Gurguéia', 'PI'),
(4114, 21, 'Redentora', 'RS'),
(4115, 13, 'Reduto', 'MG'),
(4116, 18, 'Regeneração', 'PI'),
(4117, 25, 'Regente Feijó', 'SP'),
(4118, 25, 'Reginópolis', 'SP'),
(4119, 25, 'Registro', 'SP'),
(4120, 21, 'Relvado', 'RS'),
(4121, 5, 'Remanso', 'BA'),
(4122, 15, 'Remígio', 'PB'),
(4123, 16, 'Renascença', 'PR'),
(4124, 6, 'Reriutaba', 'CE'),
(4125, 19, 'Resende', 'RJ'),
(4126, 13, 'Resende Costa', 'MG'),
(4127, 16, 'Reserva', 'PR'),
(4128, 11, 'Reserva do Cabaçal', 'MT'),
(4129, 16, 'Reserva do Iguaçu', 'PR'),
(4130, 13, 'Resplendor', 'MG'),
(4131, 13, 'Ressaquinha', 'MG'),
(4132, 25, 'Restinga', 'SP'),
(4133, 21, 'Restinga Seca', 'RS'),
(4134, 5, 'Retirolândia', 'BA'),
(4135, 10, 'Riachão', 'MA'),
(4136, 15, 'Riachão', 'PB'),
(4137, 5, 'Riachão das Neves', 'BA'),
(4138, 15, 'Riachão do Bacamarte', 'PB'),
(4139, 26, 'Riachão do Dantas', 'SE'),
(4140, 5, 'Riachão do Jacuípe', 'BA'),
(4141, 15, 'Riachão do Poço', 'PB'),
(4142, 13, 'Riachinho', 'MG'),
(4143, 27, 'Riachinho', 'TO'),
(4144, 20, 'Riacho da Cruz', 'RN'),
(4145, 17, 'Riacho das Almas', 'PE'),
(4146, 5, 'Riacho de Santana', 'BA'),
(4147, 20, 'Riacho de Santana', 'RN'),
(4148, 15, 'Riacho de Santo Antônio', 'PB'),
(4149, 15, 'Riacho dos Cavalos', 'PB'),
(4150, 13, 'Riacho dos Machados', 'MG'),
(4151, 18, 'Riacho Frio', 'PI'),
(4152, 20, 'Riachuelo', 'RN'),
(4153, 26, 'Riachuelo', 'SE'),
(4154, 9, 'Rialma', 'GO'),
(4155, 9, 'Rianápolis', 'GO'),
(4156, 10, 'Ribamar Fiquene', 'MA'),
(4157, 12, 'Ribas do Rio Pardo', 'MS'),
(4158, 25, 'Ribeira', 'SP'),
(4159, 5, 'Ribeira do Amparo', 'BA'),
(4160, 18, 'Ribeira do Piauí', 'PI'),
(4161, 5, 'Ribeira do Pombal', 'BA'),
(4162, 17, 'Ribeirão', 'PE'),
(4163, 25, 'Ribeirão Bonito', 'SP'),
(4164, 25, 'Ribeirão Branco', 'SP'),
(4165, 11, 'Ribeirão Cascalheira', 'MT'),
(4166, 16, 'Ribeirão Claro', 'PR'),
(4167, 25, 'Ribeirão Corrente', 'SP'),
(4168, 13, 'Ribeirão das Neves', 'MG'),
(4169, 5, 'Ribeirão do Largo', 'BA'),
(4170, 16, 'Ribeirão do Pinhal', 'PR'),
(4171, 25, 'Ribeirão do Sul', 'SP'),
(4172, 25, 'Ribeirão dos Índios', 'SP'),
(4173, 25, 'Ribeirão Grande', 'SP'),
(4174, 25, 'Ribeirão Pires', 'SP'),
(4175, 25, 'Ribeirão Preto', 'SP'),
(4176, 13, 'Ribeirão Vermelho', 'MG'),
(4177, 11, 'Ribeirãozinho', 'MT'),
(4178, 18, 'Ribeiro Gonçalves', 'PI'),
(4179, 26, 'Ribeirópolis', 'SE'),
(4180, 25, 'Rifaina', 'SP'),
(4181, 25, 'Rincão', 'SP'),
(4182, 25, 'Rinópolis', 'SP'),
(4183, 13, 'Rio Acima', 'MG'),
(4184, 16, 'Rio Azul', 'PR'),
(4185, 8, 'Rio Bananal', 'ES'),
(4186, 16, 'Rio Bom', 'PR'),
(4187, 19, 'Rio Bonito', 'RJ'),
(4188, 16, 'Rio Bonito do Iguaçu', 'PR'),
(4189, 1, 'Rio Branco', 'AC'),
(4190, 11, 'Rio Branco', 'MT'),
(4191, 16, 'Rio Branco do Ivaí', 'PR'),
(4192, 16, 'Rio Branco do Sul', 'PR'),
(4193, 12, 'Rio Brilhante', 'MS'),
(4194, 13, 'Rio Casca', 'MG'),
(4195, 19, 'Rio Claro', 'RJ'),
(4196, 25, 'Rio Claro', 'SP'),
(4197, 22, 'Rio Crespo', 'RO'),
(4198, 27, 'Rio da Conceição', 'TO'),
(4199, 24, 'Rio das Antas', 'SC'),
(4200, 19, 'Rio das Flores', 'RJ'),
(4201, 19, 'Rio das Ostras', 'RJ'),
(4202, 25, 'Rio das Pedras', 'SP'),
(4203, 5, 'Rio de Contas', 'BA'),
(4204, 19, 'Rio de Janeiro', 'RJ'),
(4205, 5, 'Rio do Antônio', 'BA'),
(4206, 24, 'Rio do Campo', 'SC'),
(4207, 20, 'Rio do Fogo', 'RN'),
(4208, 24, 'Rio do Oeste', 'SC'),
(4209, 5, 'Rio do Pires', 'BA'),
(4210, 13, 'Rio do Prado', 'MG'),
(4211, 24, 'Rio do Sul', 'SC'),
(4212, 13, 'Rio Doce', 'MG'),
(4213, 27, 'Rio dos Bois', 'TO'),
(4214, 24, 'Rio dos Cedros', 'SC'),
(4215, 21, 'Rio dos Índios', 'RS'),
(4216, 13, 'Rio Espera', 'MG'),
(4217, 17, 'Rio Formoso', 'PE'),
(4218, 24, 'Rio Fortuna', 'SC'),
(4219, 21, 'Rio Grande', 'RS'),
(4220, 25, 'Rio Grande da Serra', 'SP'),
(4221, 18, 'Rio Grande do Piauí', 'PI'),
(4222, 2, 'Rio Largo', 'AL'),
(4223, 13, 'Rio Manso', 'MG'),
(4224, 14, 'Rio Maria', 'PA'),
(4225, 24, 'Rio Negrinho', 'SC'),
(4226, 12, 'Rio Negro', 'MS'),
(4227, 16, 'Rio Negro', 'PR'),
(4228, 13, 'Rio Novo', 'MG'),
(4229, 8, 'Rio Novo do Sul', 'ES'),
(4230, 13, 'Rio Paranaíba', 'MG'),
(4231, 21, 'Rio Pardo', 'RS'),
(4232, 13, 'Rio Pardo de Minas', 'MG'),
(4233, 13, 'Rio Piracicaba', 'MG'),
(4234, 13, 'Rio Pomba', 'MG'),
(4235, 13, 'Rio Preto', 'MG'),
(4236, 4, 'Rio Preto da Eva', 'AM'),
(4237, 9, 'Rio Quente', 'GO'),
(4238, 5, 'Rio Real', 'BA'),
(4239, 24, 'Rio Rufino', 'SC'),
(4240, 27, 'Rio Sono', 'TO'),
(4241, 15, 'Rio Tinto', 'PB'),
(4242, 9, 'Rio Verde', 'GO'),
(4243, 12, 'Rio Verde de Mato Grosso', 'MS'),
(4244, 13, 'Rio Vermelho', 'MG'),
(4245, 25, 'Riolândia', 'SP'),
(4246, 21, 'Riozinho', 'RS'),
(4247, 24, 'Riqueza', 'SC'),
(4248, 13, 'Ritápolis', 'MG'),
(4249, 25, 'Riversul', 'SP'),
(4250, 21, 'Roca Sales', 'RS'),
(4251, 12, 'Rochedo', 'MS'),
(4252, 13, 'Rochedo de Minas', 'MG'),
(4253, 24, 'Rodeio', 'SC'),
(4254, 21, 'Rodeio Bonito', 'RS'),
(4255, 13, 'Rodeiro', 'MG'),
(4256, 5, 'Rodelas', 'BA'),
(4257, 20, 'Rodolfo Fernandes', 'RN'),
(4258, 1, 'Rodrigues Alves', 'AC'),
(4259, 21, 'Rolador', 'RS'),
(4260, 16, 'Rolândia', 'PR'),
(4261, 21, 'Rolante', 'RS'),
(4262, 22, 'Rolim de Moura', 'RO'),
(4263, 13, 'Romaria', 'MG'),
(4264, 24, 'Romelândia', 'SC'),
(4265, 16, 'Roncador', 'PR'),
(4266, 21, 'Ronda Alta', 'RS'),
(4267, 21, 'Rondinha', 'RS'),
(4268, 11, 'Rondolândia', 'MT'),
(4269, 16, 'Rondon', 'PR'),
(4270, 14, 'Rondon do Pará', 'PA'),
(4271, 11, 'Rondonópolis', 'MT'),
(4272, 21, 'Roque Gonzales', 'RS'),
(4273, 23, 'Rorainópolis', 'RR'),
(4274, 25, 'Rosana', 'SP'),
(4275, 10, 'Rosário', 'MA'),
(4276, 13, 'Rosário da Limeira', 'MG'),
(4277, 26, 'Rosário do Catete', 'SE'),
(4278, 16, 'Rosário do Ivaí', 'PR'),
(4279, 21, 'Rosário do Sul', 'RS'),
(4280, 11, 'Rosário Oeste', 'MT'),
(4281, 25, 'Roseira', 'SP'),
(4282, 2, 'Roteiro', 'AL'),
(4283, 13, 'Rubelita', 'MG'),
(4284, 25, 'Rubiácea', 'SP'),
(4285, 9, 'Rubiataba', 'GO'),
(4286, 13, 'Rubim', 'MG'),
(4287, 25, 'Rubinéia', 'SP'),
(4288, 14, 'Rurópolis', 'PA'),
(4289, 6, 'Russas', 'CE'),
(4290, 5, 'Ruy Barbosa', 'BA'),
(4291, 20, 'Ruy Barbosa', 'RN'),
(4292, 13, 'Sabará', 'MG'),
(4293, 16, 'Sabáudia', 'PR'),
(4294, 25, 'Sabino', 'SP'),
(4295, 13, 'Sabinópolis', 'MG'),
(4296, 6, 'Saboeiro', 'CE'),
(4297, 13, 'Sacramento', 'MG'),
(4298, 21, 'Sagrada Família', 'RS'),
(4299, 25, 'Sagres', 'SP'),
(4300, 17, 'Sairé', 'PE'),
(4301, 21, 'Saldanha Marinho', 'RS'),
(4302, 25, 'Sales', 'SP'),
(4303, 25, 'Sales Oliveira', 'SP'),
(4304, 25, 'Salesópolis', 'SP'),
(4305, 24, 'Salete', 'SC'),
(4306, 15, 'Salgadinho', 'PB'),
(4307, 17, 'Salgadinho', 'PE'),
(4308, 26, 'Salgado', 'SE'),
(4309, 15, 'Salgado de São Félix', 'PB'),
(4310, 16, 'Salgado Filho', 'PR'),
(4311, 17, 'Salgueiro', 'PE'),
(4312, 13, 'Salinas', 'MG'),
(4313, 5, 'Salinas da Margarida', 'BA'),
(4314, 14, 'Salinópolis', 'PA'),
(4315, 6, 'Salitre', 'CE'),
(4316, 25, 'Salmourão', 'SP'),
(4317, 17, 'Saloá', 'PE'),
(4318, 24, 'Saltinho', 'SC'),
(4319, 25, 'Saltinho', 'SP'),
(4320, 25, 'Salto', 'SP'),
(4321, 13, 'Salto da Divisa', 'MG'),
(4322, 25, 'Salto de Pirapora', 'SP'),
(4323, 11, 'Salto do Céu', 'MT'),
(4324, 16, 'Salto do Itararé', 'PR'),
(4325, 21, 'Salto do Jacuí', 'RS'),
(4326, 16, 'Salto do Lontra', 'PR'),
(4327, 25, 'Salto Grande', 'SP'),
(4328, 24, 'Salto Veloso', 'SC'),
(4329, 5, 'Salvador', 'BA'),
(4330, 21, 'Salvador das Missões', 'RS'),
(4331, 21, 'Salvador do Sul', 'RS'),
(4332, 14, 'Salvaterra', 'PA'),
(4333, 10, 'Sambaíba', 'MA'),
(4334, 27, 'Sampaio', 'TO'),
(4335, 21, 'Sananduva', 'RS'),
(4336, 9, 'Sanclerlândia', 'GO'),
(4337, 27, 'Sandolândia', 'TO'),
(4338, 25, 'Sandovalina', 'SP'),
(4339, 24, 'Sangão', 'SC'),
(4340, 17, 'Sanharó', 'PE'),
(4341, 25, 'Santa Adélia', 'SP'),
(4342, 25, 'Santa Albertina', 'SP'),
(4343, 16, 'Santa Amélia', 'PR'),
(4344, 5, 'Santa Bárbara', 'BA'),
(4345, 13, 'Santa Bárbara', 'MG'),
(4346, 9, 'Santa Bárbara de Goiás', 'GO'),
(4347, 13, 'Santa Bárbara do Leste', 'MG'),
(4348, 13, 'Santa Bárbara do Monte Verde', 'MG'),
(4349, 14, 'Santa Bárbara do Pará', 'PA'),
(4350, 21, 'Santa Bárbara do Sul', 'RS'),
(4351, 13, 'Santa Bárbara do Tugúrio', 'MG'),
(4352, 25, 'Santa Bárbara d\'Oeste', 'SP'),
(4353, 25, 'Santa Branca', 'SP'),
(4354, 5, 'Santa Brígida', 'BA'),
(4355, 11, 'Santa Carmem', 'MT'),
(4356, 15, 'Santa Cecília', 'PB'),
(4357, 24, 'Santa Cecília', 'SC'),
(4358, 16, 'Santa Cecília do Pavão', 'PR'),
(4359, 21, 'Santa Cecília do Sul', 'RS'),
(4360, 21, 'Santa Clara do Sul', 'RS'),
(4361, 25, 'Santa Clara d\'Oeste', 'SP'),
(4362, 15, 'Santa Cruz', 'PB'),
(4363, 17, 'Santa Cruz', 'PE'),
(4364, 20, 'Santa Cruz', 'RN'),
(4365, 5, 'Santa Cruz Cabrália', 'BA'),
(4366, 17, 'Santa Cruz da Baixa Verde', 'PE'),
(4367, 25, 'Santa Cruz da Conceição', 'SP'),
(4368, 25, 'Santa Cruz da Esperança', 'SP'),
(4369, 5, 'Santa Cruz da Vitória', 'BA'),
(4370, 25, 'Santa Cruz das Palmeiras', 'SP'),
(4371, 9, 'Santa Cruz de Goiás', 'GO'),
(4372, 13, 'Santa Cruz de Minas', 'MG'),
(4373, 16, 'Santa Cruz de Monte Castelo', 'PR'),
(4374, 13, 'Santa Cruz de Salinas', 'MG'),
(4375, 14, 'Santa Cruz do Arari', 'PA'),
(4376, 17, 'Santa Cruz do Capibaribe', 'PE'),
(4377, 13, 'Santa Cruz do Escalvado', 'MG'),
(4378, 18, 'Santa Cruz do Piauí', 'PI'),
(4379, 25, 'Santa Cruz do Rio Pardo', 'SP'),
(4380, 21, 'Santa Cruz do Sul', 'RS'),
(4381, 11, 'Santa Cruz do Xingu', 'MT'),
(4382, 18, 'Santa Cruz dos Milagres', 'PI'),
(4383, 13, 'Santa Efigênia de Minas', 'MG'),
(4384, 25, 'Santa Ernestina', 'SP'),
(4385, 16, 'Santa Fé', 'PR'),
(4386, 9, 'Santa Fé de Goiás', 'GO'),
(4387, 13, 'Santa Fé de Minas', 'MG'),
(4388, 27, 'Santa Fé do Araguaia', 'TO'),
(4389, 25, 'Santa Fé do Sul', 'SP'),
(4390, 17, 'Santa Filomena', 'PE'),
(4391, 18, 'Santa Filomena', 'PI'),
(4392, 10, 'Santa Filomena do Maranhão', 'MA'),
(4393, 25, 'Santa Gertrudes', 'SP'),
(4394, 10, 'Santa Helena', 'MA'),
(4395, 15, 'Santa Helena', 'PB'),
(4396, 16, 'Santa Helena', 'PR'),
(4397, 24, 'Santa Helena', 'SC'),
(4398, 9, 'Santa Helena de Goiás', 'GO'),
(4399, 13, 'Santa Helena de Minas', 'MG'),
(4400, 5, 'Santa Inês', 'BA'),
(4401, 10, 'Santa Inês', 'MA'),
(4402, 15, 'Santa Inês', 'PB'),
(4403, 16, 'Santa Inês', 'PR'),
(4404, 9, 'Santa Isabel', 'GO'),
(4405, 25, 'Santa Isabel', 'SP'),
(4406, 16, 'Santa Isabel do Ivaí', 'PR'),
(4407, 14, 'Santa Isabel do Pará', 'PA'),
(4408, 4, 'Santa Isabel do Rio Negro', 'AM'),
(4409, 16, 'Santa Izabel do Oeste', 'PR'),
(4410, 13, 'Santa Juliana', 'MG'),
(4411, 8, 'Santa Leopoldina', 'ES'),
(4412, 16, 'Santa Lúcia', 'PR'),
(4413, 25, 'Santa Lúcia', 'SP'),
(4414, 18, 'Santa Luz', 'PI'),
(4415, 5, 'Santa Luzia', 'BA'),
(4416, 10, 'Santa Luzia', 'MA'),
(4417, 13, 'Santa Luzia', 'MG'),
(4418, 15, 'Santa Luzia', 'PB'),
(4419, 26, 'Santa Luzia do Itanhy', 'SE'),
(4420, 2, 'Santa Luzia do Norte', 'AL'),
(4421, 14, 'Santa Luzia do Pará', 'PA'),
(4422, 10, 'Santa Luzia do Paruá', 'MA'),
(4423, 22, 'Santa Luzia D\'Oeste', 'RO'),
(4424, 13, 'Santa Margarida', 'MG'),
(4425, 21, 'Santa Margarida do Sul', 'RS'),
(4426, 20, 'Santa Maria', 'RN'),
(4427, 21, 'Santa Maria', 'RS'),
(4428, 17, 'Santa Maria da Boa Vista', 'PE'),
(4429, 25, 'Santa Maria da Serra', 'SP'),
(4430, 5, 'Santa Maria da Vitória', 'BA'),
(4431, 14, 'Santa Maria das Barreiras', 'PA'),
(4432, 13, 'Santa Maria de Itabira', 'MG'),
(4433, 8, 'Santa Maria de Jetibá', 'ES'),
(4434, 17, 'Santa Maria do Cambucá', 'PE'),
(4435, 21, 'Santa Maria do Herval', 'RS'),
(4436, 16, 'Santa Maria do Oeste', 'PR'),
(4437, 14, 'Santa Maria do Pará', 'PA'),
(4438, 13, 'Santa Maria do Salto', 'MG'),
(4439, 13, 'Santa Maria do Suaçuí', 'MG'),
(4440, 27, 'Santa Maria do Tocantins', 'TO'),
(4441, 19, 'Santa Maria Madalena', 'RJ'),
(4442, 16, 'Santa Mariana', 'PR'),
(4443, 25, 'Santa Mercedes', 'SP'),
(4444, 16, 'Santa Mônica', 'PR'),
(4445, 6, 'Santa Quitéria', 'CE'),
(4446, 10, 'Santa Quitéria do Maranhão', 'MA'),
(4447, 10, 'Santa Rita', 'MA'),
(4448, 15, 'Santa Rita', 'PB'),
(4449, 13, 'Santa Rita de Caldas', 'MG'),
(4450, 5, 'Santa Rita de Cássia', 'BA'),
(4451, 13, 'Santa Rita de Ibitipoca', 'MG'),
(4452, 13, 'Santa Rita de Jacutinga', 'MG'),
(4453, 13, 'Santa Rita de Minas', 'MG'),
(4454, 9, 'Santa Rita do Araguaia', 'GO'),
(4455, 13, 'Santa Rita do Itueto', 'MG'),
(4456, 9, 'Santa Rita do Novo Destino', 'GO'),
(4457, 12, 'Santa Rita do Pardo', 'MS'),
(4458, 25, 'Santa Rita do Passa Quatro', 'SP'),
(4459, 13, 'Santa Rita do Sapucaí', 'MG'),
(4460, 27, 'Santa Rita do Tocantins', 'TO'),
(4461, 11, 'Santa Rita do Trivelato', 'MT'),
(4462, 25, 'Santa Rita d\'Oeste', 'SP'),
(4463, 21, 'Santa Rosa', 'RS'),
(4464, 13, 'Santa Rosa da Serra', 'MG'),
(4465, 9, 'Santa Rosa de Goiás', 'GO'),
(4466, 24, 'Santa Rosa de Lima', 'SC'),
(4467, 26, 'Santa Rosa de Lima', 'SE'),
(4468, 25, 'Santa Rosa de Viterbo', 'SP'),
(4469, 18, 'Santa Rosa do Piauí', 'PI'),
(4470, 1, 'Santa Rosa do Purus', 'AC'),
(4471, 24, 'Santa Rosa do Sul', 'SC'),
(4472, 27, 'Santa Rosa do Tocantins', 'TO'),
(4473, 25, 'Santa Salete', 'SP'),
(4474, 8, 'Santa Teresa', 'ES'),
(4475, 5, 'Santa Teresinha', 'BA'),
(4476, 15, 'Santa Teresinha', 'PB'),
(4477, 21, 'Santa Tereza', 'RS'),
(4478, 9, 'Santa Tereza de Goiás', 'GO'),
(4479, 16, 'Santa Tereza do Oeste', 'PR'),
(4480, 27, 'Santa Tereza do Tocantins', 'TO'),
(4481, 11, 'Santa Terezinha', 'MT'),
(4482, 17, 'Santa Terezinha', 'PE'),
(4483, 24, 'Santa Terezinha', 'SC'),
(4484, 9, 'Santa Terezinha de Goiás', 'GO'),
(4485, 16, 'Santa Terezinha de Itaipu', 'PR'),
(4486, 24, 'Santa Terezinha do Progresso', 'SC'),
(4487, 27, 'Santa Terezinha do Tocantins', 'TO'),
(4488, 13, 'Santa Vitória', 'MG'),
(4489, 21, 'Santa Vitória do Palmar', 'RS'),
(4490, 5, 'Santaluz', 'BA'),
(4491, 3, 'Santana', 'AP'),
(4492, 5, 'Santana', 'BA'),
(4493, 21, 'Santana da Boa Vista', 'RS'),
(4494, 25, 'Santana da Ponte Pensa', 'SP'),
(4495, 13, 'Santana da Vargem', 'MG'),
(4496, 13, 'Santana de Cataguases', 'MG'),
(4497, 15, 'Santana de Mangueira', 'PB'),
(4498, 25, 'Santana de Parnaíba', 'SP'),
(4499, 13, 'Santana de Pirapama', 'MG'),
(4500, 6, 'Santana do Acaraú', 'CE'),
(4501, 14, 'Santana do Araguaia', 'PA'),
(4502, 6, 'Santana do Cariri', 'CE'),
(4503, 13, 'Santana do Deserto', 'MG'),
(4504, 13, 'Santana do Garambéu', 'MG'),
(4505, 2, 'Santana do Ipanema', 'AL'),
(4506, 16, 'Santana do Itararé', 'PR'),
(4507, 13, 'Santana do Jacaré', 'MG'),
(4508, 21, 'Sant\'Ana do Livramento', 'RS'),
(4509, 13, 'Santana do Manhuaçu', 'MG'),
(4510, 10, 'Santana do Maranhão', 'MA'),
(4511, 20, 'Santana do Matos', 'RN'),
(4512, 2, 'Santana do Mundaú', 'AL'),
(4513, 13, 'Santana do Paraíso', 'MG'),
(4514, 18, 'Santana do Piauí', 'PI'),
(4515, 13, 'Santana do Riacho', 'MG'),
(4516, 26, 'Santana do São Francisco', 'SE'),
(4517, 20, 'Santana do Seridó', 'RN'),
(4518, 15, 'Santana dos Garrotes', 'PB'),
(4519, 13, 'Santana dos Montes', 'MG'),
(4520, 5, 'Santanópolis', 'BA'),
(4521, 14, 'Santarém', 'PA'),
(4522, 14, 'Santarém Novo', 'PA'),
(4523, 21, 'Santiago', 'RS'),
(4524, 24, 'Santiago do Sul', 'SC'),
(4525, 11, 'Santo Afonso', 'MT'),
(4526, 5, 'Santo Amaro', 'BA'),
(4527, 24, 'Santo Amaro da Imperatriz', 'SC'),
(4528, 26, 'Santo Amaro das Brotas', 'SE'),
(4529, 10, 'Santo Amaro do Maranhão', 'MA'),
(4530, 25, 'Santo Anastácio', 'SP'),
(4531, 15, 'Santo André', 'PB'),
(4532, 25, 'Santo André', 'SP'),
(4533, 21, 'Santo Ângelo', 'RS'),
(4534, 20, 'Santo Antônio', 'RN'),
(4535, 25, 'Santo Antônio da Alegria', 'SP'),
(4536, 9, 'Santo Antônio da Barra', 'GO'),
(4537, 21, 'Santo Antônio da Patrulha', 'RS'),
(4538, 16, 'Santo Antônio da Platina', 'PR'),
(4539, 21, 'Santo Antônio das Missões', 'RS'),
(4540, 9, 'Santo Antônio de Goiás', 'GO'),
(4541, 5, 'Santo Antônio de Jesus', 'BA'),
(4542, 18, 'Santo Antônio de Lisboa', 'PI'),
(4543, 19, 'Santo Antônio de Pádua', 'RJ'),
(4544, 25, 'Santo Antônio de Posse', 'SP'),
(4545, 13, 'Santo Antônio do Amparo', 'MG'),
(4546, 25, 'Santo Antônio do Aracanguá', 'SP'),
(4547, 13, 'Santo Antônio do Aventureiro', 'MG'),
(4548, 16, 'Santo Antônio do Caiuá', 'PR'),
(4549, 9, 'Santo Antônio do Descoberto', 'GO'),
(4550, 13, 'Santo Antônio do Grama', 'MG'),
(4551, 4, 'Santo Antônio do Içá', 'AM'),
(4552, 13, 'Santo Antônio do Itambé', 'MG'),
(4553, 13, 'Santo Antônio do Jacinto', 'MG'),
(4554, 25, 'Santo Antônio do Jardim', 'SP'),
(4555, 11, 'Santo Antônio do Leste', 'MT'),
(4556, 11, 'Santo Antônio do Leverger', 'MT'),
(4557, 13, 'Santo Antônio do Monte', 'MG'),
(4558, 21, 'Santo Antônio do Palma', 'RS'),
(4559, 16, 'Santo Antônio do Paraíso', 'PR'),
(4560, 25, 'Santo Antônio do Pinhal', 'SP'),
(4561, 21, 'Santo Antônio do Planalto', 'RS'),
(4562, 13, 'Santo Antônio do Retiro', 'MG'),
(4563, 13, 'Santo Antônio do Rio Abaixo', 'MG'),
(4564, 16, 'Santo Antônio do Sudoeste', 'PR'),
(4565, 14, 'Santo Antônio do Tauá', 'PA'),
(4566, 10, 'Santo Antônio dos Lopes', 'MA'),
(4567, 18, 'Santo Antônio dos Milagres', 'PI'),
(4568, 21, 'Santo Augusto', 'RS'),
(4569, 21, 'Santo Cristo', 'RS'),
(4570, 5, 'Santo Estêvão', 'BA'),
(4571, 25, 'Santo Expedito', 'SP'),
(4572, 21, 'Santo Expedito do Sul', 'RS'),
(4573, 13, 'Santo Hipólito', 'MG'),
(4574, 16, 'Santo Inácio', 'PR'),
(4575, 18, 'Santo Inácio do Piauí', 'PI'),
(4576, 25, 'Santópolis do Aguapeí', 'SP'),
(4577, 25, 'Santos', 'SP'),
(4578, 13, 'Santos Dumont', 'MG'),
(4579, 6, 'São Benedito', 'CE'),
(4580, 10, 'São Benedito do Rio Preto', 'MA'),
(4581, 17, 'São Benedito do Sul', 'PE'),
(4582, 15, 'São Bentinho', 'PB'),
(4583, 10, 'São Bento', 'MA'),
(4584, 15, 'São Bento', 'PB'),
(4585, 13, 'São Bento Abade', 'MG'),
(4586, 20, 'São Bento do Norte', 'RN'),
(4587, 25, 'São Bento do Sapucaí', 'SP'),
(4588, 24, 'São Bento do Sul', 'SC'),
(4589, 27, 'São Bento do Tocantins', 'TO'),
(4590, 20, 'São Bento do Trairí', 'RN'),
(4591, 17, 'São Bento do Una', 'PE'),
(4592, 24, 'São Bernardino', 'SC'),
(4593, 10, 'São Bernardo', 'MA'),
(4594, 25, 'São Bernardo do Campo', 'SP'),
(4595, 24, 'São Bonifácio', 'SC'),
(4596, 21, 'São Borja', 'RS'),
(4597, 2, 'São Brás', 'AL'),
(4598, 13, 'São Brás do Suaçuí', 'MG'),
(4599, 18, 'São Braz do Piauí', 'PI'),
(4600, 14, 'São Caetano de Odivelas', 'PA'),
(4601, 25, 'São Caetano do Sul', 'SP'),
(4602, 17, 'São Caitano', 'PE'),
(4603, 24, 'São Carlos', 'SC'),
(4604, 25, 'São Carlos', 'SP'),
(4605, 16, 'São Carlos do Ivaí', 'PR'),
(4606, 26, 'São Cristóvão', 'SE'),
(4607, 24, 'São Cristovão do Sul', 'SC'),
(4608, 5, 'São Desidério', 'BA'),
(4609, 5, 'São Domingos', 'BA'),
(4610, 9, 'São Domingos', 'GO'),
(4611, 15, 'São Domingos', 'PB'),
(4612, 24, 'São Domingos', 'SC'),
(4613, 26, 'São Domingos', 'SE'),
(4614, 13, 'São Domingos das Dores', 'MG'),
(4615, 14, 'São Domingos do Araguaia', 'PA'),
(4616, 10, 'São Domingos do Azeitão', 'MA'),
(4617, 14, 'São Domingos do Capim', 'PA'),
(4618, 15, 'São Domingos do Cariri', 'PB'),
(4619, 10, 'São Domingos do Maranhão', 'MA'),
(4620, 8, 'São Domingos do Norte', 'ES'),
(4621, 13, 'São Domingos do Prata', 'MG'),
(4622, 21, 'São Domingos do Sul', 'RS'),
(4623, 5, 'São Felipe', 'BA'),
(4624, 22, 'São Felipe D\'Oeste', 'RO'),
(4625, 5, 'São Félix', 'BA'),
(4626, 10, 'São Félix de Balsas', 'MA'),
(4627, 13, 'São Félix de Minas', 'MG'),
(4628, 11, 'São Félix do Araguaia', 'MT'),
(4629, 5, 'São Félix do Coribe', 'BA'),
(4630, 18, 'São Félix do Piauí', 'PI'),
(4631, 27, 'São Félix do Tocantins', 'TO'),
(4632, 14, 'São Félix do Xingu', 'PA'),
(4633, 20, 'São Fernando', 'RN'),
(4634, 19, 'São Fidélis', 'RJ'),
(4635, 13, 'São Francisco', 'MG'),
(4636, 15, 'São Francisco', 'PB'),
(4637, 26, 'São Francisco', 'SE'),
(4638, 25, 'São Francisco', 'SP'),
(4639, 21, 'São Francisco de Assis', 'RS'),
(4640, 18, 'São Francisco de Assis do Piauí', 'PI'),
(4641, 9, 'São Francisco de Goiás', 'GO'),
(4642, 19, 'São Francisco de Itabapoana', 'RJ'),
(4643, 13, 'São Francisco de Paula', 'MG'),
(4644, 21, 'São Francisco de Paula', 'RS'),
(4645, 13, 'São Francisco de Sales', 'MG'),
(4646, 10, 'São Francisco do Brejão', 'MA'),
(4647, 5, 'São Francisco do Conde', 'BA'),
(4648, 13, 'São Francisco do Glória', 'MG'),
(4649, 22, 'São Francisco do Guaporé', 'RO'),
(4650, 10, 'São Francisco do Maranhão', 'MA'),
(4651, 20, 'São Francisco do Oeste', 'RN'),
(4652, 14, 'São Francisco do Pará', 'PA'),
(4653, 18, 'São Francisco do Piauí', 'PI'),
(4654, 24, 'São Francisco do Sul', 'SC'),
(4655, 5, 'São Gabriel', 'BA'),
(4656, 21, 'São Gabriel', 'RS'),
(4657, 4, 'São Gabriel da Cachoeira', 'AM'),
(4658, 8, 'São Gabriel da Palha', 'ES'),
(4659, 12, 'São Gabriel do Oeste', 'MS'),
(4660, 13, 'São Geraldo', 'MG'),
(4661, 13, 'São Geraldo da Piedade', 'MG'),
(4662, 14, 'São Geraldo do Araguaia', 'PA'),
(4663, 13, 'São Geraldo do Baixio', 'MG'),
(4664, 19, 'São Gonçalo', 'RJ'),
(4665, 13, 'São Gonçalo do Abaeté', 'MG'),
(4666, 6, 'São Gonçalo do Amarante', 'CE'),
(4667, 20, 'São Gonçalo do Amarante', 'RN'),
(4668, 18, 'São Gonçalo do Gurguéia', 'PI'),
(4669, 13, 'São Gonçalo do Pará', 'MG'),
(4670, 18, 'São Gonçalo do Piauí', 'PI'),
(4671, 13, 'São Gonçalo do Rio Abaixo', 'MG'),
(4672, 13, 'São Gonçalo do Rio Preto', 'MG'),
(4673, 13, 'São Gonçalo do Sapucaí', 'MG'),
(4674, 5, 'São Gonçalo dos Campos', 'BA'),
(4675, 13, 'São Gotardo', 'MG'),
(4676, 21, 'São Jerônimo', 'RS'),
(4677, 16, 'São Jerônimo da Serra', 'PR'),
(4678, 17, 'São João', 'PE'),
(4679, 16, 'São João', 'PR'),
(4680, 10, 'São João Batista', 'MA'),
(4681, 24, 'São João Batista', 'SC'),
(4682, 13, 'São João Batista do Glória', 'MG'),
(4683, 23, 'São João da Baliza', 'RR'),
(4684, 19, 'São João da Barra', 'RJ'),
(4685, 25, 'São João da Boa Vista', 'SP'),
(4686, 18, 'São João da Canabrava', 'PI'),
(4687, 18, 'São João da Fronteira', 'PI'),
(4688, 13, 'São João da Lagoa', 'MG'),
(4689, 13, 'São João da Mata', 'MG'),
(4690, 9, 'São João da Paraúna', 'GO'),
(4691, 14, 'São João da Ponta', 'PA'),
(4692, 13, 'São João da Ponte', 'MG'),
(4693, 18, 'São João da Serra', 'PI'),
(4694, 21, 'São João da Urtiga', 'RS'),
(4695, 18, 'São João da Varjota', 'PI'),
(4696, 9, 'São João d\'Aliança', 'GO'),
(4697, 25, 'São João das Duas Pontes', 'SP'),
(4698, 13, 'São João das Missões', 'MG'),
(4699, 25, 'São João de Iracema', 'SP'),
(4700, 19, 'São João de Meriti', 'RJ'),
(4701, 14, 'São João de Pirabas', 'PA'),
(4702, 13, 'São João del Rei', 'MG'),
(4703, 14, 'São João do Araguaia', 'PA'),
(4704, 18, 'São João do Arraial', 'PI'),
(4705, 16, 'São João do Caiuá', 'PR'),
(4706, 15, 'São João do Cariri', 'PB'),
(4707, 10, 'São João do Carú', 'MA'),
(4708, 24, 'São João do Itaperiú', 'SC'),
(4709, 16, 'São João do Ivaí', 'PR'),
(4710, 6, 'São João do Jaguaribe', 'CE'),
(4711, 13, 'São João do Manhuaçu', 'MG'),
(4712, 13, 'São João do Manteninha', 'MG'),
(4713, 24, 'São João do Oeste', 'SC'),
(4714, 13, 'São João do Oriente', 'MG'),
(4715, 13, 'São João do Pacuí', 'MG'),
(4716, 10, 'São João do Paraíso', 'MA'),
(4717, 13, 'São João do Paraíso', 'MG'),
(4718, 25, 'São João do Pau d\'Alho', 'SP'),
(4719, 18, 'São João do Piauí', 'PI'),
(4720, 21, 'São João do Polêsine', 'RS'),
(4721, 15, 'São João do Rio do Peixe', 'PB'),
(4722, 20, 'São João do Sabugi', 'RN'),
(4723, 10, 'São João do Soter', 'MA'),
(4724, 24, 'São João do Sul', 'SC'),
(4725, 15, 'São João do Tigre', 'PB'),
(4726, 16, 'São João do Triunfo', 'PR'),
(4727, 10, 'São João dos Patos', 'MA'),
(4728, 13, 'São João Evangelista', 'MG'),
(4729, 13, 'São João Nepomuceno', 'MG'),
(4730, 24, 'São Joaquim', 'SC'),
(4731, 25, 'São Joaquim da Barra', 'SP'),
(4732, 13, 'São Joaquim de Bicas', 'MG'),
(4733, 17, 'São Joaquim do Monte', 'PE'),
(4734, 21, 'São Jorge', 'RS'),
(4735, 16, 'São Jorge do Ivaí', 'PR'),
(4736, 16, 'São Jorge do Patrocínio', 'PR'),
(4737, 16, 'São Jorge d\'Oeste', 'PR'),
(4738, 24, 'São José', 'SC'),
(4739, 13, 'São José da Barra', 'MG'),
(4740, 25, 'São José da Bela Vista', 'SP'),
(4741, 16, 'São José da Boa Vista', 'PR'),
(4742, 17, 'São José da Coroa Grande', 'PE'),
(4743, 15, 'São José da Lagoa Tapada', 'PB'),
(4744, 2, 'São José da Laje', 'AL'),
(4745, 13, 'São José da Lapa', 'MG'),
(4746, 13, 'São José da Safira', 'MG'),
(4747, 2, 'São José da Tapera', 'AL'),
(4748, 13, 'São José da Varginha', 'MG'),
(4749, 5, 'São José da Vitória', 'BA'),
(4750, 21, 'São José das Missões', 'RS'),
(4751, 16, 'São José das Palmeiras', 'PR'),
(4752, 15, 'São José de Caiana', 'PB'),
(4753, 15, 'São José de Espinharas', 'PB'),
(4754, 20, 'São José de Mipibu', 'RN'),
(4755, 15, 'São José de Piranhas', 'PB'),
(4756, 15, 'São José de Princesa', 'PB'),
(4757, 10, 'São José de Ribamar', 'MA'),
(4758, 19, 'São José de Ubá', 'RJ'),
(4759, 13, 'São José do Alegre', 'MG'),
(4760, 25, 'São José do Barreiro', 'SP'),
(4761, 17, 'São José do Belmonte', 'PE'),
(4762, 15, 'São José do Bonfim', 'PB'),
(4763, 15, 'São José do Brejo do Cruz', 'PB'),
(4764, 8, 'São José do Calçado', 'ES'),
(4765, 20, 'São José do Campestre', 'RN'),
(4766, 24, 'São José do Cedro', 'SC'),
(4767, 24, 'São José do Cerrito', 'SC'),
(4768, 13, 'São José do Divino', 'MG'),
(4769, 18, 'São José do Divino', 'PI'),
(4770, 17, 'São José do Egito', 'PE'),
(4771, 13, 'São José do Goiabal', 'MG'),
(4772, 21, 'São José do Herval', 'RS'),
(4773, 21, 'São José do Hortêncio', 'RS'),
(4774, 21, 'São José do Inhacorá', 'RS'),
(4775, 5, 'São José do Jacuípe', 'BA'),
(4776, 13, 'São José do Jacuri', 'MG'),
(4777, 13, 'São José do Mantimento', 'MG'),
(4778, 21, 'São José do Norte', 'RS'),
(4779, 21, 'São José do Ouro', 'RS'),
(4780, 18, 'São José do Peixe', 'PI'),
(4781, 18, 'São José do Piauí', 'PI'),
(4782, 11, 'São José do Povo', 'MT'),
(4783, 11, 'São José do Rio Claro', 'MT'),
(4784, 25, 'São José do Rio Pardo', 'SP'),
(4785, 25, 'São José do Rio Preto', 'SP'),
(4786, 15, 'São José do Sabugi', 'PB'),
(4787, 20, 'São José do Seridó', 'RN'),
(4788, 21, 'São José do Sul', 'RS'),
(4789, 19, 'São José do Vale do Rio Preto', 'RJ'),
(4790, 11, 'São José do Xingu', 'MT'),
(4791, 21, 'São José dos Ausentes', 'RS'),
(4792, 10, 'São José dos Basílios', 'MA'),
(4793, 25, 'São José dos Campos', 'SP'),
(4794, 15, 'São José dos Cordeiros', 'PB'),
(4795, 16, 'São José dos Pinhais', 'PR'),
(4796, 11, 'São José dos Quatro Marcos', 'MT'),
(4797, 15, 'São José dos Ramos', 'PB'),
(4798, 18, 'São Julião', 'PI'),
(4799, 21, 'São Leopoldo', 'RS'),
(4800, 13, 'São Lourenço', 'MG'),
(4801, 17, 'São Lourenço da Mata', 'PE');
INSERT INTO `app_cidades` (`cidade_id`, `estado_id`, `cidade_nome`, `cidade_uf`) VALUES
(4802, 25, 'São Lourenço da Serra', 'SP'),
(4803, 24, 'São Lourenço do Oeste', 'SC'),
(4804, 18, 'São Lourenço do Piauí', 'PI'),
(4805, 21, 'São Lourenço do Sul', 'RS'),
(4806, 24, 'São Ludgero', 'SC'),
(4807, 10, 'São Luís', 'MA'),
(4808, 9, 'São Luís de Montes Belos', 'GO'),
(4809, 6, 'São Luís do Curu', 'CE'),
(4810, 25, 'São Luís do Paraitinga', 'SP'),
(4811, 18, 'São Luis do Piauí', 'PI'),
(4812, 2, 'São Luís do Quitunde', 'AL'),
(4813, 10, 'São Luís Gonzaga do Maranhão', 'MA'),
(4814, 23, 'São Luiz', 'RR'),
(4815, 9, 'São Luíz do Norte', 'GO'),
(4816, 21, 'São Luiz Gonzaga', 'RS'),
(4817, 15, 'São Mamede', 'PB'),
(4818, 16, 'São Manoel do Paraná', 'PR'),
(4819, 25, 'São Manuel', 'SP'),
(4820, 21, 'São Marcos', 'RS'),
(4821, 21, 'São Martinho', 'RS'),
(4822, 24, 'São Martinho', 'SC'),
(4823, 21, 'São Martinho da Serra', 'RS'),
(4824, 8, 'São Mateus', 'ES'),
(4825, 10, 'São Mateus do Maranhão', 'MA'),
(4826, 16, 'São Mateus do Sul', 'PR'),
(4827, 20, 'São Miguel', 'RN'),
(4828, 25, 'São Miguel Arcanjo', 'SP'),
(4829, 18, 'São Miguel da Baixa Grande', 'PI'),
(4830, 24, 'São Miguel da Boa Vista', 'SC'),
(4831, 5, 'São Miguel das Matas', 'BA'),
(4832, 21, 'São Miguel das Missões', 'RS'),
(4833, 15, 'São Miguel de Taipu', 'PB'),
(4834, 26, 'São Miguel do Aleixo', 'SE'),
(4835, 13, 'São Miguel do Anta', 'MG'),
(4836, 9, 'São Miguel do Araguaia', 'GO'),
(4837, 18, 'São Miguel do Fidalgo', 'PI'),
(4838, 20, 'São Miguel do Gostoso', 'RN'),
(4839, 14, 'São Miguel do Guamá', 'PA'),
(4840, 22, 'São Miguel do Guaporé', 'RO'),
(4841, 16, 'São Miguel do Iguaçu', 'PR'),
(4842, 24, 'São Miguel do Oeste', 'SC'),
(4843, 9, 'São Miguel do Passa Quatro', 'GO'),
(4844, 18, 'São Miguel do Tapuio', 'PI'),
(4845, 27, 'São Miguel do Tocantins', 'TO'),
(4846, 2, 'São Miguel dos Campos', 'AL'),
(4847, 2, 'São Miguel dos Milagres', 'AL'),
(4848, 21, 'São Nicolau', 'RS'),
(4849, 9, 'São Patrício', 'GO'),
(4850, 25, 'São Paulo', 'SP'),
(4851, 21, 'São Paulo das Missões', 'RS'),
(4852, 4, 'São Paulo de Olivença', 'AM'),
(4853, 20, 'São Paulo do Potengi', 'RN'),
(4854, 20, 'São Pedro', 'RN'),
(4855, 25, 'São Pedro', 'SP'),
(4856, 10, 'São Pedro da Água Branca', 'MA'),
(4857, 19, 'São Pedro da Aldeia', 'RJ'),
(4858, 11, 'São Pedro da Cipa', 'MT'),
(4859, 21, 'São Pedro da Serra', 'RS'),
(4860, 13, 'São Pedro da União', 'MG'),
(4861, 21, 'São Pedro das Missões', 'RS'),
(4862, 24, 'São Pedro de Alcântara', 'SC'),
(4863, 21, 'São Pedro do Butiá', 'RS'),
(4864, 16, 'São Pedro do Iguaçu', 'PR'),
(4865, 16, 'São Pedro do Ivaí', 'PR'),
(4866, 16, 'São Pedro do Paraná', 'PR'),
(4867, 18, 'São Pedro do Piauí', 'PI'),
(4868, 13, 'São Pedro do Suaçuí', 'MG'),
(4869, 21, 'São Pedro do Sul', 'RS'),
(4870, 25, 'São Pedro do Turvo', 'SP'),
(4871, 10, 'São Pedro dos Crentes', 'MA'),
(4872, 13, 'São Pedro dos Ferros', 'MG'),
(4873, 20, 'São Rafael', 'RN'),
(4874, 10, 'São Raimundo das Mangabeiras', 'MA'),
(4875, 10, 'São Raimundo do Doca Bezerra', 'MA'),
(4876, 18, 'São Raimundo Nonato', 'PI'),
(4877, 10, 'São Roberto', 'MA'),
(4878, 13, 'São Romão', 'MG'),
(4879, 25, 'São Roque', 'SP'),
(4880, 13, 'São Roque de Minas', 'MG'),
(4881, 8, 'São Roque do Canaã', 'ES'),
(4882, 27, 'São Salvador do Tocantins', 'TO'),
(4883, 2, 'São Sebastião', 'AL'),
(4884, 25, 'São Sebastião', 'SP'),
(4885, 16, 'São Sebastião da Amoreira', 'PR'),
(4886, 13, 'São Sebastião da Bela Vista', 'MG'),
(4887, 14, 'São Sebastião da Boa Vista', 'PA'),
(4888, 25, 'São Sebastião da Grama', 'SP'),
(4889, 13, 'São Sebastião da Vargem Alegre', 'MG'),
(4890, 15, 'São Sebastião de Lagoa de Roça', 'PB'),
(4891, 19, 'São Sebastião do Alto', 'RJ'),
(4892, 13, 'São Sebastião do Anta', 'MG'),
(4893, 21, 'São Sebastião do Caí', 'RS'),
(4894, 13, 'São Sebastião do Maranhão', 'MG'),
(4895, 13, 'São Sebastião do Oeste', 'MG'),
(4896, 13, 'São Sebastião do Paraíso', 'MG'),
(4897, 5, 'São Sebastião do Passé', 'BA'),
(4898, 13, 'São Sebastião do Rio Preto', 'MG'),
(4899, 13, 'São Sebastião do Rio Verde', 'MG'),
(4900, 27, 'São Sebastião do Tocantins', 'TO'),
(4901, 4, 'São Sebastião do Uatumã', 'AM'),
(4902, 15, 'São Sebastião do Umbuzeiro', 'PB'),
(4903, 21, 'São Sepé', 'RS'),
(4904, 9, 'São Simão', 'GO'),
(4905, 25, 'São Simão', 'SP'),
(4906, 13, 'São Thomé das Letras', 'MG'),
(4907, 13, 'São Tiago', 'MG'),
(4908, 13, 'São Tomás de Aquino', 'MG'),
(4909, 16, 'São Tomé', 'PR'),
(4910, 20, 'São Tomé', 'RN'),
(4911, 21, 'São Valentim', 'RS'),
(4912, 21, 'São Valentim do Sul', 'RS'),
(4913, 27, 'São Valério', 'TO'),
(4914, 21, 'São Valério do Sul', 'RS'),
(4915, 21, 'São Vendelino', 'RS'),
(4916, 20, 'São Vicente', 'RN'),
(4917, 25, 'São Vicente', 'SP'),
(4918, 13, 'São Vicente de Minas', 'MG'),
(4919, 21, 'São Vicente do Sul', 'RS'),
(4920, 10, 'São Vicente Ferrer', 'MA'),
(4921, 17, 'São Vicente Ferrer', 'PE'),
(4922, 15, 'Sapé', 'PB'),
(4923, 5, 'Sapeaçu', 'BA'),
(4924, 11, 'Sapezal', 'MT'),
(4925, 21, 'Sapiranga', 'RS'),
(4926, 16, 'Sapopema', 'PR'),
(4927, 14, 'Sapucaia', 'PA'),
(4928, 19, 'Sapucaia', 'RJ'),
(4929, 21, 'Sapucaia do Sul', 'RS'),
(4930, 13, 'Sapucaí-Mirim', 'MG'),
(4931, 19, 'Saquarema', 'RJ'),
(4932, 16, 'Sarandi', 'PR'),
(4933, 21, 'Sarandi', 'RS'),
(4934, 25, 'Sarapuí', 'SP'),
(4935, 13, 'Sardoá', 'MG'),
(4936, 25, 'Sarutaiá', 'SP'),
(4937, 13, 'Sarzedo', 'MG'),
(4938, 5, 'Sátiro Dias', 'BA'),
(4939, 2, 'Satuba', 'AL'),
(4940, 10, 'Satubinha', 'MA'),
(4941, 5, 'Saubara', 'BA'),
(4942, 16, 'Saudade do Iguaçu', 'PR'),
(4943, 24, 'Saudades', 'SC'),
(4944, 5, 'Saúde', 'BA'),
(4945, 24, 'Schroeder', 'SC'),
(4946, 5, 'Seabra', 'BA'),
(4947, 24, 'Seara', 'SC'),
(4948, 25, 'Sebastianópolis do Sul', 'SP'),
(4949, 18, 'Sebastião Barros', 'PI'),
(4950, 5, 'Sebastião Laranjeiras', 'BA'),
(4951, 18, 'Sebastião Leal', 'PI'),
(4952, 21, 'Seberi', 'RS'),
(4953, 21, 'Sede Nova', 'RS'),
(4954, 21, 'Segredo', 'RS'),
(4955, 21, 'Selbach', 'RS'),
(4956, 12, 'Selvíria', 'MS'),
(4957, 13, 'Sem-Peixe', 'MG'),
(4958, 1, 'Sena Madureira', 'AC'),
(4959, 10, 'Senador Alexandre Costa', 'MA'),
(4960, 13, 'Senador Amaral', 'MG'),
(4961, 9, 'Senador Canedo', 'GO'),
(4962, 13, 'Senador Cortes', 'MG'),
(4963, 20, 'Senador Elói de Souza', 'RN'),
(4964, 13, 'Senador Firmino', 'MG'),
(4965, 20, 'Senador Georgino Avelino', 'RN'),
(4966, 1, 'Senador Guiomard', 'AC'),
(4967, 13, 'Senador José Bento', 'MG'),
(4968, 14, 'Senador José Porfírio', 'PA'),
(4969, 10, 'Senador La Rocque', 'MA'),
(4970, 13, 'Senador Modestino Gonçalves', 'MG'),
(4971, 6, 'Senador Pompeu', 'CE'),
(4972, 2, 'Senador Rui Palmeira', 'AL'),
(4973, 6, 'Senador Sá', 'CE'),
(4974, 21, 'Senador Salgado Filho', 'RS'),
(4975, 16, 'Sengés', 'PR'),
(4976, 5, 'Senhor do Bonfim', 'BA'),
(4977, 13, 'Senhora de Oliveira', 'MG'),
(4978, 13, 'Senhora do Porto', 'MG'),
(4979, 13, 'Senhora dos Remédios', 'MG'),
(4980, 21, 'Sentinela do Sul', 'RS'),
(4981, 5, 'Sento Sé', 'BA'),
(4982, 21, 'Serafina Corrêa', 'RS'),
(4983, 13, 'Sericita', 'MG'),
(4984, 15, 'Seridó', 'PB'),
(4985, 22, 'Seringueiras', 'RO'),
(4986, 21, 'Sério', 'RS'),
(4987, 13, 'Seritinga', 'MG'),
(4988, 19, 'Seropédica', 'RJ'),
(4989, 8, 'Serra', 'ES'),
(4990, 24, 'Serra Alta', 'SC'),
(4991, 25, 'Serra Azul', 'SP'),
(4992, 13, 'Serra Azul de Minas', 'MG'),
(4993, 15, 'Serra Branca', 'PB'),
(4994, 15, 'Serra da Raiz', 'PB'),
(4995, 13, 'Serra da Saudade', 'MG'),
(4996, 20, 'Serra de São Bento', 'RN'),
(4997, 20, 'Serra do Mel', 'RN'),
(4998, 3, 'Serra do Navio', 'AP'),
(4999, 5, 'Serra do Ramalho', 'BA'),
(5000, 13, 'Serra do Salitre', 'MG'),
(5001, 13, 'Serra dos Aimorés', 'MG'),
(5002, 5, 'Serra Dourada', 'BA'),
(5003, 15, 'Serra Grande', 'PB'),
(5004, 25, 'Serra Negra', 'SP'),
(5005, 20, 'Serra Negra do Norte', 'RN'),
(5006, 11, 'Serra Nova Dourada', 'MT'),
(5007, 5, 'Serra Preta', 'BA'),
(5008, 15, 'Serra Redonda', 'PB'),
(5009, 17, 'Serra Talhada', 'PE'),
(5010, 25, 'Serrana', 'SP'),
(5011, 13, 'Serrania', 'MG'),
(5012, 10, 'Serrano do Maranhão', 'MA'),
(5013, 9, 'Serranópolis', 'GO'),
(5014, 13, 'Serranópolis de Minas', 'MG'),
(5015, 16, 'Serranópolis do Iguaçu', 'PR'),
(5016, 13, 'Serranos', 'MG'),
(5017, 15, 'Serraria', 'PB'),
(5018, 5, 'Serrinha', 'BA'),
(5019, 20, 'Serrinha', 'RN'),
(5020, 20, 'Serrinha dos Pintos', 'RN'),
(5021, 17, 'Serrita', 'PE'),
(5022, 13, 'Serro', 'MG'),
(5023, 5, 'Serrolândia', 'BA'),
(5024, 16, 'Sertaneja', 'PR'),
(5025, 17, 'Sertânia', 'PE'),
(5026, 16, 'Sertanópolis', 'PR'),
(5027, 21, 'Sertão', 'RS'),
(5028, 21, 'Sertão Santana', 'RS'),
(5029, 15, 'Sertãozinho', 'PB'),
(5030, 25, 'Sertãozinho', 'SP'),
(5031, 25, 'Sete Barras', 'SP'),
(5032, 21, 'Sete de Setembro', 'RS'),
(5033, 13, 'Sete Lagoas', 'MG'),
(5034, 12, 'Sete Quedas', 'MS'),
(5035, 13, 'Setubinha', 'MG'),
(5036, 21, 'Severiano de Almeida', 'RS'),
(5037, 20, 'Severiano Melo', 'RN'),
(5038, 25, 'Severínia', 'SP'),
(5039, 24, 'Siderópolis', 'SC'),
(5040, 12, 'Sidrolândia', 'MS'),
(5041, 18, 'Sigefredo Pacheco', 'PI'),
(5042, 19, 'Silva Jardim', 'RJ'),
(5043, 9, 'Silvânia', 'GO'),
(5044, 27, 'Silvanópolis', 'TO'),
(5045, 21, 'Silveira Martins', 'RS'),
(5046, 13, 'Silveirânia', 'MG'),
(5047, 25, 'Silveiras', 'SP'),
(5048, 4, 'Silves', 'AM'),
(5049, 13, 'Silvianópolis', 'MG'),
(5050, 26, 'Simão Dias', 'SE'),
(5051, 13, 'Simão Pereira', 'MG'),
(5052, 18, 'Simões', 'PI'),
(5053, 5, 'Simões Filho', 'BA'),
(5054, 9, 'Simolândia', 'GO'),
(5055, 13, 'Simonésia', 'MG'),
(5056, 18, 'Simplício Mendes', 'PI'),
(5057, 21, 'Sinimbu', 'RS'),
(5058, 11, 'Sinop', 'MT'),
(5059, 16, 'Siqueira Campos', 'PR'),
(5060, 17, 'Sirinhaém', 'PE'),
(5061, 26, 'Siriri', 'SE'),
(5062, 9, 'Sítio d\'Abadia', 'GO'),
(5063, 5, 'Sítio do Mato', 'BA'),
(5064, 5, 'Sítio do Quinto', 'BA'),
(5065, 10, 'Sítio Novo', 'MA'),
(5066, 20, 'Sítio Novo', 'RN'),
(5067, 27, 'Sítio Novo do Tocantins', 'TO'),
(5068, 5, 'Sobradinho', 'BA'),
(5069, 21, 'Sobradinho', 'RS'),
(5070, 15, 'Sobrado', 'PB'),
(5071, 6, 'Sobral', 'CE'),
(5072, 13, 'Sobrália', 'MG'),
(5073, 25, 'Socorro', 'SP'),
(5074, 18, 'Socorro do Piauí', 'PI'),
(5075, 15, 'Solânea', 'PB'),
(5076, 15, 'Soledade', 'PB'),
(5077, 21, 'Soledade', 'RS'),
(5078, 13, 'Soledade de Minas', 'MG'),
(5079, 17, 'Solidão', 'PE'),
(5080, 6, 'Solonópole', 'CE'),
(5081, 24, 'Sombrio', 'SC'),
(5082, 12, 'Sonora', 'MS'),
(5083, 8, 'Sooretama', 'ES'),
(5084, 25, 'Sorocaba', 'SP'),
(5085, 11, 'Sorriso', 'MT'),
(5086, 15, 'Sossêgo', 'PB'),
(5087, 14, 'Soure', 'PA'),
(5088, 15, 'Sousa', 'PB'),
(5089, 5, 'Souto Soares', 'BA'),
(5090, 27, 'Sucupira', 'TO'),
(5091, 10, 'Sucupira do Norte', 'MA'),
(5092, 10, 'Sucupira do Riachão', 'MA'),
(5093, 25, 'Sud Mennucci', 'SP'),
(5094, 24, 'Sul Brasil', 'SC'),
(5095, 16, 'Sulina', 'PR'),
(5096, 25, 'Sumaré', 'SP'),
(5097, 15, 'Sumé', 'PB'),
(5098, 19, 'Sumidouro', 'RJ'),
(5099, 17, 'Surubim', 'PE'),
(5100, 18, 'Sussuapara', 'PI'),
(5101, 25, 'Suzanápolis', 'SP'),
(5102, 25, 'Suzano', 'SP'),
(5103, 21, 'Tabaí', 'RS'),
(5104, 11, 'Tabaporã', 'MT'),
(5105, 25, 'Tabapuã', 'SP'),
(5106, 4, 'Tabatinga', 'AM'),
(5107, 25, 'Tabatinga', 'SP'),
(5108, 17, 'Tabira', 'PE'),
(5109, 25, 'Taboão da Serra', 'SP'),
(5110, 5, 'Tabocas do Brejo Velho', 'BA'),
(5111, 20, 'Taboleiro Grande', 'RN'),
(5112, 13, 'Tabuleiro', 'MG'),
(5113, 6, 'Tabuleiro do Norte', 'CE'),
(5114, 17, 'Tacaimbó', 'PE'),
(5115, 17, 'Tacaratu', 'PE'),
(5116, 25, 'Taciba', 'SP'),
(5117, 15, 'Tacima', 'PB'),
(5118, 12, 'Tacuru', 'MS'),
(5119, 25, 'Taguaí', 'SP'),
(5120, 27, 'Taguatinga', 'TO'),
(5121, 25, 'Taiaçu', 'SP'),
(5122, 14, 'Tailândia', 'PA'),
(5123, 24, 'Taió', 'SC'),
(5124, 13, 'Taiobeiras', 'MG'),
(5125, 27, 'Taipas do Tocantins', 'TO'),
(5126, 20, 'Taipu', 'RN'),
(5127, 25, 'Taiúva', 'SP'),
(5128, 27, 'Talismã', 'TO'),
(5129, 17, 'Tamandaré', 'PE'),
(5130, 16, 'Tamarana', 'PR'),
(5131, 25, 'Tambaú', 'SP'),
(5132, 16, 'Tamboara', 'PR'),
(5133, 6, 'Tamboril', 'CE'),
(5134, 18, 'Tamboril do Piauí', 'PI'),
(5135, 25, 'Tanabi', 'SP'),
(5136, 20, 'Tangará', 'RN'),
(5137, 24, 'Tangará', 'SC'),
(5138, 11, 'Tangará da Serra', 'MT'),
(5139, 19, 'Tanguá', 'RJ'),
(5140, 5, 'Tanhaçu', 'BA'),
(5141, 2, 'Tanque d\'Arca', 'AL'),
(5142, 18, 'Tanque do Piauí', 'PI'),
(5143, 5, 'Tanque Novo', 'BA'),
(5144, 5, 'Tanquinho', 'BA'),
(5145, 13, 'Taparuba', 'MG'),
(5146, 4, 'Tapauá', 'AM'),
(5147, 16, 'Tapejara', 'PR'),
(5148, 21, 'Tapejara', 'RS'),
(5149, 21, 'Tapera', 'RS'),
(5150, 5, 'Taperoá', 'BA'),
(5151, 15, 'Taperoá', 'PB'),
(5152, 21, 'Tapes', 'RS'),
(5153, 13, 'Tapira', 'MG'),
(5154, 16, 'Tapira', 'PR'),
(5155, 13, 'Tapiraí', 'MG'),
(5156, 25, 'Tapiraí', 'SP'),
(5157, 5, 'Tapiramutá', 'BA'),
(5158, 25, 'Tapiratiba', 'SP'),
(5159, 11, 'Tapurah', 'MT'),
(5160, 21, 'Taquara', 'RS'),
(5161, 13, 'Taquaraçu de Minas', 'MG'),
(5162, 25, 'Taquaral', 'SP'),
(5163, 9, 'Taquaral de Goiás', 'GO'),
(5164, 2, 'Taquarana', 'AL'),
(5165, 21, 'Taquari', 'RS'),
(5166, 25, 'Taquaritinga', 'SP'),
(5167, 17, 'Taquaritinga do Norte', 'PE'),
(5168, 25, 'Taquarituba', 'SP'),
(5169, 25, 'Taquarivaí', 'SP'),
(5170, 21, 'Taquaruçu do Sul', 'RS'),
(5171, 12, 'Taquarussu', 'MS'),
(5172, 25, 'Tarabai', 'SP'),
(5173, 1, 'Tarauacá', 'AC'),
(5174, 6, 'Tarrafas', 'CE'),
(5175, 3, 'Tartarugalzinho', 'AP'),
(5176, 25, 'Tarumã', 'SP'),
(5177, 13, 'Tarumirim', 'MG'),
(5178, 10, 'Tasso Fragoso', 'MA'),
(5179, 25, 'Tatuí', 'SP'),
(5180, 6, 'Tauá', 'CE'),
(5181, 25, 'Taubaté', 'SP'),
(5182, 15, 'Tavares', 'PB'),
(5183, 21, 'Tavares', 'RS'),
(5184, 4, 'Tefé', 'AM'),
(5185, 15, 'Teixeira', 'PB'),
(5186, 5, 'Teixeira de Freitas', 'BA'),
(5187, 16, 'Teixeira Soares', 'PR'),
(5188, 13, 'Teixeiras', 'MG'),
(5189, 22, 'Teixeirópolis', 'RO'),
(5190, 6, 'Tejuçuoca', 'CE'),
(5191, 25, 'Tejupá', 'SP'),
(5192, 16, 'Telêmaco Borba', 'PR'),
(5193, 26, 'Telha', 'SE'),
(5194, 20, 'Tenente Ananias', 'RN'),
(5195, 20, 'Tenente Laurentino Cruz', 'RN'),
(5196, 21, 'Tenente Portela', 'RS'),
(5197, 15, 'Tenório', 'PB'),
(5198, 5, 'Teodoro Sampaio', 'BA'),
(5199, 25, 'Teodoro Sampaio', 'SP'),
(5200, 5, 'Teofilândia', 'BA'),
(5201, 13, 'Teófilo Otoni', 'MG'),
(5202, 5, 'Teolândia', 'BA'),
(5203, 2, 'Teotônio Vilela', 'AL'),
(5204, 12, 'Terenos', 'MS'),
(5205, 18, 'Teresina', 'PI'),
(5206, 9, 'Teresina de Goiás', 'GO'),
(5207, 19, 'Teresópolis', 'RJ'),
(5208, 17, 'Terezinha', 'PE'),
(5209, 9, 'Terezópolis de Goiás', 'GO'),
(5210, 14, 'Terra Alta', 'PA'),
(5211, 16, 'Terra Boa', 'PR'),
(5212, 21, 'Terra de Areia', 'RS'),
(5213, 5, 'Terra Nova', 'BA'),
(5214, 17, 'Terra Nova', 'PE'),
(5215, 11, 'Terra Nova do Norte', 'MT'),
(5216, 16, 'Terra Rica', 'PR'),
(5217, 16, 'Terra Roxa', 'PR'),
(5218, 25, 'Terra Roxa', 'SP'),
(5219, 14, 'Terra Santa', 'PA'),
(5220, 11, 'Tesouro', 'MT'),
(5221, 21, 'Teutônia', 'RS'),
(5222, 22, 'Theobroma', 'RO'),
(5223, 6, 'Tianguá', 'CE'),
(5224, 16, 'Tibagi', 'PR'),
(5225, 20, 'Tibau', 'RN'),
(5226, 20, 'Tibau do Sul', 'RN'),
(5227, 25, 'Tietê', 'SP'),
(5228, 24, 'Tigrinhos', 'SC'),
(5229, 24, 'Tijucas', 'SC'),
(5230, 16, 'Tijucas do Sul', 'PR'),
(5231, 17, 'Timbaúba', 'PE'),
(5232, 20, 'Timbaúba dos Batistas', 'RN'),
(5233, 24, 'Timbé do Sul', 'SC'),
(5234, 10, 'Timbiras', 'MA'),
(5235, 24, 'Timbó', 'SC'),
(5236, 24, 'Timbó Grande', 'SC'),
(5237, 25, 'Timburi', 'SP'),
(5238, 10, 'Timon', 'MA'),
(5239, 13, 'Timóteo', 'MG'),
(5240, 21, 'Tio Hugo', 'RS'),
(5241, 13, 'Tiradentes', 'MG'),
(5242, 21, 'Tiradentes do Sul', 'RS'),
(5243, 13, 'Tiros', 'MG'),
(5244, 26, 'Tobias Barreto', 'SE'),
(5245, 27, 'Tocantínia', 'TO'),
(5246, 27, 'Tocantinópolis', 'TO'),
(5247, 13, 'Tocantins', 'MG'),
(5248, 13, 'Tocos do Moji', 'MG'),
(5249, 13, 'Toledo', 'MG'),
(5250, 16, 'Toledo', 'PR'),
(5251, 26, 'Tomar do Geru', 'SE'),
(5252, 16, 'Tomazina', 'PR'),
(5253, 13, 'Tombos', 'MG'),
(5254, 14, 'Tomé-Açu', 'PA'),
(5255, 4, 'Tonantins', 'AM'),
(5256, 17, 'Toritama', 'PE'),
(5257, 11, 'Torixoréu', 'MT'),
(5258, 21, 'Toropi', 'RS'),
(5259, 25, 'Torre de Pedra', 'SP'),
(5260, 21, 'Torres', 'RS'),
(5261, 25, 'Torrinha', 'SP'),
(5262, 20, 'Touros', 'RN'),
(5263, 25, 'Trabiju', 'SP'),
(5264, 14, 'Tracuateua', 'PA'),
(5265, 17, 'Tracunhaém', 'PE'),
(5266, 2, 'Traipu', 'AL'),
(5267, 14, 'Trairão', 'PA'),
(5268, 6, 'Trairi', 'CE'),
(5269, 19, 'Trajano de Moraes', 'RJ'),
(5270, 21, 'Tramandaí', 'RS'),
(5271, 21, 'Travesseiro', 'RS'),
(5272, 5, 'Tremedal', 'BA'),
(5273, 25, 'Tremembé', 'SP'),
(5274, 21, 'Três Arroios', 'RS'),
(5275, 24, 'Três Barras', 'SC'),
(5276, 16, 'Três Barras do Paraná', 'PR'),
(5277, 21, 'Três Cachoeiras', 'RS'),
(5278, 13, 'Três Corações', 'MG'),
(5279, 21, 'Três Coroas', 'RS'),
(5280, 21, 'Três de Maio', 'RS'),
(5281, 21, 'Três Forquilhas', 'RS'),
(5282, 25, 'Três Fronteiras', 'SP'),
(5283, 12, 'Três Lagoas', 'MS'),
(5284, 13, 'Três Marias', 'MG'),
(5285, 21, 'Três Palmeiras', 'RS'),
(5286, 21, 'Três Passos', 'RS'),
(5287, 13, 'Três Pontas', 'MG'),
(5288, 9, 'Três Ranchos', 'GO'),
(5289, 19, 'Três Rios', 'RJ'),
(5290, 24, 'Treviso', 'SC'),
(5291, 24, 'Treze de Maio', 'SC'),
(5292, 24, 'Treze Tílias', 'SC'),
(5293, 9, 'Trindade', 'GO'),
(5294, 17, 'Trindade', 'PE'),
(5295, 21, 'Trindade do Sul', 'RS'),
(5296, 15, 'Triunfo', 'PB'),
(5297, 17, 'Triunfo', 'PE'),
(5298, 21, 'Triunfo', 'RS'),
(5299, 20, 'Triunfo Potiguar', 'RN'),
(5300, 10, 'Trizidela do Vale', 'MA'),
(5301, 9, 'Trombas', 'GO'),
(5302, 24, 'Trombudo Central', 'SC'),
(5303, 24, 'Tubarão', 'SC'),
(5304, 5, 'Tucano', 'BA'),
(5305, 14, 'Tucumã', 'PA'),
(5306, 21, 'Tucunduva', 'RS'),
(5307, 14, 'Tucuruí', 'PA'),
(5308, 10, 'Tufilândia', 'MA'),
(5309, 25, 'Tuiuti', 'SP'),
(5310, 13, 'Tumiritinga', 'MG'),
(5311, 24, 'Tunápolis', 'SC'),
(5312, 21, 'Tunas', 'RS'),
(5313, 16, 'Tunas do Paraná', 'PR'),
(5314, 16, 'Tuneiras do Oeste', 'PR'),
(5315, 10, 'Tuntum', 'MA'),
(5316, 25, 'Tupã', 'SP'),
(5317, 13, 'Tupaciguara', 'MG'),
(5318, 17, 'Tupanatinga', 'PE'),
(5319, 21, 'Tupanci do Sul', 'RS'),
(5320, 21, 'Tupanciretã', 'RS'),
(5321, 21, 'Tupandi', 'RS'),
(5322, 21, 'Tuparendi', 'RS'),
(5323, 17, 'Tuparetama', 'PE'),
(5324, 16, 'Tupãssi', 'PR'),
(5325, 25, 'Tupi Paulista', 'SP'),
(5326, 27, 'Tupirama', 'TO'),
(5327, 27, 'Tupiratins', 'TO'),
(5328, 10, 'Turiaçu', 'MA'),
(5329, 10, 'Turilândia', 'MA'),
(5330, 25, 'Turiúba', 'SP'),
(5331, 13, 'Turmalina', 'MG'),
(5332, 25, 'Turmalina', 'SP'),
(5333, 21, 'Turuçu', 'RS'),
(5334, 6, 'Tururu', 'CE'),
(5335, 9, 'Turvânia', 'GO'),
(5336, 9, 'Turvelândia', 'GO'),
(5337, 16, 'Turvo', 'PR'),
(5338, 24, 'Turvo', 'SC'),
(5339, 13, 'Turvolândia', 'MG'),
(5340, 10, 'Tutóia', 'MA'),
(5341, 4, 'Uarini', 'AM'),
(5342, 5, 'Uauá', 'BA'),
(5343, 13, 'Ubá', 'MG'),
(5344, 13, 'Ubaí', 'MG'),
(5345, 5, 'Ubaíra', 'BA'),
(5346, 5, 'Ubaitaba', 'BA'),
(5347, 6, 'Ubajara', 'CE'),
(5348, 13, 'Ubaporanga', 'MG'),
(5349, 25, 'Ubarana', 'SP'),
(5350, 5, 'Ubatã', 'BA'),
(5351, 25, 'Ubatuba', 'SP'),
(5352, 13, 'Uberaba', 'MG'),
(5353, 13, 'Uberlândia', 'MG'),
(5354, 25, 'Ubirajara', 'SP'),
(5355, 16, 'Ubiratã', 'PR'),
(5356, 21, 'Ubiretama', 'RS'),
(5357, 25, 'Uchoa', 'SP'),
(5358, 5, 'Uibaí', 'BA'),
(5359, 23, 'Uiramutã', 'RR'),
(5360, 9, 'Uirapuru', 'GO'),
(5361, 15, 'Uiraúna', 'PB'),
(5362, 14, 'Ulianópolis', 'PA'),
(5363, 6, 'Umari', 'CE'),
(5364, 20, 'Umarizal', 'RN'),
(5365, 26, 'Umbaúba', 'SE'),
(5366, 5, 'Umburanas', 'BA'),
(5367, 13, 'Umburatiba', 'MG'),
(5368, 15, 'Umbuzeiro', 'PB'),
(5369, 6, 'Umirim', 'CE'),
(5370, 16, 'Umuarama', 'PR'),
(5371, 5, 'Una', 'BA'),
(5372, 13, 'Unaí', 'MG'),
(5373, 18, 'União', 'PI'),
(5374, 21, 'União da Serra', 'RS'),
(5375, 16, 'União da Vitória', 'PR'),
(5376, 13, 'União de Minas', 'MG'),
(5377, 24, 'União do Oeste', 'SC'),
(5378, 11, 'União do Sul', 'MT'),
(5379, 2, 'União dos Palmares', 'AL'),
(5380, 25, 'União Paulista', 'SP'),
(5381, 16, 'Uniflor', 'PR'),
(5382, 21, 'Unistalda', 'RS'),
(5383, 20, 'Upanema', 'RN'),
(5384, 16, 'Uraí', 'PR'),
(5385, 5, 'Urandi', 'BA'),
(5386, 25, 'Urânia', 'SP'),
(5387, 10, 'Urbano Santos', 'MA'),
(5388, 25, 'Uru', 'SP'),
(5389, 9, 'Uruaçu', 'GO'),
(5390, 9, 'Uruana', 'GO'),
(5391, 13, 'Uruana de Minas', 'MG'),
(5392, 14, 'Uruará', 'PA'),
(5393, 24, 'Urubici', 'SC'),
(5394, 6, 'Uruburetama', 'CE'),
(5395, 13, 'Urucânia', 'MG'),
(5396, 4, 'Urucará', 'AM'),
(5397, 5, 'Uruçuca', 'BA'),
(5398, 18, 'Uruçuí', 'PI'),
(5399, 13, 'Urucuia', 'MG'),
(5400, 4, 'Urucurituba', 'AM'),
(5401, 21, 'Uruguaiana', 'RS'),
(5402, 6, 'Uruoca', 'CE'),
(5403, 22, 'Urupá', 'RO'),
(5404, 24, 'Urupema', 'SC'),
(5405, 25, 'Urupês', 'SP'),
(5406, 24, 'Urussanga', 'SC'),
(5407, 9, 'Urutaí', 'GO'),
(5408, 5, 'Utinga', 'BA'),
(5409, 21, 'Vacaria', 'RS'),
(5410, 11, 'Vale de São Domingos', 'MT'),
(5411, 22, 'Vale do Anari', 'RO'),
(5412, 22, 'Vale do Paraíso', 'RO'),
(5413, 21, 'Vale do Sol', 'RS'),
(5414, 21, 'Vale Real', 'RS'),
(5415, 21, 'Vale Verde', 'RS'),
(5416, 5, 'Valença', 'BA'),
(5417, 19, 'Valença', 'RJ'),
(5418, 18, 'Valença do Piauí', 'PI'),
(5419, 5, 'Valente', 'BA'),
(5420, 25, 'Valentim Gentil', 'SP'),
(5421, 25, 'Valinhos', 'SP'),
(5422, 25, 'Valparaíso', 'SP'),
(5423, 9, 'Valparaíso de Goiás', 'GO'),
(5424, 21, 'Vanini', 'RS'),
(5425, 24, 'Vargeão', 'SC'),
(5426, 24, 'Vargem', 'SC'),
(5427, 25, 'Vargem', 'SP'),
(5428, 13, 'Vargem Alegre', 'MG'),
(5429, 8, 'Vargem Alta', 'ES'),
(5430, 13, 'Vargem Bonita', 'MG'),
(5431, 24, 'Vargem Bonita', 'SC'),
(5432, 10, 'Vargem Grande', 'MA'),
(5433, 13, 'Vargem Grande do Rio Pardo', 'MG'),
(5434, 25, 'Vargem Grande do Sul', 'SP'),
(5435, 25, 'Vargem Grande Paulista', 'SP'),
(5436, 13, 'Varginha', 'MG'),
(5437, 9, 'Varjão', 'GO'),
(5438, 13, 'Varjão de Minas', 'MG'),
(5439, 6, 'Varjota', 'CE'),
(5440, 19, 'Varre-Sai', 'RJ'),
(5441, 15, 'Várzea', 'PB'),
(5442, 20, 'Várzea', 'RN'),
(5443, 6, 'Várzea Alegre', 'CE'),
(5444, 18, 'Várzea Branca', 'PI'),
(5445, 13, 'Várzea da Palma', 'MG'),
(5446, 5, 'Várzea da Roça', 'BA'),
(5447, 5, 'Várzea do Poço', 'BA'),
(5448, 11, 'Várzea Grande', 'MT'),
(5449, 18, 'Várzea Grande', 'PI'),
(5450, 5, 'Várzea Nova', 'BA'),
(5451, 25, 'Várzea Paulista', 'SP'),
(5452, 5, 'Varzedo', 'BA'),
(5453, 13, 'Varzelândia', 'MG'),
(5454, 19, 'Vassouras', 'RJ'),
(5455, 13, 'Vazante', 'MG'),
(5456, 21, 'Venâncio Aires', 'RS'),
(5457, 8, 'Venda Nova do Imigrante', 'ES'),
(5458, 20, 'Venha-Ver', 'RN'),
(5459, 16, 'Ventania', 'PR'),
(5460, 17, 'Venturosa', 'PE'),
(5461, 11, 'Vera', 'MT'),
(5462, 5, 'Vera Cruz', 'BA'),
(5463, 20, 'Vera Cruz', 'RN'),
(5464, 21, 'Vera Cruz', 'RS'),
(5465, 25, 'Vera Cruz', 'SP'),
(5466, 16, 'Vera Cruz do Oeste', 'PR'),
(5467, 18, 'Vera Mendes', 'PI'),
(5468, 21, 'Veranópolis', 'RS'),
(5469, 17, 'Verdejante', 'PE'),
(5470, 13, 'Verdelândia', 'MG'),
(5471, 16, 'Verê', 'PR'),
(5472, 5, 'Vereda', 'BA'),
(5473, 13, 'Veredinha', 'MG'),
(5474, 13, 'Veríssimo', 'MG'),
(5475, 13, 'Vermelho Novo', 'MG'),
(5476, 17, 'Vertente do Lério', 'PE'),
(5477, 17, 'Vertentes', 'PE'),
(5478, 13, 'Vespasiano', 'MG'),
(5479, 21, 'Vespasiano Correa', 'RS'),
(5480, 21, 'Viadutos', 'RS'),
(5481, 21, 'Viamão', 'RS'),
(5482, 8, 'Viana', 'ES'),
(5483, 10, 'Viana', 'MA'),
(5484, 9, 'Vianópolis', 'GO'),
(5485, 17, 'Vicência', 'PE'),
(5486, 21, 'Vicente Dutra', 'RS'),
(5487, 12, 'Vicentina', 'MS'),
(5488, 9, 'Vicentinópolis', 'GO'),
(5489, 2, 'Viçosa', 'AL'),
(5490, 13, 'Viçosa', 'MG'),
(5491, 20, 'Viçosa', 'RN'),
(5492, 6, 'Viçosa do Ceará', 'CE'),
(5493, 21, 'Victor Graeff', 'RS'),
(5494, 24, 'Vidal Ramos', 'SC'),
(5495, 24, 'Videira', 'SC'),
(5496, 13, 'Vieiras', 'MG'),
(5497, 15, 'Vieirópolis', 'PB'),
(5498, 14, 'Vigia', 'PA'),
(5499, 11, 'Vila Bela da Santíssima Trindade', 'MT'),
(5500, 9, 'Vila Boa', 'GO'),
(5501, 20, 'Vila Flor', 'RN'),
(5502, 21, 'Vila Flores', 'RS'),
(5503, 21, 'Vila Lângaro', 'RS'),
(5504, 21, 'Vila Maria', 'RS'),
(5505, 18, 'Vila Nova do Piauí', 'PI'),
(5506, 21, 'Vila Nova do Sul', 'RS'),
(5507, 10, 'Vila Nova dos Martírios', 'MA'),
(5508, 8, 'Vila Pavão', 'ES'),
(5509, 9, 'Vila Propício', 'GO'),
(5510, 11, 'Vila Rica', 'MT'),
(5511, 8, 'Vila Valério', 'ES'),
(5512, 8, 'Vila Velha', 'ES'),
(5513, 22, 'Vilhena', 'RO'),
(5514, 25, 'Vinhedo', 'SP'),
(5515, 25, 'Viradouro', 'SP'),
(5516, 13, 'Virgem da Lapa', 'MG'),
(5517, 13, 'Virgínia', 'MG'),
(5518, 13, 'Virginópolis', 'MG'),
(5519, 13, 'Virgolândia', 'MG'),
(5520, 16, 'Virmond', 'PR'),
(5521, 13, 'Visconde do Rio Branco', 'MG'),
(5522, 14, 'Viseu', 'PA'),
(5523, 21, 'Vista Alegre', 'RS'),
(5524, 25, 'Vista Alegre do Alto', 'SP'),
(5525, 21, 'Vista Alegre do Prata', 'RS'),
(5526, 21, 'Vista Gaúcha', 'RS'),
(5527, 15, 'Vista Serrana', 'PB'),
(5528, 24, 'Vitor Meireles', 'SC'),
(5529, 8, 'Vitória', 'ES'),
(5530, 25, 'Vitória Brasil', 'SP'),
(5531, 5, 'Vitória da Conquista', 'BA'),
(5532, 21, 'Vitória das Missões', 'RS'),
(5533, 17, 'Vitória de Santo Antão', 'PE'),
(5534, 3, 'Vitória do Jari', 'AP'),
(5535, 10, 'Vitória do Mearim', 'MA'),
(5536, 14, 'Vitória do Xingu', 'PA'),
(5537, 16, 'Vitorino', 'PR'),
(5538, 10, 'Vitorino Freire', 'MA'),
(5539, 13, 'Volta Grande', 'MG'),
(5540, 19, 'Volta Redonda', 'RJ'),
(5541, 25, 'Votorantim', 'SP'),
(5542, 25, 'Votuporanga', 'SP'),
(5543, 5, 'Wagner', 'BA'),
(5544, 18, 'Wall Ferraz', 'PI'),
(5545, 27, 'Wanderlândia', 'TO'),
(5546, 5, 'Wanderley', 'BA'),
(5547, 13, 'Wenceslau Braz', 'MG'),
(5548, 16, 'Wenceslau Braz', 'PR'),
(5549, 5, 'Wenceslau Guimarães', 'BA'),
(5550, 21, 'Westfalia', 'RS'),
(5551, 24, 'Witmarsum', 'SC'),
(5552, 27, 'Xambioá', 'TO'),
(5553, 16, 'Xambrê', 'PR'),
(5554, 21, 'Xangri-lá', 'RS'),
(5555, 24, 'Xanxerê', 'SC'),
(5556, 1, 'Xapuri', 'AC'),
(5557, 24, 'Xavantina', 'SC'),
(5558, 24, 'Xaxim', 'SC'),
(5559, 17, 'Xexéu', 'PE'),
(5560, 14, 'Xinguara', 'PA'),
(5561, 5, 'Xique-Xique', 'BA'),
(5562, 15, 'Zabelê', 'PB'),
(5563, 25, 'Zacarias', 'SP'),
(5564, 10, 'Zé Doca', 'MA'),
(5565, 24, 'Zortéa', 'SC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_empresas`
--

CREATE TABLE `app_empresas` (
  `empresa_id` int(11) NOT NULL,
  `empresa_title` varchar(255) DEFAULT NULL,
  `empresa_name` varchar(255) DEFAULT NULL,
  `empresa_capa` varchar(255) DEFAULT NULL,
  `empresa_ramo` varchar(255) DEFAULT NULL,
  `empresa_sobre` text,
  `empresa_site` varchar(255) DEFAULT NULL,
  `empresa_facebook` varchar(255) DEFAULT NULL,
  `empresa_endereco` varchar(255) DEFAULT NULL,
  `empresa_uf` int(11) DEFAULT NULL,
  `empresa_cidade` int(11) DEFAULT NULL,
  `empresa_categoria` varchar(255) DEFAULT NULL,
  `empresa_status` int(11) DEFAULT '0',
  `empresa_views` decimal(10,0) DEFAULT NULL,
  `empresa_date` timestamp NULL DEFAULT NULL,
  `empresa_last_view` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_estados`
--

CREATE TABLE `app_estados` (
  `estado_id` int(11) NOT NULL,
  `estado_nome` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `estado_uf` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `estado_regiao` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_estados`
--

INSERT INTO `app_estados` (`estado_id`, `estado_nome`, `estado_uf`, `estado_regiao`) VALUES
(1, 'Acre', 'AC', 'Norte'),
(2, 'Alagoas', 'AL', 'Nordeste'),
(3, 'Amapá', 'AP', 'Norte'),
(4, 'Amazonas', 'AM', 'Norte'),
(5, 'Bahia', 'BA', 'Nordeste'),
(6, 'Ceará', 'CE', 'Nordeste'),
(7, 'Distrito Federal', 'DF', 'Centro-Oeste'),
(8, 'Espírito Santo', 'ES', 'Sudeste'),
(9, 'Goiás', 'GO', 'Centro-Oeste'),
(10, 'Maranhão', 'MA', 'Nordeste'),
(11, 'Mato Grosso', 'MT', 'Centro-Oeste'),
(12, 'Mato Grosso do Sul', 'MS', 'Centro-Oeste'),
(13, 'Minas Gerais', 'MG', 'Sudeste'),
(14, 'Pará', 'PA', 'Nordeste'),
(15, 'Paraíba', 'PB', 'Nordeste'),
(16, 'Paraná', 'PR', 'Sul'),
(17, 'Pernambuco', 'PE', 'Nordeste'),
(18, 'Piauí', 'PI', 'Nordeste'),
(19, 'Rio de Janeiro', 'RJ', 'Sudeste'),
(20, 'Rio Grande do Norte', 'RN', 'Nordeste'),
(21, 'Rio Grande do Sul', 'RS', 'Sul'),
(22, 'Rondônia', 'RO', 'Norte'),
(23, 'Roraima', 'RR', 'Norte'),
(24, 'Santa Catarina', 'SC', 'Sul'),
(25, 'São Paulo', 'SP', 'Sudeste'),
(26, 'Sergipe', 'SE', 'Nordeste'),
(27, 'Tocantins', 'TO', 'Norte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_categories`
--

CREATE TABLE `ws_categories` (
  `category_id` int(11) NOT NULL,
  `category_parent` int(11) DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `category_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `category_content` text CHARACTER SET latin1,
  `category_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_posts`
--

CREATE TABLE `ws_posts` (
  `post_id` int(11) NOT NULL,
  `post_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `post_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `post_content` longtext CHARACTER SET latin1,
  `post_cover` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT NULL,
  `post_author` int(11) DEFAULT NULL,
  `post_category` int(11) DEFAULT NULL,
  `post_cat_parent` int(11) DEFAULT NULL,
  `post_views` decimal(10,0) DEFAULT '0',
  `post_last_views` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `post_status` int(11) DEFAULT NULL,
  `post_type` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_posts_gallery`
--

CREATE TABLE `ws_posts_gallery` (
  `post_id` int(11) DEFAULT NULL,
  `gallery_id` int(11) NOT NULL,
  `gallery_image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `gallery_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_siteviews`
--

CREATE TABLE `ws_siteviews` (
  `siteviews_id` int(11) NOT NULL,
  `siteviews_date` date NOT NULL,
  `siteviews_users` decimal(10,0) NOT NULL,
  `siteviews_views` decimal(10,0) NOT NULL,
  `siteviews_pages` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_siteviews_agent`
--

CREATE TABLE `ws_siteviews_agent` (
  `agent_id` int(11) NOT NULL,
  `agent_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agent_views` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_siteviews_online`
--

CREATE TABLE `ws_siteviews_online` (
  `online_id` int(11) NOT NULL,
  `online_session` varchar(255) CHARACTER SET latin1 NOT NULL,
  `online_startview` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online_endview` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `online_ip` varchar(255) CHARACTER SET latin1 NOT NULL,
  `online_url` varchar(255) CHARACTER SET latin1 NOT NULL,
  `online_agent` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agent_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_users`
--

CREATE TABLE `ws_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_lastname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_registration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_lastupdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_level` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_cidades`
--
ALTER TABLE `app_cidades`
  ADD PRIMARY KEY (`cidade_id`);

--
-- Indexes for table `app_empresas`
--
ALTER TABLE `app_empresas`
  ADD PRIMARY KEY (`empresa_id`);

--
-- Indexes for table `app_estados`
--
ALTER TABLE `app_estados`
  ADD PRIMARY KEY (`estado_id`);

--
-- Indexes for table `ws_categories`
--
ALTER TABLE `ws_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ws_posts`
--
ALTER TABLE `ws_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `ws_posts_gallery`
--
ALTER TABLE `ws_posts_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `ws_siteviews`
--
ALTER TABLE `ws_siteviews`
  ADD PRIMARY KEY (`siteviews_id`),
  ADD KEY `idx_1` (`siteviews_date`);

--
-- Indexes for table `ws_siteviews_agent`
--
ALTER TABLE `ws_siteviews_agent`
  ADD PRIMARY KEY (`agent_id`),
  ADD KEY `idx_1` (`agent_name`);

--
-- Indexes for table `ws_siteviews_online`
--
ALTER TABLE `ws_siteviews_online`
  ADD PRIMARY KEY (`online_id`);

--
-- Indexes for table `ws_users`
--
ALTER TABLE `ws_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_cidades`
--
ALTER TABLE `app_cidades`
  MODIFY `cidade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5566;

--
-- AUTO_INCREMENT for table `app_empresas`
--
ALTER TABLE `app_empresas`
  MODIFY `empresa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ws_categories`
--
ALTER TABLE `ws_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ws_posts`
--
ALTER TABLE `ws_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ws_posts_gallery`
--
ALTER TABLE `ws_posts_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ws_siteviews`
--
ALTER TABLE `ws_siteviews`
  MODIFY `siteviews_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ws_siteviews_agent`
--
ALTER TABLE `ws_siteviews_agent`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ws_siteviews_online`
--
ALTER TABLE `ws_siteviews_online`
  MODIFY `online_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ws_users`
--
ALTER TABLE `ws_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `helpp`
--
CREATE DATABASE IF NOT EXISTS `helpp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `helpp`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `rmAluno` decimal(6,0) NOT NULL,
  `rmUsuario` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`rmAluno`, `rmUsuario`) VALUES
('180114', '180114');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_turma`
--

CREATE TABLE `aluno_turma` (
  `Aluno_Usuario_rmUsuario` int(11) NOT NULL,
  `rmAluno` decimal(6,0) NOT NULL,
  `codTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno_turma`
--

INSERT INTO `aluno_turma` (`Aluno_Usuario_rmUsuario`, `rmAluno`, `codTurma`) VALUES
(180114, '180114', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade`
--

CREATE TABLE `atividade` (
  `codAtividade` decimal(10,0) NOT NULL,
  `PP_Disciplina_codDisciplina` int(11) NOT NULL,
  `PP_Aluno_rmAluno` decimal(6,0) NOT NULL,
  `titulo_atividade` varchar(50) NOT NULL,
  `instrucao_atividade` varchar(100) NOT NULL,
  `data_conclusao` date NOT NULL,
  `forma_entrega` varchar(50) NOT NULL,
  `mencao_atividade` varchar(10) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `arquivo` varbinary(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `atividade`
--

INSERT INTO `atividade` (`codAtividade`, `PP_Disciplina_codDisciplina`, `PP_Aluno_rmAluno`, `titulo_atividade`, `instrucao_atividade`, `data_conclusao`, `forma_entrega`, `mencao_atividade`, `status`, `arquivo`) VALUES
('1', 1, '180114', 'Exemplo Atividade', 'Fazer a atividade exemplo como estiver escrito', '2020-06-14', 'Pessoalmente', 'I', 'Não entregue', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `cod_curso` int(11) NOT NULL,
  `eixo_curso` varchar(30) NOT NULL,
  `nome_curso` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`cod_curso`, `eixo_curso`, `nome_curso`) VALUES
(1, 'Tecnologia', 'Desenvolvimento de Sistemas'),
(2, 'Tecnologia', 'Técnico em Eletrônica'),
(3, 'Logística', 'Técnico em Logística');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `codDisciplina` int(11) NOT NULL,
  `nomeDisciplina` varchar(30) NOT NULL,
  `siglaDisciplina` varchar(10) NOT NULL,
  `codTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`codDisciplina`, `nomeDisciplina`, `siglaDisciplina`, `codTurma`) VALUES
(1, 'Lógica de Programação', 'LP', 1),
(2, 'Aplicativos informatizados', 'AI', 2),
(3, 'Técnicas em arduino', 'TA', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor`
--

CREATE TABLE `gestor` (
  `rmGestor` decimal(6,0) NOT NULL,
  `rmUsuario` decimal(6,0) NOT NULL,
  `cargoGestor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gestor`
--

INSERT INTO `gestor` (`rmGestor`, `rmUsuario`, `cargoGestor`) VALUES
('180115', '180115', 'Orientadora Educacional');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pp`
--

CREATE TABLE `pp` (
  `aluno_rmAluno` decimal(6,0) NOT NULL,
  `disciplina_codDisciplina` int(11) NOT NULL,
  `gestor_rmGestor` decimal(6,0) NOT NULL,
  `cursoPP` varchar(30) NOT NULL,
  `semestrePP` varchar(20) NOT NULL,
  `anoPP` decimal(4,0) NOT NULL,
  `mencaoFinal` char(2) DEFAULT NULL,
  `seriePP` varchar(10) NOT NULL,
  `statusPP` varchar(50) NOT NULL,
  `disciplinaPP` varchar(50) NOT NULL,
  `habilidadePP` varchar(80) NOT NULL,
  `conhecimentoPP` varchar(80) NOT NULL,
  `tecnologiaPP` varchar(80) NOT NULL,
  `dataTermino` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pp`
--

INSERT INTO `pp` (`aluno_rmAluno`, `disciplina_codDisciplina`, `gestor_rmGestor`, `cursoPP`, `semestrePP`, `anoPP`, `mencaoFinal`, `seriePP`, `statusPP`, `disciplinaPP`, `habilidadePP`, `conhecimentoPP`, `tecnologiaPP`, `dataTermino`) VALUES
('180114', 1, '180115', '1', '2', '2019', '', '2 ano', 'Em aberto', 'Lógica de Programação', 'Exemplo habilidade Exemplo habilidade, Exemplo habilidade Exemplo habilidade', 'Exemplo conhecimento Exemplo conhecimento, Exemplo conhecimento Exemplo conhecim', 'Exemplo tecnologia Exemplo tecnologia, Exemplo tecnologia Exemplo tecnologia', '2020-11-20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `rmProfessor` decimal(6,0) NOT NULL,
  `usuario_rmUsuario` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`rmProfessor`, `usuario_rmUsuario`) VALUES
('180113', '180113');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_disciplina`
--

CREATE TABLE `professor_disciplina` (
  `professor_Usuario_rmUsuario` int(11) NOT NULL,
  `professor_rmProfessor` decimal(6,0) NOT NULL,
  `codDisciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor_disciplina`
--

INSERT INTO `professor_disciplina` (`professor_Usuario_rmUsuario`, `professor_rmProfessor`, `codDisciplina`) VALUES
(180113, '180113', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_pp`
--

CREATE TABLE `professor_pp` (
  `rm_professor` decimal(6,0) NOT NULL,
  `cod_pp_rmAluno` decimal(6,0) NOT NULL,
  `cod_pp_codDisciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor_pp`
--

INSERT INTO `professor_pp` (`rm_professor`, `cod_pp_rmAluno`, `cod_pp_codDisciplina`) VALUES
('180113', '180114', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `cod_turma` int(11) NOT NULL,
  `cod_curso` int(11) NOT NULL,
  `nome_turma` varchar(50) NOT NULL,
  `semestre_turma` varchar(15) NOT NULL,
  `ano_turma` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`cod_turma`, `cod_curso`, `nome_turma`, `semestre_turma`, `ano_turma`) VALUES
(1, 1, '3AI', '2 semestre', '2020'),
(2, 2, '3AE', '2 semestre', '2020'),
(3, 3, '1AL', '1 semestre', '2019');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma_disciplina`
--

CREATE TABLE `turma_disciplina` (
  `codTurma` int(11) NOT NULL,
  `codDisciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma_disciplina`
--

INSERT INTO `turma_disciplina` (`codTurma`, `codDisciplina`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `rmUsuario` decimal(6,0) NOT NULL,
  `nomeUsuario` varchar(55) NOT NULL,
  `emailUsuario` varchar(55) NOT NULL,
  `senhaUsuario` varchar(55) NOT NULL,
  `perfilUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`rmUsuario`, `nomeUsuario`, `emailUsuario`, `senhaUsuario`, `perfilUsuario`) VALUES
('180113', 'João Silva', 'joão.silva01@etec.sp.gov.br', '123456', 'professor'),
('180114', 'Janaina Souza', 'janaina.souza02@etec.sp.gov.br', '101010', 'aluno'),
('180115', 'Flávia Nascimento', 'flavia.nascimento03@etec.sp.gov.br', '545454', 'gestor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`rmAluno`,`rmUsuario`),
  ADD KEY `rmUsuario` (`rmUsuario`);

--
-- Indexes for table `aluno_turma`
--
ALTER TABLE `aluno_turma`
  ADD KEY `rmAluno` (`rmAluno`),
  ADD KEY `codTurma` (`codTurma`);

--
-- Indexes for table `atividade`
--
ALTER TABLE `atividade`
  ADD PRIMARY KEY (`codAtividade`),
  ADD KEY `fk_disciplinaAtividade` (`PP_Disciplina_codDisciplina`),
  ADD KEY `fk_AlunoAtividade` (`PP_Aluno_rmAluno`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cod_curso`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`codDisciplina`),
  ADD KEY `codTurma` (`codTurma`);

--
-- Indexes for table `gestor`
--
ALTER TABLE `gestor`
  ADD PRIMARY KEY (`rmGestor`,`rmUsuario`),
  ADD KEY `rmUsuario` (`rmUsuario`);

--
-- Indexes for table `pp`
--
ALTER TABLE `pp`
  ADD PRIMARY KEY (`aluno_rmAluno`,`disciplina_codDisciplina`),
  ADD KEY `fk_discPP` (`disciplina_codDisciplina`),
  ADD KEY `fk_rmGestor` (`gestor_rmGestor`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`rmProfessor`,`usuario_rmUsuario`),
  ADD KEY `usuario_rmUsuario` (`usuario_rmUsuario`);

--
-- Indexes for table `professor_disciplina`
--
ALTER TABLE `professor_disciplina`
  ADD KEY `professor_rmProfessor` (`professor_rmProfessor`),
  ADD KEY `codDisciplina` (`codDisciplina`);

--
-- Indexes for table `professor_pp`
--
ALTER TABLE `professor_pp`
  ADD KEY `rm_professor` (`rm_professor`),
  ADD KEY `cod_pp_rmAluno` (`cod_pp_rmAluno`),
  ADD KEY `cod_pp_codDisciplina` (`cod_pp_codDisciplina`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`cod_turma`),
  ADD KEY `cod_curso` (`cod_curso`);

--
-- Indexes for table `turma_disciplina`
--
ALTER TABLE `turma_disciplina`
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `codDisciplina` (`codDisciplina`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`rmUsuario`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`rmUsuario`) REFERENCES `usuario` (`rmUsuario`);

--
-- Limitadores para a tabela `aluno_turma`
--
ALTER TABLE `aluno_turma`
  ADD CONSTRAINT `aluno_turma_ibfk_1` FOREIGN KEY (`rmAluno`) REFERENCES `aluno` (`rmAluno`),
  ADD CONSTRAINT `aluno_turma_ibfk_2` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`cod_turma`);

--
-- Limitadores para a tabela `atividade`
--
ALTER TABLE `atividade`
  ADD CONSTRAINT `fk_AlunoAtividade` FOREIGN KEY (`PP_Aluno_rmAluno`) REFERENCES `pp` (`aluno_rmAluno`),
  ADD CONSTRAINT `fk_disciplinaAtividade` FOREIGN KEY (`PP_Disciplina_codDisciplina`) REFERENCES `pp` (`disciplina_codDisciplina`);

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`cod_turma`);

--
-- Limitadores para a tabela `gestor`
--
ALTER TABLE `gestor`
  ADD CONSTRAINT `gestor_ibfk_1` FOREIGN KEY (`rmUsuario`) REFERENCES `usuario` (`rmUsuario`);

--
-- Limitadores para a tabela `pp`
--
ALTER TABLE `pp`
  ADD CONSTRAINT `fk_alunoPP` FOREIGN KEY (`aluno_rmAluno`) REFERENCES `aluno` (`rmAluno`),
  ADD CONSTRAINT `fk_discPP` FOREIGN KEY (`disciplina_codDisciplina`) REFERENCES `disciplina` (`codDisciplina`),
  ADD CONSTRAINT `fk_rmGestor` FOREIGN KEY (`gestor_rmGestor`) REFERENCES `gestor` (`rmGestor`);

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`usuario_rmUsuario`) REFERENCES `usuario` (`rmUsuario`);

--
-- Limitadores para a tabela `professor_disciplina`
--
ALTER TABLE `professor_disciplina`
  ADD CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`professor_rmProfessor`) REFERENCES `professor` (`rmProfessor`),
  ADD CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`);

--
-- Limitadores para a tabela `professor_pp`
--
ALTER TABLE `professor_pp`
  ADD CONSTRAINT `professor_pp_ibfk_1` FOREIGN KEY (`rm_professor`) REFERENCES `professor` (`rmProfessor`),
  ADD CONSTRAINT `professor_pp_ibfk_2` FOREIGN KEY (`cod_pp_rmAluno`) REFERENCES `pp` (`aluno_rmAluno`),
  ADD CONSTRAINT `professor_pp_ibfk_3` FOREIGN KEY (`cod_pp_codDisciplina`) REFERENCES `pp` (`disciplina_codDisciplina`);

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`cod_curso`) REFERENCES `curso` (`cod_curso`);

--
-- Limitadores para a tabela `turma_disciplina`
--
ALTER TABLE `turma_disciplina`
  ADD CONSTRAINT `turma_disciplina_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`cod_turma`),
  ADD CONSTRAINT `turma_disciplina_ibfk_2` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Extraindo dados da tabela `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"helpp\",\"table\":\"usuario\"},{\"db\":\"helpp\",\"table\":\"pp\"},{\"db\":\"helpp\",\"table\":\"atividade\"},{\"db\":\"helpp\",\"table\":\"professor_pp\"},{\"db\":\"helpp\",\"table\":\"professor\"},{\"db\":\"teste_tcc\",\"table\":\"usuario\"},{\"db\":\"teste_tcc\",\"table\":\"turma_disciplina\"},{\"db\":\"teste_tcc\",\"table\":\"turma\"},{\"db\":\"teste_tcc\",\"table\":\"professor_pp\"},{\"db\":\"teste_tcc\",\"table\":\"professor_disciplina\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2019-09-28 01:15:19', '{\"lang\":\"pt\"}'),
('root', '2020-09-21 14:07:35', '{\"lang\":\"pt\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `teste`
--
CREATE DATABASE IF NOT EXISTS `teste` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `teste`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `rm` int(6) NOT NULL,
  `nome` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `codigo` int(3) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`codigo`, `nome`) VALUES
(2, 'Técnica de Porgramação para Internet I e II'),
(3, 'Matemática'),
(4, 'Lógica de Programação');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `codigo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `teste_tcc`
--
CREATE DATABASE IF NOT EXISTS `teste_tcc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `teste_tcc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `rmAluno` decimal(6,0) NOT NULL,
  `rmUsuario` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`rmAluno`, `rmUsuario`) VALUES
('180114', '180114');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_turma`
--

CREATE TABLE `aluno_turma` (
  `Aluno_Usuario_rmUsuario` int(11) NOT NULL,
  `rmAluno` decimal(6,0) NOT NULL,
  `codTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno_turma`
--

INSERT INTO `aluno_turma` (`Aluno_Usuario_rmUsuario`, `rmAluno`, `codTurma`) VALUES
(180114, '180114', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade`
--

CREATE TABLE `atividade` (
  `codAtividade` decimal(10,0) NOT NULL,
  `PP_Disciplina_codDisciplina` int(11) NOT NULL,
  `PP_Aluno_rmAluno` decimal(6,0) NOT NULL,
  `titulo_atividade` varchar(50) NOT NULL,
  `instrucao_atividade` varchar(100) NOT NULL,
  `data_conclusao` date NOT NULL,
  `forma_entrega` varchar(50) NOT NULL,
  `mencao_atividade` varchar(10) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `arquivo` varbinary(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `atividade`
--

INSERT INTO `atividade` (`codAtividade`, `PP_Disciplina_codDisciplina`, `PP_Aluno_rmAluno`, `titulo_atividade`, `instrucao_atividade`, `data_conclusao`, `forma_entrega`, `mencao_atividade`, `status`, `arquivo`) VALUES
('1', 1, '180114', 'Exemplo Atividade', 'Fazer a atividade exemplo como estiver escrito', '2020-06-14', 'Pessoalmente', 'I', 'Não entregue', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `cod_curso` int(11) NOT NULL,
  `eixo_curso` varchar(30) NOT NULL,
  `nome_curso` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`cod_curso`, `eixo_curso`, `nome_curso`) VALUES
(1, 'Tecnologia', 'Desenvolvimento de Sistemas'),
(2, 'Tecnologia', 'Técnico em Eletrônica'),
(3, 'Logística', 'Técnico em Logística');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `codDisciplina` int(11) NOT NULL,
  `nomeDisciplina` varchar(30) NOT NULL,
  `siglaDisciplina` varchar(10) NOT NULL,
  `codTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`codDisciplina`, `nomeDisciplina`, `siglaDisciplina`, `codTurma`) VALUES
(1, 'Lógica de Programação', 'LP', 1),
(2, 'Aplicativos informatizados', 'AI', 2),
(3, 'Técnicas em arduino', 'TA', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor`
--

CREATE TABLE `gestor` (
  `rmGestor` decimal(6,0) NOT NULL,
  `rmUsuario` decimal(6,0) NOT NULL,
  `cargoGestor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gestor`
--

INSERT INTO `gestor` (`rmGestor`, `rmUsuario`, `cargoGestor`) VALUES
('180115', '180115', 'Orientadora Educacional');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pp`
--

CREATE TABLE `pp` (
  `aluno_rmAluno` decimal(6,0) NOT NULL,
  `disciplina_codDisciplina` int(11) NOT NULL,
  `cursoPP` varchar(30) NOT NULL,
  `semestrePP` varchar(20) NOT NULL,
  `anoPP` decimal(4,0) NOT NULL,
  `mencaoFinal` char(2) DEFAULT NULL,
  `seriePP` varchar(10) NOT NULL,
  `statusPP` varchar(50) NOT NULL,
  `disciplinaPP` varchar(50) NOT NULL,
  `habilidadePP` varchar(80) NOT NULL,
  `conhecimentoPP` varchar(80) NOT NULL,
  `tecnologiaPP` varchar(80) NOT NULL,
  `dataTermino` date DEFAULT NULL,
  `gestor_rmGestor` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pp`
--

INSERT INTO `pp` (`aluno_rmAluno`, `disciplina_codDisciplina`, `cursoPP`, `semestrePP`, `anoPP`, `mencaoFinal`, `seriePP`, `statusPP`, `disciplinaPP`, `habilidadePP`, `conhecimentoPP`, `tecnologiaPP`, `dataTermino`, `gestor_rmGestor`) VALUES
('180114', 1, '1', '2', '2019', '', '2 ano', 'Em aberto', 'Lógica de Programação', 'Exemplo habilidade Exemplo habilidade, Exemplo habilidade Exemplo habilidade', 'Exemplo conhecimento Exemplo conhecimento, Exemplo conhecimento Exemplo conhecim', 'Exemplo tecnologia Exemplo tecnologia, Exemplo tecnologia Exemplo tecnologia', '2020-11-20', '180115');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `rmProfessor` decimal(6,0) NOT NULL,
  `usuario_rmUsuario` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`rmProfessor`, `usuario_rmUsuario`) VALUES
('180113', '180113');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_disciplina`
--

CREATE TABLE `professor_disciplina` (
  `professor_Usuario_rmUsuario` int(11) NOT NULL,
  `professor_rmProfessor` decimal(6,0) NOT NULL,
  `codDisciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor_disciplina`
--

INSERT INTO `professor_disciplina` (`professor_Usuario_rmUsuario`, `professor_rmProfessor`, `codDisciplina`) VALUES
(180113, '180113', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_pp`
--

CREATE TABLE `professor_pp` (
  `rm_professor` decimal(6,0) NOT NULL,
  `cod_pp_rmAluno` decimal(6,0) NOT NULL,
  `cod_pp_codDisciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor_pp`
--

INSERT INTO `professor_pp` (`rm_professor`, `cod_pp_rmAluno`, `cod_pp_codDisciplina`) VALUES
('180113', '180114', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `cod_turma` int(11) NOT NULL,
  `cod_curso` int(11) NOT NULL,
  `nome_turma` varchar(50) NOT NULL,
  `semestre_turma` varchar(15) NOT NULL,
  `ano_turma` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`cod_turma`, `cod_curso`, `nome_turma`, `semestre_turma`, `ano_turma`) VALUES
(1, 1, '3AI', '2 semestre', '2020'),
(2, 2, '3AE', '2 semestre', '2020'),
(3, 3, '1AL', '1 semestre', '2019');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma_disciplina`
--

CREATE TABLE `turma_disciplina` (
  `codTurma` int(11) NOT NULL,
  `codDisciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma_disciplina`
--

INSERT INTO `turma_disciplina` (`codTurma`, `codDisciplina`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `rmUsuario` decimal(6,0) NOT NULL,
  `nomeUsuario` varchar(55) NOT NULL,
  `emailUsuario` varchar(55) NOT NULL,
  `senhaUsuario` varchar(55) NOT NULL,
  `perfilUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`rmUsuario`, `nomeUsuario`, `emailUsuario`, `senhaUsuario`, `perfilUsuario`) VALUES
('180113', 'João Silva', 'joão.silva01@etec.sp.gov.br', '123456', 'professor'),
('180114', 'Janaina Souza', 'janaina.souza02@etec.sp.gov.br', '101010', 'aluno'),
('180115', 'Flávia Nascimento', 'flavia.nascimento03@etec.sp.gov.br', '545454', 'gestor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`rmAluno`,`rmUsuario`),
  ADD KEY `rmUsuario` (`rmUsuario`);

--
-- Indexes for table `aluno_turma`
--
ALTER TABLE `aluno_turma`
  ADD KEY `rmAluno` (`rmAluno`),
  ADD KEY `codTurma` (`codTurma`);

--
-- Indexes for table `atividade`
--
ALTER TABLE `atividade`
  ADD PRIMARY KEY (`codAtividade`),
  ADD KEY `fk_disciplinaAtividade` (`PP_Disciplina_codDisciplina`),
  ADD KEY `fk_AlunoAtividade` (`PP_Aluno_rmAluno`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cod_curso`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`codDisciplina`),
  ADD KEY `codTurma` (`codTurma`);

--
-- Indexes for table `gestor`
--
ALTER TABLE `gestor`
  ADD PRIMARY KEY (`rmGestor`,`rmUsuario`),
  ADD KEY `rmUsuario` (`rmUsuario`);

--
-- Indexes for table `pp`
--
ALTER TABLE `pp`
  ADD PRIMARY KEY (`aluno_rmAluno`,`disciplina_codDisciplina`),
  ADD KEY `fk_discPP` (`disciplina_codDisciplina`),
  ADD KEY `fk_rmGestor` (`gestor_rmGestor`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`rmProfessor`,`usuario_rmUsuario`),
  ADD KEY `usuario_rmUsuario` (`usuario_rmUsuario`);

--
-- Indexes for table `professor_disciplina`
--
ALTER TABLE `professor_disciplina`
  ADD KEY `professor_rmProfessor` (`professor_rmProfessor`),
  ADD KEY `codDisciplina` (`codDisciplina`);

--
-- Indexes for table `professor_pp`
--
ALTER TABLE `professor_pp`
  ADD KEY `rm_professor` (`rm_professor`),
  ADD KEY `cod_pp_rmAluno` (`cod_pp_rmAluno`),
  ADD KEY `cod_pp_codDisciplina` (`cod_pp_codDisciplina`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`cod_turma`),
  ADD KEY `cod_curso` (`cod_curso`);

--
-- Indexes for table `turma_disciplina`
--
ALTER TABLE `turma_disciplina`
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `codDisciplina` (`codDisciplina`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`rmUsuario`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`rmUsuario`) REFERENCES `usuario` (`rmUsuario`);

--
-- Limitadores para a tabela `aluno_turma`
--
ALTER TABLE `aluno_turma`
  ADD CONSTRAINT `aluno_turma_ibfk_1` FOREIGN KEY (`rmAluno`) REFERENCES `aluno` (`rmAluno`),
  ADD CONSTRAINT `aluno_turma_ibfk_2` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`cod_turma`);

--
-- Limitadores para a tabela `atividade`
--
ALTER TABLE `atividade`
  ADD CONSTRAINT `fk_AlunoAtividade` FOREIGN KEY (`PP_Aluno_rmAluno`) REFERENCES `pp` (`aluno_rmAluno`),
  ADD CONSTRAINT `fk_disciplinaAtividade` FOREIGN KEY (`PP_Disciplina_codDisciplina`) REFERENCES `pp` (`disciplina_codDisciplina`);

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`cod_turma`);

--
-- Limitadores para a tabela `gestor`
--
ALTER TABLE `gestor`
  ADD CONSTRAINT `gestor_ibfk_1` FOREIGN KEY (`rmUsuario`) REFERENCES `usuario` (`rmUsuario`);

--
-- Limitadores para a tabela `pp`
--
ALTER TABLE `pp`
  ADD CONSTRAINT `fk_alunoPP` FOREIGN KEY (`aluno_rmAluno`) REFERENCES `aluno` (`rmAluno`),
  ADD CONSTRAINT `fk_discPP` FOREIGN KEY (`disciplina_codDisciplina`) REFERENCES `disciplina` (`codDisciplina`),
  ADD CONSTRAINT `fk_rmGestor` FOREIGN KEY (`gestor_rmGestor`) REFERENCES `gestor` (`rmGestor`),
  ADD CONSTRAINT `pp_ibfk_1` FOREIGN KEY (`gestor_rmGestor`) REFERENCES `gestor` (`rmGestor`);

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`usuario_rmUsuario`) REFERENCES `usuario` (`rmUsuario`);

--
-- Limitadores para a tabela `professor_disciplina`
--
ALTER TABLE `professor_disciplina`
  ADD CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`professor_rmProfessor`) REFERENCES `professor` (`rmProfessor`),
  ADD CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`);

--
-- Limitadores para a tabela `professor_pp`
--
ALTER TABLE `professor_pp`
  ADD CONSTRAINT `professor_pp_ibfk_1` FOREIGN KEY (`rm_professor`) REFERENCES `professor` (`rmProfessor`),
  ADD CONSTRAINT `professor_pp_ibfk_2` FOREIGN KEY (`cod_pp_rmAluno`) REFERENCES `pp` (`aluno_rmAluno`),
  ADD CONSTRAINT `professor_pp_ibfk_3` FOREIGN KEY (`cod_pp_codDisciplina`) REFERENCES `pp` (`disciplina_codDisciplina`);

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`cod_curso`) REFERENCES `curso` (`cod_curso`);

--
-- Limitadores para a tabela `turma_disciplina`
--
ALTER TABLE `turma_disciplina`
  ADD CONSTRAINT `turma_disciplina_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`cod_turma`),
  ADD CONSTRAINT `turma_disciplina_ibfk_2` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
