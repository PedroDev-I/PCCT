-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Mar-2025 às 00:50
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `belarmino_etc`
--
CREATE DATABASE IF NOT EXISTS `belarmino_etc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `belarmino_etc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`) VALUES
(1, 'Lucas', 'lucas123@gmail.com'),
(2, 'Isaac', 'isaac123@gmail.com'),
(10, 'Pedro', 'pedro123@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Banco de dados: `bsavtd`
--
CREATE DATABASE IF NOT EXISTS `bsavtd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bsavtd`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) UNSIGNED NOT NULL,
  `cliente` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tronco_l` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `tronco_r` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `ftxl` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ftxr` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ftrxl` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ftrxr` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tpdr` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cod_portadora` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `posicao` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `cliente`, `tronco_l`, `tronco_r`, `ftxl`, `ftxr`, `ftrxl`, `ftrxr`, `tpdr`, `cod_portadora`, `ip`, `posicao`, `telefone`, `ativo`) VALUES
(1, 'SÃO LUIZ DO NORTE - GO', 'BSA VT    SZK CA    B0960K501', 'SZK CA  BSA VT      B0960K501', '6175,7175', '6176,4325', '3951,4325', '3951,4325', '7A-D1', '960K0Q3/4T01', '192.1.1.238', '3B2-12', '08007032359', 'S'),
(2, 'SORRISO - MT', 'BSA VT    SSZ CA    B0448K501', 'SSZ CA    BSA VT    B0448K501', '6181,3000', '6181,5600', '3956,5600', '3956,5600', '7A-D1', '448K0Q3/4T01', '192.1.1.230', '3B2-04', '08007032359', 'S'),
(3, 'CANARANA - MT', 'BSA VT    CKW AE    B0960K501', 'CKW AE    BSA VT    B0960K501', '6177,1475', '6177,8625', '3952,8625', '3952,8625', '7A-D1', '960K0Q3/4T01', '192.1.1.232', '3B2-06', '08007032359', 'S'),
(4, 'TANGARÁ DA SERRA - MT', 'BSA VT    TGS CA    B0448K501', 'TGS CA    BSA VT    B0448K501', '6229,3800', '6229,6400', '4004,6400?', '4004,6400?', '2AE-D1', '448K0Q3/4T01', '192.1.1.239', '3B2-13', '08007032359', 'S'),
(5, 'ALTO PARAÍSO', 'BSA VT    APG CA    B0832K501', 'APG CA    BSA VT    B0832K501', '6169,9800', '6170,6000', '3945,6000', '3945,6000', '7A-D1', '832K0Q3/4T01', '192.1.1.237', '3B8-11', '08007032359', 'S'),
(6, 'PORTO ALEGRE DO NORTE - MT', 'BSA VT    PAZ AE    B0704K501', 'PAZ AE    BSA VT    B0704K501', '6168,8825', '6169,4075', '3944,4075', '3944,4075', '7A-D1', '704K0Q3/4T01', '192.1.1.236', '3B2-10', '08007032359', 'S'),
(7, 'BURITIS - MG', 'BSA VT    BII AE    B0960K501', 'BII AE    BSA VT    B0960K501', '6172,1575', '6172,8725', '3947,8725', '3947,8725', '7A-D1', '960K0Q3/4T01', '192.1.1.231', '3B2-05', '08007032359', 'S'),
(8, 'BARREIRAS', 'BSA VT    BES CA1   B0448K501', 'BES CA1   BSA VT    B0448K501', '6180,0775', '6180,4125', '3955,4125', '3955,0775', '7A-D1', '448K0Q3/4T01', '192.1.1.240', '3B2-14', '08007032359', 'S'),
(9, 'ATIBAIA-SP', 'BSA VT    AIA MC    B1024K501', 'AIA MC    BSA VT    B1024K501', '6183,7725', '3958,1775', 'ver', 'ver', '7A-D1', ' 1M024E3/4T01 ', '192.1.1.137', '3B1-01', '08007032359', 'S'),
(10, 'CACHIMBO', 'BSA VT    NPSOV2G   B0832K501', 'NPSOV2G  BSA VT B0832K 501', '6167,3100', '6184,6900', '3959,6900', '3959,6900', '7A-D1', '832K0Q3/4T01', '192.1.1.125', '3B2-02', '08007032359', 'S'),
(11, 'SÃO FELIX DO ARAGUAIA - MT', 'BSA VT    SXK AE    B0576K501', 'SXK AE    BSA VT    B0576K501', '6171,2200', '6174,9700', '3949,9700', '3949,9700', '7A-D1', '512K0Q3/4T01', '192.1.1.126', '3B2-03', '08007032359', 'S'),
(12, 'GAVIÃO PEIXOTO - SP', 'BSA VT    GAPECA7 BO384 501', 'GAPECA7    BSA VT     BO384 501', '6167,7650', '6168,0550', '3943,0550', '3943,0550', '7A-D1', '384K0Q3/4T01', '192.1.1.235', '3B2-09', '08007032359', 'S'),
(13, 'PIRASSUNUNGA -SP', 'BSA VT    PAG MD    B0512K501', 'PAG MD BSA VT 512K001', '6179,2425', '6179,6875', '3954,6875', '3954,6875', '7A-D1', '512K0Q3/4T01', '192.1.1.234', '3B2-08', '08007032359', 'S'),
(14, 'IPAMERI – GO', 'BSA VT    IPM AE    B0960K501', 'IPM AE    BSA VT    B0960K501', '6173,5875', '6174,3025', '3949,3025', '3949,3025', '7A-D1', '960K0Q3/4T01', '192.1.1.233', '3B2-07', '08007032359', 'S'),
(15, 'CRUZEIRO DO SUL - AC', 'BSA VT CZU B0030N 517', 'CZU BSA VT B0030N 516', '6039,1925', '6040,3775', '0064.1925', '0064.1925', '7A-D1', '2M048E3/4T01', '192.1.1.105', '2B4-01', '0800 7032359', 'S'),
(16, 'CRUZEIRO DO SUL - AC', 'BSA VT CZU B0030N 516 ', 'CZU BSA VT B0030N 516', '6041,5625', '6041,7475', '0066.5625', '0067.7475', '7A-D1', '2M048E3/4T01', '192.1.1.106', '2B4-02', '0800 7032359', 'S'),
(17, 'CRUZEIRO DO SUL - AC', 'BSA VT CZU B0030N 504', 'CZU BSA VT B0030N 504', '6036,8225', '6038,0075', '0061.8225', '0063.0075', '3B-D1', '2M048E3/4T01', '192.1.1.108', '2B4-04', '0800 7032359', 'S'),
(18, 'BOLOGNESE - PALMEIRAS GO - 132', 'BSA VT PGS V2F B0256 K501', 'PGS V2F   BSA VT  B0256 K501', '6178,6825', '6178,9075', '0063.9075', '0063.9075', '3B / D1', '256K0Q3/4T01', '192.1.1.132', '2B7-03', '08007032359', 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `transponder`
--

CREATE TABLE `transponder` (
  `id` int(11) NOT NULL,
  `subida` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `decida` varchar(15) CHARACTER SET utf8 NOT NULL,
  `tpdr` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `transponder`
--

INSERT INTO `transponder` (`id`, `subida`, `decida`, `tpdr`) VALUES
(1, '5866.5', '3641.5', '1AE'),
(2, '5866.5', '3641.5', '1AE'),
(3, '6185', '3960', '7A'),
(4, '6185', '3960', '7A'),
(5, '6045', '3820', '3B'),
(6, '6045', '3820', '3B');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `senha`) VALUES
(1, 'marcio', 'marcio'),
(3, 'sergio', 'sergio');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `transponder`
--
ALTER TABLE `transponder`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `transponder`
--
ALTER TABLE `transponder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Banco de dados: `condo`
--
CREATE DATABASE IF NOT EXISTS `condo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `condo`;
--
-- Banco de dados: `consdb`
--
CREATE DATABASE IF NOT EXISTS `consdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `consdb`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_carro`
--

CREATE TABLE `tbl_carro` (
  `id_carro` varchar(8) NOT NULL,
  `tbl_modelo` varchar(20) NOT NULL,
  `tbl_descricao` varchar(400) NOT NULL,
  `tbl_valor` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_carro`
--
ALTER TABLE `tbl_carro`
  ADD PRIMARY KEY (`id_carro`);
--
-- Banco de dados: `dbalem`
--
CREATE DATABASE IF NOT EXISTS `dbalem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbalem`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_animal`
--

CREATE TABLE `tb_animal` (
  `idanimal` int(6) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `cor` varchar(30) NOT NULL,
  `tamanho` varchar(30) NOT NULL,
  `sobre` text DEFAULT NULL,
  `raca` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_animal`
--

INSERT INTO `tb_animal` (`idanimal`, `nome`, `idade`, `tipo`, `cor`, `tamanho`, `sobre`, `raca`) VALUES
(1, 'dave the magical cheese wizard', '2 anos', 'gato', 'cinza e braco', 'pequeno', 'ele é magico', 'siames');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `idusuario` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` int(11) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `confsenha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_animal`
--
ALTER TABLE `tb_animal`
  ADD PRIMARY KEY (`idanimal`);

--
-- Índices para tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_animal`
--
ALTER TABLE `tb_animal`
  MODIFY `idanimal` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `idusuario` int(6) NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `gamebd`
--
CREATE DATABASE IF NOT EXISTS `gamebd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gamebd`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `cod_usuario` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `senha` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`cod_usuario`, `nome`, `senha`, `email`, `cpf`) VALUES
('[cod_usuario]', '[nome]', 0, '[email]', 0),
('[value-1]', '[value-2]', 0, '[value-4]', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`cod_usuario`);
--
-- Banco de dados: `juandb`
--
CREATE DATABASE IF NOT EXISTS `juandb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `juandb`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_carros`
--

CREATE TABLE `tbl_carros` (
  `id_carros` int(11) NOT NULL,
  `modelo` varchar(15) NOT NULL,
  `marca` varchar(25) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cor` varchar(15) NOT NULL,
  `descricao` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_carros`
--

INSERT INTO `tbl_carros` (`id_carros`, `modelo`, `marca`, `nome`, `cor`, `descricao`) VALUES
(1, 'suv', 'bmw', 'bmw x6', 'vermelho', 'O BMW X6 é um SUV cupê que combina características de um SUV com um design esportivo. Lançado em 2008, ele se destaca por sua performance potente, especialmente nas versões M, que utilizam motores V8 biturbo, oferecendo uma experiência de condução dinâmica e confortável. ⬤'),
(2, 'sedan', 'toyota', 'corola', 'vermelho', 'O Toyota Corolla é uma série de carros compactos fabricados pela Toyota, conhecida por sua confiabilidade, eficiência de combustível e acessibilidade. Atualmente, na sua 12ª geração, o Corolla é oferecido principalmente como um sedã, mas também está disponível em versões hatchback e outras configurações.'),
(3, 'sedan', 'toyota', 'corola', 'vermelho', 'O Toyota Corolla é uma série de carros compactos fabricados pela Toyota, conhecida por sua confiabilidade, eficiência de combustível e acessibilidade. Atualmente, na sua 12ª geração, o Corolla é oferecido principalmente como um sedã, mas também está disponível em versões hatchback e outras configurações.'),
(4, 'caminhote', 'toyota', 'hilux', 'azul', 'A Toyota Hilux é uma picape robusta e confiável, conhecida por sua durabilidade e desempenho em terrenos off-road. Com um motor potente e uma plataforma mundial, ela combina conforto e capacidade, tornando-se uma das picapes mais populares do mercado automotivo. ');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_carros`
--
ALTER TABLE `tbl_carros`
  ADD PRIMARY KEY (`id_carros`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_carros`
--
ALTER TABLE `tbl_carros`
  MODIFY `id_carros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Banco de dados: `lojaesportiva`
--
CREATE DATABASE IF NOT EXISTS `lojaesportiva` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lojaesportiva`;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
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
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
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
('root', '[{\"db\":\"consdb\",\"table\":\"tbl_carro\"},{\"db\":\"bsavtd\",\"table\":\"cliente\"},{\"db\":\"projeto_final_dezembro\",\"table\":\"usuario\"},{\"db\":\"projeto_final_dezembro\",\"table\":\"vendas\"},{\"db\":\"projeto_final_dezembro\",\"table\":\"produto\"},{\"db\":\"projeto_final_dezembro\",\"table\":\"carrinho\"},{\"db\":\"performance_schema\",\"table\":\"cond_instances\"},{\"db\":\"performance_schema\",\"table\":\"events_stages_history\"}]');

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
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
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
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-02-18 13:45:07', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\",\"NavigationWidth\":253}');

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
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `projetoetc`
--
CREATE DATABASE IF NOT EXISTS `projetoetc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projetoetc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alimentos`
--

CREATE TABLE `alimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` float NOT NULL,
  `categoria` int(11) NOT NULL,
  `descricao` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`) VALUES
(1, 'Prof Cristiano', 'cristiano@cristiano.com'),
(2, 'Cicrano', 'cicrano@cicrano.com'),
(3, 'Pois é ue', 'pois@poise.com'),
(7, 'Fulano', 'fulano@fulano.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alimentos`
--
ALTER TABLE `alimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alimentos`
--
ALTER TABLE `alimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Banco de dados: `projeto_final_dezembro`
--
CREATE DATABASE IF NOT EXISTS `projeto_final_dezembro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projeto_final_dezembro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `idCarrinho` int(11) NOT NULL,
  `idUsu` int(11) DEFAULT NULL,
  `idProd` int(11) DEFAULT NULL,
  `quantidade` int(11) NOT NULL DEFAULT 1,
  `nomeProd` varchar(255) NOT NULL,
  `precoProd` float DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `categoriaProd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProd` int(11) NOT NULL,
  `nomeProd` varchar(255) NOT NULL,
  `precoProd` float DEFAULT NULL,
  `qtdProd` int(11) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `categoriaProd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProd`, `nomeProd`, `precoProd`, `qtdProd`, `imagem`, `categoriaProd`) VALUES
(1, 'pokpkpk', 12, 22, 'Cobertor Manta Flannel Queen R$ 99,90.jpg', 'cama'),
(2, 'pokpkpk', 12, 20, 'Cobertor Manta Flannel R$68,90 Casal.jpg', 'cozinha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsu` int(11) NOT NULL,
  `nomeUsu` varchar(150) NOT NULL,
  `cpfUsu` varchar(14) DEFAULT NULL,
  `dtNascimentoUsu` date DEFAULT NULL,
  `telefoneWhatsApp` varchar(20) DEFAULT NULL,
  `emailUsu` varchar(150) NOT NULL,
  `senhaUsu` varchar(50) NOT NULL,
  `perfilUsu` varchar(15) DEFAULT NULL,
  `situacaoUsu` varchar(15) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `codigoValidacaoUsu` varchar(50) DEFAULT NULL,
  `expiracaoCodigoUsu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsu`, `nomeUsu`, `cpfUsu`, `dtNascimentoUsu`, `telefoneWhatsApp`, `emailUsu`, `senhaUsu`, `perfilUsu`, `situacaoUsu`, `cep`, `logradouro`, `bairro`, `cidade`, `estado`, `codigoValidacaoUsu`, `expiracaoCodigoUsu`) VALUES
(1, 'lucia', NULL, NULL, NULL, 'lucia@gmail.com', '3727c0b1d52154efd8214aa120626445', 'Administrador', 'Ativo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'lucia', NULL, NULL, NULL, 'lucia@gmail.com', 'c552c9fd6e0431e6e98ebddf5e6d4828', 'Administrador', 'Ativo', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `idVenda` int(11) NOT NULL,
  `idUsu` int(11) NOT NULL,
  `idProd` int(11) NOT NULL,
  `quantidadeVendida` int(11) NOT NULL,
  `dataVenda` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`idCarrinho`),
  ADD KEY `idUsu` (`idUsu`),
  ADD KEY `idProd` (`idProd`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProd`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsu`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`idVenda`),
  ADD KEY `idUsu` (`idUsu`),
  ADD KEY `idProd` (`idProd`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `idCarrinho` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `idVenda` int(11) NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `sport`
--
CREATE DATABASE IF NOT EXISTS `sport` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sport`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cod_usuario` int(8) NOT NULL,
  `nome_usuario` varchar(50) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `tel_usuario` int(11) NOT NULL,
  `endereco_usuario` varchar(50) NOT NULL,
  `cep_usuario` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_usuario`);
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nome_pet`
--

CREATE TABLE `nome_pet` (
  `nome_pet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Banco de dados: `testee`
--
CREATE DATABASE IF NOT EXISTS `testee` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testee`;
--
-- Banco de dados: `usuario`
--
CREATE DATABASE IF NOT EXISTS `usuario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `usuario`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_usuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome_usuario`, `email_usuario`) VALUES
(1, 'João Victor Sousa', 'jvsousa15@gmail'),
(2, 'Tadeu Ferreira', 'tferreira@gmail'),
(3, '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Banco de dados: `wbbd`
--
CREATE DATABASE IF NOT EXISTS `wbbd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wbbd`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
