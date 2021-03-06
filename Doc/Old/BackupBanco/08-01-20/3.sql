-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 08/01/2021 às 18:04
-- Versão do servidor: 8.0.21-0ubuntu0.20.04.4
-- Versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lavoura`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'Usuários', 'created', 'App\\Models\\User', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"name\": \"Winston Hanun Júnior\", \"uuid\": \"4a2668d1-d9e2-41b3-af45-1b1fd0649274\", \"email\": \"juniorhanun@fslajeado.com.br\", \"password\": \"$2y$10$92/OeNFuYEZ/RjlXbSgdQ.FYiMCnjDEFnE29qpz7zfrprTVNOJbKy\", \"created_at\": \"2020-11-26T18:59:04.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-26T18:59:04.000000Z\", \"remember_token\": null, \"current_team_id\": null, \"email_verified_at\": null, \"two_factor_secret\": null, \"profile_photo_path\": null, \"two_factor_recovery_codes\": null}}', '2020-11-27 06:59:04', '2020-11-27 06:59:04'),
(2, 'Empresas', 'created', 'App\\Models\\Tenant', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"url\": null, \"cnpj\": \"744.932.058-49\", \"logo\": null, \"nome\": \"FAZENDA SANTA MARTHA\", \"uuid\": \"7b6b2285-3619-4a0d-b762-720c93409114\", \"email\": \"juniorhanun@fslajeado.com.br\", \"status\": \"Ativa\", \"telefone\": \"(64) 3608-9558\", \"inscricao\": \"44984753\", \"created_at\": \"2020-11-26T19:15:43.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-26T19:15:43.000000Z\"}}', '2020-11-27 07:15:43', '2020-11-27 07:15:43'),
(3, 'Empresas', 'updated', 'App\\Models\\Tenant', 1, NULL, NULL, '{\"old\": {\"url\": null, \"updated_at\": \"2020-11-26T19:15:43.000000Z\"}, \"attributes\": {\"url\": \"http://fazendasantamartha.com.br\", \"updated_at\": \"2020-11-26T19:18:21.000000Z\"}}', '2020-11-27 07:18:21', '2020-11-27 07:18:21'),
(4, 'Safra', 'created', 'App\\Models\\Safra', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"SAFRINHA MILHO 19/20\", \"uuid\": \"062b8e1c-9365-4472-b00f-2de0d3706878\", \"status\": \"Ativa\", \"tenant_id\": 1, \"created_at\": \"2020-11-26T19:53:17.000000Z\", \"data_final\": null, \"deleted_at\": null, \"updated_at\": \"2020-11-26T19:53:17.000000Z\", \"data_inicio\": null}}', '2020-11-27 07:53:17', '2020-11-27 07:53:17'),
(5, 'Safra', 'updated', 'App\\Models\\Safra', 1, NULL, NULL, '{\"old\": {\"data_final\": null, \"updated_at\": \"2020-11-26T19:53:17.000000Z\", \"data_inicio\": null}, \"attributes\": {\"data_final\": \"2020-01-31T03:00:00.000000Z\", \"updated_at\": \"2020-11-26T19:54:05.000000Z\", \"data_inicio\": \"2020-01-01T03:00:00.000000Z\"}}', '2020-11-27 07:54:05', '2020-11-27 07:54:05'),
(6, 'Culturas', 'created', 'App\\Models\\Cultura', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"SOJA\", \"uuid\": \"5c020d40-72f1-46c3-b9f6-ae32c4a0be26\", \"status\": \"Ativa\", \"tenant_id\": 1, \"created_at\": \"2020-11-26T21:17:55.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-26T21:17:55.000000Z\"}}', '2020-11-27 09:17:55', '2020-11-27 09:17:55'),
(7, 'Culturas', 'created', 'App\\Models\\Cultura', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"nome\": \"MILHOS\", \"uuid\": \"76cd04ae-3d26-4707-9639-362ffb53047c\", \"status\": \"Ativa\", \"tenant_id\": 1, \"created_at\": \"2020-11-26T21:19:04.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-26T21:19:04.000000Z\"}}', '2020-11-27 09:19:04', '2020-11-27 09:19:04'),
(8, 'Culturas', 'updated', 'App\\Models\\Cultura', 2, NULL, NULL, '{\"old\": {\"nome\": \"MILHOS\", \"updated_at\": \"2020-11-26T21:19:04.000000Z\"}, \"attributes\": {\"nome\": \"MILHO\", \"updated_at\": \"2020-11-26T21:19:10.000000Z\"}}', '2020-11-27 09:19:11', '2020-11-27 09:19:11'),
(9, 'Culturas', 'created', 'App\\Models\\Cultura', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"nome\": \"MILHETO\", \"uuid\": \"6313de93-aede-4dab-87ea-31bed6e46e13\", \"status\": \"Ativa\", \"tenant_id\": 1, \"created_at\": \"2020-11-26T21:19:22.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-26T21:19:22.000000Z\"}}', '2020-11-27 09:19:23', '2020-11-27 09:19:23'),
(10, 'VariedadeCulturas', 'created', 'App\\Models\\VariedadeCultura', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"468\", \"uuid\": \"e3790427-88ff-40f8-b3d6-e3a5415c47d1\", \"ciclo\": null, \"status\": \"Ativa\", \"tenant_id\": 1, \"created_at\": \"2020-11-27T18:06:37.000000Z\", \"cultura_id\": 2, \"deleted_at\": null, \"tecnologia\": \"CONVENCIONAL\", \"updated_at\": \"2020-11-27T18:06:37.000000Z\"}}', '2020-11-28 06:06:37', '2020-11-28 06:06:37'),
(11, 'VariedadeCulturas', 'updated', 'App\\Models\\VariedadeCultura', 1, NULL, NULL, '{\"old\": {\"ciclo\": null, \"updated_at\": \"2020-11-27T18:06:37.000000Z\"}, \"attributes\": {\"ciclo\": \"5\", \"updated_at\": \"2020-11-27T18:56:23.000000Z\"}}', '2020-11-28 06:56:23', '2020-11-28 06:56:23'),
(12, 'VariedadeCulturas', 'updated', 'App\\Models\\VariedadeCultura', 1, NULL, NULL, '{\"old\": {\"ciclo\": \"5\", \"updated_at\": \"2020-11-27T18:56:23.000000Z\"}, \"attributes\": {\"ciclo\": null, \"updated_at\": \"2020-11-27T18:56:32.000000Z\"}}', '2020-11-28 06:56:32', '2020-11-28 06:56:32'),
(13, 'Proprietarios', 'updated', 'App\\Models\\Proprietario', 28, NULL, NULL, '{\"old\": {\"cep\": null, \"cidade\": null, \"estado\": null, \"updated_at\": \"2020-11-25T22:55:08.000000Z\", \"nome_fantasia\": \"JOAQUIM TEIXEIRA\"}, \"attributes\": {\"cep\": \"75570-000\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"updated_at\": \"2020-11-27T20:06:16.000000Z\", \"nome_fantasia\": \"Winston Hanun Júnior\"}}', '2020-11-28 08:06:16', '2020-11-28 08:06:16'),
(14, 'Proprietarios', 'updated', 'App\\Models\\Proprietario', 28, NULL, NULL, '{\"old\": {\"cep\": \"75570-000\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"updated_at\": \"2020-11-27T20:06:16.000000Z\", \"nome_fantasia\": \"Winston Hanun Júnior\"}, \"attributes\": {\"cep\": null, \"cidade\": null, \"estado\": null, \"updated_at\": \"2020-11-27T20:06:39.000000Z\", \"nome_fantasia\": \"JOAQUIM TEIXEIRA\"}}', '2020-11-28 08:06:39', '2020-11-28 08:06:39'),
(15, 'Produtores', 'created', 'App\\Models\\Produtor', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"cep\": null, \"tipo\": \"Física\", \"uuid\": \"2299dee0-bd4d-4c26-a492-c7310a69be87\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"celular\": null, \"cpf_cnpj\": \"744.932.058-49\", \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"abreviacao\": \"PRT\", \"created_at\": \"2020-11-27T20:25:54.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-27T20:25:54.000000Z\", \"complemento\": null, \"estado_civel\": \"Casado(a)\", \"naturalidade\": null, \"razao_social\": \"PAULO ROBERTO TITOTO\", \"nome_fantasia\": \"PAULO ROBERTO TITOTO\", \"rg_inscriacao\": \"4.498.475-3\", \"nascionalidade\": null, \"tipo_pagamento\": \"Depósito\", \"data_nascimento\": \"1950-02-25T02:00:00.000000Z\"}}', '2020-11-28 08:25:54', '2020-11-28 08:25:54'),
(16, 'Produtores', 'updated', 'App\\Models\\Produtor', 1, NULL, NULL, '{\"old\": {\"telefone\": null, \"updated_at\": \"2020-11-27T20:25:54.000000Z\"}, \"attributes\": {\"telefone\": \"(64) 3608-9558\", \"updated_at\": \"2020-11-27T20:26:13.000000Z\"}}', '2020-11-28 08:26:13', '2020-11-28 08:26:13'),
(17, 'Produtores', 'created', 'App\\Models\\Produtor', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"cep\": null, \"tipo\": \"Física\", \"uuid\": \"be529b83-c887-4acd-9183-abc05f9d40cc\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"celular\": null, \"cpf_cnpj\": \"273.596.528-71\", \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"abreviacao\": \"LNT\", \"created_at\": \"2020-11-27T20:35:03.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-27T20:35:03.000000Z\", \"complemento\": null, \"estado_civel\": \"Casado(a)\", \"naturalidade\": null, \"razao_social\": \"LEONARDO NAVES TITOTO\", \"nome_fantasia\": \"LEONARDO NAVES TITOTO\", \"rg_inscriacao\": \"29.090.476-6\", \"nascionalidade\": null, \"tipo_pagamento\": \"Depósito\", \"data_nascimento\": \"1978-09-14T03:00:00.000000Z\"}}', '2020-11-28 08:35:03', '2020-11-28 08:35:03'),
(18, 'Usuários', 'updated', 'App\\Models\\User', 1, NULL, NULL, '{\"old\": {\"remember_token\": null}, \"attributes\": {\"remember_token\": \"DXjfICHmwqHmClHdZVP7VJeanqwKS7QiMVXEJpM8PrWs8bHdbBjkCCAEkKB0\"}}', '2020-11-28 21:55:34', '2020-11-28 21:55:34'),
(19, 'Fazendas', 'created', 'App\\Models\\Fazenda', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"cep\": null, \"nome\": \"FAZENDA SÃO JUDAS TADEU\", \"uuid\": \"346aebd3-cdde-4d9f-92f6-d1f539617760\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": 2000, \"created_at\": \"2020-11-28T11:14:23.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T11:14:23.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 4, \"inscricao_estadual\": \"11.292.306-2\"}}', '2020-11-28 23:14:23', '2020-11-28 23:14:23'),
(20, 'Fazendas', 'updated', 'App\\Models\\Fazenda', 1, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-11-28T11:14:23.000000Z\", \"produtor_id\": 2}, \"attributes\": {\"updated_at\": \"2020-11-28T11:14:36.000000Z\", \"produtor_id\": 1}}', '2020-11-28 23:14:36', '2020-11-28 23:14:36'),
(21, 'Fazendas', 'updated', 'App\\Models\\Fazenda', 1, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-11-28T11:14:36.000000Z\", \"produtor_id\": 1}, \"attributes\": {\"updated_at\": \"2020-11-28T11:14:43.000000Z\", \"produtor_id\": 2}}', '2020-11-28 23:14:43', '2020-11-28 23:14:43'),
(22, 'Fazendas', 'updated', 'App\\Models\\Fazenda', 1, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-11-28T11:14:43.000000Z\", \"produtor_id\": 2}, \"attributes\": {\"updated_at\": \"2020-11-28T13:19:00.000000Z\", \"produtor_id\": 1}}', '2020-11-29 01:19:00', '2020-11-29 01:19:00'),
(23, 'Fazendas', 'updated', 'App\\Models\\Fazenda', 1, NULL, NULL, '{\"old\": {\"area_total\": 2000, \"updated_at\": \"2020-11-28T13:19:00.000000Z\"}, \"attributes\": {\"area_total\": 12.58, \"updated_at\": \"2020-11-28T13:52:05.000000Z\"}}', '2020-11-29 01:52:05', '2020-11-29 01:52:05'),
(24, 'Fazendas', 'updated', 'App\\Models\\Fazenda', 1, NULL, NULL, '{\"old\": {\"area_total\": 12.58, \"updated_at\": \"2020-11-28T13:52:05.000000Z\", \"produtor_id\": 1}, \"attributes\": {\"area_total\": 1258, \"updated_at\": \"2020-11-28T13:52:16.000000Z\", \"produtor_id\": 2}}', '2020-11-29 01:52:16', '2020-11-29 01:52:16'),
(25, 'Fazendas', 'updated', 'App\\Models\\Fazenda', 1, NULL, NULL, '{\"old\": {\"area_total\": 1258, \"updated_at\": \"2020-11-28T13:52:16.000000Z\"}, \"attributes\": {\"area_total\": 12.58, \"updated_at\": \"2020-11-28T13:52:35.000000Z\"}}', '2020-11-29 01:52:35', '2020-11-29 01:52:35'),
(26, 'Fazendas', 'updated', 'App\\Models\\Fazenda', 1, NULL, NULL, '{\"old\": {\"area_total\": 12.58, \"updated_at\": \"2020-11-28T13:52:35.000000Z\"}, \"attributes\": {\"area_total\": null, \"updated_at\": \"2020-11-28T13:56:30.000000Z\"}}', '2020-11-29 01:56:30', '2020-11-29 01:56:30'),
(27, 'Fazendas', 'created', 'App\\Models\\Fazenda', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"cep\": null, \"nome\": \"FAZENDA SÃO JOSE (PAULO LEONARDO)\", \"uuid\": \"a2e5a332-b588-4770-bbf2-4e72f1b51070\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T14:03:31.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T14:03:31.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 1, \"inscricao_estadual\": \"11.369.864-0\"}}', '2020-11-29 02:03:31', '2020-11-29 02:03:31'),
(28, 'Fazendas', 'created', 'App\\Models\\Fazenda', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"cep\": null, \"nome\": \"FAZENDA NSA SRA APARECIDA\", \"uuid\": \"aac43180-6a75-4114-b9b3-b96f8010ab14\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T14:04:34.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T14:04:34.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 28, \"inscricao_estadual\": \"11.345.579-8\"}}', '2020-11-29 02:04:34', '2020-11-29 02:04:34'),
(29, 'Fazendas', 'created', 'App\\Models\\Fazenda', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"cep\": null, \"nome\": \"FAZENDA CANADÁ\", \"uuid\": \"6ad51970-9f1a-4b38-9d19-a31bbfaf6285\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T14:05:47.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T14:05:47.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 4, \"inscricao_estadual\": \"11.426.896-7\"}}', '2020-11-29 02:05:47', '2020-11-29 02:05:47'),
(30, 'Fazendas', 'created', 'App\\Models\\Fazenda', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"cep\": null, \"nome\": \"FAZENDA LAMBARI (CARLOS CREPALDI)\", \"uuid\": \"1191190e-81e1-4ef0-a9d9-7e0c765f889b\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T14:06:22.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T14:06:22.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 12, \"inscricao_estadual\": \"11.470.821-5\"}}', '2020-11-29 02:06:23', '2020-11-29 02:06:23'),
(31, 'Fazendas', 'created', 'App\\Models\\Fazenda', 6, NULL, NULL, '{\"attributes\": {\"id\": 6, \"cep\": null, \"nome\": \"FAZENDA SÃO JOSE (PAULO TITOTO)\", \"uuid\": \"4633d554-fdf2-4d59-9cab-8c522c8e3a5c\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T15:23:50.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:23:50.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 1, \"inscricao_estadual\": \"11.416.858-0\"}}', '2020-11-29 03:23:50', '2020-11-29 03:23:50'),
(32, 'Fazendas', 'created', 'App\\Models\\Fazenda', 7, NULL, NULL, '{\"attributes\": {\"id\": 7, \"cep\": null, \"nome\": \"FAZENDA LAMBARI (JUSSARA KEDHI)\", \"uuid\": \"5341437e-1b72-4a4c-939d-35bd0e934999\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T15:24:29.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:24:29.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 11, \"inscricao_estadual\": \"11.302.915-2\"}}', '2020-11-29 03:24:29', '2020-11-29 03:24:29'),
(33, 'Fazendas', 'created', 'App\\Models\\Fazenda', 8, NULL, NULL, '{\"attributes\": {\"id\": 8, \"cep\": null, \"nome\": \"FAZENDA LAMBARI (CECILIA KEDHI)\", \"uuid\": \"46ee8b26-fb11-464c-b8fc-5b56140837e2\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T15:25:15.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:25:15.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 13, \"inscricao_estadual\": \"11.470.820-7\"}}', '2020-11-29 03:25:15', '2020-11-29 03:25:15'),
(34, 'Fazendas', 'created', 'App\\Models\\Fazenda', 9, NULL, NULL, '{\"attributes\": {\"id\": 9, \"cep\": null, \"nome\": \"FAZENDA SÃO JOÃO II (ALDO JOÃO)\", \"uuid\": \"c78bdbdc-5cd8-43a3-9082-d02d5fc8f608\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T15:26:26.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:26:26.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 5, \"inscricao_estadual\": \"11.393.923-0\"}}', '2020-11-29 03:26:27', '2020-11-29 03:26:27'),
(35, 'Proprietarios', 'created', 'App\\Models\\Proprietario', 29, NULL, NULL, '{\"attributes\": {\"id\": 29, \"cep\": null, \"tipo\": \"Física\", \"uuid\": \"f305b70d-19aa-4212-8e62-f67c605293e4\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"abreviacao\": \"DEL\", \"created_at\": \"2020-11-28T15:29:54.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:29:54.000000Z\", \"complemento\": null, \"estado_civel\": \"Solteiro(a)\", \"naturalidade\": null, \"razao_social\": \"DELCIDES\", \"nome_fantasia\": \"DELCIDES\", \"rg_inscriacao\": null, \"nascionalidade\": null, \"tipo_pagamento\": \"Depósito\", \"data_nascimento\": null}}', '2020-11-29 03:29:54', '2020-11-29 03:29:54'),
(36, 'Fazendas', 'created', 'App\\Models\\Fazenda', 10, NULL, NULL, '{\"attributes\": {\"id\": 10, \"cep\": null, \"nome\": \"FAZENDA LAMBARI (DELCIDES)\", \"uuid\": \"e17f0a63-4408-40d5-b38b-bac6675d8d1f\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T15:30:38.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:30:38.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 29, \"inscricao_estadual\": \"11.359.199-3\"}}', '2020-11-29 03:30:38', '2020-11-29 03:30:38'),
(37, 'Proprietarios', 'created', 'App\\Models\\Proprietario', 30, NULL, NULL, '{\"attributes\": {\"id\": 30, \"cep\": null, \"tipo\": \"Física\", \"uuid\": \"3e5ba5cb-b779-411d-9e47-90bdd119174f\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"abreviacao\": \"JNN\", \"created_at\": \"2020-11-28T15:33:53.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:33:53.000000Z\", \"complemento\": null, \"estado_civel\": \"Solteiro(a)\", \"naturalidade\": null, \"razao_social\": \"JOÃO NAVES NETO\", \"nome_fantasia\": \"JOÃO NAVES NETO\", \"rg_inscriacao\": null, \"nascionalidade\": null, \"tipo_pagamento\": \"Depósito\", \"data_nascimento\": null}}', '2020-11-29 03:33:53', '2020-11-29 03:33:53'),
(38, 'Fazendas', 'created', 'App\\Models\\Fazenda', 11, NULL, NULL, '{\"attributes\": {\"id\": 11, \"cep\": null, \"nome\": \"FAZENDA SANTA PAULA (JOÃO NAVES)\", \"uuid\": \"91e50aa7-eacb-4bff-81c3-ff7ea80ff3e1\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T15:34:43.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:34:43.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 30, \"inscricao_estadual\": \"11.477.485-4\"}}', '2020-11-29 03:34:43', '2020-11-29 03:34:43'),
(39, 'Fazendas', 'created', 'App\\Models\\Fazenda', 12, NULL, NULL, '{\"attributes\": {\"id\": 12, \"cep\": null, \"nome\": \"FAZENDA LAMBARI (BEATRIZ KEDHI)\", \"uuid\": \"543fd9e5-9967-4baf-8766-556a565f3ffb\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T15:36:04.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:36:04.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 14, \"inscricao_estadual\": \"11.467.859-6\"}}', '2020-11-29 03:36:04', '2020-11-29 03:36:04'),
(40, 'Proprietarios', 'updated', 'App\\Models\\Proprietario', 28, NULL, NULL, '{\"old\": {\"abreviacao\": \"JTE\", \"updated_at\": \"2020-11-27T20:06:39.000000Z\", \"razao_social\": \"JOAQUIM TEIXEIRA\", \"nome_fantasia\": \"JOAQUIM TEIXEIRA\"}, \"attributes\": {\"abreviacao\": \"JMT\", \"updated_at\": \"2020-11-28T15:39:03.000000Z\", \"razao_social\": \"JOAQUIM MARTINS TEIXEIRA JÚNIOR\", \"nome_fantasia\": \"JOAQUIM MARTINS TEIXEIRA JÚNIOR\"}}', '2020-11-29 03:39:03', '2020-11-29 03:39:03'),
(41, 'Proprietarios', 'created', 'App\\Models\\Proprietario', 31, NULL, NULL, '{\"attributes\": {\"id\": 31, \"cep\": null, \"tipo\": \"Física\", \"uuid\": \"36cb0d0f-b389-48a6-af08-7e24c86fb8e2\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"abreviacao\": \"ZEL\", \"created_at\": \"2020-11-28T15:41:06.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:41:06.000000Z\", \"complemento\": null, \"estado_civel\": \"Solteiro(a)\", \"naturalidade\": null, \"razao_social\": \"ZELIM\", \"nome_fantasia\": \"ZELIM\", \"rg_inscriacao\": null, \"nascionalidade\": null, \"tipo_pagamento\": \"Transferência\", \"data_nascimento\": null}}', '2020-11-29 03:41:06', '2020-11-29 03:41:06'),
(42, 'Fazendas', 'created', 'App\\Models\\Fazenda', 13, NULL, NULL, '{\"attributes\": {\"id\": 13, \"cep\": null, \"nome\": \"FAZENDA DIVINO PAI ETERNO (ZELIM)\", \"uuid\": \"24190386-15bb-4a20-84f8-24d5c45072c3\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T15:41:43.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:41:43.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 6, \"inscricao_estadual\": \"11.477.486-2\"}}', '2020-11-29 03:41:43', '2020-11-29 03:41:43'),
(43, 'Fazendas', 'created', 'App\\Models\\Fazenda', 14, NULL, NULL, '{\"attributes\": {\"id\": 14, \"cep\": null, \"nome\": \"FAZENDA SANTA MARTHA (LEONARDO)\", \"uuid\": \"1fc7b237-d26a-41a6-b103-0e113ec8bd71\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T15:42:29.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:42:29.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 2, \"inscricao_estadual\": \"11.490.524-0\"}}', '2020-11-29 03:42:29', '2020-11-29 03:42:29'),
(44, 'Fazendas', 'created', 'App\\Models\\Fazenda', 15, NULL, NULL, '{\"attributes\": {\"id\": 15, \"cep\": null, \"nome\": \"FAZENDA PADRE NOSSO (SEBAST. RESENDE)\", \"uuid\": \"cf8db78a-5f78-422b-be1b-c8d213bba081\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T15:43:33.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T15:43:33.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 19, \"inscricao_estadual\": \"11.420.116-1\"}}', '2020-11-29 03:43:33', '2020-11-29 03:43:33'),
(45, 'Fazendas', 'created', 'App\\Models\\Fazenda', 16, NULL, NULL, '{\"attributes\": {\"id\": 16, \"cep\": null, \"nome\": \"FAZENDA SANTA MARTHA (DONA MARTHA)\", \"uuid\": \"d2341ea1-c0f1-42d8-8a31-92e81d8cb33e\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:31:57.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:31:57.000000Z\", \"complemento\": null, \"produtor_id\": 2, \"nome_gerente\": null, \"proprietario_id\": 3, \"inscricao_estadual\": \"11.418.102-0\"}}', '2020-11-29 04:31:57', '2020-11-29 04:31:57'),
(46, 'Fazendas', 'created', 'App\\Models\\Fazenda', 17, NULL, NULL, '{\"attributes\": {\"id\": 17, \"cep\": null, \"nome\": \"FAZENDA LAMBARI (ADEVALDES P. CARRUO)\", \"uuid\": \"2802f6e6-adee-4713-8203-4b17523ab2bd\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:33:30.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:33:30.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 25, \"inscricao_estadual\": \"11.333.833-3\"}}', '2020-11-29 04:33:30', '2020-11-29 04:33:30'),
(47, 'Fazendas', 'created', 'App\\Models\\Fazenda', 18, NULL, NULL, '{\"attributes\": {\"id\": 18, \"cep\": null, \"nome\": \"FAZENDA C RIO DOS BOIS (FERNANDO)\", \"uuid\": \"03c64c24-91ed-454d-84f7-397dc8db5dd6\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:34:08.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:34:08.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 15, \"inscricao_estadual\": \"11.266.037-1\"}}', '2020-11-29 04:34:08', '2020-11-29 04:34:08'),
(48, 'Fazendas', 'updated', 'App\\Models\\Fazenda', 16, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-11-28T16:31:57.000000Z\", \"produtor_id\": 2}, \"attributes\": {\"updated_at\": \"2020-11-28T16:34:34.000000Z\", \"produtor_id\": 1}}', '2020-11-29 04:34:34', '2020-11-29 04:34:34'),
(49, 'Proprietarios', 'updated', 'App\\Models\\Proprietario', 31, NULL, NULL, '{\"old\": {\"abreviacao\": \"ZEL\", \"updated_at\": \"2020-11-28T15:41:06.000000Z\", \"razao_social\": \"ZELIM\", \"nome_fantasia\": \"ZELIM\"}, \"attributes\": {\"abreviacao\": \"CSC\", \"updated_at\": \"2020-11-28T16:35:34.000000Z\", \"razao_social\": \"CASSIANO COSTA\", \"nome_fantasia\": \"CASSIANO COSTA\"}}', '2020-11-29 04:35:34', '2020-11-29 04:35:34'),
(50, 'Fazendas', 'created', 'App\\Models\\Fazenda', 19, NULL, NULL, '{\"attributes\": {\"id\": 19, \"cep\": null, \"nome\": \"FAZENDA LAMBARI (CASSIANO COSTA)\", \"uuid\": \"c1cc6d67-0f42-4887-88c7-f169f57d5f87\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:36:17.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:36:17.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 31, \"inscricao_estadual\": \"11.335.051-1\"}}', '2020-11-29 04:36:18', '2020-11-29 04:36:18'),
(51, 'Fazendas', 'created', 'App\\Models\\Fazenda', 20, NULL, NULL, '{\"attributes\": {\"id\": 20, \"cep\": null, \"nome\": \"FAZENDA BARRA BONITA (JOÃO FRANCISCO)\", \"uuid\": \"f52b98fd-b01b-48f4-970c-d545775fe6e8\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:37:25.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:37:25.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 26, \"inscricao_estadual\": \"11.321.583-5\"}}', '2020-11-29 04:37:25', '2020-11-29 04:37:25'),
(52, 'Proprietarios', 'created', 'App\\Models\\Proprietario', 32, NULL, NULL, '{\"attributes\": {\"id\": 32, \"cep\": null, \"tipo\": \"Física\", \"uuid\": \"31465a1e-e3fa-4b0e-9cb9-3e20d374ccf8\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"abreviacao\": \"ARE\", \"created_at\": \"2020-11-28T16:38:33.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:38:33.000000Z\", \"complemento\": null, \"estado_civel\": \"Solteiro(a)\", \"naturalidade\": null, \"razao_social\": \"AZARIAS RESENDE\", \"nome_fantasia\": \"AZARIAS RESENDE\", \"rg_inscriacao\": null, \"nascionalidade\": null, \"tipo_pagamento\": \"Transferência\", \"data_nascimento\": null}}', '2020-11-29 04:38:33', '2020-11-29 04:38:33'),
(53, 'Fazendas', 'created', 'App\\Models\\Fazenda', 21, NULL, NULL, '{\"attributes\": {\"id\": 21, \"cep\": null, \"nome\": \"FAZENDA B.J STA BARBARA (AZARIAS REZ.)\", \"uuid\": \"98216241-bc13-4cd6-bfa0-e741f0d98cfa\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:39:26.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:39:26.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 32, \"inscricao_estadual\": \"11.420.398-9\"}}', '2020-11-29 04:39:26', '2020-11-29 04:39:26'),
(54, 'Fazendas', 'created', 'App\\Models\\Fazenda', 22, NULL, NULL, '{\"attributes\": {\"id\": 22, \"cep\": null, \"nome\": \"FAZENDA LAMBARI (ADILSON BATISTA)\", \"uuid\": \"a6ad5bf0-c782-4dbe-9a1d-f2824a5c2f62\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:40:09.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:40:09.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 16, \"inscricao_estadual\": \"11.321.765-0\"}}', '2020-11-29 04:40:09', '2020-11-29 04:40:09'),
(55, 'Fazendas', 'created', 'App\\Models\\Fazenda', 23, NULL, NULL, '{\"attributes\": {\"id\": 23, \"cep\": null, \"nome\": \"FAZENDA BOM SUCESSO (GRACIELLE)\", \"uuid\": \"91347e5c-826c-40c5-a2fd-8005cab419a5\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:40:54.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:40:54.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 7, \"inscricao_estadual\": \"11.322.151-7\"}}', '2020-11-29 04:40:54', '2020-11-29 04:40:54'),
(56, 'Fazendas', 'created', 'App\\Models\\Fazenda', 24, NULL, NULL, '{\"attributes\": {\"id\": 24, \"cep\": null, \"nome\": \"FAZENDA BOM SUCESSO (PATRICIA)\", \"uuid\": \"bf4b1bf3-be87-47fa-bfcb-63863a3b268d\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:41:43.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:41:43.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 8, \"inscricao_estadual\": \"11.322.149-5\"}}', '2020-11-29 04:41:43', '2020-11-29 04:41:43'),
(57, 'Proprietarios', 'created', 'App\\Models\\Proprietario', 33, NULL, NULL, '{\"attributes\": {\"id\": 33, \"cep\": null, \"tipo\": \"Física\", \"uuid\": \"e71acbe7-f4ef-4178-9586-2b314649d4f0\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"abreviacao\": \"OST\", \"created_at\": \"2020-11-28T16:42:20.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:42:20.000000Z\", \"complemento\": null, \"estado_civel\": \"Solteiro(a)\", \"naturalidade\": null, \"razao_social\": \"OSCAR TOMÊ\", \"nome_fantasia\": \"OSCAR TOMÊ\", \"rg_inscriacao\": null, \"nascionalidade\": null, \"tipo_pagamento\": \"Transferência\", \"data_nascimento\": null}}', '2020-11-29 04:42:20', '2020-11-29 04:42:20'),
(58, 'Fazendas', 'created', 'App\\Models\\Fazenda', 25, NULL, NULL, '{\"attributes\": {\"id\": 25, \"cep\": null, \"nome\": \"FAZENDA STA BARBARA(OSCAR TOMÊ)\", \"uuid\": \"1c337b9e-1d20-49e2-8f55-605ef4bfcda9\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:43:22.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:43:22.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 33, \"inscricao_estadual\": \"11.359.116-0\"}}', '2020-11-29 04:43:22', '2020-11-29 04:43:22'),
(59, 'Fazendas', 'created', 'App\\Models\\Fazenda', 26, NULL, NULL, '{\"attributes\": {\"id\": 26, \"cep\": null, \"nome\": \"FAZENDA LAGOA DA PATA(ADVALDES P. JR)\", \"uuid\": \"d83489aa-3396-4618-a895-93e2386fb036\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:44:11.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:44:11.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 25, \"inscricao_estadual\": \"11.333.927-5\"}}', '2020-11-29 04:44:11', '2020-11-29 04:44:11'),
(60, 'Fazendas', 'created', 'App\\Models\\Fazenda', 27, NULL, NULL, '{\"attributes\": {\"id\": 27, \"cep\": null, \"nome\": \"FAZENDA BOM SUCESSO (EURIPEDES)\", \"uuid\": \"3c7a5e62-0d5b-4996-b999-36b584acd507\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:45:09.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:45:09.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 9, \"inscricao_estadual\": \"11.322.099-5\"}}', '2020-11-29 04:45:09', '2020-11-29 04:45:09'),
(61, 'Fazendas', 'created', 'App\\Models\\Fazenda', 28, NULL, NULL, '{\"attributes\": {\"id\": 28, \"cep\": null, \"nome\": \"FAZENDA NOVA GRANADA (JOÃO FRANCISCO)\", \"uuid\": \"e25567a0-ab0c-4034-8a2f-9f5a8d2c98a0\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:45:55.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:45:55.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 26, \"inscricao_estadual\": \"11.365.605-0\"}}', '2020-11-29 04:45:55', '2020-11-29 04:45:55'),
(62, 'Fazendas', 'created', 'App\\Models\\Fazenda', 29, NULL, NULL, '{\"attributes\": {\"id\": 29, \"cep\": null, \"nome\": \"FAZENDA BEIRA RIO (PAULO TITOTO)\", \"uuid\": \"e8ea8ecc-83f6-4487-8a9f-2b7f73284290\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:46:42.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:46:42.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 1, \"inscricao_estadual\": \"11.398.454-5\"}}', '2020-11-29 04:46:42', '2020-11-29 04:46:42'),
(63, 'Fazendas', 'created', 'App\\Models\\Fazenda', 30, NULL, NULL, '{\"attributes\": {\"id\": 30, \"cep\": null, \"nome\": \"FAZENDA LAMBARI (MARTA COSTA)\", \"uuid\": \"186d1874-0813-469b-8251-53b60e6e2bb1\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:47:22.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:47:22.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 17, \"inscricao_estadual\": \"11.335.080-5\"}}', '2020-11-29 04:47:22', '2020-11-29 04:47:22'),
(64, 'Fazendas', 'created', 'App\\Models\\Fazenda', 31, NULL, NULL, '{\"attributes\": {\"id\": 31, \"cep\": null, \"nome\": \"FAZENDA STA BARBARA(HELIO MARTINS)\", \"uuid\": \"375f1c70-f84a-46cf-8daa-31117eccc2ff\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:48:05.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:48:05.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 27, \"inscricao_estadual\": \"11.403.547-4\"}}', '2020-11-29 04:48:05', '2020-11-29 04:48:05'),
(65, 'Fazendas', 'created', 'App\\Models\\Fazenda', 32, NULL, NULL, '{\"attributes\": {\"id\": 32, \"cep\": null, \"nome\": \"FAZENDA BARRA GRANDE (PAULO TITOTO )\", \"uuid\": \"b8969adb-0c9a-4c81-b034-e5f1be1a1fd9\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:48:37.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:48:37.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 1, \"inscricao_estadual\": \"11.270.063-2\"}}', '2020-11-29 04:48:37', '2020-11-29 04:48:37'),
(66, 'Fazendas', 'created', 'App\\Models\\Fazenda', 33, NULL, NULL, '{\"attributes\": {\"id\": 33, \"cep\": null, \"nome\": \"FAZENDA S J DA CARAIBA (RENATINHO)\", \"uuid\": \"a589dad6-5897-4c66-b61d-1d00d7201054\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:49:08.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:49:08.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 10, \"inscricao_estadual\": \"11.293.630-0\"}}', '2020-11-29 04:49:08', '2020-11-29 04:49:08'),
(67, 'Fazendas', 'created', 'App\\Models\\Fazenda', 34, NULL, NULL, '{\"attributes\": {\"id\": 34, \"cep\": null, \"nome\": \"FAZENDA SÃO JOSE (PAULO PAULO)\", \"uuid\": \"9bc333aa-e7fd-4235-9077-7f2e67d2e5de\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T16:53:43.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T16:53:43.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 1, \"inscricao_estadual\": \"11.416.740-0\"}}', '2020-11-29 04:53:43', '2020-11-29 04:53:43'),
(68, 'Fazendas', 'updated', 'App\\Models\\Fazenda', 2, NULL, NULL, '{\"old\": {\"nome\": \"FAZENDA SÃO JOSE (PAULO LEONARDO)\", \"updated_at\": \"2020-11-28T14:03:31.000000Z\"}, \"attributes\": {\"nome\": \"FAZENDA SÃO JOÃO (PAULO LEONARDO)\", \"updated_at\": \"2020-11-28T16:54:54.000000Z\"}}', '2020-11-29 04:54:54', '2020-11-29 04:54:54'),
(69, 'Fazendas', 'updated', 'App\\Models\\Fazenda', 6, NULL, NULL, '{\"old\": {\"nome\": \"FAZENDA SÃO JOSE (PAULO TITOTO)\", \"updated_at\": \"2020-11-28T15:23:50.000000Z\"}, \"attributes\": {\"nome\": \"FAZENDA SÃO JOSE (PAULO LEONARDO)\", \"updated_at\": \"2020-11-28T16:55:41.000000Z\"}}', '2020-11-29 04:55:41', '2020-11-29 04:55:41'),
(70, 'Fazendas', 'created', 'App\\Models\\Fazenda', 35, NULL, NULL, '{\"attributes\": {\"id\": 35, \"cep\": null, \"nome\": \"FAZENDA CARANHA (MARISA C. ANDRADE)\", \"uuid\": \"04ff6250-ef12-4d1f-a071-fc94964852b0\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T17:04:18.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T17:04:18.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 24, \"inscricao_estadual\": \"11.458.239-4\"}}', '2020-11-29 05:04:18', '2020-11-29 05:04:18'),
(71, 'Fazendas', 'created', 'App\\Models\\Fazenda', 36, NULL, NULL, '{\"attributes\": {\"id\": 36, \"cep\": null, \"nome\": \"FAZENDA PADRE NOSSO ( IVONDES )\", \"uuid\": \"12477ae2-f768-40a3-8f76-0d1f91c7bcc6\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T17:04:47.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T17:04:47.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 20, \"inscricao_estadual\": \"11.420.103-0\"}}', '2020-11-29 05:04:48', '2020-11-29 05:04:48'),
(72, 'Fazendas', 'created', 'App\\Models\\Fazenda', 37, NULL, NULL, '{\"attributes\": {\"id\": 37, \"cep\": null, \"nome\": \"FAZENDA SANTA BARBARA(DIVANILDA)\", \"uuid\": \"696034d4-81c7-425e-9114-070ccf73c67f\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T17:05:42.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T17:05:42.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 23, \"inscricao_estadual\": \"11.492.709-0\"}}', '2020-11-29 05:05:42', '2020-11-29 05:05:42'),
(73, 'Fazendas', 'created', 'App\\Models\\Fazenda', 38, NULL, NULL, '{\"attributes\": {\"id\": 38, \"cep\": null, \"nome\": \"FAZENDA CORREGO DO MULADO(IVAN VASC)\", \"uuid\": \"edb594e2-09f5-4143-90c2-ae664332a867\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T17:06:13.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T17:06:13.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 22, \"inscricao_estadual\": \"11.457.557-1\"}}', '2020-11-29 05:06:13', '2020-11-29 05:06:13'),
(74, 'Fazendas', 'created', 'App\\Models\\Fazenda', 39, NULL, NULL, '{\"attributes\": {\"id\": 39, \"cep\": null, \"nome\": \"FAZENDA JOÃO PEDRO(DIVANILDA)\", \"uuid\": \"49e8deb1-6913-49f4-ac8b-001f934958de\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-28T17:06:47.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-28T17:06:47.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 23, \"inscricao_estadual\": \"11.492.710-3\"}}', '2020-11-29 05:06:47', '2020-11-29 05:06:47'),
(75, 'Talhao', 'created', 'App\\Models\\Talhao', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"T-01 & T-14\", \"uuid\": \"c5b8eaa5-b97b-4c14-9523-ce4f07cd1821\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 228.55, \"created_at\": \"2020-11-30T11:44:09.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T11:44:09.000000Z\"}}', '2020-11-30 23:44:09', '2020-11-30 23:44:09'),
(76, 'Talhao', 'updated', 'App\\Models\\Talhao', 1, NULL, NULL, '{\"old\": {\"area_total\": 228.55, \"updated_at\": \"2020-11-30T11:44:09.000000Z\"}, \"attributes\": {\"area_total\": 2285.55, \"updated_at\": \"2020-11-30T11:46:59.000000Z\"}}', '2020-11-30 23:46:59', '2020-11-30 23:46:59'),
(77, 'Talhao', 'updated', 'App\\Models\\Talhao', 1, NULL, NULL, '{\"old\": {\"area_total\": 2285.55, \"updated_at\": \"2020-11-30T11:46:59.000000Z\"}, \"attributes\": {\"area_total\": 228.55, \"updated_at\": \"2020-11-30T11:47:12.000000Z\"}}', '2020-11-30 23:47:12', '2020-11-30 23:47:12'),
(78, 'Safra', 'created', 'App\\Models\\Safra', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"nome\": \"SAFRA SOJA 20/21\", \"uuid\": \"27d68c3d-154e-49c1-a448-73170df41da5\", \"status\": \"Ativa\", \"tenant_id\": 1, \"created_at\": \"2020-11-30T12:44:55.000000Z\", \"data_final\": null, \"deleted_at\": null, \"updated_at\": \"2020-11-30T12:44:55.000000Z\", \"data_inicio\": null}}', '2020-12-01 00:44:55', '2020-12-01 00:44:55'),
(79, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"uuid\": \"86b33e4a-d5f9-41d2-b428-aff3346a2ff7\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 1, \"tenant_id\": 1, \"created_at\": \"2020-11-30T15:33:15.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T15:33:15.000000Z\", \"observacoes\": null, \"area_plantada\": 228.55, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-31T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 03:33:15', '2020-12-01 03:33:15'),
(80, 'Talhao', 'created', 'App\\Models\\Talhao', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"nome\": \"T-02\", \"uuid\": \"da008329-8033-4150-ab9c-f477e6c345d6\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 221.28, \"created_at\": \"2020-11-30T15:42:44.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T15:42:44.000000Z\"}}', '2020-12-01 03:42:44', '2020-12-01 03:42:44'),
(81, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"uuid\": \"5b74b29e-3905-44ad-9d32-a0d7291e317a\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 2, \"tenant_id\": 1, \"created_at\": \"2020-11-30T15:43:59.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T15:43:59.000000Z\", \"observacoes\": null, \"area_plantada\": 221.28, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-31T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 03:43:59', '2020-12-01 03:43:59'),
(82, 'Talhao', 'created', 'App\\Models\\Talhao', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"nome\": \"T-03\", \"uuid\": \"5a4ce627-6c69-485d-8e5d-bf6201fea35a\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 233.54, \"created_at\": \"2020-11-30T15:44:43.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T15:44:43.000000Z\"}}', '2020-12-01 03:44:43', '2020-12-01 03:44:43'),
(83, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"uuid\": \"c5e1f7c5-e964-4cd4-95e9-38942ddcbc45\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 3, \"tenant_id\": 1, \"created_at\": \"2020-11-30T15:45:17.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T15:45:17.000000Z\", \"observacoes\": null, \"area_plantada\": 233.54, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 15}}', '2020-12-01 03:45:17', '2020-12-01 03:45:17'),
(84, 'Talhao', 'created', 'App\\Models\\Talhao', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"nome\": \"T-04\", \"uuid\": \"69970579-c2e1-481d-9806-6e4d04ff256b\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 137.79, \"created_at\": \"2020-11-30T15:46:04.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T15:46:04.000000Z\"}}', '2020-12-01 03:46:04', '2020-12-01 03:46:04'),
(85, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"uuid\": \"c7ff5f5a-90fc-4fb6-8801-8f3ec646d4bb\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 4, \"tenant_id\": 1, \"created_at\": \"2020-11-30T15:46:41.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T15:46:41.000000Z\", \"observacoes\": null, \"area_plantada\": 137.79, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 15}}', '2020-12-01 03:46:41', '2020-12-01 03:46:41'),
(86, 'Culturas', 'updated', 'App\\Models\\Cultura', 3, NULL, NULL, '{\"old\": {\"status\": \"Ativa\", \"updated_at\": \"2020-11-26T21:19:22.000000Z\"}, \"attributes\": {\"status\": \"Desativada\", \"updated_at\": \"2020-11-30T15:55:00.000000Z\"}}', '2020-12-01 03:55:00', '2020-12-01 03:55:00'),
(87, 'Safra', 'updated', 'App\\Models\\Safra', 2, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-11-30T12:44:55.000000Z\", \"data_inicio\": null}, \"attributes\": {\"updated_at\": \"2020-11-30T15:56:56.000000Z\", \"data_inicio\": \"2020-11-01T03:00:00.000000Z\"}}', '2020-12-01 03:56:56', '2020-12-01 03:56:56'),
(88, 'Safra', 'updated', 'App\\Models\\Safra', 2, NULL, NULL, '{\"old\": {\"status\": \"Desativada\", \"updated_at\": \"2020-11-30T15:56:56.000000Z\"}, \"attributes\": {\"status\": \"Ativa\", \"updated_at\": \"2020-11-30T16:26:44.000000Z\"}}', '2020-12-01 04:26:44', '2020-12-01 04:26:44'),
(89, 'Safra', 'updated', 'App\\Models\\Safra', 1, NULL, NULL, '{\"old\": {\"status\": \"Ativa\", \"updated_at\": \"2020-11-26T19:54:05.000000Z\"}, \"attributes\": {\"status\": \"Desativada\", \"updated_at\": \"2020-11-30T16:26:51.000000Z\"}}', '2020-12-01 04:26:51', '2020-12-01 04:26:51'),
(90, 'Culturas', 'updated', 'App\\Models\\Cultura', 2, NULL, NULL, '{\"old\": {\"status\": \"Ativa\", \"updated_at\": \"2020-11-26T21:19:10.000000Z\"}, \"attributes\": {\"status\": \"Desativada\", \"updated_at\": \"2020-11-30T16:27:15.000000Z\"}}', '2020-12-01 04:27:15', '2020-12-01 04:27:15');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(91, 'Talhao', 'created', 'App\\Models\\Talhao', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"nome\": \"T-05 AB\", \"uuid\": \"53838f4e-4c31-4a12-afb4-43cc92e07a1c\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 275.89, \"created_at\": \"2020-11-30T16:34:41.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T16:34:41.000000Z\"}}', '2020-12-01 04:34:41', '2020-12-01 04:34:41'),
(92, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"uuid\": \"323c4a78-6f90-4166-adba-0629159f61bb\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 5, \"tenant_id\": 1, \"created_at\": \"2020-11-30T16:35:09.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T16:35:09.000000Z\", \"observacoes\": null, \"area_plantada\": 275.89, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 15}}', '2020-12-01 04:35:09', '2020-12-01 04:35:09'),
(93, 'Talhao', 'created', 'App\\Models\\Talhao', 6, NULL, NULL, '{\"attributes\": {\"id\": 6, \"nome\": \"T-05 CD\", \"uuid\": \"2cfb4a27-d991-4249-874d-46b8ef46cc6b\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 429.65, \"created_at\": \"2020-11-30T16:35:57.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T16:35:57.000000Z\"}}', '2020-12-01 04:35:57', '2020-12-01 04:35:57'),
(94, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 6, NULL, NULL, '{\"attributes\": {\"id\": 6, \"uuid\": \"6311a39a-de07-4f8d-a6ec-7b787e4bde9c\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 6, \"tenant_id\": 1, \"created_at\": \"2020-11-30T16:36:22.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T16:36:22.000000Z\", \"observacoes\": null, \"area_plantada\": 429.65, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 15}}', '2020-12-01 04:36:22', '2020-12-01 04:36:22'),
(95, 'Talhao', 'created', 'App\\Models\\Talhao', 7, NULL, NULL, '{\"attributes\": {\"id\": 7, \"nome\": \"T-06 ABC\", \"uuid\": \"8e44a40c-0209-42be-b3f5-ebec32ddb498\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 239.75, \"created_at\": \"2020-11-30T16:36:55.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T16:36:55.000000Z\"}}', '2020-12-01 04:36:55', '2020-12-01 04:36:55'),
(96, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 7, NULL, NULL, '{\"attributes\": {\"id\": 7, \"uuid\": \"1ddc1062-7cdf-43b7-8922-fb8d111c86dd\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 7, \"tenant_id\": 1, \"created_at\": \"2020-11-30T16:37:41.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T16:37:41.000000Z\", \"observacoes\": null, \"area_plantada\": 239.75, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 14}}', '2020-12-01 04:37:41', '2020-12-01 04:37:41'),
(97, 'Talhao', 'created', 'App\\Models\\Talhao', 8, NULL, NULL, '{\"attributes\": {\"id\": 8, \"nome\": \"T-06 D\", \"uuid\": \"f25a92b1-8015-4262-a298-013e7c42d759\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 131.4, \"created_at\": \"2020-11-30T16:38:42.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T16:38:42.000000Z\"}}', '2020-12-01 04:38:42', '2020-12-01 04:38:42'),
(98, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 8, NULL, NULL, '{\"attributes\": {\"id\": 8, \"uuid\": \"9d332b45-6a46-435a-ad2f-72baa8833840\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 8, \"tenant_id\": 1, \"created_at\": \"2020-11-30T16:39:06.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T16:39:06.000000Z\", \"observacoes\": null, \"area_plantada\": 131.4, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 14}}', '2020-12-01 04:39:06', '2020-12-01 04:39:06'),
(99, 'Talhao', 'created', 'App\\Models\\Talhao', 9, NULL, NULL, '{\"attributes\": {\"id\": 9, \"nome\": \"T-07\", \"uuid\": \"2b008c9a-0ac7-448f-9f56-d211e944bc3a\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 589.65, \"created_at\": \"2020-11-30T16:39:48.000000Z\", \"deleted_at\": null, \"fazenda_id\": 4, \"updated_at\": \"2020-11-30T16:39:48.000000Z\"}}', '2020-12-01 04:39:48', '2020-12-01 04:39:48'),
(100, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 9, NULL, NULL, '{\"attributes\": {\"id\": 9, \"uuid\": \"c65b7b2a-af99-4327-9732-9b652210ac49\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 9, \"tenant_id\": 1, \"created_at\": \"2020-11-30T16:40:12.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T16:40:12.000000Z\", \"observacoes\": null, \"area_plantada\": 589.65, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-29T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 17}}', '2020-12-01 04:40:12', '2020-12-01 04:40:12'),
(101, 'Talhao', 'created', 'App\\Models\\Talhao', 10, NULL, NULL, '{\"attributes\": {\"id\": 10, \"nome\": \"T-08\", \"uuid\": \"51610085-3ef3-46c0-8bb8-53b27bb196ea\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 230, \"created_at\": \"2020-11-30T16:40:42.000000Z\", \"deleted_at\": null, \"fazenda_id\": 4, \"updated_at\": \"2020-11-30T16:40:42.000000Z\"}}', '2020-12-01 04:40:42', '2020-12-01 04:40:42'),
(102, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 10, NULL, NULL, '{\"attributes\": {\"id\": 10, \"uuid\": \"61c6be56-ec54-4655-9649-63d0acc99362\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 10, \"tenant_id\": 1, \"created_at\": \"2020-11-30T16:42:17.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T16:42:17.000000Z\", \"observacoes\": null, \"area_plantada\": 230, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-25T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 17}}', '2020-12-01 04:42:17', '2020-12-01 04:42:17'),
(103, 'Talhao', 'updated', 'App\\Models\\Talhao', 10, NULL, NULL, '{\"old\": {\"area_total\": 230, \"updated_at\": \"2020-11-30T16:40:42.000000Z\"}, \"attributes\": {\"area_total\": 378.63, \"updated_at\": \"2020-11-30T16:58:23.000000Z\"}}', '2020-12-01 04:58:23', '2020-12-01 04:58:23'),
(104, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 11, NULL, NULL, '{\"attributes\": {\"id\": 11, \"uuid\": \"d0f8f7c6-6a8b-42ab-aba9-57e2c5d16350\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 10, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:01:38.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:01:38.000000Z\", \"observacoes\": null, \"area_plantada\": 148.63, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-25T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 23}}', '2020-12-01 05:01:38', '2020-12-01 05:01:38'),
(105, 'Talhao', 'created', 'App\\Models\\Talhao', 11, NULL, NULL, '{\"attributes\": {\"id\": 11, \"nome\": \"T-09\", \"uuid\": \"024ace41-580c-40cf-83cf-83a59f6fae94\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 100.09, \"created_at\": \"2020-11-30T17:02:38.000000Z\", \"deleted_at\": null, \"fazenda_id\": 4, \"updated_at\": \"2020-11-30T17:02:38.000000Z\"}}', '2020-12-01 05:02:38', '2020-12-01 05:02:38'),
(106, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 12, NULL, NULL, '{\"attributes\": {\"id\": 12, \"uuid\": \"4cb9f09e-2795-4af0-90bf-7ea92065cb7e\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 11, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:03:01.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:03:01.000000Z\", \"observacoes\": null, \"area_plantada\": 100.09, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-26T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 17}}', '2020-12-01 05:03:01', '2020-12-01 05:03:01'),
(107, 'Talhao', 'created', 'App\\Models\\Talhao', 12, NULL, NULL, '{\"attributes\": {\"id\": 12, \"nome\": \"T-10\", \"uuid\": \"97b435a0-f923-4192-9105-65e361e6f0eb\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 191.36, \"created_at\": \"2020-11-30T17:03:34.000000Z\", \"deleted_at\": null, \"fazenda_id\": 1, \"updated_at\": \"2020-11-30T17:03:34.000000Z\"}}', '2020-12-01 05:03:34', '2020-12-01 05:03:34'),
(108, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 13, NULL, NULL, '{\"attributes\": {\"id\": 13, \"uuid\": \"5be6d339-ada8-4642-8af8-94494c413932\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 12, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:03:49.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:03:49.000000Z\", \"observacoes\": null, \"area_plantada\": 22, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": null, \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 23}}', '2020-12-01 05:03:49', '2020-12-01 05:03:49'),
(109, 'LocacaoTalhao', 'updated', 'App\\Models\\LocacaoTalhao', 13, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-11-30T17:03:49.000000Z\", \"area_plantada\": 22, \"inicio_plantio\": null}, \"attributes\": {\"updated_at\": \"2020-11-30T17:04:06.000000Z\", \"area_plantada\": 191.36, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\"}}', '2020-12-01 05:04:06', '2020-12-01 05:04:06'),
(110, 'Talhao', 'created', 'App\\Models\\Talhao', 13, NULL, NULL, '{\"attributes\": {\"id\": 13, \"nome\": \"T-11\", \"uuid\": \"750ddca9-4ae4-4e37-8659-910d69e79b08\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 207.92, \"created_at\": \"2020-11-30T17:04:46.000000Z\", \"deleted_at\": null, \"fazenda_id\": 2, \"updated_at\": \"2020-11-30T17:04:46.000000Z\"}}', '2020-12-01 05:04:46', '2020-12-01 05:04:46'),
(111, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 14, NULL, NULL, '{\"attributes\": {\"id\": 14, \"uuid\": \"d4115ff0-9a06-4102-b0ce-ea4dbb62e72e\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 13, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:05:33.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:05:33.000000Z\", \"observacoes\": null, \"area_plantada\": 207.92, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-01T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 05:05:33', '2020-12-01 05:05:33'),
(112, 'Talhao', 'created', 'App\\Models\\Talhao', 14, NULL, NULL, '{\"attributes\": {\"id\": 14, \"nome\": \"T-12\", \"uuid\": \"7aacfbae-c327-425c-bbb2-c605093ece27\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 90.11, \"created_at\": \"2020-11-30T17:06:05.000000Z\", \"deleted_at\": null, \"fazenda_id\": 13, \"updated_at\": \"2020-11-30T17:06:05.000000Z\"}}', '2020-12-01 05:06:05', '2020-12-01 05:06:05'),
(113, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 15, NULL, NULL, '{\"attributes\": {\"id\": 15, \"uuid\": \"227f2302-7594-4c96-9656-0b089affbb64\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 14, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:06:27.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:06:27.000000Z\", \"observacoes\": null, \"area_plantada\": 90.11, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-03T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 05:06:27', '2020-12-01 05:06:27'),
(114, 'Talhao', 'created', 'App\\Models\\Talhao', 15, NULL, NULL, '{\"attributes\": {\"id\": 15, \"nome\": \"T-13\", \"uuid\": \"359f575f-c1a9-4f89-af9f-0b910fd72fa7\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 123.42, \"created_at\": \"2020-11-30T17:07:34.000000Z\", \"deleted_at\": null, \"fazenda_id\": 27, \"updated_at\": \"2020-11-30T17:07:34.000000Z\"}}', '2020-12-01 05:07:34', '2020-12-01 05:07:34'),
(115, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 16, NULL, NULL, '{\"attributes\": {\"id\": 16, \"uuid\": \"699b721e-dafa-4cd4-8be3-bcb5e7cbff49\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 15, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:08:00.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:08:00.000000Z\", \"observacoes\": null, \"area_plantada\": 123.42, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-12T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 26}}', '2020-12-01 05:08:00', '2020-12-01 05:08:00'),
(116, 'Talhao', 'created', 'App\\Models\\Talhao', 16, NULL, NULL, '{\"attributes\": {\"id\": 16, \"nome\": \"T-15\", \"uuid\": \"235a6bcd-70ae-4726-968c-ff4715e00625\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 720.56, \"created_at\": \"2020-11-30T17:08:42.000000Z\", \"deleted_at\": null, \"fazenda_id\": 6, \"updated_at\": \"2020-11-30T17:08:42.000000Z\"}}', '2020-12-01 05:08:42', '2020-12-01 05:08:42'),
(117, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 17, NULL, NULL, '{\"attributes\": {\"id\": 17, \"uuid\": \"aa08aa22-ddf0-4d30-9da4-dc835e03f19c\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 16, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:09:07.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:09:07.000000Z\", \"observacoes\": null, \"area_plantada\": 720.56, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-30T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 17}}', '2020-12-01 05:09:07', '2020-12-01 05:09:07'),
(118, 'Talhao', 'created', 'App\\Models\\Talhao', 17, NULL, NULL, '{\"attributes\": {\"id\": 17, \"nome\": \"T-16\", \"uuid\": \"f395702d-a709-4502-9c8b-fcb0f21e7a7e\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 329.84, \"created_at\": \"2020-11-30T17:09:49.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T17:09:49.000000Z\"}}', '2020-12-01 05:09:49', '2020-12-01 05:09:49'),
(119, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 18, NULL, NULL, '{\"attributes\": {\"id\": 18, \"uuid\": \"304eb66e-947d-4c37-a981-95cba613a1a3\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 17, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:10:11.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:10:11.000000Z\", \"observacoes\": null, \"area_plantada\": 329.84, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 15}}', '2020-12-01 05:10:11', '2020-12-01 05:10:11'),
(120, 'Talhao', 'created', 'App\\Models\\Talhao', 18, NULL, NULL, '{\"attributes\": {\"id\": 18, \"nome\": \"T-17\", \"uuid\": \"b5e1de99-2891-4183-b86b-8b8933026225\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 416.21, \"created_at\": \"2020-11-30T17:10:50.000000Z\", \"deleted_at\": null, \"fazenda_id\": 33, \"updated_at\": \"2020-11-30T17:10:50.000000Z\"}}', '2020-12-01 05:10:50', '2020-12-01 05:10:50'),
(121, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 19, NULL, NULL, '{\"attributes\": {\"id\": 19, \"uuid\": \"a28762ac-e1f4-4e3a-96ec-c1219d18d139\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 18, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:11:13.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:11:13.000000Z\", \"observacoes\": null, \"area_plantada\": 416.21, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-02T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 05:11:13', '2020-12-01 05:11:13'),
(122, 'Talhao', 'created', 'App\\Models\\Talhao', 19, NULL, NULL, '{\"attributes\": {\"id\": 19, \"nome\": \"T-18\", \"uuid\": \"b465d747-1c40-4985-85d9-335037d55bf5\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 575.29, \"created_at\": \"2020-11-30T17:37:22.000000Z\", \"deleted_at\": null, \"fazenda_id\": 2, \"updated_at\": \"2020-11-30T17:37:22.000000Z\"}}', '2020-12-01 05:37:22', '2020-12-01 05:37:22'),
(123, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 20, NULL, NULL, '{\"attributes\": {\"id\": 20, \"uuid\": \"5bdd268e-1564-4116-b866-3fc65308c45b\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 19, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:37:45.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:37:45.000000Z\", \"observacoes\": null, \"area_plantada\": 575.29, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 16}}', '2020-12-01 05:37:45', '2020-12-01 05:37:45'),
(124, 'Talhao', 'created', 'App\\Models\\Talhao', 20, NULL, NULL, '{\"attributes\": {\"id\": 20, \"nome\": \"T-19\", \"uuid\": \"8ba7e20a-912c-48c8-98f3-4a3e6c9ee05d\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 258.16, \"created_at\": \"2020-11-30T17:39:26.000000Z\", \"deleted_at\": null, \"fazenda_id\": 33, \"updated_at\": \"2020-11-30T17:39:26.000000Z\"}}', '2020-12-01 05:39:26', '2020-12-01 05:39:26'),
(125, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 21, NULL, NULL, '{\"attributes\": {\"id\": 21, \"uuid\": \"ae61d785-3540-45fd-bcf9-ad918905537b\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 20, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:39:51.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:39:51.000000Z\", \"observacoes\": null, \"area_plantada\": 258.16, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-16T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 05:39:51', '2020-12-01 05:39:51'),
(126, 'Talhao', 'created', 'App\\Models\\Talhao', 21, NULL, NULL, '{\"attributes\": {\"id\": 21, \"nome\": \"T-20 A\", \"uuid\": \"cfcb385f-f5e4-4075-a35f-3ac4508d394f\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 109.89, \"created_at\": \"2020-11-30T17:42:06.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T17:42:06.000000Z\"}}', '2020-12-01 05:42:06', '2020-12-01 05:42:06'),
(127, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 22, NULL, NULL, '{\"attributes\": {\"id\": 22, \"uuid\": \"bc6bc6f8-ba2d-4c11-9196-b8e9cd2c35d5\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 21, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:42:37.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:42:37.000000Z\", \"observacoes\": null, \"area_plantada\": 109.89, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 14}}', '2020-12-01 05:42:37', '2020-12-01 05:42:37'),
(128, 'Talhao', 'created', 'App\\Models\\Talhao', 22, NULL, NULL, '{\"attributes\": {\"id\": 22, \"nome\": \"T-20 BC\", \"uuid\": \"661dd905-611e-4208-9de3-eb2de768f0d4\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 125.37, \"created_at\": \"2020-11-30T17:43:26.000000Z\", \"deleted_at\": null, \"fazenda_id\": 16, \"updated_at\": \"2020-11-30T17:43:26.000000Z\"}}', '2020-12-01 05:43:26', '2020-12-01 05:43:26'),
(129, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 23, NULL, NULL, '{\"attributes\": {\"id\": 23, \"uuid\": \"ebb4add5-5bd9-4a84-ad5d-92cebee9e2e1\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 22, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:43:58.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:43:58.000000Z\", \"observacoes\": null, \"area_plantada\": 125.37, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-26T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 14}}', '2020-12-01 05:43:58', '2020-12-01 05:43:58'),
(130, 'Talhao', 'created', 'App\\Models\\Talhao', 23, NULL, NULL, '{\"attributes\": {\"id\": 23, \"nome\": \"T-21\", \"uuid\": \"62d4d59e-eeaa-47b9-978f-beb3a7b1652a\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 305.4, \"created_at\": \"2020-11-30T17:44:24.000000Z\", \"deleted_at\": null, \"fazenda_id\": 33, \"updated_at\": \"2020-11-30T17:44:24.000000Z\"}}', '2020-12-01 05:44:24', '2020-12-01 05:44:24'),
(131, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 24, NULL, NULL, '{\"attributes\": {\"id\": 24, \"uuid\": \"812ebb19-6ec3-4876-92ea-15fa4809bd6f\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 23, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:44:59.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:44:59.000000Z\", \"observacoes\": null, \"area_plantada\": 305.4, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-29T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 14}}', '2020-12-01 05:44:59', '2020-12-01 05:44:59'),
(132, 'Talhao', 'updated', 'App\\Models\\Talhao', 23, NULL, NULL, '{\"old\": {\"area_total\": 305.4, \"updated_at\": \"2020-11-30T17:44:24.000000Z\"}, \"attributes\": {\"area_total\": 420.4, \"updated_at\": \"2020-11-30T17:45:49.000000Z\"}}', '2020-12-01 05:45:49', '2020-12-01 05:45:49'),
(133, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 25, NULL, NULL, '{\"attributes\": {\"id\": 25, \"uuid\": \"d5aeed3e-0b38-4cf4-84dc-c13618635d02\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 23, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:48:21.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:48:21.000000Z\", \"observacoes\": null, \"area_plantada\": 115, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-29T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 05:48:21', '2020-12-01 05:48:21'),
(134, 'Talhao', 'created', 'App\\Models\\Talhao', 24, NULL, NULL, '{\"attributes\": {\"id\": 24, \"nome\": \"T-22\", \"uuid\": \"3322bef5-253f-4bc6-be1b-12d0fb9508b7\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 609.16, \"created_at\": \"2020-11-30T17:48:51.000000Z\", \"deleted_at\": null, \"fazenda_id\": 4, \"updated_at\": \"2020-11-30T17:48:51.000000Z\"}}', '2020-12-01 05:48:51', '2020-12-01 05:48:51'),
(135, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 26, NULL, NULL, '{\"attributes\": {\"id\": 26, \"uuid\": \"3d2d5bf2-8da1-4fc5-9a3c-82ac1a0850d5\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 24, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:49:14.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:49:14.000000Z\", \"observacoes\": null, \"area_plantada\": 609.16, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-23T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 23}}', '2020-12-01 05:49:14', '2020-12-01 05:49:14'),
(136, 'Talhao', 'created', 'App\\Models\\Talhao', 25, NULL, NULL, '{\"attributes\": {\"id\": 25, \"nome\": \"T-23\", \"uuid\": \"b9fb02a1-3da7-4d29-9879-4a57a7768594\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 416.32, \"created_at\": \"2020-11-30T17:49:41.000000Z\", \"deleted_at\": null, \"fazenda_id\": 4, \"updated_at\": \"2020-11-30T17:49:41.000000Z\"}}', '2020-12-01 05:49:41', '2020-12-01 05:49:41'),
(137, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 27, NULL, NULL, '{\"attributes\": {\"id\": 27, \"uuid\": \"f1147043-3832-4027-8161-b5ad93945aa5\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 25, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:50:09.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:50:09.000000Z\", \"observacoes\": null, \"area_plantada\": 416.32, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-24T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 14}}', '2020-12-01 05:50:09', '2020-12-01 05:50:09'),
(138, 'Talhao', 'created', 'App\\Models\\Talhao', 26, NULL, NULL, '{\"attributes\": {\"id\": 26, \"nome\": \"T-24\", \"uuid\": \"8a39eb64-c865-4fdf-8817-3495878a2997\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 205.99, \"created_at\": \"2020-11-30T17:50:43.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-11-30T17:50:43.000000Z\"}}', '2020-12-01 05:50:43', '2020-12-01 05:50:43'),
(139, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 28, NULL, NULL, '{\"attributes\": {\"id\": 28, \"uuid\": \"f0b754a2-6633-4899-b712-a0bd145951a9\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 26, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:51:06.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:51:06.000000Z\", \"observacoes\": null, \"area_plantada\": 205.99, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-02T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 05:51:06', '2020-12-01 05:51:06'),
(140, 'Talhao', 'created', 'App\\Models\\Talhao', 27, NULL, NULL, '{\"attributes\": {\"id\": 27, \"nome\": \"T-25\", \"uuid\": \"85fdea45-5bdf-4d62-a793-dd122f59b3a5\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 194.9, \"created_at\": \"2020-11-30T17:51:33.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-11-30T17:51:33.000000Z\"}}', '2020-12-01 05:51:34', '2020-12-01 05:51:34'),
(141, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 29, NULL, NULL, '{\"attributes\": {\"id\": 29, \"uuid\": \"c07dc8cb-52e7-4f9d-b738-43b345e1077e\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 27, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:51:58.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:51:58.000000Z\", \"observacoes\": null, \"area_plantada\": 194.9, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-02T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 05:51:58', '2020-12-01 05:51:58'),
(142, 'Talhao', 'created', 'App\\Models\\Talhao', 28, NULL, NULL, '{\"attributes\": {\"id\": 28, \"nome\": \"T-26 ABCD\", \"uuid\": \"19bb83a4-4b5d-49a4-b875-2981bec56c41\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 130, \"created_at\": \"2020-11-30T17:54:45.000000Z\", \"deleted_at\": null, \"fazenda_id\": 6, \"updated_at\": \"2020-11-30T17:54:45.000000Z\"}}', '2020-12-01 05:54:45', '2020-12-01 05:54:45'),
(143, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 30, NULL, NULL, '{\"attributes\": {\"id\": 30, \"uuid\": \"3c460e12-dfbc-40e4-a389-bf849804a800\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 28, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:55:35.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:55:35.000000Z\", \"observacoes\": null, \"area_plantada\": 130, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-31T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 17}}', '2020-12-01 05:55:35', '2020-12-01 05:55:35'),
(144, 'Talhao', 'updated', 'App\\Models\\Talhao', 28, NULL, NULL, '{\"old\": {\"nome\": \"T-26 ABCD\", \"area_total\": 130, \"updated_at\": \"2020-11-30T17:54:45.000000Z\"}, \"attributes\": {\"nome\": \"T-26\", \"area_total\": 393.58, \"updated_at\": \"2020-11-30T17:57:00.000000Z\"}}', '2020-12-01 05:57:00', '2020-12-01 05:57:00'),
(145, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 31, NULL, NULL, '{\"attributes\": {\"id\": 31, \"uuid\": \"9e8dfd5f-132e-4e73-8bf0-1de107060395\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 28, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:58:14.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:58:14.000000Z\", \"observacoes\": null, \"area_plantada\": 263.58, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-31T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 05:58:14', '2020-12-01 05:58:14'),
(146, 'Talhao', 'created', 'App\\Models\\Talhao', 29, NULL, NULL, '{\"attributes\": {\"id\": 29, \"nome\": \"T-27\", \"uuid\": \"0b2b0598-907f-4002-a6a2-c466c73dc26a\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 403.58, \"created_at\": \"2020-11-30T17:59:06.000000Z\", \"deleted_at\": null, \"fazenda_id\": 33, \"updated_at\": \"2020-11-30T17:59:06.000000Z\"}}', '2020-12-01 05:59:06', '2020-12-01 05:59:06'),
(147, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 32, NULL, NULL, '{\"attributes\": {\"id\": 32, \"uuid\": \"37e3643a-f436-4be1-ac1b-bb213cc9801d\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 29, \"tenant_id\": 1, \"created_at\": \"2020-11-30T17:59:36.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T17:59:36.000000Z\", \"observacoes\": null, \"area_plantada\": 233, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-13T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 26}}', '2020-12-01 05:59:36', '2020-12-01 05:59:36'),
(148, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 33, NULL, NULL, '{\"attributes\": {\"id\": 33, \"uuid\": \"5838e14a-ed9e-4a66-b4d5-681ca1904325\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 29, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:00:12.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:00:12.000000Z\", \"observacoes\": null, \"area_plantada\": 170.58, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-13T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 06:00:12', '2020-12-01 06:00:12'),
(149, 'Talhao', 'created', 'App\\Models\\Talhao', 30, NULL, NULL, '{\"attributes\": {\"id\": 30, \"nome\": \"T-28\", \"uuid\": \"4210b64f-e724-4a22-9cb0-b3fa387da8a4\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 408.06, \"created_at\": \"2020-11-30T18:01:39.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-11-30T18:01:39.000000Z\"}}', '2020-12-01 06:01:39', '2020-12-01 06:01:39'),
(150, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 34, NULL, NULL, '{\"attributes\": {\"id\": 34, \"uuid\": \"56ee4c9b-6fa0-478c-a457-d57b1235e0a6\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 30, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:02:06.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:02:06.000000Z\", \"observacoes\": null, \"area_plantada\": 408.06, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-03T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 20}}', '2020-12-01 06:02:06', '2020-12-01 06:02:06'),
(151, 'Talhao', 'created', 'App\\Models\\Talhao', 31, NULL, NULL, '{\"attributes\": {\"id\": 31, \"nome\": \"T-29\", \"uuid\": \"b6a3ee0d-2846-4761-90c3-7443a8391241\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 399.82, \"created_at\": \"2020-11-30T18:02:37.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-11-30T18:02:37.000000Z\"}}', '2020-12-01 06:02:37', '2020-12-01 06:02:37'),
(152, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 35, NULL, NULL, '{\"attributes\": {\"id\": 35, \"uuid\": \"ce8f9dce-bfb5-4a38-99cd-b73bf2ab9920\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 31, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:03:04.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:03:04.000000Z\", \"observacoes\": null, \"area_plantada\": 399.82, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-04T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 26}}', '2020-12-01 06:03:04', '2020-12-01 06:03:04'),
(153, 'Fazendas', 'created', 'App\\Models\\Fazenda', 40, NULL, NULL, '{\"attributes\": {\"id\": 40, \"cep\": null, \"nome\": \"FAZENDA BACURI (FABIO PEREIRA)\", \"uuid\": \"9ea3bcc2-8963-4f86-813a-f144f4bc0312\", \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativa\", \"endereco\": null, \"tenant_id\": 1, \"area_total\": null, \"created_at\": \"2020-11-30T18:05:31.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:05:31.000000Z\", \"complemento\": null, \"produtor_id\": 1, \"nome_gerente\": null, \"proprietario_id\": 18, \"inscricao_estadual\": \"11.311.603-9\"}}', '2020-12-01 06:05:32', '2020-12-01 06:05:32'),
(154, 'Talhao', 'created', 'App\\Models\\Talhao', 32, NULL, NULL, '{\"attributes\": {\"id\": 32, \"nome\": \"T-30 AB & 21 G\", \"uuid\": \"94e80268-88a9-4be1-adc4-7fe179418f1a\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 138.44, \"created_at\": \"2020-11-30T18:06:12.000000Z\", \"deleted_at\": null, \"fazenda_id\": 40, \"updated_at\": \"2020-11-30T18:06:12.000000Z\"}}', '2020-12-01 06:06:12', '2020-12-01 06:06:12'),
(155, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 36, NULL, NULL, '{\"attributes\": {\"id\": 36, \"uuid\": \"71d86926-7470-43a7-9e7b-47a5b55890ed\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 32, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:06:41.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:06:41.000000Z\", \"observacoes\": null, \"area_plantada\": 138.44, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-31T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 06:06:42', '2020-12-01 06:06:42'),
(156, 'Talhao', 'created', 'App\\Models\\Talhao', 33, NULL, NULL, '{\"attributes\": {\"id\": 33, \"nome\": \"T-30 C\", \"uuid\": \"4a8bc150-cb85-4f78-a18f-1a71d282adff\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 188.09, \"created_at\": \"2020-11-30T18:07:46.000000Z\", \"deleted_at\": null, \"fazenda_id\": 40, \"updated_at\": \"2020-11-30T18:07:46.000000Z\"}}', '2020-12-01 06:07:46', '2020-12-01 06:07:46'),
(157, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 37, NULL, NULL, '{\"attributes\": {\"id\": 37, \"uuid\": \"cc8f1082-f216-4e23-9c2f-6ba3e6260342\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 33, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:08:19.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:08:19.000000Z\", \"observacoes\": null, \"area_plantada\": 188.09, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-31T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 06:08:19', '2020-12-01 06:08:19'),
(158, 'Talhao', 'created', 'App\\Models\\Talhao', 34, NULL, NULL, '{\"attributes\": {\"id\": 34, \"nome\": \"T-31\", \"uuid\": \"1f499a8b-1ad2-4d70-b7fc-98558b9b5e77\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 86.47, \"created_at\": \"2020-11-30T18:09:51.000000Z\", \"deleted_at\": null, \"fazenda_id\": 32, \"updated_at\": \"2020-11-30T18:09:51.000000Z\"}}', '2020-12-01 06:09:51', '2020-12-01 06:09:51'),
(159, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 38, NULL, NULL, '{\"attributes\": {\"id\": 38, \"uuid\": \"ba13ca2b-99fb-4a72-92e3-b2d23637ca9c\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 34, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:11:23.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:11:23.000000Z\", \"observacoes\": null, \"area_plantada\": 86.47, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-01T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 06:11:23', '2020-12-01 06:11:23'),
(160, 'Talhao', 'created', 'App\\Models\\Talhao', 35, NULL, NULL, '{\"attributes\": {\"id\": 35, \"nome\": \"T-32,33,34,35\", \"uuid\": \"8c7e475c-623e-4890-b9bd-1b145ab225b3\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 400.25, \"created_at\": \"2020-11-30T18:11:58.000000Z\", \"deleted_at\": null, \"fazenda_id\": 32, \"updated_at\": \"2020-11-30T18:11:58.000000Z\"}}', '2020-12-01 06:11:58', '2020-12-01 06:11:58'),
(161, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 39, NULL, NULL, '{\"attributes\": {\"id\": 39, \"uuid\": \"f9d728f9-b217-4cce-ae15-9ae724dc2e05\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 35, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:12:39.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:12:39.000000Z\", \"observacoes\": null, \"area_plantada\": 400.25, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-01T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 06:12:39', '2020-12-01 06:12:39'),
(162, 'Talhao', 'created', 'App\\Models\\Talhao', 36, NULL, NULL, '{\"attributes\": {\"id\": 36, \"nome\": \"T-36,37\", \"uuid\": \"e520593e-da0f-406e-9fd6-bf509a2380cc\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 194.48, \"created_at\": \"2020-11-30T18:13:18.000000Z\", \"deleted_at\": null, \"fazenda_id\": 32, \"updated_at\": \"2020-11-30T18:13:18.000000Z\"}}', '2020-12-01 06:13:18', '2020-12-01 06:13:18'),
(163, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 40, NULL, NULL, '{\"attributes\": {\"id\": 40, \"uuid\": \"93c034be-577a-41ab-86da-ca76f915770d\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 36, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:15:46.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:15:46.000000Z\", \"observacoes\": null, \"area_plantada\": 194.48, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-11T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 06:15:47', '2020-12-01 06:15:47'),
(164, 'Talhao', 'created', 'App\\Models\\Talhao', 37, NULL, NULL, '{\"attributes\": {\"id\": 37, \"nome\": \"T-38 ABC\", \"uuid\": \"348debba-c763-48c1-a821-e9fb4e233443\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 291.65, \"created_at\": \"2020-11-30T18:39:35.000000Z\", \"deleted_at\": null, \"fazenda_id\": 27, \"updated_at\": \"2020-11-30T18:39:35.000000Z\"}}', '2020-12-01 06:39:35', '2020-12-01 06:39:35'),
(165, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 41, NULL, NULL, '{\"attributes\": {\"id\": 41, \"uuid\": \"60d3989e-bc84-42a9-91fa-68b2979fde48\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 37, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:40:08.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:40:08.000000Z\", \"observacoes\": null, \"area_plantada\": 291.65, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-11T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 18}}', '2020-12-01 06:40:08', '2020-12-01 06:40:08'),
(166, 'Talhao', 'created', 'App\\Models\\Talhao', 38, NULL, NULL, '{\"attributes\": {\"id\": 38, \"nome\": \"T-39\", \"uuid\": \"1d2ccd62-c237-49b5-819e-10baeeb8ea87\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 266.23, \"created_at\": \"2020-11-30T18:40:39.000000Z\", \"deleted_at\": null, \"fazenda_id\": 27, \"updated_at\": \"2020-11-30T18:40:39.000000Z\"}}', '2020-12-01 06:40:39', '2020-12-01 06:40:39'),
(167, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 42, NULL, NULL, '{\"attributes\": {\"id\": 42, \"uuid\": \"f243b8a5-0445-4ac4-88d7-3c63564d72ed\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 38, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:41:11.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:41:11.000000Z\", \"observacoes\": null, \"area_plantada\": 266.23, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-12T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 18}}', '2020-12-01 06:41:11', '2020-12-01 06:41:11'),
(168, 'Talhao', 'created', 'App\\Models\\Talhao', 39, NULL, NULL, '{\"attributes\": {\"id\": 39, \"nome\": \"T-40 A\", \"uuid\": \"3e6a9ec2-aaa4-4f05-9372-7d1511e6b033\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 84.66, \"created_at\": \"2020-11-30T18:44:05.000000Z\", \"deleted_at\": null, \"fazenda_id\": 37, \"updated_at\": \"2020-11-30T18:44:05.000000Z\"}}', '2020-12-01 06:44:05', '2020-12-01 06:44:05'),
(169, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 43, NULL, NULL, '{\"attributes\": {\"id\": 43, \"uuid\": \"2659f129-64df-444a-9f03-3d000a7761d9\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 39, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:44:28.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:44:28.000000Z\", \"observacoes\": null, \"area_plantada\": 84.66, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-30T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 06:44:28', '2020-12-01 06:44:28'),
(170, 'Talhao', 'created', 'App\\Models\\Talhao', 40, NULL, NULL, '{\"attributes\": {\"id\": 40, \"nome\": \"T-40 B\", \"uuid\": \"aad96157-ba27-4eac-a039-1124992a9199\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 109.61, \"created_at\": \"2020-11-30T18:44:56.000000Z\", \"deleted_at\": null, \"fazenda_id\": 37, \"updated_at\": \"2020-11-30T18:44:56.000000Z\"}}', '2020-12-01 06:44:56', '2020-12-01 06:44:56'),
(171, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 44, NULL, NULL, '{\"attributes\": {\"id\": 44, \"uuid\": \"1a1a0729-7fca-4de0-9e45-b052352c93b3\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 40, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:45:22.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:45:22.000000Z\", \"observacoes\": null, \"area_plantada\": 109.61, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-30T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 06:45:22', '2020-12-01 06:45:22'),
(172, 'Talhao', 'created', 'App\\Models\\Talhao', 41, NULL, NULL, '{\"attributes\": {\"id\": 41, \"nome\": \"T-41\", \"uuid\": \"91c86cc1-0c17-439d-85df-f49c0a254577\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 302.19, \"created_at\": \"2020-11-30T18:45:51.000000Z\", \"deleted_at\": null, \"fazenda_id\": 20, \"updated_at\": \"2020-11-30T18:45:51.000000Z\"}}', '2020-12-01 06:45:51', '2020-12-01 06:45:51'),
(173, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 45, NULL, NULL, '{\"attributes\": {\"id\": 45, \"uuid\": \"15c8e2cc-b291-472b-a547-7a73b83e2209\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 41, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:46:13.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:46:13.000000Z\", \"observacoes\": null, \"area_plantada\": 302.19, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-13T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 18}}', '2020-12-01 06:46:14', '2020-12-01 06:46:14'),
(174, 'Talhao', 'created', 'App\\Models\\Talhao', 42, NULL, NULL, '{\"attributes\": {\"id\": 42, \"nome\": \"T-42\", \"uuid\": \"ab8165bc-ada7-4a48-9fad-33052fbc579b\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 494.72, \"created_at\": \"2020-11-30T18:46:43.000000Z\", \"deleted_at\": null, \"fazenda_id\": 20, \"updated_at\": \"2020-11-30T18:46:43.000000Z\"}}', '2020-12-01 06:46:43', '2020-12-01 06:46:43'),
(175, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 46, NULL, NULL, '{\"attributes\": {\"id\": 46, \"uuid\": \"4cdb5991-04bc-40a2-9e73-fc076ef9cd55\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 42, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:47:16.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:47:16.000000Z\", \"observacoes\": null, \"area_plantada\": 494.72, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-16T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 18}}', '2020-12-01 06:47:16', '2020-12-01 06:47:16'),
(176, 'Talhao', 'updated', 'App\\Models\\Talhao', 42, NULL, NULL, '{\"old\": {\"area_total\": 494.72, \"updated_at\": \"2020-11-30T18:46:43.000000Z\"}, \"attributes\": {\"area_total\": 579.23, \"updated_at\": \"2020-11-30T18:48:03.000000Z\"}}', '2020-12-01 06:48:03', '2020-12-01 06:48:03'),
(177, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 47, NULL, NULL, '{\"attributes\": {\"id\": 47, \"uuid\": \"c76dccc0-8f6c-408d-afff-0dbc56202eb9\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 42, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:48:30.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:48:30.000000Z\", \"observacoes\": null, \"area_plantada\": 66.66, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-16T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 06:48:30', '2020-12-01 06:48:30'),
(178, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 48, NULL, NULL, '{\"attributes\": {\"id\": 48, \"uuid\": \"c1451547-d237-4f45-9747-97edd071f347\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 42, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:49:14.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:49:14.000000Z\", \"observacoes\": null, \"area_plantada\": 17.85, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-16T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 06:49:14', '2020-12-01 06:49:14'),
(179, 'Talhao', 'created', 'App\\Models\\Talhao', 43, NULL, NULL, '{\"attributes\": {\"id\": 43, \"nome\": \"T-43\", \"uuid\": \"3b99b1fb-f055-406b-acef-75f84586a10c\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 71.03, \"created_at\": \"2020-11-30T18:53:19.000000Z\", \"deleted_at\": null, \"fazenda_id\": 27, \"updated_at\": \"2020-11-30T18:53:19.000000Z\"}}', '2020-12-01 06:53:19', '2020-12-01 06:53:19'),
(180, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 49, NULL, NULL, '{\"attributes\": {\"id\": 49, \"uuid\": \"6b4ee0ba-c9ab-4c76-954f-6f02c6a7b5f8\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 43, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:53:44.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:53:44.000000Z\", \"observacoes\": null, \"area_plantada\": 71.03, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-12T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 18}}', '2020-12-01 06:53:44', '2020-12-01 06:53:44'),
(181, 'Talhao', 'created', 'App\\Models\\Talhao', 44, NULL, NULL, '{\"attributes\": {\"id\": 44, \"nome\": \"T-44\", \"uuid\": \"eb4fcc78-5ed7-4bcd-ae15-cc0deefd05b3\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 475.36, \"created_at\": \"2020-11-30T18:54:22.000000Z\", \"deleted_at\": null, \"fazenda_id\": 36, \"updated_at\": \"2020-11-30T18:54:22.000000Z\"}}', '2020-12-01 06:54:22', '2020-12-01 06:54:22');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(182, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 50, NULL, NULL, '{\"attributes\": {\"id\": 50, \"uuid\": \"8c1791ed-dbe5-4256-9502-ceb66bce79ca\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 44, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:54:47.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:54:47.000000Z\", \"observacoes\": null, \"area_plantada\": 475.36, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-12T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 06:54:47', '2020-12-01 06:54:47'),
(183, 'Talhao', 'created', 'App\\Models\\Talhao', 45, NULL, NULL, '{\"attributes\": {\"id\": 45, \"nome\": \"T-45\", \"uuid\": \"f041a31c-90fe-4e3c-ae56-9cb738e0d9b2\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 349.9, \"created_at\": \"2020-11-30T18:55:21.000000Z\", \"deleted_at\": null, \"fazenda_id\": 21, \"updated_at\": \"2020-11-30T18:55:21.000000Z\"}}', '2020-12-01 06:55:21', '2020-12-01 06:55:21'),
(184, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 51, NULL, NULL, '{\"attributes\": {\"id\": 51, \"uuid\": \"4eb1b39d-1430-4b98-bd61-b61262828a29\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 45, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:55:59.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:55:59.000000Z\", \"observacoes\": null, \"area_plantada\": 349.9, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-16T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 06:55:59', '2020-12-01 06:55:59'),
(185, 'Talhao', 'created', 'App\\Models\\Talhao', 46, NULL, NULL, '{\"attributes\": {\"id\": 46, \"nome\": \"T-46\", \"uuid\": \"e6245741-dc91-4c39-b49b-92f772ed6920\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 284.03, \"created_at\": \"2020-11-30T18:57:13.000000Z\", \"deleted_at\": null, \"fazenda_id\": 20, \"updated_at\": \"2020-11-30T18:57:13.000000Z\"}}', '2020-12-01 06:57:13', '2020-12-01 06:57:13'),
(186, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 52, NULL, NULL, '{\"attributes\": {\"id\": 52, \"uuid\": \"b7dc0797-c243-4f35-ac06-ce92af31d789\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 46, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:57:36.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:57:36.000000Z\", \"observacoes\": null, \"area_plantada\": 284.03, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-13T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 18}}', '2020-12-01 06:57:36', '2020-12-01 06:57:36'),
(187, 'Talhao', 'created', 'App\\Models\\Talhao', 47, NULL, NULL, '{\"attributes\": {\"id\": 47, \"nome\": \"T-47\", \"uuid\": \"df0817fe-787e-4b02-bde2-22bc8073cdae\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 149.99, \"created_at\": \"2020-11-30T18:58:08.000000Z\", \"deleted_at\": null, \"fazenda_id\": 28, \"updated_at\": \"2020-11-30T18:58:08.000000Z\"}}', '2020-12-01 06:58:08', '2020-12-01 06:58:08'),
(188, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 53, NULL, NULL, '{\"attributes\": {\"id\": 53, \"uuid\": \"7dfda6e0-d53d-45c8-a71c-ff94a86934ac\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 47, \"tenant_id\": 1, \"created_at\": \"2020-11-30T18:58:38.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T18:58:38.000000Z\", \"observacoes\": null, \"area_plantada\": 149.99, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-13T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 06:58:38', '2020-12-01 06:58:38'),
(189, 'Talhao', 'created', 'App\\Models\\Talhao', 48, NULL, NULL, '{\"attributes\": {\"id\": 48, \"nome\": \"T-48\", \"uuid\": \"ab30615b-c6e1-47a5-85e6-bb0e8236aa73\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 467.18, \"created_at\": \"2020-11-30T18:59:20.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-11-30T18:59:20.000000Z\"}}', '2020-12-01 06:59:20', '2020-12-01 06:59:20'),
(190, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 54, NULL, NULL, '{\"attributes\": {\"id\": 54, \"uuid\": \"7b691cba-65b4-4300-a72f-828adac19261\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 48, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:01:06.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:01:06.000000Z\", \"observacoes\": null, \"area_plantada\": 467.18, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-03T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 07:01:06', '2020-12-01 07:01:06'),
(191, 'Talhao', 'created', 'App\\Models\\Talhao', 49, NULL, NULL, '{\"attributes\": {\"id\": 49, \"nome\": \"T-49\", \"uuid\": \"8861b8f4-45b5-4dd2-8a93-b0bb94e6d251\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 100.1, \"created_at\": \"2020-11-30T19:01:40.000000Z\", \"deleted_at\": null, \"fazenda_id\": 11, \"updated_at\": \"2020-11-30T19:01:40.000000Z\"}}', '2020-12-01 07:01:40', '2020-12-01 07:01:40'),
(192, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 55, NULL, NULL, '{\"attributes\": {\"id\": 55, \"uuid\": \"476e312e-cee9-4461-a937-b9011710e759\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 49, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:02:04.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:02:04.000000Z\", \"observacoes\": null, \"area_plantada\": 100.1, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-13T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 07:02:04', '2020-12-01 07:02:04'),
(193, 'Talhao', 'created', 'App\\Models\\Talhao', 50, NULL, NULL, '{\"attributes\": {\"id\": 50, \"nome\": \"T-50\", \"uuid\": \"0599990f-11ae-45ec-a57f-0075ec2809a0\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 20, \"created_at\": \"2020-11-30T19:02:34.000000Z\", \"deleted_at\": null, \"fazenda_id\": 2, \"updated_at\": \"2020-11-30T19:02:34.000000Z\"}}', '2020-12-01 07:02:34', '2020-12-01 07:02:34'),
(194, 'Talhao', 'updated', 'App\\Models\\Talhao', 50, NULL, NULL, '{\"old\": {\"area_total\": 20, \"updated_at\": \"2020-11-30T19:02:34.000000Z\"}, \"attributes\": {\"area_total\": 270.42, \"updated_at\": \"2020-11-30T19:03:38.000000Z\"}}', '2020-12-01 07:03:38', '2020-12-01 07:03:38'),
(195, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 56, NULL, NULL, '{\"attributes\": {\"id\": 56, \"uuid\": \"18963d97-73f6-4f09-820f-52b08d3ce2f1\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 50, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:04:17.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:04:17.000000Z\", \"observacoes\": null, \"area_plantada\": 20, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-24T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 14}}', '2020-12-01 07:04:17', '2020-12-01 07:04:17'),
(196, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 57, NULL, NULL, '{\"attributes\": {\"id\": 57, \"uuid\": \"739863e9-6cb6-4185-a33e-b04bdd44159e\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 50, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:04:48.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:04:48.000000Z\", \"observacoes\": null, \"area_plantada\": 250.42, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-24T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 16}}', '2020-12-01 07:04:48', '2020-12-01 07:04:48'),
(197, 'Talhao', 'created', 'App\\Models\\Talhao', 51, NULL, NULL, '{\"attributes\": {\"id\": 51, \"nome\": \"T-51\", \"uuid\": \"9f674cb4-bc1a-4992-b774-56fdb121c19f\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 300.3, \"created_at\": \"2020-11-30T19:05:38.000000Z\", \"deleted_at\": null, \"fazenda_id\": 38, \"updated_at\": \"2020-11-30T19:05:38.000000Z\"}}', '2020-12-01 07:05:38', '2020-12-01 07:05:38'),
(198, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 58, NULL, NULL, '{\"attributes\": {\"id\": 58, \"uuid\": \"f3541c5f-15cb-48fd-8a5f-36d0fd2af27b\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 51, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:06:03.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:06:03.000000Z\", \"observacoes\": null, \"area_plantada\": 300.3, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-13T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 07:06:03', '2020-12-01 07:06:03'),
(199, 'Talhao', 'created', 'App\\Models\\Talhao', 52, NULL, NULL, '{\"attributes\": {\"id\": 52, \"nome\": \"T-52\", \"uuid\": \"54a6f21b-880e-45a2-9cad-a62378d23607\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 216.08, \"created_at\": \"2020-11-30T19:06:28.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-11-30T19:06:28.000000Z\"}}', '2020-12-01 07:06:28', '2020-12-01 07:06:28'),
(200, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 59, NULL, NULL, '{\"attributes\": {\"id\": 59, \"uuid\": \"4e466e7d-e487-4b54-a30c-e2c109839525\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 52, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:06:52.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:06:52.000000Z\", \"observacoes\": null, \"area_plantada\": 216.08, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-10T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 26}}', '2020-12-01 07:06:52', '2020-12-01 07:06:52'),
(201, 'Talhao', 'created', 'App\\Models\\Talhao', 53, NULL, NULL, '{\"attributes\": {\"id\": 53, \"nome\": \"T-53\", \"uuid\": \"53a0f5b4-859c-4d6a-be65-6e41c2bc325a\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 116.11, \"created_at\": \"2020-11-30T19:07:50.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-11-30T19:07:50.000000Z\"}}', '2020-12-01 07:07:50', '2020-12-01 07:07:50'),
(202, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 60, NULL, NULL, '{\"attributes\": {\"id\": 60, \"uuid\": \"5be998ba-8b57-4d3e-b061-d19dc068041d\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 53, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:22:01.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:22:01.000000Z\", \"observacoes\": null, \"area_plantada\": 116.11, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-12T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 26}}', '2020-12-01 07:22:01', '2020-12-01 07:22:01'),
(203, 'Talhao', 'created', 'App\\Models\\Talhao', 54, NULL, NULL, '{\"attributes\": {\"id\": 54, \"nome\": \"T-54\", \"uuid\": \"4fae07d2-a67f-47de-9a2a-d07fe99e8eec\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 110, \"created_at\": \"2020-11-30T19:22:28.000000Z\", \"deleted_at\": null, \"fazenda_id\": 33, \"updated_at\": \"2020-11-30T19:22:28.000000Z\"}}', '2020-12-01 07:22:28', '2020-12-01 07:22:28'),
(204, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 61, NULL, NULL, '{\"attributes\": {\"id\": 61, \"uuid\": \"b6d883c0-89bf-4282-9d74-8e486df87bbd\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 54, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:22:58.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:22:58.000000Z\", \"observacoes\": null, \"area_plantada\": 110, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-13T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 20}}', '2020-12-01 07:22:58', '2020-12-01 07:22:58'),
(205, 'Talhao', 'updated', 'App\\Models\\Talhao', 54, NULL, NULL, '{\"old\": {\"area_total\": 110, \"updated_at\": \"2020-11-30T19:22:28.000000Z\"}, \"attributes\": {\"area_total\": 137.73, \"updated_at\": \"2020-11-30T19:24:22.000000Z\"}}', '2020-12-01 07:24:22', '2020-12-01 07:24:22'),
(206, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 62, NULL, NULL, '{\"attributes\": {\"id\": 62, \"uuid\": \"80f3f464-5feb-4957-9aaf-b502d0a87e67\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 54, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:31:47.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:31:47.000000Z\", \"observacoes\": null, \"area_plantada\": 27.73, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-13T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 07:31:47', '2020-12-01 07:31:47'),
(207, 'Talhao', 'created', 'App\\Models\\Talhao', 55, NULL, NULL, '{\"attributes\": {\"id\": 55, \"nome\": \"T-55\", \"uuid\": \"aeaac1e6-6f72-4aa3-9f93-e88fd0009fe3\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 62, \"created_at\": \"2020-11-30T19:32:31.000000Z\", \"deleted_at\": null, \"fazenda_id\": 25, \"updated_at\": \"2020-11-30T19:32:31.000000Z\"}}', '2020-12-01 07:32:31', '2020-12-01 07:32:31'),
(208, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 63, NULL, NULL, '{\"attributes\": {\"id\": 63, \"uuid\": \"ca924c49-494f-4bbc-a788-91981a5a5114\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 55, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:33:02.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:33:02.000000Z\", \"observacoes\": null, \"area_plantada\": 62, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-10T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 26}}', '2020-12-01 07:33:02', '2020-12-01 07:33:02'),
(209, 'Talhao', 'created', 'App\\Models\\Talhao', 56, NULL, NULL, '{\"attributes\": {\"id\": 56, \"nome\": \"T-56\", \"uuid\": \"554e4e4a-bbb4-4120-8ca3-e309abe667b1\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 134.21, \"created_at\": \"2020-11-30T19:37:11.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-11-30T19:37:11.000000Z\"}}', '2020-12-01 07:37:11', '2020-12-01 07:37:11'),
(210, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 64, NULL, NULL, '{\"attributes\": {\"id\": 64, \"uuid\": \"16d0fa96-97e4-4268-8631-f5795307c0d8\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 56, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:37:55.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:37:55.000000Z\", \"observacoes\": null, \"area_plantada\": 134.21, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-12T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 26}}', '2020-12-01 07:37:56', '2020-12-01 07:37:56'),
(211, 'Talhao', 'created', 'App\\Models\\Talhao', 57, NULL, NULL, '{\"attributes\": {\"id\": 57, \"nome\": \"T-57\", \"uuid\": \"90f6ae85-b6e6-46a9-9947-f29488f14be5\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 354.97, \"created_at\": \"2020-11-30T19:38:19.000000Z\", \"deleted_at\": null, \"fazenda_id\": 26, \"updated_at\": \"2020-11-30T19:38:19.000000Z\"}}', '2020-12-01 07:38:19', '2020-12-01 07:38:19'),
(212, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 65, NULL, NULL, '{\"attributes\": {\"id\": 65, \"uuid\": \"48ab3f2c-466f-4f54-8169-3bf29e676a6e\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 57, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:39:00.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:39:00.000000Z\", \"observacoes\": null, \"area_plantada\": 354.97, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-10T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 26}}', '2020-12-01 07:39:00', '2020-12-01 07:39:00'),
(213, 'Talhao', 'created', 'App\\Models\\Talhao', 58, NULL, NULL, '{\"attributes\": {\"id\": 58, \"nome\": \"T-58\", \"uuid\": \"2caf1748-a23a-4da5-818a-8c0a69348604\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 104.69, \"created_at\": \"2020-11-30T19:39:36.000000Z\", \"deleted_at\": null, \"fazenda_id\": 3, \"updated_at\": \"2020-11-30T19:39:36.000000Z\"}}', '2020-12-01 07:39:36', '2020-12-01 07:39:36'),
(214, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 66, NULL, NULL, '{\"attributes\": {\"id\": 66, \"uuid\": \"e83c5724-ea53-4aba-9c33-ec709293c9ea\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 58, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:40:01.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:40:01.000000Z\", \"observacoes\": null, \"area_plantada\": 104.69, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-04T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 07:40:01', '2020-12-01 07:40:01'),
(215, 'Talhao', 'created', 'App\\Models\\Talhao', 59, NULL, NULL, '{\"attributes\": {\"id\": 59, \"nome\": \"T-59 AB\", \"uuid\": \"405f91f4-b132-4e28-9892-a99d7b36f71a\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 157.81, \"created_at\": \"2020-11-30T19:42:02.000000Z\", \"deleted_at\": null, \"fazenda_id\": 3, \"updated_at\": \"2020-11-30T19:42:02.000000Z\"}}', '2020-12-01 07:42:02', '2020-12-01 07:42:02'),
(216, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 67, NULL, NULL, '{\"attributes\": {\"id\": 67, \"uuid\": \"880ddc4e-d9be-4044-96be-03b3a47a7dc1\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 59, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:44:28.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:44:28.000000Z\", \"observacoes\": null, \"area_plantada\": 157.81, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-11T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 07:44:29', '2020-12-01 07:44:29'),
(217, 'Talhao', 'created', 'App\\Models\\Talhao', 60, NULL, NULL, '{\"attributes\": {\"id\": 60, \"nome\": \"T-59 CD\", \"uuid\": \"957cb4c6-344f-4ad2-b7c2-5daf9b983fd5\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 294.73, \"created_at\": \"2020-11-30T19:45:08.000000Z\", \"deleted_at\": null, \"fazenda_id\": 3, \"updated_at\": \"2020-11-30T19:45:08.000000Z\"}}', '2020-12-01 07:45:08', '2020-12-01 07:45:08'),
(218, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 68, NULL, NULL, '{\"attributes\": {\"id\": 68, \"uuid\": \"6041a060-260c-4a8a-82d1-0882f2209ac2\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 60, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:45:39.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:45:39.000000Z\", \"observacoes\": null, \"area_plantada\": 294.73, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-11T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 07:45:39', '2020-12-01 07:45:39'),
(219, 'Talhao', 'created', 'App\\Models\\Talhao', 61, NULL, NULL, '{\"attributes\": {\"id\": 61, \"nome\": \"T-60\", \"uuid\": \"d448ae0e-8322-4739-9327-0dc6449b676d\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 210.77, \"created_at\": \"2020-11-30T19:48:40.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-11-30T19:48:40.000000Z\"}}', '2020-12-01 07:48:40', '2020-12-01 07:48:40'),
(220, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 69, NULL, NULL, '{\"attributes\": {\"id\": 69, \"uuid\": \"c3534260-126e-4389-8676-79c120eb213b\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 61, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:49:11.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:49:11.000000Z\", \"observacoes\": null, \"area_plantada\": 210.77, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-08T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 20}}', '2020-12-01 07:49:11', '2020-12-01 07:49:11'),
(221, 'Talhao', 'created', 'App\\Models\\Talhao', 62, NULL, NULL, '{\"attributes\": {\"id\": 62, \"nome\": \"T-61\", \"uuid\": \"e0978506-cdd0-4d60-8af3-40caea4a3bd2\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 54.85, \"created_at\": \"2020-11-30T19:50:25.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-11-30T19:50:25.000000Z\"}}', '2020-12-01 07:50:25', '2020-12-01 07:50:25'),
(222, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 70, NULL, NULL, '{\"attributes\": {\"id\": 70, \"uuid\": \"0f32955e-6eef-4541-a8f9-4b9a11197381\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 62, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:51:06.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:51:06.000000Z\", \"observacoes\": null, \"area_plantada\": 54.85, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-11T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 20}}', '2020-12-01 07:51:06', '2020-12-01 07:51:06'),
(223, 'Talhao', 'created', 'App\\Models\\Talhao', 63, NULL, NULL, '{\"attributes\": {\"id\": 63, \"nome\": \"T-62\", \"uuid\": \"9851631c-a45d-4986-94d5-7104d34bcb85\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 8.74, \"created_at\": \"2020-11-30T19:53:50.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-11-30T19:53:50.000000Z\"}}', '2020-12-01 07:53:50', '2020-12-01 07:53:50'),
(224, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 71, NULL, NULL, '{\"attributes\": {\"id\": 71, \"uuid\": \"86fdeac3-b407-4efc-b55a-6e9eeef84513\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 63, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:54:15.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:54:15.000000Z\", \"observacoes\": null, \"area_plantada\": 8.74, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-31T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 07:54:15', '2020-12-01 07:54:15'),
(225, 'Talhao', 'created', 'App\\Models\\Talhao', 64, NULL, NULL, '{\"attributes\": {\"id\": 64, \"nome\": \"T-64\", \"uuid\": \"7d01e4c7-b4d8-401e-96aa-d50370434f7a\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 130.49, \"created_at\": \"2020-11-30T19:54:47.000000Z\", \"deleted_at\": null, \"fazenda_id\": 37, \"updated_at\": \"2020-11-30T19:54:47.000000Z\"}}', '2020-12-01 07:54:47', '2020-12-01 07:54:47'),
(226, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 72, NULL, NULL, '{\"attributes\": {\"id\": 72, \"uuid\": \"5e4ff258-40f4-48db-a596-4eb18e7f4f9f\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 64, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:55:13.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:55:13.000000Z\", \"observacoes\": null, \"area_plantada\": 130.49, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-12T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 07:55:13', '2020-12-01 07:55:13'),
(227, 'Talhao', 'created', 'App\\Models\\Talhao', 65, NULL, NULL, '{\"attributes\": {\"id\": 65, \"nome\": \"T-65\", \"uuid\": \"8a4c8894-1805-4ef8-8aa0-cb802a37b8ca\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 262.82, \"created_at\": \"2020-11-30T19:55:45.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-11-30T19:55:45.000000Z\"}}', '2020-12-01 07:55:45', '2020-12-01 07:55:45'),
(228, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 73, NULL, NULL, '{\"attributes\": {\"id\": 73, \"uuid\": \"6f5d26da-3bf7-4192-ad36-aeab4dcd7e5d\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 65, \"tenant_id\": 1, \"created_at\": \"2020-11-30T19:56:11.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-11-30T19:56:11.000000Z\", \"observacoes\": null, \"area_plantada\": 262.82, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-01T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 07:56:12', '2020-12-01 07:56:12'),
(229, 'Talhao', 'created', 'App\\Models\\Talhao', 66, NULL, NULL, '{\"attributes\": {\"id\": 66, \"nome\": \"T-66\", \"uuid\": \"ddc6661e-5792-41a9-81e5-113fc48df79c\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 185.09, \"created_at\": \"2020-12-01T10:24:04.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-12-01T10:24:04.000000Z\"}}', '2020-12-01 22:24:04', '2020-12-01 22:24:04'),
(230, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 74, NULL, NULL, '{\"attributes\": {\"id\": 74, \"uuid\": \"cdb3129a-7297-4b54-858d-889694790371\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 66, \"tenant_id\": 1, \"created_at\": \"2020-12-01T10:24:26.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T10:24:26.000000Z\", \"observacoes\": null, \"area_plantada\": 185.09, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-02T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 26}}', '2020-12-01 22:24:26', '2020-12-01 22:24:26'),
(231, 'Talhao', 'created', 'App\\Models\\Talhao', 67, NULL, NULL, '{\"attributes\": {\"id\": 67, \"nome\": \"T-67\", \"uuid\": \"6c9baf30-a872-4f74-aeb8-6927a5ecc26b\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 274.09, \"created_at\": \"2020-12-01T10:24:59.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-12-01T10:24:59.000000Z\"}}', '2020-12-01 22:24:59', '2020-12-01 22:24:59'),
(232, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 75, NULL, NULL, '{\"attributes\": {\"id\": 75, \"uuid\": \"87ccb3a5-b233-46e9-be80-d92bb60d9ff5\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 67, \"tenant_id\": 1, \"created_at\": \"2020-12-01T10:25:38.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T10:25:38.000000Z\", \"observacoes\": null, \"area_plantada\": 274.09, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-03T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 22:25:38', '2020-12-01 22:25:38'),
(233, 'Talhao', 'created', 'App\\Models\\Talhao', 68, NULL, NULL, '{\"attributes\": {\"id\": 68, \"nome\": \"T-67 C\", \"uuid\": \"58201ff9-2269-4973-87b7-98bd36e0f3b8\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 110.48, \"created_at\": \"2020-12-01T10:28:24.000000Z\", \"deleted_at\": null, \"fazenda_id\": 21, \"updated_at\": \"2020-12-01T10:28:24.000000Z\"}}', '2020-12-01 22:28:24', '2020-12-01 22:28:24'),
(234, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 76, NULL, NULL, '{\"attributes\": {\"id\": 76, \"uuid\": \"e8fd2aa9-2e43-4ec9-aa18-c0efabc225a4\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 68, \"tenant_id\": 1, \"created_at\": \"2020-12-01T10:29:47.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T10:29:47.000000Z\", \"observacoes\": null, \"area_plantada\": 110.48, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-04T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 20}}', '2020-12-01 22:29:47', '2020-12-01 22:29:47'),
(235, 'Talhao', 'created', 'App\\Models\\Talhao', 69, NULL, NULL, '{\"attributes\": {\"id\": 69, \"nome\": \"T-68\", \"uuid\": \"2acc8859-2358-462b-be30-70b1092dc671\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 497.6, \"created_at\": \"2020-12-01T10:30:18.000000Z\", \"deleted_at\": null, \"fazenda_id\": 29, \"updated_at\": \"2020-12-01T10:30:18.000000Z\"}}', '2020-12-01 22:30:18', '2020-12-01 22:30:18'),
(236, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 77, NULL, NULL, '{\"attributes\": {\"id\": 77, \"uuid\": \"dd6297bf-2153-4170-be9c-a54d31986ecd\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 69, \"tenant_id\": 1, \"created_at\": \"2020-12-01T10:30:40.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T10:30:40.000000Z\", \"observacoes\": null, \"area_plantada\": 497.6, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-03T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 25}}', '2020-12-01 22:30:40', '2020-12-01 22:30:40'),
(237, 'Talhao', 'created', 'App\\Models\\Talhao', 70, NULL, NULL, '{\"attributes\": {\"id\": 70, \"nome\": \"T-69\", \"uuid\": \"a2236c23-170f-44a3-925f-251476095711\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 100.62, \"created_at\": \"2020-12-01T10:31:22.000000Z\", \"deleted_at\": null, \"fazenda_id\": 17, \"updated_at\": \"2020-12-01T10:31:22.000000Z\"}}', '2020-12-01 22:31:22', '2020-12-01 22:31:22'),
(238, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 78, NULL, NULL, '{\"attributes\": {\"id\": 78, \"uuid\": \"6827e3a4-4e30-4131-ad5f-9de51dfca89f\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 70, \"tenant_id\": 1, \"created_at\": \"2020-12-01T10:36:30.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T10:36:30.000000Z\", \"observacoes\": null, \"area_plantada\": 100.62, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-03T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 20}}', '2020-12-01 22:36:30', '2020-12-01 22:36:30'),
(239, 'Talhao', 'created', 'App\\Models\\Talhao', 71, NULL, NULL, '{\"attributes\": {\"id\": 71, \"nome\": \"T-70\", \"uuid\": \"07d44da9-21c0-4ccc-8b0f-40a36e343d4b\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 33.39, \"created_at\": \"2020-12-01T10:41:23.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T10:41:23.000000Z\"}}', '2020-12-01 22:41:23', '2020-12-01 22:41:23'),
(240, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 79, NULL, NULL, '{\"attributes\": {\"id\": 79, \"uuid\": \"23c800a7-9216-463d-863f-7f5c6332dc08\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 71, \"tenant_id\": 1, \"created_at\": \"2020-12-01T10:41:58.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T10:41:58.000000Z\", \"observacoes\": null, \"area_plantada\": 33.39, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-03T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 20}}', '2020-12-01 22:41:58', '2020-12-01 22:41:58'),
(241, 'Talhao', 'created', 'App\\Models\\Talhao', 72, NULL, NULL, '{\"attributes\": {\"id\": 72, \"nome\": \"T-71\", \"uuid\": \"949d0141-f6dd-4cb2-a25c-ae5dec0e584b\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 417.35, \"created_at\": \"2020-12-01T10:42:40.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T10:42:40.000000Z\"}}', '2020-12-01 22:42:40', '2020-12-01 22:42:40'),
(242, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 80, NULL, NULL, '{\"attributes\": {\"id\": 80, \"uuid\": \"9a3f5aac-02f4-41fd-bfb6-f567e8d49a86\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 72, \"tenant_id\": 1, \"created_at\": \"2020-12-01T10:43:08.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T10:43:08.000000Z\", \"observacoes\": null, \"area_plantada\": 417.35, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-26T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 21}}', '2020-12-01 22:43:08', '2020-12-01 22:43:08'),
(243, 'Talhao', 'created', 'App\\Models\\Talhao', 73, NULL, NULL, '{\"attributes\": {\"id\": 73, \"nome\": \"T-72\", \"uuid\": \"beea1531-f36a-4501-bc14-37fc571f18dd\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 646.09, \"created_at\": \"2020-12-01T10:46:35.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T10:46:35.000000Z\"}}', '2020-12-01 22:46:36', '2020-12-01 22:46:36'),
(244, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 81, NULL, NULL, '{\"attributes\": {\"id\": 81, \"uuid\": \"14d04e12-138e-4496-8a42-9f7d2e2b7095\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 73, \"tenant_id\": 1, \"created_at\": \"2020-12-01T10:46:59.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T10:46:59.000000Z\", \"observacoes\": null, \"area_plantada\": 646.09, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-26T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 21}}', '2020-12-01 22:47:00', '2020-12-01 22:47:00'),
(245, 'Talhao', 'created', 'App\\Models\\Talhao', 74, NULL, NULL, '{\"attributes\": {\"id\": 74, \"nome\": \"T-75\", \"uuid\": \"5bc7b212-ce4e-44ec-b500-842b16c90752\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 65.21, \"created_at\": \"2020-12-01T10:47:28.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T10:47:28.000000Z\"}}', '2020-12-01 22:47:28', '2020-12-01 22:47:28'),
(246, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 82, NULL, NULL, '{\"attributes\": {\"id\": 82, \"uuid\": \"28e7fa5f-34c1-4e17-958a-df623fe8817f\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 74, \"tenant_id\": 1, \"created_at\": \"2020-12-01T10:47:57.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T10:47:57.000000Z\", \"observacoes\": null, \"area_plantada\": 65.21, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-26T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 21}}', '2020-12-01 22:47:57', '2020-12-01 22:47:57'),
(247, 'Talhao', 'created', 'App\\Models\\Talhao', 75, NULL, NULL, '{\"attributes\": {\"id\": 75, \"nome\": \"T-76\", \"uuid\": \"0f3e95f8-ff81-4a04-a985-6bc6860fd07a\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 228.34, \"created_at\": \"2020-12-01T11:12:40.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T11:12:40.000000Z\"}}', '2020-12-01 23:12:40', '2020-12-01 23:12:40'),
(248, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 83, NULL, NULL, '{\"attributes\": {\"id\": 83, \"uuid\": \"e4f74917-b0e3-4409-8462-8b471b0cf2b2\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 75, \"tenant_id\": 1, \"created_at\": \"2020-12-01T11:31:17.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T11:31:17.000000Z\", \"observacoes\": null, \"area_plantada\": 228.34, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-28T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 21}}', '2020-12-01 23:31:18', '2020-12-01 23:31:18'),
(249, 'Talhao', 'created', 'App\\Models\\Talhao', 76, NULL, NULL, '{\"attributes\": {\"id\": 76, \"nome\": \"T-77\", \"uuid\": \"03790040-f7c0-43d0-988e-54b939ced76e\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 166.24, \"created_at\": \"2020-12-01T11:31:47.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T11:31:47.000000Z\"}}', '2020-12-01 23:31:47', '2020-12-01 23:31:47'),
(250, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 84, NULL, NULL, '{\"attributes\": {\"id\": 84, \"uuid\": \"cce64551-8296-458f-a7a0-46678d459e4d\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 76, \"tenant_id\": 1, \"created_at\": \"2020-12-01T11:32:12.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T11:32:12.000000Z\", \"observacoes\": null, \"area_plantada\": 16.24, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-28T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 21}}', '2020-12-01 23:32:12', '2020-12-01 23:32:12'),
(251, 'LocacaoTalhao', 'updated', 'App\\Models\\LocacaoTalhao', 84, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-12-01T11:32:12.000000Z\", \"area_plantada\": 16.24}, \"attributes\": {\"updated_at\": \"2020-12-01T11:33:20.000000Z\", \"area_plantada\": 166.24}}', '2020-12-01 23:33:20', '2020-12-01 23:33:20'),
(252, 'Talhao', 'created', 'App\\Models\\Talhao', 77, NULL, NULL, '{\"attributes\": {\"id\": 77, \"nome\": \"T-78\", \"uuid\": \"f6d6da14-2276-4285-b8d9-fe37d47a403c\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 112.42, \"created_at\": \"2020-12-01T11:34:15.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T11:34:15.000000Z\"}}', '2020-12-01 23:34:15', '2020-12-01 23:34:15'),
(253, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 85, NULL, NULL, '{\"attributes\": {\"id\": 85, \"uuid\": \"0781e28e-cb8f-46d7-8df3-7ba14256ac86\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 77, \"tenant_id\": 1, \"created_at\": \"2020-12-01T11:34:39.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T11:34:39.000000Z\", \"observacoes\": null, \"area_plantada\": 112.42, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-28T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 21}}', '2020-12-01 23:34:39', '2020-12-01 23:34:39'),
(254, 'Talhao', 'created', 'App\\Models\\Talhao', 78, NULL, NULL, '{\"attributes\": {\"id\": 78, \"nome\": \"T-79\", \"uuid\": \"99234ae4-3e14-4851-9f17-c850bae1c0fd\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 274.22, \"created_at\": \"2020-12-01T11:35:12.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T11:35:12.000000Z\"}}', '2020-12-01 23:35:12', '2020-12-01 23:35:12'),
(255, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 86, NULL, NULL, '{\"attributes\": {\"id\": 86, \"uuid\": \"f5ad8f55-51c6-49bd-ac79-015f79a4983b\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 78, \"tenant_id\": 1, \"created_at\": \"2020-12-01T11:35:43.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T11:35:43.000000Z\", \"observacoes\": null, \"area_plantada\": 274.22, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-29T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 21}}', '2020-12-01 23:35:43', '2020-12-01 23:35:43'),
(256, 'Talhao', 'updated', 'App\\Models\\Talhao', 78, NULL, NULL, '{\"old\": {\"area_total\": 274.22, \"updated_at\": \"2020-12-01T11:35:12.000000Z\"}, \"attributes\": {\"area_total\": 289.22, \"updated_at\": \"2020-12-01T11:36:33.000000Z\"}}', '2020-12-01 23:36:33', '2020-12-01 23:36:33'),
(257, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 87, NULL, NULL, '{\"attributes\": {\"id\": 87, \"uuid\": \"1adb6cd5-ffaf-41fa-ad52-691c2741f841\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 78, \"tenant_id\": 1, \"created_at\": \"2020-12-01T11:37:02.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T11:37:02.000000Z\", \"observacoes\": null, \"area_plantada\": 15, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-29T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 23:37:03', '2020-12-01 23:37:03'),
(258, 'Talhao', 'created', 'App\\Models\\Talhao', 79, NULL, NULL, '{\"attributes\": {\"id\": 79, \"nome\": \"T-80 AB\", \"uuid\": \"1631a37a-e585-4165-ad75-4849b61b1d47\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 180.28, \"created_at\": \"2020-12-01T11:37:33.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T11:37:33.000000Z\"}}', '2020-12-01 23:37:33', '2020-12-01 23:37:33'),
(259, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 88, NULL, NULL, '{\"attributes\": {\"id\": 88, \"uuid\": \"7156423d-88e4-4fcc-9458-5fe5b641feab\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 79, \"tenant_id\": 1, \"created_at\": \"2020-12-01T11:37:52.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T11:37:52.000000Z\", \"observacoes\": null, \"area_plantada\": 180.28, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-30T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 23:37:53', '2020-12-01 23:37:53'),
(260, 'Talhao', 'created', 'App\\Models\\Talhao', 80, NULL, NULL, '{\"attributes\": {\"id\": 80, \"nome\": \"T-80 C\", \"uuid\": \"309bef27-f73c-46d4-aa94-53633c8bfc8a\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 119.33, \"created_at\": \"2020-12-01T11:38:25.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T11:38:25.000000Z\"}}', '2020-12-01 23:38:25', '2020-12-01 23:38:25'),
(261, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 89, NULL, NULL, '{\"attributes\": {\"id\": 89, \"uuid\": \"518b4de4-6c8e-4e3d-bb34-0bf343d96830\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 80, \"tenant_id\": 1, \"created_at\": \"2020-12-01T11:38:54.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T11:38:54.000000Z\", \"observacoes\": null, \"area_plantada\": 119.33, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-30T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-01 23:38:55', '2020-12-01 23:38:55'),
(262, 'Talhao', 'created', 'App\\Models\\Talhao', 81, NULL, NULL, '{\"attributes\": {\"id\": 81, \"nome\": \"T-81\", \"uuid\": \"2f401f52-b2df-4bca-9a44-3f407edc86f5\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 66.98, \"created_at\": \"2020-12-01T11:39:20.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T11:39:20.000000Z\"}}', '2020-12-01 23:39:20', '2020-12-01 23:39:20'),
(263, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 90, NULL, NULL, '{\"attributes\": {\"id\": 90, \"uuid\": \"6711776c-3135-4c58-a14f-3e28b3e2a9af\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 81, \"tenant_id\": 1, \"created_at\": \"2020-12-01T11:39:44.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T11:39:44.000000Z\", \"observacoes\": null, \"area_plantada\": 66.98, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-31T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 23:39:44', '2020-12-01 23:39:44'),
(264, 'Talhao', 'created', 'App\\Models\\Talhao', 82, NULL, NULL, '{\"attributes\": {\"id\": 82, \"nome\": \"T-82\", \"uuid\": \"0b8ce686-514f-4021-bdec-9f81be807897\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 53.81, \"created_at\": \"2020-12-01T11:46:37.000000Z\", \"deleted_at\": null, \"fazenda_id\": 33, \"updated_at\": \"2020-12-01T11:46:37.000000Z\"}}', '2020-12-01 23:46:37', '2020-12-01 23:46:37'),
(265, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 91, NULL, NULL, '{\"attributes\": {\"id\": 91, \"uuid\": \"da024a0a-28fb-4ffe-86ec-d4bf01ff8752\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 82, \"tenant_id\": 1, \"created_at\": \"2020-12-01T11:49:04.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T11:49:04.000000Z\", \"observacoes\": null, \"area_plantada\": 53.81, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-11-04T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 19}}', '2020-12-01 23:49:04', '2020-12-01 23:49:04'),
(266, 'Talhao', 'created', 'App\\Models\\Talhao', 83, NULL, NULL, '{\"attributes\": {\"id\": 83, \"nome\": \"T-83\", \"uuid\": \"c0e7f301-5f1f-49ae-b958-63dd73e05010\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 20.41, \"created_at\": \"2020-12-01T12:16:50.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2020-12-01T12:16:50.000000Z\"}}', '2020-12-02 00:16:50', '2020-12-02 00:16:50'),
(267, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 92, NULL, NULL, '{\"attributes\": {\"id\": 92, \"uuid\": \"05a697f5-e9c9-4e4c-a928-c31f78416830\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 83, \"tenant_id\": 1, \"created_at\": \"2020-12-01T12:17:24.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2020-12-01T12:17:24.000000Z\", \"observacoes\": null, \"area_plantada\": 20.41, \"data_prevista\": null, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-31T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 22}}', '2020-12-02 00:17:24', '2020-12-02 00:17:24'),
(268, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"cep\": \"75696058\", \"tipo\": \"JURÍDICO\", \"uuid\": \"a7b26a7b-479c-493c-ab47-aee366f24863\", \"email\": \"jaquelline.ribeiro@assy.com.br\", \"bairro\": \"SOLAR DE CALDAS NOVAS\", \"cidade\": \"CALDAS NOVAS\", \"estado\": \"GO\", \"numero\": \"SN\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"05.920.305/0001-35\", \"endereco\": \"RODOVIA GO-213\", \"telefone\": \"(64) 3453-4713\", \"tenant_id\": 1, \"complmento\": \"Qd.GL Lt.06\", \"created_at\": \"2020-12-04T18:59:47.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2020-12-04T18:59:47.000000Z\", \"nome_contato\": \"Jaqueline\", \"razao_social\": \"CISA INDÚSTRIA, COMÉRCIO E REPRESENTAÇÃO DE EQUIPAMENTOS AGRÍCOLAS EIRELI\", \"rg_inscricao\": \"10.367.138-2\", \"email_contato\": \"jaquelline.ribeiro@assy.com.br\", \"nome_fantasia\": \"J. ASSY\", \"telefone_contato\": \"64 9658-2680\"}}', '2020-12-05 06:59:47', '2020-12-05 06:59:47'),
(269, 'Fornecedor', 'updated', 'App\\Models\\Fornecedor', 1, NULL, NULL, '{\"old\": {\"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2020-12-04T18:59:47.000000Z\"}, \"attributes\": {\"finalidade\": \"MAQUINÁRIO\", \"updated_at\": \"2020-12-04T19:03:07.000000Z\"}}', '2020-12-05 07:03:07', '2020-12-05 07:03:07'),
(270, 'GrupoFrota', 'created', 'App\\Models\\GrupoFrota', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"COLHEDEIRA\", \"uuid\": \"00495682-158b-42ab-a663-22dd01eb0520\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-05T11:20:08.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-05T11:20:08.000000Z\"}}', '2020-12-05 23:20:08', '2020-12-05 23:20:08'),
(271, 'GrupoFrota', 'created', 'App\\Models\\GrupoFrota', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"nome\": \"TRATOR\", \"uuid\": \"5ecaf70c-a0d6-4683-a3ba-baec574c6229\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-05T11:20:38.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-05T11:20:38.000000Z\"}}', '2020-12-05 23:20:39', '2020-12-05 23:20:39'),
(272, 'Usuários', 'updated', 'App\\Models\\User', 1, NULL, NULL, '{\"old\": {\"remember_token\": \"DXjfICHmwqHmClHdZVP7VJeanqwKS7QiMVXEJpM8PrWs8bHdbBjkCCAEkKB0\"}, \"attributes\": {\"remember_token\": \"xSKAoiqu1Qf8ZvPqXU3EDNHYiqIqmlPDEePXTTempCVYiLlthEVqrwwETd1D\"}}', '2020-12-07 21:29:08', '2020-12-07 21:29:08');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(273, 'Usuários', 'created', 'App\\Models\\User', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"name\": \"Idenilson Venâncio\", \"uuid\": \"fcf2feb3-92d2-4268-ba42-df6057df1cdf\", \"email\": \"idenilsonsilvafsm@gmail.com\", \"password\": \"$2y$10$zYO5no.01XH9k.wWp4lDJ.qJR8gmAZdr5LE9x5ZpBP4yLdH9Ki/J6\", \"created_at\": \"2020-12-07T12:33:34.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-07T12:33:34.000000Z\", \"remember_token\": null, \"current_team_id\": null, \"email_verified_at\": null, \"two_factor_secret\": null, \"profile_photo_path\": null, \"two_factor_recovery_codes\": null}}', '2020-12-07 21:33:34', '2020-12-07 21:33:34'),
(274, 'Usuários', 'updated', 'App\\Models\\User', 1, NULL, NULL, '{\"old\": {\"remember_token\": \"xSKAoiqu1Qf8ZvPqXU3EDNHYiqIqmlPDEePXTTempCVYiLlthEVqrwwETd1D\"}, \"attributes\": {\"remember_token\": \"OrBtUvLFQ8ZVQaTXnOq2u1QpXPNKwzNTeAXQyG0OtgoWulL1trTHq0fCywHb\"}}', '2020-12-07 21:33:40', '2020-12-07 21:33:40'),
(275, 'GrupoFrota', 'created', 'App\\Models\\GrupoFrota', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"nome\": \"PULVERIZADOR\", \"uuid\": \"62e66206-a124-4377-a04c-cc40f21172c5\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-07T12:54:29.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-07T12:54:29.000000Z\"}}', '2020-12-07 21:54:29', '2020-12-07 21:54:29'),
(276, 'Frota', 'created', 'App\\Models\\Frota', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"ano\": null, \"nome\": \"01\", \"uuid\": \"037a378b-b094-4663-8b0c-082d41c71cda\", \"marca\": null, \"chassi\": null, \"modelo\": null, \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-07T18:52:42.000000Z\", \"deleted_at\": null, \"observacao\": null, \"updated_at\": \"2020-12-07T18:52:42.000000Z\", \"combustivel\": \"S-10\", \"medidor_final\": null, \"tipo_marcacao\": \"HORIMETRO\", \"volume_tanque\": null, \"data_aquisicao\": null, \"grupo_frota_id\": 1, \"medidor_inicial\": null, \"valor_aquisicao\": null}}', '2020-12-08 03:52:42', '2020-12-08 03:52:42'),
(277, 'Frota', 'updated', 'App\\Models\\Frota', 1, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-12-07T18:52:42.000000Z\", \"tipo_marcacao\": \"HORIMETRO\"}, \"attributes\": {\"updated_at\": \"2020-12-07T18:52:58.000000Z\", \"tipo_marcacao\": \"KILOMETRO\"}}', '2020-12-08 03:52:58', '2020-12-08 03:52:58'),
(278, 'TipoOperacaoAgricula', 'created', 'App\\Models\\TipoOperacaoAgricula', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"PÓS EMERGENTE\", \"uuid\": \"9e67a07a-9a61-44ab-8a4e-9783f1061bf2\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-17T10:32:01.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-17T10:32:01.000000Z\"}}', '2020-12-17 16:32:01', '2020-12-17 16:32:01'),
(279, 'TipoOperacaoAgricula', 'created', 'App\\Models\\TipoOperacaoAgricula', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"nome\": \"DESSECAÇÃO P.P\", \"uuid\": \"36db3550-8f8d-41c6-a67e-0898d1515477\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-17T10:32:16.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-17T10:32:16.000000Z\"}}', '2020-12-17 16:32:16', '2020-12-17 16:32:16'),
(280, 'OperadorAgricula', 'created', 'App\\Models\\OperadorAgricula', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"ELIAS\", \"uuid\": \"5d4920b9-bf0d-4071-bbc3-0757045e025d\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-17T10:33:18.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-17T10:33:18.000000Z\"}}', '2020-12-17 16:33:19', '2020-12-17 16:33:19'),
(281, 'OperadorAgricula', 'created', 'App\\Models\\OperadorAgricula', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"nome\": \"DIVINO\", \"uuid\": \"eac9736f-624e-430e-878a-70e7d8b43387\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-17T10:33:30.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-17T10:33:30.000000Z\"}}', '2020-12-17 16:33:30', '2020-12-17 16:33:30'),
(282, 'OperadorAgricula', 'created', 'App\\Models\\OperadorAgricula', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"nome\": \"CRISTIANO\", \"uuid\": \"c9c30ffe-66a2-47da-8df6-f504bec8e009\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-17T10:33:37.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-17T10:33:37.000000Z\"}}', '2020-12-17 16:33:37', '2020-12-17 16:33:37'),
(283, 'GrupoProduto', 'created', 'App\\Models\\GrupoProduto', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"BARRACÃO\", \"uuid\": \"38211ddf-936f-445d-8335-5bb03064f44f\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-17T10:34:51.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-17T10:34:51.000000Z\"}}', '2020-12-17 16:34:51', '2020-12-17 16:34:51'),
(284, 'SubGrupoProduto', 'created', 'App\\Models\\SubGrupoProduto', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"INSETICIDA\", \"uuid\": \"0555159e-8369-48f5-8a3e-095fd8e698d9\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-17T10:36:44.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-17T10:36:44.000000Z\", \"grupo_produto_id\": 1}}', '2020-12-17 16:36:44', '2020-12-17 16:36:44'),
(285, 'Produto', 'created', 'App\\Models\\Produto', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"mcm\": null, \"nome\": \"ASSIST\", \"uuid\": \"0074aff0-5741-41b2-ac93-1a50cf28975e\", \"status\": \"Ativo\", \"estoque\": null, \"unidade\": null, \"tenant_id\": 1, \"created_at\": \"2020-12-17T10:44:43.000000Z\", \"deleted_at\": null, \"finalidade\": \"COMBUSTÍVEIS\", \"qtn_minima\": null, \"updated_at\": \"2020-12-17T10:44:43.000000Z\", \"valor_unitario\": null, \"grupo_produto_id\": 1, \"localizacao_estoque\": null, \"sub_grupo_produto_id\": 1}}', '2020-12-17 16:44:43', '2020-12-17 16:44:43'),
(286, 'Produto', 'updated', 'App\\Models\\Produto', 1, NULL, NULL, '{\"old\": {\"finalidade\": \"COMBUSTÍVEIS\", \"updated_at\": \"2020-12-17T10:44:43.000000Z\"}, \"attributes\": {\"finalidade\": \"INSUMOS\", \"updated_at\": \"2020-12-17T10:56:13.000000Z\"}}', '2020-12-17 16:56:13', '2020-12-17 16:56:13'),
(287, 'SubGrupoProduto', 'created', 'App\\Models\\SubGrupoProduto', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"nome\": \"ADJUVANTE\", \"uuid\": \"c9eb734d-5882-442a-b87b-510945427958\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-17T13:36:17.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-17T13:36:17.000000Z\", \"grupo_produto_id\": 1}}', '2020-12-17 16:36:17', '2020-12-17 16:36:17'),
(288, 'Produto', 'created', 'App\\Models\\Produto', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"mcm\": null, \"nome\": \"HELPER\", \"uuid\": \"bb5d6d95-d831-478a-8698-d6a46cf625c4\", \"status\": \"Ativo\", \"estoque\": null, \"unidade\": null, \"tenant_id\": 1, \"created_at\": \"2020-12-17T13:38:17.000000Z\", \"deleted_at\": null, \"finalidade\": \"INSUMOS\", \"qtn_minima\": null, \"updated_at\": \"2020-12-17T13:38:17.000000Z\", \"valor_unitario\": null, \"grupo_produto_id\": 1, \"localizacao_estoque\": null, \"sub_grupo_produto_id\": 2}}', '2020-12-17 16:38:18', '2020-12-17 16:38:18'),
(289, 'SubGrupoProduto', 'created', 'App\\Models\\SubGrupoProduto', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"nome\": \"HERBICIDA\", \"uuid\": \"0191bb06-3700-48ad-9ac2-8bcd3a198ea0\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-17T13:38:52.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-17T13:38:52.000000Z\", \"grupo_produto_id\": 1}}', '2020-12-17 16:38:52', '2020-12-17 16:38:52'),
(290, 'Produto', 'created', 'App\\Models\\Produto', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"mcm\": null, \"nome\": \"GLIFOSATO\", \"uuid\": \"32631c7a-c747-4270-ac91-47f58cea07a9\", \"status\": \"Ativo\", \"estoque\": null, \"unidade\": null, \"tenant_id\": 1, \"created_at\": \"2020-12-17T13:39:19.000000Z\", \"deleted_at\": null, \"finalidade\": \"INSUMOS\", \"qtn_minima\": null, \"updated_at\": \"2020-12-17T13:39:19.000000Z\", \"valor_unitario\": null, \"grupo_produto_id\": 1, \"localizacao_estoque\": null, \"sub_grupo_produto_id\": 3}}', '2020-12-17 16:39:19', '2020-12-17 16:39:19'),
(291, 'Produto', 'created', 'App\\Models\\Produto', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"mcm\": null, \"nome\": \"ClorimuronClorimuron\", \"uuid\": \"29dbbac6-40c1-422a-a860-b88b5d620605\", \"status\": \"Ativo\", \"estoque\": null, \"unidade\": null, \"tenant_id\": 1, \"created_at\": \"2020-12-17T13:41:16.000000Z\", \"deleted_at\": null, \"finalidade\": \"INSUMOS\", \"qtn_minima\": null, \"updated_at\": \"2020-12-17T13:41:16.000000Z\", \"valor_unitario\": null, \"grupo_produto_id\": 1, \"localizacao_estoque\": null, \"sub_grupo_produto_id\": 3}}', '2020-12-17 16:41:16', '2020-12-17 16:41:16'),
(292, 'Produto', 'updated', 'App\\Models\\Produto', 4, NULL, NULL, '{\"old\": {\"nome\": \"ClorimuronClorimuron\", \"updated_at\": \"2020-12-17T13:41:16.000000Z\"}, \"attributes\": {\"nome\": \"CLORIMURON\", \"updated_at\": \"2020-12-17T13:41:42.000000Z\"}}', '2020-12-17 16:41:42', '2020-12-17 16:41:42'),
(293, 'SubGrupoProduto', 'created', 'App\\Models\\SubGrupoProduto', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"nome\": \"FERTILIZANTE FOLHAR\", \"uuid\": \"905a6d89-4993-41e2-8562-b58e6813f9db\", \"status\": \"Ativo\", \"tenant_id\": 1, \"created_at\": \"2020-12-17T13:42:32.000000Z\", \"deleted_at\": null, \"updated_at\": \"2020-12-17T13:42:32.000000Z\", \"grupo_produto_id\": 1}}', '2020-12-17 16:42:33', '2020-12-17 16:42:33'),
(294, 'Produto', 'created', 'App\\Models\\Produto', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"mcm\": null, \"nome\": \"BORO SUPER\", \"uuid\": \"e138a0a3-3ef7-46af-b4da-197e036514eb\", \"status\": \"Ativo\", \"estoque\": null, \"unidade\": null, \"tenant_id\": 1, \"created_at\": \"2020-12-17T13:43:10.000000Z\", \"deleted_at\": null, \"finalidade\": \"INSUMOS\", \"qtn_minima\": null, \"updated_at\": \"2020-12-17T13:43:10.000000Z\", \"valor_unitario\": null, \"grupo_produto_id\": 1, \"localizacao_estoque\": null, \"sub_grupo_produto_id\": 4}}', '2020-12-17 16:43:10', '2020-12-17 16:43:10'),
(295, 'Produto', 'updated', 'App\\Models\\Produto', 3, NULL, NULL, '{\"old\": {\"unidade\": null, \"updated_at\": \"2020-12-17T13:39:19.000000Z\"}, \"attributes\": {\"unidade\": \"KG\", \"updated_at\": \"2020-12-17T13:56:29.000000Z\"}}', '2020-12-17 16:56:29', '2020-12-17 16:56:29'),
(296, 'Produto', 'updated', 'App\\Models\\Produto', 5, NULL, NULL, '{\"old\": {\"unidade\": null, \"updated_at\": \"2020-12-17T13:43:10.000000Z\"}, \"attributes\": {\"unidade\": \"LT\", \"updated_at\": \"2020-12-17T13:56:46.000000Z\"}}', '2020-12-17 16:56:46', '2020-12-17 16:56:46'),
(297, 'Produto', 'updated', 'App\\Models\\Produto', 5, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-12-17T13:56:46.000000Z\", \"fator_conversao\": 0}, \"attributes\": {\"updated_at\": \"2020-12-17T13:57:39.000000Z\", \"fator_conversao\": 12.5}}', '2020-12-17 16:57:39', '2020-12-17 16:57:39'),
(298, 'Produto', 'updated', 'App\\Models\\Produto', 4, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-12-17T13:41:42.000000Z\", \"fator_conversao\": 0}, \"attributes\": {\"updated_at\": \"2020-12-17T13:57:50.000000Z\", \"fator_conversao\": 1}}', '2020-12-17 16:57:50', '2020-12-17 16:57:50'),
(299, 'Produto', 'updated', 'App\\Models\\Produto', 3, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-12-17T13:56:29.000000Z\", \"fator_conversao\": 0}, \"attributes\": {\"updated_at\": \"2020-12-17T13:57:58.000000Z\", \"fator_conversao\": 5}}', '2020-12-17 16:57:58', '2020-12-17 16:57:58'),
(300, 'Produto', 'updated', 'App\\Models\\Produto', 4, NULL, NULL, '{\"old\": {\"unidade\": null, \"updated_at\": \"2020-12-17T13:57:50.000000Z\"}, \"attributes\": {\"unidade\": \"KG\", \"updated_at\": \"2020-12-17T13:58:05.000000Z\"}}', '2020-12-17 16:58:05', '2020-12-17 16:58:05'),
(301, 'Produto', 'updated', 'App\\Models\\Produto', 2, NULL, NULL, '{\"old\": {\"unidade\": null, \"updated_at\": \"2020-12-17T13:38:17.000000Z\", \"fator_conversao\": 0}, \"attributes\": {\"unidade\": \"LT\", \"updated_at\": \"2020-12-17T13:58:16.000000Z\", \"fator_conversao\": 5}}', '2020-12-17 16:58:16', '2020-12-17 16:58:16'),
(302, 'Produto', 'updated', 'App\\Models\\Produto', 1, NULL, NULL, '{\"old\": {\"unidade\": null, \"updated_at\": \"2020-12-17T13:56:13.000000Z\", \"fator_conversao\": 0}, \"attributes\": {\"unidade\": \"LT\", \"updated_at\": \"2020-12-17T13:58:27.000000Z\", \"fator_conversao\": 20}}', '2020-12-17 16:58:27', '2020-12-17 16:58:27'),
(303, 'LancamentoContaApagar', 'created', 'App\\Models\\LancamentoContaApagar', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"tipo\": \"BOLETO\", \"uuid\": \"ba07576d-0bbd-4ac8-9e2f-213c0902fa4b\", \"valor\": 25.55, \"status\": \"ABERTO\", \"descricao\": \"pagamento teste\", \"tenant_id\": 1, \"created_at\": \"2021-01-06T16:07:59.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-06T16:07:59.000000Z\", \"fornecedor_id\": 1, \"data_documento\": \"2020-01-01T03:00:00.000000Z\", \"valor_desconto\": null, \"centro_custo_id\": 1, \"data_vencimento\": \"2021-01-06T03:00:00.000000Z\", \"numero_documento\": \"123\"}}', '2021-01-06 16:07:59', '2021-01-06 16:07:59'),
(304, 'LancamentoContaApagar', 'updated', 'App\\Models\\LancamentoContaApagar', 1, NULL, NULL, '{\"old\": {\"status\": \"ABERTO\", \"updated_at\": \"2021-01-06T16:07:59.000000Z\"}, \"attributes\": {\"status\": \"PAGO\", \"updated_at\": \"2021-01-06T16:09:15.000000Z\"}}', '2021-01-06 16:09:15', '2021-01-06 16:09:15'),
(305, 'Talhao', 'updated', 'App\\Models\\Talhao', 9, NULL, NULL, '{\"old\": {\"nome\": \"T-07\", \"area_total\": 589.65, \"updated_at\": \"2020-12-01T04:39:48.000000Z\"}, \"attributes\": {\"nome\": \"T-07 AB\", \"area_total\": 211.23, \"updated_at\": \"2021-01-06T18:11:43.000000Z\"}}', '2021-01-06 18:11:43', '2021-01-06 18:11:43'),
(306, 'Talhao', 'created', 'App\\Models\\Talhao', 84, NULL, NULL, '{\"attributes\": {\"id\": 84, \"nome\": \"T-07 CDEFG\", \"uuid\": \"e54e996b-fb7f-4343-8475-71c2c269b134\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 378.42, \"created_at\": \"2021-01-06T18:12:50.000000Z\", \"deleted_at\": null, \"fazenda_id\": 4, \"updated_at\": \"2021-01-06T18:12:50.000000Z\"}}', '2021-01-06 18:12:50', '2021-01-06 18:12:50'),
(307, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 93, NULL, NULL, '{\"attributes\": {\"id\": 93, \"uuid\": \"5df99d94-2c4e-4401-865b-a56f6118f6ec\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 84, \"tenant_id\": 1, \"created_at\": \"2021-01-06T18:13:53.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2021-01-06T18:13:53.000000Z\", \"observacoes\": null, \"area_plantada\": 378.42, \"data_prevista\": null, \"final_plantio\": \"2020-10-30T03:00:00.000000Z\", \"inicio_plantio\": \"2020-10-27T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 17}}', '2021-01-06 18:13:54', '2021-01-06 18:13:54'),
(308, 'LocacaoTalhao', 'updated', 'App\\Models\\LocacaoTalhao', 9, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-12-01T04:40:12.000000Z\", \"area_plantada\": 589.65, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-29T03:00:00.000000Z\"}, \"attributes\": {\"updated_at\": \"2021-01-06T18:14:42.000000Z\", \"area_plantada\": 211.23, \"final_plantio\": \"2020-10-30T03:00:00.000000Z\", \"inicio_plantio\": \"2020-10-28T03:00:00.000000Z\"}}', '2021-01-06 18:14:42', '2021-01-06 18:14:42'),
(309, 'Talhao', 'created', 'App\\Models\\Talhao', 85, NULL, NULL, '{\"attributes\": {\"id\": 85, \"nome\": \"T-63\", \"uuid\": \"a504eaa9-d4d2-46a0-9f74-38cce0ab4127\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 28.94, \"created_at\": \"2021-01-06T18:30:44.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2021-01-06T18:30:44.000000Z\"}}', '2021-01-06 18:30:44', '2021-01-06 18:30:44'),
(310, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 94, NULL, NULL, '{\"attributes\": {\"id\": 94, \"uuid\": \"1efc09ba-3eaf-4e2a-9e98-d307b65b7b70\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 85, \"tenant_id\": 1, \"created_at\": \"2021-01-06T18:31:22.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2021-01-06T18:31:22.000000Z\", \"observacoes\": null, \"area_plantada\": 28.94, \"data_prevista\": null, \"final_plantio\": \"2020-10-26T03:00:00.000000Z\", \"inicio_plantio\": \"2020-10-24T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 21}}', '2021-01-06 18:31:22', '2021-01-06 18:31:22'),
(311, 'Talhao', 'updated', 'App\\Models\\Talhao', 72, NULL, NULL, '{\"old\": {\"area_total\": 417.35, \"updated_at\": \"2020-12-01T22:42:40.000000Z\"}, \"attributes\": {\"area_total\": 392.35, \"updated_at\": \"2021-01-06T19:29:06.000000Z\"}}', '2021-01-06 19:29:06', '2021-01-06 19:29:06'),
(312, 'LocacaoTalhao', 'updated', 'App\\Models\\LocacaoTalhao', 80, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-12-01T22:43:08.000000Z\", \"area_plantada\": 417.35, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-26T03:00:00.000000Z\"}, \"attributes\": {\"updated_at\": \"2021-01-06T19:29:40.000000Z\", \"area_plantada\": 392.35, \"final_plantio\": \"2020-10-26T03:00:00.000000Z\", \"inicio_plantio\": \"2020-10-24T03:00:00.000000Z\"}}', '2021-01-06 19:29:40', '2021-01-06 19:29:40'),
(313, 'Talhao', 'updated', 'App\\Models\\Talhao', 73, NULL, NULL, '{\"old\": {\"area_total\": 646.09, \"updated_at\": \"2020-12-01T22:46:35.000000Z\"}, \"attributes\": {\"area_total\": 321.37, \"updated_at\": \"2021-01-06T19:30:31.000000Z\"}}', '2021-01-06 19:30:31', '2021-01-06 19:30:31'),
(314, 'LocacaoTalhao', 'updated', 'App\\Models\\LocacaoTalhao', 81, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-12-01T22:46:59.000000Z\", \"area_plantada\": 646.09, \"final_plantio\": null, \"inicio_plantio\": \"2020-10-26T03:00:00.000000Z\"}, \"attributes\": {\"updated_at\": \"2021-01-06T19:31:01.000000Z\", \"area_plantada\": 321.37, \"final_plantio\": \"2020-10-26T03:00:00.000000Z\", \"inicio_plantio\": \"2020-10-24T03:00:00.000000Z\"}}', '2021-01-06 19:31:01', '2021-01-06 19:31:01'),
(315, 'Talhao', 'created', 'App\\Models\\Talhao', 86, NULL, NULL, '{\"attributes\": {\"id\": 86, \"nome\": \"T-73 AB\", \"uuid\": \"3fdaa86d-5a7d-48a7-b4a3-cc81d6beef50\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 141.47, \"created_at\": \"2021-01-06T19:33:49.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2021-01-06T19:33:49.000000Z\"}}', '2021-01-06 19:33:50', '2021-01-06 19:33:50'),
(316, 'Talhao', 'created', 'App\\Models\\Talhao', 87, NULL, NULL, '{\"attributes\": {\"id\": 87, \"nome\": \"T-73 C\", \"uuid\": \"a60a0742-6836-4ec5-8cc2-e3d65937cb9e\", \"bloco\": \"1\", \"status\": \"Ativo\", \"tenant_id\": 1, \"area_total\": 179.31, \"created_at\": \"2021-01-06T19:34:11.000000Z\", \"deleted_at\": null, \"fazenda_id\": 31, \"updated_at\": \"2021-01-06T19:34:11.000000Z\"}}', '2021-01-06 19:34:11', '2021-01-06 19:34:11'),
(317, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 95, NULL, NULL, '{\"attributes\": {\"id\": 95, \"uuid\": \"c8f434e7-22c6-448b-84e3-c60ab9ca0238\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 86, \"tenant_id\": 1, \"created_at\": \"2021-01-06T19:34:50.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2021-01-06T19:34:50.000000Z\", \"observacoes\": null, \"area_plantada\": 141.47, \"data_prevista\": null, \"final_plantio\": \"2020-10-26T03:00:00.000000Z\", \"inicio_plantio\": \"2020-10-24T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 21}}', '2021-01-06 19:34:50', '2021-01-06 19:34:50'),
(318, 'LocacaoTalhao', 'created', 'App\\Models\\LocacaoTalhao', 96, NULL, NULL, '{\"attributes\": {\"id\": 96, \"uuid\": \"b94ce374-60dd-4bf0-b98a-8d51d79c8488\", \"status\": \"Ativo\", \"safra_id\": 2, \"talhao_id\": 87, \"tenant_id\": 1, \"created_at\": \"2021-01-06T19:35:16.000000Z\", \"cultura_id\": 1, \"deleted_at\": null, \"updated_at\": \"2021-01-06T19:35:16.000000Z\", \"observacoes\": null, \"area_plantada\": 179.31, \"data_prevista\": null, \"final_plantio\": \"2020-10-26T03:00:00.000000Z\", \"inicio_plantio\": \"2020-10-24T03:00:00.000000Z\", \"semente_linear\": null, \"semente_populacao\": null, \"variedade_cultura_id\": 21}}', '2021-01-06 19:35:16', '2021-01-06 19:35:16'),
(319, 'Talhao', 'updated', 'App\\Models\\Talhao', 81, NULL, NULL, '{\"old\": {\"area_total\": 66.98, \"updated_at\": \"2020-12-01T23:39:20.000000Z\"}, \"attributes\": {\"area_total\": 56.98, \"updated_at\": \"2021-01-06T19:51:01.000000Z\"}}', '2021-01-06 19:51:01', '2021-01-06 19:51:01'),
(320, 'LocacaoTalhao', 'updated', 'App\\Models\\LocacaoTalhao', 90, NULL, NULL, '{\"old\": {\"updated_at\": \"2020-12-01T23:39:44.000000Z\", \"area_plantada\": 66.98, \"final_plantio\": null}, \"attributes\": {\"updated_at\": \"2021-01-06T19:51:23.000000Z\", \"area_plantada\": 56.98, \"final_plantio\": \"2020-10-31T03:00:00.000000Z\"}}', '2021-01-06 19:51:23', '2021-01-06 19:51:23'),
(321, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"6cd039c9-500a-410e-9410-990cf5f7337e\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:01.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:11:01.000000Z\", \"nome_contato\": null, \"razao_social\": \"FAZENDA SANTA MARTHA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FAZENDA SANTA MARTHA\", \"telefone_contato\": null}}', '2021-01-08 11:11:01', '2021-01-08 11:11:01'),
(322, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"e2f1e487-72a0-4331-a2f2-3c24cc1f41e0\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:02.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:11:02.000000Z\", \"nome_contato\": null, \"razao_social\": \"PAULO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"PAULO\", \"telefone_contato\": null}}', '2021-01-08 11:11:02', '2021-01-08 11:11:02'),
(323, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"bbafd62f-f628-43e0-8d2e-1121e0e67a77\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:02.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:11:02.000000Z\", \"nome_contato\": null, \"razao_social\": \"CARGILL\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CARGILL\", \"telefone_contato\": null}}', '2021-01-08 11:11:02', '2021-01-08 11:11:02'),
(324, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"c6cbf6a1-1d34-4267-b67b-056badbd2d5c\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:02.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:11:02.000000Z\", \"nome_contato\": null, \"razao_social\": \"AGROBOM\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"AGROBOM\", \"telefone_contato\": null}}', '2021-01-08 11:11:02', '2021-01-08 11:11:02'),
(325, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 6, NULL, NULL, '{\"attributes\": {\"id\": 6, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"14c04555-28c2-4608-84cb-d5245dfa77bc\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:02.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:11:02.000000Z\", \"nome_contato\": null, \"razao_social\": \"CARAMURU\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CARAMURU\", \"telefone_contato\": null}}', '2021-01-08 11:11:02', '2021-01-08 11:11:02'),
(326, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 7, NULL, NULL, '{\"attributes\": {\"id\": 7, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"3f82c331-ff86-4c1e-8bdf-310f4f5a548d\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:02.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:11:02.000000Z\", \"nome_contato\": null, \"razao_social\": \"ADM\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ADM\", \"telefone_contato\": null}}', '2021-01-08 11:11:02', '2021-01-08 11:11:02'),
(327, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 8, NULL, NULL, '{\"attributes\": {\"id\": 8, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"72f1d03a-0ac5-494d-8cde-bb6ad4c7d95d\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:02.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:11:02.000000Z\", \"nome_contato\": null, \"razao_social\": \"BAGEL\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"BAGEL\", \"telefone_contato\": null}}', '2021-01-08 11:11:03', '2021-01-08 11:11:03'),
(328, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 9, NULL, NULL, '{\"attributes\": {\"id\": 9, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"64599127-a702-4a37-891d-68fcf47e5cf5\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:03.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:11:03.000000Z\", \"nome_contato\": null, \"razao_social\": \"SABÁ\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SABÁ\", \"telefone_contato\": null}}', '2021-01-08 11:11:03', '2021-01-08 11:11:03'),
(329, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 10, NULL, NULL, '{\"attributes\": {\"id\": 10, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"fe7e5220-e860-4b9d-8ae0-2e837ba3634f\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2636\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"340.796.452-87\", \"endereco\": \"AV. GOIÁS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:03.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:03.000000Z\", \"nome_contato\": null, \"razao_social\": \"ABILIO JOSÉ DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ABILIO JOSÉ DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:03', '2021-01-08 11:11:03'),
(330, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 11, NULL, NULL, '{\"attributes\": {\"id\": 11, \"cep\": \"75570000\", \"tipo\": \"JURÍDICO\", \"uuid\": \"11d3fcd3-5353-43c2-831d-5353e7d59759\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"09.504.473/0001-73\", \"endereco\": \"RUA DOIS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:03.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:03.000000Z\", \"nome_contato\": null, \"razao_social\": \"ARG TRANSPORTES LTDA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ALDO RODRIGUES GUERRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:03', '2021-01-08 11:11:03'),
(331, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 12, NULL, NULL, '{\"attributes\": {\"id\": 12, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"65cec35b-e1c6-4d21-bc0a-e2ace83ad573\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"379\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"866.509.471-72\", \"endereco\": \"RUA.PROF(A) MARIA JOSÉ MIGUEL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:03.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:03.000000Z\", \"nome_contato\": null, \"razao_social\": \"ALEX ALVES DA COSTA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ALEX ALVES DA COSTA\", \"telefone_contato\": null}}', '2021-01-08 11:11:03', '2021-01-08 11:11:03'),
(332, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 13, NULL, NULL, '{\"attributes\": {\"id\": 13, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"4bf8f5e0-64ce-46f9-84b5-6d4af73f26ad\", \"email\": null, \"bairro\": \"MORADA NOVA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"032.440.731-90\", \"endereco\": \"Q 04 , L 129\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"ALEX APARECIDO LOPES MARTINS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ALEX APARECIDO LOPES MARTINS\", \"telefone_contato\": null}}', '2021-01-08 11:11:04', '2021-01-08 11:11:04'),
(333, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 14, NULL, NULL, '{\"attributes\": {\"id\": 14, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"c19d57be-4c1d-4825-aa54-a4bf942a20b5\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.670\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"220.140.121-72\", \"endereco\": \"AV. GOIÂNIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"ANTÔNIO ALVES CUSTODIO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ANTÔNIO ALVES CUSTODIO\", \"telefone_contato\": null}}', '2021-01-08 11:11:04', '2021-01-08 11:11:04'),
(334, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 15, NULL, NULL, '{\"attributes\": {\"id\": 15, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"e3395fe7-a223-45af-9ea1-59f9e8dea90b\", \"email\": null, \"bairro\": \"BELA VISTA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"321.068.406-59\", \"endereco\": \"JOÃO GONÇALVES DIAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"ANTÔNIO BRAZ PEREIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ANTÔNIO BRAZ PEREIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:04', '2021-01-08 11:11:04'),
(335, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 16, NULL, NULL, '{\"attributes\": {\"id\": 16, \"cep\": \"14700020\", \"tipo\": \"FÍSICO\", \"uuid\": \"c7587ac1-138f-4788-ba68-a551d6fa0b1f\", \"email\": null, \"bairro\": \"JD ALVORADA\", \"cidade\": \"BEBEDOURO\", \"estado\": \"SP\", \"numero\": \"1.371\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"396.334.568-35\", \"endereco\": \"RUA OSCAR AUGUSTO PEREIRA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"CASSIO APARECIDO ALVES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CASSIO APARECIDO ALVES\", \"telefone_contato\": null}}', '2021-01-08 11:11:04', '2021-01-08 11:11:04'),
(336, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 17, NULL, NULL, '{\"attributes\": {\"id\": 17, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"6f158936-ba99-43c1-a151-7bcda020bef5\", \"email\": null, \"bairro\": null, \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"660.244.711-49\", \"endereco\": \"CRUZEIRO DO SUL L74, Q 04\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"CELSO MARTINS DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CELSO MARTINS DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:04', '2021-01-08 11:11:04'),
(337, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 18, NULL, NULL, '{\"attributes\": {\"id\": 18, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"cb2e5856-3bc5-47c1-b7ee-357104bf6fb1\", \"email\": null, \"bairro\": \"MORADA NOVA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"587.560.191-49\", \"endereco\": \"RUA. PERCILIO OLIVEIRA GONÇALVES / Q05, L 110\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"CICERO SALDANHA DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CICERO SALDANHA DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:05', '2021-01-08 11:11:05'),
(338, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 19, NULL, NULL, '{\"attributes\": {\"id\": 19, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"5af7803c-056c-48eb-85fa-da90b2850ef5\", \"email\": null, \"bairro\": \"DONA ELEONTINA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"232\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"190.578.731-68\", \"endereco\": \"RUA JOSÉ MALAQUIAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:05.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:05.000000Z\", \"nome_contato\": null, \"razao_social\": \"CICERO SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CICERO SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:05', '2021-01-08 11:11:05'),
(339, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 20, NULL, NULL, '{\"attributes\": {\"id\": 20, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"e0216147-b09a-478d-8751-cb2a10907f89\", \"email\": null, \"bairro\": \"ANDIRA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"186\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"280.673.041-49\", \"endereco\": \"AV. ABÍLIO\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:05.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:05.000000Z\", \"nome_contato\": null, \"razao_social\": \"CICERO TAVARES DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CICERO TAVARES DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:05', '2021-01-08 11:11:05'),
(340, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 21, NULL, NULL, '{\"attributes\": {\"id\": 21, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"2b816185-945b-41c6-a203-9f33342bff22\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"312\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"876.463.231-87\", \"endereco\": \"RUA.PORF(A) MARIA JOSÉ MIGUEL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:05.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:05.000000Z\", \"nome_contato\": null, \"razao_social\": \"DENIS MAURICIO LEMBI\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"DENIS MAURICIO LEMBI\", \"telefone_contato\": null}}', '2021-01-08 11:11:05', '2021-01-08 11:11:05'),
(341, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 22, NULL, NULL, '{\"attributes\": {\"id\": 22, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"f623da2d-133a-49b5-829d-da0d061a5af2\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.509\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"032.167.021-38\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:05.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:05.000000Z\", \"nome_contato\": null, \"razao_social\": \"DIEGO DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"DIEGO DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:05', '2021-01-08 11:11:05'),
(342, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 23, NULL, NULL, '{\"attributes\": {\"id\": 23, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"96d6890d-ac25-4708-931f-02539d050cee\", \"email\": null, \"bairro\": \"MORADA NOVA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"047.840.561-81\", \"endereco\": \"AV.ABILIO JOSÉ DE FREITAS, Q11, L 195\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:05.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:05.000000Z\", \"nome_contato\": null, \"razao_social\": \"DIONES MENEZES GOMES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"DIONES MENEZES GOMES\", \"telefone_contato\": null}}', '2021-01-08 11:11:06', '2021-01-08 11:11:06'),
(343, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 24, NULL, NULL, '{\"attributes\": {\"id\": 24, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"e19fb717-2faa-423d-aa70-0b780ad353ea\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"AV. RIO VERDE\", \"estado\": \"GO\", \"numero\": \"1.338\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"026.392.811-00\", \"endereco\": \"AV. RIO VERDE\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:06.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:06.000000Z\", \"nome_contato\": null, \"razao_social\": \"EDUARDO ANTÔNIO ALVES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"EDUARDO ANTÔNIO ALVES\", \"telefone_contato\": null}}', '2021-01-08 11:11:06', '2021-01-08 11:11:06'),
(344, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 25, NULL, NULL, '{\"attributes\": {\"id\": 25, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"195d5b3f-bc25-4604-a61e-82b9a2aa01d1\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2.364\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"612.444.141-15\", \"endereco\": \"AV. GOIÁS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:06.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:06.000000Z\", \"nome_contato\": null, \"razao_social\": \"EMERSON ALVES JUSTINO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"EMERSON ALVES JUSTINO\", \"telefone_contato\": null}}', '2021-01-08 11:11:06', '2021-01-08 11:11:06'),
(345, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 26, NULL, NULL, '{\"attributes\": {\"id\": 26, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"1d65c2f4-de8c-4efe-b761-141436998982\", \"email\": null, \"bairro\": \"ANDIRÁ\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"191.996.818-03\", \"endereco\": \"RUA. FLORIANA FERREIRA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:06.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:06.000000Z\", \"nome_contato\": null, \"razao_social\": \"EMERSON DE MORAES CESAR\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"EMERSON DE MORAES CESAR\", \"telefone_contato\": null}}', '2021-01-08 11:11:06', '2021-01-08 11:11:06'),
(346, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 27, NULL, NULL, '{\"attributes\": {\"id\": 27, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"03e652b0-a982-4e48-a96f-ef5323b9527c\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.825\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"009.267.741-07\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:06.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:06.000000Z\", \"nome_contato\": null, \"razao_social\": \"ETELVINO ALCÂNTARA SILVA NETO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ETELVINO ALCÂNTARA SILVA NETO\", \"telefone_contato\": null}}', '2021-01-08 11:11:06', '2021-01-08 11:11:06'),
(347, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 28, NULL, NULL, '{\"attributes\": {\"id\": 28, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"bc786673-35a0-477c-a4e0-f5d60989e2ed\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.906\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"932.937.981-87\", \"endereco\": \"AV. BARSILIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:07.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:07.000000Z\", \"nome_contato\": null, \"razao_social\": \"EURÍPEDES MARTINS DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"EURÍPEDES MARTINS DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:07', '2021-01-08 11:11:07'),
(348, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 29, NULL, NULL, '{\"attributes\": {\"id\": 29, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"babd5b71-3e0b-40d6-9b4c-3bb2b56bd42a\", \"email\": null, \"bairro\": \"BAIRRO OLÍMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"261\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"827.663.551-20\", \"endereco\": \"AV. TOCANTINS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:07.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:07.000000Z\", \"nome_contato\": null, \"razao_social\": \"FABIANO CASSIMIRO DOS SANTOS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FABIANO CASSIMIRO DOS SANTOS\", \"telefone_contato\": null}}', '2021-01-08 11:11:07', '2021-01-08 11:11:07'),
(349, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 30, NULL, NULL, '{\"attributes\": {\"id\": 30, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"362ae5a3-2c4a-4f65-826a-fb985dc412e5\", \"email\": null, \"bairro\": \"ANIBAL LIMA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"219\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"623.862.471-04\", \"endereco\": \"AV. BRASIL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:07.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:07.000000Z\", \"nome_contato\": null, \"razao_social\": \"FABIANO SOUZA TERRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FABIANO SOUZA TERRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:07', '2021-01-08 11:11:07'),
(350, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 31, NULL, NULL, '{\"attributes\": {\"id\": 31, \"cep\": \"75970000\", \"tipo\": \"FÍSICO\", \"uuid\": \"871bbc9d-3c40-410d-a786-b51229f97ef8\", \"email\": null, \"bairro\": \"DONA CONSTANCIA\", \"cidade\": \"TURVELÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"288.372.901-87\", \"endereco\": \"RUA. ADIVERTINO JOSÉ VIEIRA, Q4, L12\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:07.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:07.000000Z\", \"nome_contato\": null, \"razao_social\": \"FRANCISCO SANTANA  DOS SANTOS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FRANCISCO SANTANA  DOS SANTOS\", \"telefone_contato\": null}}', '2021-01-08 11:11:07', '2021-01-08 11:11:07'),
(351, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 32, NULL, NULL, '{\"attributes\": {\"id\": 32, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"49dddbdf-e858-4cc3-b30a-c2af71dfcdcd\", \"email\": null, \"bairro\": \"ALVORADA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"634\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"435.178.896-87\", \"endereco\": \"AV. PRESIDENTE VARGAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:07.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:07.000000Z\", \"nome_contato\": null, \"razao_social\": \"GILMAR PEREIRA DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"GILMAR PEREIRA DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:08', '2021-01-08 11:11:08'),
(352, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 33, NULL, NULL, '{\"attributes\": {\"id\": 33, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"3812dd78-aba2-4f4b-acee-7d49db6dc93c\", \"email\": null, \"bairro\": \"OLIMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"736\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"292.585.611-04\", \"endereco\": \"AV. FREDERICO SARAIVA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:08.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:08.000000Z\", \"nome_contato\": null, \"razao_social\": \"IVAN GONÇALVES DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"IVAN GONÇALVES DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:08', '2021-01-08 11:11:08'),
(353, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 34, NULL, NULL, '{\"attributes\": {\"id\": 34, \"cep\": \"75930000\", \"tipo\": \"FÍSICO\", \"uuid\": \"2477f140-e2a3-49d9-97fc-5c487d0ae88e\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"MAURILÂNDIA\", \"estado\": \"GO\", \"numero\": \"68\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"009.261.221-00\", \"endereco\": \"Rua. OLIMPIO CARVALHO DE SOUSA, Q10, L08\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:08.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:08.000000Z\", \"nome_contato\": null, \"razao_social\": \"JEAN CARLOS DE GOIS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JEAN CARLOS DE GOIS\", \"telefone_contato\": null}}', '2021-01-08 11:11:08', '2021-01-08 11:11:08');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(354, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 35, NULL, NULL, '{\"attributes\": {\"id\": 35, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"81fb0886-2530-4222-bdca-383d887c603e\", \"email\": null, \"bairro\": \"ANIBAL LIMA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"224\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"211.046.466-68\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:08.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:08.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOÃO BATISTA GONÇALVES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOÃO BATISTA GONÇALVES\", \"telefone_contato\": null}}', '2021-01-08 11:11:08', '2021-01-08 11:11:08'),
(355, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 36, NULL, NULL, '{\"attributes\": {\"id\": 36, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"dfa94d9d-fb62-4c76-9c04-86e2b8e32521\", \"email\": null, \"bairro\": \"DONA JOSINA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"103\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"477.290.401-82\", \"endereco\": \"RUA QUIRINOPOLIS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:08.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:08.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOÃO BATISTA SILVA LOPES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOÃO BATISTA SILVA LOPES\", \"telefone_contato\": null}}', '2021-01-08 11:11:09', '2021-01-08 11:11:09'),
(356, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 37, NULL, NULL, '{\"attributes\": {\"id\": 37, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"fe76d770-b10e-4ea6-81b7-a81f0fd3b241\", \"email\": null, \"bairro\": \"ANÍBAL LIMA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"105\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"168.373.121-20\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:09.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:09.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOAQUIM JOSÉ PEREIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOAQUIM JOSÉ PEREIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:09', '2021-01-08 11:11:09'),
(357, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 38, NULL, NULL, '{\"attributes\": {\"id\": 38, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"f778519f-8ebd-4430-9c39-9d463e9c578e\", \"email\": null, \"bairro\": \"VILA OPERARIA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.286\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"419.530.881-04\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:09.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:09.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOSÉ ÉLCIO FRANCISCO DAS CHAGAS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOSÉ ÉLCIO FRANCISCO DAS CHAGAS\", \"telefone_contato\": null}}', '2021-01-08 11:11:09', '2021-01-08 11:11:09'),
(358, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 39, NULL, NULL, '{\"attributes\": {\"id\": 39, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"188a3c5a-8531-481c-bb9f-727896ab3dad\", \"email\": null, \"bairro\": \"TROPICAL\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"219.668.501-15\", \"endereco\": \"AV. MADALENE DIAS CAMPOS, QD21, LT 01\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:09.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:09.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOSÉ MARIM DOS REIS PIRES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOSÉ MARIM DOS REIS PIRES\", \"telefone_contato\": null}}', '2021-01-08 11:11:09', '2021-01-08 11:11:09'),
(359, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 40, NULL, NULL, '{\"attributes\": {\"id\": 40, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"716cf14c-a72c-4306-9cca-98d36b317242\", \"email\": null, \"bairro\": \"ALVORADA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"133.736.681-15\", \"endereco\": \"AV. SETE DE NOVEMBRO\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:09.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:09.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOSÉ PEREIRA ARAÚJO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOSÉ PEREIRA ARAÚJO\", \"telefone_contato\": null}}', '2021-01-08 11:11:09', '2021-01-08 11:11:09'),
(360, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 41, NULL, NULL, '{\"attributes\": {\"id\": 41, \"cep\": \"75930000\", \"tipo\": \"FÍSICO\", \"uuid\": \"86965947-bbdd-4b25-bc06-dc3fca019fb6\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"MARILÂNDIA\", \"estado\": \"GO\", \"numero\": \"85\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"849.632.711-68\", \"endereco\": \"AV. AMAZONAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:09.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:09.000000Z\", \"nome_contato\": null, \"razao_social\": \"JUNIO CESAR GOMES DO NASCIMENTO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JUNIO CESAR GOMES DO NASCIMENTO\", \"telefone_contato\": null}}', '2021-01-08 11:11:10', '2021-01-08 11:11:10'),
(361, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 42, NULL, NULL, '{\"attributes\": {\"id\": 42, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"bfe1f656-24cc-4c39-8491-8b895fc45cd7\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"514\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"375.377.251-87\", \"endereco\": \"AV. PRESIDENTE VARGAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:10.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:10.000000Z\", \"nome_contato\": null, \"razao_social\": \"LEOPOLDINO BORGES ROSA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"LEOPOLDINO BORGES ROSA\", \"telefone_contato\": null}}', '2021-01-08 11:11:10', '2021-01-08 11:11:10'),
(362, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 43, NULL, NULL, '{\"attributes\": {\"id\": 43, \"cep\": \"1470020\", \"tipo\": \"FÍSICO\", \"uuid\": \"e6d998bc-b938-4e2d-a860-e3bca0f5a0ae\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"BEBEDOURO\", \"estado\": \"SP\", \"numero\": \"1.292\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"255.812.5088-71\", \"endereco\": \"ALAMEDA PAULO CESAR FIGUEIREDO\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:10.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:10.000000Z\", \"nome_contato\": null, \"razao_social\": \"MARCELO DE SOUZA MATHIAS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"MARCELO DE SOUZA MATHIAS\", \"telefone_contato\": null}}', '2021-01-08 11:11:10', '2021-01-08 11:11:10'),
(363, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 44, NULL, NULL, '{\"attributes\": {\"id\": 44, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"04b31e29-4d12-45ba-b263-01baad6f1d11\", \"email\": null, \"bairro\": \"OLIMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"433\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"986.693.116.15\", \"endereco\": \"AV. ARAGUAIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:10.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:10.000000Z\", \"nome_contato\": null, \"razao_social\": \"MARCELO FERREIRA DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"MARCELO FERREIRA DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:10', '2021-01-08 11:11:10'),
(364, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 45, NULL, NULL, '{\"attributes\": {\"id\": 45, \"cep\": \"14870400\", \"tipo\": \"FÍSICO\", \"uuid\": \"980b8d2d-1a93-4898-9650-b227ff98ce95\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"JABOTICABAL\", \"estado\": \"SP\", \"numero\": \"137\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"020.538.418-85\", \"endereco\": \"RUA. MIZAEL DE CAMPOS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:10.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:10.000000Z\", \"nome_contato\": null, \"razao_social\": \"NELVIO DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"NELVIO DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:10', '2021-01-08 11:11:10'),
(365, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 46, NULL, NULL, '{\"attributes\": {\"id\": 46, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"9960104b-5e4d-4cdd-84bc-157cc43959cb\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.825\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"003.043.061-50\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:10.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:10.000000Z\", \"nome_contato\": null, \"razao_social\": \"MARCIO ALCÂNTARA DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"MARCIO ALCÂNTARA DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:11', '2021-01-08 11:11:11'),
(366, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 47, NULL, NULL, '{\"attributes\": {\"id\": 47, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"e6b922e2-11d1-4970-8072-8496df2a2564\", \"email\": null, \"bairro\": \"OLIMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"373\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"499.658.751-20\", \"endereco\": \"AV. ARAGUAIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:11.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:11.000000Z\", \"nome_contato\": null, \"razao_social\": \"MARCOS ANTÔNIO DE SOUSA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"MARCOS ANTÔNIO DE SOUSA\", \"telefone_contato\": null}}', '2021-01-08 11:11:11', '2021-01-08 11:11:11'),
(367, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 48, NULL, NULL, '{\"attributes\": {\"id\": 48, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"e61626d4-6ef2-498d-aa41-1ea7cd125e7f\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.681\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"491.200.691-20\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:11.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:11.000000Z\", \"nome_contato\": null, \"razao_social\": \"NAILTON BATISTA DE ARAÚJO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"NAILTON BATISTA DE ARAÚJO\", \"telefone_contato\": null}}', '2021-01-08 11:11:11', '2021-01-08 11:11:11'),
(368, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 49, NULL, NULL, '{\"attributes\": {\"id\": 49, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"1d9661c1-7ba4-4c2d-8856-c90b8f054ac6\", \"email\": null, \"bairro\": \"ALVORADA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"281.847.241-68\", \"endereco\": \"AV. JOÃO RODRIGUES DA CUNHA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:11.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:11.000000Z\", \"nome_contato\": null, \"razao_social\": \"NATANAEL SOARES MARQUES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"NATANAEL SOARES MARQUES\", \"telefone_contato\": null}}', '2021-01-08 11:11:11', '2021-01-08 11:11:11'),
(369, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 50, NULL, NULL, '{\"attributes\": {\"id\": 50, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"b47e8b1a-5bdc-4e3e-88b0-690c0e033787\", \"email\": null, \"bairro\": \"ALVORADA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"118\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"167.804.341-91\", \"endereco\": \"AV. JK\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:11.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:11.000000Z\", \"nome_contato\": null, \"razao_social\": \"OLAVO FERREIRA DE MOURA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"OLAVO FERREIRA DE MOURA\", \"telefone_contato\": null}}', '2021-01-08 11:11:11', '2021-01-08 11:11:11'),
(370, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 51, NULL, NULL, '{\"attributes\": {\"id\": 51, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"ba75803e-d508-4452-8840-8b8379d374d2\", \"email\": null, \"bairro\": \"ALVORADA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"320\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"271.468.471-87\", \"endereco\": \"AV. BRASIL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:11.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:11.000000Z\", \"nome_contato\": null, \"razao_social\": \"ONEIDES FERREIRA DE MOURA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ONEIDES FERREIRA DE MOURA\", \"telefone_contato\": null}}', '2021-01-08 11:11:12', '2021-01-08 11:11:12'),
(371, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 52, NULL, NULL, '{\"attributes\": {\"id\": 52, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"55481d43-fd57-430f-aa82-04f2af6e91c3\", \"email\": null, \"bairro\": \"MORADA NOVA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"132\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"472.879.501-20\", \"endereco\": \"RUA.PERCILO GONÇALVES\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:12.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:12.000000Z\", \"nome_contato\": null, \"razao_social\": \"OSMAR JOSÉ PIARAZO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"OSMAR JOSÉ PIARAZO\", \"telefone_contato\": null}}', '2021-01-08 11:11:12', '2021-01-08 11:11:12'),
(372, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 53, NULL, NULL, '{\"attributes\": {\"id\": 53, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"a2a4d6b7-5c6a-42b8-b114-8ab008e66b6c\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"007.514.231-73\", \"endereco\": \"AV. RIO VERDE, QBº, L25\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:12.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:12.000000Z\", \"nome_contato\": null, \"razao_social\": \"PAULO HENRIQUE DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"PAULO HENRIQUE DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:12', '2021-01-08 11:11:12'),
(373, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 54, NULL, NULL, '{\"attributes\": {\"id\": 54, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"1bb487da-9174-4624-a2be-03e1c8ea685d\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.853\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"003.375.331-80\", \"endereco\": \"AV. GOIÂNIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:12.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:12.000000Z\", \"nome_contato\": null, \"razao_social\": \"RICARDO LUIZ DE SOUZA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"RICARDO LUIZ DE SOUZA\", \"telefone_contato\": null}}', '2021-01-08 11:11:12', '2021-01-08 11:11:12'),
(374, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 55, NULL, NULL, '{\"attributes\": {\"id\": 55, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"7c0b1d7a-437c-42ff-87dd-0834c00cddc5\", \"email\": null, \"bairro\": \"OLIMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"185\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"319.073.851-34\", \"endereco\": \"R. CENTRAL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:12.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:12.000000Z\", \"nome_contato\": null, \"razao_social\": \"SEBASTIÃO ROBERTO ESTEVES DE FARIA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SEBASTIÃO ROBERTO ESTEVES DE FARIA\", \"telefone_contato\": null}}', '2021-01-08 11:11:13', '2021-01-08 11:11:13'),
(375, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 56, NULL, NULL, '{\"attributes\": {\"id\": 56, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"91078f17-8d5b-404e-bcc3-cef74cdcc8c1\", \"email\": null, \"bairro\": \"TROPICAL\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"786.358.101-04\", \"endereco\": \"RUA MADALENA CAMPOS DIAS, QD10 L 08\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:13.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:13.000000Z\", \"nome_contato\": null, \"razao_social\": \"SILVANIO DE SOUSA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SILVANIO DE SOUSA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:13', '2021-01-08 11:11:13'),
(376, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 57, NULL, NULL, '{\"attributes\": {\"id\": 57, \"cep\": \"75930000\", \"tipo\": \"FÍSICO\", \"uuid\": \"04272b0c-3312-4b23-ab95-890ea17fb519\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"MAURILÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"013.457.511-33\", \"endereco\": \"RUA. FRANCISCO SALLES DE ABREU SAMPAIO\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:13.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:13.000000Z\", \"nome_contato\": null, \"razao_social\": \"SIMAR MARTINS DE ANDRADE\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SIMAR MARTINS DE ANDRADE\", \"telefone_contato\": null}}', '2021-01-08 11:11:13', '2021-01-08 11:11:13'),
(377, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 58, NULL, NULL, '{\"attributes\": {\"id\": 58, \"cep\": \"74223052\", \"tipo\": \"JURÍDICO\", \"uuid\": \"2b1bbe7d-2070-4e20-89b9-08b91344874f\", \"email\": null, \"bairro\": \"BUENO\", \"cidade\": \"GOIÂNIA\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"31.913.059/0001-02\", \"endereco\": \"T 36 , Q 147/ L1/2\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:13.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:13.000000Z\", \"nome_contato\": null, \"razao_social\": \"SOFIS TRANSPORTADORA EIRELI\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SOFIS TRANSPORTADORA EIRELI\", \"telefone_contato\": null}}', '2021-01-08 11:11:13', '2021-01-08 11:11:13'),
(378, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 59, NULL, NULL, '{\"attributes\": {\"id\": 59, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"4983c127-9c03-454b-8ade-2db17ae9b957\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.509\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"008.245.281-40\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:13.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:13.000000Z\", \"nome_contato\": null, \"razao_social\": \"THIAGO DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"THIAGO DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:13', '2021-01-08 11:11:13'),
(379, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 60, NULL, NULL, '{\"attributes\": {\"id\": 60, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"e4ff1ed3-23ab-4148-9665-81818e38ccde\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2.106\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"036.844.351-55\", \"endereco\": \"AV. GOIÂNIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:13.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:13.000000Z\", \"nome_contato\": null, \"razao_social\": \"VINICIUS OLIVEIRA LEAL\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"VINICIUS OLIVEIRA LEAL\", \"telefone_contato\": null}}', '2021-01-08 11:11:14', '2021-01-08 11:11:14'),
(380, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 61, NULL, NULL, '{\"attributes\": {\"id\": 61, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"9401a36e-b94b-4525-a4ea-270bbd63e827\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.918\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"035.769.101-66\", \"endereco\": \"AV. BRASILIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:14.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:14.000000Z\", \"nome_contato\": null, \"razao_social\": \"WARLAN CANDIDO RODRIGUES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WARLAN CANDIDO RODRIGUES\", \"telefone_contato\": null}}', '2021-01-08 11:11:14', '2021-01-08 11:11:14'),
(381, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 62, NULL, NULL, '{\"attributes\": {\"id\": 62, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"4a8dcdf9-3a19-44d8-8baa-cb582a48fb8e\", \"email\": null, \"bairro\": \"ANDIRÁ\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"046.400.186-22\", \"endereco\": \"JOÃO INÁCIO, QD.07, LT.23\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:14.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:14.000000Z\", \"nome_contato\": null, \"razao_social\": \"WEDER MENDES DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WEDER MENDES DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:14', '2021-01-08 11:11:14'),
(382, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 63, NULL, NULL, '{\"attributes\": {\"id\": 63, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"b89cca23-880b-478d-bfcc-62811756cd76\", \"email\": null, \"bairro\": \"ANIBAL LIMA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"231\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"008.625.491-08\", \"endereco\": \"AV. DAS AMÉRICAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:14.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:14.000000Z\", \"nome_contato\": null, \"razao_social\": \"WENDER ESTEVES DE CARVALHO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WENDER ESTEVES DE CARVALHO\", \"telefone_contato\": null}}', '2021-01-08 11:11:14', '2021-01-08 11:11:14'),
(383, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 64, NULL, NULL, '{\"attributes\": {\"id\": 64, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"f85111a7-178d-4664-86a6-1112d567b7e9\", \"email\": null, \"bairro\": \"OLIMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"703\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"040.722.551-06\", \"endereco\": \"AV. TANCREDO RODRIGUES DA CUNHA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:14.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:14.000000Z\", \"nome_contato\": null, \"razao_social\": \"WODSON FERREIRA DE MOURA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WODSON FERREIRA DE MOURA\", \"telefone_contato\": null}}', '2021-01-08 11:11:14', '2021-01-08 11:11:14'),
(384, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 65, NULL, NULL, '{\"attributes\": {\"id\": 65, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"24910ad0-0095-425f-9f12-258bdc49b8db\", \"email\": null, \"bairro\": \"ANDIRÁ\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"188\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"014.510.401-05\", \"endereco\": \"AV. ABÍLIO DE FREITAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:15.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:15.000000Z\", \"nome_contato\": null, \"razao_social\": \"YEGO LOPES DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"YEGO LOPES DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:15', '2021-01-08 11:11:15'),
(385, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 66, NULL, NULL, '{\"attributes\": {\"id\": 66, \"cep\": \"86170000\", \"tipo\": \"FÍSICO\", \"uuid\": \"6994a6e8-6de3-4e94-a815-0b8701b9434e\", \"email\": null, \"bairro\": \"JARDIM CASA GRANDE\", \"cidade\": \"SERTANÓPOLIS\", \"estado\": \"PR\", \"numero\": \"21\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"040.927.439-98\", \"endereco\": \"RUA DAS VIOLETAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:15.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:11:15.000000Z\", \"nome_contato\": null, \"razao_social\": \"CARLOS ALGUSTO BEGTSOM NETO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CARLOS ALGUSTO BEGTSOM NETO\", \"telefone_contato\": null}}', '2021-01-08 11:11:15', '2021-01-08 11:11:15'),
(386, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 67, NULL, NULL, '{\"attributes\": {\"id\": 67, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"6d47278d-3468-4f62-b983-ea3266644767\", \"email\": null, \"bairro\": \"OLÍMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"367\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"011.654.781-29\", \"endereco\": \"AV.TRANCREDO RODRIGUES DA CUNHA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:15.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:11:15.000000Z\", \"nome_contato\": null, \"razao_social\": \"FABIO VERISSIMO DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FABIO VERISSIMO DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:15', '2021-01-08 11:11:15'),
(387, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 68, NULL, NULL, '{\"attributes\": {\"id\": 68, \"cep\": \"74020140\", \"tipo\": \"FÍSICO\", \"uuid\": \"747537a0-2d57-4fd2-a383-1fe051fa106e\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"GOIÂNIA\", \"estado\": \"GO\", \"numero\": \"962\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"301.663.576-34\", \"endereco\": \"NA RUA 20\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:15.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:11:15.000000Z\", \"nome_contato\": null, \"razao_social\": \"FRANCISCO DE ASSIS SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FRANCISCO DE ASSIS SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:11:15', '2021-01-08 11:11:15'),
(388, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 69, NULL, NULL, '{\"attributes\": {\"id\": 69, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"c06c5738-3c4a-4b44-ac43-591a28a8daee\", \"email\": null, \"bairro\": \"SANTO ANTONIO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2.249\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"642.925.921-87\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:15.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:11:15.000000Z\", \"nome_contato\": null, \"razao_social\": \"ITAMAR DOS REIS BELTODO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ITAMAR DOS REIS BELTODO\", \"telefone_contato\": null}}', '2021-01-08 11:11:15', '2021-01-08 11:11:15'),
(389, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 70, NULL, NULL, '{\"attributes\": {\"id\": 70, \"cep\": \"86170000\", \"tipo\": \"FÍSICO\", \"uuid\": \"b92b4678-ee32-416c-a17b-22dfba7bd8df\", \"email\": null, \"bairro\": \"CENTO\", \"cidade\": \"SERTANÓPOLIS\", \"estado\": \"PR\", \"numero\": \"72\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"437.775.469-68\", \"endereco\": \"RUA SERGIPE\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:16.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:11:16.000000Z\", \"nome_contato\": null, \"razao_social\": \"SÉRGIO MURILHO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SÉRGIO MURILHO\", \"telefone_contato\": null}}', '2021-01-08 11:11:16', '2021-01-08 11:11:16'),
(390, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 71, NULL, NULL, '{\"attributes\": {\"id\": 71, \"cep\": \"86170000\", \"tipo\": \"FÍSICO\", \"uuid\": \"b43c7976-9776-47b1-ae66-1ce61bf36aad\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"SERTANÓPOLIS\", \"estado\": \"PR\", \"numero\": \"795\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"639.363.809-53\", \"endereco\": \"RUA GOIÁS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:16.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:11:16.000000Z\", \"nome_contato\": null, \"razao_social\": \"WAGNER DENIVAL MARCON\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WAGNER DENIVAL MARCON\", \"telefone_contato\": null}}', '2021-01-08 11:11:16', '2021-01-08 11:11:16'),
(391, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 72, NULL, NULL, '{\"attributes\": {\"id\": 72, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"bfb29015-0cdb-43c5-b730-b51cbbef2a16\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1032\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"814.812.841-34\", \"endereco\": \"AV. GOIÁS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:16.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:11:16.000000Z\", \"nome_contato\": null, \"razao_social\": \"WESTER DIVINO PEREIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WESTER DIVINO PEREIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:16', '2021-01-08 11:11:16'),
(392, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 73, NULL, NULL, '{\"attributes\": {\"id\": 73, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"dea673bd-e281-4199-9336-baab096c93ca\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2775\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"369.174.191-68\", \"endereco\": \"AV. ABÍLIO JOSÉ DE FRETIAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:16.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:16.000000Z\", \"nome_contato\": null, \"razao_social\": \"GESMAR MARTINS SOBRINHO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"GESMAR BENE\", \"telefone_contato\": null}}', '2021-01-08 11:11:16', '2021-01-08 11:11:16'),
(393, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 74, NULL, NULL, '{\"attributes\": {\"id\": 74, \"cep\": \"75255000\", \"tipo\": \"FÍSICO\", \"uuid\": \"e075022d-781b-4a94-bff6-ea2e63c8af9a\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"MONTES CLARO\", \"estado\": \"GO\", \"numero\": \"776\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"27416682134\", \"endereco\": \"AV. PRESIDENTE VARGAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:16.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:16.000000Z\", \"nome_contato\": null, \"razao_social\": \"ELIZABETH LACERDA OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ELIZABETH LACERDA OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:16', '2021-01-08 11:11:16'),
(394, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 75, NULL, NULL, '{\"attributes\": {\"id\": 75, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"a5ec3d8b-7fad-4d8d-a9f4-8c37b15eba30\", \"email\": null, \"bairro\": \"ANIBAL LIMA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"327\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"021.892.941-26\", \"endereco\": \"AV. BARSIL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:17.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:17.000000Z\", \"nome_contato\": null, \"razao_social\": \"BRUNA LORENA SILVA GIOCONDO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"BRUNA LORENA SILVA GIOCONDO\", \"telefone_contato\": null}}', '2021-01-08 11:11:17', '2021-01-08 11:11:17'),
(395, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 76, NULL, NULL, '{\"attributes\": {\"id\": 76, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"db246d4d-8bfe-449a-be16-a4b6ae7a6edb\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1558\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"33606501153\", \"endereco\": \"AV. RIO VERDE\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:17.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:17.000000Z\", \"nome_contato\": null, \"razao_social\": \"WAGNER RODRIGUES DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WAGNER RODRIGUES DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:11:17', '2021-01-08 11:11:17'),
(396, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 77, NULL, NULL, '{\"attributes\": {\"id\": 77, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"1cac0c30-aac1-4a7f-8506-67bb4458e410\", \"email\": null, \"bairro\": \"ANDIRÁ\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"905.299.521-49\", \"endereco\": \"RUA JOSÉ BERNADES QD.2, LT.17\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:17.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:17.000000Z\", \"nome_contato\": null, \"razao_social\": \"IBRAIM LOPES DE LIMA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"IBRAIM LOPES DE LIMA\", \"telefone_contato\": null}}', '2021-01-08 11:11:17', '2021-01-08 11:11:17'),
(397, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 78, NULL, NULL, '{\"attributes\": {\"id\": 78, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"93a870ab-39ec-4c39-9c9c-6b0891da8216\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2188\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"270.285.391-34\", \"endereco\": \"AV. RIO VERDE\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:17.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:17.000000Z\", \"nome_contato\": null, \"razao_social\": \"BENEDITO MOISES PIERAZO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"BENEDITO MOISES PIERAZO\", \"telefone_contato\": null}}', '2021-01-08 11:11:17', '2021-01-08 11:11:17'),
(398, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 79, NULL, NULL, '{\"attributes\": {\"id\": 79, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"3887a91f-e716-47d6-a62f-91d135e01e8b\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"32131321321321\", \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:17.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:11:17.000000Z\", \"nome_contato\": null, \"razao_social\": \"MARCELO NELVIO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"MARCELO NELVIO\", \"telefone_contato\": null}}', '2021-01-08 11:11:18', '2021-01-08 11:11:18'),
(399, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 80, NULL, NULL, '{\"attributes\": {\"id\": 80, \"cep\": \"86706430\", \"tipo\": \"JURÍDICO\", \"uuid\": \"044f65da-9f87-48e1-ab47-ebd1b513e906\", \"email\": null, \"bairro\": \"PARQUE INDUSTRIAL IV\", \"cidade\": \"ARAPONGAS\", \"estado\": \"PR\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"75.263.400/0001-49\", \"endereco\": \"RODOVIA BR-369 SAÍDA PARA APUCARANA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:11:18.000000Z\", \"deleted_at\": null, \"finalidade\": \"INSUMOS\", \"updated_at\": \"2021-01-08T11:11:18.000000Z\", \"nome_contato\": \"RAFAEL\", \"razao_social\": \"NORTOX SA\", \"rg_inscricao\": \"6280053544\", \"email_contato\": null, \"nome_fantasia\": \"NORTOX\", \"telefone_contato\": null}}', '2021-01-08 11:11:18', '2021-01-08 11:11:18'),
(400, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"41d71b71-6cff-46ef-9d49-9c43975e9d54\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:50.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:13:50.000000Z\", \"nome_contato\": null, \"razao_social\": \"FAZENDA SANTA MARTHA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FAZENDA SANTA MARTHA\", \"telefone_contato\": null}}', '2021-01-08 11:13:50', '2021-01-08 11:13:50'),
(401, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"0a8c5c50-3933-4528-a373-17c7a3ad1664\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:50.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:13:50.000000Z\", \"nome_contato\": null, \"razao_social\": \"PAULO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"PAULO\", \"telefone_contato\": null}}', '2021-01-08 11:13:50', '2021-01-08 11:13:50'),
(402, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"dbeea51b-e46c-4d87-a6a3-90fe5dd86f2c\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:50.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:13:50.000000Z\", \"nome_contato\": null, \"razao_social\": \"CARGILL\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CARGILL\", \"telefone_contato\": null}}', '2021-01-08 11:13:50', '2021-01-08 11:13:50'),
(403, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"6bfddc45-2222-4d70-ab16-dca595395573\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:50.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:13:50.000000Z\", \"nome_contato\": null, \"razao_social\": \"AGROBOM\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"AGROBOM\", \"telefone_contato\": null}}', '2021-01-08 11:13:50', '2021-01-08 11:13:50'),
(404, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"82de8275-d08b-49f0-8d1c-f8fc3132b297\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:50.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:13:50.000000Z\", \"nome_contato\": null, \"razao_social\": \"CARAMURU\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CARAMURU\", \"telefone_contato\": null}}', '2021-01-08 11:13:51', '2021-01-08 11:13:51'),
(405, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 6, NULL, NULL, '{\"attributes\": {\"id\": 6, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"9cd02170-b3d4-433a-808b-921d62831d2d\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:51.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:13:51.000000Z\", \"nome_contato\": null, \"razao_social\": \"ADM\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ADM\", \"telefone_contato\": null}}', '2021-01-08 11:13:51', '2021-01-08 11:13:51'),
(406, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 7, NULL, NULL, '{\"attributes\": {\"id\": 7, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"2ff357fe-a8c5-4aff-ab1a-5a9b08c2ee94\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:51.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:13:51.000000Z\", \"nome_contato\": null, \"razao_social\": \"BAGEL\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"BAGEL\", \"telefone_contato\": null}}', '2021-01-08 11:13:51', '2021-01-08 11:13:51'),
(407, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 8, NULL, NULL, '{\"attributes\": {\"id\": 8, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"5fed250b-95d5-4210-879f-b7d05f2bb5d9\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": null, \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:51.000000Z\", \"deleted_at\": null, \"finalidade\": \"ARMAZÉNS GERAIS\", \"updated_at\": \"2021-01-08T11:13:51.000000Z\", \"nome_contato\": null, \"razao_social\": \"SABÁ\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SABÁ\", \"telefone_contato\": null}}', '2021-01-08 11:13:51', '2021-01-08 11:13:51'),
(408, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 9, NULL, NULL, '{\"attributes\": {\"id\": 9, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"675bbf71-3ba4-4bbe-a0f9-bdf598fb77e9\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2636\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"340.796.452-87\", \"endereco\": \"AV. GOIÁS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:51.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:51.000000Z\", \"nome_contato\": null, \"razao_social\": \"ABILIO JOSÉ DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ABILIO JOSÉ DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:13:51', '2021-01-08 11:13:51'),
(409, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 10, NULL, NULL, '{\"attributes\": {\"id\": 10, \"cep\": \"75570000\", \"tipo\": \"JURÍDICO\", \"uuid\": \"c0499c0f-905e-4c49-9ce2-d18adf02b08e\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"09.504.473/0001-73\", \"endereco\": \"RUA DOIS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:51.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:51.000000Z\", \"nome_contato\": null, \"razao_social\": \"ARG TRANSPORTES LTDA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ALDO RODRIGUES GUERRA\", \"telefone_contato\": null}}', '2021-01-08 11:13:52', '2021-01-08 11:13:52'),
(410, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 11, NULL, NULL, '{\"attributes\": {\"id\": 11, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"63d0b0e3-53ca-45a3-8d8d-c0eca9f09535\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"379\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"866.509.471-72\", \"endereco\": \"RUA.PROF(A) MARIA JOSÉ MIGUEL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:52.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:52.000000Z\", \"nome_contato\": null, \"razao_social\": \"ALEX ALVES DA COSTA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ALEX ALVES DA COSTA\", \"telefone_contato\": null}}', '2021-01-08 11:13:52', '2021-01-08 11:13:52');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(411, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 12, NULL, NULL, '{\"attributes\": {\"id\": 12, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"ed1eca13-7ec6-497a-a104-9e8f2a2e66cc\", \"email\": null, \"bairro\": \"MORADA NOVA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"032.440.731-90\", \"endereco\": \"Q 04 , L 129\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:52.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:52.000000Z\", \"nome_contato\": null, \"razao_social\": \"ALEX APARECIDO LOPES MARTINS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ALEX APARECIDO LOPES MARTINS\", \"telefone_contato\": null}}', '2021-01-08 11:13:52', '2021-01-08 11:13:52'),
(412, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 13, NULL, NULL, '{\"attributes\": {\"id\": 13, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"f1b86899-b17d-4d50-8542-485fed837762\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.670\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"220.140.121-72\", \"endereco\": \"AV. GOIÂNIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:52.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:52.000000Z\", \"nome_contato\": null, \"razao_social\": \"ANTÔNIO ALVES CUSTODIO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ANTÔNIO ALVES CUSTODIO\", \"telefone_contato\": null}}', '2021-01-08 11:13:52', '2021-01-08 11:13:52'),
(413, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 14, NULL, NULL, '{\"attributes\": {\"id\": 14, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"013f4e7b-797a-41f9-a7af-c2c3f5acd8ea\", \"email\": null, \"bairro\": \"BELA VISTA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"321.068.406-59\", \"endereco\": \"JOÃO GONÇALVES DIAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:52.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:52.000000Z\", \"nome_contato\": null, \"razao_social\": \"ANTÔNIO BRAZ PEREIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ANTÔNIO BRAZ PEREIRA\", \"telefone_contato\": null}}', '2021-01-08 11:13:52', '2021-01-08 11:13:52'),
(414, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 15, NULL, NULL, '{\"attributes\": {\"id\": 15, \"cep\": \"14700020\", \"tipo\": \"FÍSICO\", \"uuid\": \"c62768ab-724f-468d-926f-7f6f9350eeb9\", \"email\": null, \"bairro\": \"JD ALVORADA\", \"cidade\": \"BEBEDOURO\", \"estado\": \"SP\", \"numero\": \"1.371\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"396.334.568-35\", \"endereco\": \"RUA OSCAR AUGUSTO PEREIRA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:53.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:53.000000Z\", \"nome_contato\": null, \"razao_social\": \"CASSIO APARECIDO ALVES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CASSIO APARECIDO ALVES\", \"telefone_contato\": null}}', '2021-01-08 11:13:53', '2021-01-08 11:13:53'),
(415, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 16, NULL, NULL, '{\"attributes\": {\"id\": 16, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"20b91b3b-168a-44a7-b576-cb25a386f4b7\", \"email\": null, \"bairro\": null, \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"660.244.711-49\", \"endereco\": \"CRUZEIRO DO SUL L74, Q 04\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:53.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:53.000000Z\", \"nome_contato\": null, \"razao_social\": \"CELSO MARTINS DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CELSO MARTINS DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:13:53', '2021-01-08 11:13:53'),
(416, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 17, NULL, NULL, '{\"attributes\": {\"id\": 17, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"5e01e253-8134-4541-b56c-2be0ce2cf64a\", \"email\": null, \"bairro\": \"MORADA NOVA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"587.560.191-49\", \"endereco\": \"RUA. PERCILIO OLIVEIRA GONÇALVES / Q05, L 110\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:53.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:53.000000Z\", \"nome_contato\": null, \"razao_social\": \"CICERO SALDANHA DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CICERO SALDANHA DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:13:53', '2021-01-08 11:13:53'),
(417, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 18, NULL, NULL, '{\"attributes\": {\"id\": 18, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"41abccb6-33e4-4c08-b02d-2b563c7238a0\", \"email\": null, \"bairro\": \"DONA ELEONTINA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"232\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"190.578.731-68\", \"endereco\": \"RUA JOSÉ MALAQUIAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:53.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:53.000000Z\", \"nome_contato\": null, \"razao_social\": \"CICERO SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CICERO SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:13:53', '2021-01-08 11:13:53'),
(418, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 19, NULL, NULL, '{\"attributes\": {\"id\": 19, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"4d90ced1-8462-4f22-b219-263a3be0bd82\", \"email\": null, \"bairro\": \"ANDIRA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"186\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"280.673.041-49\", \"endereco\": \"AV. ABÍLIO\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:53.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:53.000000Z\", \"nome_contato\": null, \"razao_social\": \"CICERO TAVARES DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CICERO TAVARES DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:13:53', '2021-01-08 11:13:53'),
(419, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 20, NULL, NULL, '{\"attributes\": {\"id\": 20, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"b26ebb88-0a7a-44b3-a2cd-ddceabf9548f\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"312\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"876.463.231-87\", \"endereco\": \"RUA.PORF(A) MARIA JOSÉ MIGUEL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:54.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:54.000000Z\", \"nome_contato\": null, \"razao_social\": \"DENIS MAURICIO LEMBI\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"DENIS MAURICIO LEMBI\", \"telefone_contato\": null}}', '2021-01-08 11:13:54', '2021-01-08 11:13:54'),
(420, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 21, NULL, NULL, '{\"attributes\": {\"id\": 21, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"3bc8bdb3-d313-4dfe-9597-8a0ec5849c9d\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.509\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"032.167.021-38\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:54.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:54.000000Z\", \"nome_contato\": null, \"razao_social\": \"DIEGO DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"DIEGO DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:13:54', '2021-01-08 11:13:54'),
(421, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 22, NULL, NULL, '{\"attributes\": {\"id\": 22, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"97a5cfcb-7e90-4ed1-88f4-bfadf1f4fa2c\", \"email\": null, \"bairro\": \"MORADA NOVA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"047.840.561-81\", \"endereco\": \"AV.ABILIO JOSÉ DE FREITAS, Q11, L 195\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:54.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:54.000000Z\", \"nome_contato\": null, \"razao_social\": \"DIONES MENEZES GOMES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"DIONES MENEZES GOMES\", \"telefone_contato\": null}}', '2021-01-08 11:13:54', '2021-01-08 11:13:54'),
(422, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 23, NULL, NULL, '{\"attributes\": {\"id\": 23, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"d8f0a57b-b622-46da-8628-99800843e6c0\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"AV. RIO VERDE\", \"estado\": \"GO\", \"numero\": \"1.338\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"026.392.811-00\", \"endereco\": \"AV. RIO VERDE\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:54.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:54.000000Z\", \"nome_contato\": null, \"razao_social\": \"EDUARDO ANTÔNIO ALVES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"EDUARDO ANTÔNIO ALVES\", \"telefone_contato\": null}}', '2021-01-08 11:13:54', '2021-01-08 11:13:54'),
(423, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 24, NULL, NULL, '{\"attributes\": {\"id\": 24, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"9cd93a9f-82dc-4be8-b2e5-34a7e2d9b39e\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2.364\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"612.444.141-15\", \"endereco\": \"AV. GOIÁS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:55.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:55.000000Z\", \"nome_contato\": null, \"razao_social\": \"EMERSON ALVES JUSTINO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"EMERSON ALVES JUSTINO\", \"telefone_contato\": null}}', '2021-01-08 11:13:55', '2021-01-08 11:13:55'),
(424, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 25, NULL, NULL, '{\"attributes\": {\"id\": 25, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"ffbb2491-4d9c-409d-a6f8-7b4caf4549df\", \"email\": null, \"bairro\": \"ANDIRÁ\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"191.996.818-03\", \"endereco\": \"RUA. FLORIANA FERREIRA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:55.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:55.000000Z\", \"nome_contato\": null, \"razao_social\": \"EMERSON DE MORAES CESAR\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"EMERSON DE MORAES CESAR\", \"telefone_contato\": null}}', '2021-01-08 11:13:55', '2021-01-08 11:13:55'),
(425, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 26, NULL, NULL, '{\"attributes\": {\"id\": 26, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"b13c2512-9adf-4aa4-9dea-765921026eaa\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.825\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"009.267.741-07\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:55.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:55.000000Z\", \"nome_contato\": null, \"razao_social\": \"ETELVINO ALCÂNTARA SILVA NETO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ETELVINO ALCÂNTARA SILVA NETO\", \"telefone_contato\": null}}', '2021-01-08 11:13:55', '2021-01-08 11:13:55'),
(426, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 27, NULL, NULL, '{\"attributes\": {\"id\": 27, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"77e15db1-612e-4ff8-8ef0-37b3db380fef\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.906\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"932.937.981-87\", \"endereco\": \"AV. BARSILIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:55.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:55.000000Z\", \"nome_contato\": null, \"razao_social\": \"EURÍPEDES MARTINS DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"EURÍPEDES MARTINS DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:13:55', '2021-01-08 11:13:55'),
(427, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 28, NULL, NULL, '{\"attributes\": {\"id\": 28, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"ab7503ab-4f43-4f7b-8b2c-d141aab11152\", \"email\": null, \"bairro\": \"BAIRRO OLÍMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"261\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"827.663.551-20\", \"endereco\": \"AV. TOCANTINS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:55.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:55.000000Z\", \"nome_contato\": null, \"razao_social\": \"FABIANO CASSIMIRO DOS SANTOS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FABIANO CASSIMIRO DOS SANTOS\", \"telefone_contato\": null}}', '2021-01-08 11:13:56', '2021-01-08 11:13:56'),
(428, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 29, NULL, NULL, '{\"attributes\": {\"id\": 29, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"043f5db2-fd16-4386-8756-bee206c1ee87\", \"email\": null, \"bairro\": \"ANIBAL LIMA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"219\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"623.862.471-04\", \"endereco\": \"AV. BRASIL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:56.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:56.000000Z\", \"nome_contato\": null, \"razao_social\": \"FABIANO SOUZA TERRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FABIANO SOUZA TERRA\", \"telefone_contato\": null}}', '2021-01-08 11:13:56', '2021-01-08 11:13:56'),
(429, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 30, NULL, NULL, '{\"attributes\": {\"id\": 30, \"cep\": \"75970000\", \"tipo\": \"FÍSICO\", \"uuid\": \"59da3ad8-9bfa-4702-8b15-c76db59738b0\", \"email\": null, \"bairro\": \"DONA CONSTANCIA\", \"cidade\": \"TURVELÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"288.372.901-87\", \"endereco\": \"RUA. ADIVERTINO JOSÉ VIEIRA, Q4, L12\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:56.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:56.000000Z\", \"nome_contato\": null, \"razao_social\": \"FRANCISCO SANTANA  DOS SANTOS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FRANCISCO SANTANA  DOS SANTOS\", \"telefone_contato\": null}}', '2021-01-08 11:13:56', '2021-01-08 11:13:56'),
(430, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 31, NULL, NULL, '{\"attributes\": {\"id\": 31, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"33b247fb-8803-4cf3-b276-0ccc2743c6fd\", \"email\": null, \"bairro\": \"ALVORADA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"634\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"435.178.896-87\", \"endereco\": \"AV. PRESIDENTE VARGAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:56.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:56.000000Z\", \"nome_contato\": null, \"razao_social\": \"GILMAR PEREIRA DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"GILMAR PEREIRA DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:13:56', '2021-01-08 11:13:56'),
(431, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 32, NULL, NULL, '{\"attributes\": {\"id\": 32, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"d2697142-f910-46c1-85ef-bf9950ed577c\", \"email\": null, \"bairro\": \"OLIMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"736\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"292.585.611-04\", \"endereco\": \"AV. FREDERICO SARAIVA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:56.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:56.000000Z\", \"nome_contato\": null, \"razao_social\": \"IVAN GONÇALVES DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"IVAN GONÇALVES DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:13:56', '2021-01-08 11:13:56'),
(432, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 33, NULL, NULL, '{\"attributes\": {\"id\": 33, \"cep\": \"75930000\", \"tipo\": \"FÍSICO\", \"uuid\": \"89ff85b1-94f5-49eb-89c0-d81f291de69b\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"MAURILÂNDIA\", \"estado\": \"GO\", \"numero\": \"68\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"009.261.221-00\", \"endereco\": \"Rua. OLIMPIO CARVALHO DE SOUSA, Q10, L08\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:57.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:57.000000Z\", \"nome_contato\": null, \"razao_social\": \"JEAN CARLOS DE GOIS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JEAN CARLOS DE GOIS\", \"telefone_contato\": null}}', '2021-01-08 11:13:57', '2021-01-08 11:13:57'),
(433, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 34, NULL, NULL, '{\"attributes\": {\"id\": 34, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"656be0f8-37fc-40b3-b482-abe28d1bc7c8\", \"email\": null, \"bairro\": \"ANIBAL LIMA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"224\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"211.046.466-68\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:57.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:57.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOÃO BATISTA GONÇALVES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOÃO BATISTA GONÇALVES\", \"telefone_contato\": null}}', '2021-01-08 11:13:57', '2021-01-08 11:13:57'),
(434, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 35, NULL, NULL, '{\"attributes\": {\"id\": 35, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"6a866bbc-f0bb-4109-b5b5-df950a18b49a\", \"email\": null, \"bairro\": \"DONA JOSINA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"103\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"477.290.401-82\", \"endereco\": \"RUA QUIRINOPOLIS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:57.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:57.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOÃO BATISTA SILVA LOPES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOÃO BATISTA SILVA LOPES\", \"telefone_contato\": null}}', '2021-01-08 11:13:57', '2021-01-08 11:13:57'),
(435, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 36, NULL, NULL, '{\"attributes\": {\"id\": 36, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"3c303a82-f3ce-49ad-94be-eef6df89b37e\", \"email\": null, \"bairro\": \"ANÍBAL LIMA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"105\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"168.373.121-20\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:57.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:57.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOAQUIM JOSÉ PEREIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOAQUIM JOSÉ PEREIRA\", \"telefone_contato\": null}}', '2021-01-08 11:13:57', '2021-01-08 11:13:57'),
(436, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 37, NULL, NULL, '{\"attributes\": {\"id\": 37, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"9a862462-1f9a-4be8-8c4f-dc74fa11fc33\", \"email\": null, \"bairro\": \"VILA OPERARIA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.286\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"419.530.881-04\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:57.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:57.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOSÉ ÉLCIO FRANCISCO DAS CHAGAS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOSÉ ÉLCIO FRANCISCO DAS CHAGAS\", \"telefone_contato\": null}}', '2021-01-08 11:13:58', '2021-01-08 11:13:58'),
(437, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 38, NULL, NULL, '{\"attributes\": {\"id\": 38, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"979b3692-79d3-4ed1-9ebe-fa134ea08093\", \"email\": null, \"bairro\": \"TROPICAL\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"219.668.501-15\", \"endereco\": \"AV. MADALENE DIAS CAMPOS, QD21, LT 01\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:58.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:58.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOSÉ MARIM DOS REIS PIRES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOSÉ MARIM DOS REIS PIRES\", \"telefone_contato\": null}}', '2021-01-08 11:13:58', '2021-01-08 11:13:58'),
(438, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 39, NULL, NULL, '{\"attributes\": {\"id\": 39, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"95e626e9-10c4-4162-b6eb-0e9ad08bcf5e\", \"email\": null, \"bairro\": \"ALVORADA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"133.736.681-15\", \"endereco\": \"AV. SETE DE NOVEMBRO\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:58.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:58.000000Z\", \"nome_contato\": null, \"razao_social\": \"JOSÉ PEREIRA ARAÚJO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JOSÉ PEREIRA ARAÚJO\", \"telefone_contato\": null}}', '2021-01-08 11:13:58', '2021-01-08 11:13:58'),
(439, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 40, NULL, NULL, '{\"attributes\": {\"id\": 40, \"cep\": \"75930000\", \"tipo\": \"FÍSICO\", \"uuid\": \"6f3c869a-4c6e-4a92-8be7-b636242a2a25\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"MARILÂNDIA\", \"estado\": \"GO\", \"numero\": \"85\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"849.632.711-68\", \"endereco\": \"AV. AMAZONAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:58.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:58.000000Z\", \"nome_contato\": null, \"razao_social\": \"JUNIO CESAR GOMES DO NASCIMENTO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"JUNIO CESAR GOMES DO NASCIMENTO\", \"telefone_contato\": null}}', '2021-01-08 11:13:58', '2021-01-08 11:13:58'),
(440, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 41, NULL, NULL, '{\"attributes\": {\"id\": 41, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"da3899fa-dca4-4fa3-a75b-ce77bbe85583\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"514\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"375.377.251-87\", \"endereco\": \"AV. PRESIDENTE VARGAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:58.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:58.000000Z\", \"nome_contato\": null, \"razao_social\": \"LEOPOLDINO BORGES ROSA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"LEOPOLDINO BORGES ROSA\", \"telefone_contato\": null}}', '2021-01-08 11:13:58', '2021-01-08 11:13:58'),
(441, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 42, NULL, NULL, '{\"attributes\": {\"id\": 42, \"cep\": \"1470020\", \"tipo\": \"FÍSICO\", \"uuid\": \"7512348c-7fb1-46b4-a5fb-3328516b6fe0\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"BEBEDOURO\", \"estado\": \"SP\", \"numero\": \"1.292\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"255.812.5088-71\", \"endereco\": \"ALAMEDA PAULO CESAR FIGUEIREDO\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:59.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:59.000000Z\", \"nome_contato\": null, \"razao_social\": \"MARCELO DE SOUZA MATHIAS\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"MARCELO DE SOUZA MATHIAS\", \"telefone_contato\": null}}', '2021-01-08 11:13:59', '2021-01-08 11:13:59'),
(442, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 43, NULL, NULL, '{\"attributes\": {\"id\": 43, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"6a784048-20a2-459c-bcd5-1c382bb3fab4\", \"email\": null, \"bairro\": \"OLIMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"433\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"986.693.116.15\", \"endereco\": \"AV. ARAGUAIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:59.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:59.000000Z\", \"nome_contato\": null, \"razao_social\": \"MARCELO FERREIRA DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"MARCELO FERREIRA DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:13:59', '2021-01-08 11:13:59'),
(443, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 44, NULL, NULL, '{\"attributes\": {\"id\": 44, \"cep\": \"14870400\", \"tipo\": \"FÍSICO\", \"uuid\": \"5e3b1de1-7784-4660-96b1-9aa262843880\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"JABOTICABAL\", \"estado\": \"SP\", \"numero\": \"137\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"020.538.418-85\", \"endereco\": \"RUA. MIZAEL DE CAMPOS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:59.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:59.000000Z\", \"nome_contato\": null, \"razao_social\": \"NELVIO DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"NELVIO DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:13:59', '2021-01-08 11:13:59'),
(444, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 45, NULL, NULL, '{\"attributes\": {\"id\": 45, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"34541425-d0f6-4334-8ead-140432f3cb21\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.825\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"003.043.061-50\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:59.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:59.000000Z\", \"nome_contato\": null, \"razao_social\": \"MARCIO ALCÂNTARA DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"MARCIO ALCÂNTARA DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:13:59', '2021-01-08 11:13:59'),
(445, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 46, NULL, NULL, '{\"attributes\": {\"id\": 46, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"8de6c068-b5cd-4fbe-98a6-919679e8aa86\", \"email\": null, \"bairro\": \"OLIMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"373\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"499.658.751-20\", \"endereco\": \"AV. ARAGUAIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:13:59.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:13:59.000000Z\", \"nome_contato\": null, \"razao_social\": \"MARCOS ANTÔNIO DE SOUSA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"MARCOS ANTÔNIO DE SOUSA\", \"telefone_contato\": null}}', '2021-01-08 11:14:00', '2021-01-08 11:14:00'),
(446, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 47, NULL, NULL, '{\"attributes\": {\"id\": 47, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"1a8f3db9-1cef-4af6-8a3f-39fcb5061102\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.681\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"491.200.691-20\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:00.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:00.000000Z\", \"nome_contato\": null, \"razao_social\": \"NAILTON BATISTA DE ARAÚJO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"NAILTON BATISTA DE ARAÚJO\", \"telefone_contato\": null}}', '2021-01-08 11:14:00', '2021-01-08 11:14:00'),
(447, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 48, NULL, NULL, '{\"attributes\": {\"id\": 48, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"1fa1c0a5-69cd-42e6-a823-15754d53f8a9\", \"email\": null, \"bairro\": \"ALVORADA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"281.847.241-68\", \"endereco\": \"AV. JOÃO RODRIGUES DA CUNHA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:00.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:00.000000Z\", \"nome_contato\": null, \"razao_social\": \"NATANAEL SOARES MARQUES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"NATANAEL SOARES MARQUES\", \"telefone_contato\": null}}', '2021-01-08 11:14:00', '2021-01-08 11:14:00'),
(448, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 49, NULL, NULL, '{\"attributes\": {\"id\": 49, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"1e95420b-cf55-4591-8ce3-83c2efc57698\", \"email\": null, \"bairro\": \"ALVORADA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"118\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"167.804.341-91\", \"endereco\": \"AV. JK\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:00.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:00.000000Z\", \"nome_contato\": null, \"razao_social\": \"OLAVO FERREIRA DE MOURA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"OLAVO FERREIRA DE MOURA\", \"telefone_contato\": null}}', '2021-01-08 11:14:00', '2021-01-08 11:14:00'),
(449, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 50, NULL, NULL, '{\"attributes\": {\"id\": 50, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"3fec98c1-10b9-417f-8bf2-b7030c27259c\", \"email\": null, \"bairro\": \"ALVORADA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"320\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"271.468.471-87\", \"endereco\": \"AV. BRASIL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:00.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:00.000000Z\", \"nome_contato\": null, \"razao_social\": \"ONEIDES FERREIRA DE MOURA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ONEIDES FERREIRA DE MOURA\", \"telefone_contato\": null}}', '2021-01-08 11:14:01', '2021-01-08 11:14:01'),
(450, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 51, NULL, NULL, '{\"attributes\": {\"id\": 51, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"44a9f54a-328c-4a96-83e2-c298e0522f5e\", \"email\": null, \"bairro\": \"MORADA NOVA\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"132\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"472.879.501-20\", \"endereco\": \"RUA.PERCILO GONÇALVES\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:01.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:01.000000Z\", \"nome_contato\": null, \"razao_social\": \"OSMAR JOSÉ PIARAZO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"OSMAR JOSÉ PIARAZO\", \"telefone_contato\": null}}', '2021-01-08 11:14:01', '2021-01-08 11:14:01'),
(451, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 52, NULL, NULL, '{\"attributes\": {\"id\": 52, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"524d4845-b23f-4d97-b2fd-0823a37cbccb\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"007.514.231-73\", \"endereco\": \"AV. RIO VERDE, QBº, L25\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:01.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:01.000000Z\", \"nome_contato\": null, \"razao_social\": \"PAULO HENRIQUE DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"PAULO HENRIQUE DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:14:01', '2021-01-08 11:14:01'),
(452, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 53, NULL, NULL, '{\"attributes\": {\"id\": 53, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"120e882c-8eb8-4e06-8ff5-ae767edd8feb\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.853\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"003.375.331-80\", \"endereco\": \"AV. GOIÂNIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:01.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:01.000000Z\", \"nome_contato\": null, \"razao_social\": \"RICARDO LUIZ DE SOUZA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"RICARDO LUIZ DE SOUZA\", \"telefone_contato\": null}}', '2021-01-08 11:14:01', '2021-01-08 11:14:01'),
(453, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 54, NULL, NULL, '{\"attributes\": {\"id\": 54, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"e53b2a82-6487-44ba-9498-b4ef61f5d8dd\", \"email\": null, \"bairro\": \"OLIMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"185\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"319.073.851-34\", \"endereco\": \"R. CENTRAL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:01.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:01.000000Z\", \"nome_contato\": null, \"razao_social\": \"SEBASTIÃO ROBERTO ESTEVES DE FARIA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SEBASTIÃO ROBERTO ESTEVES DE FARIA\", \"telefone_contato\": null}}', '2021-01-08 11:14:01', '2021-01-08 11:14:01'),
(454, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 55, NULL, NULL, '{\"attributes\": {\"id\": 55, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"121431f7-2d20-4786-97fc-14229ba1074a\", \"email\": null, \"bairro\": \"TROPICAL\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"786.358.101-04\", \"endereco\": \"RUA MADALENA CAMPOS DIAS, QD10 L 08\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:01.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:01.000000Z\", \"nome_contato\": null, \"razao_social\": \"SILVANIO DE SOUSA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SILVANIO DE SOUSA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:14:02', '2021-01-08 11:14:02'),
(455, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 56, NULL, NULL, '{\"attributes\": {\"id\": 56, \"cep\": \"75930000\", \"tipo\": \"FÍSICO\", \"uuid\": \"e6550cae-4897-47c7-9b13-b5c9d92d21ef\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"MAURILÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"013.457.511-33\", \"endereco\": \"RUA. FRANCISCO SALLES DE ABREU SAMPAIO\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:02.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:02.000000Z\", \"nome_contato\": null, \"razao_social\": \"SIMAR MARTINS DE ANDRADE\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SIMAR MARTINS DE ANDRADE\", \"telefone_contato\": null}}', '2021-01-08 11:14:02', '2021-01-08 11:14:02'),
(456, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 57, NULL, NULL, '{\"attributes\": {\"id\": 57, \"cep\": \"74223052\", \"tipo\": \"JURÍDICO\", \"uuid\": \"dd5bca9e-3e8f-4dd6-a2be-8d3c60034f09\", \"email\": null, \"bairro\": \"BUENO\", \"cidade\": \"GOIÂNIA\", \"estado\": \"GO\", \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"31.913.059/0001-02\", \"endereco\": \"T 36 , Q 147/ L1/2\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:02.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:02.000000Z\", \"nome_contato\": null, \"razao_social\": \"SOFIS TRANSPORTADORA EIRELI\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SOFIS TRANSPORTADORA EIRELI\", \"telefone_contato\": null}}', '2021-01-08 11:14:02', '2021-01-08 11:14:02'),
(457, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 58, NULL, NULL, '{\"attributes\": {\"id\": 58, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"225ec7cb-5400-4430-996c-94e48eff4d3e\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.509\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"008.245.281-40\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:02.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:02.000000Z\", \"nome_contato\": null, \"razao_social\": \"THIAGO DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"THIAGO DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:14:02', '2021-01-08 11:14:02'),
(458, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 59, NULL, NULL, '{\"attributes\": {\"id\": 59, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"85fcc823-8704-4a02-9f63-3cb1b1505405\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2.106\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"036.844.351-55\", \"endereco\": \"AV. GOIÂNIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:02.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:02.000000Z\", \"nome_contato\": null, \"razao_social\": \"VINICIUS OLIVEIRA LEAL\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"VINICIUS OLIVEIRA LEAL\", \"telefone_contato\": null}}', '2021-01-08 11:14:03', '2021-01-08 11:14:03'),
(459, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 60, NULL, NULL, '{\"attributes\": {\"id\": 60, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"6a90e44e-ff54-4386-86e5-226d9dd1823e\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1.918\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"035.769.101-66\", \"endereco\": \"AV. BRASILIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:03.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:03.000000Z\", \"nome_contato\": null, \"razao_social\": \"WARLAN CANDIDO RODRIGUES\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WARLAN CANDIDO RODRIGUES\", \"telefone_contato\": null}}', '2021-01-08 11:14:03', '2021-01-08 11:14:03'),
(460, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 61, NULL, NULL, '{\"attributes\": {\"id\": 61, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"37cda2b2-7d70-49a4-ad8c-4118e16deedc\", \"email\": null, \"bairro\": \"ANDIRÁ\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"046.400.186-22\", \"endereco\": \"JOÃO INÁCIO, QD.07, LT.23\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:03.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:03.000000Z\", \"nome_contato\": null, \"razao_social\": \"WEDER MENDES DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WEDER MENDES DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:14:03', '2021-01-08 11:14:03'),
(461, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 62, NULL, NULL, '{\"attributes\": {\"id\": 62, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"6660b29e-c487-4814-8fe0-150729afe7fe\", \"email\": null, \"bairro\": \"ANIBAL LIMA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"231\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"008.625.491-08\", \"endereco\": \"AV. DAS AMÉRICAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:03.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:03.000000Z\", \"nome_contato\": null, \"razao_social\": \"WENDER ESTEVES DE CARVALHO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WENDER ESTEVES DE CARVALHO\", \"telefone_contato\": null}}', '2021-01-08 11:14:03', '2021-01-08 11:14:03'),
(462, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 63, NULL, NULL, '{\"attributes\": {\"id\": 63, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"5299460c-d358-4a92-9dfc-105ce1459028\", \"email\": null, \"bairro\": \"OLIMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"703\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"040.722.551-06\", \"endereco\": \"AV. TANCREDO RODRIGUES DA CUNHA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:03.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:03.000000Z\", \"nome_contato\": null, \"razao_social\": \"WODSON FERREIRA DE MOURA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WODSON FERREIRA DE MOURA\", \"telefone_contato\": null}}', '2021-01-08 11:14:03', '2021-01-08 11:14:03'),
(463, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 64, NULL, NULL, '{\"attributes\": {\"id\": 64, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"01d9d991-f619-4650-9ae6-3b2eb3afee9e\", \"email\": null, \"bairro\": \"ANDIRÁ\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"188\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"014.510.401-05\", \"endereco\": \"AV. ABÍLIO DE FREITAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"YEGO LOPES DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"YEGO LOPES DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:14:04', '2021-01-08 11:14:04'),
(464, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 65, NULL, NULL, '{\"attributes\": {\"id\": 65, \"cep\": \"86170000\", \"tipo\": \"FÍSICO\", \"uuid\": \"9041f1f9-7b2b-4e49-ab04-782d9edd28a7\", \"email\": null, \"bairro\": \"JARDIM CASA GRANDE\", \"cidade\": \"SERTANÓPOLIS\", \"estado\": \"PR\", \"numero\": \"21\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"040.927.439-98\", \"endereco\": \"RUA DAS VIOLETAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:14:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"CARLOS ALGUSTO BEGTSOM NETO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"CARLOS ALGUSTO BEGTSOM NETO\", \"telefone_contato\": null}}', '2021-01-08 11:14:04', '2021-01-08 11:14:04'),
(465, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 66, NULL, NULL, '{\"attributes\": {\"id\": 66, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"683031b5-08f5-4904-b958-23c38327a67c\", \"email\": null, \"bairro\": \"OLÍMPIA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"367\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"011.654.781-29\", \"endereco\": \"AV.TRANCREDO RODRIGUES DA CUNHA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:14:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"FABIO VERISSIMO DA SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FABIO VERISSIMO DA SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:14:04', '2021-01-08 11:14:04'),
(466, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 67, NULL, NULL, '{\"attributes\": {\"id\": 67, \"cep\": \"74020140\", \"tipo\": \"FÍSICO\", \"uuid\": \"36b6a4d4-14c9-4563-8ce5-0b0add964387\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"GOIÂNIA\", \"estado\": \"GO\", \"numero\": \"962\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"301.663.576-34\", \"endereco\": \"NA RUA 20\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:14:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"FRANCISCO DE ASSIS SILVA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"FRANCISCO DE ASSIS SILVA\", \"telefone_contato\": null}}', '2021-01-08 11:14:04', '2021-01-08 11:14:04');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(467, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 68, NULL, NULL, '{\"attributes\": {\"id\": 68, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"bc7d1a9a-17f5-48ce-bc8b-e3f59837b6e8\", \"email\": null, \"bairro\": \"SANTO ANTONIO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2.249\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"642.925.921-87\", \"endereco\": \"AV. BRASÍLIA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:04.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:14:04.000000Z\", \"nome_contato\": null, \"razao_social\": \"ITAMAR DOS REIS BELTODO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ITAMAR DOS REIS BELTODO\", \"telefone_contato\": null}}', '2021-01-08 11:14:04', '2021-01-08 11:14:04'),
(468, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 69, NULL, NULL, '{\"attributes\": {\"id\": 69, \"cep\": \"86170000\", \"tipo\": \"FÍSICO\", \"uuid\": \"ac48f86e-d6f7-42c6-97a6-5389664b590d\", \"email\": null, \"bairro\": \"CENTO\", \"cidade\": \"SERTANÓPOLIS\", \"estado\": \"PR\", \"numero\": \"72\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"437.775.469-68\", \"endereco\": \"RUA SERGIPE\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:05.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:14:05.000000Z\", \"nome_contato\": null, \"razao_social\": \"SÉRGIO MURILHO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"SÉRGIO MURILHO\", \"telefone_contato\": null}}', '2021-01-08 11:14:05', '2021-01-08 11:14:05'),
(469, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 70, NULL, NULL, '{\"attributes\": {\"id\": 70, \"cep\": \"86170000\", \"tipo\": \"FÍSICO\", \"uuid\": \"c301cfa8-7324-4ecc-834e-3274574c8039\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"SERTANÓPOLIS\", \"estado\": \"PR\", \"numero\": \"795\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"639.363.809-53\", \"endereco\": \"RUA GOIÁS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:05.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:14:05.000000Z\", \"nome_contato\": null, \"razao_social\": \"WAGNER DENIVAL MARCON\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WAGNER DENIVAL MARCON\", \"telefone_contato\": null}}', '2021-01-08 11:14:05', '2021-01-08 11:14:05'),
(470, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 71, NULL, NULL, '{\"attributes\": {\"id\": 71, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"fcdd33ac-0d4f-432e-865b-132bc2fa5b35\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1032\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"814.812.841-34\", \"endereco\": \"AV. GOIÁS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:05.000000Z\", \"deleted_at\": null, \"finalidade\": \"COLHEDOR\", \"updated_at\": \"2021-01-08T11:14:05.000000Z\", \"nome_contato\": null, \"razao_social\": \"WESTER DIVINO PEREIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WESTER DIVINO PEREIRA\", \"telefone_contato\": null}}', '2021-01-08 11:14:05', '2021-01-08 11:14:05'),
(471, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 72, NULL, NULL, '{\"attributes\": {\"id\": 72, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"64fbfb5b-0ea8-4e46-aeaf-03de733fc225\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2775\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"369.174.191-68\", \"endereco\": \"AV. ABÍLIO JOSÉ DE FRETIAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:05.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:05.000000Z\", \"nome_contato\": null, \"razao_social\": \"GESMAR MARTINS SOBRINHO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"GESMAR BENE\", \"telefone_contato\": null}}', '2021-01-08 11:14:05', '2021-01-08 11:14:05'),
(472, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 73, NULL, NULL, '{\"attributes\": {\"id\": 73, \"cep\": \"75255000\", \"tipo\": \"FÍSICO\", \"uuid\": \"5fb58ee9-29c2-434f-99c8-263a74a52aad\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"MONTES CLARO\", \"estado\": \"GO\", \"numero\": \"776\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"27416682134\", \"endereco\": \"AV. PRESIDENTE VARGAS\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:06.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:06.000000Z\", \"nome_contato\": null, \"razao_social\": \"ELIZABETH LACERDA OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"ELIZABETH LACERDA OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:14:06', '2021-01-08 11:14:06'),
(473, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 74, NULL, NULL, '{\"attributes\": {\"id\": 74, \"cep\": \"75570000\", \"tipo\": \"FÍSICO\", \"uuid\": \"36d96751-eb92-4254-845c-9cbd7328d193\", \"email\": null, \"bairro\": \"ANIBAL LIMA\", \"cidade\": \"BOM JESUS\", \"estado\": \"GO\", \"numero\": \"327\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"021.892.941-26\", \"endereco\": \"AV. BARSIL\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:06.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:06.000000Z\", \"nome_contato\": null, \"razao_social\": \"BRUNA LORENA SILVA GIOCONDO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"BRUNA LORENA SILVA GIOCONDO\", \"telefone_contato\": null}}', '2021-01-08 11:14:06', '2021-01-08 11:14:06'),
(474, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 75, NULL, NULL, '{\"attributes\": {\"id\": 75, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"cd3bcd38-d823-42da-a80a-3f18898980db\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"1558\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"33606501153\", \"endereco\": \"AV. RIO VERDE\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:06.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:06.000000Z\", \"nome_contato\": null, \"razao_social\": \"WAGNER RODRIGUES DE OLIVEIRA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"WAGNER RODRIGUES DE OLIVEIRA\", \"telefone_contato\": null}}', '2021-01-08 11:14:06', '2021-01-08 11:14:06'),
(475, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 76, NULL, NULL, '{\"attributes\": {\"id\": 76, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"2a1548c4-cc38-46d7-8d98-2bee41477cc4\", \"email\": null, \"bairro\": \"ANDIRÁ\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"905.299.521-49\", \"endereco\": \"RUA JOSÉ BERNADES QD.2, LT.17\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:06.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:06.000000Z\", \"nome_contato\": null, \"razao_social\": \"IBRAIM LOPES DE LIMA\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"IBRAIM LOPES DE LIMA\", \"telefone_contato\": null}}', '2021-01-08 11:14:06', '2021-01-08 11:14:06'),
(476, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 77, NULL, NULL, '{\"attributes\": {\"id\": 77, \"cep\": \"75925000\", \"tipo\": \"FÍSICO\", \"uuid\": \"a247ebb9-ec2d-4ebd-a910-384f85a6d311\", \"email\": null, \"bairro\": \"CENTRO\", \"cidade\": \"CASTELÂNDIA\", \"estado\": \"GO\", \"numero\": \"2188\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"270.285.391-34\", \"endereco\": \"AV. RIO VERDE\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:06.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:06.000000Z\", \"nome_contato\": null, \"razao_social\": \"BENEDITO MOISES PIERAZO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"BENEDITO MOISES PIERAZO\", \"telefone_contato\": null}}', '2021-01-08 11:14:06', '2021-01-08 11:14:06'),
(477, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 78, NULL, NULL, '{\"attributes\": {\"id\": 78, \"cep\": null, \"tipo\": \"FÍSICO\", \"uuid\": \"d6dde988-de29-4a02-bfc3-fa0c79f263ba\", \"email\": null, \"bairro\": null, \"cidade\": null, \"estado\": null, \"numero\": null, \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"32131321321321\", \"endereco\": null, \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:07.000000Z\", \"deleted_at\": null, \"finalidade\": \"TRANSPORTADOR\", \"updated_at\": \"2021-01-08T11:14:07.000000Z\", \"nome_contato\": null, \"razao_social\": \"MARCELO NELVIO\", \"rg_inscricao\": null, \"email_contato\": null, \"nome_fantasia\": \"MARCELO NELVIO\", \"telefone_contato\": null}}', '2021-01-08 11:14:07', '2021-01-08 11:14:07'),
(478, 'Fornecedor', 'created', 'App\\Models\\Fornecedor', 79, NULL, NULL, '{\"attributes\": {\"id\": 79, \"cep\": \"86706430\", \"tipo\": \"JURÍDICO\", \"uuid\": \"c86db8ae-eaa9-467e-bb0f-640328fecf74\", \"email\": null, \"bairro\": \"PARQUE INDUSTRIAL IV\", \"cidade\": \"ARAPONGAS\", \"estado\": \"PR\", \"numero\": \"S/N\", \"status\": \"Ativo\", \"celular\": null, \"cpf_cnpj\": \"75.263.400/0001-49\", \"endereco\": \"RODOVIA BR-369 SAÍDA PARA APUCARANA\", \"telefone\": null, \"tenant_id\": 1, \"complmento\": null, \"created_at\": \"2021-01-08T11:14:07.000000Z\", \"deleted_at\": null, \"finalidade\": \"INSUMOS\", \"updated_at\": \"2021-01-08T11:14:07.000000Z\", \"nome_contato\": \"RAFAEL\", \"razao_social\": \"NORTOX SA\", \"rg_inscricao\": \"6280053544\", \"email_contato\": null, \"nome_fantasia\": \"NORTOX\", \"telefone_contato\": null}}', '2021-01-08 11:14:07', '2021-01-08 11:14:07'),
(479, 'Armazem', 'created', 'App\\Models\\Armazem', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"SANTA MARTHA\", \"tipo\": \"PRÓPRIO\", \"uuid\": \"356717ea-590f-41b9-9245-c8bd3e19cf2f\", \"cidade\": \"FAZENDA\", \"status\": \"ATIVO\", \"percurso\": \"D\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T12:46:22.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T12:46:22.000000Z\", \"fornecedor_id\": 1}}', '2021-01-08 12:46:23', '2021-01-08 12:46:23'),
(480, 'Armazem', 'created', 'App\\Models\\Armazem', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"nome\": \"CARGILL__BJG\", \"tipo\": \"TERCEIRO\", \"uuid\": \"48eb5d47-02a6-472e-978f-cd401b34b556\", \"cidade\": \"BOM JESUS\", \"status\": \"ATIVO\", \"percurso\": \"A\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T12:48:17.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T12:48:17.000000Z\", \"fornecedor_id\": 3}}', '2021-01-08 12:48:17', '2021-01-08 12:48:17'),
(481, 'Armazem', 'created', 'App\\Models\\Armazem', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"nome\": \"CARGILL__CRUZ\", \"tipo\": \"TERCEIRO\", \"uuid\": \"7ff42fd6-b09b-402a-9e49-daebbf4d4fd3\", \"cidade\": \"CRUZEIRO\", \"status\": \"ATIVO\", \"percurso\": \"B\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T12:49:17.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T12:49:17.000000Z\", \"fornecedor_id\": 5}}', '2021-01-08 12:49:17', '2021-01-08 12:49:17'),
(482, 'Armazem', 'updated', 'App\\Models\\Armazem', 3, NULL, NULL, '{\"old\": {\"updated_at\": \"2021-01-08T12:49:17.000000Z\", \"fornecedor_id\": 5}, \"attributes\": {\"updated_at\": \"2021-01-08T12:49:46.000000Z\", \"fornecedor_id\": 3}}', '2021-01-08 12:49:46', '2021-01-08 12:49:46'),
(483, 'Armazem', 'created', 'App\\Models\\Armazem', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"nome\": \"CARAMURU__LGO\", \"tipo\": \"TERCEIRO\", \"uuid\": \"4b4f03de-de9f-45aa-8eae-6bd651550463\", \"cidade\": \"CASTELÂNDIA\", \"status\": \"ATIVO\", \"percurso\": \"E\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T12:53:33.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T12:53:33.000000Z\", \"fornecedor_id\": 5}}', '2021-01-08 12:53:33', '2021-01-08 12:53:33'),
(484, 'Armazem', 'created', 'App\\Models\\Armazem', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"nome\": \"ADM__CAST\", \"tipo\": \"TERCEIRO\", \"uuid\": \"0bac0357-f3eb-4a4b-9568-1387511a949b\", \"cidade\": \"CASTELÂNDIA\", \"status\": \"ATIVO\", \"percurso\": \"C\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T12:53:56.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T12:53:56.000000Z\", \"fornecedor_id\": 6}}', '2021-01-08 12:53:56', '2021-01-08 12:53:56'),
(485, 'Armazem', 'created', 'App\\Models\\Armazem', 6, NULL, NULL, '{\"attributes\": {\"id\": 6, \"nome\": \"BAGEL__BJG\", \"tipo\": \"TERCEIRO\", \"uuid\": \"da2e8178-5f6d-43cd-8e44-2fe609e6b4ee\", \"cidade\": \"BOM JESUS\", \"status\": \"ATIVO\", \"percurso\": \"A\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T12:54:56.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T12:54:56.000000Z\", \"fornecedor_id\": 7}}', '2021-01-08 12:54:57', '2021-01-08 12:54:57'),
(486, 'Armazem', 'created', 'App\\Models\\Armazem', 7, NULL, NULL, '{\"attributes\": {\"id\": 7, \"nome\": \"BAGEL__CAST\", \"tipo\": \"TERCEIRO\", \"uuid\": \"eb8784af-f14b-4581-9c36-5219d13ac294\", \"cidade\": \"CASTELÂNDIA\", \"status\": \"ATIVO\", \"percurso\": \"C\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T12:55:23.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T12:55:23.000000Z\", \"fornecedor_id\": 7}}', '2021-01-08 12:55:24', '2021-01-08 12:55:24'),
(487, 'Armazem', 'created', 'App\\Models\\Armazem', 8, NULL, NULL, '{\"attributes\": {\"id\": 8, \"nome\": \"SABÁ__BJG\", \"tipo\": \"TERCEIRO\", \"uuid\": \"c0f63d70-dfb2-446a-b9c9-d24e8eb76ee4\", \"cidade\": \"BOM JESUS\", \"status\": \"ATIVO\", \"percurso\": \"A\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T12:55:45.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T12:55:45.000000Z\", \"fornecedor_id\": 8}}', '2021-01-08 12:55:45', '2021-01-08 12:55:45'),
(488, 'Armazem', 'updated', 'App\\Models\\Armazem', 7, NULL, NULL, '{\"old\": {\"nome\": \"BAGEL__CAST\", \"cidade\": \"CASTELÂNDIA\", \"percurso\": \"C\", \"updated_at\": \"2021-01-08T12:55:23.000000Z\"}, \"attributes\": {\"nome\": \"BAGEL__BJG\", \"cidade\": \"BOM JESUS\", \"percurso\": \"A\", \"updated_at\": \"2021-01-08T13:13:17.000000Z\"}}', '2021-01-08 13:13:18', '2021-01-08 13:13:18'),
(489, 'Armazem', 'updated', 'App\\Models\\Armazem', 7, NULL, NULL, '{\"old\": {\"nome\": \"BAGEL__BJG\", \"cidade\": \"BOM JESUS\", \"percurso\": \"A\", \"updated_at\": \"2021-01-08T13:13:17.000000Z\"}, \"attributes\": {\"nome\": \"BAGEL__CAST\", \"cidade\": \"CASTELÂNDIA\", \"percurso\": \"C\", \"updated_at\": \"2021-01-08T13:13:45.000000Z\"}}', '2021-01-08 13:13:45', '2021-01-08 13:13:45'),
(490, 'Armazem', 'updated', 'App\\Models\\Armazem', 7, NULL, NULL, '{\"old\": {\"nome\": \"BAGEL__CAST\", \"cidade\": \"CASTELÂNDIA\", \"percurso\": \"C\", \"updated_at\": \"2021-01-08T13:13:45.000000Z\"}, \"attributes\": {\"nome\": \"BAGEL__BJG\", \"cidade\": \"BOM JESUS\", \"percurso\": \"A\", \"updated_at\": \"2021-01-08T13:20:04.000000Z\"}}', '2021-01-08 13:20:05', '2021-01-08 13:20:05'),
(491, 'Armazem', 'updated', 'App\\Models\\Armazem', 8, NULL, NULL, '{\"old\": {\"nome\": \"SABÁ__BJG\", \"cidade\": \"BOM JESUS\", \"percurso\": \"A\", \"updated_at\": \"2021-01-08T12:55:45.000000Z\"}, \"attributes\": {\"nome\": \"BAGEL__CAST\", \"cidade\": \"CASTELÂNDIA\", \"percurso\": \"C\", \"updated_at\": \"2021-01-08T13:20:36.000000Z\"}}', '2021-01-08 13:20:36', '2021-01-08 13:20:36'),
(492, 'Armazem', 'created', 'App\\Models\\Armazem', 9, NULL, NULL, '{\"attributes\": {\"id\": 9, \"nome\": \"SABÁ__BJG\", \"tipo\": \"TERCEIRO\", \"uuid\": \"362d9a32-8a46-468d-9c7c-587c399c67b5\", \"cidade\": \"BOM JESUS\", \"status\": \"ATIVO\", \"percurso\": \"A\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T13:21:32.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T13:21:32.000000Z\", \"fornecedor_id\": 8}}', '2021-01-08 13:21:32', '2021-01-08 13:21:32'),
(493, 'Armazem', 'updated', 'App\\Models\\Armazem', 8, NULL, NULL, '{\"old\": {\"updated_at\": \"2021-01-08T13:20:36.000000Z\", \"fornecedor_id\": 8}, \"attributes\": {\"updated_at\": \"2021-01-08T13:21:46.000000Z\", \"fornecedor_id\": 7}}', '2021-01-08 13:21:46', '2021-01-08 13:21:46'),
(494, 'Armazem', 'updated', 'App\\Models\\Armazem', 6, NULL, NULL, '{\"old\": {\"updated_at\": \"2021-01-08T12:54:56.000000Z\", \"fornecedor_id\": 7}, \"attributes\": {\"updated_at\": \"2021-01-08T13:21:55.000000Z\", \"fornecedor_id\": 6}}', '2021-01-08 13:21:55', '2021-01-08 13:21:55'),
(495, 'Armazem', 'updated', 'App\\Models\\Armazem', 5, NULL, NULL, '{\"old\": {\"updated_at\": \"2021-01-08T12:53:56.000000Z\", \"fornecedor_id\": 6}, \"attributes\": {\"updated_at\": \"2021-01-08T13:22:05.000000Z\", \"fornecedor_id\": 5}}', '2021-01-08 13:22:05', '2021-01-08 13:22:05'),
(496, 'Armazem', 'updated', 'App\\Models\\Armazem', 4, NULL, NULL, '{\"old\": {\"updated_at\": \"2021-01-08T12:53:33.000000Z\", \"fornecedor_id\": 5}, \"attributes\": {\"updated_at\": \"2021-01-08T13:22:16.000000Z\", \"fornecedor_id\": 4}}', '2021-01-08 13:22:16', '2021-01-08 13:22:16'),
(497, 'Colhedor', 'created', 'App\\Models\\Colhedor', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"nome\": \"PAULO\", \"uuid\": \"ea7d4300-d157-449e-8885-466954be8c40\", \"status\": \"ATIVO\", \"qnt_linha\": null, \"tenant_id\": 1, \"created_at\": \"2021-01-08T14:45:21.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T14:45:21.000000Z\", \"fornecedor_id\": 2}}', '2021-01-08 14:45:21', '2021-01-08 14:45:21'),
(498, 'Colhedor', 'created', 'App\\Models\\Colhedor', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"nome\": \"RUSSO\", \"uuid\": \"0c4000ef-35b4-4bd0-8719-1293fc50a282\", \"status\": \"ATIVO\", \"qnt_linha\": null, \"tenant_id\": 1, \"created_at\": \"2021-01-08T14:45:35.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T14:45:35.000000Z\", \"fornecedor_id\": 65}}', '2021-01-08 14:45:35', '2021-01-08 14:45:35'),
(499, 'Colhedor', 'created', 'App\\Models\\Colhedor', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"nome\": \"SERGIO\", \"uuid\": \"d4816f22-69d3-4c07-aa4d-1f8ae339eda5\", \"status\": \"ATIVO\", \"qnt_linha\": null, \"tenant_id\": 1, \"created_at\": \"2021-01-08T14:45:46.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T14:45:46.000000Z\", \"fornecedor_id\": 69}}', '2021-01-08 14:45:46', '2021-01-08 14:45:46'),
(500, 'Colhedor', 'created', 'App\\Models\\Colhedor', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"nome\": \"WAGNER\", \"uuid\": \"57de0f66-a487-4270-bdb3-d87e48546c8c\", \"status\": \"ATIVO\", \"qnt_linha\": null, \"tenant_id\": 1, \"created_at\": \"2021-01-08T14:45:58.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T14:45:58.000000Z\", \"fornecedor_id\": 70}}', '2021-01-08 14:45:58', '2021-01-08 14:45:58'),
(501, 'Colhedor', 'created', 'App\\Models\\Colhedor', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"nome\": \"WESTER\", \"uuid\": \"3ebfa2eb-88c8-4353-bf82-4e0e457b0fd4\", \"status\": \"ATIVO\", \"qnt_linha\": null, \"tenant_id\": 1, \"created_at\": \"2021-01-08T14:46:13.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T14:46:13.000000Z\", \"fornecedor_id\": 71}}', '2021-01-08 14:46:13', '2021-01-08 14:46:13'),
(502, 'Colhedor', 'created', 'App\\Models\\Colhedor', 6, NULL, NULL, '{\"attributes\": {\"id\": 6, \"nome\": \"MISTA\", \"uuid\": \"a395bcd5-4ffc-4f4c-b11a-09f9315cf579\", \"status\": \"ATIVO\", \"qnt_linha\": null, \"tenant_id\": 1, \"created_at\": \"2021-01-08T14:46:33.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T14:46:33.000000Z\", \"fornecedor_id\": 68}}', '2021-01-08 14:46:33', '2021-01-08 14:46:33'),
(503, 'Talhao', 'updated', 'App\\Models\\Talhao', 24, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:48:51.000000Z\"}, \"attributes\": {\"bloco\": \"1\", \"updated_at\": \"2021-01-08T14:59:05.000000Z\"}}', '2021-01-08 14:59:05', '2021-01-08 14:59:05'),
(504, 'Talhao', 'updated', 'App\\Models\\Talhao', 12, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:03:34.000000Z\"}, \"attributes\": {\"bloco\": \"1\", \"updated_at\": \"2021-01-08T14:59:18.000000Z\"}}', '2021-01-08 14:59:18', '2021-01-08 14:59:18'),
(505, 'Talhao', 'updated', 'App\\Models\\Talhao', 16, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:08:42.000000Z\"}, \"attributes\": {\"bloco\": \"1\", \"updated_at\": \"2021-01-08T14:59:30.000000Z\"}}', '2021-01-08 14:59:30', '2021-01-08 14:59:30'),
(506, 'Talhao', 'updated', 'App\\Models\\Talhao', 28, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:57:00.000000Z\"}, \"attributes\": {\"bloco\": \"1\", \"updated_at\": \"2021-01-08T14:59:44.000000Z\"}}', '2021-01-08 14:59:44', '2021-01-08 14:59:44'),
(507, 'Talhao', 'updated', 'App\\Models\\Talhao', 19, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:37:22.000000Z\"}, \"attributes\": {\"bloco\": \"1\", \"updated_at\": \"2021-01-08T14:59:57.000000Z\"}}', '2021-01-08 14:59:57', '2021-01-08 14:59:57'),
(508, 'Talhao', 'updated', 'App\\Models\\Talhao', 18, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:10:50.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:00:30.000000Z\"}}', '2021-01-08 15:00:30', '2021-01-08 15:00:30'),
(509, 'Talhao', 'updated', 'App\\Models\\Talhao', 23, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"area_total\": 420.4, \"updated_at\": \"2020-12-01T05:45:49.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"area_total\": 42.04, \"updated_at\": \"2021-01-08T15:00:43.000000Z\"}}', '2021-01-08 15:00:43', '2021-01-08 15:00:43'),
(510, 'Talhao', 'updated', 'App\\Models\\Talhao', 26, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:50:43.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:00:55.000000Z\"}}', '2021-01-08 15:00:55', '2021-01-08 15:00:55'),
(511, 'Talhao', 'updated', 'App\\Models\\Talhao', 27, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"area_total\": 194.9, \"updated_at\": \"2020-12-01T05:51:33.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"area_total\": 19.49, \"updated_at\": \"2021-01-08T15:01:10.000000Z\"}}', '2021-01-08 15:01:10', '2021-01-08 15:01:10'),
(512, 'Talhao', 'updated', 'App\\Models\\Talhao', 27, NULL, NULL, '{\"old\": {\"area_total\": 19.49, \"updated_at\": \"2021-01-08T15:01:10.000000Z\"}, \"attributes\": {\"area_total\": 194.9, \"updated_at\": \"2021-01-08T15:01:28.000000Z\"}}', '2021-01-08 15:01:28', '2021-01-08 15:01:28'),
(513, 'Talhao', 'updated', 'App\\Models\\Talhao', 23, NULL, NULL, '{\"old\": {\"area_total\": 42.04, \"updated_at\": \"2021-01-08T15:00:43.000000Z\"}, \"attributes\": {\"area_total\": 420.4, \"updated_at\": \"2021-01-08T15:04:10.000000Z\"}}', '2021-01-08 15:04:10', '2021-01-08 15:04:10'),
(514, 'Talhao', 'updated', 'App\\Models\\Talhao', 68, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T22:28:24.000000Z\"}, \"attributes\": {\"bloco\": \"1\", \"updated_at\": \"2021-01-08T15:09:03.000000Z\"}}', '2021-01-08 15:09:03', '2021-01-08 15:09:03'),
(515, 'Talhao', 'updated', 'App\\Models\\Talhao', 67, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T22:24:59.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:09:10.000000Z\"}}', '2021-01-08 15:09:10', '2021-01-08 15:09:10'),
(516, 'Talhao', 'updated', 'App\\Models\\Talhao', 68, NULL, NULL, '{\"old\": {\"bloco\": \"1\", \"updated_at\": \"2021-01-08T15:09:03.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:09:16.000000Z\"}}', '2021-01-08 15:09:16', '2021-01-08 15:09:16'),
(517, 'Talhao', 'updated', 'App\\Models\\Talhao', 20, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:39:26.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:11:42.000000Z\"}}', '2021-01-08 15:11:42', '2021-01-08 15:11:42'),
(518, 'Talhao', 'updated', 'App\\Models\\Talhao', 29, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:59:06.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:14:48.000000Z\"}}', '2021-01-08 15:14:48', '2021-01-08 15:14:48'),
(519, 'Talhao', 'updated', 'App\\Models\\Talhao', 54, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:24:22.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:15:00.000000Z\"}}', '2021-01-08 15:15:00', '2021-01-08 15:15:00'),
(520, 'Talhao', 'updated', 'App\\Models\\Talhao', 82, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T23:46:37.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:15:14.000000Z\"}}', '2021-01-08 15:15:14', '2021-01-08 15:15:14'),
(521, 'Talhao', 'updated', 'App\\Models\\Talhao', 30, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:01:39.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:15:26.000000Z\"}}', '2021-01-08 15:15:26', '2021-01-08 15:15:26'),
(522, 'Talhao', 'updated', 'App\\Models\\Talhao', 31, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:02:37.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:15:40.000000Z\"}}', '2021-01-08 15:15:40', '2021-01-08 15:15:40'),
(523, 'Talhao', 'updated', 'App\\Models\\Talhao', 33, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:07:46.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:15:58.000000Z\"}}', '2021-01-08 15:15:58', '2021-01-08 15:15:58'),
(524, 'Talhao', 'updated', 'App\\Models\\Talhao', 32, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:06:12.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:16:03.000000Z\"}}', '2021-01-08 15:16:04', '2021-01-08 15:16:04'),
(525, 'Talhao', 'updated', 'App\\Models\\Talhao', 55, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:32:31.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:16:23.000000Z\"}}', '2021-01-08 15:16:24', '2021-01-08 15:16:24'),
(526, 'Talhao', 'updated', 'App\\Models\\Talhao', 52, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:06:28.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:23:39.000000Z\"}}', '2021-01-08 15:23:39', '2021-01-08 15:23:39'),
(527, 'Talhao', 'updated', 'App\\Models\\Talhao', 70, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T22:31:22.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:37:47.000000Z\"}}', '2021-01-08 15:37:47', '2021-01-08 15:37:47'),
(528, 'Talhao', 'updated', 'App\\Models\\Talhao', 71, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T22:41:23.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:38:10.000000Z\"}}', '2021-01-08 15:38:10', '2021-01-08 15:38:10'),
(529, 'Talhao', 'updated', 'App\\Models\\Talhao', 53, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:07:50.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:38:31.000000Z\"}}', '2021-01-08 15:38:31', '2021-01-08 15:38:31'),
(530, 'Talhao', 'updated', 'App\\Models\\Talhao', 56, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:37:11.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:38:43.000000Z\"}}', '2021-01-08 15:38:43', '2021-01-08 15:38:43'),
(531, 'Talhao', 'updated', 'App\\Models\\Talhao', 81, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2021-01-06T19:51:01.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:38:55.000000Z\"}}', '2021-01-08 15:38:55', '2021-01-08 15:38:55'),
(532, 'Talhao', 'updated', 'App\\Models\\Talhao', 57, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:38:19.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:41:13.000000Z\"}}', '2021-01-08 15:41:14', '2021-01-08 15:41:14'),
(533, 'Talhao', 'updated', 'App\\Models\\Talhao', 63, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:53:50.000000Z\"}, \"attributes\": {\"bloco\": \"3\", \"updated_at\": \"2021-01-08T15:41:25.000000Z\"}}', '2021-01-08 15:41:25', '2021-01-08 15:41:25'),
(534, 'Talhao', 'updated', 'App\\Models\\Talhao', 63, NULL, NULL, '{\"old\": {\"bloco\": \"3\", \"updated_at\": \"2021-01-08T15:41:25.000000Z\"}, \"attributes\": {\"bloco\": \"2\", \"updated_at\": \"2021-01-08T15:42:05.000000Z\"}}', '2021-01-08 15:42:05', '2021-01-08 15:42:05'),
(535, 'Talhao', 'updated', 'App\\Models\\Talhao', 34, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:09:51.000000Z\"}, \"attributes\": {\"bloco\": \"3\", \"updated_at\": \"2021-01-08T15:42:13.000000Z\"}}', '2021-01-08 15:42:13', '2021-01-08 15:42:13'),
(536, 'Talhao', 'updated', 'App\\Models\\Talhao', 35, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:11:58.000000Z\"}, \"attributes\": {\"bloco\": \"3\", \"updated_at\": \"2021-01-08T15:42:33.000000Z\"}}', '2021-01-08 15:42:33', '2021-01-08 15:42:33'),
(537, 'Talhao', 'updated', 'App\\Models\\Talhao', 36, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:13:18.000000Z\"}, \"attributes\": {\"bloco\": \"3\", \"updated_at\": \"2021-01-08T15:42:49.000000Z\"}}', '2021-01-08 15:42:49', '2021-01-08 15:42:49'),
(538, 'Talhao', 'updated', 'App\\Models\\Talhao', 44, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:54:22.000000Z\"}, \"attributes\": {\"bloco\": \"3\", \"updated_at\": \"2021-01-08T15:43:02.000000Z\"}}', '2021-01-08 15:43:03', '2021-01-08 15:43:03'),
(539, 'Talhao', 'updated', 'App\\Models\\Talhao', 45, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"area_total\": 349.9, \"updated_at\": \"2020-12-01T06:55:21.000000Z\"}, \"attributes\": {\"bloco\": \"3\", \"area_total\": 34.99, \"updated_at\": \"2021-01-08T15:43:16.000000Z\"}}', '2021-01-08 15:43:16', '2021-01-08 15:43:16'),
(540, 'Talhao', 'updated', 'App\\Models\\Talhao', 48, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:59:20.000000Z\"}, \"attributes\": {\"bloco\": \"3\", \"updated_at\": \"2021-01-08T15:43:29.000000Z\"}}', '2021-01-08 15:43:29', '2021-01-08 15:43:29'),
(541, 'Talhao', 'updated', 'App\\Models\\Talhao', 51, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"area_total\": 300.3, \"updated_at\": \"2020-12-01T07:05:38.000000Z\"}, \"attributes\": {\"bloco\": \"3\", \"area_total\": 30.03, \"updated_at\": \"2021-01-08T15:43:47.000000Z\"}}', '2021-01-08 15:43:47', '2021-01-08 15:43:47'),
(542, 'Talhao', 'updated', 'App\\Models\\Talhao', 51, NULL, NULL, '{\"old\": {\"area_total\": 30.03, \"updated_at\": \"2021-01-08T15:43:47.000000Z\"}, \"attributes\": {\"area_total\": 300.3, \"updated_at\": \"2021-01-08T15:44:34.000000Z\"}}', '2021-01-08 15:44:34', '2021-01-08 15:44:34'),
(543, 'Talhao', 'updated', 'App\\Models\\Talhao', 45, NULL, NULL, '{\"old\": {\"area_total\": 34.99, \"updated_at\": \"2021-01-08T15:43:16.000000Z\"}, \"attributes\": {\"area_total\": 349.9, \"updated_at\": \"2021-01-08T15:46:07.000000Z\"}}', '2021-01-08 15:46:07', '2021-01-08 15:46:07'),
(544, 'Talhao', 'updated', 'App\\Models\\Talhao', 13, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:04:46.000000Z\"}, \"attributes\": {\"bloco\": \"4\", \"updated_at\": \"2021-01-08T16:05:57.000000Z\"}}', '2021-01-08 16:05:57', '2021-01-08 16:05:57'),
(545, 'Talhao', 'updated', 'App\\Models\\Talhao', 49, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:01:40.000000Z\"}, \"attributes\": {\"bloco\": \"4\", \"updated_at\": \"2021-01-08T16:06:20.000000Z\"}}', '2021-01-08 16:06:20', '2021-01-08 16:06:20'),
(546, 'Talhao', 'updated', 'App\\Models\\Talhao', 60, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:45:08.000000Z\"}, \"attributes\": {\"bloco\": \"4\", \"updated_at\": \"2021-01-08T16:06:40.000000Z\"}}', '2021-01-08 16:06:40', '2021-01-08 16:06:40'),
(547, 'Talhao', 'updated', 'App\\Models\\Talhao', 64, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:54:47.000000Z\"}, \"attributes\": {\"bloco\": \"4\", \"updated_at\": \"2021-01-08T16:06:55.000000Z\"}}', '2021-01-08 16:06:55', '2021-01-08 16:06:55'),
(548, 'Talhao', 'updated', 'App\\Models\\Talhao', 69, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T22:30:18.000000Z\"}, \"attributes\": {\"bloco\": \"4\", \"updated_at\": \"2021-01-08T16:07:11.000000Z\"}}', '2021-01-08 16:07:12', '2021-01-08 16:07:12'),
(549, 'Talhao', 'updated', 'App\\Models\\Talhao', 14, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:06:05.000000Z\"}, \"attributes\": {\"bloco\": \"4\", \"updated_at\": \"2021-01-08T16:07:48.000000Z\"}}', '2021-01-08 16:07:48', '2021-01-08 16:07:48'),
(550, 'Talhao', 'updated', 'App\\Models\\Talhao', 37, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:39:35.000000Z\"}, \"attributes\": {\"bloco\": \"5\", \"updated_at\": \"2021-01-08T16:08:22.000000Z\"}}', '2021-01-08 16:08:22', '2021-01-08 16:08:22'),
(551, 'Talhao', 'updated', 'App\\Models\\Talhao', 38, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:40:39.000000Z\"}, \"attributes\": {\"bloco\": \"5\", \"updated_at\": \"2021-01-08T16:08:35.000000Z\"}}', '2021-01-08 16:08:35', '2021-01-08 16:08:35'),
(552, 'Talhao', 'updated', 'App\\Models\\Talhao', 41, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:45:51.000000Z\"}, \"attributes\": {\"bloco\": \"5\", \"updated_at\": \"2021-01-08T16:08:46.000000Z\"}}', '2021-01-08 16:08:46', '2021-01-08 16:08:46'),
(553, 'Talhao', 'updated', 'App\\Models\\Talhao', 42, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:48:03.000000Z\"}, \"attributes\": {\"bloco\": \"5\", \"updated_at\": \"2021-01-08T16:08:58.000000Z\"}}', '2021-01-08 16:08:58', '2021-01-08 16:08:58'),
(554, 'Talhao', 'updated', 'App\\Models\\Talhao', 43, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:53:19.000000Z\"}, \"attributes\": {\"bloco\": \"5\", \"updated_at\": \"2021-01-08T16:09:15.000000Z\"}}', '2021-01-08 16:09:15', '2021-01-08 16:09:15'),
(555, 'Talhao', 'updated', 'App\\Models\\Talhao', 46, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:57:13.000000Z\"}, \"attributes\": {\"bloco\": \"5\", \"updated_at\": \"2021-01-08T16:09:26.000000Z\"}}', '2021-01-08 16:09:26', '2021-01-08 16:09:26'),
(556, 'Talhao', 'updated', 'App\\Models\\Talhao', 47, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:58:08.000000Z\"}, \"attributes\": {\"bloco\": \"5\", \"updated_at\": \"2021-01-08T16:09:38.000000Z\"}}', '2021-01-08 16:09:38', '2021-01-08 16:09:38'),
(557, 'Talhao', 'updated', 'App\\Models\\Talhao', 84, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2021-01-06T18:12:50.000000Z\"}, \"attributes\": {\"bloco\": \"7\", \"updated_at\": \"2021-01-08T16:14:23.000000Z\"}}', '2021-01-08 16:14:23', '2021-01-08 16:14:23'),
(558, 'Talhao', 'updated', 'App\\Models\\Talhao', 9, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2021-01-06T18:11:43.000000Z\"}, \"attributes\": {\"bloco\": \"7\", \"updated_at\": \"2021-01-08T16:14:29.000000Z\"}}', '2021-01-08 16:14:30', '2021-01-08 16:14:30'),
(559, 'Talhao', 'updated', 'App\\Models\\Talhao', 10, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T04:58:23.000000Z\"}, \"attributes\": {\"bloco\": \"7\", \"updated_at\": \"2021-01-08T16:14:51.000000Z\"}}', '2021-01-08 16:14:51', '2021-01-08 16:14:51'),
(560, 'Talhao', 'updated', 'App\\Models\\Talhao', 11, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:02:38.000000Z\"}, \"attributes\": {\"bloco\": \"7\", \"updated_at\": \"2021-01-08T16:15:04.000000Z\"}}', '2021-01-08 16:15:04', '2021-01-08 16:15:04'),
(561, 'Talhao', 'updated', 'App\\Models\\Talhao', 25, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:49:41.000000Z\"}, \"attributes\": {\"bloco\": \"7\", \"updated_at\": \"2021-01-08T16:17:33.000000Z\"}}', '2021-01-08 16:17:33', '2021-01-08 16:17:33'),
(562, 'Talhao', 'updated', 'App\\Models\\Talhao', 15, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T05:07:34.000000Z\"}, \"attributes\": {\"bloco\": \"7\", \"updated_at\": \"2021-01-08T16:17:42.000000Z\"}}', '2021-01-08 16:17:42', '2021-01-08 16:17:42'),
(563, 'Talhao', 'updated', 'App\\Models\\Talhao', 85, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2021-01-06T18:30:44.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:18:15.000000Z\"}}', '2021-01-08 16:18:15', '2021-01-08 16:18:15'),
(564, 'Talhao', 'updated', 'App\\Models\\Talhao', 50, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:03:38.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:18:26.000000Z\"}}', '2021-01-08 16:18:26', '2021-01-08 16:18:26'),
(565, 'Talhao', 'updated', 'App\\Models\\Talhao', 40, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:44:56.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:18:44.000000Z\"}}', '2021-01-08 16:18:44', '2021-01-08 16:18:44'),
(566, 'Talhao', 'updated', 'App\\Models\\Talhao', 39, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T06:44:05.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:18:54.000000Z\"}}', '2021-01-08 16:18:54', '2021-01-08 16:18:54'),
(567, 'Talhao', 'updated', 'App\\Models\\Talhao', 61, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:48:40.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:19:13.000000Z\"}}', '2021-01-08 16:19:13', '2021-01-08 16:19:13'),
(568, 'Talhao', 'updated', 'App\\Models\\Talhao', 62, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:50:25.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:19:25.000000Z\"}}', '2021-01-08 16:19:25', '2021-01-08 16:19:25'),
(569, 'Talhao', 'updated', 'App\\Models\\Talhao', 65, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:55:45.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:19:51.000000Z\"}}', '2021-01-08 16:19:51', '2021-01-08 16:19:51'),
(570, 'Talhao', 'updated', 'App\\Models\\Talhao', 72, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2021-01-06T19:29:06.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:20:06.000000Z\"}}', '2021-01-08 16:20:06', '2021-01-08 16:20:06'),
(571, 'Talhao', 'updated', 'App\\Models\\Talhao', 73, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2021-01-06T19:30:31.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:20:23.000000Z\"}}', '2021-01-08 16:20:23', '2021-01-08 16:20:23'),
(572, 'Talhao', 'updated', 'App\\Models\\Talhao', 74, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T22:47:28.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:20:51.000000Z\"}}', '2021-01-08 16:20:51', '2021-01-08 16:20:51'),
(573, 'Talhao', 'updated', 'App\\Models\\Talhao', 75, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T23:12:40.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:21:04.000000Z\"}}', '2021-01-08 16:21:04', '2021-01-08 16:21:04'),
(574, 'Talhao', 'updated', 'App\\Models\\Talhao', 76, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T23:31:47.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:21:17.000000Z\"}}', '2021-01-08 16:21:17', '2021-01-08 16:21:17'),
(575, 'Talhao', 'updated', 'App\\Models\\Talhao', 77, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T23:34:15.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:21:31.000000Z\"}}', '2021-01-08 16:21:31', '2021-01-08 16:21:31'),
(576, 'Talhao', 'updated', 'App\\Models\\Talhao', 78, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T23:36:33.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:21:44.000000Z\"}}', '2021-01-08 16:21:44', '2021-01-08 16:21:44'),
(577, 'Talhao', 'updated', 'App\\Models\\Talhao', 80, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T23:38:25.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:21:59.000000Z\"}}', '2021-01-08 16:21:59', '2021-01-08 16:21:59'),
(578, 'Talhao', 'updated', 'App\\Models\\Talhao', 79, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T23:37:33.000000Z\"}, \"attributes\": {\"bloco\": \"8\", \"updated_at\": \"2021-01-08T16:22:04.000000Z\"}}', '2021-01-08 16:22:04', '2021-01-08 16:22:04'),
(579, 'Talhao', 'updated', 'App\\Models\\Talhao', 59, NULL, NULL, '{\"old\": {\"bloco\": \"50\", \"updated_at\": \"2020-12-01T07:42:02.000000Z\"}, \"attributes\": {\"bloco\": \"4\", \"updated_at\": \"2021-01-08T16:24:06.000000Z\"}}', '2021-01-08 16:24:06', '2021-01-08 16:24:06'),
(580, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 1, NULL, NULL, '{\"attributes\": {\"id\": 1, \"uuid\": \"2c828ea4-99e0-4032-93c2-868ee66b1fd7\", \"bloco\": \"1\", \"frete\": 1.37, \"status\": \"ATIVO\", \"percurso\": \"A\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:10:46.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:10:46.000000Z\"}}', '2021-01-08 17:10:46', '2021-01-08 17:10:46'),
(581, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 2, NULL, NULL, '{\"attributes\": {\"id\": 2, \"uuid\": \"7eb59ee9-5d05-4444-b984-30117991efb7\", \"bloco\": \"2\", \"frete\": 1.5, \"status\": \"ATIVO\", \"percurso\": \"A\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:12:01.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:12:01.000000Z\"}}', '2021-01-08 17:12:01', '2021-01-08 17:12:01'),
(582, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 3, NULL, NULL, '{\"attributes\": {\"id\": 3, \"uuid\": \"18b09327-31ac-4f89-992a-e6b3973559b3\", \"bloco\": \"3\", \"frete\": 1.2, \"status\": \"ATIVO\", \"percurso\": \"A\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:12:20.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:12:20.000000Z\"}}', '2021-01-08 17:12:20', '2021-01-08 17:12:20'),
(583, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"uuid\": \"6620c8ad-591b-4c93-95b8-7e8e24182361\", \"bloco\": \"4\", \"frete\": 1.5, \"status\": \"ATIVO\", \"percurso\": \"A\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:12:30.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:12:30.000000Z\"}}', '2021-01-08 17:12:30', '2021-01-08 17:12:30'),
(584, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 5, NULL, NULL, '{\"attributes\": {\"id\": 5, \"uuid\": \"dba561ae-d883-4df2-b556-14968c483c9d\", \"bloco\": \"5\", \"frete\": 1.37, \"status\": \"ATIVO\", \"percurso\": \"A\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:12:41.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:12:41.000000Z\"}}', '2021-01-08 17:12:41', '2021-01-08 17:12:41'),
(585, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 6, NULL, NULL, '{\"attributes\": {\"id\": 6, \"uuid\": \"5ed3afd1-62db-4884-ae06-c13a45e5fbed\", \"bloco\": \"1\", \"frete\": 1.2, \"status\": \"ATIVO\", \"percurso\": \"B\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:16:20.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:16:20.000000Z\"}}', '2021-01-08 17:16:20', '2021-01-08 17:16:20'),
(586, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 7, NULL, NULL, '{\"attributes\": {\"id\": 7, \"uuid\": \"14925727-083d-4efc-8ac4-768902fa7070\", \"bloco\": \"2\", \"frete\": 1.2, \"status\": \"ATIVO\", \"percurso\": \"B\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:16:32.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:16:32.000000Z\"}}', '2021-01-08 17:16:32', '2021-01-08 17:16:32'),
(587, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 8, NULL, NULL, '{\"attributes\": {\"id\": 8, \"uuid\": \"44874235-d234-4d45-902f-b126923f2871\", \"bloco\": \"3\", \"frete\": 1.2, \"status\": \"ATIVO\", \"percurso\": \"B\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:16:39.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:16:39.000000Z\"}}', '2021-01-08 17:16:39', '2021-01-08 17:16:39'),
(588, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 9, NULL, NULL, '{\"attributes\": {\"id\": 9, \"uuid\": \"4fc7080f-da17-4412-a5af-fb28c10997c4\", \"bloco\": \"4\", \"frete\": 1.2, \"status\": \"ATIVO\", \"percurso\": \"B\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:16:45.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:16:45.000000Z\"}}', '2021-01-08 17:16:45', '2021-01-08 17:16:45'),
(589, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 10, NULL, NULL, '{\"attributes\": {\"id\": 10, \"uuid\": \"095bcb75-d2ba-4b29-8fd6-7a55a879905a\", \"bloco\": \"5\", \"frete\": 1.2, \"status\": \"ATIVO\", \"percurso\": \"B\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:16:52.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:16:52.000000Z\"}}', '2021-01-08 17:16:52', '2021-01-08 17:16:52'),
(590, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 11, NULL, NULL, '{\"attributes\": {\"id\": 11, \"uuid\": \"11374c07-c788-4326-8066-3b1e860c2d94\", \"bloco\": \"1\", \"frete\": 1.37, \"status\": \"ATIVO\", \"percurso\": \"C\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:17:20.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:17:20.000000Z\"}}', '2021-01-08 17:17:20', '2021-01-08 17:17:20'),
(591, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 12, NULL, NULL, '{\"attributes\": {\"id\": 12, \"uuid\": \"4d8ad5b8-e437-4084-af6c-d4e5d70a5974\", \"bloco\": \"2\", \"frete\": 1.5, \"status\": \"ATIVO\", \"percurso\": \"C\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:17:35.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:17:35.000000Z\"}}', '2021-01-08 17:17:36', '2021-01-08 17:17:36'),
(592, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 13, NULL, NULL, '{\"attributes\": {\"id\": 13, \"uuid\": \"244b8769-8a90-4050-ba0b-cf22dc8a0abf\", \"bloco\": \"3\", \"frete\": 1.5, \"status\": \"ATIVO\", \"percurso\": \"C\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:17:43.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:17:43.000000Z\"}}', '2021-01-08 17:17:43', '2021-01-08 17:17:43'),
(593, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 14, NULL, NULL, '{\"attributes\": {\"id\": 14, \"uuid\": \"6c8b5631-3bab-4104-8335-b95ec5a10322\", \"bloco\": \"4\", \"frete\": 1.37, \"status\": \"ATIVO\", \"percurso\": \"C\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:17:53.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:17:53.000000Z\"}}', '2021-01-08 17:17:53', '2021-01-08 17:17:53'),
(594, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 15, NULL, NULL, '{\"attributes\": {\"id\": 15, \"uuid\": \"af42d3e4-4753-49b3-8dba-81046acfd721\", \"bloco\": \"5\", \"frete\": 1.37, \"status\": \"ATIVO\", \"percurso\": \"C\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:18:00.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:18:00.000000Z\"}}', '2021-01-08 17:18:00', '2021-01-08 17:18:00'),
(595, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 16, NULL, NULL, '{\"attributes\": {\"id\": 16, \"uuid\": \"ecd05c88-e8c8-44e3-b266-94891e02e1c4\", \"bloco\": \"1\", \"frete\": 1, \"status\": \"ATIVO\", \"percurso\": \"D\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:18:46.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:18:46.000000Z\"}}', '2021-01-08 17:18:46', '2021-01-08 17:18:46'),
(596, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 17, NULL, NULL, '{\"attributes\": {\"id\": 17, \"uuid\": \"00eef3f6-dcf1-43dd-8edc-6e6ae0c68a1d\", \"bloco\": \"2\", \"frete\": 1.1, \"status\": \"ATIVO\", \"percurso\": \"D\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:18:57.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:18:57.000000Z\"}}', '2021-01-08 17:18:57', '2021-01-08 17:18:57'),
(597, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 18, NULL, NULL, '{\"attributes\": {\"id\": 18, \"uuid\": \"642680e1-ebdb-46e3-9ccb-b0185bbaeec3\", \"bloco\": \"3\", \"frete\": 1.2, \"status\": \"ATIVO\", \"percurso\": \"D\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:19:20.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:19:20.000000Z\"}}', '2021-01-08 17:19:20', '2021-01-08 17:19:20');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(598, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 19, NULL, NULL, '{\"attributes\": {\"id\": 19, \"uuid\": \"9d3728f7-0cd9-4887-a7b1-e1a4b3d8227b\", \"bloco\": \"4\", \"frete\": 1.2, \"status\": \"ATIVO\", \"percurso\": \"D\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:19:39.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:19:39.000000Z\"}}', '2021-01-08 17:19:39', '2021-01-08 17:19:39'),
(599, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 20, NULL, NULL, '{\"attributes\": {\"id\": 20, \"uuid\": \"189c1e63-6e14-48b2-9102-a8653062c1cd\", \"bloco\": \"5\", \"frete\": 1.2, \"status\": \"ATIVO\", \"percurso\": \"D\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:19:47.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:19:47.000000Z\"}}', '2021-01-08 17:19:47', '2021-01-08 17:19:47'),
(600, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 21, NULL, NULL, '{\"attributes\": {\"id\": 21, \"uuid\": \"7d70a3fa-3509-491f-b1d7-d39e7ec53c31\", \"bloco\": \"1\", \"frete\": 1.7, \"status\": \"ATIVO\", \"percurso\": \"E\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:24:17.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:24:17.000000Z\"}}', '2021-01-08 17:24:17', '2021-01-08 17:24:17'),
(601, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 22, NULL, NULL, '{\"attributes\": {\"id\": 22, \"uuid\": \"18ed0ada-fc3f-42e1-89f3-73b53c9083b5\", \"bloco\": \"2\", \"frete\": 1.7, \"status\": \"ATIVO\", \"percurso\": \"E\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:24:25.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:24:25.000000Z\"}}', '2021-01-08 17:24:25', '2021-01-08 17:24:25'),
(602, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 23, NULL, NULL, '{\"attributes\": {\"id\": 23, \"uuid\": \"e6360d1a-63d4-4aba-9bf6-859a4416ab86\", \"bloco\": \"3\", \"frete\": 1.7, \"status\": \"ATIVO\", \"percurso\": \"E\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:24:32.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:24:32.000000Z\"}}', '2021-01-08 17:24:32', '2021-01-08 17:24:32'),
(603, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 24, NULL, NULL, '{\"attributes\": {\"id\": 24, \"uuid\": \"46e00171-edb6-4e4f-9d44-778c19de3ed3\", \"bloco\": \"4\", \"frete\": 1.7, \"status\": \"ATIVO\", \"percurso\": \"E\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:24:41.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:24:41.000000Z\"}}', '2021-01-08 17:24:41', '2021-01-08 17:24:41'),
(604, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 25, NULL, NULL, '{\"attributes\": {\"id\": 25, \"uuid\": \"145c490d-0bed-4d8e-be59-1e9164b7f3a2\", \"bloco\": \"5\", \"frete\": 1.7, \"status\": \"ATIVO\", \"percurso\": \"E\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:24:48.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:24:48.000000Z\"}}', '2021-01-08 17:24:48', '2021-01-08 17:24:48'),
(605, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 26, NULL, NULL, '{\"attributes\": {\"id\": 26, \"uuid\": \"3676a6f8-5723-40f2-911b-6b466872be59\", \"bloco\": \"7\", \"frete\": 0.8, \"status\": \"ATIVO\", \"percurso\": \"D\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:25:23.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:25:23.000000Z\"}}', '2021-01-08 17:25:24', '2021-01-08 17:25:24'),
(606, 'MatrizFrete', 'created', 'App\\Models\\MatrizFrete', 27, NULL, NULL, '{\"attributes\": {\"id\": 27, \"uuid\": \"b6afa7c9-11d2-4723-9696-32ab137d03d0\", \"bloco\": \"8\", \"frete\": 1, \"status\": \"ATIVO\", \"percurso\": \"D\", \"tenant_id\": 1, \"created_at\": \"2021-01-08T17:25:36.000000Z\", \"deleted_at\": null, \"updated_at\": \"2021-01-08T17:25:36.000000Z\"}}', '2021-01-08 17:25:36', '2021-01-08 17:25:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `armazems`
--

CREATE TABLE `armazems` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `fornecedor_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percurso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` enum('PRÓPRIO','TERCEIRO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ATIVO','DESATIVADO','BLOQUEADO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `armazems`
--

INSERT INTO `armazems` (`id`, `tenant_id`, `fornecedor_id`, `uuid`, `nome`, `cidade`, `percurso`, `tipo`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '356717ea-590f-41b9-9245-c8bd3e19cf2f', 'SANTA MARTHA', 'FAZENDA', 'D', 'PRÓPRIO', 'ATIVO', NULL, '2021-01-08 12:46:22', '2021-01-08 12:46:22'),
(2, 1, 3, '48eb5d47-02a6-472e-978f-cd401b34b556', 'CARGILL__BJG', 'BOM JESUS', 'A', 'TERCEIRO', 'ATIVO', NULL, '2021-01-08 12:48:17', '2021-01-08 12:48:17'),
(3, 1, 3, '7ff42fd6-b09b-402a-9e49-daebbf4d4fd3', 'CARGILL__CRUZ', 'CRUZEIRO', 'B', 'TERCEIRO', 'ATIVO', NULL, '2021-01-08 12:49:17', '2021-01-08 12:49:46'),
(4, 1, 4, '4b4f03de-de9f-45aa-8eae-6bd651550463', 'AGROBOM__BJG', 'BOM JESUS', 'A', 'TERCEIRO', 'ATIVO', NULL, '2021-01-08 12:53:33', '2021-01-08 13:22:16'),
(5, 1, 5, '0bac0357-f3eb-4a4b-9568-1387511a949b', 'CARAMURU__LGO', 'CASTELÂNDIA', 'E', 'TERCEIRO', 'ATIVO', NULL, '2021-01-08 12:53:56', '2021-01-08 13:22:05'),
(6, 1, 6, 'da2e8178-5f6d-43cd-8e44-2fe609e6b4ee', 'ADM__CAST', 'CASTELÂNDIA', 'C', 'TERCEIRO', 'ATIVO', NULL, '2021-01-08 12:54:56', '2021-01-08 13:21:55'),
(7, 1, 7, 'eb8784af-f14b-4581-9c36-5219d13ac294', 'BAGEL__BJG', 'BOM JESUS', 'A', 'TERCEIRO', 'ATIVO', NULL, '2021-01-08 12:55:23', '2021-01-08 13:20:04'),
(8, 1, 7, 'c0f63d70-dfb2-446a-b9c9-d24e8eb76ee4', 'BAGEL__CAST', 'CASTELÂNDIA', 'C', 'TERCEIRO', 'ATIVO', NULL, '2021-01-08 12:55:45', '2021-01-08 13:21:46'),
(9, 1, 8, '362d9a32-8a46-468d-9c7c-587c399c67b5', 'SABÁ__BJG', 'BOM JESUS', 'A', 'TERCEIRO', 'ATIVO', NULL, '2021-01-08 13:21:32', '2021-01-08 13:21:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `centro_administrativos`
--

CREATE TABLE `centro_administrativos` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `produtor_id` bigint UNSIGNED NOT NULL,
  `fazenda_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `centro_custos`
--

CREATE TABLE `centro_custos` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('PRODUÇÃO','MÁQUINAS','ADMINISTRATIVO','COMBUSTÍVEL','DIVERSOS','LUBRIFICANTES','OFICINA') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PRODUÇÃO',
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativo',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `centro_custos`
--

INSERT INTO `centro_custos` (`id`, `tenant_id`, `uuid`, `nome`, `tipo`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '13cbd131-6723-4766-bd1c-74661a14ca78', 'ADIANTAMENTO COLHEITA', 'PRODUÇÃO', 'Ativo', NULL, '2020-11-20 03:54:02', '2020-11-20 03:54:02'),
(2, 1, 'f4a26a91-3e15-4199-826f-fc5d118fcc09', 'ADIANTAMENTO PLANTIO', 'PRODUÇÃO', 'Ativo', NULL, '2020-11-20 03:54:29', '2020-11-20 03:54:29'),
(3, 1, '15233856-42c4-439c-8483-9edc6add1c52', 'ARRENDAMENTO', 'PRODUÇÃO', 'Ativo', NULL, '2020-11-20 03:54:43', '2020-11-20 03:54:43'),
(4, 1, 'b0479ed6-def6-4278-b04a-ce87180bb218', 'BENFEITURIAS', 'ADMINISTRATIVO', 'Ativo', NULL, '2020-11-20 03:54:55', '2020-11-20 03:54:55'),
(5, 1, 'c4251562-dffc-4bc0-9903-82c8fd181a0f', 'CONTRIBUIÇÃO SOCIAL', 'ADMINISTRATIVO', 'Ativo', NULL, '2020-11-20 03:55:06', '2020-11-20 03:55:06'),
(6, 1, '9a6a0759-93ba-459e-83d5-8b4ea8c0b3d7', 'COZINHA', 'ADMINISTRATIVO', 'Ativo', NULL, '2020-11-20 03:55:21', '2020-11-20 03:55:21'),
(7, 1, 'bd32b31e-a760-4d50-957a-e347b6e81f84', 'CUSTO ADMINISTRATIVO', 'PRODUÇÃO', 'Ativo', NULL, '2020-11-20 03:55:36', '2020-11-20 03:55:36'),
(8, 1, '049aa7c0-411d-4579-988f-79f6517c3a02', 'DEPARTAMENTO PESSOAL RH', 'ADMINISTRATIVO', 'Ativo', NULL, '2020-11-20 03:55:55', '2020-11-20 03:55:55'),
(9, 1, 'a5ae3e5d-acb8-49ec-96e7-bce486d64028', 'DIVERSOS', 'DIVERSOS', 'Ativo', NULL, '2020-11-20 04:07:03', '2020-11-20 04:09:45'),
(10, 1, '380f0215-baa3-4264-9592-0f4c5826851c', 'ELETRICA', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 08:05:04', '2020-11-20 08:05:04'),
(12, 1, '97451453-b64b-4fa2-abba-53479784bc39', 'ENERGIA', 'ADMINISTRATIVO', 'Ativo', NULL, '2020-11-20 09:07:20', '2020-11-20 09:07:20'),
(13, 1, '9637dbd9-2b9a-4b34-a447-bb0919e3dbad', 'FRETE', 'PRODUÇÃO', 'Ativo', NULL, '2020-11-20 09:09:18', '2020-11-20 09:09:18'),
(14, 1, '1e205bf2-aa01-40c8-8f52-0888499e0344', 'GASOLINA', 'COMBUSTÍVEL', 'Ativo', NULL, '2020-11-20 09:09:30', '2020-11-20 09:09:30'),
(15, 1, '04d9e6ac-a946-4a89-b56e-1d251df66a38', 'INSUMOS', 'PRODUÇÃO', 'Ativo', NULL, '2020-11-20 09:09:46', '2020-11-20 09:09:46'),
(16, 1, 'e8131101-d944-43f2-9792-b8744eac90c7', 'LUBRIFICANTES', 'LUBRIFICANTES', 'Ativo', NULL, '2020-11-20 09:14:05', '2020-11-20 09:14:05'),
(17, 1, '3d999436-bad7-43ff-9208-923784e456e2', 'MANGUEIRAS E CONSERTO', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:14:27', '2020-11-20 09:14:27'),
(18, 1, 'ff354361-ccfb-4c69-abe4-25fd86480713', 'MATERIAIS P/ OFICINA', 'OFICINA', 'Ativo', NULL, '2020-11-20 09:18:34', '2020-11-20 09:18:34'),
(19, 1, '61edd3a5-04ed-44bf-9c38-807a7ad4868c', 'MATERIAL ELETRICO', 'ADMINISTRATIVO', 'Ativo', NULL, '2020-11-20 09:19:04', '2020-11-20 09:19:04'),
(20, 1, 'f788bd2c-100e-4d6e-89a6-d8c943000186', 'ÓLEO DIESEL', 'COMBUSTÍVEL', 'Ativo', NULL, '2020-11-20 09:19:14', '2020-11-20 09:19:14'),
(21, 1, '2b5bb1bb-0eb6-46ac-ab9a-52d4408fd1a3', 'PEÇAS BAZUKAS', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:19:24', '2020-11-20 09:19:24'),
(22, 1, 'f6fbd122-8f6a-4d8b-8172-fee5bc11b0bd', 'PEÇAS COLHEITADEIRAS', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:19:33', '2020-11-20 09:19:33'),
(23, 1, '22c65f43-a412-4473-9b09-d2015d140fa6', 'PEÇAS DE IMPLEMENTOS', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:19:45', '2020-11-20 09:19:45'),
(24, 1, 'a021b4d2-dc86-460b-a668-b0db0effdc78', 'PEÇAS GERAIS', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:20:12', '2020-11-20 09:20:12'),
(25, 1, '6bd1c789-dd04-4510-bf67-e8d520d80134', 'PEÇAS PLANTADEIRAS', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:20:21', '2020-11-20 09:20:21'),
(26, 1, '5923f178-9bfb-40d9-af02-a71b6f5b84c1', 'PEÇAS TRATORES', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:20:31', '2020-11-20 09:20:31'),
(27, 1, '8f76253a-6295-4cdd-9119-943dea179aa0', 'PEÇAS UNIPORT', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:20:41', '2020-11-20 09:20:41'),
(28, 1, 'dda0384a-8160-4581-a435-bc28541e8d28', 'PEÇAS VEICULOS', 'ADMINISTRATIVO', 'Ativo', NULL, '2020-11-20 09:29:35', '2020-11-20 09:29:35'),
(29, 1, 'd1dfe8ac-d9d2-43d6-808d-bc82cc76bd9e', 'PNEUS E CAMARAS', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:29:59', '2020-11-20 09:29:59'),
(30, 1, '4bbbece1-a9f0-486e-89be-552ec13ca8ef', 'SABÃO', 'OFICINA', 'Ativo', NULL, '2020-11-20 09:30:08', '2020-11-20 09:30:08'),
(31, 1, 'c6009f64-04a2-41ff-a005-8f1eff79b198', 'SERVIÇOS COLHEIDEIRAS', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:30:28', '2020-11-20 09:30:28'),
(32, 1, 'ae21d97b-366f-4a4b-95fc-4f6c8964bdb9', 'SERVIÇOS GERAIS', 'DIVERSOS', 'Ativo', NULL, '2020-11-20 09:30:52', '2020-11-20 09:30:52'),
(33, 1, '7b3b12d0-8f00-47af-ba08-205a4137a34c', 'SERVIÇOS IMPLEMENTOS', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:31:01', '2020-11-20 09:31:01'),
(34, 1, '39bf6554-6fed-4aee-a8bc-e685be407097', 'SERVIÇOS TRATORES', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:31:10', '2020-11-20 09:31:10'),
(35, 1, '9eb49aa0-88d7-47d0-94f9-d1f1c3252a55', 'SERVIÇOS UNIPORT', 'MÁQUINAS', 'Ativo', NULL, '2020-11-20 09:31:16', '2020-11-20 09:31:21'),
(36, 1, '4633e9f9-9e2d-4711-9dac-ac9d5d08bd9f', 'SERVIÇOS VEICULOS', 'ADMINISTRATIVO', 'Ativo', NULL, '2020-11-20 09:31:41', '2020-11-20 09:31:41'),
(37, 1, '312c73c6-ff68-4ee5-8895-df50bc3104b7', 'TELEFONE', 'ADMINISTRATIVO', 'Ativo', NULL, '2020-11-20 09:31:51', '2020-11-20 09:31:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `colhedors`
--

CREATE TABLE `colhedors` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `fornecedor_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qnt_linha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ATIVO','DESATIVADO','BLOQUEADO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `colhedors`
--

INSERT INTO `colhedors` (`id`, `tenant_id`, `fornecedor_id`, `uuid`, `nome`, `qnt_linha`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'ea7d4300-d157-449e-8885-466954be8c40', 'PAULO', NULL, 'ATIVO', NULL, '2021-01-08 14:45:21', '2021-01-08 14:45:21'),
(2, 1, 65, '0c4000ef-35b4-4bd0-8719-1293fc50a282', 'RUSSO', NULL, 'ATIVO', NULL, '2021-01-08 14:45:35', '2021-01-08 14:45:35'),
(3, 1, 69, 'd4816f22-69d3-4c07-aa4d-1f8ae339eda5', 'SERGIO', NULL, 'ATIVO', NULL, '2021-01-08 14:45:46', '2021-01-08 14:45:46'),
(4, 1, 70, '57de0f66-a487-4270-bdb3-d87e48546c8c', 'WAGNER', NULL, 'ATIVO', NULL, '2021-01-08 14:45:58', '2021-01-08 14:45:58'),
(5, 1, 71, '3ebfa2eb-88c8-4353-bf82-4e0e457b0fd4', 'WESTER', NULL, 'ATIVO', NULL, '2021-01-08 14:46:13', '2021-01-08 14:46:13'),
(6, 1, 68, 'a395bcd5-4ffc-4f4c-b11a-09f9315cf579', 'MISTA', NULL, 'ATIVO', NULL, '2021-01-08 14:46:33', '2021-01-08 14:46:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `culturas`
--

CREATE TABLE `culturas` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Ativa','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativa',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `culturas`
--

INSERT INTO `culturas` (`id`, `tenant_id`, `uuid`, `nome`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '5c020d40-72f1-46c3-b9f6-ae32c4a0be26', 'SOJA', 'Ativa', NULL, '2020-11-27 09:17:55', '2020-11-27 09:17:55'),
(2, 1, '76cd04ae-3d26-4707-9639-362ffb53047c', 'MILHO', 'Desativada', NULL, '2020-11-27 09:19:04', '2020-12-01 04:27:15'),
(3, 1, '6313de93-aede-4dab-87ea-31bed6e46e13', 'MILHETO', 'Desativada', NULL, '2020-11-27 09:19:22', '2020-12-01 03:55:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fazendas`
--

CREATE TABLE `fazendas` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `proprietario_id` bigint UNSIGNED NOT NULL,
  `produtor_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inscricao_estadual` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Ativa','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativa',
  `area_total` double(10,2) DEFAULT NULL,
  `nome_gerente` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complemento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `fazendas`
--

INSERT INTO `fazendas` (`id`, `tenant_id`, `proprietario_id`, `produtor_id`, `uuid`, `nome`, `inscricao_estadual`, `status`, `area_total`, `nome_gerente`, `cep`, `estado`, `cidade`, `bairro`, `endereco`, `complemento`, `numero`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 2, '346aebd3-cdde-4d9f-92f6-d1f539617760', 'FAZENDA SÃO JUDAS TADEU', '11.292.306-2', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-28 23:14:23', '2020-11-29 01:56:30'),
(2, 1, 1, 2, 'a2e5a332-b588-4770-bbf2-4e72f1b51070', 'FAZENDA SÃO JOÃO (PAULO LEONARDO)', '11.369.864-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 02:03:31', '2020-11-29 04:54:54'),
(3, 1, 28, 2, 'aac43180-6a75-4114-b9b3-b96f8010ab14', 'FAZENDA NSA SRA APARECIDA', '11.345.579-8', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 02:04:34', '2020-11-29 02:04:34'),
(4, 1, 4, 2, '6ad51970-9f1a-4b38-9d19-a31bbfaf6285', 'FAZENDA CANADÁ', '11.426.896-7', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 02:05:47', '2020-11-29 02:05:47'),
(5, 1, 12, 2, '1191190e-81e1-4ef0-a9d9-7e0c765f889b', 'FAZENDA LAMBARI (CARLOS CREPALDI)', '11.470.821-5', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 02:06:22', '2020-11-29 02:06:22'),
(6, 1, 1, 2, '4633d554-fdf2-4d59-9cab-8c522c8e3a5c', 'FAZENDA SÃO JOSE (PAULO LEONARDO)', '11.416.858-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:23:50', '2020-11-29 04:55:41'),
(7, 1, 11, 2, '5341437e-1b72-4a4c-939d-35bd0e934999', 'FAZENDA LAMBARI (JUSSARA KEDHI)', '11.302.915-2', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:24:29', '2020-11-29 03:24:29'),
(8, 1, 13, 2, '46ee8b26-fb11-464c-b8fc-5b56140837e2', 'FAZENDA LAMBARI (CECILIA KEDHI)', '11.470.820-7', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:25:15', '2020-11-29 03:25:15'),
(9, 1, 5, 2, 'c78bdbdc-5cd8-43a3-9082-d02d5fc8f608', 'FAZENDA SÃO JOÃO II (ALDO JOÃO)', '11.393.923-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:26:26', '2020-11-29 03:26:26'),
(10, 1, 29, 2, 'e17f0a63-4408-40d5-b38b-bac6675d8d1f', 'FAZENDA LAMBARI (DELCIDES)', '11.359.199-3', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:30:38', '2020-11-29 03:30:38'),
(11, 1, 30, 2, '91e50aa7-eacb-4bff-81c3-ff7ea80ff3e1', 'FAZENDA SANTA PAULA (JOÃO NAVES)', '11.477.485-4', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:34:43', '2020-11-29 03:34:43'),
(12, 1, 14, 2, '543fd9e5-9967-4baf-8766-556a565f3ffb', 'FAZENDA LAMBARI (BEATRIZ KEDHI)', '11.467.859-6', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:36:04', '2020-11-29 03:36:04'),
(13, 1, 6, 2, '24190386-15bb-4a20-84f8-24d5c45072c3', 'FAZENDA DIVINO PAI ETERNO (ZELIM)', '11.477.486-2', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:41:43', '2020-11-29 03:41:43'),
(14, 1, 2, 2, '1fc7b237-d26a-41a6-b103-0e113ec8bd71', 'FAZENDA SANTA MARTHA (LEONARDO)', '11.490.524-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:42:29', '2020-11-29 03:42:29'),
(15, 1, 19, 1, 'cf8db78a-5f78-422b-be1b-c8d213bba081', 'FAZENDA PADRE NOSSO (SEBAST. RESENDE)', '11.420.116-1', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:43:33', '2020-11-29 03:43:33'),
(16, 1, 3, 1, 'd2341ea1-c0f1-42d8-8a31-92e81d8cb33e', 'FAZENDA SANTA MARTHA (DONA MARTHA)', '11.418.102-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:31:57', '2020-11-29 04:34:34'),
(17, 1, 25, 1, '2802f6e6-adee-4713-8203-4b17523ab2bd', 'FAZENDA LAMBARI (ADEVALDES P. CARRUO)', '11.333.833-3', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:33:30', '2020-11-29 04:33:30'),
(18, 1, 15, 1, '03c64c24-91ed-454d-84f7-397dc8db5dd6', 'FAZENDA C RIO DOS BOIS (FERNANDO)', '11.266.037-1', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:34:08', '2020-11-29 04:34:08'),
(19, 1, 31, 1, 'c1cc6d67-0f42-4887-88c7-f169f57d5f87', 'FAZENDA LAMBARI (CASSIANO COSTA)', '11.335.051-1', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:36:17', '2020-11-29 04:36:17'),
(20, 1, 26, 1, 'f52b98fd-b01b-48f4-970c-d545775fe6e8', 'FAZENDA BARRA BONITA (JOÃO FRANCISCO)', '11.321.583-5', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:37:25', '2020-11-29 04:37:25'),
(21, 1, 32, 1, '98216241-bc13-4cd6-bfa0-e741f0d98cfa', 'FAZENDA B.J STA BARBARA (AZARIAS REZ.)', '11.420.398-9', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:39:26', '2020-11-29 04:39:26'),
(22, 1, 16, 1, 'a6ad5bf0-c782-4dbe-9a1d-f2824a5c2f62', 'FAZENDA LAMBARI (ADILSON BATISTA)', '11.321.765-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:40:09', '2020-11-29 04:40:09'),
(23, 1, 7, 1, '91347e5c-826c-40c5-a2fd-8005cab419a5', 'FAZENDA BOM SUCESSO (GRACIELLE)', '11.322.151-7', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:40:54', '2020-11-29 04:40:54'),
(24, 1, 8, 1, 'bf4b1bf3-be87-47fa-bfcb-63863a3b268d', 'FAZENDA BOM SUCESSO (PATRICIA)', '11.322.149-5', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:41:43', '2020-11-29 04:41:43'),
(25, 1, 33, 1, '1c337b9e-1d20-49e2-8f55-605ef4bfcda9', 'FAZENDA STA BARBARA(OSCAR TOMÊ)', '11.359.116-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:43:22', '2020-11-29 04:43:22'),
(26, 1, 25, 1, 'd83489aa-3396-4618-a895-93e2386fb036', 'FAZENDA LAGOA DA PATA(ADVALDES P. JR)', '11.333.927-5', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:44:11', '2020-11-29 04:44:11'),
(27, 1, 9, 1, '3c7a5e62-0d5b-4996-b999-36b584acd507', 'FAZENDA BOM SUCESSO (EURIPEDES)', '11.322.099-5', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:45:09', '2020-11-29 04:45:09'),
(28, 1, 26, 1, 'e25567a0-ab0c-4034-8a2f-9f5a8d2c98a0', 'FAZENDA NOVA GRANADA (JOÃO FRANCISCO)', '11.365.605-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:45:55', '2020-11-29 04:45:55'),
(29, 1, 1, 1, 'e8ea8ecc-83f6-4487-8a9f-2b7f73284290', 'FAZENDA BEIRA RIO (PAULO TITOTO)', '11.398.454-5', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:46:42', '2020-11-29 04:46:42'),
(30, 1, 17, 1, '186d1874-0813-469b-8251-53b60e6e2bb1', 'FAZENDA LAMBARI (MARTA COSTA)', '11.335.080-5', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:47:22', '2020-11-29 04:47:22'),
(31, 1, 27, 1, '375f1c70-f84a-46cf-8daa-31117eccc2ff', 'FAZENDA STA BARBARA(HELIO MARTINS)', '11.403.547-4', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:48:05', '2020-11-29 04:48:05'),
(32, 1, 1, 1, 'b8969adb-0c9a-4c81-b034-e5f1be1a1fd9', 'FAZENDA BARRA GRANDE (PAULO TITOTO )', '11.270.063-2', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:48:37', '2020-11-29 04:48:37'),
(33, 1, 10, 1, 'a589dad6-5897-4c66-b61d-1d00d7201054', 'FAZENDA S J DA CARAIBA (RENATINHO)', '11.293.630-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:49:08', '2020-11-29 04:49:08'),
(34, 1, 1, 1, '9bc333aa-e7fd-4235-9077-7f2e67d2e5de', 'FAZENDA SÃO JOSE (PAULO PAULO)', '11.416.740-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:53:43', '2020-11-29 04:53:43'),
(35, 1, 24, 1, '04ff6250-ef12-4d1f-a071-fc94964852b0', 'FAZENDA CARANHA (MARISA C. ANDRADE)', '11.458.239-4', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 05:04:18', '2020-11-29 05:04:18'),
(36, 1, 20, 1, '12477ae2-f768-40a3-8f76-0d1f91c7bcc6', 'FAZENDA PADRE NOSSO ( IVONDES )', '11.420.103-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 05:04:47', '2020-11-29 05:04:47'),
(37, 1, 23, 1, '696034d4-81c7-425e-9114-070ccf73c67f', 'FAZENDA SANTA BARBARA(DIVANILDA)', '11.492.709-0', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 05:05:42', '2020-11-29 05:05:42'),
(38, 1, 22, 1, 'edb594e2-09f5-4143-90c2-ae664332a867', 'FAZENDA CORREGO DO MULADO(IVAN VASC)', '11.457.557-1', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 05:06:13', '2020-11-29 05:06:13'),
(39, 1, 23, 1, '49e8deb1-6913-49f4-ac8b-001f934958de', 'FAZENDA JOÃO PEDRO(DIVANILDA)', '11.492.710-3', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 05:06:47', '2020-11-29 05:06:47'),
(40, 1, 18, 1, '9ea3bcc2-8963-4f86-813a-f144f4bc0312', 'FAZENDA BACURI (FABIO PEREIRA)', '11.311.603-9', 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-01 06:05:31', '2020-12-01 06:05:31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedors`
--

CREATE TABLE `fornecedors` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `razao_social` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome_fantasia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf_cnpj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rg_inscricao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalidade` enum('ARMAZÉNS GERAIS','COMBUSTÍVEIS','COLHEDOR','FUNCIONÁRIO','GERAL','INSUMOS','MAQUINÁRIO','USO CONSUMO','TRANSPORTADOR') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('FÍSICO','JURÍDICO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complmento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome_contato` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_contato` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone_contato` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `fornecedors`
--

INSERT INTO `fornecedors` (`id`, `tenant_id`, `uuid`, `razao_social`, `nome_fantasia`, `cpf_cnpj`, `rg_inscricao`, `finalidade`, `tipo`, `email`, `telefone`, `celular`, `cep`, `estado`, `cidade`, `bairro`, `endereco`, `complmento`, `numero`, `nome_contato`, `email_contato`, `telefone_contato`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '41d71b71-6cff-46ef-9d49-9c43975e9d54', 'FAZENDA SANTA MARTHA', 'FAZENDA SANTA MARTHA', NULL, NULL, 'ARMAZÉNS GERAIS', 'FÍSICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:50', '2021-01-08 11:13:50'),
(2, 1, '0a8c5c50-3933-4528-a373-17c7a3ad1664', 'PAULO', 'PAULO', NULL, NULL, 'COLHEDOR', 'FÍSICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:50', '2021-01-08 11:13:50'),
(3, 1, 'dbeea51b-e46c-4d87-a6a3-90fe5dd86f2c', 'CARGILL', 'CARGILL', NULL, NULL, 'ARMAZÉNS GERAIS', 'FÍSICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:50', '2021-01-08 11:13:50'),
(4, 1, '6bfddc45-2222-4d70-ab16-dca595395573', 'AGROBOM', 'AGROBOM', NULL, NULL, 'ARMAZÉNS GERAIS', 'FÍSICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:50', '2021-01-08 11:13:50'),
(5, 1, '82de8275-d08b-49f0-8d1c-f8fc3132b297', 'CARAMURU', 'CARAMURU', NULL, NULL, 'ARMAZÉNS GERAIS', 'FÍSICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:50', '2021-01-08 11:13:50'),
(6, 1, '9cd02170-b3d4-433a-808b-921d62831d2d', 'ADM', 'ADM', NULL, NULL, 'ARMAZÉNS GERAIS', 'FÍSICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:51', '2021-01-08 11:13:51'),
(7, 1, '2ff357fe-a8c5-4aff-ab1a-5a9b08c2ee94', 'BAGEL', 'BAGEL', NULL, NULL, 'ARMAZÉNS GERAIS', 'FÍSICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:51', '2021-01-08 11:13:51'),
(8, 1, '5fed250b-95d5-4210-879f-b7d05f2bb5d9', 'SABÁ', 'SABÁ', NULL, NULL, 'ARMAZÉNS GERAIS', 'FÍSICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:51', '2021-01-08 11:13:51'),
(9, 1, '675bbf71-3ba4-4bbe-a0f9-bdf598fb77e9', 'ABILIO JOSÉ DA SILVA', 'ABILIO JOSÉ DA SILVA', '340.796.452-87', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. GOIÁS', NULL, '2636', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:51', '2021-01-08 11:13:51'),
(10, 1, 'c0499c0f-905e-4c49-9ce2-d18adf02b08e', 'ARG TRANSPORTES LTDA', 'ALDO RODRIGUES GUERRA', '09.504.473/0001-73', NULL, 'TRANSPORTADOR', 'JURÍDICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'CENTRO', 'RUA DOIS', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:51', '2021-01-08 11:13:51'),
(11, 1, '63d0b0e3-53ca-45a3-8d8d-c0eca9f09535', 'ALEX ALVES DA COSTA', 'ALEX ALVES DA COSTA', '866.509.471-72', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'RUA.PROF(A) MARIA JOSÉ MIGUEL', NULL, '379', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:52', '2021-01-08 11:13:52'),
(12, 1, 'ed1eca13-7ec6-497a-a104-9e8f2a2e66cc', 'ALEX APARECIDO LOPES MARTINS', 'ALEX APARECIDO LOPES MARTINS', '032.440.731-90', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'MORADA NOVA', 'Q 04 , L 129', NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:52', '2021-01-08 11:13:52'),
(13, 1, 'f1b86899-b17d-4d50-8542-485fed837762', 'ANTÔNIO ALVES CUSTODIO', 'ANTÔNIO ALVES CUSTODIO', '220.140.121-72', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. GOIÂNIA', NULL, '1.670', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:52', '2021-01-08 11:13:52'),
(14, 1, '013f4e7b-797a-41f9-a7af-c2c3f5acd8ea', 'ANTÔNIO BRAZ PEREIRA', 'ANTÔNIO BRAZ PEREIRA', '321.068.406-59', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'BELA VISTA', 'JOÃO GONÇALVES DIAS', NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:52', '2021-01-08 11:13:52'),
(15, 1, 'c62768ab-724f-468d-926f-7f6f9350eeb9', 'CASSIO APARECIDO ALVES', 'CASSIO APARECIDO ALVES', '396.334.568-35', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '14700020', 'SP', 'BEBEDOURO', 'JD ALVORADA', 'RUA OSCAR AUGUSTO PEREIRA', NULL, '1.371', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:53', '2021-01-08 11:13:53'),
(16, 1, '20b91b3b-168a-44a7-b576-cb25a386f4b7', 'CELSO MARTINS DA SILVA', 'CELSO MARTINS DA SILVA', '660.244.711-49', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', NULL, 'CRUZEIRO DO SUL L74, Q 04', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:53', '2021-01-08 11:13:53'),
(17, 1, '5e01e253-8134-4541-b56c-2be0ce2cf64a', 'CICERO SALDANHA DA SILVA', 'CICERO SALDANHA DA SILVA', '587.560.191-49', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'MORADA NOVA', 'RUA. PERCILIO OLIVEIRA GONÇALVES / Q05, L 110', NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:53', '2021-01-08 11:13:53'),
(18, 1, '41abccb6-33e4-4c08-b02d-2b563c7238a0', 'CICERO SILVA', 'CICERO SILVA', '190.578.731-68', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'DONA ELEONTINA', 'RUA JOSÉ MALAQUIAS', NULL, '232', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:53', '2021-01-08 11:13:53'),
(19, 1, '4d90ced1-8462-4f22-b219-263a3be0bd82', 'CICERO TAVARES DE OLIVEIRA', 'CICERO TAVARES DE OLIVEIRA', '280.673.041-49', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'ANDIRA', 'AV. ABÍLIO', NULL, '186', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:53', '2021-01-08 11:13:53'),
(20, 1, 'b26ebb88-0a7a-44b3-a2cd-ddceabf9548f', 'DENIS MAURICIO LEMBI', 'DENIS MAURICIO LEMBI', '876.463.231-87', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'RUA.PORF(A) MARIA JOSÉ MIGUEL', NULL, '312', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:54', '2021-01-08 11:13:54'),
(21, 1, '3bc8bdb3-d313-4dfe-9597-8a0ec5849c9d', 'DIEGO DA SILVA', 'DIEGO DA SILVA', '032.167.021-38', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. BRASÍLIA', NULL, '1.509', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:54', '2021-01-08 11:13:54'),
(22, 1, '97a5cfcb-7e90-4ed1-88f4-bfadf1f4fa2c', 'DIONES MENEZES GOMES', 'DIONES MENEZES GOMES', '047.840.561-81', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'MORADA NOVA', 'AV.ABILIO JOSÉ DE FREITAS, Q11, L 195', NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:54', '2021-01-08 11:13:54'),
(23, 1, 'd8f0a57b-b622-46da-8628-99800843e6c0', 'EDUARDO ANTÔNIO ALVES', 'EDUARDO ANTÔNIO ALVES', '026.392.811-00', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'AV. RIO VERDE', 'CENTRO', 'AV. RIO VERDE', NULL, '1.338', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:54', '2021-01-08 11:13:54'),
(24, 1, '9cd93a9f-82dc-4be8-b2e5-34a7e2d9b39e', 'EMERSON ALVES JUSTINO', 'EMERSON ALVES JUSTINO', '612.444.141-15', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. GOIÁS', NULL, '2.364', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:55', '2021-01-08 11:13:55'),
(25, 1, 'ffbb2491-4d9c-409d-a6f8-7b4caf4549df', 'EMERSON DE MORAES CESAR', 'EMERSON DE MORAES CESAR', '191.996.818-03', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'ANDIRÁ', 'RUA. FLORIANA FERREIRA', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:55', '2021-01-08 11:13:55'),
(26, 1, 'b13c2512-9adf-4aa4-9dea-765921026eaa', 'ETELVINO ALCÂNTARA SILVA NETO', 'ETELVINO ALCÂNTARA SILVA NETO', '009.267.741-07', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. BRASÍLIA', NULL, '1.825', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:55', '2021-01-08 11:13:55'),
(27, 1, '77e15db1-612e-4ff8-8ef0-37b3db380fef', 'EURÍPEDES MARTINS DE OLIVEIRA', 'EURÍPEDES MARTINS DE OLIVEIRA', '932.937.981-87', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. BARSILIA', NULL, '1.906', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:55', '2021-01-08 11:13:55'),
(28, 1, 'ab7503ab-4f43-4f7b-8b2c-d141aab11152', 'FABIANO CASSIMIRO DOS SANTOS', 'FABIANO CASSIMIRO DOS SANTOS', '827.663.551-20', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'BAIRRO OLÍMPIA', 'AV. TOCANTINS', NULL, '261', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:55', '2021-01-08 11:13:55'),
(29, 1, '043f5db2-fd16-4386-8756-bee206c1ee87', 'FABIANO SOUZA TERRA', 'FABIANO SOUZA TERRA', '623.862.471-04', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'ANIBAL LIMA', 'AV. BRASIL', NULL, '219', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:56', '2021-01-08 11:13:56'),
(30, 1, '59da3ad8-9bfa-4702-8b15-c76db59738b0', 'FRANCISCO SANTANA  DOS SANTOS', 'FRANCISCO SANTANA  DOS SANTOS', '288.372.901-87', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75970000', 'GO', 'TURVELÂNDIA', 'DONA CONSTANCIA', 'RUA. ADIVERTINO JOSÉ VIEIRA, Q4, L12', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:56', '2021-01-08 11:13:56'),
(31, 1, '33b247fb-8803-4cf3-b276-0ccc2743c6fd', 'GILMAR PEREIRA DE OLIVEIRA', 'GILMAR PEREIRA DE OLIVEIRA', '435.178.896-87', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'ALVORADA', 'AV. PRESIDENTE VARGAS', NULL, '634', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:56', '2021-01-08 11:13:56'),
(32, 1, 'd2697142-f910-46c1-85ef-bf9950ed577c', 'IVAN GONÇALVES DA SILVA', 'IVAN GONÇALVES DA SILVA', '292.585.611-04', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'OLIMPIA', 'AV. FREDERICO SARAIVA', NULL, '736', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:56', '2021-01-08 11:13:56'),
(33, 1, '89ff85b1-94f5-49eb-89c0-d81f291de69b', 'JEAN CARLOS DE GOIS', 'JEAN CARLOS DE GOIS', '009.261.221-00', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75930000', 'GO', 'MAURILÂNDIA', 'CENTRO', 'Rua. OLIMPIO CARVALHO DE SOUSA, Q10, L08', NULL, '68', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:57', '2021-01-08 11:13:57'),
(34, 1, '656be0f8-37fc-40b3-b482-abe28d1bc7c8', 'JOÃO BATISTA GONÇALVES', 'JOÃO BATISTA GONÇALVES', '211.046.466-68', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'ANIBAL LIMA', 'AV. BRASÍLIA', NULL, '224', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:57', '2021-01-08 11:13:57'),
(35, 1, '6a866bbc-f0bb-4109-b5b5-df950a18b49a', 'JOÃO BATISTA SILVA LOPES', 'JOÃO BATISTA SILVA LOPES', '477.290.401-82', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'DONA JOSINA', 'RUA QUIRINOPOLIS', NULL, '103', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:57', '2021-01-08 11:13:57'),
(36, 1, '3c303a82-f3ce-49ad-94be-eef6df89b37e', 'JOAQUIM JOSÉ PEREIRA', 'JOAQUIM JOSÉ PEREIRA', '168.373.121-20', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'ANÍBAL LIMA', 'AV. BRASÍLIA', NULL, '105', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:57', '2021-01-08 11:13:57'),
(37, 1, '9a862462-1f9a-4be8-8c4f-dc74fa11fc33', 'JOSÉ ÉLCIO FRANCISCO DAS CHAGAS', 'JOSÉ ÉLCIO FRANCISCO DAS CHAGAS', '419.530.881-04', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'VILA OPERARIA', 'AV. BRASÍLIA', NULL, '1.286', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:57', '2021-01-08 11:13:57'),
(38, 1, '979b3692-79d3-4ed1-9ebe-fa134ea08093', 'JOSÉ MARIM DOS REIS PIRES', 'JOSÉ MARIM DOS REIS PIRES', '219.668.501-15', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'TROPICAL', 'AV. MADALENE DIAS CAMPOS, QD21, LT 01', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:58', '2021-01-08 11:13:58'),
(39, 1, '95e626e9-10c4-4162-b6eb-0e9ad08bcf5e', 'JOSÉ PEREIRA ARAÚJO', 'JOSÉ PEREIRA ARAÚJO', '133.736.681-15', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'ALVORADA', 'AV. SETE DE NOVEMBRO', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:58', '2021-01-08 11:13:58'),
(40, 1, '6f3c869a-4c6e-4a92-8be7-b636242a2a25', 'JUNIO CESAR GOMES DO NASCIMENTO', 'JUNIO CESAR GOMES DO NASCIMENTO', '849.632.711-68', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75930000', 'GO', 'MARILÂNDIA', 'CENTRO', 'AV. AMAZONAS', NULL, '85', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:58', '2021-01-08 11:13:58'),
(41, 1, 'da3899fa-dca4-4fa3-a75b-ce77bbe85583', 'LEOPOLDINO BORGES ROSA', 'LEOPOLDINO BORGES ROSA', '375.377.251-87', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'CENTRO', 'AV. PRESIDENTE VARGAS', NULL, '514', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:58', '2021-01-08 11:13:58'),
(42, 1, '7512348c-7fb1-46b4-a5fb-3328516b6fe0', 'MARCELO DE SOUZA MATHIAS', 'MARCELO DE SOUZA MATHIAS', '255.812.5088-71', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '1470020', 'SP', 'BEBEDOURO', 'CENTRO', 'ALAMEDA PAULO CESAR FIGUEIREDO', NULL, '1.292', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:59', '2021-01-08 11:13:59'),
(43, 1, '6a784048-20a2-459c-bcd5-1c382bb3fab4', 'MARCELO FERREIRA DA SILVA', 'MARCELO FERREIRA DA SILVA', '986.693.116.15', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'OLIMPIA', 'AV. ARAGUAIA', NULL, '433', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:59', '2021-01-08 11:13:59'),
(44, 1, '5e3b1de1-7784-4660-96b1-9aa262843880', 'NELVIO DE OLIVEIRA', 'NELVIO DE OLIVEIRA', '020.538.418-85', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '14870400', 'SP', 'JABOTICABAL', 'CENTRO', 'RUA. MIZAEL DE CAMPOS', NULL, '137', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:59', '2021-01-08 11:13:59'),
(45, 1, '34541425-d0f6-4334-8ead-140432f3cb21', 'MARCIO ALCÂNTARA DA SILVA', 'MARCIO ALCÂNTARA DA SILVA', '003.043.061-50', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. BRASÍLIA', NULL, '1.825', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:59', '2021-01-08 11:13:59'),
(46, 1, '8de6c068-b5cd-4fbe-98a6-919679e8aa86', 'MARCOS ANTÔNIO DE SOUSA', 'MARCOS ANTÔNIO DE SOUSA', '499.658.751-20', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'OLIMPIA', 'AV. ARAGUAIA', NULL, '373', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:13:59', '2021-01-08 11:13:59'),
(47, 1, '1a8f3db9-1cef-4af6-8a3f-39fcb5061102', 'NAILTON BATISTA DE ARAÚJO', 'NAILTON BATISTA DE ARAÚJO', '491.200.691-20', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. BRASÍLIA', NULL, '1.681', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:00', '2021-01-08 11:14:00'),
(48, 1, '1fa1c0a5-69cd-42e6-a823-15754d53f8a9', 'NATANAEL SOARES MARQUES', 'NATANAEL SOARES MARQUES', '281.847.241-68', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'ALVORADA', 'AV. JOÃO RODRIGUES DA CUNHA', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:00', '2021-01-08 11:14:00'),
(49, 1, '1e95420b-cf55-4591-8ce3-83c2efc57698', 'OLAVO FERREIRA DE MOURA', 'OLAVO FERREIRA DE MOURA', '167.804.341-91', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'ALVORADA', 'AV. JK', NULL, '118', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:00', '2021-01-08 11:14:00'),
(50, 1, '3fec98c1-10b9-417f-8bf2-b7030c27259c', 'ONEIDES FERREIRA DE MOURA', 'ONEIDES FERREIRA DE MOURA', '271.468.471-87', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'ALVORADA', 'AV. BRASIL', NULL, '320', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:00', '2021-01-08 11:14:00'),
(51, 1, '44a9f54a-328c-4a96-83e2-c298e0522f5e', 'OSMAR JOSÉ PIARAZO', 'OSMAR JOSÉ PIARAZO', '472.879.501-20', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'MORADA NOVA', 'RUA.PERCILO GONÇALVES', NULL, '132', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:01', '2021-01-08 11:14:01'),
(52, 1, '524d4845-b23f-4d97-b2fd-0823a37cbccb', 'PAULO HENRIQUE DA SILVA', 'PAULO HENRIQUE DA SILVA', '007.514.231-73', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. RIO VERDE, QBº, L25', NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:01', '2021-01-08 11:14:01'),
(53, 1, '120e882c-8eb8-4e06-8ff5-ae767edd8feb', 'RICARDO LUIZ DE SOUZA', 'RICARDO LUIZ DE SOUZA', '003.375.331-80', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. GOIÂNIA', NULL, '1.853', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:01', '2021-01-08 11:14:01'),
(54, 1, 'e53b2a82-6487-44ba-9498-b4ef61f5d8dd', 'SEBASTIÃO ROBERTO ESTEVES DE FARIA', 'SEBASTIÃO ROBERTO ESTEVES DE FARIA', '319.073.851-34', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'OLIMPIA', 'R. CENTRAL', NULL, '185', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:01', '2021-01-08 11:14:01'),
(55, 1, '121431f7-2d20-4786-97fc-14229ba1074a', 'SILVANIO DE SOUSA SILVA', 'SILVANIO DE SOUSA SILVA', '786.358.101-04', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'TROPICAL', 'RUA MADALENA CAMPOS DIAS, QD10 L 08', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:01', '2021-01-08 11:14:01'),
(56, 1, 'e6550cae-4897-47c7-9b13-b5c9d92d21ef', 'SIMAR MARTINS DE ANDRADE', 'SIMAR MARTINS DE ANDRADE', '013.457.511-33', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75930000', 'GO', 'MAURILÂNDIA', 'CENTRO', 'RUA. FRANCISCO SALLES DE ABREU SAMPAIO', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:02', '2021-01-08 11:14:02'),
(57, 1, 'dd5bca9e-3e8f-4dd6-a2be-8d3c60034f09', 'SOFIS TRANSPORTADORA EIRELI', 'SOFIS TRANSPORTADORA EIRELI', '31.913.059/0001-02', NULL, 'TRANSPORTADOR', 'JURÍDICO', NULL, NULL, NULL, '74223052', 'GO', 'GOIÂNIA', 'BUENO', 'T 36 , Q 147/ L1/2', NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:02', '2021-01-08 11:14:02'),
(58, 1, '225ec7cb-5400-4430-996c-94e48eff4d3e', 'THIAGO DA SILVA', 'THIAGO DA SILVA', '008.245.281-40', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. BRASÍLIA', NULL, '1.509', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:02', '2021-01-08 11:14:02'),
(59, 1, '85fcc823-8704-4a02-9f63-3cb1b1505405', 'VINICIUS OLIVEIRA LEAL', 'VINICIUS OLIVEIRA LEAL', '036.844.351-55', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. GOIÂNIA', NULL, '2.106', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:02', '2021-01-08 11:14:02'),
(60, 1, '6a90e44e-ff54-4386-86e5-226d9dd1823e', 'WARLAN CANDIDO RODRIGUES', 'WARLAN CANDIDO RODRIGUES', '035.769.101-66', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. BRASILIA', NULL, '1.918', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:03', '2021-01-08 11:14:03'),
(61, 1, '37cda2b2-7d70-49a4-ad8c-4118e16deedc', 'WEDER MENDES DE OLIVEIRA', 'WEDER MENDES DE OLIVEIRA', '046.400.186-22', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'ANDIRÁ', 'JOÃO INÁCIO, QD.07, LT.23', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:03', '2021-01-08 11:14:03'),
(62, 1, '6660b29e-c487-4814-8fe0-150729afe7fe', 'WENDER ESTEVES DE CARVALHO', 'WENDER ESTEVES DE CARVALHO', '008.625.491-08', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'ANIBAL LIMA', 'AV. DAS AMÉRICAS', NULL, '231', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:03', '2021-01-08 11:14:03'),
(63, 1, '5299460c-d358-4a92-9dfc-105ce1459028', 'WODSON FERREIRA DE MOURA', 'WODSON FERREIRA DE MOURA', '040.722.551-06', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'OLIMPIA', 'AV. TANCREDO RODRIGUES DA CUNHA', NULL, '703', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:03', '2021-01-08 11:14:03'),
(64, 1, '01d9d991-f619-4650-9ae6-3b2eb3afee9e', 'YEGO LOPES DE OLIVEIRA', 'YEGO LOPES DE OLIVEIRA', '014.510.401-05', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'ANDIRÁ', 'AV. ABÍLIO DE FREITAS', NULL, '188', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:04', '2021-01-08 11:14:04'),
(65, 1, '9041f1f9-7b2b-4e49-ab04-782d9edd28a7', 'CARLOS ALGUSTO BEGTSOM NETO', 'RUSSO', '040.927.439-98', NULL, 'COLHEDOR', 'FÍSICO', NULL, NULL, NULL, '86170000', 'PR', 'SERTANÓPOLIS', 'JARDIM CASA GRANDE', 'RUA DAS VIOLETAS', NULL, '21', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:04', '2021-01-08 11:14:04'),
(66, 1, '683031b5-08f5-4904-b958-23c38327a67c', 'FABIO VERISSIMO DA SILVA', 'DORIVALDO', '011.654.781-29', NULL, 'COLHEDOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'OLÍMPIA', 'AV.TRANCREDO RODRIGUES DA CUNHA', NULL, '367', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:04', '2021-01-08 11:14:04'),
(67, 1, '36b6a4d4-14c9-4563-8ce5-0b0add964387', 'FRANCISCO DE ASSIS SILVA', 'FRANCISCO', '301.663.576-34', NULL, 'COLHEDOR', 'FÍSICO', NULL, NULL, NULL, '74020140', 'GO', 'GOIÂNIA', 'CENTRO', 'NA RUA 20', NULL, '962', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:04', '2021-01-08 11:14:04'),
(68, 1, 'bc7d1a9a-17f5-48ce-bc8b-e3f59837b6e8', 'ITAMAR DOS REIS BELTODO', 'PASSARINHO', '642.925.921-87', NULL, 'COLHEDOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'SANTO ANTONIO', 'AV. BRASÍLIA', NULL, '2.249', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:04', '2021-01-08 11:14:04'),
(69, 1, 'ac48f86e-d6f7-42c6-97a6-5389664b590d', 'SÉRGIO MURILHO', 'SÉRGIO', '437.775.469-68', NULL, 'COLHEDOR', 'FÍSICO', NULL, NULL, NULL, '86170000', 'PR', 'SERTANÓPOLIS', 'CENTO', 'RUA SERGIPE', NULL, '72', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:05', '2021-01-08 11:14:05'),
(70, 1, 'c301cfa8-7324-4ecc-834e-3274574c8039', 'WAGNER DENIVAL MARCON', 'WAGNER', '639.363.809-53', NULL, 'COLHEDOR', 'FÍSICO', NULL, NULL, NULL, '86170000', 'PR', 'SERTANÓPOLIS', 'CENTRO', 'RUA GOIÁS', NULL, '795', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:05', '2021-01-08 11:14:05'),
(71, 1, 'fcdd33ac-0d4f-432e-865b-132bc2fa5b35', 'WESTER DIVINO PEREIRA', 'WESTER', '814.812.841-34', NULL, 'COLHEDOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. GOIÁS', NULL, '1032', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:05', '2021-01-08 11:14:05'),
(72, 1, '64fbfb5b-0ea8-4e46-aeaf-03de733fc225', 'GESMAR MARTINS SOBRINHO', 'GESMAR BENE', '369.174.191-68', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. ABÍLIO JOSÉ DE FRETIAS', NULL, '2775', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:05', '2021-01-08 11:14:05'),
(73, 1, '5fb58ee9-29c2-434f-99c8-263a74a52aad', 'ELIZABETH LACERDA OLIVEIRA', 'ELIZABETH LACERDA OLIVEIRA', '27416682134', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75255000', 'GO', 'MONTES CLARO', 'CENTRO', 'AV. PRESIDENTE VARGAS', NULL, '776', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:06', '2021-01-08 11:14:06'),
(74, 1, '36d96751-eb92-4254-845c-9cbd7328d193', 'BRUNA LORENA SILVA GIOCONDO', 'BRUNA LORENA SILVA GIOCONDO', '021.892.941-26', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75570000', 'GO', 'BOM JESUS', 'ANIBAL LIMA', 'AV. BARSIL', NULL, '327', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:06', '2021-01-08 11:14:06'),
(75, 1, 'cd3bcd38-d823-42da-a80a-3f18898980db', 'WAGNER RODRIGUES DE OLIVEIRA', 'WAGNER RODRIGUES DE OLIVEIRA', '33606501153', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. RIO VERDE', NULL, '1558', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:06', '2021-01-08 11:14:06'),
(76, 1, '2a1548c4-cc38-46d7-8d98-2bee41477cc4', 'IBRAIM LOPES DE LIMA', 'IBRAIM LOPES DE LIMA', '905.299.521-49', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'ANDIRÁ', 'RUA JOSÉ BERNADES QD.2, LT.17', NULL, 'S/N', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:06', '2021-01-08 11:14:06'),
(77, 1, 'a247ebb9-ec2d-4ebd-a910-384f85a6d311', 'BENEDITO MOISES PIERAZO', 'BENEDITO MOISES PIERAZO', '270.285.391-34', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, '75925000', 'GO', 'CASTELÂNDIA', 'CENTRO', 'AV. RIO VERDE', NULL, '2188', NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:06', '2021-01-08 11:14:06'),
(78, 1, 'd6dde988-de29-4a02-bfc3-fa0c79f263ba', 'MARCELO NELVIO', 'MARCELO NELVIO', '32131321321321', NULL, 'TRANSPORTADOR', 'FÍSICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:07', '2021-01-08 11:14:07'),
(79, 1, 'c86db8ae-eaa9-467e-bb0f-640328fecf74', 'NORTOX SA', 'NORTOX', '75.263.400/0001-49', '6280053544', 'INSUMOS', 'JURÍDICO', NULL, NULL, NULL, '86706430', 'PR', 'ARAPONGAS', 'PARQUE INDUSTRIAL IV', 'RODOVIA BR-369 SAÍDA PARA APUCARANA', NULL, 'S/N', 'RAFAEL', NULL, NULL, 'Ativo', NULL, '2021-01-08 11:14:07', '2021-01-08 11:14:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `frotas`
--

CREATE TABLE `frotas` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `grupo_frota_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modelo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ano` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chassi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_aquisicao` date DEFAULT NULL,
  `valor_aquisicao` double(10,2) DEFAULT NULL,
  `volume_tanque` double(10,3) DEFAULT NULL,
  `combustivel` enum('S-10','S-500','GASOLINA','ETANOL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_marcacao` enum('HORIMETRO','QUILÔMETRO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `medidor_inicial` double(10,3) DEFAULT NULL,
  `medidor_final` double(10,3) DEFAULT NULL,
  `observacao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `frotas`
--

INSERT INTO `frotas` (`id`, `tenant_id`, `grupo_frota_id`, `uuid`, `nome`, `marca`, `modelo`, `ano`, `chassi`, `data_aquisicao`, `valor_aquisicao`, `volume_tanque`, `combustivel`, `tipo_marcacao`, `medidor_inicial`, `medidor_final`, `observacao`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '037a378b-b094-4663-8b0c-082d41c71cda', '01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S-10', 'HORIMETRO', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-08 03:52:42', '2020-12-08 03:52:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo_frotas`
--

CREATE TABLE `grupo_frotas` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `grupo_frotas`
--

INSERT INTO `grupo_frotas` (`id`, `tenant_id`, `uuid`, `nome`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '00495682-158b-42ab-a663-22dd01eb0520', 'COLHEDEIRA', 'Ativo', NULL, '2020-12-05 23:20:08', '2020-12-05 23:20:08'),
(2, 1, '5ecaf70c-a0d6-4683-a3ba-baec574c6229', 'TRATOR', 'Ativo', NULL, '2020-12-05 23:20:38', '2020-12-05 23:20:38'),
(3, 1, '62e66206-a124-4377-a04c-cc40f21172c5', 'PULVERIZADOR', 'Ativo', NULL, '2020-12-07 21:54:29', '2020-12-07 21:54:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo_produtos`
--

CREATE TABLE `grupo_produtos` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativo',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `grupo_produtos`
--

INSERT INTO `grupo_produtos` (`id`, `tenant_id`, `uuid`, `nome`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '38211ddf-936f-445d-8335-5bb03064f44f', 'BARRACÃO', 'Ativo', NULL, '2020-12-17 16:34:51', '2020-12-17 16:34:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lancamento_conta_apagars`
--

CREATE TABLE `lancamento_conta_apagars` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `centro_custo_id` bigint UNSIGNED NOT NULL,
  `fornecedor_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_documento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_documento` date NOT NULL,
  `data_vencimento` date NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` double(10,2) NOT NULL,
  `valor_desconto` double(10,2) DEFAULT NULL,
  `tipo` enum('BOLETO','DINHEIRO','CHEQUE','TRANSFERÊNCIA') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ABERTO','APAGO','CANCELADO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `locacao_talhaos`
--

CREATE TABLE `locacao_talhaos` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `safra_id` bigint UNSIGNED NOT NULL,
  `cultura_id` bigint UNSIGNED NOT NULL,
  `variedade_cultura_id` bigint UNSIGNED NOT NULL,
  `talhao_id` bigint UNSIGNED NOT NULL,
  `area_plantada` double(10,2) NOT NULL,
  `semente_linear` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semente_populacao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inicio_plantio` date DEFAULT NULL,
  `final_plantio` date DEFAULT NULL,
  `data_prevista` date DEFAULT NULL,
  `observacoes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativo',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `locacao_talhaos`
--

INSERT INTO `locacao_talhaos` (`id`, `tenant_id`, `safra_id`, `cultura_id`, `variedade_cultura_id`, `talhao_id`, `area_plantada`, `semente_linear`, `semente_populacao`, `inicio_plantio`, `final_plantio`, `data_prevista`, `observacoes`, `status`, `deleted_at`, `created_at`, `updated_at`, `uuid`) VALUES
(1, 1, 2, 1, 19, 1, 228.55, NULL, NULL, '2020-10-31', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 03:33:15', '2020-12-01 03:33:15', '86b33e4a-d5f9-41d2-b428-aff3346a2ff7'),
(2, 1, 2, 1, 19, 2, 221.28, NULL, NULL, '2020-10-31', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 03:43:59', '2020-12-01 03:43:59', '5b74b29e-3905-44ad-9d32-a0d7291e317a'),
(3, 1, 2, 1, 15, 3, 233.54, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 03:45:17', '2020-12-01 03:45:17', 'c5e1f7c5-e964-4cd4-95e9-38942ddcbc45'),
(4, 1, 2, 1, 15, 4, 137.79, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 03:46:41', '2020-12-01 03:46:41', 'c7ff5f5a-90fc-4fb6-8801-8f3ec646d4bb'),
(5, 1, 2, 1, 15, 5, 275.89, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 04:35:09', '2020-12-01 04:35:09', '323c4a78-6f90-4166-adba-0629159f61bb'),
(6, 1, 2, 1, 15, 6, 429.65, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 04:36:22', '2020-12-01 04:36:22', '6311a39a-de07-4f8d-a6ec-7b787e4bde9c'),
(7, 1, 2, 1, 14, 7, 239.75, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 04:37:41', '2020-12-01 04:37:41', '1ddc1062-7cdf-43b7-8922-fb8d111c86dd'),
(8, 1, 2, 1, 14, 8, 131.40, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 04:39:06', '2020-12-01 04:39:06', '9d332b45-6a46-435a-ad2f-72baa8833840'),
(9, 1, 2, 1, 17, 9, 211.23, NULL, NULL, '2020-10-28', '2020-10-30', NULL, NULL, 'Ativo', NULL, '2020-12-01 04:40:12', '2021-01-06 18:14:42', 'c65b7b2a-af99-4327-9732-9b652210ac49'),
(10, 1, 2, 1, 17, 10, 230.00, NULL, NULL, '2020-10-25', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 04:42:17', '2020-12-01 04:42:17', '61c6be56-ec54-4655-9649-63d0acc99362'),
(11, 1, 2, 1, 23, 10, 148.63, NULL, NULL, '2020-10-25', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:01:38', '2020-12-01 05:01:38', 'd0f8f7c6-6a8b-42ab-aba9-57e2c5d16350'),
(12, 1, 2, 1, 17, 11, 100.09, NULL, NULL, '2020-10-26', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:03:01', '2020-12-01 05:03:01', '4cb9f09e-2795-4af0-90bf-7ea92065cb7e'),
(13, 1, 2, 1, 23, 12, 191.36, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:03:49', '2020-12-01 05:04:06', '5be6d339-ada8-4642-8af8-94494c413932'),
(14, 1, 2, 1, 25, 13, 207.92, NULL, NULL, '2020-11-01', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:05:33', '2020-12-01 05:05:33', 'd4115ff0-9a06-4102-b0ce-ea4dbb62e72e'),
(15, 1, 2, 1, 25, 14, 90.11, NULL, NULL, '2020-11-03', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:06:27', '2020-12-01 05:06:27', '227f2302-7594-4c96-9656-0b089affbb64'),
(16, 1, 2, 1, 26, 15, 123.42, NULL, NULL, '2020-11-12', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:08:00', '2020-12-01 05:08:00', '699b721e-dafa-4cd4-8be3-bcb5e7cbff49'),
(17, 1, 2, 1, 17, 16, 720.56, NULL, NULL, '2020-10-30', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:09:07', '2020-12-01 05:09:07', 'aa08aa22-ddf0-4d30-9da4-dc835e03f19c'),
(18, 1, 2, 1, 15, 17, 329.84, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:10:11', '2020-12-01 05:10:11', '304eb66e-947d-4c37-a981-95cba613a1a3'),
(19, 1, 2, 1, 19, 18, 416.21, NULL, NULL, '2020-11-02', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:11:13', '2020-12-01 05:11:13', 'a28762ac-e1f4-4e3a-96ec-c1219d18d139'),
(20, 1, 2, 1, 16, 19, 575.29, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:37:45', '2020-12-01 05:37:45', '5bdd268e-1564-4116-b866-3fc65308c45b'),
(21, 1, 2, 1, 22, 20, 258.16, NULL, NULL, '2020-11-16', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:39:51', '2020-12-01 05:39:51', 'ae61d785-3540-45fd-bcf9-ad918905537b'),
(22, 1, 2, 1, 14, 21, 109.89, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:42:37', '2020-12-01 05:42:37', 'bc6bc6f8-ba2d-4c11-9196-b8e9cd2c35d5'),
(23, 1, 2, 1, 14, 22, 125.37, NULL, NULL, '2020-10-26', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:43:58', '2020-12-01 05:43:58', 'ebb4add5-5bd9-4a84-ad5d-92cebee9e2e1'),
(24, 1, 2, 1, 14, 23, 305.40, NULL, NULL, '2020-10-29', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:44:59', '2020-12-01 05:44:59', '812ebb19-6ec3-4876-92ea-15fa4809bd6f'),
(25, 1, 2, 1, 19, 23, 115.00, NULL, NULL, '2020-10-29', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:48:21', '2020-12-01 05:48:21', 'd5aeed3e-0b38-4cf4-84dc-c13618635d02'),
(26, 1, 2, 1, 23, 24, 609.16, NULL, NULL, '2020-10-23', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:49:14', '2020-12-01 05:49:14', '3d2d5bf2-8da1-4fc5-9a3c-82ac1a0850d5'),
(27, 1, 2, 1, 14, 25, 416.32, NULL, NULL, '2020-10-24', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:50:09', '2020-12-01 05:50:09', 'f1147043-3832-4027-8161-b5ad93945aa5'),
(28, 1, 2, 1, 19, 26, 205.99, NULL, NULL, '2020-11-02', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:51:06', '2020-12-01 05:51:06', 'f0b754a2-6633-4899-b712-a0bd145951a9'),
(29, 1, 2, 1, 19, 27, 194.90, NULL, NULL, '2020-11-02', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:51:58', '2020-12-01 05:51:58', 'c07dc8cb-52e7-4f9d-b738-43b345e1077e'),
(30, 1, 2, 1, 17, 28, 130.00, NULL, NULL, '2020-10-31', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:55:35', '2020-12-01 05:55:35', '3c460e12-dfbc-40e4-a389-bf849804a800'),
(31, 1, 2, 1, 25, 28, 263.58, NULL, NULL, '2020-10-31', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:58:14', '2020-12-01 05:58:14', '9e8dfd5f-132e-4e73-8bf0-1de107060395'),
(32, 1, 2, 1, 26, 29, 233.00, NULL, NULL, '2020-11-13', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 05:59:36', '2020-12-01 05:59:36', '37e3643a-f436-4be1-ac1b-bb213cc9801d'),
(33, 1, 2, 1, 22, 29, 170.58, NULL, NULL, '2020-11-13', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:00:12', '2020-12-01 06:00:12', '5838e14a-ed9e-4a66-b4d5-681ca1904325'),
(34, 1, 2, 1, 20, 30, 408.06, NULL, NULL, '2020-11-03', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:02:06', '2020-12-01 06:02:06', '56ee4c9b-6fa0-478c-a457-d57b1235e0a6'),
(35, 1, 2, 1, 26, 31, 399.82, NULL, NULL, '2020-11-04', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:03:04', '2020-12-01 06:03:04', 'ce8f9dce-bfb5-4a38-99cd-b73bf2ab9920'),
(36, 1, 2, 1, 19, 32, 138.44, NULL, NULL, '2020-10-31', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:06:41', '2020-12-01 06:06:41', '71d86926-7470-43a7-9e7b-47a5b55890ed'),
(37, 1, 2, 1, 19, 33, 188.09, NULL, NULL, '2020-10-31', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:08:19', '2020-12-01 06:08:19', 'cc8f1082-f216-4e23-9c2f-6ba3e6260342'),
(38, 1, 2, 1, 22, 34, 86.47, NULL, NULL, '2020-11-01', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:11:23', '2020-12-01 06:11:23', 'ba13ca2b-99fb-4a72-92e3-b2d23637ca9c'),
(39, 1, 2, 1, 22, 35, 400.25, NULL, NULL, '2020-11-01', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:12:39', '2020-12-01 06:12:39', 'f9d728f9-b217-4cce-ae15-9ae724dc2e05'),
(40, 1, 2, 1, 22, 36, 194.48, NULL, NULL, '2020-11-11', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:15:46', '2020-12-01 06:15:46', '93c034be-577a-41ab-86da-ca76f915770d'),
(41, 1, 2, 1, 18, 37, 291.65, NULL, NULL, '2020-11-11', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:40:08', '2020-12-01 06:40:08', '60d3989e-bc84-42a9-91fa-68b2979fde48'),
(42, 1, 2, 1, 18, 38, 266.23, NULL, NULL, '2020-11-12', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:41:11', '2020-12-01 06:41:11', 'f243b8a5-0445-4ac4-88d7-3c63564d72ed'),
(43, 1, 2, 1, 22, 39, 84.66, NULL, NULL, '2020-10-30', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:44:28', '2020-12-01 06:44:28', '2659f129-64df-444a-9f03-3d000a7761d9'),
(44, 1, 2, 1, 22, 40, 109.61, NULL, NULL, '2020-10-30', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:45:22', '2020-12-01 06:45:22', '1a1a0729-7fca-4de0-9e45-b052352c93b3'),
(45, 1, 2, 1, 18, 41, 302.19, NULL, NULL, '2020-11-13', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:46:13', '2020-12-01 06:46:13', '15c8e2cc-b291-472b-a547-7a73b83e2209'),
(46, 1, 2, 1, 18, 42, 494.72, NULL, NULL, '2020-11-16', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:47:16', '2020-12-01 06:47:16', '4cdb5991-04bc-40a2-9e73-fc076ef9cd55'),
(47, 1, 2, 1, 25, 42, 66.66, NULL, NULL, '2020-11-16', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:48:30', '2020-12-01 06:48:30', 'c76dccc0-8f6c-408d-afff-0dbc56202eb9'),
(48, 1, 2, 1, 22, 42, 17.85, NULL, NULL, '2020-11-16', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:49:14', '2020-12-01 06:49:14', 'c1451547-d237-4f45-9747-97edd071f347'),
(49, 1, 2, 1, 18, 43, 71.03, NULL, NULL, '2020-11-12', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:53:44', '2020-12-01 06:53:44', '6b4ee0ba-c9ab-4c76-954f-6f02c6a7b5f8'),
(50, 1, 2, 1, 22, 44, 475.36, NULL, NULL, '2020-11-12', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:54:47', '2020-12-01 06:54:47', '8c1791ed-dbe5-4256-9502-ceb66bce79ca'),
(51, 1, 2, 1, 22, 45, 349.90, NULL, NULL, '2020-11-16', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:55:59', '2020-12-01 06:55:59', '4eb1b39d-1430-4b98-bd61-b61262828a29'),
(52, 1, 2, 1, 18, 46, 284.03, NULL, NULL, '2020-11-13', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:57:36', '2020-12-01 06:57:36', 'b7dc0797-c243-4f35-ac06-ce92af31d789'),
(53, 1, 2, 1, 25, 47, 149.99, NULL, NULL, '2020-11-13', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 06:58:38', '2020-12-01 06:58:38', '7dfda6e0-d53d-45c8-a71c-ff94a86934ac'),
(54, 1, 2, 1, 22, 48, 467.18, NULL, NULL, '2020-11-03', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:01:06', '2020-12-01 07:01:06', '7b691cba-65b4-4300-a72f-828adac19261'),
(55, 1, 2, 1, 25, 49, 100.10, NULL, NULL, '2020-11-13', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:02:04', '2020-12-01 07:02:04', '476e312e-cee9-4461-a937-b9011710e759'),
(56, 1, 2, 1, 14, 50, 20.00, NULL, NULL, '2020-10-24', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:04:17', '2020-12-01 07:04:17', '18963d97-73f6-4f09-820f-52b08d3ce2f1'),
(57, 1, 2, 1, 16, 50, 250.42, NULL, NULL, '2020-10-24', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:04:48', '2020-12-01 07:04:48', '739863e9-6cb6-4185-a33e-b04bdd44159e'),
(58, 1, 2, 1, 22, 51, 300.30, NULL, NULL, '2020-11-13', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:06:03', '2020-12-01 07:06:03', 'f3541c5f-15cb-48fd-8a5f-36d0fd2af27b'),
(59, 1, 2, 1, 26, 52, 216.08, NULL, NULL, '2020-11-10', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:06:52', '2020-12-01 07:06:52', '4e466e7d-e487-4b54-a30c-e2c109839525'),
(60, 1, 2, 1, 26, 53, 116.11, NULL, NULL, '2020-11-12', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:22:01', '2020-12-01 07:22:01', '5be998ba-8b57-4d3e-b061-d19dc068041d'),
(61, 1, 2, 1, 20, 54, 110.00, NULL, NULL, '2020-11-13', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:22:58', '2020-12-01 07:22:58', 'b6d883c0-89bf-4282-9d74-8e486df87bbd'),
(62, 1, 2, 1, 22, 54, 27.73, NULL, NULL, '2020-11-13', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:31:47', '2020-12-01 07:31:47', '80f3f464-5feb-4957-9aaf-b502d0a87e67'),
(63, 1, 2, 1, 26, 55, 62.00, NULL, NULL, '2020-11-10', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:33:02', '2020-12-01 07:33:02', 'ca924c49-494f-4bbc-a788-91981a5a5114'),
(64, 1, 2, 1, 26, 56, 134.21, NULL, NULL, '2020-11-12', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:37:55', '2020-12-01 07:37:55', '16d0fa96-97e4-4268-8631-f5795307c0d8'),
(65, 1, 2, 1, 26, 57, 354.97, NULL, NULL, '2020-11-10', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:39:00', '2020-12-01 07:39:00', '48ab3f2c-466f-4f54-8169-3bf29e676a6e'),
(66, 1, 2, 1, 25, 58, 104.69, NULL, NULL, '2020-11-04', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:40:01', '2020-12-01 07:40:01', 'e83c5724-ea53-4aba-9c33-ec709293c9ea'),
(67, 1, 2, 1, 25, 59, 157.81, NULL, NULL, '2020-11-11', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:44:28', '2020-12-01 07:44:28', '880ddc4e-d9be-4044-96be-03b3a47a7dc1'),
(68, 1, 2, 1, 25, 60, 294.73, NULL, NULL, '2020-11-11', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:45:39', '2020-12-01 07:45:39', '6041a060-260c-4a8a-82d1-0882f2209ac2'),
(69, 1, 2, 1, 20, 61, 210.77, NULL, NULL, '2020-11-08', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:49:11', '2020-12-01 07:49:11', 'c3534260-126e-4389-8676-79c120eb213b'),
(70, 1, 2, 1, 20, 62, 54.85, NULL, NULL, '2020-11-11', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:51:06', '2020-12-01 07:51:06', '0f32955e-6eef-4541-a8f9-4b9a11197381'),
(71, 1, 2, 1, 19, 63, 8.74, NULL, NULL, '2020-10-31', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:54:15', '2020-12-01 07:54:15', '86fdeac3-b407-4efc-b55a-6e9eeef84513'),
(72, 1, 2, 1, 25, 64, 130.49, NULL, NULL, '2020-11-12', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:55:13', '2020-12-01 07:55:13', '5e4ff258-40f4-48db-a596-4eb18e7f4f9f'),
(73, 1, 2, 1, 22, 65, 262.82, NULL, NULL, '2020-11-01', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 07:56:11', '2020-12-01 07:56:11', '6f5d26da-3bf7-4192-ad36-aeab4dcd7e5d'),
(74, 1, 2, 1, 26, 66, 185.09, NULL, NULL, '2020-11-02', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 22:24:26', '2020-12-01 22:24:26', 'cdb3129a-7297-4b54-858d-889694790371'),
(75, 1, 2, 1, 19, 67, 274.09, NULL, NULL, '2020-11-03', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 22:25:38', '2020-12-01 22:25:38', '87ccb3a5-b233-46e9-be80-d92bb60d9ff5'),
(76, 1, 2, 1, 20, 68, 110.48, NULL, NULL, '2020-11-04', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 22:29:47', '2020-12-01 22:29:47', 'e8fd2aa9-2e43-4ec9-aa18-c0efabc225a4'),
(77, 1, 2, 1, 25, 69, 497.60, NULL, NULL, '2020-11-03', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 22:30:40', '2020-12-01 22:30:40', 'dd6297bf-2153-4170-be9c-a54d31986ecd'),
(78, 1, 2, 1, 20, 70, 100.62, NULL, NULL, '2020-11-03', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 22:36:30', '2020-12-01 22:36:30', '6827e3a4-4e30-4131-ad5f-9de51dfca89f'),
(79, 1, 2, 1, 20, 71, 33.39, NULL, NULL, '2020-11-03', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 22:41:58', '2020-12-01 22:41:58', '23c800a7-9216-463d-863f-7f5c6332dc08'),
(80, 1, 2, 1, 21, 72, 392.35, NULL, NULL, '2020-10-24', '2020-10-26', NULL, NULL, 'Ativo', NULL, '2020-12-01 22:43:08', '2021-01-06 19:29:40', '9a3f5aac-02f4-41fd-bfb6-f567e8d49a86'),
(81, 1, 2, 1, 21, 73, 321.37, NULL, NULL, '2020-10-24', '2020-10-26', NULL, NULL, 'Ativo', NULL, '2020-12-01 22:46:59', '2021-01-06 19:31:01', '14d04e12-138e-4496-8a42-9f7d2e2b7095'),
(82, 1, 2, 1, 21, 74, 65.21, NULL, NULL, '2020-10-26', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 22:47:57', '2020-12-01 22:47:57', '28e7fa5f-34c1-4e17-958a-df623fe8817f'),
(83, 1, 2, 1, 21, 75, 228.34, NULL, NULL, '2020-10-28', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 23:31:17', '2020-12-01 23:31:17', 'e4f74917-b0e3-4409-8462-8b471b0cf2b2'),
(84, 1, 2, 1, 21, 76, 166.24, NULL, NULL, '2020-10-28', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 23:32:12', '2020-12-01 23:33:20', 'cce64551-8296-458f-a7a0-46678d459e4d'),
(85, 1, 2, 1, 21, 77, 112.42, NULL, NULL, '2020-10-28', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 23:34:39', '2020-12-01 23:34:39', '0781e28e-cb8f-46d7-8df3-7ba14256ac86'),
(86, 1, 2, 1, 21, 78, 274.22, NULL, NULL, '2020-10-29', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 23:35:43', '2020-12-01 23:35:43', 'f5ad8f55-51c6-49bd-ac79-015f79a4983b'),
(87, 1, 2, 1, 22, 78, 15.00, NULL, NULL, '2020-10-29', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 23:37:02', '2020-12-01 23:37:02', '1adb6cd5-ffaf-41fa-ad52-691c2741f841'),
(88, 1, 2, 1, 22, 79, 180.28, NULL, NULL, '2020-10-30', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 23:37:52', '2020-12-01 23:37:52', '7156423d-88e4-4fcc-9458-5fe5b641feab'),
(89, 1, 2, 1, 22, 80, 119.33, NULL, NULL, '2020-10-30', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 23:38:54', '2020-12-01 23:38:54', '518b4de4-6c8e-4e3d-bb34-0bf343d96830'),
(90, 1, 2, 1, 19, 81, 56.98, NULL, NULL, '2020-10-31', '2020-10-31', NULL, NULL, 'Ativo', NULL, '2020-12-01 23:39:44', '2021-01-06 19:51:23', '6711776c-3135-4c58-a14f-3e28b3e2a9af'),
(91, 1, 2, 1, 19, 82, 53.81, NULL, NULL, '2020-11-04', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-01 23:49:04', '2020-12-01 23:49:04', 'da024a0a-28fb-4ffe-86ec-d4bf01ff8752'),
(92, 1, 2, 1, 22, 83, 20.41, NULL, NULL, '2020-10-31', NULL, NULL, NULL, 'Ativo', NULL, '2020-12-02 00:17:24', '2020-12-02 00:17:24', '05a697f5-e9c9-4e4c-a928-c31f78416830'),
(93, 1, 2, 1, 17, 84, 378.42, NULL, NULL, '2020-10-27', '2020-10-30', NULL, NULL, 'Ativo', NULL, '2021-01-06 18:13:53', '2021-01-06 18:13:53', '5df99d94-2c4e-4401-865b-a56f6118f6ec'),
(94, 1, 2, 1, 21, 85, 28.94, NULL, NULL, '2020-10-24', '2020-10-26', NULL, NULL, 'Ativo', NULL, '2021-01-06 18:31:22', '2021-01-06 18:31:22', '1efc09ba-3eaf-4e2a-9e98-d307b65b7b70'),
(95, 1, 2, 1, 21, 86, 141.47, NULL, NULL, '2020-10-24', '2020-10-26', NULL, NULL, 'Ativo', NULL, '2021-01-06 19:34:50', '2021-01-06 19:34:50', 'c8f434e7-22c6-448b-84e3-c60ab9ca0238'),
(96, 1, 2, 1, 21, 87, 179.31, NULL, NULL, '2020-10-24', '2020-10-26', NULL, NULL, 'Ativo', NULL, '2021-01-06 19:35:16', '2021-01-06 19:35:16', 'b94ce374-60dd-4bf0-b98a-8d51d79c8488');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriz_fretes`
--

CREATE TABLE `matriz_fretes` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bloco` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percurso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frete` double(4,2) NOT NULL,
  `status` enum('ATIVO','DESATIVADO','BLOQUEADO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `matriz_fretes`
--

INSERT INTO `matriz_fretes` (`id`, `tenant_id`, `uuid`, `bloco`, `percurso`, `frete`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2c828ea4-99e0-4032-93c2-868ee66b1fd7', '1', 'A', 1.37, 'ATIVO', NULL, '2021-01-08 17:10:46', '2021-01-08 17:10:46'),
(2, 1, '7eb59ee9-5d05-4444-b984-30117991efb7', '2', 'A', 1.50, 'ATIVO', NULL, '2021-01-08 17:12:01', '2021-01-08 17:12:01'),
(3, 1, '18b09327-31ac-4f89-992a-e6b3973559b3', '3', 'A', 1.20, 'ATIVO', NULL, '2021-01-08 17:12:20', '2021-01-08 17:12:20'),
(4, 1, '6620c8ad-591b-4c93-95b8-7e8e24182361', '4', 'A', 1.50, 'ATIVO', NULL, '2021-01-08 17:12:30', '2021-01-08 17:12:30'),
(5, 1, 'dba561ae-d883-4df2-b556-14968c483c9d', '5', 'A', 1.37, 'ATIVO', NULL, '2021-01-08 17:12:41', '2021-01-08 17:12:41'),
(6, 1, '5ed3afd1-62db-4884-ae06-c13a45e5fbed', '1', 'B', 1.20, 'ATIVO', NULL, '2021-01-08 17:16:20', '2021-01-08 17:16:20'),
(7, 1, '14925727-083d-4efc-8ac4-768902fa7070', '2', 'B', 1.20, 'ATIVO', NULL, '2021-01-08 17:16:32', '2021-01-08 17:16:32'),
(8, 1, '44874235-d234-4d45-902f-b126923f2871', '3', 'B', 1.20, 'ATIVO', NULL, '2021-01-08 17:16:39', '2021-01-08 17:16:39'),
(9, 1, '4fc7080f-da17-4412-a5af-fb28c10997c4', '4', 'B', 1.20, 'ATIVO', NULL, '2021-01-08 17:16:45', '2021-01-08 17:16:45'),
(10, 1, '095bcb75-d2ba-4b29-8fd6-7a55a879905a', '5', 'B', 1.20, 'ATIVO', NULL, '2021-01-08 17:16:52', '2021-01-08 17:16:52'),
(11, 1, '11374c07-c788-4326-8066-3b1e860c2d94', '1', 'C', 1.37, 'ATIVO', NULL, '2021-01-08 17:17:20', '2021-01-08 17:17:20'),
(12, 1, '4d8ad5b8-e437-4084-af6c-d4e5d70a5974', '2', 'C', 1.50, 'ATIVO', NULL, '2021-01-08 17:17:35', '2021-01-08 17:17:35'),
(13, 1, '244b8769-8a90-4050-ba0b-cf22dc8a0abf', '3', 'C', 1.50, 'ATIVO', NULL, '2021-01-08 17:17:43', '2021-01-08 17:17:43'),
(14, 1, '6c8b5631-3bab-4104-8335-b95ec5a10322', '4', 'C', 1.37, 'ATIVO', NULL, '2021-01-08 17:17:53', '2021-01-08 17:17:53'),
(15, 1, 'af42d3e4-4753-49b3-8dba-81046acfd721', '5', 'C', 1.37, 'ATIVO', NULL, '2021-01-08 17:18:00', '2021-01-08 17:18:00'),
(16, 1, 'ecd05c88-e8c8-44e3-b266-94891e02e1c4', '1', 'D', 1.00, 'ATIVO', NULL, '2021-01-08 17:18:46', '2021-01-08 17:18:46'),
(17, 1, '00eef3f6-dcf1-43dd-8edc-6e6ae0c68a1d', '2', 'D', 1.10, 'ATIVO', NULL, '2021-01-08 17:18:57', '2021-01-08 17:18:57'),
(18, 1, '642680e1-ebdb-46e3-9ccb-b0185bbaeec3', '3', 'D', 1.20, 'ATIVO', NULL, '2021-01-08 17:19:20', '2021-01-08 17:19:20'),
(19, 1, '9d3728f7-0cd9-4887-a7b1-e1a4b3d8227b', '4', 'D', 1.20, 'ATIVO', NULL, '2021-01-08 17:19:39', '2021-01-08 17:19:39'),
(20, 1, '189c1e63-6e14-48b2-9102-a8653062c1cd', '5', 'D', 1.20, 'ATIVO', NULL, '2021-01-08 17:19:47', '2021-01-08 17:19:47'),
(21, 1, '7d70a3fa-3509-491f-b1d7-d39e7ec53c31', '1', 'E', 1.70, 'ATIVO', NULL, '2021-01-08 17:24:17', '2021-01-08 17:24:17'),
(22, 1, '18ed0ada-fc3f-42e1-89f3-73b53c9083b5', '2', 'E', 1.70, 'ATIVO', NULL, '2021-01-08 17:24:25', '2021-01-08 17:24:25'),
(23, 1, 'e6360d1a-63d4-4aba-9bf6-859a4416ab86', '3', 'E', 1.70, 'ATIVO', NULL, '2021-01-08 17:24:32', '2021-01-08 17:24:32'),
(24, 1, '46e00171-edb6-4e4f-9d44-778c19de3ed3', '4', 'E', 1.70, 'ATIVO', NULL, '2021-01-08 17:24:41', '2021-01-08 17:24:41'),
(25, 1, '145c490d-0bed-4d8e-be59-1e9164b7f3a2', '5', 'E', 1.70, 'ATIVO', NULL, '2021-01-08 17:24:48', '2021-01-08 17:24:48'),
(26, 1, '3676a6f8-5723-40f2-911b-6b466872be59', '7', 'D', 0.80, 'ATIVO', NULL, '2021-01-08 17:25:23', '2021-01-08 17:25:23'),
(27, 1, 'b6afa7c9-11d2-4723-9696-32ab137d03d0', '8', 'D', 1.00, 'ATIVO', NULL, '2021-01-08 17:25:36', '2021-01-08 17:25:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_03_31_114745_remove_backpackuser_model', 1),
(7, '2020_11_21_130301_create_sessions_table', 1),
(8, '2020_11_21_131811_create_activity_log_table', 1),
(9, '2020_11_21_134142_create_permission_tables', 1),
(10, '2020_11_26_153752_create_tenants_table', 1),
(11, '2020_11_26_164103_create_safras_table', 2),
(12, '2020_11_26_181211_create_culturas_table', 3),
(13, '2020_11_27_102807_create_variedade_culturas_table', 4),
(14, '2020_11_27_163546_create_proprietarios_table', 5),
(15, '2020_11_27_170914_create_produtors_table', 6),
(16, '2020_11_28_073842_create_fazendas_table', 7),
(17, '2020_11_30_072333_create_talhaos_table', 8),
(18, '2020_11_30_090522_create_locacao_talhaos_table', 9),
(19, '2020_11_30_091834_add_campo_locacao_talhaos__table', 10),
(20, '2020_12_01_101903_create_grupo_produtos_table', 11),
(21, '2020_12_01_101904_create_sub_grupo_produtos_table', 11),
(22, '2020_12_01_101905_create_produtos_table', 11),
(23, '2020_12_02_134141_create_tipo_operacao_agriculas_table', 12),
(24, '2020_12_02_134142_create_operador_agriculas_table', 12),
(26, '2020_12_02_144956_create_centro_custos_table', 14),
(27, '2020_12_03_083241_create_centro_administrativos_table', 15),
(28, '2020_12_03_083242_create_centro_custos_table', 15),
(29, '2020_12_03_130050_create_fornecedors_table', 16),
(31, '2020_12_05_080322_create_grupo_frotas_table', 18),
(32, '2020_12_05_080323_create_frotas_table', 18),
(36, '2020_12_14_083405_create_servico_agricolas_table', 19),
(37, '2020_12_14_083406_create_operador_agricula_servico_agricola_table', 19),
(38, '2020_12_14_083407_create_produto_servico_agricola_table', 19),
(39, '2020_12_03_142319_create_lancamento_conta_apagars_table', 20),
(40, '2021_01_08_082834_create_armazems_table', 20),
(41, '2021_01_08_104212_create_colhedors_table', 21),
(43, '2021_01_08_133426_create_matriz_fretes_table', 22),
(44, '2021_01_08_160506_create_motoristas_table', 23);

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `motoristas`
--

CREATE TABLE `motoristas` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `fornecedor_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('SAFRA','EMBARQUE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placa_nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complemento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ATIVO','DESATIVADO','BLOQUEADO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `operador_agriculas`
--

CREATE TABLE `operador_agriculas` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativo',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `operador_agriculas`
--

INSERT INTO `operador_agriculas` (`id`, `tenant_id`, `uuid`, `nome`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '5d4920b9-bf0d-4071-bbc3-0757045e025d', 'ELIAS', 'Ativo', NULL, '2020-12-17 16:33:18', '2020-12-17 16:33:18'),
(2, 1, 'eac9736f-624e-430e-878a-70e7d8b43387', 'DIVINO', 'Ativo', NULL, '2020-12-17 16:33:30', '2020-12-17 16:33:30'),
(3, 1, 'c9c30ffe-66a2-47da-8df6-f504bec8e009', 'CRISTIANO', 'Ativo', NULL, '2020-12-17 16:33:37', '2020-12-17 16:33:37');

-- --------------------------------------------------------

--
-- Estrutura para tabela `operador_agricula_servico_agricola`
--

CREATE TABLE `operador_agricula_servico_agricola` (
  `operador_agricula_id` bigint UNSIGNED NOT NULL,
  `servico_agricola_id` bigint UNSIGNED NOT NULL,
  `tipo_operador` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtors`
--

CREATE TABLE `produtors` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `razao_social` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome_fantasia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abreviacao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_pagamento` enum('Depósito','Transferência') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Depósito',
  `tipo` enum('Física','Jurídica') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Física',
  `data_nascimento` date DEFAULT NULL,
  `nascionalidade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naturalidade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_civel` enum('Solteiro(a)','Casado(a)','Viuvo(a)') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Solteiro(a)',
  `cpf_cnpj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rg_inscriacao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Ativa','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativa',
  `cep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complemento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtors`
--

INSERT INTO `produtors` (`id`, `tenant_id`, `uuid`, `razao_social`, `nome_fantasia`, `abreviacao`, `tipo_pagamento`, `tipo`, `data_nascimento`, `nascionalidade`, `naturalidade`, `estado_civel`, `cpf_cnpj`, `rg_inscriacao`, `email`, `telefone`, `celular`, `status`, `cep`, `estado`, `cidade`, `bairro`, `endereco`, `complemento`, `numero`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2299dee0-bd4d-4c26-a492-c7310a69be87', 'PAULO ROBERTO TITOTO', 'PAULO ROBERTO TITOTO', 'PRT', 'Depósito', 'Física', '1950-02-25', NULL, NULL, 'Casado(a)', '744.932.058-49', '4.498.475-3', NULL, '(64) 3608-9558', NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-28 08:25:54', '2020-11-28 08:26:13'),
(2, 1, 'be529b83-c887-4acd-9183-abc05f9d40cc', 'LEONARDO NAVES TITOTO', 'LEONARDO NAVES TITOTO', 'LNT', 'Depósito', 'Física', '1978-09-14', NULL, NULL, 'Casado(a)', '273.596.528-71', '29.090.476-6', NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-28 08:35:03', '2020-11-28 08:35:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `grupo_produto_id` bigint UNSIGNED NOT NULL,
  `sub_grupo_produto_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unidade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estoque` double(10,3) DEFAULT NULL,
  `qtn_minima` double(10,3) DEFAULT NULL,
  `valor_unitario` double(10,3) DEFAULT NULL,
  `finalidade` enum('COMBUSTÍVEIS','INSUMOS','PEÇAS','USO CONSUMO') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USO CONSUMO',
  `fator_conversao` double(10,3) NOT NULL,
  `localizacao_estoque` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativo',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `tenant_id`, `grupo_produto_id`, `sub_grupo_produto_id`, `uuid`, `nome`, `unidade`, `mcm`, `estoque`, `qtn_minima`, `valor_unitario`, `finalidade`, `fator_conversao`, `localizacao_estoque`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '0074aff0-5741-41b2-ac93-1a50cf28975e', 'ASSIST', 'LT', NULL, NULL, NULL, NULL, 'INSUMOS', 20.000, NULL, 'Ativo', NULL, '2020-12-17 16:44:43', '2020-12-17 16:58:27'),
(2, 1, 1, 2, 'bb5d6d95-d831-478a-8698-d6a46cf625c4', 'HELPER', 'LT', NULL, NULL, NULL, NULL, 'INSUMOS', 5.000, NULL, 'Ativo', NULL, '2020-12-17 16:38:17', '2020-12-17 16:58:16'),
(3, 1, 1, 3, '32631c7a-c747-4270-ac91-47f58cea07a9', 'GLIFOSATO', 'KG', NULL, NULL, NULL, NULL, 'INSUMOS', 5.000, NULL, 'Ativo', NULL, '2020-12-17 16:39:19', '2020-12-17 16:57:58'),
(4, 1, 1, 3, '29dbbac6-40c1-422a-a860-b88b5d620605', 'CLORIMURON', 'KG', NULL, NULL, NULL, NULL, 'INSUMOS', 1.000, NULL, 'Ativo', NULL, '2020-12-17 16:41:16', '2020-12-17 16:58:05'),
(5, 1, 1, 4, 'e138a0a3-3ef7-46af-b4da-197e036514eb', 'BORO SUPER', 'LT', NULL, NULL, NULL, NULL, 'INSUMOS', 12.500, NULL, 'Ativo', NULL, '2020-12-17 16:43:10', '2020-12-17 16:57:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_servico_agricola`
--

CREATE TABLE `produto_servico_agricola` (
  `produto_id` bigint UNSIGNED NOT NULL,
  `servico_agricola_id` bigint UNSIGNED NOT NULL,
  `dosagem` double(10,3) DEFAULT NULL,
  `quantidade` double(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `proprietarios`
--

CREATE TABLE `proprietarios` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `razao_social` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome_fantasia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abreviacao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_pagamento` enum('Depósito','Transferência') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Depósito',
  `tipo` enum('Física','Jurídica') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Física',
  `data_nascimento` date DEFAULT NULL,
  `nascionalidade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naturalidade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_civel` enum('Solteiro(a)','Casado(a)','Viuvo(a)') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Solteiro(a)',
  `cpf_cnpj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rg_inscriacao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Ativa','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativa',
  `cep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complemento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `proprietarios`
--

INSERT INTO `proprietarios` (`id`, `tenant_id`, `uuid`, `razao_social`, `nome_fantasia`, `abreviacao`, `tipo_pagamento`, `tipo`, `data_nascimento`, `nascionalidade`, `naturalidade`, `estado_civel`, `cpf_cnpj`, `rg_inscriacao`, `email`, `telefone`, `celular`, `status`, `cep`, `estado`, `cidade`, `bairro`, `endereco`, `complemento`, `numero`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '5a0df018-7fd2-4d69-9d5b-cd4c74b80862', 'PAULO ROBERTO TITOTO', 'PAULO ROBERTO TITOTO', 'PRT', 'Depósito', 'Física', '1950-02-25', NULL, NULL, 'Casado(a)', '744.932.058-49', '4.498.475-3', NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 04:17:41', '2020-11-11 04:37:18'),
(2, 1, 'd448176f-357d-4dcd-ad3f-b0ac41ba8213', 'LEONARDO NAVES TITOTO', 'LEONARDO NAVES TITOTO', 'LNT', 'Depósito', 'Física', '1978-09-14', NULL, NULL, 'Casado(a)', '273.596.528-71', '29.090.476-6', NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 04:17:41', '2020-11-11 04:37:48'),
(3, 1, '88ce1941-e9c7-4ba2-ab50-359d470c9ea9', 'MARTHA FERREIRA NAVES DE ÁVILA', 'MARTHA FERREIRA NAVES DE ÁVILA', 'MFR', 'Depósito', 'Física', NULL, NULL, NULL, 'Viuvo(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 03:37:06', '2020-11-12 03:37:06'),
(4, 1, 'b4702e75-6f7b-4eea-b838-a26108131ed9', 'CARLOS ALBERTO NAVES', 'CARLOS ALBERTO NAVES', 'CAN', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-13 08:43:38', '2020-11-13 08:46:03'),
(5, 1, '4f5272ce-2877-4fa8-ab49-5e647e4b06ec', 'ALDO BOGAR DE SOUZA E JOÃO BATISTA DE OLIVEIRA', 'ALDO BOGAR DE SOUZA E JOÃO BATISTA DE OLIVEIRA', 'ABS', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-13 09:05:25', '2020-11-13 09:05:25'),
(6, 1, '05c6d33b-12ef-4b34-a431-a0703e4e1806', 'OZELIOSMAR FERREIRA ESTEVAM', 'OZELIOSMAR FERREIRA ESTEVAM', 'OFE', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-13 09:10:07', '2020-11-13 09:10:07'),
(7, 1, 'f36de46f-d3f2-423f-9502-f22cfd217094', 'GRACIELLE GARCIA MOTA', 'GRACIELLE GARCIA MOTA', 'GGM', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-13 09:19:42', '2020-11-13 09:26:13'),
(8, 1, 'd2cc2d77-7f42-4070-91a4-95ba82fada3d', 'PATRICIA GARCIA MOTA', 'PATRICIA GARCIA MOTA', 'PGM', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-13 09:28:49', '2020-11-13 09:28:49'),
(9, 1, '5f4423e1-8b86-4b5a-a09d-59a3eb8909cf', 'EURIPEDES VIEIRA MOTA', 'EURIPEDES VIEIRA MOTA', 'EVM', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-13 09:40:04', '2020-11-13 09:40:04'),
(10, 1, '413934aa-37a7-419e-b1c3-302f9eb9146e', 'RENATO HUMBERTO CALCAGNO JUNIOR', 'RENATO HUMBERTO CALCAGNO JUNIOR', 'RHC', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-13 09:44:03', '2020-11-13 09:44:03'),
(11, 1, '2ee259cb-6daa-4e6a-af8e-7d37ad495305', 'JUSSARA COSTA KEDHI', 'JUSSARA COSTA KEDHI', 'JCK', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 02:24:33', '2020-11-19 02:24:33'),
(12, 1, 'e4f8b7ed-1969-404b-b304-86d79355898f', 'CARLOS CREPALDI', 'CARLOS CREPALDI', 'CAC', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 02:31:29', '2020-11-19 02:31:29'),
(13, 1, '686aa872-484d-432e-8e62-3213a40a7296', 'CECILIA KEDHI', 'CECILIA KEDHI', 'CEK', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 02:33:17', '2020-11-19 02:33:17'),
(14, 1, 'cae05f08-365e-402b-a031-f6d83b9e8737', 'BEATRIZ KEDHI', 'BEATRIZ KEDHI', 'BEK', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 02:38:24', '2020-11-19 02:38:24'),
(15, 1, 'df0014d4-128c-42da-ae28-65a0faddbf6a', 'FERNANDO EGBERTO FEITAL DE CARMARGO', 'FERNANDO EGBERTO FEITAL DE CARMARGO', 'FEC', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 02:45:35', '2020-11-19 02:45:35'),
(16, 1, 'd472958e-1a90-4761-a882-4b36ebfe3723', 'ADILSON BATISTA', 'ADILSON BATISTA', 'ADB', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 02:59:19', '2020-11-19 02:59:19'),
(17, 1, '03259546-d8b1-484b-964f-df48e663224c', 'MARTHA COSTA SANTOS MONTES', 'MARTHA COSTA SANTOS MONTES', 'MCS', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 03:07:00', '2020-11-19 03:07:00'),
(18, 1, '5713b6e3-a509-4714-9067-50bf656e3ec5', 'FÁBIO EVARISTO PEREIRA', 'FÁBIO EVARISTO PEREIRA', 'FEP', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 03:22:03', '2020-11-19 03:22:03'),
(19, 1, '886cd2cd-2708-4131-b22e-174c8adb024f', 'SEBASTIÃO RESENDE', 'SEBASTIÃO RESENDE', 'SER', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 04:12:20', '2020-11-19 04:12:20'),
(20, 1, '73bc5c16-8626-45e6-a11f-46f18bb1c21a', 'IVONDES', 'IVONDES', 'IVO', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 04:12:44', '2020-11-19 04:12:44'),
(21, 1, 'd28d4b67-1bb7-44dc-99b6-56cef2ab9e7c', 'JOÃO PEDRO', 'JOÃO PEDRO', 'JPE', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 04:25:17', '2020-11-19 04:25:17'),
(22, 1, 'f39b8947-dec9-46b0-a0f0-6b4d1acbe732', 'IVAN VASCONCELOS DE RESENDE', 'IVAN VASCONCELOS DE RESENDE', 'IVR', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 04:32:21', '2020-11-19 04:32:21'),
(23, 1, '449913ae-47be-4ca8-9ded-bd4bc77ba2a8', 'DIVANILDA', 'DIVANILDA', 'DIV', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 04:39:22', '2020-11-19 04:39:22'),
(24, 1, '8d04040b-67e2-4e77-b434-a72e28d9baf8', 'MARISA COSTA ANDRADE', 'MARISA COSTA ANDRADE', 'MCA', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 05:01:59', '2020-11-19 05:01:59'),
(25, 1, 'e98fbad7-aae5-489c-99d0-8f7663958f7f', 'ADEVALDES P. JR', 'ADEVALDES P. JR', 'ADE', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 05:24:28', '2020-11-19 05:24:28'),
(26, 1, '707cfe87-ab4c-4cef-a637-3ad870168646', 'JOÃO FRANCISCO FRANCO JUNQUEIRA', 'JOÃO FRANCISCO FRANCO JUNQUEIRA', 'JFF', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 06:19:31', '2020-11-19 06:19:31'),
(27, 1, 'cfe45c9f-967a-4381-a7ab-0ca8c293a612', 'HELIO MARTINS BORGES', 'HELIO MARTINS BORGES', 'HMB', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-19 06:28:36', '2020-11-19 06:28:36'),
(28, 1, 'c8ca6512-8095-43b8-8d16-c76a64bc69b7', 'JOAQUIM MARTINS TEIXEIRA JÚNIOR', 'JOAQUIM MARTINS TEIXEIRA JÚNIOR', 'JMT', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 10:55:08', '2020-11-29 03:39:03'),
(29, 1, 'f305b70d-19aa-4212-8e62-f67c605293e4', 'DELCIDES', 'DELCIDES', 'DEL', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:29:54', '2020-11-29 03:29:54'),
(30, 1, '3e5ba5cb-b779-411d-9e47-90bdd119174f', 'JOÃO NAVES NETO', 'JOÃO NAVES NETO', 'JNN', 'Depósito', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:33:53', '2020-11-29 03:33:53'),
(31, 1, '36cb0d0f-b389-48a6-af08-7e24c86fb8e2', 'CASSIANO COSTA', 'CASSIANO COSTA', 'CSC', 'Transferência', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 03:41:06', '2020-11-29 04:35:34'),
(32, 1, '31465a1e-e3fa-4b0e-9cb9-3e20d374ccf8', 'AZARIAS RESENDE', 'AZARIAS RESENDE', 'ARE', 'Transferência', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:38:33', '2020-11-29 04:38:33'),
(33, 1, 'e71acbe7-f4ef-4178-9586-2b314649d4f0', 'OSCAR TOMÊ', 'OSCAR TOMÊ', 'OST', 'Transferência', 'Física', NULL, NULL, NULL, 'Solteiro(a)', NULL, NULL, NULL, NULL, NULL, 'Ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 04:42:20', '2020-11-29 04:42:20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `safras`
--

CREATE TABLE `safras` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `status` enum('Ativa','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativa',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `safras`
--

INSERT INTO `safras` (`id`, `tenant_id`, `uuid`, `nome`, `data_inicio`, `data_final`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '062b8e1c-9365-4472-b00f-2de0d3706878', 'SAFRINHA MILHO 19/20', '2020-01-01', '2020-01-31', 'Desativada', NULL, '2020-11-27 07:53:17', '2020-12-01 04:26:51'),
(2, 1, '27d68c3d-154e-49c1-a448-73170df41da5', 'SAFRA SOJA 20/21', '2020-11-01', NULL, 'Ativa', NULL, '2020-12-01 00:44:55', '2020-12-01 04:26:44');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico_agricolas`
--

CREATE TABLE `servico_agricolas` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `safra_id` bigint UNSIGNED NOT NULL,
  `cultura_id` bigint UNSIGNED NOT NULL,
  `talhao_id` bigint UNSIGNED NOT NULL,
  `tipo_operacao_agricula_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date DEFAULT NULL,
  `volume_bomba` double(10,3) DEFAULT NULL,
  `vazao` double(10,3) DEFAULT NULL,
  `capacidade_bomba` double(10,3) DEFAULT NULL,
  `bomba_recomendada` double(10,3) DEFAULT NULL,
  `bomba_usada` double(10,3) DEFAULT NULL,
  `diferenca_bomba` double(10,3) DEFAULT NULL,
  `area` double(10,2) DEFAULT NULL,
  `observacao` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ABERTA','FINALIZADA','CANCELADA') COLLATE utf8mb4_unicode_ci NOT NULL,
  `operadores` json NOT NULL,
  `produtos` json NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DU2zlWxVbheL4KtZ9tSJoLEACZLphas8dFYT1HmR', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTWdySU1VdjM2bW9hcFdaTU56cEMxcnowdXl5SllGdXNoWUFnMnFqQiI7czo1NToibG9naW5fYmFja3BhY2tfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwOi8vbGF2b3VyYS5sb2NhbC9hZG1pbi9tb3RvcmlzdGEvY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJjcmVhdGUiO2E6MTp7czoxMDoic2F2ZUFjdGlvbiI7czoxMzoic2F2ZV9hbmRfYmFjayI7fXM6NjoidXBkYXRlIjthOjE6e3M6MTA6InNhdmVBY3Rpb24iO3M6MTM6InNhdmVfYW5kX2JhY2siO319', 1610139417);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sub_grupo_produtos`
--

CREATE TABLE `sub_grupo_produtos` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `grupo_produto_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativo',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sub_grupo_produtos`
--

INSERT INTO `sub_grupo_produtos` (`id`, `tenant_id`, `grupo_produto_id`, `uuid`, `nome`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0555159e-8369-48f5-8a3e-095fd8e698d9', 'INSETICIDA', 'Ativo', NULL, '2020-12-17 16:36:44', '2020-12-17 16:36:44'),
(2, 1, 1, 'c9eb734d-5882-442a-b87b-510945427958', 'ADJUVANTE', 'Ativo', NULL, '2020-12-17 16:36:17', '2020-12-17 16:36:17'),
(3, 1, 1, '0191bb06-3700-48ad-9ac2-8bcd3a198ea0', 'HERBICIDA', 'Ativo', NULL, '2020-12-17 16:38:52', '2020-12-17 16:38:52'),
(4, 1, 1, '905a6d89-4993-41e2-8562-b58e6813f9db', 'FERTILIZANTE FOLHAR', 'Ativo', NULL, '2020-12-17 16:42:32', '2020-12-17 16:42:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `talhaos`
--

CREATE TABLE `talhaos` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `fazenda_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_total` double(10,2) NOT NULL,
  `bloco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativo',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `talhaos`
--

INSERT INTO `talhaos` (`id`, `tenant_id`, `fazenda_id`, `uuid`, `nome`, `area_total`, `bloco`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 16, 'c5b8eaa5-b97b-4c14-9523-ce4f07cd1821', 'T-01 & T-14', 228.55, '1', 'Ativo', NULL, '2020-11-30 23:44:09', '2020-11-30 23:47:12'),
(2, 1, 16, 'da008329-8033-4150-ab9c-f477e6c345d6', 'T-02', 221.28, '1', 'Ativo', NULL, '2020-12-01 03:42:44', '2020-12-01 03:42:44'),
(3, 1, 16, '5a4ce627-6c69-485d-8e5d-bf6201fea35a', 'T-03', 233.54, '1', 'Ativo', NULL, '2020-12-01 03:44:43', '2020-12-01 03:44:43'),
(4, 1, 16, '69970579-c2e1-481d-9806-6e4d04ff256b', 'T-04', 137.79, '1', 'Ativo', NULL, '2020-12-01 03:46:04', '2020-12-01 03:46:04'),
(5, 1, 16, '53838f4e-4c31-4a12-afb4-43cc92e07a1c', 'T-05 AB', 275.89, '1', 'Ativo', NULL, '2020-12-01 04:34:41', '2020-12-01 04:34:41'),
(6, 1, 16, '2cfb4a27-d991-4249-874d-46b8ef46cc6b', 'T-05 CD', 429.65, '1', 'Ativo', NULL, '2020-12-01 04:35:57', '2020-12-01 04:35:57'),
(7, 1, 16, '8e44a40c-0209-42be-b3f5-ebec32ddb498', 'T-06 ABC', 239.75, '1', 'Ativo', NULL, '2020-12-01 04:36:55', '2020-12-01 04:36:55'),
(8, 1, 16, 'f25a92b1-8015-4262-a298-013e7c42d759', 'T-06 D', 131.40, '1', 'Ativo', NULL, '2020-12-01 04:38:42', '2020-12-01 04:38:42'),
(9, 1, 4, '2b008c9a-0ac7-448f-9f56-d211e944bc3a', 'T-07 AB', 211.23, '7', 'Ativo', NULL, '2020-12-01 04:39:48', '2021-01-08 16:14:29'),
(10, 1, 4, '51610085-3ef3-46c0-8bb8-53b27bb196ea', 'T-08', 378.63, '7', 'Ativo', NULL, '2020-12-01 04:40:42', '2021-01-08 16:14:51'),
(11, 1, 4, '024ace41-580c-40cf-83cf-83a59f6fae94', 'T-09', 100.09, '7', 'Ativo', NULL, '2020-12-01 05:02:38', '2021-01-08 16:15:04'),
(12, 1, 1, '97b435a0-f923-4192-9105-65e361e6f0eb', 'T-10', 191.36, '1', 'Ativo', NULL, '2020-12-01 05:03:34', '2021-01-08 14:59:18'),
(13, 1, 2, '750ddca9-4ae4-4e37-8659-910d69e79b08', 'T-11', 207.92, '4', 'Ativo', NULL, '2020-12-01 05:04:46', '2021-01-08 16:05:57'),
(14, 1, 13, '7aacfbae-c327-425c-bbb2-c605093ece27', 'T-12', 90.11, '4', 'Ativo', NULL, '2020-12-01 05:06:05', '2021-01-08 16:07:48'),
(15, 1, 27, '359f575f-c1a9-4f89-af9f-0b910fd72fa7', 'T-13', 123.42, '7', 'Ativo', NULL, '2020-12-01 05:07:34', '2021-01-08 16:17:42'),
(16, 1, 6, '235a6bcd-70ae-4726-968c-ff4715e00625', 'T-15', 720.56, '1', 'Ativo', NULL, '2020-12-01 05:08:42', '2021-01-08 14:59:30'),
(17, 1, 16, 'f395702d-a709-4502-9c8b-fcb0f21e7a7e', 'T-16', 329.84, '1', 'Ativo', NULL, '2020-12-01 05:09:49', '2020-12-01 05:09:49'),
(18, 1, 33, 'b5e1de99-2891-4183-b86b-8b8933026225', 'T-17', 416.21, '2', 'Ativo', NULL, '2020-12-01 05:10:50', '2021-01-08 15:00:30'),
(19, 1, 2, 'b465d747-1c40-4985-85d9-335037d55bf5', 'T-18', 575.29, '1', 'Ativo', NULL, '2020-12-01 05:37:22', '2021-01-08 14:59:57'),
(20, 1, 33, '8ba7e20a-912c-48c8-98f3-4a3e6c9ee05d', 'T-19', 258.16, '2', 'Ativo', NULL, '2020-12-01 05:39:26', '2021-01-08 15:11:42'),
(21, 1, 16, 'cfcb385f-f5e4-4075-a35f-3ac4508d394f', 'T-20 A', 109.89, '1', 'Ativo', NULL, '2020-12-01 05:42:06', '2020-12-01 05:42:06'),
(22, 1, 16, '661dd905-611e-4208-9de3-eb2de768f0d4', 'T-20 BC', 125.37, '1', 'Ativo', NULL, '2020-12-01 05:43:26', '2020-12-01 05:43:26'),
(23, 1, 33, '62d4d59e-eeaa-47b9-978f-beb3a7b1652a', 'T-21', 420.40, '2', 'Ativo', NULL, '2020-12-01 05:44:24', '2021-01-08 15:04:10'),
(24, 1, 4, '3322bef5-253f-4bc6-be1b-12d0fb9508b7', 'T-22', 609.16, '1', 'Ativo', NULL, '2020-12-01 05:48:51', '2021-01-08 14:59:05'),
(25, 1, 4, 'b9fb02a1-3da7-4d29-9879-4a57a7768594', 'T-23', 416.32, '7', 'Ativo', NULL, '2020-12-01 05:49:41', '2021-01-08 16:17:33'),
(26, 1, 17, '8a39eb64-c865-4fdf-8817-3495878a2997', 'T-24', 205.99, '2', 'Ativo', NULL, '2020-12-01 05:50:43', '2021-01-08 15:00:55'),
(27, 1, 17, '85fdea45-5bdf-4d62-a793-dd122f59b3a5', 'T-25', 194.90, '2', 'Ativo', NULL, '2020-12-01 05:51:33', '2021-01-08 15:01:28'),
(28, 1, 6, '19bb83a4-4b5d-49a4-b875-2981bec56c41', 'T-26', 393.58, '1', 'Ativo', NULL, '2020-12-01 05:54:45', '2021-01-08 14:59:44'),
(29, 1, 33, '0b2b0598-907f-4002-a6a2-c466c73dc26a', 'T-27', 403.58, '2', 'Ativo', NULL, '2020-12-01 05:59:06', '2021-01-08 15:14:48'),
(30, 1, 17, '4210b64f-e724-4a22-9cb0-b3fa387da8a4', 'T-28', 408.06, '2', 'Ativo', NULL, '2020-12-01 06:01:39', '2021-01-08 15:15:26'),
(31, 1, 17, 'b6a3ee0d-2846-4761-90c3-7443a8391241', 'T-29', 399.82, '2', 'Ativo', NULL, '2020-12-01 06:02:37', '2021-01-08 15:15:40'),
(32, 1, 40, '94e80268-88a9-4be1-adc4-7fe179418f1a', 'T-30 AB & 21 G', 138.44, '2', 'Ativo', NULL, '2020-12-01 06:06:12', '2021-01-08 15:16:03'),
(33, 1, 40, '4a8bc150-cb85-4f78-a18f-1a71d282adff', 'T-30 C', 188.09, '2', 'Ativo', NULL, '2020-12-01 06:07:46', '2021-01-08 15:15:58'),
(34, 1, 32, '1f499a8b-1ad2-4d70-b7fc-98558b9b5e77', 'T-31', 86.47, '3', 'Ativo', NULL, '2020-12-01 06:09:51', '2021-01-08 15:42:13'),
(35, 1, 32, '8c7e475c-623e-4890-b9bd-1b145ab225b3', 'T-32,33,34,35', 400.25, '3', 'Ativo', NULL, '2020-12-01 06:11:58', '2021-01-08 15:42:33'),
(36, 1, 32, 'e520593e-da0f-406e-9fd6-bf509a2380cc', 'T-36,37', 194.48, '3', 'Ativo', NULL, '2020-12-01 06:13:18', '2021-01-08 15:42:49'),
(37, 1, 27, '348debba-c763-48c1-a821-e9fb4e233443', 'T-38 ABC', 291.65, '5', 'Ativo', NULL, '2020-12-01 06:39:35', '2021-01-08 16:08:22'),
(38, 1, 27, '1d2ccd62-c237-49b5-819e-10baeeb8ea87', 'T-39', 266.23, '5', 'Ativo', NULL, '2020-12-01 06:40:39', '2021-01-08 16:08:35'),
(39, 1, 37, '3e6a9ec2-aaa4-4f05-9372-7d1511e6b033', 'T-40 A', 84.66, '8', 'Ativo', NULL, '2020-12-01 06:44:05', '2021-01-08 16:18:54'),
(40, 1, 37, 'aad96157-ba27-4eac-a039-1124992a9199', 'T-40 B', 109.61, '8', 'Ativo', NULL, '2020-12-01 06:44:56', '2021-01-08 16:18:44'),
(41, 1, 20, '91c86cc1-0c17-439d-85df-f49c0a254577', 'T-41', 302.19, '5', 'Ativo', NULL, '2020-12-01 06:45:51', '2021-01-08 16:08:46'),
(42, 1, 20, 'ab8165bc-ada7-4a48-9fad-33052fbc579b', 'T-42', 579.23, '5', 'Ativo', NULL, '2020-12-01 06:46:43', '2021-01-08 16:08:58'),
(43, 1, 27, '3b99b1fb-f055-406b-acef-75f84586a10c', 'T-43', 71.03, '5', 'Ativo', NULL, '2020-12-01 06:53:19', '2021-01-08 16:09:15'),
(44, 1, 36, 'eb4fcc78-5ed7-4bcd-ae15-cc0deefd05b3', 'T-44', 475.36, '3', 'Ativo', NULL, '2020-12-01 06:54:22', '2021-01-08 15:43:02'),
(45, 1, 21, 'f041a31c-90fe-4e3c-ae56-9cb738e0d9b2', 'T-45', 349.90, '3', 'Ativo', NULL, '2020-12-01 06:55:21', '2021-01-08 15:46:07'),
(46, 1, 20, 'e6245741-dc91-4c39-b49b-92f772ed6920', 'T-46', 284.03, '5', 'Ativo', NULL, '2020-12-01 06:57:13', '2021-01-08 16:09:26'),
(47, 1, 28, 'df0817fe-787e-4b02-bde2-22bc8073cdae', 'T-47', 149.99, '5', 'Ativo', NULL, '2020-12-01 06:58:08', '2021-01-08 16:09:38'),
(48, 1, 31, 'ab30615b-c6e1-47a5-85e6-bb0e8236aa73', 'T-48', 467.18, '3', 'Ativo', NULL, '2020-12-01 06:59:20', '2021-01-08 15:43:29'),
(49, 1, 11, '8861b8f4-45b5-4dd2-8a93-b0bb94e6d251', 'T-49', 100.10, '4', 'Ativo', NULL, '2020-12-01 07:01:40', '2021-01-08 16:06:20'),
(50, 1, 2, '0599990f-11ae-45ec-a57f-0075ec2809a0', 'T-50', 270.42, '8', 'Ativo', NULL, '2020-12-01 07:02:34', '2021-01-08 16:18:26'),
(51, 1, 38, '9f674cb4-bc1a-4992-b774-56fdb121c19f', 'T-51', 300.30, '3', 'Ativo', NULL, '2020-12-01 07:05:38', '2021-01-08 15:44:34'),
(52, 1, 17, '54a6f21b-880e-45a2-9cad-a62378d23607', 'T-52', 216.08, '2', 'Ativo', NULL, '2020-12-01 07:06:28', '2021-01-08 15:23:39'),
(53, 1, 31, '53a0f5b4-859c-4d6a-be65-6e41c2bc325a', 'T-53', 116.11, '2', 'Ativo', NULL, '2020-12-01 07:07:50', '2021-01-08 15:38:31'),
(54, 1, 33, '4fae07d2-a67f-47de-9a2a-d07fe99e8eec', 'T-54', 137.73, '2', 'Ativo', NULL, '2020-12-01 07:22:28', '2021-01-08 15:15:00'),
(55, 1, 25, 'aeaac1e6-6f72-4aa3-9f93-e88fd0009fe3', 'T-55', 62.00, '2', 'Ativo', NULL, '2020-12-01 07:32:31', '2021-01-08 15:16:23'),
(56, 1, 31, '554e4e4a-bbb4-4120-8ca3-e309abe667b1', 'T-56', 134.21, '2', 'Ativo', NULL, '2020-12-01 07:37:11', '2021-01-08 15:38:43'),
(57, 1, 26, '90f6ae85-b6e6-46a9-9947-f29488f14be5', 'T-57', 354.97, '2', 'Ativo', NULL, '2020-12-01 07:38:19', '2021-01-08 15:41:13'),
(58, 1, 3, '2caf1748-a23a-4da5-818a-8c0a69348604', 'T-58', 104.69, '50', 'Ativo', NULL, '2020-12-01 07:39:36', '2020-12-01 07:39:36'),
(59, 1, 3, '405f91f4-b132-4e28-9892-a99d7b36f71a', 'T-59 AB', 157.81, '4', 'Ativo', NULL, '2020-12-01 07:42:02', '2021-01-08 16:24:06'),
(60, 1, 3, '957cb4c6-344f-4ad2-b7c2-5daf9b983fd5', 'T-59 CD', 294.73, '4', 'Ativo', NULL, '2020-12-01 07:45:08', '2021-01-08 16:06:40'),
(61, 1, 17, 'd448ae0e-8322-4739-9327-0dc6449b676d', 'T-60', 210.77, '8', 'Ativo', NULL, '2020-12-01 07:48:40', '2021-01-08 16:19:13'),
(62, 1, 17, 'e0978506-cdd0-4d60-8af3-40caea4a3bd2', 'T-61', 54.85, '8', 'Ativo', NULL, '2020-12-01 07:50:25', '2021-01-08 16:19:25'),
(63, 1, 17, '9851631c-a45d-4986-94d5-7104d34bcb85', 'T-62', 8.74, '2', 'Ativo', NULL, '2020-12-01 07:53:50', '2021-01-08 15:42:05'),
(64, 1, 37, '7d01e4c7-b4d8-401e-96aa-d50370434f7a', 'T-64', 130.49, '4', 'Ativo', NULL, '2020-12-01 07:54:47', '2021-01-08 16:06:55'),
(65, 1, 17, '8a4c8894-1805-4ef8-8aa0-cb802a37b8ca', 'T-65', 262.82, '8', 'Ativo', NULL, '2020-12-01 07:55:45', '2021-01-08 16:19:51'),
(66, 1, 17, 'ddc6661e-5792-41a9-81e5-113fc48df79c', 'T-66', 185.09, '50', 'Ativo', NULL, '2020-12-01 22:24:04', '2020-12-01 22:24:04'),
(67, 1, 17, '6c9baf30-a872-4f74-aeb8-6927a5ecc26b', 'T-67', 274.09, '2', 'Ativo', NULL, '2020-12-01 22:24:59', '2021-01-08 15:09:10'),
(68, 1, 21, '58201ff9-2269-4973-87b7-98bd36e0f3b8', 'T-67 C', 110.48, '2', 'Ativo', NULL, '2020-12-01 22:28:24', '2021-01-08 15:09:16'),
(69, 1, 29, '2acc8859-2358-462b-be30-70b1092dc671', 'T-68', 497.60, '4', 'Ativo', NULL, '2020-12-01 22:30:18', '2021-01-08 16:07:11'),
(70, 1, 17, 'a2236c23-170f-44a3-925f-251476095711', 'T-69', 100.62, '2', 'Ativo', NULL, '2020-12-01 22:31:22', '2021-01-08 15:37:47'),
(71, 1, 31, '07d44da9-21c0-4ccc-8b0f-40a36e343d4b', 'T-70', 33.39, '2', 'Ativo', NULL, '2020-12-01 22:41:23', '2021-01-08 15:38:10'),
(72, 1, 31, '949d0141-f6dd-4cb2-a25c-ae5dec0e584b', 'T-71', 392.35, '8', 'Ativo', NULL, '2020-12-01 22:42:40', '2021-01-08 16:20:06'),
(73, 1, 31, 'beea1531-f36a-4501-bc14-37fc571f18dd', 'T-72', 321.37, '8', 'Ativo', NULL, '2020-12-01 22:46:35', '2021-01-08 16:20:23'),
(74, 1, 31, '5bc7b212-ce4e-44ec-b500-842b16c90752', 'T-75', 65.21, '8', 'Ativo', NULL, '2020-12-01 22:47:28', '2021-01-08 16:20:51'),
(75, 1, 31, '0f3e95f8-ff81-4a04-a985-6bc6860fd07a', 'T-76', 228.34, '8', 'Ativo', NULL, '2020-12-01 23:12:40', '2021-01-08 16:21:04'),
(76, 1, 31, '03790040-f7c0-43d0-988e-54b939ced76e', 'T-77', 166.24, '8', 'Ativo', NULL, '2020-12-01 23:31:47', '2021-01-08 16:21:17'),
(77, 1, 31, 'f6d6da14-2276-4285-b8d9-fe37d47a403c', 'T-78', 112.42, '8', 'Ativo', NULL, '2020-12-01 23:34:15', '2021-01-08 16:21:31'),
(78, 1, 31, '99234ae4-3e14-4851-9f17-c850bae1c0fd', 'T-79', 289.22, '8', 'Ativo', NULL, '2020-12-01 23:35:12', '2021-01-08 16:21:44'),
(79, 1, 31, '1631a37a-e585-4165-ad75-4849b61b1d47', 'T-80 AB', 180.28, '8', 'Ativo', NULL, '2020-12-01 23:37:33', '2021-01-08 16:22:04'),
(80, 1, 31, '309bef27-f73c-46d4-aa94-53633c8bfc8a', 'T-80 C', 119.33, '8', 'Ativo', NULL, '2020-12-01 23:38:25', '2021-01-08 16:21:59'),
(81, 1, 31, '2f401f52-b2df-4bca-9a44-3f407edc86f5', 'T-81', 56.98, '2', 'Ativo', NULL, '2020-12-01 23:39:20', '2021-01-08 15:38:55'),
(82, 1, 33, '0b8ce686-514f-4021-bdec-9f81be807897', 'T-82', 53.81, '2', 'Ativo', NULL, '2020-12-01 23:46:37', '2021-01-08 15:15:14'),
(83, 1, 31, 'c0e7f301-5f1f-49ae-b958-63dd73e05010', 'T-83', 20.41, '50', 'Ativo', NULL, '2020-12-02 00:16:50', '2020-12-02 00:16:50'),
(84, 1, 4, 'e54e996b-fb7f-4343-8475-71c2c269b134', 'T-07 CDEFG', 378.42, '7', 'Ativo', NULL, '2021-01-06 18:12:50', '2021-01-08 16:14:23'),
(85, 1, 31, 'a504eaa9-d4d2-46a0-9f74-38cce0ab4127', 'T-63', 28.94, '8', 'Ativo', NULL, '2021-01-06 18:30:44', '2021-01-08 16:18:15'),
(86, 1, 31, '3fdaa86d-5a7d-48a7-b4a3-cc81d6beef50', 'T-73 AB', 141.47, '50', 'Ativo', NULL, '2021-01-06 19:33:49', '2021-01-06 19:33:49'),
(87, 1, 31, 'a60a0742-6836-4ec5-8cc2-e3d65937cb9e', 'T-73 C', 179.31, '50', 'Ativo', NULL, '2021-01-06 19:34:11', '2021-01-06 19:34:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tenants`
--

CREATE TABLE `tenants` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inscricao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Ativa','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativa',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tenants`
--

INSERT INTO `tenants` (`id`, `uuid`, `nome`, `cnpj`, `inscricao`, `url`, `email`, `telefone`, `logo`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '7b6b2285-3619-4a0d-b762-720c93409114', 'FAZENDA SANTA MARTHA', '744.932.058-49', '44984753', 'http://fazendasantamartha.com.br', 'juniorhanun@fslajeado.com.br', '(64) 3608-9558', NULL, 'Ativa', NULL, '2020-11-27 07:15:43', '2020-11-27 07:18:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_operacao_agriculas`
--

CREATE TABLE `tipo_operacao_agriculas` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Ativo','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativo',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tipo_operacao_agriculas`
--

INSERT INTO `tipo_operacao_agriculas` (`id`, `tenant_id`, `uuid`, `nome`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '9e67a07a-9a61-44ab-8a4e-9783f1061bf2', 'PÓS EMERGENTE', 'Ativo', NULL, '2020-12-17 16:32:01', '2020-12-17 16:32:01'),
(2, 1, '36db3550-8f8d-41c6-a67e-0898d1515477', 'DESSECAÇÃO P.P', 'Ativo', NULL, '2020-12-17 16:32:16', '2020-12-17 16:32:16');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '4a2668d1-d9e2-41b3-af45-1b1fd0649274', 'Winston Hanun Júnior', 'juniorhanun@fslajeado.com.br', NULL, '$2y$10$92/OeNFuYEZ/RjlXbSgdQ.FYiMCnjDEFnE29qpz7zfrprTVNOJbKy', NULL, NULL, 'OrBtUvLFQ8ZVQaTXnOq2u1QpXPNKwzNTeAXQyG0OtgoWulL1trTHq0fCywHb', NULL, NULL, NULL, '2020-11-27 06:59:04', '2020-11-27 06:59:04'),
(2, 'fcf2feb3-92d2-4268-ba42-df6057df1cdf', 'Idenilson Venâncio', 'idenilsonsilvafsm@gmail.com', NULL, '$2y$10$zYO5no.01XH9k.wWp4lDJ.qJR8gmAZdr5LE9x5ZpBP4yLdH9Ki/J6', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-07 21:33:34', '2020-12-07 21:33:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `variedade_culturas`
--

CREATE TABLE `variedade_culturas` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `cultura_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tecnologia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciclo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Ativa','Desativada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativa',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `variedade_culturas`
--

INSERT INTO `variedade_culturas` (`id`, `tenant_id`, `cultura_id`, `uuid`, `nome`, `tecnologia`, `ciclo`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'e3790427-88ff-40f8-b3d6-e3a5415c47d1', '468', 'CONVENCIONAL', NULL, 'Ativa', NULL, '2020-11-28 06:06:37', '2020-11-28 06:56:32'),
(2, 1, 2, '7b306663-f1ef-414a-9219-64f1552ed75a', '3380', 'PW', NULL, 'Ativa', NULL, '2020-11-11 04:12:05', '2020-11-11 04:12:05'),
(3, 1, 2, '456ea9fb-be1c-452c-9a06-de4e94778cca', '3707', 'LEPTERA', NULL, 'Ativa', NULL, '2020-11-11 04:12:06', '2020-11-11 04:12:06'),
(4, 1, 2, 'c37a0e84-52cd-485b-ae69-2de897d82fb8', '9006', 'PRO 2', NULL, 'Ativa', NULL, '2020-11-11 04:12:06', '2020-11-11 04:12:06'),
(5, 1, 2, 'b89eb7cf-3a01-4de4-abf9-4e66f8ddf9d6', '9110', 'PRO', NULL, 'Ativa', NULL, '2020-11-11 04:12:06', '2020-11-11 04:12:06'),
(6, 1, 2, 'f175f7b2-e4f1-48d6-9e6c-1a2486796d73', '9210', 'PRO 2', NULL, 'Ativa', NULL, '2020-11-11 04:12:06', '2020-11-11 04:12:06'),
(7, 1, 2, 'b258a3ff-40a2-4f56-8bf2-6c8cb840c834', '9606', 'VIP 3', NULL, 'Ativa', NULL, '2020-11-11 04:12:07', '2020-11-11 04:12:07'),
(8, 1, 2, '72159772-9413-4c63-a27b-c8a01f07f61c', '2B587', 'PW', NULL, 'Ativa', NULL, '2020-11-11 04:12:07', '2020-11-11 04:12:07'),
(9, 1, 2, 'c2d0a6b8-0959-4a6a-bc66-7bc49fdea7b7', 'AS 1780', 'PRO 3', NULL, 'Ativa', NULL, '2020-11-11 04:12:07', '2020-11-11 04:12:07'),
(10, 1, 2, '7b671fdc-e09c-4bf9-a0be-3b07d9837f85', 'Formula', 'VIP 2', NULL, 'Ativa', NULL, '2020-11-11 04:12:07', '2020-11-11 04:12:07'),
(11, 1, 3, '3cf74038-91ab-4724-a710-810ce61a4e9f', 'Milheto_Brachiaria', 'BM', NULL, 'Ativa', NULL, '2020-11-11 04:12:07', '2020-11-11 04:12:07'),
(12, 1, 3, 'ec544b59-ca7a-4fb9-a1fa-4cad4b4c98fa', 'Milheto_Solteiro', 'M', NULL, 'Ativa', NULL, '2020-11-11 04:12:08', '2020-11-11 04:12:08'),
(13, 1, 2, 'f1f78ff2-d67d-4ae8-a691-6142c496e9aa', 'MISTURA', 'MISTURA', NULL, 'Ativa', NULL, '2020-11-11 04:12:08', '2020-11-11 04:12:08'),
(14, 1, 1, '43db1b3a-f642-445c-9c57-c652b8a370ae', 'M 6210 IPRO', 'INTACTA', NULL, 'Ativa', NULL, '2020-11-12 02:55:29', '2020-11-12 02:55:29'),
(15, 1, 1, 'cc6784e0-0d35-4de4-99a2-f715106e9659', 'M 7110 IPRO', 'INTACTA', NULL, 'Ativa', NULL, '2020-11-12 02:56:14', '2020-11-12 02:56:14'),
(16, 1, 1, '81f73377-7602-48af-9fd1-a0af568b37f3', 'NS 6906 IPRO', NULL, NULL, 'Ativa', NULL, '2020-11-12 02:58:28', '2020-11-12 02:58:28'),
(17, 1, 1, 'ae0e9325-48c9-497b-b0a6-20eb158d56e7', 'NS 7200 RR', NULL, NULL, 'Ativa', NULL, '2020-11-12 02:59:14', '2020-11-12 02:59:14'),
(18, 1, 1, 'cbc2346f-c930-4a59-808d-d66d5d7c1352', 'NS 7670 RR', NULL, NULL, 'Ativa', NULL, '2020-11-12 02:59:49', '2020-11-12 02:59:49'),
(19, 1, 1, 'd1a8f6c8-3bc2-4115-bd63-5d6b74283462', 'PONTA 7166 IPRO', NULL, NULL, 'Ativa', NULL, '2020-11-12 03:09:10', '2020-11-12 03:09:10'),
(20, 1, 1, 'e0cc2e9a-5f9e-411a-9dbc-b95c395bc864', 'VORAZ 77I79 IPRO', NULL, NULL, 'Ativa', NULL, '2020-11-12 03:09:40', '2020-11-12 03:09:40'),
(21, 1, 1, 'ce4b0b20-ed96-422b-a1a1-d692ffeb2a9b', 'AS 3730 IPRO', NULL, NULL, 'Ativa', NULL, '2020-11-12 03:14:03', '2020-11-12 03:14:03'),
(22, 1, 1, 'a79921b9-650f-4b6b-88bd-41606156a2e9', 'FOCO 74I77 IPRO', NULL, NULL, 'Ativa', NULL, '2020-11-12 03:14:48', '2020-11-12 03:14:48'),
(23, 1, 1, '7ec948f3-7aa0-4c53-9369-9aca31555b5e', '96Y90  RR', NULL, NULL, 'Ativa', NULL, '2020-11-12 03:16:36', '2020-11-12 03:16:36'),
(24, 1, 1, 'd51cf4b4-1072-475e-bc59-3beab7653ca3', '97R50 IPRO', NULL, NULL, 'Ativa', NULL, '2020-11-12 03:19:59', '2020-11-12 03:19:59'),
(25, 1, 1, '09858015-04ac-4b3d-a0f5-b5429798c10c', 'DESAFIO RR', NULL, NULL, 'Ativa', NULL, '2020-11-12 03:21:07', '2020-11-12 03:21:07'),
(26, 1, 1, '98f39a80-8550-4b28-a79b-73ca484fbecf', 'BONUS 8579 IPRO', NULL, NULL, 'Ativa', NULL, '2020-11-12 03:21:59', '2020-11-12 03:21:59'),
(27, 1, 1, 'd03b4223-093a-40cc-9ebf-a472ac651e00', '68I69 IPRO', NULL, NULL, 'Ativa', NULL, '2020-11-12 03:22:36', '2020-11-12 03:22:36');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Índices de tabela `armazems`
--
ALTER TABLE `armazems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `armazems_nome_unique` (`nome`),
  ADD KEY `armazems_tenant_id_foreign` (`tenant_id`),
  ADD KEY `armazems_fornecedor_id_foreign` (`fornecedor_id`);

--
-- Índices de tabela `centro_administrativos`
--
ALTER TABLE `centro_administrativos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `centro_administrativos_tenant_id_foreign` (`tenant_id`),
  ADD KEY `centro_administrativos_produtor_id_foreign` (`produtor_id`),
  ADD KEY `centro_administrativos_fazenda_id_foreign` (`fazenda_id`);

--
-- Índices de tabela `centro_custos`
--
ALTER TABLE `centro_custos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `centro_custos_nome_unique` (`nome`),
  ADD KEY `centro_custos_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `colhedors`
--
ALTER TABLE `colhedors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colhedors_nome_unique` (`nome`),
  ADD KEY `colhedors_tenant_id_foreign` (`tenant_id`),
  ADD KEY `colhedors_fornecedor_id_foreign` (`fornecedor_id`);

--
-- Índices de tabela `culturas`
--
ALTER TABLE `culturas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `culturas_nome_unique` (`nome`),
  ADD KEY `culturas_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `fazendas`
--
ALTER TABLE `fazendas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fazendas_nome_unique` (`nome`),
  ADD UNIQUE KEY `fazendas_inscricao_estadual_unique` (`inscricao_estadual`),
  ADD KEY `fazendas_tenant_id_foreign` (`tenant_id`),
  ADD KEY `fazendas_proprietario_id_foreign` (`proprietario_id`),
  ADD KEY `fazendas_produtor_id_foreign` (`produtor_id`);

--
-- Índices de tabela `fornecedors`
--
ALTER TABLE `fornecedors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fornecedors_razao_social_unique` (`razao_social`),
  ADD UNIQUE KEY `fornecedors_nome_fantasia_unique` (`nome_fantasia`),
  ADD UNIQUE KEY `fornecedors_rg_inscricao_unique` (`rg_inscricao`),
  ADD UNIQUE KEY `fornecedors_cpf_cnpj_unique` (`cpf_cnpj`),
  ADD KEY `fornecedors_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `frotas`
--
ALTER TABLE `frotas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `frotas_nome_unique` (`nome`),
  ADD KEY `frotas_tenant_id_foreign` (`tenant_id`),
  ADD KEY `frotas_grupo_frota_id_foreign` (`grupo_frota_id`);

--
-- Índices de tabela `grupo_frotas`
--
ALTER TABLE `grupo_frotas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grupo_frotas_nome_unique` (`nome`),
  ADD KEY `grupo_frotas_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `grupo_produtos`
--
ALTER TABLE `grupo_produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grupo_produtos_nome_unique` (`nome`),
  ADD KEY `grupo_produtos_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `lancamento_conta_apagars`
--
ALTER TABLE `lancamento_conta_apagars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lancamento_conta_apagars_tenant_id_foreign` (`tenant_id`),
  ADD KEY `lancamento_conta_apagars_centro_custo_id_foreign` (`centro_custo_id`),
  ADD KEY `lancamento_conta_apagars_fornecedor_id_foreign` (`fornecedor_id`);

--
-- Índices de tabela `locacao_talhaos`
--
ALTER TABLE `locacao_talhaos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locacao_talhaos_tenant_id_foreign` (`tenant_id`),
  ADD KEY `locacao_talhaos_safra_id_foreign` (`safra_id`),
  ADD KEY `locacao_talhaos_cultura_id_foreign` (`cultura_id`),
  ADD KEY `locacao_talhaos_variedade_cultura_id_foreign` (`variedade_cultura_id`),
  ADD KEY `locacao_talhaos_talhao_id_foreign` (`talhao_id`);

--
-- Índices de tabela `matriz_fretes`
--
ALTER TABLE `matriz_fretes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matriz_fretes_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices de tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices de tabela `motoristas`
--
ALTER TABLE `motoristas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `motoristas_nome_unique` (`nome`),
  ADD UNIQUE KEY `motoristas_cpf_unique` (`cpf`),
  ADD UNIQUE KEY `motoristas_placa_unique` (`placa`),
  ADD KEY `motoristas_tenant_id_foreign` (`tenant_id`),
  ADD KEY `motoristas_fornecedor_id_foreign` (`fornecedor_id`);

--
-- Índices de tabela `operador_agriculas`
--
ALTER TABLE `operador_agriculas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `operador_agriculas_nome_unique` (`nome`),
  ADD KEY `operador_agriculas_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `operador_agricula_servico_agricola`
--
ALTER TABLE `operador_agricula_servico_agricola`
  ADD KEY `operador_agricula_servico_agricola_operador_agricula_id_foreign` (`operador_agricula_id`),
  ADD KEY `operador_agricula_servico_agricola_servico_agricola_id_foreign` (`servico_agricola_id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `produtors`
--
ALTER TABLE `produtors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `produtors_razao_social_unique` (`razao_social`),
  ADD UNIQUE KEY `produtors_nome_fantasia_unique` (`nome_fantasia`),
  ADD UNIQUE KEY `produtors_abreviacao_unique` (`abreviacao`),
  ADD KEY `produtors_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `produtos_nome_unique` (`nome`),
  ADD KEY `produtos_tenant_id_foreign` (`tenant_id`),
  ADD KEY `produtos_grupo_produto_id_foreign` (`grupo_produto_id`),
  ADD KEY `produtos_sub_grupo_produto_id_foreign` (`sub_grupo_produto_id`);

--
-- Índices de tabela `produto_servico_agricola`
--
ALTER TABLE `produto_servico_agricola`
  ADD KEY `produto_servico_agricola_produto_id_foreign` (`produto_id`),
  ADD KEY `produto_servico_agricola_servico_agricola_id_foreign` (`servico_agricola_id`);

--
-- Índices de tabela `proprietarios`
--
ALTER TABLE `proprietarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `proprietarios_razao_social_unique` (`razao_social`),
  ADD UNIQUE KEY `proprietarios_nome_fantasia_unique` (`nome_fantasia`),
  ADD UNIQUE KEY `proprietarios_abreviacao_unique` (`abreviacao`),
  ADD KEY `proprietarios_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Índices de tabela `safras`
--
ALTER TABLE `safras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `safras_nome_unique` (`nome`),
  ADD KEY `safras_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `servico_agricolas`
--
ALTER TABLE `servico_agricolas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servico_agricolas_tenant_id_foreign` (`tenant_id`),
  ADD KEY `servico_agricolas_safra_id_foreign` (`safra_id`),
  ADD KEY `servico_agricolas_cultura_id_foreign` (`cultura_id`),
  ADD KEY `servico_agricolas_talhao_id_foreign` (`talhao_id`),
  ADD KEY `servico_agricolas_tipo_operacao_agricula_id_foreign` (`tipo_operacao_agricula_id`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `sub_grupo_produtos`
--
ALTER TABLE `sub_grupo_produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_grupo_produtos_nome_unique` (`nome`),
  ADD KEY `sub_grupo_produtos_tenant_id_foreign` (`tenant_id`),
  ADD KEY `sub_grupo_produtos_grupo_produto_id_foreign` (`grupo_produto_id`);

--
-- Índices de tabela `talhaos`
--
ALTER TABLE `talhaos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `talhaos_nome_unique` (`nome`),
  ADD KEY `talhaos_tenant_id_foreign` (`tenant_id`),
  ADD KEY `talhaos_fazenda_id_foreign` (`fazenda_id`);

--
-- Índices de tabela `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenants_nome_unique` (`nome`),
  ADD UNIQUE KEY `tenants_cnpj_unique` (`cnpj`),
  ADD UNIQUE KEY `tenants_inscricao_unique` (`inscricao`),
  ADD UNIQUE KEY `tenants_email_unique` (`email`);

--
-- Índices de tabela `tipo_operacao_agriculas`
--
ALTER TABLE `tipo_operacao_agriculas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipo_operacao_agriculas_nome_unique` (`nome`),
  ADD KEY `tipo_operacao_agriculas_tenant_id_foreign` (`tenant_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices de tabela `variedade_culturas`
--
ALTER TABLE `variedade_culturas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variedade_culturas_nome_unique` (`nome`),
  ADD KEY `variedade_culturas_tenant_id_foreign` (`tenant_id`),
  ADD KEY `variedade_culturas_cultura_id_foreign` (`cultura_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- AUTO_INCREMENT de tabela `armazems`
--
ALTER TABLE `armazems`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `centro_administrativos`
--
ALTER TABLE `centro_administrativos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `centro_custos`
--
ALTER TABLE `centro_custos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `colhedors`
--
ALTER TABLE `colhedors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `culturas`
--
ALTER TABLE `culturas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fazendas`
--
ALTER TABLE `fazendas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `fornecedors`
--
ALTER TABLE `fornecedors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `frotas`
--
ALTER TABLE `frotas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `grupo_frotas`
--
ALTER TABLE `grupo_frotas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `grupo_produtos`
--
ALTER TABLE `grupo_produtos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `lancamento_conta_apagars`
--
ALTER TABLE `lancamento_conta_apagars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `locacao_talhaos`
--
ALTER TABLE `locacao_talhaos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de tabela `matriz_fretes`
--
ALTER TABLE `matriz_fretes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `motoristas`
--
ALTER TABLE `motoristas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `operador_agriculas`
--
ALTER TABLE `operador_agriculas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtors`
--
ALTER TABLE `produtors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `proprietarios`
--
ALTER TABLE `proprietarios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `safras`
--
ALTER TABLE `safras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `servico_agricolas`
--
ALTER TABLE `servico_agricolas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sub_grupo_produtos`
--
ALTER TABLE `sub_grupo_produtos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `talhaos`
--
ALTER TABLE `talhaos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de tabela `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tipo_operacao_agriculas`
--
ALTER TABLE `tipo_operacao_agriculas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `variedade_culturas`
--
ALTER TABLE `variedade_culturas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `armazems`
--
ALTER TABLE `armazems`
  ADD CONSTRAINT `armazems_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `armazems_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `centro_administrativos`
--
ALTER TABLE `centro_administrativos`
  ADD CONSTRAINT `centro_administrativos_fazenda_id_foreign` FOREIGN KEY (`fazenda_id`) REFERENCES `fazendas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `centro_administrativos_produtor_id_foreign` FOREIGN KEY (`produtor_id`) REFERENCES `produtors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `centro_administrativos_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `centro_custos`
--
ALTER TABLE `centro_custos`
  ADD CONSTRAINT `centro_custos_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `colhedors`
--
ALTER TABLE `colhedors`
  ADD CONSTRAINT `colhedors_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `colhedors_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `culturas`
--
ALTER TABLE `culturas`
  ADD CONSTRAINT `culturas_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `fazendas`
--
ALTER TABLE `fazendas`
  ADD CONSTRAINT `fazendas_produtor_id_foreign` FOREIGN KEY (`produtor_id`) REFERENCES `produtors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fazendas_proprietario_id_foreign` FOREIGN KEY (`proprietario_id`) REFERENCES `proprietarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fazendas_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `fornecedors`
--
ALTER TABLE `fornecedors`
  ADD CONSTRAINT `fornecedors_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `frotas`
--
ALTER TABLE `frotas`
  ADD CONSTRAINT `frotas_grupo_frota_id_foreign` FOREIGN KEY (`grupo_frota_id`) REFERENCES `grupo_frotas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `frotas_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `grupo_frotas`
--
ALTER TABLE `grupo_frotas`
  ADD CONSTRAINT `grupo_frotas_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `grupo_produtos`
--
ALTER TABLE `grupo_produtos`
  ADD CONSTRAINT `grupo_produtos_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `lancamento_conta_apagars`
--
ALTER TABLE `lancamento_conta_apagars`
  ADD CONSTRAINT `lancamento_conta_apagars_centro_custo_id_foreign` FOREIGN KEY (`centro_custo_id`) REFERENCES `centro_custos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lancamento_conta_apagars_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lancamento_conta_apagars_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `locacao_talhaos`
--
ALTER TABLE `locacao_talhaos`
  ADD CONSTRAINT `locacao_talhaos_cultura_id_foreign` FOREIGN KEY (`cultura_id`) REFERENCES `culturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `locacao_talhaos_safra_id_foreign` FOREIGN KEY (`safra_id`) REFERENCES `safras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `locacao_talhaos_talhao_id_foreign` FOREIGN KEY (`talhao_id`) REFERENCES `talhaos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `locacao_talhaos_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `locacao_talhaos_variedade_cultura_id_foreign` FOREIGN KEY (`variedade_cultura_id`) REFERENCES `variedade_culturas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `matriz_fretes`
--
ALTER TABLE `matriz_fretes`
  ADD CONSTRAINT `matriz_fretes_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `motoristas`
--
ALTER TABLE `motoristas`
  ADD CONSTRAINT `motoristas_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `motoristas_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `operador_agriculas`
--
ALTER TABLE `operador_agriculas`
  ADD CONSTRAINT `operador_agriculas_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `operador_agricula_servico_agricola`
--
ALTER TABLE `operador_agricula_servico_agricola`
  ADD CONSTRAINT `operador_agricula_servico_agricola_operador_agricula_id_foreign` FOREIGN KEY (`operador_agricula_id`) REFERENCES `operador_agriculas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `operador_agricula_servico_agricola_servico_agricola_id_foreign` FOREIGN KEY (`servico_agricola_id`) REFERENCES `servico_agricolas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `produtors`
--
ALTER TABLE `produtors`
  ADD CONSTRAINT `produtors_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_grupo_produto_id_foreign` FOREIGN KEY (`grupo_produto_id`) REFERENCES `grupo_produtos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `produtos_sub_grupo_produto_id_foreign` FOREIGN KEY (`sub_grupo_produto_id`) REFERENCES `sub_grupo_produtos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `produtos_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `produto_servico_agricola`
--
ALTER TABLE `produto_servico_agricola`
  ADD CONSTRAINT `produto_servico_agricola_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `produto_servico_agricola_servico_agricola_id_foreign` FOREIGN KEY (`servico_agricola_id`) REFERENCES `servico_agricolas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `proprietarios`
--
ALTER TABLE `proprietarios`
  ADD CONSTRAINT `proprietarios_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `safras`
--
ALTER TABLE `safras`
  ADD CONSTRAINT `safras_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `servico_agricolas`
--
ALTER TABLE `servico_agricolas`
  ADD CONSTRAINT `servico_agricolas_cultura_id_foreign` FOREIGN KEY (`cultura_id`) REFERENCES `culturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `servico_agricolas_safra_id_foreign` FOREIGN KEY (`safra_id`) REFERENCES `safras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `servico_agricolas_talhao_id_foreign` FOREIGN KEY (`talhao_id`) REFERENCES `talhaos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `servico_agricolas_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `servico_agricolas_tipo_operacao_agricula_id_foreign` FOREIGN KEY (`tipo_operacao_agricula_id`) REFERENCES `tipo_operacao_agriculas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `sub_grupo_produtos`
--
ALTER TABLE `sub_grupo_produtos`
  ADD CONSTRAINT `sub_grupo_produtos_grupo_produto_id_foreign` FOREIGN KEY (`grupo_produto_id`) REFERENCES `grupo_produtos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_grupo_produtos_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `talhaos`
--
ALTER TABLE `talhaos`
  ADD CONSTRAINT `talhaos_fazenda_id_foreign` FOREIGN KEY (`fazenda_id`) REFERENCES `fazendas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `talhaos_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tipo_operacao_agriculas`
--
ALTER TABLE `tipo_operacao_agriculas`
  ADD CONSTRAINT `tipo_operacao_agriculas_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `variedade_culturas`
--
ALTER TABLE `variedade_culturas`
  ADD CONSTRAINT `variedade_culturas_cultura_id_foreign` FOREIGN KEY (`cultura_id`) REFERENCES `culturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variedade_culturas_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
