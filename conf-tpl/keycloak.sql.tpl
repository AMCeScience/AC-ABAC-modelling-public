--
-- Copyright (C) 2017-2021 Institute of Communication and Computer Systems (imu.iccs.gr)
--
-- This Source Code Form is subject to the terms of the Mozilla Public License, v2.0.
-- If a copy of the MPL was not distributed with this file, You can obtain one at
-- https://www.mozilla.org/en-US/MPL/2.0/
--

-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Jan 25, 2021 at 03:20 PM
-- Server version: 5.5.62
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keycloak`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADMIN_EVENT_ENTITY`
--

CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint(20) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` varchar(2550) DEFAULT NULL,
  `REPRESENTATION` text,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ASSOCIATED_POLICY`
--

CREATE TABLE `ASSOCIATED_POLICY` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AUTHENTICATION_EXECUTION`
--

CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `AUTHENTICATOR_FLOW` bit(1) NOT NULL DEFAULT b'0',
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AUTHENTICATION_EXECUTION`
--

INSERT INTO `AUTHENTICATION_EXECUTION` (`ID`, `ALIAS`, `AUTHENTICATOR`, `REALM_ID`, `FLOW_ID`, `REQUIREMENT`, `PRIORITY`, `AUTHENTICATOR_FLOW`, `AUTH_FLOW_ID`, `AUTH_CONFIG`) VALUES
('03e638b6-17d3-4953-a9a6-1985f785b7ab', NULL, 'http-basic-authenticator', 'master', '0cb8f72a-38de-442e-8041-049ce226ab74', 0, 10, b'0', NULL, NULL),
('07372795-ae79-4f30-8227-632a485cd435', NULL, 'direct-grant-validate-otp', 'user-authentication', '2666281e-489a-4c92-a6eb-d4bc8907520a', 0, 20, b'0', NULL, NULL),
('08111855-88d3-4196-979b-1ed6ef227fa7', NULL, 'idp-username-password-form', 'master', '90414f1c-8735-4427-9128-314d05334b25', 0, 10, b'0', NULL, NULL),
('0e98e1f4-7a93-45c2-aff3-c50b029b4dd0', NULL, 'reset-credential-email', 'master', '46f1610c-d5b8-4d86-aae7-6d3c1e9a6872', 0, 20, b'0', NULL, NULL),
('1352cd45-628e-4d48-8c59-fccef5b815c0', NULL, 'client-secret', 'user-authentication', '9171e4da-e71e-4bba-9083-0ebef188e6be', 2, 10, b'0', NULL, NULL),
('14df332e-4fc5-4bbb-a81d-aaf1be24bfe7', NULL, 'idp-email-verification', 'master', 'd582001b-3a7a-489a-bcd9-a690143971d1', 2, 10, b'0', NULL, NULL),
('151ebacf-9c6e-4284-8075-68acb4b4a26d', NULL, 'auth-spnego', 'master', '9abb7917-7ac9-44c8-8c2c-7644a339c960', 3, 30, b'0', NULL, NULL),
('1791835b-723d-427f-bee2-79d8e8893173', NULL, 'conditional-user-configured', 'master', 'e55c79b6-93de-4a9c-8750-f220d37c2386', 0, 10, b'0', NULL, NULL),
('19e6600d-75d8-41a8-9b53-099ecdd0a0bb', NULL, 'conditional-user-configured', 'master', 'a1e37940-d47f-4bf8-b1f9-b80274b5dca0', 0, 10, b'0', NULL, NULL),
('20d5399c-8109-47de-a8eb-248dc24ec462', NULL, 'registration-profile-action', 'user-authentication', 'cc6daa30-17fb-42fe-9753-8f4b5d0b189a', 0, 40, b'0', NULL, NULL),
('26017182-c793-497c-9bf2-62b2affdf083', NULL, 'auth-username-password-form', 'master', '92ad096b-d02f-4f1f-aeb5-51ee8ddedac5', 0, 10, b'0', NULL, NULL),
('28841819-90de-4af5-b70f-9701ed4ca19b', NULL, 'idp-review-profile', 'user-authentication', '966b5f3f-b645-4029-a11d-99bdd886644f', 0, 10, b'0', NULL, 'ae33940f-d15d-46c9-be87-1256361255e7'),
('2d213fa2-7e22-4c68-ba3b-a9ea40f4695d', NULL, 'auth-otp-form', 'master', 'a1e37940-d47f-4bf8-b1f9-b80274b5dca0', 0, 20, b'0', NULL, NULL),
('36e7a371-a4f5-4395-9d6b-4476186d6520', NULL, 'auth-otp-form', 'master', '34eb9c44-3c76-4724-ad3a-af27dde1582c', 0, 20, b'0', NULL, NULL),
('3a3e78ed-8223-4f54-8a58-27c39a1d4ccb', NULL, 'client-x509', 'user-authentication', '9171e4da-e71e-4bba-9083-0ebef188e6be', 2, 40, b'0', NULL, NULL),
('3ca9e66e-20f7-416e-a0a4-7cd749c613bf', NULL, 'reset-credential-email', 'user-authentication', '6f413474-251a-46ab-9dc1-9fbf204aecd9', 0, 20, b'0', NULL, NULL),
('3e04fa39-06b9-4d2d-83c0-5676d6612bdb', NULL, 'client-x509', 'master', 'db04ed4c-08b8-4f91-ae4e-31a8ffdb82da', 2, 40, b'0', NULL, NULL),
('3e164716-4429-46f3-8be6-8d45d07b291e', NULL, 'reset-credentials-choose-user', 'user-authentication', '6f413474-251a-46ab-9dc1-9fbf204aecd9', 0, 10, b'0', NULL, NULL),
('3fdfe40a-d517-4831-ac2d-1675388deff5', NULL, NULL, 'master', 'd582001b-3a7a-489a-bcd9-a690143971d1', 2, 20, b'1', '90414f1c-8735-4427-9128-314d05334b25', NULL),
('41991c21-671d-4d1c-b666-216dc15bd9cf', NULL, 'conditional-user-configured', 'user-authentication', '3e90b8ca-a43c-438e-8ae3-b91eb89bd076', 0, 10, b'0', NULL, NULL),
('43111d41-fac5-460d-a9e1-1d52201b6779', NULL, 'registration-recaptcha-action', 'master', 'e429a600-c563-4c3a-b08d-78fbc01ee0b2', 3, 60, b'0', NULL, NULL),
('47f23c0c-b0fa-46ee-9aea-e5e00bf4f127', NULL, 'idp-email-verification', 'user-authentication', '1bb171ca-46b5-4294-b185-eb688d734913', 2, 10, b'0', NULL, NULL),
('488a8803-9bf7-421a-8b86-c545a0bab46b', NULL, NULL, 'user-authentication', '6f413474-251a-46ab-9dc1-9fbf204aecd9', 1, 40, b'1', '1a09ada3-5e24-4538-a573-759d9a379eda', NULL),
('4c585bae-1cc5-4595-8d0d-2506b00763db', NULL, NULL, 'master', '9b9157e1-337f-465d-a756-faec5400fcf1', 1, 30, b'1', '48ea0527-4a34-4d12-9c54-5395f8929f17', NULL),
('4e396598-677f-4656-89d5-6a2cd6d3f007', NULL, 'auth-username-password-form', 'user-authentication', '06da3ec8-88be-41cc-9504-89aab74287dc', 0, 10, b'0', NULL, NULL),
('50cd87fb-eaeb-4392-a351-dbea406d13b2', NULL, NULL, 'master', '3f7e2830-1ded-4b1e-9997-e6f30d6058e0', 2, 30, b'1', '92ad096b-d02f-4f1f-aeb5-51ee8ddedac5', NULL),
('51793c96-f87e-4394-a776-fcd317c19ccd', NULL, 'basic-auth-otp', 'master', '9abb7917-7ac9-44c8-8c2c-7644a339c960', 3, 20, b'0', NULL, NULL),
('537b98c0-62cb-4ad9-b1af-bfb7d6738efb', NULL, 'registration-profile-action', 'master', 'e429a600-c563-4c3a-b08d-78fbc01ee0b2', 0, 40, b'0', NULL, NULL),
('54ade3bc-357a-4608-97ca-f913a73040c5', NULL, 'reset-credentials-choose-user', 'master', '46f1610c-d5b8-4d86-aae7-6d3c1e9a6872', 0, 10, b'0', NULL, NULL),
('55b6a090-9fd4-4f1a-9e75-26b1339a10d3', NULL, 'conditional-user-configured', 'user-authentication', '1a09ada3-5e24-4538-a573-759d9a379eda', 0, 10, b'0', NULL, NULL),
('5bc51e92-5fec-4024-8f85-b3cbf6a45fd9', NULL, 'auth-cookie', 'user-authentication', 'c533b231-d414-4f22-b4f6-a874209ef9a3', 2, 10, b'0', NULL, NULL),
('5f4d2682-91d3-42e8-868e-13dfd73bc441', NULL, NULL, 'user-authentication', '966b5f3f-b645-4029-a11d-99bdd886644f', 0, 20, b'1', '670b9929-4b7c-469a-93de-e5cb96b1e965', NULL),
('6693705d-ef12-43f5-82fa-c105780c3ae3', NULL, 'reset-password', 'user-authentication', '6f413474-251a-46ab-9dc1-9fbf204aecd9', 0, 30, b'0', NULL, NULL),
('67b83425-973f-4c65-9e0a-21442383e92f', NULL, 'registration-user-creation', 'user-authentication', 'cc6daa30-17fb-42fe-9753-8f4b5d0b189a', 0, 20, b'0', NULL, NULL),
('68451347-a404-4036-b729-d6cc3b984eff', NULL, NULL, 'user-authentication', '1bb171ca-46b5-4294-b185-eb688d734913', 2, 20, b'1', '13b937d2-a8a2-47c4-b0ee-3cd23b5b912a', NULL),
('6a804f5e-6faf-4dcd-9e47-a8bcb5c43578', NULL, NULL, 'master', '90414f1c-8735-4427-9128-314d05334b25', 1, 20, b'1', 'a1e37940-d47f-4bf8-b1f9-b80274b5dca0', NULL),
('6ab8c283-b60c-4fb1-b4fc-7c8272267685', NULL, 'registration-recaptcha-action', 'user-authentication', 'cc6daa30-17fb-42fe-9753-8f4b5d0b189a', 3, 60, b'0', NULL, NULL),
('6ae52dd4-56ba-43c8-bf72-5d011a807da4', NULL, NULL, 'master', '92ad096b-d02f-4f1f-aeb5-51ee8ddedac5', 1, 20, b'1', '34eb9c44-3c76-4724-ad3a-af27dde1582c', NULL),
('6da61f6d-7f6d-40bd-98d4-63fc60ae1ab7', NULL, NULL, 'master', '79a3789d-16e3-42f8-b541-c77ad7c1074b', 2, 20, b'1', '158b963c-ef2d-4077-93b2-9f724c231a8c', NULL),
('6daf751c-f999-4f2e-94e1-32dd7b167d88', NULL, 'client-secret-jwt', 'user-authentication', '9171e4da-e71e-4bba-9083-0ebef188e6be', 2, 30, b'0', NULL, NULL),
('7179dd47-05ab-46a3-9fe3-38172285b564', NULL, 'reset-otp', 'user-authentication', '1a09ada3-5e24-4538-a573-759d9a379eda', 0, 20, b'0', NULL, NULL),
('730cd306-4c1c-492b-9d2c-e1856f549bd6', NULL, 'http-basic-authenticator', 'user-authentication', 'a9f217ee-50da-477f-8f8b-d454441c71a2', 0, 10, b'0', NULL, NULL),
('73e703ad-281a-43aa-8454-e61f0b905d28', NULL, 'idp-confirm-link', 'master', '158b963c-ef2d-4077-93b2-9f724c231a8c', 0, 10, b'0', NULL, NULL),
('7f8b0861-95c9-4ca7-9690-4c9624ae189b', NULL, 'conditional-user-configured', 'user-authentication', 'a93681da-a47b-4fd0-8888-83970bcdcabf', 0, 10, b'0', NULL, NULL),
('800cdd05-2a74-4c62-b448-83a675b10e0a', NULL, 'registration-user-creation', 'master', 'e429a600-c563-4c3a-b08d-78fbc01ee0b2', 0, 20, b'0', NULL, NULL),
('844415fb-6c65-41cb-b53a-415c27be04d5', NULL, 'idp-create-user-if-unique', 'master', '79a3789d-16e3-42f8-b541-c77ad7c1074b', 2, 10, b'0', NULL, '60a048de-fe67-4837-abee-5e45dfbec6cd'),
('8b4bd207-4530-40d1-ba1f-69a510b775d3', NULL, 'registration-page-form', 'master', 'd6d29913-0b3c-4669-9231-97e9a5322aa8', 0, 10, b'1', 'e429a600-c563-4c3a-b08d-78fbc01ee0b2', NULL),
('9033e87a-8683-4196-a347-753748123241', NULL, 'idp-username-password-form', 'user-authentication', '13b937d2-a8a2-47c4-b0ee-3cd23b5b912a', 0, 10, b'0', NULL, NULL),
('9299d25e-2094-49e6-b738-d3603a8e12d9', NULL, 'auth-spnego', 'master', '3f7e2830-1ded-4b1e-9997-e6f30d6058e0', 3, 20, b'0', NULL, NULL),
('93088cf8-dda1-4ce0-a46a-b614d413d36f', NULL, 'basic-auth', 'user-authentication', 'a922321a-4683-48b7-a824-8536e95a29cc', 0, 10, b'0', NULL, NULL),
('937fb0eb-7351-4133-98ea-1f77047a415d', NULL, NULL, 'user-authentication', 'a63feb4e-ea57-4cf9-bee1-371b6f0dced6', 0, 20, b'1', '1bb171ca-46b5-4294-b185-eb688d734913', NULL),
('96e632d0-a0ed-4086-bde7-f850b2574051', NULL, 'basic-auth-otp', 'user-authentication', 'a922321a-4683-48b7-a824-8536e95a29cc', 3, 20, b'0', NULL, NULL),
('9d622906-9893-459c-ac2b-c45e5bc74ec1', NULL, NULL, 'user-authentication', 'c533b231-d414-4f22-b4f6-a874209ef9a3', 2, 30, b'1', '06da3ec8-88be-41cc-9504-89aab74287dc', NULL),
('a7639361-c822-4278-a83f-ea323198b15c', NULL, NULL, 'master', 'ae6cde33-e1c6-4c1d-a9b1-76514ef12cd5', 0, 20, b'1', '9abb7917-7ac9-44c8-8c2c-7644a339c960', NULL),
('a973d505-e593-44a0-bd8c-8d03af3bb59d', NULL, 'registration-page-form', 'user-authentication', '63c9b959-805b-436f-b8fe-622ef1c40dfe', 0, 10, b'1', 'cc6daa30-17fb-42fe-9753-8f4b5d0b189a', NULL),
('aba89607-2ed4-4b04-b861-0d7236b12508', NULL, 'reset-password', 'master', '46f1610c-d5b8-4d86-aae7-6d3c1e9a6872', 0, 30, b'0', NULL, NULL),
('ac8542d4-ba3e-42c3-a9bf-595fb9464b35', NULL, 'auth-otp-form', 'user-authentication', '3e90b8ca-a43c-438e-8ae3-b91eb89bd076', 0, 20, b'0', NULL, NULL),
('b0f1dd13-6a6e-477a-a838-79aaf6994ebd', NULL, 'client-secret-jwt', 'master', 'db04ed4c-08b8-4f91-ae4e-31a8ffdb82da', 2, 30, b'0', NULL, NULL),
('b37bac83-4488-41e6-89e1-599728dcdbb3', NULL, NULL, 'user-authentication', '670b9929-4b7c-469a-93de-e5cb96b1e965', 2, 20, b'1', 'a63feb4e-ea57-4cf9-bee1-371b6f0dced6', NULL),
('b3922b50-d0b8-4b19-8ad7-6701a296285e', NULL, 'direct-grant-validate-password', 'master', '9b9157e1-337f-465d-a756-faec5400fcf1', 0, 20, b'0', NULL, NULL),
('b4caa1a8-663c-4023-8015-d3ede699f021', NULL, 'direct-grant-validate-username', 'user-authentication', '89c11eb3-4c76-4480-bcb7-27650b07809e', 0, 10, b'0', NULL, NULL),
('b63403d3-1e60-4839-9b52-d6273cae0203', NULL, NULL, 'user-authentication', '89c11eb3-4c76-4480-bcb7-27650b07809e', 1, 30, b'1', '2666281e-489a-4c92-a6eb-d4bc8907520a', NULL),
('b89cd120-f1bf-48a1-b9e2-6bbc33af547e', NULL, 'identity-provider-redirector', 'master', '3f7e2830-1ded-4b1e-9997-e6f30d6058e0', 2, 25, b'0', NULL, NULL),
('b98f8e57-3a91-49fa-8b40-2cc4b457b7fc', NULL, 'no-cookie-redirect', 'master', 'ae6cde33-e1c6-4c1d-a9b1-76514ef12cd5', 0, 10, b'0', NULL, NULL),
('bf2c5728-82de-482a-84fe-211aaf86d0a6', NULL, NULL, 'master', '158b963c-ef2d-4077-93b2-9f724c231a8c', 0, 20, b'1', 'd582001b-3a7a-489a-bcd9-a690143971d1', NULL),
('bf75dd31-bd90-43a5-a24b-4cac2d3ad4a5', NULL, 'idp-review-profile', 'master', 'd9870f63-61c1-46b1-b9de-36a2ae7bda0e', 0, 10, b'0', NULL, 'ece1fd1d-f249-4c62-9a19-704cd505ae39'),
('c52360b5-23f7-4240-a739-f9b1b00d0c49', NULL, 'no-cookie-redirect', 'user-authentication', 'dd90574f-dd2d-4251-aa09-30004c3ead4f', 0, 10, b'0', NULL, NULL),
('c995a1d6-88a7-4cc0-9707-a0261ada8df0', NULL, 'registration-password-action', 'user-authentication', 'cc6daa30-17fb-42fe-9753-8f4b5d0b189a', 0, 50, b'0', NULL, NULL),
('cd36f90d-f88b-4f8c-8b64-0b9f185112e6', NULL, 'conditional-user-configured', 'master', '48ea0527-4a34-4d12-9c54-5395f8929f17', 0, 10, b'0', NULL, NULL),
('cf19b657-7364-4043-9d6b-6bbc1d1c0f87', NULL, 'direct-grant-validate-password', 'user-authentication', '89c11eb3-4c76-4480-bcb7-27650b07809e', 0, 20, b'0', NULL, NULL),
('cf8316b4-81e5-4b4b-aad2-be9a2b7110f0', NULL, 'basic-auth', 'master', '9abb7917-7ac9-44c8-8c2c-7644a339c960', 0, 10, b'0', NULL, NULL),
('d3052266-7ea4-4bb7-974d-71f0920b85d6', NULL, 'direct-grant-validate-otp', 'master', '48ea0527-4a34-4d12-9c54-5395f8929f17', 0, 20, b'0', NULL, NULL),
('d43dcad9-82dc-4e7c-85ef-220db5c1e55c', NULL, 'auth-otp-form', 'user-authentication', 'a93681da-a47b-4fd0-8888-83970bcdcabf', 0, 20, b'0', NULL, NULL),
('d85ac49a-f4f7-4e37-9e53-0d79ff679bf3', NULL, 'auth-spnego', 'user-authentication', 'c533b231-d414-4f22-b4f6-a874209ef9a3', 3, 20, b'0', NULL, NULL),
('d9394b7e-685e-4d60-8e1e-3c0b36e85fed', NULL, 'identity-provider-redirector', 'user-authentication', 'c533b231-d414-4f22-b4f6-a874209ef9a3', 2, 25, b'0', NULL, NULL),
('d99568ab-3415-4f60-a1da-56ac9245a3c9', NULL, 'docker-http-basic-authenticator', 'user-authentication', '8ae71391-05a1-46d2-9fd6-7a9d9d42a14f', 0, 10, b'0', NULL, NULL),
('da7e3099-5c29-4d9a-9d88-e9b4f140bdfd', NULL, NULL, 'user-authentication', '13b937d2-a8a2-47c4-b0ee-3cd23b5b912a', 1, 20, b'1', 'a93681da-a47b-4fd0-8888-83970bcdcabf', NULL),
('db22cecd-732c-43ca-b4a6-07c4843c5816', NULL, 'direct-grant-validate-username', 'master', '9b9157e1-337f-465d-a756-faec5400fcf1', 0, 10, b'0', NULL, NULL),
('dc556b38-0fd6-49d8-9c6f-96d5c8e7e41f', NULL, NULL, 'user-authentication', '06da3ec8-88be-41cc-9504-89aab74287dc', 1, 20, b'1', '3e90b8ca-a43c-438e-8ae3-b91eb89bd076', NULL),
('dde097f0-76d5-40bd-8fee-294768e3a3fd', NULL, 'conditional-user-configured', 'master', '34eb9c44-3c76-4724-ad3a-af27dde1582c', 0, 10, b'0', NULL, NULL),
('e51d058f-320c-40d9-9ba4-fa9abc894664', NULL, NULL, 'master', '46f1610c-d5b8-4d86-aae7-6d3c1e9a6872', 1, 40, b'1', 'e55c79b6-93de-4a9c-8750-f220d37c2386', NULL),
('e5626df0-c7da-4986-ac77-34458b32eebc', NULL, 'idp-confirm-link', 'user-authentication', 'a63feb4e-ea57-4cf9-bee1-371b6f0dced6', 0, 10, b'0', NULL, NULL),
('e5821263-cc83-4790-8edf-8683f9bc208c', NULL, 'client-jwt', 'user-authentication', '9171e4da-e71e-4bba-9083-0ebef188e6be', 2, 20, b'0', NULL, NULL),
('e699e0c2-d82b-4e2f-a52c-fff869686a40', NULL, 'registration-password-action', 'master', 'e429a600-c563-4c3a-b08d-78fbc01ee0b2', 0, 50, b'0', NULL, NULL),
('e9b0bb62-d603-4e6e-bc9c-8bb8e82535bd', NULL, 'client-secret', 'master', 'db04ed4c-08b8-4f91-ae4e-31a8ffdb82da', 2, 10, b'0', NULL, NULL),
('ec6d2541-6365-41c6-a01e-feaa2f236161', NULL, NULL, 'master', 'd9870f63-61c1-46b1-b9de-36a2ae7bda0e', 0, 20, b'1', '79a3789d-16e3-42f8-b541-c77ad7c1074b', NULL),
('f0bbff9e-85fb-48fe-bca2-2810a3ce6912', NULL, 'conditional-user-configured', 'user-authentication', '2666281e-489a-4c92-a6eb-d4bc8907520a', 0, 10, b'0', NULL, NULL),
('f1fd6090-3da0-4105-a26a-ce9686b23adb', NULL, 'auth-spnego', 'user-authentication', 'a922321a-4683-48b7-a824-8536e95a29cc', 3, 30, b'0', NULL, NULL),
('f2db2776-fc3e-4740-91ce-fe0a59182bc4', NULL, 'client-jwt', 'master', 'db04ed4c-08b8-4f91-ae4e-31a8ffdb82da', 2, 20, b'0', NULL, NULL),
('f41d5a10-4061-4693-b978-51702f90884c', NULL, 'docker-http-basic-authenticator', 'master', '7c197479-52ea-48dc-b630-d7cf45b6f945', 0, 10, b'0', NULL, NULL),
('f4cf1aaa-a038-4dce-84b3-8bd79d873697', NULL, 'idp-create-user-if-unique', 'user-authentication', '670b9929-4b7c-469a-93de-e5cb96b1e965', 2, 10, b'0', NULL, '374ad2f4-e3e0-45f1-bba9-dfc73eb93df6'),
('f9748018-bcc5-4af0-8bef-3ddc8a315f1e', NULL, 'reset-otp', 'master', 'e55c79b6-93de-4a9c-8750-f220d37c2386', 0, 20, b'0', NULL, NULL),
('fbd80460-5630-4ee2-a57c-e8268a272070', NULL, 'auth-cookie', 'master', '3f7e2830-1ded-4b1e-9997-e6f30d6058e0', 2, 10, b'0', NULL, NULL),
('ffd5591b-c243-46a2-82ec-835af23b8ed7', NULL, NULL, 'user-authentication', 'dd90574f-dd2d-4251-aa09-30004c3ead4f', 0, 20, b'1', 'a922321a-4683-48b7-a824-8536e95a29cc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AUTHENTICATION_FLOW`
--

CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` bit(1) NOT NULL DEFAULT b'0',
  `BUILT_IN` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

INSERT INTO `AUTHENTICATION_FLOW` (`ID`, `ALIAS`, `DESCRIPTION`, `REALM_ID`, `PROVIDER_ID`, `TOP_LEVEL`, `BUILT_IN`) VALUES
('06da3ec8-88be-41cc-9504-89aab74287dc', 'forms', 'Username, password, otp and other auth forms.', 'user-authentication', 'basic-flow', b'0', b'1'),
('0cb8f72a-38de-442e-8041-049ce226ab74', 'saml ecp', 'SAML ECP Profile Authentication Flow', 'master', 'basic-flow', b'1', b'1'),
('13b937d2-a8a2-47c4-b0ee-3cd23b5b912a', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', 'user-authentication', 'basic-flow', b'0', b'1'),
('158b963c-ef2d-4077-93b2-9f724c231a8c', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', 'master', 'basic-flow', b'0', b'1'),
('1a09ada3-5e24-4538-a573-759d9a379eda', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', 'user-authentication', 'basic-flow', b'0', b'1'),
('1bb171ca-46b5-4294-b185-eb688d734913', 'Account verification options', 'Method with which to verity the existing account', 'user-authentication', 'basic-flow', b'0', b'1'),
('2666281e-489a-4c92-a6eb-d4bc8907520a', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'user-authentication', 'basic-flow', b'0', b'1'),
('34eb9c44-3c76-4724-ad3a-af27dde1582c', 'Browser - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', b'0', b'1'),
('3e90b8ca-a43c-438e-8ae3-b91eb89bd076', 'Browser - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'user-authentication', 'basic-flow', b'0', b'1'),
('3f7e2830-1ded-4b1e-9997-e6f30d6058e0', 'browser', 'browser based authentication', 'master', 'basic-flow', b'1', b'1'),
('46f1610c-d5b8-4d86-aae7-6d3c1e9a6872', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', 'master', 'basic-flow', b'1', b'1'),
('48ea0527-4a34-4d12-9c54-5395f8929f17', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', b'0', b'1'),
('63c9b959-805b-436f-b8fe-622ef1c40dfe', 'registration', 'registration flow', 'user-authentication', 'basic-flow', b'1', b'1'),
('670b9929-4b7c-469a-93de-e5cb96b1e965', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', 'user-authentication', 'basic-flow', b'0', b'1'),
('6f413474-251a-46ab-9dc1-9fbf204aecd9', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', 'user-authentication', 'basic-flow', b'1', b'1'),
('79a3789d-16e3-42f8-b541-c77ad7c1074b', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', 'master', 'basic-flow', b'0', b'1'),
('7c197479-52ea-48dc-b630-d7cf45b6f945', 'docker auth', 'Used by Docker clients to authenticate against the IDP', 'master', 'basic-flow', b'1', b'1'),
('89c11eb3-4c76-4480-bcb7-27650b07809e', 'direct grant', 'OpenID Connect Resource Owner Grant', 'user-authentication', 'basic-flow', b'1', b'1'),
('8ae71391-05a1-46d2-9fd6-7a9d9d42a14f', 'docker auth', 'Used by Docker clients to authenticate against the IDP', 'user-authentication', 'basic-flow', b'1', b'1'),
('90414f1c-8735-4427-9128-314d05334b25', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', 'master', 'basic-flow', b'0', b'1'),
('9171e4da-e71e-4bba-9083-0ebef188e6be', 'clients', 'Base authentication for clients', 'user-authentication', 'client-flow', b'1', b'1'),
('92ad096b-d02f-4f1f-aeb5-51ee8ddedac5', 'forms', 'Username, password, otp and other auth forms.', 'master', 'basic-flow', b'0', b'1'),
('966b5f3f-b645-4029-a11d-99bdd886644f', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', 'user-authentication', 'basic-flow', b'1', b'1'),
('9abb7917-7ac9-44c8-8c2c-7644a339c960', 'Authentication Options', 'Authentication options.', 'master', 'basic-flow', b'0', b'1'),
('9b9157e1-337f-465d-a756-faec5400fcf1', 'direct grant', 'OpenID Connect Resource Owner Grant', 'master', 'basic-flow', b'1', b'1'),
('a1e37940-d47f-4bf8-b1f9-b80274b5dca0', 'First broker login - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', b'0', b'1'),
('a63feb4e-ea57-4cf9-bee1-371b6f0dced6', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', 'user-authentication', 'basic-flow', b'0', b'1'),
('a922321a-4683-48b7-a824-8536e95a29cc', 'Authentication Options', 'Authentication options.', 'user-authentication', 'basic-flow', b'0', b'1'),
('a93681da-a47b-4fd0-8888-83970bcdcabf', 'First broker login - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'user-authentication', 'basic-flow', b'0', b'1'),
('a9f217ee-50da-477f-8f8b-d454441c71a2', 'saml ecp', 'SAML ECP Profile Authentication Flow', 'user-authentication', 'basic-flow', b'1', b'1'),
('ae6cde33-e1c6-4c1d-a9b1-76514ef12cd5', 'http challenge', 'An authentication flow based on challenge-response HTTP Authentication Schemes', 'master', 'basic-flow', b'1', b'1'),
('c533b231-d414-4f22-b4f6-a874209ef9a3', 'browser', 'browser based authentication', 'user-authentication', 'basic-flow', b'1', b'1'),
('cc6daa30-17fb-42fe-9753-8f4b5d0b189a', 'registration form', 'registration form', 'user-authentication', 'form-flow', b'0', b'1'),
('d582001b-3a7a-489a-bcd9-a690143971d1', 'Account verification options', 'Method with which to verity the existing account', 'master', 'basic-flow', b'0', b'1'),
('d6d29913-0b3c-4669-9231-97e9a5322aa8', 'registration', 'registration flow', 'master', 'basic-flow', b'1', b'1'),
('d9870f63-61c1-46b1-b9de-36a2ae7bda0e', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', 'master', 'basic-flow', b'1', b'1'),
('db04ed4c-08b8-4f91-ae4e-31a8ffdb82da', 'clients', 'Base authentication for clients', 'master', 'client-flow', b'1', b'1'),
('dd90574f-dd2d-4251-aa09-30004c3ead4f', 'http challenge', 'An authentication flow based on challenge-response HTTP Authentication Schemes', 'user-authentication', 'basic-flow', b'1', b'1'),
('e429a600-c563-4c3a-b08d-78fbc01ee0b2', 'registration form', 'registration form', 'master', 'form-flow', b'0', b'1'),
('e55c79b6-93de-4a9c-8750-f220d37c2386', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', 'master', 'basic-flow', b'0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `AUTHENTICATOR_CONFIG`
--

CREATE TABLE `AUTHENTICATOR_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

INSERT INTO `AUTHENTICATOR_CONFIG` (`ID`, `ALIAS`, `REALM_ID`) VALUES
('374ad2f4-e3e0-45f1-bba9-dfc73eb93df6', 'create unique user config', 'user-authentication'),
('60a048de-fe67-4837-abee-5e45dfbec6cd', 'create unique user config', 'master'),
('ae33940f-d15d-46c9-be87-1256361255e7', 'review profile config', 'user-authentication'),
('ece1fd1d-f249-4c62-9a19-704cd505ae39', 'review profile config', 'master');

-- --------------------------------------------------------

--
-- Table structure for table `AUTHENTICATOR_CONFIG_ENTRY`
--

CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` (`AUTHENTICATOR_ID`, `VALUE`, `NAME`) VALUES
('374ad2f4-e3e0-45f1-bba9-dfc73eb93df6', 'false', 'require.password.update.after.registration'),
('60a048de-fe67-4837-abee-5e45dfbec6cd', 'false', 'require.password.update.after.registration'),
('ae33940f-d15d-46c9-be87-1256361255e7', 'missing', 'update.profile.on.first.login'),
('ece1fd1d-f249-4c62-9a19-704cd505ae39', 'missing', 'update.profile.on.first.login');

-- --------------------------------------------------------

--
-- Table structure for table `BROKER_LINK`
--

CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
  `USER_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT`
--

CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FULL_SCOPE_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PUBLIC_CLIENT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` bit(1) NOT NULL DEFAULT b'0',
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int(11) DEFAULT '0',
  `FRONTCHANNEL_LOGOUT` bit(1) NOT NULL DEFAULT b'0',
  `CONSENT_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'1',
  `IMPLICIT_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DIRECT_ACCESS_GRANTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ALWAYS_DISPLAY_IN_CONSOLE` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CLIENT`
--

INSERT INTO `CLIENT` (`ID`, `ENABLED`, `FULL_SCOPE_ALLOWED`, `CLIENT_ID`, `NOT_BEFORE`, `PUBLIC_CLIENT`, `SECRET`, `BASE_URL`, `BEARER_ONLY`, `MANAGEMENT_URL`, `SURROGATE_AUTH_REQUIRED`, `REALM_ID`, `PROTOCOL`, `NODE_REREG_TIMEOUT`, `FRONTCHANNEL_LOGOUT`, `CONSENT_REQUIRED`, `NAME`, `SERVICE_ACCOUNTS_ENABLED`, `CLIENT_AUTHENTICATOR_TYPE`, `ROOT_URL`, `DESCRIPTION`, `REGISTRATION_TOKEN`, `STANDARD_FLOW_ENABLED`, `IMPLICIT_FLOW_ENABLED`, `DIRECT_ACCESS_GRANTS_ENABLED`, `ALWAYS_DISPLAY_IN_CONSOLE`) VALUES
('05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', b'1', '{{ .Env.KEYCLOAK_REALM }}-realm', 0, b'0', '195c6812-499c-4e24-b565-af972ba10d9f', NULL, b'1', NULL, b'0', 'master', NULL, 0, b'0', b'0', 'user-authentication Realm', b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'0', b'0'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', b'1', b'0', 'account', 0, b'0', '**********', '/realms/{{ .Env.KEYCLOAK_REALM }}/account/', b'0', NULL, b'0', 'user-authentication', 'openid-connect', 0, b'0', b'0', '${client_account}', b'0', 'client-secret', '${authBaseUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', b'1', 'master-realm', 0, b'0', '77858542-86f7-45f9-a325-b6bfd2f9414e', NULL, b'1', NULL, b'0', 'master', NULL, 0, b'0', b'0', 'master Realm', b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'0', b'0'),
('40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', b'1', b'0', 'broker', 0, b'0', '**********', NULL, b'0', NULL, b'0', 'user-authentication', 'openid-connect', 0, b'0', b'0', '${client_broker}', b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'0', b'0'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', b'1', b'0', 'account-console', 0, b'1', 'd5ff9ffd-ca28-4850-95be-12e0bb6b7181', '/realms/master/account/', b'0', NULL, b'0', 'master', 'openid-connect', 0, b'0', b'0', '${client_account-console}', b'0', 'client-secret', '${authBaseUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', b'1', b'0', 'security-admin-console', 0, b'1', 'ad57a276-168f-49b6-b11f-116c41653611', '/admin/master/console/', b'0', NULL, b'0', 'master', 'openid-connect', 0, b'0', b'0', '${client_security-admin-console}', b'0', 'client-secret', '${authAdminUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', b'1', b'0', 'account-console', 0, b'1', '**********', '/realms/user-authentication/account/', b'0', NULL, b'0', 'user-authentication', 'openid-connect', 0, b'0', b'0', '${client_account-console}', b'0', 'client-secret', '${authBaseUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('86cae607-1818-46da-94af-8cfb79cfa88a', b'1', b'0', 'security-admin-console', 0, b'1', '**********', '/admin/{{ .Env.KEYCLOAK_REALM }}/console/', b'0', NULL, b'0', 'user-authentication', 'openid-connect', 0, b'0', b'0', '${client_security-admin-console}', b'0', 'client-secret', '${authAdminUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('9697b092-4eed-47b2-ae7e-6140c92ba8e5', b'1', b'0', 'broker', 0, b'0', 'bf6773a5-2178-4b91-b498-052462215e12', NULL, b'0', NULL, b'0', 'master', 'openid-connect', 0, b'0', b'0', '${client_broker}', b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'0', b'0'),
('a5313dce-c7dc-48f2-9d57-412889bc7cf4', b'1', b'0', 'admin-cli', 0, b'1', '**********', NULL, b'0', NULL, b'0', 'user-authentication', 'openid-connect', 0, b'0', b'0', '${client_admin-cli}', b'0', 'client-secret', NULL, NULL, NULL, b'0', b'0', b'1', b'0'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', b'1', b'0', 'account', 0, b'0', '15e4869a-59e8-4462-9169-a6dad695c593', '/realms/master/account/', b'0', NULL, b'0', 'master', 'openid-connect', 0, b'0', b'0', '${client_account}', b'0', 'client-secret', '${authBaseUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('dd93430b-5fc4-4269-899d-672cb476154e', b'1', b'1', '{{ .Env.KEYCLOAK_RESOURCE }}', 0, b'1', '{{ .Env.KEYCLOAK_RESOURCE_SECRET }}', NULL, b'0', '{{ .Env.APP_BASE_URL }}', b'0', 'user-authentication', 'openid-connect', -1, b'0', b'0', NULL, b'0', 'client-secret', '{{ .Env.APP_BASE_URL }}', NULL, NULL, b'1', b'1', b'1', b'0'),
('f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', b'0', 'realm-management', 0, b'0', '**********', NULL, b'1', NULL, b'0', 'user-authentication', 'openid-connect', 0, b'0', b'0', '${client_realm-management}', b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'0', b'0'),
('f7e3f816-da93-47c0-87a2-e8c98a414ac2', b'1', b'0', 'admin-cli', 0, b'1', 'c430dd68-d694-422a-899f-4d1d5d79b906', NULL, b'0', NULL, b'0', 'master', 'openid-connect', 0, b'0', b'0', '${client_admin-cli}', b'0', 'client-secret', NULL, NULL, NULL, b'0', b'0', b'1', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_ATTRIBUTES`
--

CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

INSERT INTO `CLIENT_ATTRIBUTES` (`CLIENT_ID`, `VALUE`, `NAME`) VALUES
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', 'S256', 'pkce.code.challenge.method'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', 'S256', 'pkce.code.challenge.method'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', 'S256', 'pkce.code.challenge.method'),
('86cae607-1818-46da-94af-8cfb79cfa88a', 'S256', 'pkce.code.challenge.method'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'display.on.consent.screen'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'exclude.session.state.from.auth.response'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'saml.assertion.signature'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'saml.authnstatement'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'saml.client.signature'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'saml.encrypt'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'saml.force.post.binding'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'saml.multivalued.roles'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'saml.onetimeuse.condition'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'saml.server.signature'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'saml.server.signature.keyinfo.ext'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'saml_force_name_id_format'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'false', 'tls.client.certificate.bound.access.tokens');

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_AUTH_FLOW_BINDINGS`
--

CREATE TABLE `CLIENT_AUTH_FLOW_BINDINGS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_DEFAULT_ROLES`
--

CREATE TABLE `CLIENT_DEFAULT_ROLES` (
  `CLIENT_ID` varchar(36) NOT NULL DEFAULT '',
  `ROLE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CLIENT_DEFAULT_ROLES`
--

INSERT INTO `CLIENT_DEFAULT_ROLES` (`CLIENT_ID`, `ROLE_ID`) VALUES
('c3a6265c-7208-4762-b8cb-b2240edc46c9', '30e25665-437b-4004-bc41-22cb574cbe88'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', '695a6fc3-6969-4684-b8b1-715fc75c782d'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', '8d380b16-5d81-4201-9e8d-7cba22963840'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', 'fa61fc5e-1b07-433f-916c-1af7bd690ed1');

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_INITIAL_ACCESS`
--

CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `EXPIRATION` int(11) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `REMAINING_COUNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_NODE_REGISTRATIONS`
--

CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL DEFAULT '',
  `VALUE` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_SCOPE`
--

CREATE TABLE `CLIENT_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CLIENT_SCOPE`
--

INSERT INTO `CLIENT_SCOPE` (`ID`, `NAME`, `REALM_ID`, `DESCRIPTION`, `PROTOCOL`) VALUES
('08b2c42f-49d1-4b5e-b38a-7252f10d5785', 'roles', 'master', 'OpenID Connect scope for add user roles to the access token', 'openid-connect'),
('10dad6ec-d294-44d6-9487-437d81f99f8d', 'offline_access', 'user-authentication', 'OpenID Connect built-in scope: offline_access', 'openid-connect'),
('1a5d23e3-6e47-4d69-8997-a79bb929e6b5', 'address', 'master', 'OpenID Connect built-in scope: address', 'openid-connect'),
('241d9284-e21d-4458-8c9c-84a1bf7df572', 'phone', 'master', 'OpenID Connect built-in scope: phone', 'openid-connect'),
('32e3ad76-74be-4b29-b649-6498d7e4574d', 'phone', 'user-authentication', 'OpenID Connect built-in scope: phone', 'openid-connect'),
('37ea066e-ef29-4add-9165-94b7b0bc77e2', 'email', 'user-authentication', 'OpenID Connect built-in scope: email', 'openid-connect'),
('3816082b-deae-481b-aaab-1d47f1dbc5d0', 'role_list', 'master', 'SAML role list', 'saml'),
('3822b8e6-3c5e-4f7b-af23-91d462ac7ded', 'roles', 'user-authentication', 'OpenID Connect scope for add user roles to the access token', 'openid-connect'),
('47d1b217-3a3d-4faf-95f4-c0b061e85f0d', 'profile', 'master', 'OpenID Connect built-in scope: profile', 'openid-connect'),
('4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', 'microprofile-jwt', 'master', 'Microprofile - JWT built-in scope', 'openid-connect'),
('6d7dc4f7-6c91-4929-b595-8f0760df086a', 'profile', 'user-authentication', 'OpenID Connect built-in scope: profile', 'openid-connect'),
('96cc680c-5eeb-4bd5-95ab-b4feb2e66303', 'web-origins', 'user-authentication', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect'),
('a21ff95f-adc0-4847-8dfe-43d3264a287e', 'role_list', 'user-authentication', 'SAML role list', 'saml'),
('bcdc3bef-45f0-4299-808e-d90f7201cfeb', 'microprofile-jwt', 'user-authentication', 'Microprofile - JWT built-in scope', 'openid-connect'),
('ce6d53a0-0ca8-4e42-84e1-40936fddc117', 'email', 'master', 'OpenID Connect built-in scope: email', 'openid-connect'),
('df8f3379-70d5-4448-9e3f-292310b479e9', 'web-origins', 'master', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect'),
('eebba4a3-880d-4f0c-9968-6316aeda7131', 'offline_access', 'master', 'OpenID Connect built-in scope: offline_access', 'openid-connect'),
('ff14b976-9cbb-4ec2-83f6-3063fee95307', 'address', 'user-authentication', 'OpenID Connect built-in scope: address', 'openid-connect');

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_SCOPE_ATTRIBUTES`
--

CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL DEFAULT '',
  `VALUE` varchar(2048) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` (`SCOPE_ID`, `VALUE`, `NAME`) VALUES
('08b2c42f-49d1-4b5e-b38a-7252f10d5785', '${rolesScopeConsentText}', 'consent.screen.text'),
('08b2c42f-49d1-4b5e-b38a-7252f10d5785', 'true', 'display.on.consent.screen'),
('08b2c42f-49d1-4b5e-b38a-7252f10d5785', 'false', 'include.in.token.scope'),
('10dad6ec-d294-44d6-9487-437d81f99f8d', '${offlineAccessScopeConsentText}', 'consent.screen.text'),
('10dad6ec-d294-44d6-9487-437d81f99f8d', 'true', 'display.on.consent.screen'),
('1a5d23e3-6e47-4d69-8997-a79bb929e6b5', '${addressScopeConsentText}', 'consent.screen.text'),
('1a5d23e3-6e47-4d69-8997-a79bb929e6b5', 'true', 'display.on.consent.screen'),
('1a5d23e3-6e47-4d69-8997-a79bb929e6b5', 'true', 'include.in.token.scope'),
('241d9284-e21d-4458-8c9c-84a1bf7df572', '${phoneScopeConsentText}', 'consent.screen.text'),
('241d9284-e21d-4458-8c9c-84a1bf7df572', 'true', 'display.on.consent.screen'),
('241d9284-e21d-4458-8c9c-84a1bf7df572', 'true', 'include.in.token.scope'),
('32e3ad76-74be-4b29-b649-6498d7e4574d', '${phoneScopeConsentText}', 'consent.screen.text'),
('32e3ad76-74be-4b29-b649-6498d7e4574d', 'true', 'display.on.consent.screen'),
('32e3ad76-74be-4b29-b649-6498d7e4574d', 'true', 'include.in.token.scope'),
('37ea066e-ef29-4add-9165-94b7b0bc77e2', '${emailScopeConsentText}', 'consent.screen.text'),
('37ea066e-ef29-4add-9165-94b7b0bc77e2', 'true', 'display.on.consent.screen'),
('37ea066e-ef29-4add-9165-94b7b0bc77e2', 'true', 'include.in.token.scope'),
('3816082b-deae-481b-aaab-1d47f1dbc5d0', '${samlRoleListScopeConsentText}', 'consent.screen.text'),
('3816082b-deae-481b-aaab-1d47f1dbc5d0', 'true', 'display.on.consent.screen'),
('3822b8e6-3c5e-4f7b-af23-91d462ac7ded', '${rolesScopeConsentText}', 'consent.screen.text'),
('3822b8e6-3c5e-4f7b-af23-91d462ac7ded', 'true', 'display.on.consent.screen'),
('3822b8e6-3c5e-4f7b-af23-91d462ac7ded', 'false', 'include.in.token.scope'),
('47d1b217-3a3d-4faf-95f4-c0b061e85f0d', '${profileScopeConsentText}', 'consent.screen.text'),
('47d1b217-3a3d-4faf-95f4-c0b061e85f0d', 'true', 'display.on.consent.screen'),
('47d1b217-3a3d-4faf-95f4-c0b061e85f0d', 'true', 'include.in.token.scope'),
('4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', 'false', 'display.on.consent.screen'),
('4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', 'true', 'include.in.token.scope'),
('6d7dc4f7-6c91-4929-b595-8f0760df086a', '${profileScopeConsentText}', 'consent.screen.text'),
('6d7dc4f7-6c91-4929-b595-8f0760df086a', 'true', 'display.on.consent.screen'),
('6d7dc4f7-6c91-4929-b595-8f0760df086a', 'true', 'include.in.token.scope'),
('96cc680c-5eeb-4bd5-95ab-b4feb2e66303', '', 'consent.screen.text'),
('96cc680c-5eeb-4bd5-95ab-b4feb2e66303', 'false', 'display.on.consent.screen'),
('96cc680c-5eeb-4bd5-95ab-b4feb2e66303', 'false', 'include.in.token.scope'),
('a21ff95f-adc0-4847-8dfe-43d3264a287e', '${samlRoleListScopeConsentText}', 'consent.screen.text'),
('a21ff95f-adc0-4847-8dfe-43d3264a287e', 'true', 'display.on.consent.screen'),
('bcdc3bef-45f0-4299-808e-d90f7201cfeb', 'false', 'display.on.consent.screen'),
('bcdc3bef-45f0-4299-808e-d90f7201cfeb', 'true', 'include.in.token.scope'),
('ce6d53a0-0ca8-4e42-84e1-40936fddc117', '${emailScopeConsentText}', 'consent.screen.text'),
('ce6d53a0-0ca8-4e42-84e1-40936fddc117', 'true', 'display.on.consent.screen'),
('ce6d53a0-0ca8-4e42-84e1-40936fddc117', 'true', 'include.in.token.scope'),
('df8f3379-70d5-4448-9e3f-292310b479e9', '', 'consent.screen.text'),
('df8f3379-70d5-4448-9e3f-292310b479e9', 'false', 'display.on.consent.screen'),
('df8f3379-70d5-4448-9e3f-292310b479e9', 'false', 'include.in.token.scope'),
('eebba4a3-880d-4f0c-9968-6316aeda7131', '${offlineAccessScopeConsentText}', 'consent.screen.text'),
('eebba4a3-880d-4f0c-9968-6316aeda7131', 'true', 'display.on.consent.screen'),
('ff14b976-9cbb-4ec2-83f6-3063fee95307', '${addressScopeConsentText}', 'consent.screen.text'),
('ff14b976-9cbb-4ec2-83f6-3063fee95307', 'true', 'display.on.consent.screen'),
('ff14b976-9cbb-4ec2-83f6-3063fee95307', 'true', 'include.in.token.scope');

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_SCOPE_CLIENT`
--

CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

INSERT INTO `CLIENT_SCOPE_CLIENT` (`CLIENT_ID`, `SCOPE_ID`, `DEFAULT_SCOPE`) VALUES
('05fe9828-f9d9-4082-9cd0-a8e54e5098f1', '08b2c42f-49d1-4b5e-b38a-7252f10d5785', b'1'),
('05fe9828-f9d9-4082-9cd0-a8e54e5098f1', '1a5d23e3-6e47-4d69-8997-a79bb929e6b5', b'0'),
('05fe9828-f9d9-4082-9cd0-a8e54e5098f1', '241d9284-e21d-4458-8c9c-84a1bf7df572', b'0'),
('05fe9828-f9d9-4082-9cd0-a8e54e5098f1', '3816082b-deae-481b-aaab-1d47f1dbc5d0', b'1'),
('05fe9828-f9d9-4082-9cd0-a8e54e5098f1', '47d1b217-3a3d-4faf-95f4-c0b061e85f0d', b'1'),
('05fe9828-f9d9-4082-9cd0-a8e54e5098f1', '4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', b'0'),
('05fe9828-f9d9-4082-9cd0-a8e54e5098f1', 'ce6d53a0-0ca8-4e42-84e1-40936fddc117', b'1'),
('05fe9828-f9d9-4082-9cd0-a8e54e5098f1', 'df8f3379-70d5-4448-9e3f-292310b479e9', b'1'),
('05fe9828-f9d9-4082-9cd0-a8e54e5098f1', 'eebba4a3-880d-4f0c-9968-6316aeda7131', b'0'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', '10dad6ec-d294-44d6-9487-437d81f99f8d', b'0'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', '32e3ad76-74be-4b29-b649-6498d7e4574d', b'0'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', '37ea066e-ef29-4add-9165-94b7b0bc77e2', b'1'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', '3822b8e6-3c5e-4f7b-af23-91d462ac7ded', b'1'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', '6d7dc4f7-6c91-4929-b595-8f0760df086a', b'1'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', '96cc680c-5eeb-4bd5-95ab-b4feb2e66303', b'1'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', 'a21ff95f-adc0-4847-8dfe-43d3264a287e', b'1'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', 'bcdc3bef-45f0-4299-808e-d90f7201cfeb', b'0'),
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', 'ff14b976-9cbb-4ec2-83f6-3063fee95307', b'0'),
('3b118a44-1a44-4bbb-b185-545cfdd66ec6', '08b2c42f-49d1-4b5e-b38a-7252f10d5785', b'1'),
('3b118a44-1a44-4bbb-b185-545cfdd66ec6', '1a5d23e3-6e47-4d69-8997-a79bb929e6b5', b'0'),
('3b118a44-1a44-4bbb-b185-545cfdd66ec6', '241d9284-e21d-4458-8c9c-84a1bf7df572', b'0'),
('3b118a44-1a44-4bbb-b185-545cfdd66ec6', '3816082b-deae-481b-aaab-1d47f1dbc5d0', b'1'),
('3b118a44-1a44-4bbb-b185-545cfdd66ec6', '47d1b217-3a3d-4faf-95f4-c0b061e85f0d', b'1'),
('3b118a44-1a44-4bbb-b185-545cfdd66ec6', '4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', b'0'),
('3b118a44-1a44-4bbb-b185-545cfdd66ec6', 'ce6d53a0-0ca8-4e42-84e1-40936fddc117', b'1'),
('3b118a44-1a44-4bbb-b185-545cfdd66ec6', 'df8f3379-70d5-4448-9e3f-292310b479e9', b'1'),
('3b118a44-1a44-4bbb-b185-545cfdd66ec6', 'eebba4a3-880d-4f0c-9968-6316aeda7131', b'0'),
('40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', '10dad6ec-d294-44d6-9487-437d81f99f8d', b'0'),
('40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', '32e3ad76-74be-4b29-b649-6498d7e4574d', b'0'),
('40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', '37ea066e-ef29-4add-9165-94b7b0bc77e2', b'1'),
('40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', '3822b8e6-3c5e-4f7b-af23-91d462ac7ded', b'1'),
('40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', '6d7dc4f7-6c91-4929-b595-8f0760df086a', b'1'),
('40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', '96cc680c-5eeb-4bd5-95ab-b4feb2e66303', b'1'),
('40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', 'a21ff95f-adc0-4847-8dfe-43d3264a287e', b'1'),
('40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', 'bcdc3bef-45f0-4299-808e-d90f7201cfeb', b'0'),
('40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', 'ff14b976-9cbb-4ec2-83f6-3063fee95307', b'0'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', '08b2c42f-49d1-4b5e-b38a-7252f10d5785', b'1'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', '1a5d23e3-6e47-4d69-8997-a79bb929e6b5', b'0'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', '241d9284-e21d-4458-8c9c-84a1bf7df572', b'0'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', '3816082b-deae-481b-aaab-1d47f1dbc5d0', b'1'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', '47d1b217-3a3d-4faf-95f4-c0b061e85f0d', b'1'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', '4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', b'0'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', 'ce6d53a0-0ca8-4e42-84e1-40936fddc117', b'1'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', 'df8f3379-70d5-4448-9e3f-292310b479e9', b'1'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', 'eebba4a3-880d-4f0c-9968-6316aeda7131', b'0'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', '08b2c42f-49d1-4b5e-b38a-7252f10d5785', b'1'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', '1a5d23e3-6e47-4d69-8997-a79bb929e6b5', b'0'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', '241d9284-e21d-4458-8c9c-84a1bf7df572', b'0'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', '3816082b-deae-481b-aaab-1d47f1dbc5d0', b'1'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', '47d1b217-3a3d-4faf-95f4-c0b061e85f0d', b'1'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', '4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', b'0'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', 'ce6d53a0-0ca8-4e42-84e1-40936fddc117', b'1'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', 'df8f3379-70d5-4448-9e3f-292310b479e9', b'1'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', 'eebba4a3-880d-4f0c-9968-6316aeda7131', b'0'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', '10dad6ec-d294-44d6-9487-437d81f99f8d', b'0'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', '32e3ad76-74be-4b29-b649-6498d7e4574d', b'0'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', '37ea066e-ef29-4add-9165-94b7b0bc77e2', b'1'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', '3822b8e6-3c5e-4f7b-af23-91d462ac7ded', b'1'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', '6d7dc4f7-6c91-4929-b595-8f0760df086a', b'1'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', '96cc680c-5eeb-4bd5-95ab-b4feb2e66303', b'1'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', 'a21ff95f-adc0-4847-8dfe-43d3264a287e', b'1'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', 'bcdc3bef-45f0-4299-808e-d90f7201cfeb', b'0'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', 'ff14b976-9cbb-4ec2-83f6-3063fee95307', b'0'),
('86cae607-1818-46da-94af-8cfb79cfa88a', '10dad6ec-d294-44d6-9487-437d81f99f8d', b'0'),
('86cae607-1818-46da-94af-8cfb79cfa88a', '32e3ad76-74be-4b29-b649-6498d7e4574d', b'0'),
('86cae607-1818-46da-94af-8cfb79cfa88a', '37ea066e-ef29-4add-9165-94b7b0bc77e2', b'1'),
('86cae607-1818-46da-94af-8cfb79cfa88a', '3822b8e6-3c5e-4f7b-af23-91d462ac7ded', b'1'),
('86cae607-1818-46da-94af-8cfb79cfa88a', '6d7dc4f7-6c91-4929-b595-8f0760df086a', b'1'),
('86cae607-1818-46da-94af-8cfb79cfa88a', '96cc680c-5eeb-4bd5-95ab-b4feb2e66303', b'1'),
('86cae607-1818-46da-94af-8cfb79cfa88a', 'a21ff95f-adc0-4847-8dfe-43d3264a287e', b'1'),
('86cae607-1818-46da-94af-8cfb79cfa88a', 'bcdc3bef-45f0-4299-808e-d90f7201cfeb', b'0'),
('86cae607-1818-46da-94af-8cfb79cfa88a', 'ff14b976-9cbb-4ec2-83f6-3063fee95307', b'0'),
('9697b092-4eed-47b2-ae7e-6140c92ba8e5', '08b2c42f-49d1-4b5e-b38a-7252f10d5785', b'1'),
('9697b092-4eed-47b2-ae7e-6140c92ba8e5', '1a5d23e3-6e47-4d69-8997-a79bb929e6b5', b'0'),
('9697b092-4eed-47b2-ae7e-6140c92ba8e5', '241d9284-e21d-4458-8c9c-84a1bf7df572', b'0'),
('9697b092-4eed-47b2-ae7e-6140c92ba8e5', '3816082b-deae-481b-aaab-1d47f1dbc5d0', b'1'),
('9697b092-4eed-47b2-ae7e-6140c92ba8e5', '47d1b217-3a3d-4faf-95f4-c0b061e85f0d', b'1'),
('9697b092-4eed-47b2-ae7e-6140c92ba8e5', '4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', b'0'),
('9697b092-4eed-47b2-ae7e-6140c92ba8e5', 'ce6d53a0-0ca8-4e42-84e1-40936fddc117', b'1'),
('9697b092-4eed-47b2-ae7e-6140c92ba8e5', 'df8f3379-70d5-4448-9e3f-292310b479e9', b'1'),
('9697b092-4eed-47b2-ae7e-6140c92ba8e5', 'eebba4a3-880d-4f0c-9968-6316aeda7131', b'0'),
('a5313dce-c7dc-48f2-9d57-412889bc7cf4', '10dad6ec-d294-44d6-9487-437d81f99f8d', b'0'),
('a5313dce-c7dc-48f2-9d57-412889bc7cf4', '32e3ad76-74be-4b29-b649-6498d7e4574d', b'0'),
('a5313dce-c7dc-48f2-9d57-412889bc7cf4', '37ea066e-ef29-4add-9165-94b7b0bc77e2', b'1'),
('a5313dce-c7dc-48f2-9d57-412889bc7cf4', '3822b8e6-3c5e-4f7b-af23-91d462ac7ded', b'1'),
('a5313dce-c7dc-48f2-9d57-412889bc7cf4', '6d7dc4f7-6c91-4929-b595-8f0760df086a', b'1'),
('a5313dce-c7dc-48f2-9d57-412889bc7cf4', '96cc680c-5eeb-4bd5-95ab-b4feb2e66303', b'1'),
('a5313dce-c7dc-48f2-9d57-412889bc7cf4', 'a21ff95f-adc0-4847-8dfe-43d3264a287e', b'1'),
('a5313dce-c7dc-48f2-9d57-412889bc7cf4', 'bcdc3bef-45f0-4299-808e-d90f7201cfeb', b'0'),
('a5313dce-c7dc-48f2-9d57-412889bc7cf4', 'ff14b976-9cbb-4ec2-83f6-3063fee95307', b'0'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', '08b2c42f-49d1-4b5e-b38a-7252f10d5785', b'1'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', '1a5d23e3-6e47-4d69-8997-a79bb929e6b5', b'0'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', '241d9284-e21d-4458-8c9c-84a1bf7df572', b'0'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', '3816082b-deae-481b-aaab-1d47f1dbc5d0', b'1'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', '47d1b217-3a3d-4faf-95f4-c0b061e85f0d', b'1'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', '4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', b'0'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', 'ce6d53a0-0ca8-4e42-84e1-40936fddc117', b'1'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', 'df8f3379-70d5-4448-9e3f-292310b479e9', b'1'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', 'eebba4a3-880d-4f0c-9968-6316aeda7131', b'0'),
('dd93430b-5fc4-4269-899d-672cb476154e', '10dad6ec-d294-44d6-9487-437d81f99f8d', b'0'),
('dd93430b-5fc4-4269-899d-672cb476154e', '32e3ad76-74be-4b29-b649-6498d7e4574d', b'0'),
('dd93430b-5fc4-4269-899d-672cb476154e', '37ea066e-ef29-4add-9165-94b7b0bc77e2', b'1'),
('dd93430b-5fc4-4269-899d-672cb476154e', '3822b8e6-3c5e-4f7b-af23-91d462ac7ded', b'1'),
('dd93430b-5fc4-4269-899d-672cb476154e', '6d7dc4f7-6c91-4929-b595-8f0760df086a', b'1'),
('dd93430b-5fc4-4269-899d-672cb476154e', '96cc680c-5eeb-4bd5-95ab-b4feb2e66303', b'1'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'a21ff95f-adc0-4847-8dfe-43d3264a287e', b'1'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'bcdc3bef-45f0-4299-808e-d90f7201cfeb', b'0'),
('dd93430b-5fc4-4269-899d-672cb476154e', 'ff14b976-9cbb-4ec2-83f6-3063fee95307', b'0'),
('f6e73c61-a638-41b0-ad5c-97938399edc0', '10dad6ec-d294-44d6-9487-437d81f99f8d', b'0'),
('f6e73c61-a638-41b0-ad5c-97938399edc0', '32e3ad76-74be-4b29-b649-6498d7e4574d', b'0'),
('f6e73c61-a638-41b0-ad5c-97938399edc0', '37ea066e-ef29-4add-9165-94b7b0bc77e2', b'1'),
('f6e73c61-a638-41b0-ad5c-97938399edc0', '3822b8e6-3c5e-4f7b-af23-91d462ac7ded', b'1'),
('f6e73c61-a638-41b0-ad5c-97938399edc0', '6d7dc4f7-6c91-4929-b595-8f0760df086a', b'1'),
('f6e73c61-a638-41b0-ad5c-97938399edc0', '96cc680c-5eeb-4bd5-95ab-b4feb2e66303', b'1'),
('f6e73c61-a638-41b0-ad5c-97938399edc0', 'a21ff95f-adc0-4847-8dfe-43d3264a287e', b'1'),
('f6e73c61-a638-41b0-ad5c-97938399edc0', 'bcdc3bef-45f0-4299-808e-d90f7201cfeb', b'0'),
('f6e73c61-a638-41b0-ad5c-97938399edc0', 'ff14b976-9cbb-4ec2-83f6-3063fee95307', b'0'),
('f7e3f816-da93-47c0-87a2-e8c98a414ac2', '08b2c42f-49d1-4b5e-b38a-7252f10d5785', b'1'),
('f7e3f816-da93-47c0-87a2-e8c98a414ac2', '1a5d23e3-6e47-4d69-8997-a79bb929e6b5', b'0'),
('f7e3f816-da93-47c0-87a2-e8c98a414ac2', '241d9284-e21d-4458-8c9c-84a1bf7df572', b'0'),
('f7e3f816-da93-47c0-87a2-e8c98a414ac2', '3816082b-deae-481b-aaab-1d47f1dbc5d0', b'1'),
('f7e3f816-da93-47c0-87a2-e8c98a414ac2', '47d1b217-3a3d-4faf-95f4-c0b061e85f0d', b'1'),
('f7e3f816-da93-47c0-87a2-e8c98a414ac2', '4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', b'0'),
('f7e3f816-da93-47c0-87a2-e8c98a414ac2', 'ce6d53a0-0ca8-4e42-84e1-40936fddc117', b'1'),
('f7e3f816-da93-47c0-87a2-e8c98a414ac2', 'df8f3379-70d5-4448-9e3f-292310b479e9', b'1'),
('f7e3f816-da93-47c0-87a2-e8c98a414ac2', 'eebba4a3-880d-4f0c-9968-6316aeda7131', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_SCOPE_ROLE_MAPPING`
--

CREATE TABLE `CLIENT_SCOPE_ROLE_MAPPING` (
  `SCOPE_ID` varchar(36) NOT NULL DEFAULT '',
  `ROLE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` (`SCOPE_ID`, `ROLE_ID`) VALUES
('eebba4a3-880d-4f0c-9968-6316aeda7131', '4bd62c62-f5d7-4af8-85ab-2ffa8cdcbe13');

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_SESSION`
--

CREATE TABLE `CLIENT_SESSION` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REDIRECT_URI` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `SESSION_ID` varchar(36) DEFAULT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(36) DEFAULT NULL,
  `CURRENT_ACTION` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_SESSION_AUTH_STATUS`
--

CREATE TABLE `CLIENT_SESSION_AUTH_STATUS` (
  `AUTHENTICATOR` varchar(36) NOT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_SESSION_NOTE`
--

CREATE TABLE `CLIENT_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_SESSION_PROT_MAPPER`
--

CREATE TABLE `CLIENT_SESSION_PROT_MAPPER` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_SESSION_ROLE`
--

CREATE TABLE `CLIENT_SESSION_ROLE` (
  `ROLE_ID` varchar(255) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_USER_SESSION_NOTE`
--

CREATE TABLE `CLIENT_USER_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `COMPONENT`
--

CREATE TABLE `COMPONENT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_TYPE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `SUB_TYPE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COMPONENT`
--

INSERT INTO `COMPONENT` (`ID`, `NAME`, `PARENT_ID`, `PROVIDER_ID`, `PROVIDER_TYPE`, `REALM_ID`, `SUB_TYPE`) VALUES
('0341e01c-786d-4faf-b6b9-4252086754de', 'Allowed Protocol Mapper Types', 'master', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('0874c4cb-22e7-48dd-8989-b74ea5e34360', 'aes-generated', 'master', 'aes-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL),
('1b3eaca7-9323-449f-8239-35c0b4d6472a', 'hmac-generated', 'user-authentication', 'hmac-generated', 'org.keycloak.keys.KeyProvider', 'user-authentication', NULL),
('1e5eb9af-9923-4a89-af99-adb1bb791b95', 'Trusted Hosts', 'master', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('534b93d2-041b-4dfb-852a-863050df61a0', 'Allowed Client Scopes', 'user-authentication', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'user-authentication', 'authenticated'),
('56e152e3-1245-4988-9b26-ff42cf8798fb', 'Allowed Client Scopes', 'master', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('61220b44-04ea-4185-b8c2-21a8d6cde212', 'Consent Required', 'master', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('629a73fe-79d0-47b1-b619-b79558a6bd04', 'rsa-generated', 'user-authentication', 'rsa-generated', 'org.keycloak.keys.KeyProvider', 'user-authentication', NULL),
('69a62e92-1efb-4909-8388-3282c12f62e1', 'Allowed Protocol Mapper Types', 'user-authentication', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'user-authentication', 'authenticated'),
('7ff88543-d56f-4ead-bfd7-b1cb0df2173e', 'Max Clients Limit', 'master', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('86a04274-2548-48e6-8204-46fb4a53aecf', 'Allowed Protocol Mapper Types', 'user-authentication', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'user-authentication', 'anonymous'),
('8facd7cd-85d0-4583-8964-ad0732d5742e', 'Allowed Protocol Mapper Types', 'master', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'authenticated'),
('95a9635f-1e4e-49ba-af3f-fdccc094d417', 'aes-generated', 'user-authentication', 'aes-generated', 'org.keycloak.keys.KeyProvider', 'user-authentication', NULL),
('9e80d328-b82d-4ed1-8af5-5ab2f6bc6327', 'Full Scope Disabled', 'user-authentication', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'user-authentication', 'anonymous'),
('ad4cbc47-b180-482c-a9ab-6e9db20d8194', 'Full Scope Disabled', 'master', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('af7f9c65-d368-43fb-a9be-90ed67ff66b9', 'rsa-generated', 'master', 'rsa-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL),
('b33c5472-ee2f-4c40-b42b-c9a14e50b2df', 'hmac-generated', 'master', 'hmac-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL),
('b44790ac-09ed-43d3-a77b-9a9d8ebd48b3', 'Allowed Client Scopes', 'user-authentication', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'user-authentication', 'anonymous'),
('bef4785b-22b7-4149-ba09-db0637d17610', 'Trusted Hosts', 'user-authentication', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'user-authentication', 'anonymous'),
('c44c4877-5291-4131-9e89-d787fb589246', 'Consent Required', 'user-authentication', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'user-authentication', 'anonymous'),
('f7c47ede-8056-4cc0-84d9-83acb80c9ba6', 'Allowed Client Scopes', 'master', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'authenticated'),
('fc5008a6-e4e9-4cf3-b1cc-5061f1b85a5c', 'Max Clients Limit', 'user-authentication', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'user-authentication', 'anonymous');

-- --------------------------------------------------------

--
-- Table structure for table `COMPONENT_CONFIG`
--

CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(4000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

INSERT INTO `COMPONENT_CONFIG` (`ID`, `COMPONENT_ID`, `NAME`, `VALUE`) VALUES
('0e6bac0f-1f0f-4e55-a37c-76370378d83b', '0341e01c-786d-4faf-b6b9-4252086754de', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('10010f68-16c9-47e8-ba9f-b8d2c14405a0', '0341e01c-786d-4faf-b6b9-4252086754de', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('141b924b-41bc-41b5-bea5-c138a23882b5', 'af7f9c65-d368-43fb-a9be-90ed67ff66b9', 'privateKey', 'MIIEogIBAAKCAQEAkus2BUT4hzEIOhyfVB7mQvVWlAWxhRmm+mdCkMb5+lq7pU2dRCSfCaRs7Oy7jthAKX/oHpnc/8m+GE7Ai7iDYvDrynlCsdiPjd4LgjCop2j3RCF0HmfGt69CgjACkHmAkMzMgZlHxFxfghvBkpyw3RmmW8Ur0IE167Px1xlF5sdt8lMFzW6sfZyycvF12UOzc7CAZGh1bEK8d+Q+/iTbmIJobbDCXJbxOPYxPMow31XAWAszvJHdZhQq3KP5VtuC62Nx81BkUw8kvaVFQ947HXW9ZiNblvR5zcGcAT/IUxdJaqN1lBlTYGK2nSFTGGNL8RCGcvQq37JBEVkxnVkeyQIDAQABAoIBAChqI5YXfvZRep3hucJ+LYFF0+csGcUvZUuElD8XPTStOOkkDJruKAGTBZO3G3ET87J2yPeCA9UpPe2Z3EWTIDFbbMFp0fryQ6sW5buOfxZuPXa0bSjgCz4ELBt78Xiks8UhUTBlZeSSNIOp9vnJuK1ZnPWpq3/Ty21nNqOhBCWTUd+7/AOwBeV6uXsjCA1OJTHejo1DBPt3K8Ebqa8qW67y8uE66iFHpimc0VmzJNWJgJvIXYeDqaaDPINkceBBk3pTSoibI0wPhzwFp/9FFLWnVPIBqE3wKu/ZxznzH2xPuGYVp1mn/9h21QVWzS/lAhzKwvyoEMeZ3QIcxgJe9rECgYEA692LHmN2SOv2aHXD6Emyy4EwvQjCUt1N19reMSznhvX5E1u3R3ElAO8Re47vMFuaI2SZ3zS228jHRiOzjuh4kGIJEz/zeOI7EeqqVCmgfwHbQKyxFVbRkwtTeQmjhBLrywtahZPVEX+iD6eCdVRes9PwCO4xx5auXFixYBSur4sCgYEAn3XiJj1wKKU8p6BqV0+/cm0/oRwfqAEfnjvKFvqW+mrHGvXyRov+ssF5Fl/rCmNhU5psJIkzp8gsE5oySU547tiM6QLqsfhQegl/ALWh0U/5FHn2ljs+qhikrZ8GaEUuNcFoNtdSm0aARq4ceSI4Bufy/wg1jxVKCJATHOuZNXsCgYAffpqn+SH/RLrHYgpBxy1/rQWECFpiVDijvQ70RAm6ZLfYlOOZP4twX3vXItPfgivH1BQT0Ocl2954CCZey73lkaGil2R8XMEEeHA8Ar7ylp3fOe//aHNdjiKcQ+Q4q4oet6pjscS+rGtIadaqshRfMMqZdqzg+MbZf+JXcQuOVwKBgEsId0+zHTGi/vWJgEBxYA6B5azzxNmTHcOhMqi5ZY2T7Ph8vnH/set/KnEi1UBgHw3t3fEbNlk+0a6vofXonPMWpseF/dWcmJG0IjS9QtVxIi1GboemfQgg7GxeJe+ujd3xkg4sJ8y00etwRimhtmdZgXgL7tfTFrEMylGTctY9AoGAWU9eD5d4Wqd12a7X668M1jCfOHzjwc3BzYH1Bq/oPseGnpceWigjdM5kY+tNpSbJeQ0Nk36tDFN++ISeY5rRvlOidhF84f2+mCYE46GyZY/BuSwTEnqTw3TAqjmk+/qiid/tmzdcJ71mbNYkMV8Ul/yCPyfeWK6I2WGk0hZ5LQ8='),
('15fce0ac-789d-4418-8a91-472c1daed3c0', 'b33c5472-ee2f-4c40-b42b-c9a14e50b2df', 'kid', '15429374-37c9-492d-b1af-5a204712be6b'),
('1ec1a8c6-ba94-4371-bfc5-158908fc7d09', '1b3eaca7-9323-449f-8239-35c0b4d6472a', 'algorithm', 'HS256'),
('221f178b-4f05-4b1b-a955-70fdc454d147', '86a04274-2548-48e6-8204-46fb4a53aecf', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('25ab4628-946c-4cbd-8636-90830bb43ca8', '0341e01c-786d-4faf-b6b9-4252086754de', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('2626bdb4-6832-4d54-8726-f3933d2baf70', '8facd7cd-85d0-4583-8964-ad0732d5742e', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('2f085cdc-2c69-4ae8-93b0-09c7d3e8337b', 'bef4785b-22b7-4149-ba09-db0637d17610', 'client-uris-must-match', 'true'),
('30c23b17-1027-4ea0-b05a-46089a174b98', 'b44790ac-09ed-43d3-a77b-9a9d8ebd48b3', 'allow-default-scopes', 'true'),
('3940e286-5bd1-4d90-98ef-f656b6ab8325', '8facd7cd-85d0-4583-8964-ad0732d5742e', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('3a440330-4b98-4b4c-9867-55d2bcb98f1e', '1e5eb9af-9923-4a89-af99-adb1bb791b95', 'host-sending-registration-request-must-match', 'true'),
('3eb029a0-a872-4c4a-9f11-c8e941fa0e20', '0874c4cb-22e7-48dd-8989-b74ea5e34360', 'secret', 'jpY8XnIQyQINu-JKqFUcKQ'),
('43ad73de-2a08-431e-b95a-8e4df34c176e', 'af7f9c65-d368-43fb-a9be-90ed67ff66b9', 'certificate', 'MIICmzCCAYMCBgF3JNHonzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjEwMTIxMTE1OTMyWhcNMzEwMTIxMTIwMTEyWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCS6zYFRPiHMQg6HJ9UHuZC9VaUBbGFGab6Z0KQxvn6WrulTZ1EJJ8JpGzs7LuO2EApf+gemdz/yb4YTsCLuINi8OvKeUKx2I+N3guCMKinaPdEIXQeZ8a3r0KCMAKQeYCQzMyBmUfEXF+CG8GSnLDdGaZbxSvQgTXrs/HXGUXmx23yUwXNbqx9nLJy8XXZQ7NzsIBkaHVsQrx35D7+JNuYgmhtsMJclvE49jE8yjDfVcBYCzO8kd1mFCrco/lW24LrY3HzUGRTDyS9pUVD3jsddb1mI1uW9HnNwZwBP8hTF0lqo3WUGVNgYradIVMYY0vxEIZy9CrfskERWTGdWR7JAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAEHPpA8RTP1vnl9uwC6pcMS0FBIgVXfkOZV8bZvsJkJK7Qq1IBxslTmXRFc7xucpS+LCG61HXb63KJRrSupnn9lL+8VkSpPb8nurgE3NPvknfVqiZlQL/xnH//nRjSe4edisJ1E2nCg1i55hnSr8/TxUFuYLA2dpGvEVsMzqUW1zqumSAYXxFT1yupA8oMeaFNfImgtDngWi+iC+L7oJwUpqsxVhBo7WQy37c3D8fdTGBkk4tW8bv8y0laifTC+T1YMVX3sCLcibH/1TM0JD31ZRtpajWDZQFPjeAk2YwolRvY83jX8yDNZlexoK5WRyqwIAfHwUbKbff4+FfiyYUDg='),
('4746f76d-d78c-49f1-a693-c0e53b433a1d', '86a04274-2548-48e6-8204-46fb4a53aecf', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('48319663-e3f8-462d-93ba-3fa877f178da', '8facd7cd-85d0-4583-8964-ad0732d5742e', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('486ba5ea-3a97-4e55-85ff-763c790f8f02', '0341e01c-786d-4faf-b6b9-4252086754de', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('4e19ef0f-e8fb-431e-8dbe-8f077acf441d', '1e5eb9af-9923-4a89-af99-adb1bb791b95', 'client-uris-must-match', 'true'),
('50c94386-a5df-4c97-aa9b-db981626266c', '0874c4cb-22e7-48dd-8989-b74ea5e34360', 'priority', '100'),
('5561514c-ce8c-4b94-a1c1-05b83d384450', '0341e01c-786d-4faf-b6b9-4252086754de', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('5813c8ca-6062-4605-8c6b-a603a49a80d6', '69a62e92-1efb-4909-8388-3282c12f62e1', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('58dc8911-51d0-4280-9131-fe3c6a62acf2', '86a04274-2548-48e6-8204-46fb4a53aecf', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('5db2f55c-ad03-4fc9-87bf-614bc942b7e9', '1b3eaca7-9323-449f-8239-35c0b4d6472a', 'kid', 'a9ea403c-854a-43ca-adf8-ae3ba96be478'),
('6249fb51-c00d-496a-91b1-3813edfc79e6', '69a62e92-1efb-4909-8388-3282c12f62e1', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('6608a60e-7df4-4dc1-8bcd-8cbfc8b35d40', '0341e01c-786d-4faf-b6b9-4252086754de', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('670ab615-140b-48b2-b178-ec41c7c842c3', '86a04274-2548-48e6-8204-46fb4a53aecf', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('6a666a8c-0af0-4a65-ae77-23995bea9f9b', '1b3eaca7-9323-449f-8239-35c0b4d6472a', 'secret', 'Asv-EawKK5YfeuqOFQ3flJKj8uHq21oy8_sLKqx5_vyfVyWXWWkohOqMZkdvON4Z9WbupSK2W2YloE437ERGTQ'),
('6c96e5ce-a55f-4bd9-a6cf-c31734743a51', '0874c4cb-22e7-48dd-8989-b74ea5e34360', 'kid', '069f1578-19f9-4849-b666-f9856ccca5e5'),
('73002fe8-b539-4faf-8e9a-467177f45cd3', '629a73fe-79d0-47b1-b619-b79558a6bd04', 'priority', '100'),
('78a453d2-adb6-4595-8cf6-0a78024a40c2', '8facd7cd-85d0-4583-8964-ad0732d5742e', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('7a8fd0dc-8e77-470d-a383-642f896a02f4', '69a62e92-1efb-4909-8388-3282c12f62e1', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('83880f99-d081-49bc-856d-ee82b01fbc6e', '69a62e92-1efb-4909-8388-3282c12f62e1', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('83bd26e8-edc8-4592-aa5a-7e8b3b66d2f8', '0341e01c-786d-4faf-b6b9-4252086754de', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('8a321528-89a3-42b0-80a4-d1e4afd2e64f', '8facd7cd-85d0-4583-8964-ad0732d5742e', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('8a9b571e-deac-401e-81ef-004f76438e77', '56e152e3-1245-4988-9b26-ff42cf8798fb', 'allow-default-scopes', 'true'),
('9578e5e0-626c-4d80-8f2e-cd625637acb3', 'af7f9c65-d368-43fb-a9be-90ed67ff66b9', 'priority', '100'),
('9663096d-05de-4433-958f-f876dd5e482e', '69a62e92-1efb-4909-8388-3282c12f62e1', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('9791c5c8-2580-40a6-9bd3-6229655f5da0', '1b3eaca7-9323-449f-8239-35c0b4d6472a', 'priority', '100'),
('986e7204-c07e-4050-ae7c-c600897f481f', '0341e01c-786d-4faf-b6b9-4252086754de', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('9f836bdb-0dbf-4374-9fb8-49c6eceee347', '86a04274-2548-48e6-8204-46fb4a53aecf', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('a33c3aea-878a-4b52-9f2d-8cde9e88cd0c', '8facd7cd-85d0-4583-8964-ad0732d5742e', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('a38f2d99-f736-4075-8e29-9dfe4ad2be97', 'f7c47ede-8056-4cc0-84d9-83acb80c9ba6', 'allow-default-scopes', 'true'),
('a3db7baf-c543-4a26-94eb-d01eed05bb1d', '8facd7cd-85d0-4583-8964-ad0732d5742e', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('a771b46f-1076-4a98-8e55-7ee6eb15afba', '95a9635f-1e4e-49ba-af3f-fdccc094d417', 'priority', '100'),
('ab181d3b-c1fb-4fcf-b7e3-cbb15a9bb624', '629a73fe-79d0-47b1-b619-b79558a6bd04', 'privateKey', 'MIIEowIBAAKCAQEAhR1fcX+pusso2rzFpLLLQY/Mg6/W9zchqeeD6JVlkLXFLLWT+5PamtVHet/XSljTpEYyIFv1+JA02AYW4YBKLt9jZgPI1VqCS7rG8G9wmypeT1cOatiFgBaJp3lJHkd2cL6PxK1qDjcdDkABomVm0Z+EqoJxj4f5eCYjKchMQjssgAN3CDtMQJWk+OVGaEC2tDMRmzp93JrI1i51beom/5yWXSHJ/CJERoKSvmE7GBleWhLGR+0rl9VJRDWjKZ4AE8gQSTwk9v2dyNJOdiqcDP6JrZBrjKXlRPeD1TPqiyPRQVMJqMmEAsUfUEjbWgBAJCTL989YOhVhNDZOSS/fYQIDAQABAoIBABXupwEeVarPOmX/4FiolNCyjrHL0RFeZg+Gc7dolhlnuZsKN92lmMkWBvb51pELXaOdZTjrrfVMXUiSiEaTSqW6bLgsO3TbusgbeBe5ZMZMDsnnwBpennBiRj/vvdpdT+h3nVx8bhL1hbYJWbuWFYDIVaV6ZJePgc0IC5cgx1/J/0tZKQH2hLo/KtK6KkBKlEwM7H21dH2K2wubIUDIBNBdaOAuHn983cL606oDZBafXtlNNa24FwT2cZ59rANE+WQ6YMjTYv4n/2unf4SmBCTMmiRcxt1/atuCHz1TKVxs+Areku9BkEWrjduBrpYuZ2QBNw8TEDDVwemsgBUDPaECgYEAvUWvJJykV4HxeyAczqNDo0K/KFzrzWwS55ax/sMzH2dgOAo5BByNO4zLdGRZFODTOGrB1Ikfa/cysRl82WExxGT2eGDNvaPuzyMtUXrpazb0aOwpkAEGr3Maqgsb7aDhw3FnxUB9NRqTN4r+vIjZ6jeJxo2vdJ7we/ABA4J6KWUCgYEAtAtURB8SOMTO0AsFU7js2H1rjZKpfIro4SRoSpJoYDTYn2+esVn6eaCF+ulw14E1bDyysXlwdqEG9e8WzXWEEVvw0RA1mnMuunS8ktxNjDAQskzg4LUOlRq32S+mUKluqVdTNUkiQuGn1zJ/+6MuExrqs9oSQCozMpF8nKDK/E0CgYBdJDyzXK53LcgjGkNy4N85KXCesVONLKEE/KCtSWwQCTRNf6JdRput8XRx26wG3Ti0a7zlFXG0FNsKUguhgfYWusSbqq+0oka0ApCbp0vU6h9OvuEZL5gVoSQ/B+Z/gwt2vYkehcTX7DMEQ09mgkYSv6/6WOE+F7UqmIo3Ku9pDQKBgBVHqYQLsBmpmVAZnV2R49yKpmWrSgEAYhoKNZFq0I9eb6QYi0cm/WXWxT8szDuMeAX8/pnfYp2C1tHGmolaNGvg1AvBwLQqnQFIvukUxM2m+LI6R/IHNFwHNmejLCMog33cZmdL55LEHRRgUaQqW03Cxq7PPYz77+UwMOxKTPOZAoGBAId5s5XuVz2NEUkShcQjN1G0AJi+Mkgi5xvyb067X1QG+gC3MOSW0hI/SNYByV/PR6rWpB0pzGEPLpJ+MvsBYBl9zq1SuOMQA5izuTJhg/v6aEHwtsKiipMtS9ct/8TWT9wytAO0ppGQ9yX111sFd8W2X8J3z4fAcALdTn+1+Jnu'),
('ac2ddc70-a90d-4c5d-bf83-32ef3d81f19b', '95a9635f-1e4e-49ba-af3f-fdccc094d417', 'kid', 'aead7a12-b776-42b2-9075-38c01b3e7340'),
('afd62839-c7ac-4287-affb-5623dc400a77', '69a62e92-1efb-4909-8388-3282c12f62e1', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('b43a19b0-6723-4e32-b95d-b8abea3cc013', '86a04274-2548-48e6-8204-46fb4a53aecf', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('bb8988ce-b8cf-4b63-8da2-ab05a8a4be8c', '86a04274-2548-48e6-8204-46fb4a53aecf', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('bc092a6c-1a89-4ea6-bd31-9fb702abf1e2', '8facd7cd-85d0-4583-8964-ad0732d5742e', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('c4d40f5e-efac-401f-affa-e630f2ef6483', '69a62e92-1efb-4909-8388-3282c12f62e1', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('c5aafcf4-509c-4b0c-b97e-cc1c94e3b809', 'b33c5472-ee2f-4c40-b42b-c9a14e50b2df', 'secret', 'A7tXhkM3mSq_LjyRdfS20cSM3LrMcDArU0vu3kl3P60-253Y3mRvnEzQNnWb3Avevx95dJqSD-23DJDCj7PB6Q'),
('c6390686-9272-4374-ae19-87a3a1de4689', '95a9635f-1e4e-49ba-af3f-fdccc094d417', 'secret', '4DJNrlYkxtofoidpf5mYCg'),
('cb3d98a3-8ff1-4be9-bad5-82ac1e298c8f', 'bef4785b-22b7-4149-ba09-db0637d17610', 'host-sending-registration-request-must-match', 'true'),
('cb5ee232-aac5-4185-8654-ddb39ed445fe', '69a62e92-1efb-4909-8388-3282c12f62e1', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('d63f2611-27ca-48db-aab7-092c77a67ba2', 'b33c5472-ee2f-4c40-b42b-c9a14e50b2df', 'algorithm', 'HS256'),
('e0a12a44-468c-4216-b47a-ad4fbdc1c886', 'fc5008a6-e4e9-4cf3-b1cc-5061f1b85a5c', 'max-clients', '200'),
('e1b9a0aa-7a0d-47e1-8a09-da47af968182', '629a73fe-79d0-47b1-b619-b79558a6bd04', 'certificate', 'MIICtTCCAZ0CBgF3JNH5QjANBgkqhkiG9w0BAQsFADAeMRwwGgYDVQQDDBN1c2VyLWF1dGhlbnRpY2F0aW9uMB4XDTIxMDEyMTExNTkzNloXDTMxMDEyMTEyMDExNlowHjEcMBoGA1UEAwwTdXNlci1hdXRoZW50aWNhdGlvbjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAIUdX3F/qbrLKNq8xaSyy0GPzIOv1vc3Ianng+iVZZC1xSy1k/uT2prVR3rf10pY06RGMiBb9fiQNNgGFuGASi7fY2YDyNVagku6xvBvcJsqXk9XDmrYhYAWiad5SR5HdnC+j8Stag43HQ5AAaJlZtGfhKqCcY+H+XgmIynITEI7LIADdwg7TECVpPjlRmhAtrQzEZs6fdyayNYudW3qJv+cll0hyfwiREaCkr5hOxgZXloSxkftK5fVSUQ1oymeABPIEEk8JPb9ncjSTnYqnAz+ia2Qa4yl5UT3g9Uz6osj0UFTCajJhALFH1BI21oAQCQky/fPWDoVYTQ2Tkkv32ECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAQlFI9pYJoW4lsLC+azSLNu4xFTm8+NWfvgg5KINPMEntnpekdF/goNs87wcVewDmikx4m/WkmQqAacBg8zq4jclmwdkc+Sggod49n68qkxib5hVo0g4iS9GYupA1c33VS/CFp7AvpvNWe6T3UVzMvNnI4W5gskGB+Jm91+LJfO/EqWxx3QHMoxwLbSnpyxWsHsfKessWZMkZjGba/Shj+vH6Ik2wx/Xgdyw/6SzkupICvp60Re4McPlvove1LR+AMoAXPzc6ZpfcngXX9jiA+MnarE+wNt+hDSjZDEkPLpZZ+NQvW8Qt6d/fs0cr/VS3jNHTGQh58Y4+JCkqA/vIVg=='),
('e3ba537c-4e6b-4979-adc8-62c8027bc883', 'b33c5472-ee2f-4c40-b42b-c9a14e50b2df', 'priority', '100'),
('f03a2810-2e7f-46f1-9e07-784c0abb28a3', '534b93d2-041b-4dfb-852a-863050df61a0', 'allow-default-scopes', 'true'),
('f265f188-67a5-445b-9d3c-da5c809b97d3', '86a04274-2548-48e6-8204-46fb4a53aecf', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('fb37d7a6-7695-419c-bb91-4bf20b1fca51', '7ff88543-d56f-4ead-bfd7-b1cb0df2173e', 'max-clients', '200');

-- --------------------------------------------------------

--
-- Table structure for table `COMPOSITE_ROLE`
--

CREATE TABLE `COMPOSITE_ROLE` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

INSERT INTO `COMPOSITE_ROLE` (`COMPOSITE`, `CHILD_ROLE`) VALUES
('281d7435-4f99-4c71-9ad1-a020cb16346e', '7092087e-28b2-4305-a96c-006411edff47'),
('340c360d-cf37-4c35-9147-4707a878d5a9', '397c6e9a-705f-44ff-814d-38b4f49bc5ae'),
('340c360d-cf37-4c35-9147-4707a878d5a9', '7816a772-e77e-4caa-a907-1da9d3f6c385'),
('4ab9f022-04c7-4f56-a685-e4714aa90d31', 'af4ef4a6-4ced-4187-9f7a-c0d68fce5a10'),
('4ab9f022-04c7-4f56-a685-e4714aa90d31', 'd51b304a-d439-4b60-8396-0d14ab318ec8'),
('734bfb75-cfd9-4b04-90e2-0fab90af2b00', 'feeb14ee-edba-437b-959b-e1cfe14c5a18'),
('8bdf114e-19d6-4646-97ad-e3ac8d615426', 'aa33f708-286b-4878-afbf-c855a117e918'),
('8d380b16-5d81-4201-9e8d-7cba22963840', '58496286-0658-4a9c-92e6-c5f9ed7fe808'),
('964b8765-d671-41b4-b49a-e546a07eeea0', '4dcc4117-fe94-456b-b136-3d395a174a97'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '06435f45-8468-4da7-b700-9654ec3fda9b'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '095b5d59-7810-44b0-a0a3-645252a0e045'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '0c666b42-9548-4239-957d-f5b29d6fe559'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '10b05ca4-aa93-4f0f-bc7a-38357566d3ba'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '260e49ce-3c52-41a3-bb7b-35d53800700b'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '2e39802b-1288-48eb-b8be-0717041c2e9b'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '340c360d-cf37-4c35-9147-4707a878d5a9'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '397c6e9a-705f-44ff-814d-38b4f49bc5ae'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '3bd42ec3-4c12-4231-a2c5-68e21a2912a3'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '46c7560b-9d16-49d4-afd1-fada27370c14'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '5efda08e-3818-43fb-98c0-32e304ba563c'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '642da792-c3c0-4ab8-a064-919f0896f8e2'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '734bfb75-cfd9-4b04-90e2-0fab90af2b00'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '7816a772-e77e-4caa-a907-1da9d3f6c385'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '7ee4616b-f092-4cdd-9a98-8b8e9205e791'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '7ef10bb8-8af5-4e72-9ccb-65482cf0dfef'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '8053563d-00a6-4b8a-ae85-92f6fd637eb6'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '921a52ba-c0a4-4712-949e-afe1c554eb5f'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '93ac8156-e8ca-4bf7-8add-fce3c0063be0'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '94f79dad-9d15-49c5-80ee-fd8afed1d9e9'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', '9aa96806-bbcb-4d0c-8577-4a8fefb35d4f'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'ad006ecc-aad4-4bde-a743-446bb9f60003'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'b510e244-12c8-4fd0-b707-29ae3dc3c2fb'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'b87f9651-b27d-4d7a-92de-45626cd2250c'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'b9a76316-e053-4d64-9630-9bfc278a34cf'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'bbbed336-f421-4b0b-9c78-f68570d8caa3'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'be1f7cff-a51d-4d4a-9ccb-9d534ca73be2'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'beac9613-46ca-4b79-80b8-765c7838d745'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'c2a49800-5a8b-498b-994a-252803a7100e'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'dad95c91-8030-4666-af2f-f998a6c9d85d'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'de85a448-ee5d-4b02-952a-81b0b6bb382e'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'e58194c4-0982-497e-ac46-5037e94b4c43'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'e895dfb1-f2c5-4b92-bdd7-c7f323bbef80'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'e9de5bdc-e2a8-4572-9894-cea1889203af'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'faea0ac8-f49d-4426-851b-3f7534c6cf50'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'fbd304a2-911f-4b1a-8850-dbfaa3d98919'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'feeb14ee-edba-437b-959b-e1cfe14c5a18'),
('cd500688-fe2c-4066-a965-b3b84c250089', '3bb8c2d4-f86c-4e9e-b0c3-94d532500a72'),
('cd500688-fe2c-4066-a965-b3b84c250089', '4ab9f022-04c7-4f56-a685-e4714aa90d31'),
('cd500688-fe2c-4066-a965-b3b84c250089', '5fb8e6a9-edc5-45d0-b29a-3841e8af7e89'),
('cd500688-fe2c-4066-a965-b3b84c250089', '74e77e06-116a-49fd-88a8-c0dbf3013d58'),
('cd500688-fe2c-4066-a965-b3b84c250089', '7c44b9b2-bab0-40d5-9640-b3f4f5af71b0'),
('cd500688-fe2c-4066-a965-b3b84c250089', '8182a697-c744-4331-8bf2-f14ee29d8632'),
('cd500688-fe2c-4066-a965-b3b84c250089', '88978465-1154-4bd9-893b-a9ed250e4931'),
('cd500688-fe2c-4066-a965-b3b84c250089', '8988ac61-bc47-4e6c-8e7d-12f5f3c9ed13'),
('cd500688-fe2c-4066-a965-b3b84c250089', '899c279f-ebd8-4dfa-9069-086ffa43841e'),
('cd500688-fe2c-4066-a965-b3b84c250089', '8bdf114e-19d6-4646-97ad-e3ac8d615426'),
('cd500688-fe2c-4066-a965-b3b84c250089', 'a1e86151-30a2-45b6-a67d-58459a4993ad'),
('cd500688-fe2c-4066-a965-b3b84c250089', 'aa33f708-286b-4878-afbf-c855a117e918'),
('cd500688-fe2c-4066-a965-b3b84c250089', 'af4ef4a6-4ced-4187-9f7a-c0d68fce5a10'),
('cd500688-fe2c-4066-a965-b3b84c250089', 'b35ee1ae-b5a7-4556-bd3c-931a7fcad61b'),
('cd500688-fe2c-4066-a965-b3b84c250089', 'd51b304a-d439-4b60-8396-0d14ab318ec8'),
('cd500688-fe2c-4066-a965-b3b84c250089', 'decccd98-ddb5-4832-a99e-b057a9fc16e6'),
('cd500688-fe2c-4066-a965-b3b84c250089', 'eac5fc8c-926e-4d7f-af02-b83b3f2f48a8'),
('cd500688-fe2c-4066-a965-b3b84c250089', 'eb1caf25-802c-446c-9e0f-7246d838d821'),
('de85a448-ee5d-4b02-952a-81b0b6bb382e', '7ef10bb8-8af5-4e72-9ccb-65482cf0dfef'),
('de85a448-ee5d-4b02-952a-81b0b6bb382e', '9aa96806-bbcb-4d0c-8577-4a8fefb35d4f'),
('e58194c4-0982-497e-ac46-5037e94b4c43', 'beac9613-46ca-4b79-80b8-765c7838d745'),
('fa61fc5e-1b07-433f-916c-1af7bd690ed1', '9a7567f2-832e-491c-997f-0be1caf6c2a1');

-- --------------------------------------------------------

--
-- Table structure for table `CREDENTIAL`
--

CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CREDENTIAL`
--

INSERT INTO `CREDENTIAL` (`ID`, `SALT`, `TYPE`, `USER_ID`, `CREATED_DATE`, `USER_LABEL`, `SECRET_DATA`, `CREDENTIAL_DATA`, `PRIORITY`) VALUES
('abba74fa-9bdd-4b55-9a5c-533fe897029d', NULL, 'password', 'b89fdb86-b9f5-4f3b-98a5-044ae2a59299', 1611230477358, NULL, '{\"value\":\"f/sYLTgaU49euDVn6VFdXRdT53NSYLrYQEsXq//OhrJwOLbh6PFgHp4XUOpC3zyrsqlMjpy2jvjRKFDbok9RWQ==\",\"salt\":\"c5saFSVi4W0zKod5hnkm0g==\"}', '{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\"}', 10),
('c29fb4d1-106f-43a3-9617-c0c1cbbb4ffe', NULL, 'password', '3cd03985-e069-4971-9201-e1aa31ccc8b0', 1611230567942, NULL, '{\"value\":\"r5IsMqE17wTrshnbzO+kmLa+SPAUATgEWz1wI9EF5RZV9W2C/Ps8wmvTrYOyalO03yZfFELS2OjdxrUx1aOs6A==\",\"salt\":\"xqLcLWoK+W2pYfBYX9dzJA==\"}', '{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\"}', 10),
('ee3275b8-870f-449b-90c5-496074689078', NULL, 'password', '3f0b39cb-0a1b-4428-b36f-b8c098126dbd', 1611230538676, NULL, '{\"value\":\"gI7lGJLNUQfn6xcMUtLp0XnOIF3JdaoAj8IogosYZsDg4Q5cFxG5JkJrKZpR7mIG5MxlH346ikZKsiZovvFKDQ==\",\"salt\":\"H1Yjwf5UUIip/deJSkNJ+Q==\"}', '{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\"}', 10);

-- --------------------------------------------------------

--
-- Table structure for table `DATABASECHANGELOG`
--

CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DATABASECHANGELOG`
--

INSERT INTO `DATABASECHANGELOG` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.0.0.Final.xml', '2021-01-21 12:00:46', 1, 'EXECUTED', '7:4e70412f24a3f382c82183742ec79317', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/db2-jpa-changelog-1.0.0.Final.xml', '2021-01-21 12:00:46', 2, 'MARK_RAN', '7:cb16724583e9675711801c6875114f28', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.1.0.Beta1', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Beta1.xml', '2021-01-21 12:00:47', 3, 'EXECUTED', '7:0310eb8ba07cec616460794d42ade0fa', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.1.0.Final', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Final.xml', '2021-01-21 12:00:47', 4, 'EXECUTED', '7:5d25857e708c3233ef4439df1f93f012', 'renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/jpa-changelog-1.2.0.Beta1.xml', '2021-01-21 12:00:48', 5, 'EXECUTED', '7:c7a54a1041d58eb3817a4a883b4d4e84', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.Beta1.xml', '2021-01-21 12:00:48', 6, 'MARK_RAN', '7:2e01012df20974c1c2a605ef8afe25b7', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.2.0.CR1.xml', '2021-01-21 12:00:49', 7, 'EXECUTED', '7:0f08df48468428e0f30ee59a8ec01a41', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.CR1.xml', '2021-01-21 12:00:49', 8, 'MARK_RAN', '7:a77ea2ad226b345e7d689d366f185c8c', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.2.0.Final', 'keycloak', 'META-INF/jpa-changelog-1.2.0.Final.xml', '2021-01-21 12:00:49', 9, 'EXECUTED', '7:a3377a2059aefbf3b90ebb4c4cc8e2ab', 'update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.3.0.xml', '2021-01-21 12:00:50', 10, 'EXECUTED', '7:04c1dbedc2aa3e9756d1a1668e003451', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.4.0.xml', '2021-01-21 12:00:50', 11, 'EXECUTED', '7:36ef39ed560ad07062d956db861042ba', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.4.0', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.4.0.xml', '2021-01-21 12:00:50', 12, 'MARK_RAN', '7:d909180b2530479a716d3f9c9eaea3d7', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.5.0.xml', '2021-01-21 12:00:50', 13, 'EXECUTED', '7:cf12b04b79bea5152f165eb41f3955f6', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.6.1_from15', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2021-01-21 12:00:51', 14, 'EXECUTED', '7:7e32c8f05c755e8675764e7d5f514509', 'addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.6.1_from16-pre', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2021-01-21 12:00:51', 15, 'MARK_RAN', '7:980ba23cc0ec39cab731ce903dd01291', 'delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.6.1_from16', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2021-01-21 12:00:51', 16, 'MARK_RAN', '7:2fa220758991285312eb84f3b4ff5336', 'dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.6.1', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2021-01-21 12:00:51', 17, 'EXECUTED', '7:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.7.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.7.0.xml', '2021-01-21 12:00:51', 18, 'EXECUTED', '7:91ace540896df890cc00a0490ee52bbc', 'createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.8.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.8.0.xml', '2021-01-21 12:00:52', 19, 'EXECUTED', '7:c31d1646dfa2618a9335c00e07f89f24', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.8.0-2', 'keycloak', 'META-INF/jpa-changelog-1.8.0.xml', '2021-01-21 12:00:52', 20, 'EXECUTED', '7:df8bc21027a4f7cbbb01f6344e89ce07', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.8.0', 'mposolda@redhat.com', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2021-01-21 12:00:52', 21, 'MARK_RAN', '7:f987971fe6b37d963bc95fee2b27f8df', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.8.0-2', 'keycloak', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2021-01-21 12:00:52', 22, 'MARK_RAN', '7:df8bc21027a4f7cbbb01f6344e89ce07', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.9.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.9.0.xml', '2021-01-21 12:00:52', 23, 'EXECUTED', '7:ed2dc7f799d19ac452cbcda56c929e47', 'update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.9.1', 'keycloak', 'META-INF/jpa-changelog-1.9.1.xml', '2021-01-21 12:00:53', 24, 'EXECUTED', '7:80b5db88a5dda36ece5f235be8757615', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.9.1', 'keycloak', 'META-INF/db2-jpa-changelog-1.9.1.xml', '2021-01-21 12:00:53', 25, 'MARK_RAN', '7:1437310ed1305a9b93f8848f301726ce', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('1.9.2', 'keycloak', 'META-INF/jpa-changelog-1.9.2.xml', '2021-01-21 12:00:53', 26, 'EXECUTED', '7:b82ffb34850fa0836be16deefc6a87c4', 'createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-2.0.0', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.0.0.xml', '2021-01-21 12:00:55', 27, 'EXECUTED', '7:9cc98082921330d8d9266decdd4bd658', 'createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-2.5.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.5.1.xml', '2021-01-21 12:00:55', 28, 'EXECUTED', '7:03d64aeed9cb52b969bd30a7ac0db57e', 'update tableName=RESOURCE_SERVER_POLICY', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('2.1.0-KEYCLOAK-5461', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.1.0.xml', '2021-01-21 12:00:56', 29, 'EXECUTED', '7:f1f9fd8710399d725b780f463c6b21cd', 'createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('2.2.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.2.0.xml', '2021-01-21 12:00:56', 30, 'EXECUTED', '7:53188c3eb1107546e6f765835705b6c1', 'addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('2.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.3.0.xml', '2021-01-21 12:00:56', 31, 'EXECUTED', '7:d6e6f3bc57a0c5586737d1351725d4d4', 'createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('2.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.4.0.xml', '2021-01-21 12:00:56', 32, 'EXECUTED', '7:454d604fbd755d9df3fd9c6329043aa5', 'customChange', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('2.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2021-01-21 12:00:56', 33, 'EXECUTED', '7:57e98a3077e29caf562f7dbf80c72600', 'customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('2.5.0-unicode-oracle', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2021-01-21 12:00:56', 34, 'MARK_RAN', '7:e4c7e8f2256210aee71ddc42f538b57a', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('2.5.0-unicode-other-dbs', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2021-01-21 12:00:57', 35, 'EXECUTED', '7:09a43c97e49bc626460480aa1379b522', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('2.5.0-duplicate-email-support', 'slawomir@dabek.name', 'META-INF/jpa-changelog-2.5.0.xml', '2021-01-21 12:00:57', 36, 'EXECUTED', '7:26bfc7c74fefa9126f2ce702fb775553', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('2.5.0-unique-group-names', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2021-01-21 12:00:57', 37, 'EXECUTED', '7:a161e2ae671a9020fff61e996a207377', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('2.5.1', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.1.xml', '2021-01-21 12:00:57', 38, 'EXECUTED', '7:37fc1781855ac5388c494f1442b3f717', 'addColumn tableName=FED_USER_CONSENT', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.0.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-3.0.0.xml', '2021-01-21 12:00:57', 39, 'EXECUTED', '7:13a27db0dae6049541136adad7261d27', 'addColumn tableName=IDENTITY_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.2.0-fix', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2021-01-21 12:00:57', 40, 'MARK_RAN', '7:550300617e3b59e8af3a6294df8248a3', 'addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.2.0-fix-with-keycloak-5416', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2021-01-21 12:00:57', 41, 'MARK_RAN', '7:e3a9482b8931481dc2772a5c07c44f17', 'dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.2.0-fix-offline-sessions', 'hmlnarik', 'META-INF/jpa-changelog-3.2.0.xml', '2021-01-21 12:00:57', 42, 'EXECUTED', '7:72b07d85a2677cb257edb02b408f332d', 'customChange', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.2.0-fixed', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2021-01-21 12:00:59', 43, 'EXECUTED', '7:a72a7858967bd414835d19e04d880312', 'addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.3.0', 'keycloak', 'META-INF/jpa-changelog-3.3.0.xml', '2021-01-21 12:00:59', 44, 'EXECUTED', '7:94edff7cf9ce179e7e85f0cd78a3cf2c', 'addColumn tableName=USER_ENTITY', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-3.4.0.CR1-resource-server-pk-change-part1', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2021-01-21 12:00:59', 45, 'EXECUTED', '7:6a48ce645a3525488a90fbf76adf3bb3', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2021-01-21 12:00:59', 46, 'EXECUTED', '7:e64b5dcea7db06077c6e57d3b9e5ca14', 'customChange', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2021-01-21 12:00:59', 47, 'MARK_RAN', '7:fd8cf02498f8b1e72496a20afc75178c', 'dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2021-01-21 12:01:00', 48, 'EXECUTED', '7:542794f25aa2b1fbabb7e577d6646319', 'addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authn-3.4.0.CR1-refresh-token-max-reuse', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2021-01-21 12:01:00', 49, 'EXECUTED', '7:edad604c882df12f74941dac3cc6d650', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.4.0', 'keycloak', 'META-INF/jpa-changelog-3.4.0.xml', '2021-01-21 12:01:01', 50, 'EXECUTED', '7:0f88b78b7b46480eb92690cbf5e44900', 'addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.4.0-KEYCLOAK-5230', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-3.4.0.xml', '2021-01-21 12:01:01', 51, 'EXECUTED', '7:d560e43982611d936457c327f872dd59', 'createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.4.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-3.4.1.xml', '2021-01-21 12:01:01', 52, 'EXECUTED', '7:c155566c42b4d14ef07059ec3b3bbd8e', 'modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.4.2', 'keycloak', 'META-INF/jpa-changelog-3.4.2.xml', '2021-01-21 12:01:01', 53, 'EXECUTED', '7:b40376581f12d70f3c89ba8ddf5b7dea', 'update tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('3.4.2-KEYCLOAK-5172', 'mkanis@redhat.com', 'META-INF/jpa-changelog-3.4.2.xml', '2021-01-21 12:01:01', 54, 'EXECUTED', '7:a1132cc395f7b95b3646146c2e38f168', 'update tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.0.0-KEYCLOAK-6335', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2021-01-21 12:01:01', 55, 'EXECUTED', '7:d8dc5d89c789105cfa7ca0e82cba60af', 'createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.0.0-CLEANUP-UNUSED-TABLE', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2021-01-21 12:01:01', 56, 'EXECUTED', '7:7822e0165097182e8f653c35517656a3', 'dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.0.0-KEYCLOAK-6228', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2021-01-21 12:01:02', 57, 'EXECUTED', '7:c6538c29b9c9a08f9e9ea2de5c2b6375', 'dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.0.0-KEYCLOAK-5579-fixed', 'mposolda@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2021-01-21 12:01:03', 58, 'EXECUTED', '7:6d4893e36de22369cf73bcb051ded875', 'dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-4.0.0.CR1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.CR1.xml', '2021-01-21 12:01:04', 59, 'EXECUTED', '7:57960fc0b0f0dd0563ea6f8b2e4a1707', 'createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-4.0.0.Beta3', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.Beta3.xml', '2021-01-21 12:01:04', 60, 'EXECUTED', '7:2b4b8bff39944c7097977cc18dbceb3b', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-4.2.0.Final', 'mhajas@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2021-01-21 12:01:04', 61, 'EXECUTED', '7:2aa42a964c59cd5b8ca9822340ba33a8', 'createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-4.2.0.Final-KEYCLOAK-9944', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2021-01-21 12:01:04', 62, 'EXECUTED', '7:9ac9e58545479929ba23f4a3087a0346', 'addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.2.0-KEYCLOAK-6313', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.2.0.xml', '2021-01-21 12:01:04', 63, 'EXECUTED', '7:14d407c35bc4fe1976867756bcea0c36', 'addColumn tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.3.0-KEYCLOAK-7984', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.3.0.xml', '2021-01-21 12:01:04', 64, 'EXECUTED', '7:241a8030c748c8548e346adee548fa93', 'update tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.6.0-KEYCLOAK-7950', 'psilva@redhat.com', 'META-INF/jpa-changelog-4.6.0.xml', '2021-01-21 12:01:04', 65, 'EXECUTED', '7:7d3182f65a34fcc61e8d23def037dc3f', 'update tableName=RESOURCE_SERVER_RESOURCE', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.6.0-KEYCLOAK-8377', 'keycloak', 'META-INF/jpa-changelog-4.6.0.xml', '2021-01-21 12:01:04', 66, 'EXECUTED', '7:b30039e00a0b9715d430d1b0636728fa', 'createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.6.0-KEYCLOAK-8555', 'gideonray@gmail.com', 'META-INF/jpa-changelog-4.6.0.xml', '2021-01-21 12:01:04', 67, 'EXECUTED', '7:3797315ca61d531780f8e6f82f258159', 'createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.7.0-KEYCLOAK-1267', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.7.0.xml', '2021-01-21 12:01:04', 68, 'EXECUTED', '7:c7aa4c8d9573500c2d347c1941ff0301', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.7.0-KEYCLOAK-7275', 'keycloak', 'META-INF/jpa-changelog-4.7.0.xml', '2021-01-21 12:01:04', 69, 'EXECUTED', '7:b207faee394fc074a442ecd42185a5dd', 'renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('4.8.0-KEYCLOAK-8835', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.8.0.xml', '2021-01-21 12:01:04', 70, 'EXECUTED', '7:ab9a9762faaba4ddfa35514b212c4922', 'addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('authz-7.0.0-KEYCLOAK-10443', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-7.0.0.xml', '2021-01-21 12:01:04', 71, 'EXECUTED', '7:b9710f74515a6ccb51b72dc0d19df8c4', 'addColumn tableName=RESOURCE_SERVER', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('8.0.0-adding-credential-columns', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2021-01-21 12:01:05', 72, 'EXECUTED', '7:ec9707ae4d4f0b7452fee20128083879', 'addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('8.0.0-updating-credential-data-not-oracle', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2021-01-21 12:01:05', 73, 'EXECUTED', '7:03b3f4b264c3c68ba082250a80b74216', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('8.0.0-updating-credential-data-oracle', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2021-01-21 12:01:05', 74, 'MARK_RAN', '7:64c5728f5ca1f5aa4392217701c4fe23', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('8.0.0-credential-cleanup-fixed', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2021-01-21 12:01:05', 75, 'EXECUTED', '7:b48da8c11a3d83ddd6b7d0c8c2219345', 'dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('8.0.0-resource-tag-support', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2021-01-21 12:01:05', 76, 'EXECUTED', '7:a73379915c23bfad3e8f5c6d5c0aa4bd', 'addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('9.0.0-always-display-client', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2021-01-21 12:01:05', 77, 'EXECUTED', '7:39e0073779aba192646291aa2332493d', 'addColumn tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('9.0.0-drop-constraints-for-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2021-01-21 12:01:05', 78, 'MARK_RAN', '7:81f87368f00450799b4bf42ea0b3ec34', 'dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('9.0.0-increase-column-size-federated-fk', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2021-01-21 12:01:06', 79, 'EXECUTED', '7:20b37422abb9fb6571c618148f013a15', 'modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('9.0.0-recreate-constraints-after-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2021-01-21 12:01:06', 80, 'MARK_RAN', '7:1970bb6cfb5ee800736b95ad3fb3c78a', 'addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('9.0.1-add-index-to-client.client_id', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2021-01-21 12:01:06', 81, 'EXECUTED', '7:45d9b25fc3b455d522d8dcc10a0f4c80', 'createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('9.0.1-KEYCLOAK-12579-drop-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2021-01-21 12:01:06', 82, 'MARK_RAN', '7:890ae73712bc187a66c2813a724d037f', 'dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('9.0.1-KEYCLOAK-12579-add-not-null-constraint', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2021-01-21 12:01:06', 83, 'EXECUTED', '7:0a211980d27fafe3ff50d19a3a29b538', 'addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('9.0.1-KEYCLOAK-12579-recreate-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2021-01-21 12:01:06', 84, 'MARK_RAN', '7:a161e2ae671a9020fff61e996a207377', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1230444274'),
('9.0.1-add-index-to-events', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2021-01-21 12:01:06', 85, 'EXECUTED', '7:01c49302201bdf815b0a18d1f98a55dc', 'createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY', '', NULL, '3.5.4', NULL, NULL, '1230444274');

-- --------------------------------------------------------

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

INSERT INTO `DATABASECHANGELOGLOCK` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL),
(1000, b'0', NULL, NULL),
(1001, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DEFAULT_CLIENT_SCOPE`
--

CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

INSERT INTO `DEFAULT_CLIENT_SCOPE` (`REALM_ID`, `SCOPE_ID`, `DEFAULT_SCOPE`) VALUES
('master', '08b2c42f-49d1-4b5e-b38a-7252f10d5785', b'1'),
('master', '1a5d23e3-6e47-4d69-8997-a79bb929e6b5', b'0'),
('master', '241d9284-e21d-4458-8c9c-84a1bf7df572', b'0'),
('master', '3816082b-deae-481b-aaab-1d47f1dbc5d0', b'1'),
('master', '47d1b217-3a3d-4faf-95f4-c0b061e85f0d', b'1'),
('master', '4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5', b'0'),
('master', 'ce6d53a0-0ca8-4e42-84e1-40936fddc117', b'1'),
('master', 'df8f3379-70d5-4448-9e3f-292310b479e9', b'1'),
('master', 'eebba4a3-880d-4f0c-9968-6316aeda7131', b'0'),
('user-authentication', '10dad6ec-d294-44d6-9487-437d81f99f8d', b'0'),
('user-authentication', '32e3ad76-74be-4b29-b649-6498d7e4574d', b'0'),
('user-authentication', '37ea066e-ef29-4add-9165-94b7b0bc77e2', b'1'),
('user-authentication', '3822b8e6-3c5e-4f7b-af23-91d462ac7ded', b'1'),
('user-authentication', '6d7dc4f7-6c91-4929-b595-8f0760df086a', b'1'),
('user-authentication', '96cc680c-5eeb-4bd5-95ab-b4feb2e66303', b'1'),
('user-authentication', 'a21ff95f-adc0-4847-8dfe-43d3264a287e', b'1'),
('user-authentication', 'bcdc3bef-45f0-4299-808e-d90f7201cfeb', b'0'),
('user-authentication', 'ff14b976-9cbb-4ec2-83f6-3063fee95307', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `EVENT_ENTITY`
--

CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` varchar(2550) DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint(20) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FEDERATED_IDENTITY`
--

CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
  `USER_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FEDERATED_USER`
--

CREATE TABLE `FEDERATED_USER` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FED_USER_ATTRIBUTE`
--

CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` varchar(2024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FED_USER_CONSENT`
--

CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FED_USER_CONSENT_CL_SCOPE`
--

CREATE TABLE `FED_USER_CONSENT_CL_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FED_USER_CREDENTIAL`
--

CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FED_USER_GROUP_MEMBERSHIP`
--

CREATE TABLE `FED_USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FED_USER_REQUIRED_ACTION`
--

CREATE TABLE `FED_USER_REQUIRED_ACTION` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FED_USER_ROLE_MAPPING`
--

CREATE TABLE `FED_USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GROUP_ATTRIBUTE`
--

CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GROUP_ROLE_MAPPING`
--

CREATE TABLE `GROUP_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IDENTITY_PROVIDER`
--

CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `AUTHENTICATE_BY_DEFAULT` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` bit(1) NOT NULL DEFAULT b'1',
  `TRUST_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IDENTITY_PROVIDER_CONFIG`
--

CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IDENTITY_PROVIDER_MAPPER`
--

CREATE TABLE `IDENTITY_PROVIDER_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IDP_MAPPER_CONFIG`
--

CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `KEYCLOAK_GROUP`
--

CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `KEYCLOAK_ROLE`
--

CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` bit(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `KEYCLOAK_ROLE`
--

INSERT INTO `KEYCLOAK_ROLE` (`ID`, `CLIENT_REALM_CONSTRAINT`, `CLIENT_ROLE`, `DESCRIPTION`, `NAME`, `REALM_ID`, `CLIENT`, `REALM`) VALUES
('06435f45-8468-4da7-b700-9654ec3fda9b', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_view-identity-providers}', 'view-identity-providers', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('095b5d59-7810-44b0-a0a3-645252a0e045', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_view-realm}', 'view-realm', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('0c666b42-9548-4239-957d-f5b29d6fe559', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_manage-realm}', 'manage-realm', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('10b05ca4-aa93-4f0f-bc7a-38357566d3ba', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_create-client}', 'create-client', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('260e49ce-3c52-41a3-bb7b-35d53800700b', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_manage-clients}', 'manage-clients', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('281d7435-4f99-4c71-9ad1-a020cb16346e', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', b'1', '${role_manage-consent}', 'manage-consent', 'user-authentication', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', NULL),
('2a34f784-b589-4916-8f9d-c326cb3486af', '9697b092-4eed-47b2-ae7e-6140c92ba8e5', b'1', '${role_read-token}', 'read-token', 'master', '9697b092-4eed-47b2-ae7e-6140c92ba8e5', NULL),
('2cfba5c8-fe75-4430-a19a-3540bb233524', 'user-authentication', b'0', 'This role amulets the member\'s permission.', 'member', 'user-authentication', NULL, 'user-authentication'),
('2e39802b-1288-48eb-b8be-0717041c2e9b', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_create-client}', 'create-client', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('30e25665-437b-4004-bc41-22cb574cbe88', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', b'1', '${role_view-profile}', 'view-profile', 'master', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', NULL),
('340c360d-cf37-4c35-9147-4707a878d5a9', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_view-users}', 'view-users', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('397c6e9a-705f-44ff-814d-38b4f49bc5ae', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_query-groups}', 'query-groups', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('3bb8c2d4-f86c-4e9e-b0c3-94d532500a72', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_view-realm}', 'view-realm', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('3bd42ec3-4c12-4231-a2c5-68e21a2912a3', 'master', b'0', '${role_create-realm}', 'create-realm', 'master', NULL, 'master'),
('46c7560b-9d16-49d4-afd1-fada27370c14', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_manage-authorization}', 'manage-authorization', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('4ab9f022-04c7-4f56-a685-e4714aa90d31', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_view-users}', 'view-users', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('4bd62c62-f5d7-4af8-85ab-2ffa8cdcbe13', 'master', b'0', '${role_offline-access}', 'offline_access', 'master', NULL, 'master'),
('4dcc4117-fe94-456b-b136-3d395a174a97', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', b'1', '${role_view-consent}', 'view-consent', 'master', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', NULL),
('58496286-0658-4a9c-92e6-c5f9ed7fe808', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', b'1', '${role_manage-account-links}', 'manage-account-links', 'user-authentication', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', NULL),
('58df2014-f7bd-4aac-a35c-5067f7c1ba51', '40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', b'1', '${role_read-token}', 'read-token', 'user-authentication', '40b58b10-b5a6-4b84-a2fb-e66fa422d1ab', NULL),
('5a0bdd90-2ad1-4322-9ca2-e5e89fa5834d', 'master', b'0', '${role_uma_authorization}', 'uma_authorization', 'master', NULL, 'master'),
('5efda08e-3818-43fb-98c0-32e304ba563c', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_impersonation}', 'impersonation', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('5fb8e6a9-edc5-45d0-b29a-3841e8af7e89', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_query-realms}', 'query-realms', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('633af178-e78b-48c8-9597-3160620f3c57', 'user-authentication', b'0', '${role_uma_authorization}', 'uma_authorization', 'user-authentication', NULL, 'user-authentication'),
('642da792-c3c0-4ab8-a064-919f0896f8e2', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_manage-authorization}', 'manage-authorization', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('65ea9797-4b0f-4999-ab41-529c0d483022', 'user-authentication', b'0', '${role_offline-access}', 'offline_access', 'user-authentication', NULL, 'user-authentication'),
('695a6fc3-6969-4684-b8b1-715fc75c782d', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', b'1', '${role_view-profile}', 'view-profile', 'user-authentication', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', NULL),
('7092087e-28b2-4305-a96c-006411edff47', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', b'1', '${role_view-consent}', 'view-consent', 'user-authentication', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', NULL),
('734bfb75-cfd9-4b04-90e2-0fab90af2b00', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_view-clients}', 'view-clients', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('74e77e06-116a-49fd-88a8-c0dbf3013d58', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_view-authorization}', 'view-authorization', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('7816a772-e77e-4caa-a907-1da9d3f6c385', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_query-users}', 'query-users', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('7c44b9b2-bab0-40d5-9640-b3f4f5af71b0', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_manage-clients}', 'manage-clients', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('7ee4616b-f092-4cdd-9a98-8b8e9205e791', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_manage-users}', 'manage-users', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('7ef10bb8-8af5-4e72-9ccb-65482cf0dfef', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_query-users}', 'query-users', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('8053563d-00a6-4b8a-ae85-92f6fd637eb6', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_manage-events}', 'manage-events', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('8182a697-c744-4331-8bf2-f14ee29d8632', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_manage-users}', 'manage-users', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('88978465-1154-4bd9-893b-a9ed250e4931', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_manage-realm}', 'manage-realm', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('8988ac61-bc47-4e6c-8e7d-12f5f3c9ed13', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_manage-identity-providers}', 'manage-identity-providers', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('899c279f-ebd8-4dfa-9069-086ffa43841e', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_impersonation}', 'impersonation', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('8bdf114e-19d6-4646-97ad-e3ac8d615426', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_view-clients}', 'view-clients', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('8d380b16-5d81-4201-9e8d-7cba22963840', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', b'1', '${role_manage-account}', 'manage-account', 'user-authentication', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', NULL),
('921a52ba-c0a4-4712-949e-afe1c554eb5f', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_manage-users}', 'manage-users', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('93ac8156-e8ca-4bf7-8add-fce3c0063be0', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_manage-identity-providers}', 'manage-identity-providers', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('94f79dad-9d15-49c5-80ee-fd8afed1d9e9', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_impersonation}', 'impersonation', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('964b8765-d671-41b4-b49a-e546a07eeea0', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', b'1', '${role_manage-consent}', 'manage-consent', 'master', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', NULL),
('9a7567f2-832e-491c-997f-0be1caf6c2a1', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', b'1', '${role_manage-account-links}', 'manage-account-links', 'master', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', NULL),
('9aa96806-bbcb-4d0c-8577-4a8fefb35d4f', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_query-groups}', 'query-groups', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('a1e86151-30a2-45b6-a67d-58459a4993ad', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_manage-events}', 'manage-events', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'master', b'0', '${role_admin}', 'admin', 'master', NULL, 'master'),
('aa33f708-286b-4878-afbf-c855a117e918', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_query-clients}', 'query-clients', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('ad006ecc-aad4-4bde-a743-446bb9f60003', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_manage-realm}', 'manage-realm', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('af4ef4a6-4ced-4187-9f7a-c0d68fce5a10', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_query-users}', 'query-users', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('b35ee1ae-b5a7-4556-bd3c-931a7fcad61b', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_manage-authorization}', 'manage-authorization', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('b510e244-12c8-4fd0-b707-29ae3dc3c2fb', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_manage-events}', 'manage-events', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('b87f9651-b27d-4d7a-92de-45626cd2250c', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_manage-clients}', 'manage-clients', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('b9a76316-e053-4d64-9630-9bfc278a34cf', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_manage-identity-providers}', 'manage-identity-providers', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('bbbed336-f421-4b0b-9c78-f68570d8caa3', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_view-identity-providers}', 'view-identity-providers', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('be1f7cff-a51d-4d4a-9ccb-9d534ca73be2', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_query-realms}', 'query-realms', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('beac9613-46ca-4b79-80b8-765c7838d745', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_query-clients}', 'query-clients', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('c2a49800-5a8b-498b-994a-252803a7100e', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_view-events}', 'view-events', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('cd500688-fe2c-4066-a965-b3b84c250089', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_realm-admin}', 'realm-admin', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('d1fbde29-c15f-4913-89fb-acfd4c047b29', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', b'1', '${role_view-applications}', 'view-applications', 'user-authentication', '13388dce-30ee-4ecd-863f-b41a74fd6d2a', NULL),
('d51b304a-d439-4b60-8396-0d14ab318ec8', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_query-groups}', 'query-groups', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('d903d8bc-c7ef-4de8-a8cd-579493decaee', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', b'1', '${role_view-applications}', 'view-applications', 'master', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', NULL),
('dad95c91-8030-4666-af2f-f998a6c9d85d', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_view-realm}', 'view-realm', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('de85a448-ee5d-4b02-952a-81b0b6bb382e', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_view-users}', 'view-users', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('decccd98-ddb5-4832-a99e-b057a9fc16e6', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_view-identity-providers}', 'view-identity-providers', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('e58194c4-0982-497e-ac46-5037e94b4c43', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_view-clients}', 'view-clients', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('e895dfb1-f2c5-4b92-bdd7-c7f323bbef80', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_view-authorization}', 'view-authorization', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('e9de5bdc-e2a8-4572-9894-cea1889203af', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', b'1', '${role_view-events}', 'view-events', 'master', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', NULL),
('eac5fc8c-926e-4d7f-af02-b83b3f2f48a8', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_create-client}', 'create-client', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('eb1caf25-802c-446c-9e0f-7246d838d821', 'f6e73c61-a638-41b0-ad5c-97938399edc0', b'1', '${role_view-events}', 'view-events', 'user-authentication', 'f6e73c61-a638-41b0-ad5c-97938399edc0', NULL),
('eee62a06-f60e-4ef8-954a-98dfeb869976', 'user-authentication', b'0', 'This role amulets the admin permission.', 'admin', 'user-authentication', NULL, 'user-authentication'),
('fa61fc5e-1b07-433f-916c-1af7bd690ed1', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', b'1', '${role_manage-account}', 'manage-account', 'master', 'c3a6265c-7208-4762-b8cb-b2240edc46c9', NULL),
('faea0ac8-f49d-4426-851b-3f7534c6cf50', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_query-realms}', 'query-realms', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('fbd304a2-911f-4b1a-8850-dbfaa3d98919', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_view-authorization}', 'view-authorization', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL),
('feeb14ee-edba-437b-959b-e1cfe14c5a18', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', b'1', '${role_query-clients}', 'query-clients', 'master', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `MIGRATION_MODEL`
--

CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MIGRATION_MODEL`
--

INSERT INTO `MIGRATION_MODEL` (`ID`, `VERSION`, `UPDATE_TIME`) VALUES
('z6izw', '9.0.2', 1611230470);

-- --------------------------------------------------------

--
-- Table structure for table `OFFLINE_CLIENT_SESSION`
--

CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL DEFAULT '',
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `DATA` longtext,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `OFFLINE_USER_SESSION`
--

CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int(11) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext,
  `LAST_SESSION_REFRESH` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `POLICY_CONFIG`
--

CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PROTOCOL_MAPPER`
--

CREATE TABLE `PROTOCOL_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PROTOCOL_MAPPER`
--

INSERT INTO `PROTOCOL_MAPPER` (`ID`, `NAME`, `PROTOCOL`, `PROTOCOL_MAPPER_NAME`, `CLIENT_ID`, `CLIENT_SCOPE_ID`) VALUES
('01906218-e4f6-4189-977b-167ed8a89919', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '241d9284-e21d-4458-8c9c-84a1bf7df572'),
('03ae76ff-42d3-4bf7-9469-12a2ee7a8d3f', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('0677d6d0-9b2b-472c-ba01-7d57f4e3b4c0', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('071a4323-5c1e-4592-83f2-4081d116bca6', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('12d710dd-e5cf-4214-9345-0668a6dbc23b', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '3822b8e6-3c5e-4f7b-af23-91d462ac7ded'),
('14a8aa1c-520d-43bd-9b4d-e569fd8bd3fb', 'medical-roles', 'openid-connect', 'oidc-usermodel-attribute-mapper', 'dd93430b-5fc4-4269-899d-672cb476154e', NULL),
('173b0a49-d1fd-40b1-a67c-1eb4ed17f775', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('1a53e0c1-0a49-49c0-abf1-d0744ac6d077', 'role list', 'saml', 'saml-role-list-mapper', NULL, 'a21ff95f-adc0-4847-8dfe-43d3264a287e'),
('22b3230a-57b7-40ea-9b6c-664a4bb718e4', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, '96cc680c-5eeb-4bd5-95ab-b4feb2e66303'),
('33393b51-f66e-4533-b5b0-3ead0e48351e', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('343d45cd-0c1c-4f72-b8c4-48641a89c6f3', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('37961abf-a83f-46e1-bead-d0c2f074628b', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('39337d85-e83f-4982-8d4d-63301624ee2b', 'address', 'openid-connect', 'oidc-address-mapper', NULL, '1a5d23e3-6e47-4d69-8997-a79bb929e6b5'),
('44270204-afb3-42f8-bdef-ad181a84cd57', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'ce6d53a0-0ca8-4e42-84e1-40936fddc117'),
('4433ab7e-b092-4359-8f71-8bdef652b4f8', 'family name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('44375adf-0aea-4205-b2b9-6013a5354fe9', 'username', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('448cf94a-26ef-4886-a0e3-3a1c9d22f08c', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('47a65e86-feaf-44e0-bd92-850b75245d15', 'address', 'openid-connect', 'oidc-address-mapper', NULL, 'ff14b976-9cbb-4ec2-83f6-3063fee95307'),
('4885e304-a93b-446f-8525-24b351b59e1b', 'given name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('4eddb4d7-bd47-4855-971b-7a1f47af6d77', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '32e3ad76-74be-4b29-b649-6498d7e4574d'),
('569cc494-d46a-4e51-bbd7-14ca9ea78685', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('5bd31680-37a0-4705-aa95-d393376de909', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '32e3ad76-74be-4b29-b649-6498d7e4574d'),
('5d2ef712-5696-4e71-8895-949a65fa010d', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('6580d649-aaab-4d65-8c01-944b24ebbc4e', 'family name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('6651ddb2-f610-485f-be4f-0cb546d4e9da', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '08b2c42f-49d1-4b5e-b38a-7252f10d5785'),
('6e8ef7cd-6cc3-4038-bddb-39d097f6236e', 'email', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '37ea066e-ef29-4add-9165-94b7b0bc77e2'),
('777d2c16-db27-43df-b3bc-5a3dd0752692', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, '3822b8e6-3c5e-4f7b-af23-91d462ac7ded'),
('77bf7831-4abf-4596-afa7-9b60748c51fe', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('7d102c57-d6e5-48e7-9f1c-b67312e25451', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, 'df8f3379-70d5-4448-9e3f-292310b479e9'),
('81d79ebb-9ba0-4d7c-9a15-a32a3f2b2403', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, '08b2c42f-49d1-4b5e-b38a-7252f10d5785'),
('838f41e1-c044-43c6-bf93-4295cb30d637', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('90e35378-e1d5-44dd-8070-2794ef1aa6c9', 'DOB', 'openid-connect', 'oidc-usermodel-attribute-mapper', 'dd93430b-5fc4-4269-899d-672cb476154e', NULL),
('91d740c9-de1c-43f5-9209-79c817e913d3', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('91eb19f9-b005-4793-829d-062f45643b4d', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '37ea066e-ef29-4add-9165-94b7b0bc77e2'),
('97b5fbf0-f713-4bca-be1c-172d979c0d4d', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('9e62383a-f765-4481-93cc-e20cb88d7b50', 'ambulance-crew-id', 'openid-connect', 'oidc-usermodel-attribute-mapper', 'dd93430b-5fc4-4269-899d-672cb476154e', NULL),
('a5afc7dd-1421-435c-b3b4-43ead87e7676', 'email', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'ce6d53a0-0ca8-4e42-84e1-40936fddc117'),
('a6b8c204-36ab-4eff-a09c-458cb2af7bd4', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5'),
('a9ca03f0-4e75-4b8b-a660-ae8798b567b9', 'upn', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'bcdc3bef-45f0-4299-808e-d90f7201cfeb'),
('aab4d6a8-d44c-44a9-af17-f730822d3e44', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('af4e3822-0e54-4a52-be8a-02586faccd8f', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('b02fd5fd-8e54-4551-868d-2a1e57d49cab', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('b331bb1b-17f6-4de1-a9aa-6f3229e8d724', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, '3822b8e6-3c5e-4f7b-af23-91d462ac7ded'),
('b5857eeb-d1e2-45c0-a923-976f9d7a3165', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('bdb4f0be-dcec-4396-a89a-af73a7d8b8c2', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, 'bcdc3bef-45f0-4299-808e-d90f7201cfeb'),
('cf8468f9-ba3c-466d-aa58-411ad78db840', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '241d9284-e21d-4458-8c9c-84a1bf7df572'),
('d04399d4-8aa3-492a-a4e4-5385af294b62', 'username', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('d8abb8f6-9a69-4875-9984-86c328e1988d', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('e2e9a94f-1091-4f74-a621-66772eea5bdb', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', '6bbeacd7-5a4f-48cf-bc1b-883815f24997', NULL),
('e5521412-2033-4b1c-8a75-60cf237d1363', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, '08b2c42f-49d1-4b5e-b38a-7252f10d5785'),
('e85415b7-4ee4-41ec-b2aa-89cd039c4c54', 'upn', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '4a3cb95a-3cef-4654-a827-7ecd1f2fd6d5'),
('e9ce24ae-6ec2-496b-be08-a2ec63510545', 'given name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('ec1ba13c-9b3b-4d6c-9cd6-14207f1a2af1', 'role list', 'saml', 'saml-role-list-mapper', NULL, '3816082b-deae-481b-aaab-1d47f1dbc5d0'),
('eccc5d2d-fafa-45eb-a206-501846781ed0', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', '67d4cec4-2ff5-4919-bb25-247374b8d742', NULL),
('ee168cc2-ba52-40da-b6cb-173e42aeb19d', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', '86cae607-1818-46da-94af-8cfb79cfa88a', NULL),
('ee7b3b56-eb68-4904-b776-2277e3d191de', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '47d1b217-3a3d-4faf-95f4-c0b061e85f0d'),
('ef4588dc-07c9-415d-9b11-20470d388b6f', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', '59c6af7f-2c6d-4212-9ff3-3f0ab3850834', NULL),
('fa2d323f-1bb9-4e4d-8a6c-1194ba78e6cb', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a'),
('ffb96ff1-c8b2-4fdf-8abe-3748b0ef273c', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '6d7dc4f7-6c91-4929-b595-8f0760df086a');

-- --------------------------------------------------------

--
-- Table structure for table `PROTOCOL_MAPPER_CONFIG`
--

CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

INSERT INTO `PROTOCOL_MAPPER_CONFIG` (`PROTOCOL_MAPPER_ID`, `VALUE`, `NAME`) VALUES
('01906218-e4f6-4189-977b-167ed8a89919', 'true', 'access.token.claim'),
('01906218-e4f6-4189-977b-167ed8a89919', 'phone_number', 'claim.name'),
('01906218-e4f6-4189-977b-167ed8a89919', 'true', 'id.token.claim'),
('01906218-e4f6-4189-977b-167ed8a89919', 'String', 'jsonType.label'),
('01906218-e4f6-4189-977b-167ed8a89919', 'phoneNumber', 'user.attribute'),
('01906218-e4f6-4189-977b-167ed8a89919', 'true', 'userinfo.token.claim'),
('03ae76ff-42d3-4bf7-9469-12a2ee7a8d3f', 'true', 'access.token.claim'),
('03ae76ff-42d3-4bf7-9469-12a2ee7a8d3f', 'website', 'claim.name'),
('03ae76ff-42d3-4bf7-9469-12a2ee7a8d3f', 'true', 'id.token.claim'),
('03ae76ff-42d3-4bf7-9469-12a2ee7a8d3f', 'String', 'jsonType.label'),
('03ae76ff-42d3-4bf7-9469-12a2ee7a8d3f', 'website', 'user.attribute'),
('03ae76ff-42d3-4bf7-9469-12a2ee7a8d3f', 'true', 'userinfo.token.claim'),
('0677d6d0-9b2b-472c-ba01-7d57f4e3b4c0', 'true', 'access.token.claim'),
('0677d6d0-9b2b-472c-ba01-7d57f4e3b4c0', 'picture', 'claim.name'),
('0677d6d0-9b2b-472c-ba01-7d57f4e3b4c0', 'true', 'id.token.claim'),
('0677d6d0-9b2b-472c-ba01-7d57f4e3b4c0', 'String', 'jsonType.label'),
('0677d6d0-9b2b-472c-ba01-7d57f4e3b4c0', 'picture', 'user.attribute'),
('0677d6d0-9b2b-472c-ba01-7d57f4e3b4c0', 'true', 'userinfo.token.claim'),
('071a4323-5c1e-4592-83f2-4081d116bca6', 'true', 'access.token.claim'),
('071a4323-5c1e-4592-83f2-4081d116bca6', 'gender', 'claim.name'),
('071a4323-5c1e-4592-83f2-4081d116bca6', 'true', 'id.token.claim'),
('071a4323-5c1e-4592-83f2-4081d116bca6', 'String', 'jsonType.label'),
('071a4323-5c1e-4592-83f2-4081d116bca6', 'gender', 'user.attribute'),
('071a4323-5c1e-4592-83f2-4081d116bca6', 'true', 'userinfo.token.claim'),
('12d710dd-e5cf-4214-9345-0668a6dbc23b', 'true', 'access.token.claim'),
('12d710dd-e5cf-4214-9345-0668a6dbc23b', 'realm_access.roles', 'claim.name'),
('12d710dd-e5cf-4214-9345-0668a6dbc23b', 'String', 'jsonType.label'),
('12d710dd-e5cf-4214-9345-0668a6dbc23b', 'true', 'multivalued'),
('12d710dd-e5cf-4214-9345-0668a6dbc23b', 'foo', 'user.attribute'),
('14a8aa1c-520d-43bd-9b4d-e569fd8bd3fb', 'true', 'access.token.claim'),
('14a8aa1c-520d-43bd-9b4d-e569fd8bd3fb', 'medical-roles', 'claim.name'),
('14a8aa1c-520d-43bd-9b4d-e569fd8bd3fb', 'true', 'id.token.claim'),
('14a8aa1c-520d-43bd-9b4d-e569fd8bd3fb', 'String', 'jsonType.label'),
('14a8aa1c-520d-43bd-9b4d-e569fd8bd3fb', 'medical-roles', 'user.attribute'),
('14a8aa1c-520d-43bd-9b4d-e569fd8bd3fb', 'true', 'userinfo.token.claim'),
('173b0a49-d1fd-40b1-a67c-1eb4ed17f775', 'true', 'access.token.claim'),
('173b0a49-d1fd-40b1-a67c-1eb4ed17f775', 'locale', 'claim.name'),
('173b0a49-d1fd-40b1-a67c-1eb4ed17f775', 'true', 'id.token.claim'),
('173b0a49-d1fd-40b1-a67c-1eb4ed17f775', 'String', 'jsonType.label'),
('173b0a49-d1fd-40b1-a67c-1eb4ed17f775', 'locale', 'user.attribute'),
('173b0a49-d1fd-40b1-a67c-1eb4ed17f775', 'true', 'userinfo.token.claim'),
('1a53e0c1-0a49-49c0-abf1-d0744ac6d077', 'Role', 'attribute.name'),
('1a53e0c1-0a49-49c0-abf1-d0744ac6d077', 'Basic', 'attribute.nameformat'),
('1a53e0c1-0a49-49c0-abf1-d0744ac6d077', 'false', 'single'),
('33393b51-f66e-4533-b5b0-3ead0e48351e', 'true', 'access.token.claim'),
('33393b51-f66e-4533-b5b0-3ead0e48351e', 'updated_at', 'claim.name'),
('33393b51-f66e-4533-b5b0-3ead0e48351e', 'true', 'id.token.claim'),
('33393b51-f66e-4533-b5b0-3ead0e48351e', 'String', 'jsonType.label'),
('33393b51-f66e-4533-b5b0-3ead0e48351e', 'updatedAt', 'user.attribute'),
('33393b51-f66e-4533-b5b0-3ead0e48351e', 'true', 'userinfo.token.claim'),
('343d45cd-0c1c-4f72-b8c4-48641a89c6f3', 'true', 'access.token.claim'),
('343d45cd-0c1c-4f72-b8c4-48641a89c6f3', 'true', 'id.token.claim'),
('343d45cd-0c1c-4f72-b8c4-48641a89c6f3', 'true', 'userinfo.token.claim'),
('37961abf-a83f-46e1-bead-d0c2f074628b', 'true', 'access.token.claim'),
('37961abf-a83f-46e1-bead-d0c2f074628b', 'locale', 'claim.name'),
('37961abf-a83f-46e1-bead-d0c2f074628b', 'true', 'id.token.claim'),
('37961abf-a83f-46e1-bead-d0c2f074628b', 'String', 'jsonType.label'),
('37961abf-a83f-46e1-bead-d0c2f074628b', 'locale', 'user.attribute'),
('37961abf-a83f-46e1-bead-d0c2f074628b', 'true', 'userinfo.token.claim'),
('39337d85-e83f-4982-8d4d-63301624ee2b', 'true', 'access.token.claim'),
('39337d85-e83f-4982-8d4d-63301624ee2b', 'true', 'id.token.claim'),
('39337d85-e83f-4982-8d4d-63301624ee2b', 'country', 'user.attribute.country'),
('39337d85-e83f-4982-8d4d-63301624ee2b', 'formatted', 'user.attribute.formatted'),
('39337d85-e83f-4982-8d4d-63301624ee2b', 'locality', 'user.attribute.locality'),
('39337d85-e83f-4982-8d4d-63301624ee2b', 'postal_code', 'user.attribute.postal_code'),
('39337d85-e83f-4982-8d4d-63301624ee2b', 'region', 'user.attribute.region'),
('39337d85-e83f-4982-8d4d-63301624ee2b', 'street', 'user.attribute.street'),
('39337d85-e83f-4982-8d4d-63301624ee2b', 'true', 'userinfo.token.claim'),
('44270204-afb3-42f8-bdef-ad181a84cd57', 'true', 'access.token.claim'),
('44270204-afb3-42f8-bdef-ad181a84cd57', 'email_verified', 'claim.name'),
('44270204-afb3-42f8-bdef-ad181a84cd57', 'true', 'id.token.claim'),
('44270204-afb3-42f8-bdef-ad181a84cd57', 'boolean', 'jsonType.label'),
('44270204-afb3-42f8-bdef-ad181a84cd57', 'emailVerified', 'user.attribute'),
('44270204-afb3-42f8-bdef-ad181a84cd57', 'true', 'userinfo.token.claim'),
('4433ab7e-b092-4359-8f71-8bdef652b4f8', 'true', 'access.token.claim'),
('4433ab7e-b092-4359-8f71-8bdef652b4f8', 'family_name', 'claim.name'),
('4433ab7e-b092-4359-8f71-8bdef652b4f8', 'true', 'id.token.claim'),
('4433ab7e-b092-4359-8f71-8bdef652b4f8', 'String', 'jsonType.label'),
('4433ab7e-b092-4359-8f71-8bdef652b4f8', 'lastName', 'user.attribute'),
('4433ab7e-b092-4359-8f71-8bdef652b4f8', 'true', 'userinfo.token.claim'),
('44375adf-0aea-4205-b2b9-6013a5354fe9', 'true', 'access.token.claim'),
('44375adf-0aea-4205-b2b9-6013a5354fe9', 'preferred_username', 'claim.name'),
('44375adf-0aea-4205-b2b9-6013a5354fe9', 'true', 'id.token.claim'),
('44375adf-0aea-4205-b2b9-6013a5354fe9', 'String', 'jsonType.label'),
('44375adf-0aea-4205-b2b9-6013a5354fe9', 'username', 'user.attribute'),
('44375adf-0aea-4205-b2b9-6013a5354fe9', 'true', 'userinfo.token.claim'),
('448cf94a-26ef-4886-a0e3-3a1c9d22f08c', 'true', 'access.token.claim'),
('448cf94a-26ef-4886-a0e3-3a1c9d22f08c', 'middle_name', 'claim.name'),
('448cf94a-26ef-4886-a0e3-3a1c9d22f08c', 'true', 'id.token.claim'),
('448cf94a-26ef-4886-a0e3-3a1c9d22f08c', 'String', 'jsonType.label'),
('448cf94a-26ef-4886-a0e3-3a1c9d22f08c', 'middleName', 'user.attribute'),
('448cf94a-26ef-4886-a0e3-3a1c9d22f08c', 'true', 'userinfo.token.claim'),
('47a65e86-feaf-44e0-bd92-850b75245d15', 'true', 'access.token.claim'),
('47a65e86-feaf-44e0-bd92-850b75245d15', 'true', 'id.token.claim'),
('47a65e86-feaf-44e0-bd92-850b75245d15', 'country', 'user.attribute.country'),
('47a65e86-feaf-44e0-bd92-850b75245d15', 'formatted', 'user.attribute.formatted'),
('47a65e86-feaf-44e0-bd92-850b75245d15', 'locality', 'user.attribute.locality'),
('47a65e86-feaf-44e0-bd92-850b75245d15', 'postal_code', 'user.attribute.postal_code'),
('47a65e86-feaf-44e0-bd92-850b75245d15', 'region', 'user.attribute.region'),
('47a65e86-feaf-44e0-bd92-850b75245d15', 'street', 'user.attribute.street'),
('47a65e86-feaf-44e0-bd92-850b75245d15', 'true', 'userinfo.token.claim'),
('4885e304-a93b-446f-8525-24b351b59e1b', 'true', 'access.token.claim'),
('4885e304-a93b-446f-8525-24b351b59e1b', 'given_name', 'claim.name'),
('4885e304-a93b-446f-8525-24b351b59e1b', 'true', 'id.token.claim'),
('4885e304-a93b-446f-8525-24b351b59e1b', 'String', 'jsonType.label'),
('4885e304-a93b-446f-8525-24b351b59e1b', 'firstName', 'user.attribute'),
('4885e304-a93b-446f-8525-24b351b59e1b', 'true', 'userinfo.token.claim'),
('4eddb4d7-bd47-4855-971b-7a1f47af6d77', 'true', 'access.token.claim'),
('4eddb4d7-bd47-4855-971b-7a1f47af6d77', 'phone_number_verified', 'claim.name'),
('4eddb4d7-bd47-4855-971b-7a1f47af6d77', 'true', 'id.token.claim'),
('4eddb4d7-bd47-4855-971b-7a1f47af6d77', 'boolean', 'jsonType.label'),
('4eddb4d7-bd47-4855-971b-7a1f47af6d77', 'phoneNumberVerified', 'user.attribute'),
('4eddb4d7-bd47-4855-971b-7a1f47af6d77', 'true', 'userinfo.token.claim'),
('569cc494-d46a-4e51-bbd7-14ca9ea78685', 'true', 'access.token.claim'),
('569cc494-d46a-4e51-bbd7-14ca9ea78685', 'zoneinfo', 'claim.name'),
('569cc494-d46a-4e51-bbd7-14ca9ea78685', 'true', 'id.token.claim'),
('569cc494-d46a-4e51-bbd7-14ca9ea78685', 'String', 'jsonType.label'),
('569cc494-d46a-4e51-bbd7-14ca9ea78685', 'zoneinfo', 'user.attribute'),
('569cc494-d46a-4e51-bbd7-14ca9ea78685', 'true', 'userinfo.token.claim'),
('5bd31680-37a0-4705-aa95-d393376de909', 'true', 'access.token.claim'),
('5bd31680-37a0-4705-aa95-d393376de909', 'phone_number', 'claim.name'),
('5bd31680-37a0-4705-aa95-d393376de909', 'true', 'id.token.claim'),
('5bd31680-37a0-4705-aa95-d393376de909', 'String', 'jsonType.label'),
('5bd31680-37a0-4705-aa95-d393376de909', 'phoneNumber', 'user.attribute'),
('5bd31680-37a0-4705-aa95-d393376de909', 'true', 'userinfo.token.claim'),
('5d2ef712-5696-4e71-8895-949a65fa010d', 'true', 'access.token.claim'),
('5d2ef712-5696-4e71-8895-949a65fa010d', 'middle_name', 'claim.name'),
('5d2ef712-5696-4e71-8895-949a65fa010d', 'true', 'id.token.claim'),
('5d2ef712-5696-4e71-8895-949a65fa010d', 'String', 'jsonType.label'),
('5d2ef712-5696-4e71-8895-949a65fa010d', 'middleName', 'user.attribute'),
('5d2ef712-5696-4e71-8895-949a65fa010d', 'true', 'userinfo.token.claim'),
('6580d649-aaab-4d65-8c01-944b24ebbc4e', 'true', 'access.token.claim'),
('6580d649-aaab-4d65-8c01-944b24ebbc4e', 'family_name', 'claim.name'),
('6580d649-aaab-4d65-8c01-944b24ebbc4e', 'true', 'id.token.claim'),
('6580d649-aaab-4d65-8c01-944b24ebbc4e', 'String', 'jsonType.label'),
('6580d649-aaab-4d65-8c01-944b24ebbc4e', 'lastName', 'user.attribute'),
('6580d649-aaab-4d65-8c01-944b24ebbc4e', 'true', 'userinfo.token.claim'),
('6651ddb2-f610-485f-be4f-0cb546d4e9da', 'true', 'access.token.claim'),
('6651ddb2-f610-485f-be4f-0cb546d4e9da', 'realm_access.roles', 'claim.name'),
('6651ddb2-f610-485f-be4f-0cb546d4e9da', 'String', 'jsonType.label'),
('6651ddb2-f610-485f-be4f-0cb546d4e9da', 'true', 'multivalued'),
('6651ddb2-f610-485f-be4f-0cb546d4e9da', 'foo', 'user.attribute'),
('6e8ef7cd-6cc3-4038-bddb-39d097f6236e', 'true', 'access.token.claim'),
('6e8ef7cd-6cc3-4038-bddb-39d097f6236e', 'email', 'claim.name'),
('6e8ef7cd-6cc3-4038-bddb-39d097f6236e', 'true', 'id.token.claim'),
('6e8ef7cd-6cc3-4038-bddb-39d097f6236e', 'String', 'jsonType.label'),
('6e8ef7cd-6cc3-4038-bddb-39d097f6236e', 'email', 'user.attribute'),
('6e8ef7cd-6cc3-4038-bddb-39d097f6236e', 'true', 'userinfo.token.claim'),
('77bf7831-4abf-4596-afa7-9b60748c51fe', 'true', 'access.token.claim'),
('77bf7831-4abf-4596-afa7-9b60748c51fe', 'profile', 'claim.name'),
('77bf7831-4abf-4596-afa7-9b60748c51fe', 'true', 'id.token.claim'),
('77bf7831-4abf-4596-afa7-9b60748c51fe', 'String', 'jsonType.label'),
('77bf7831-4abf-4596-afa7-9b60748c51fe', 'profile', 'user.attribute'),
('77bf7831-4abf-4596-afa7-9b60748c51fe', 'true', 'userinfo.token.claim'),
('81d79ebb-9ba0-4d7c-9a15-a32a3f2b2403', 'true', 'access.token.claim'),
('81d79ebb-9ba0-4d7c-9a15-a32a3f2b2403', 'resource_access.${client_id}.roles', 'claim.name'),
('81d79ebb-9ba0-4d7c-9a15-a32a3f2b2403', 'String', 'jsonType.label'),
('81d79ebb-9ba0-4d7c-9a15-a32a3f2b2403', 'true', 'multivalued'),
('81d79ebb-9ba0-4d7c-9a15-a32a3f2b2403', 'foo', 'user.attribute'),
('838f41e1-c044-43c6-bf93-4295cb30d637', 'true', 'access.token.claim'),
('838f41e1-c044-43c6-bf93-4295cb30d637', 'true', 'id.token.claim'),
('838f41e1-c044-43c6-bf93-4295cb30d637', 'true', 'userinfo.token.claim'),
('90e35378-e1d5-44dd-8070-2794ef1aa6c9', 'true', 'access.token.claim'),
('90e35378-e1d5-44dd-8070-2794ef1aa6c9', 'DOB', 'claim.name'),
('90e35378-e1d5-44dd-8070-2794ef1aa6c9', 'true', 'id.token.claim'),
('90e35378-e1d5-44dd-8070-2794ef1aa6c9', 'String', 'jsonType.label'),
('90e35378-e1d5-44dd-8070-2794ef1aa6c9', 'DOB', 'user.attribute'),
('90e35378-e1d5-44dd-8070-2794ef1aa6c9', 'true', 'userinfo.token.claim'),
('91d740c9-de1c-43f5-9209-79c817e913d3', 'true', 'access.token.claim'),
('91d740c9-de1c-43f5-9209-79c817e913d3', 'nickname', 'claim.name'),
('91d740c9-de1c-43f5-9209-79c817e913d3', 'true', 'id.token.claim'),
('91d740c9-de1c-43f5-9209-79c817e913d3', 'String', 'jsonType.label'),
('91d740c9-de1c-43f5-9209-79c817e913d3', 'nickname', 'user.attribute'),
('91d740c9-de1c-43f5-9209-79c817e913d3', 'true', 'userinfo.token.claim'),
('91eb19f9-b005-4793-829d-062f45643b4d', 'true', 'access.token.claim'),
('91eb19f9-b005-4793-829d-062f45643b4d', 'email_verified', 'claim.name'),
('91eb19f9-b005-4793-829d-062f45643b4d', 'true', 'id.token.claim'),
('91eb19f9-b005-4793-829d-062f45643b4d', 'boolean', 'jsonType.label'),
('91eb19f9-b005-4793-829d-062f45643b4d', 'emailVerified', 'user.attribute'),
('91eb19f9-b005-4793-829d-062f45643b4d', 'true', 'userinfo.token.claim'),
('97b5fbf0-f713-4bca-be1c-172d979c0d4d', 'true', 'access.token.claim'),
('97b5fbf0-f713-4bca-be1c-172d979c0d4d', 'nickname', 'claim.name'),
('97b5fbf0-f713-4bca-be1c-172d979c0d4d', 'true', 'id.token.claim'),
('97b5fbf0-f713-4bca-be1c-172d979c0d4d', 'String', 'jsonType.label'),
('97b5fbf0-f713-4bca-be1c-172d979c0d4d', 'nickname', 'user.attribute'),
('97b5fbf0-f713-4bca-be1c-172d979c0d4d', 'true', 'userinfo.token.claim'),
('9e62383a-f765-4481-93cc-e20cb88d7b50', 'true', 'access.token.claim'),
('9e62383a-f765-4481-93cc-e20cb88d7b50', 'ambulance-crew-id', 'claim.name'),
('9e62383a-f765-4481-93cc-e20cb88d7b50', 'true', 'id.token.claim'),
('9e62383a-f765-4481-93cc-e20cb88d7b50', 'String', 'jsonType.label'),
('9e62383a-f765-4481-93cc-e20cb88d7b50', 'ambulance-crew-id', 'user.attribute'),
('9e62383a-f765-4481-93cc-e20cb88d7b50', 'true', 'userinfo.token.claim'),
('a5afc7dd-1421-435c-b3b4-43ead87e7676', 'true', 'access.token.claim'),
('a5afc7dd-1421-435c-b3b4-43ead87e7676', 'email', 'claim.name'),
('a5afc7dd-1421-435c-b3b4-43ead87e7676', 'true', 'id.token.claim'),
('a5afc7dd-1421-435c-b3b4-43ead87e7676', 'String', 'jsonType.label'),
('a5afc7dd-1421-435c-b3b4-43ead87e7676', 'email', 'user.attribute'),
('a5afc7dd-1421-435c-b3b4-43ead87e7676', 'true', 'userinfo.token.claim'),
('a6b8c204-36ab-4eff-a09c-458cb2af7bd4', 'true', 'access.token.claim'),
('a6b8c204-36ab-4eff-a09c-458cb2af7bd4', 'groups', 'claim.name'),
('a6b8c204-36ab-4eff-a09c-458cb2af7bd4', 'true', 'id.token.claim'),
('a6b8c204-36ab-4eff-a09c-458cb2af7bd4', 'String', 'jsonType.label'),
('a6b8c204-36ab-4eff-a09c-458cb2af7bd4', 'true', 'multivalued'),
('a6b8c204-36ab-4eff-a09c-458cb2af7bd4', 'foo', 'user.attribute'),
('a9ca03f0-4e75-4b8b-a660-ae8798b567b9', 'true', 'access.token.claim'),
('a9ca03f0-4e75-4b8b-a660-ae8798b567b9', 'upn', 'claim.name'),
('a9ca03f0-4e75-4b8b-a660-ae8798b567b9', 'true', 'id.token.claim'),
('a9ca03f0-4e75-4b8b-a660-ae8798b567b9', 'String', 'jsonType.label'),
('a9ca03f0-4e75-4b8b-a660-ae8798b567b9', 'username', 'user.attribute'),
('a9ca03f0-4e75-4b8b-a660-ae8798b567b9', 'true', 'userinfo.token.claim'),
('aab4d6a8-d44c-44a9-af17-f730822d3e44', 'true', 'access.token.claim'),
('aab4d6a8-d44c-44a9-af17-f730822d3e44', 'gender', 'claim.name'),
('aab4d6a8-d44c-44a9-af17-f730822d3e44', 'true', 'id.token.claim'),
('aab4d6a8-d44c-44a9-af17-f730822d3e44', 'String', 'jsonType.label'),
('aab4d6a8-d44c-44a9-af17-f730822d3e44', 'gender', 'user.attribute'),
('aab4d6a8-d44c-44a9-af17-f730822d3e44', 'true', 'userinfo.token.claim'),
('af4e3822-0e54-4a52-be8a-02586faccd8f', 'true', 'access.token.claim'),
('af4e3822-0e54-4a52-be8a-02586faccd8f', 'zoneinfo', 'claim.name'),
('af4e3822-0e54-4a52-be8a-02586faccd8f', 'true', 'id.token.claim'),
('af4e3822-0e54-4a52-be8a-02586faccd8f', 'String', 'jsonType.label'),
('af4e3822-0e54-4a52-be8a-02586faccd8f', 'zoneinfo', 'user.attribute'),
('af4e3822-0e54-4a52-be8a-02586faccd8f', 'true', 'userinfo.token.claim'),
('b02fd5fd-8e54-4551-868d-2a1e57d49cab', 'true', 'access.token.claim'),
('b02fd5fd-8e54-4551-868d-2a1e57d49cab', 'website', 'claim.name'),
('b02fd5fd-8e54-4551-868d-2a1e57d49cab', 'true', 'id.token.claim'),
('b02fd5fd-8e54-4551-868d-2a1e57d49cab', 'String', 'jsonType.label'),
('b02fd5fd-8e54-4551-868d-2a1e57d49cab', 'website', 'user.attribute'),
('b02fd5fd-8e54-4551-868d-2a1e57d49cab', 'true', 'userinfo.token.claim'),
('b331bb1b-17f6-4de1-a9aa-6f3229e8d724', 'true', 'access.token.claim'),
('b331bb1b-17f6-4de1-a9aa-6f3229e8d724', 'resource_access.${client_id}.roles', 'claim.name'),
('b331bb1b-17f6-4de1-a9aa-6f3229e8d724', 'String', 'jsonType.label'),
('b331bb1b-17f6-4de1-a9aa-6f3229e8d724', 'true', 'multivalued'),
('b331bb1b-17f6-4de1-a9aa-6f3229e8d724', 'foo', 'user.attribute'),
('b5857eeb-d1e2-45c0-a923-976f9d7a3165', 'true', 'access.token.claim'),
('b5857eeb-d1e2-45c0-a923-976f9d7a3165', 'birthdate', 'claim.name'),
('b5857eeb-d1e2-45c0-a923-976f9d7a3165', 'true', 'id.token.claim'),
('b5857eeb-d1e2-45c0-a923-976f9d7a3165', 'String', 'jsonType.label'),
('b5857eeb-d1e2-45c0-a923-976f9d7a3165', 'birthdate', 'user.attribute'),
('b5857eeb-d1e2-45c0-a923-976f9d7a3165', 'true', 'userinfo.token.claim'),
('bdb4f0be-dcec-4396-a89a-af73a7d8b8c2', 'true', 'access.token.claim'),
('bdb4f0be-dcec-4396-a89a-af73a7d8b8c2', 'groups', 'claim.name'),
('bdb4f0be-dcec-4396-a89a-af73a7d8b8c2', 'true', 'id.token.claim'),
('bdb4f0be-dcec-4396-a89a-af73a7d8b8c2', 'String', 'jsonType.label'),
('bdb4f0be-dcec-4396-a89a-af73a7d8b8c2', 'true', 'multivalued'),
('bdb4f0be-dcec-4396-a89a-af73a7d8b8c2', 'foo', 'user.attribute'),
('bdb4f0be-dcec-4396-a89a-af73a7d8b8c2', 'true', 'userinfo.token.claim'),
('cf8468f9-ba3c-466d-aa58-411ad78db840', 'true', 'access.token.claim'),
('cf8468f9-ba3c-466d-aa58-411ad78db840', 'phone_number_verified', 'claim.name'),
('cf8468f9-ba3c-466d-aa58-411ad78db840', 'true', 'id.token.claim'),
('cf8468f9-ba3c-466d-aa58-411ad78db840', 'boolean', 'jsonType.label'),
('cf8468f9-ba3c-466d-aa58-411ad78db840', 'phoneNumberVerified', 'user.attribute'),
('cf8468f9-ba3c-466d-aa58-411ad78db840', 'true', 'userinfo.token.claim'),
('d04399d4-8aa3-492a-a4e4-5385af294b62', 'true', 'access.token.claim'),
('d04399d4-8aa3-492a-a4e4-5385af294b62', 'preferred_username', 'claim.name'),
('d04399d4-8aa3-492a-a4e4-5385af294b62', 'true', 'id.token.claim'),
('d04399d4-8aa3-492a-a4e4-5385af294b62', 'String', 'jsonType.label'),
('d04399d4-8aa3-492a-a4e4-5385af294b62', 'username', 'user.attribute'),
('d04399d4-8aa3-492a-a4e4-5385af294b62', 'true', 'userinfo.token.claim'),
('d8abb8f6-9a69-4875-9984-86c328e1988d', 'true', 'access.token.claim'),
('d8abb8f6-9a69-4875-9984-86c328e1988d', 'birthdate', 'claim.name'),
('d8abb8f6-9a69-4875-9984-86c328e1988d', 'true', 'id.token.claim'),
('d8abb8f6-9a69-4875-9984-86c328e1988d', 'String', 'jsonType.label'),
('d8abb8f6-9a69-4875-9984-86c328e1988d', 'birthdate', 'user.attribute'),
('d8abb8f6-9a69-4875-9984-86c328e1988d', 'true', 'userinfo.token.claim'),
('e85415b7-4ee4-41ec-b2aa-89cd039c4c54', 'true', 'access.token.claim'),
('e85415b7-4ee4-41ec-b2aa-89cd039c4c54', 'upn', 'claim.name'),
('e85415b7-4ee4-41ec-b2aa-89cd039c4c54', 'true', 'id.token.claim'),
('e85415b7-4ee4-41ec-b2aa-89cd039c4c54', 'String', 'jsonType.label'),
('e85415b7-4ee4-41ec-b2aa-89cd039c4c54', 'username', 'user.attribute'),
('e85415b7-4ee4-41ec-b2aa-89cd039c4c54', 'true', 'userinfo.token.claim'),
('e9ce24ae-6ec2-496b-be08-a2ec63510545', 'true', 'access.token.claim'),
('e9ce24ae-6ec2-496b-be08-a2ec63510545', 'given_name', 'claim.name'),
('e9ce24ae-6ec2-496b-be08-a2ec63510545', 'true', 'id.token.claim'),
('e9ce24ae-6ec2-496b-be08-a2ec63510545', 'String', 'jsonType.label'),
('e9ce24ae-6ec2-496b-be08-a2ec63510545', 'firstName', 'user.attribute'),
('e9ce24ae-6ec2-496b-be08-a2ec63510545', 'true', 'userinfo.token.claim'),
('ec1ba13c-9b3b-4d6c-9cd6-14207f1a2af1', 'Role', 'attribute.name'),
('ec1ba13c-9b3b-4d6c-9cd6-14207f1a2af1', 'Basic', 'attribute.nameformat'),
('ec1ba13c-9b3b-4d6c-9cd6-14207f1a2af1', 'false', 'single'),
('eccc5d2d-fafa-45eb-a206-501846781ed0', 'true', 'access.token.claim'),
('eccc5d2d-fafa-45eb-a206-501846781ed0', 'locale', 'claim.name'),
('eccc5d2d-fafa-45eb-a206-501846781ed0', 'true', 'id.token.claim'),
('eccc5d2d-fafa-45eb-a206-501846781ed0', 'String', 'jsonType.label'),
('eccc5d2d-fafa-45eb-a206-501846781ed0', 'locale', 'user.attribute'),
('eccc5d2d-fafa-45eb-a206-501846781ed0', 'true', 'userinfo.token.claim'),
('ee168cc2-ba52-40da-b6cb-173e42aeb19d', 'true', 'access.token.claim'),
('ee168cc2-ba52-40da-b6cb-173e42aeb19d', 'locale', 'claim.name'),
('ee168cc2-ba52-40da-b6cb-173e42aeb19d', 'true', 'id.token.claim'),
('ee168cc2-ba52-40da-b6cb-173e42aeb19d', 'String', 'jsonType.label'),
('ee168cc2-ba52-40da-b6cb-173e42aeb19d', 'locale', 'user.attribute'),
('ee168cc2-ba52-40da-b6cb-173e42aeb19d', 'true', 'userinfo.token.claim'),
('ee7b3b56-eb68-4904-b776-2277e3d191de', 'true', 'access.token.claim'),
('ee7b3b56-eb68-4904-b776-2277e3d191de', 'picture', 'claim.name'),
('ee7b3b56-eb68-4904-b776-2277e3d191de', 'true', 'id.token.claim'),
('ee7b3b56-eb68-4904-b776-2277e3d191de', 'String', 'jsonType.label'),
('ee7b3b56-eb68-4904-b776-2277e3d191de', 'picture', 'user.attribute'),
('ee7b3b56-eb68-4904-b776-2277e3d191de', 'true', 'userinfo.token.claim'),
('fa2d323f-1bb9-4e4d-8a6c-1194ba78e6cb', 'true', 'access.token.claim'),
('fa2d323f-1bb9-4e4d-8a6c-1194ba78e6cb', 'updated_at', 'claim.name'),
('fa2d323f-1bb9-4e4d-8a6c-1194ba78e6cb', 'true', 'id.token.claim'),
('fa2d323f-1bb9-4e4d-8a6c-1194ba78e6cb', 'String', 'jsonType.label'),
('fa2d323f-1bb9-4e4d-8a6c-1194ba78e6cb', 'updatedAt', 'user.attribute'),
('fa2d323f-1bb9-4e4d-8a6c-1194ba78e6cb', 'true', 'userinfo.token.claim'),
('ffb96ff1-c8b2-4fdf-8abe-3748b0ef273c', 'true', 'access.token.claim'),
('ffb96ff1-c8b2-4fdf-8abe-3748b0ef273c', 'profile', 'claim.name'),
('ffb96ff1-c8b2-4fdf-8abe-3748b0ef273c', 'true', 'id.token.claim'),
('ffb96ff1-c8b2-4fdf-8abe-3748b0ef273c', 'String', 'jsonType.label'),
('ffb96ff1-c8b2-4fdf-8abe-3748b0ef273c', 'profile', 'user.attribute'),
('ffb96ff1-c8b2-4fdf-8abe-3748b0ef273c', 'true', 'userinfo.token.claim');

-- --------------------------------------------------------

--
-- Table structure for table `REALM`
--

CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int(11) DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int(11) DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int(11) DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_EXPIRATION` bigint(20) DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PASSWORD_POLICY` varchar(2550) DEFAULT NULL,
  `REGISTRATION_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `RESET_PASSWORD_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `SOCIAL` bit(1) NOT NULL DEFAULT b'0',
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int(11) DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int(11) DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` bit(1) NOT NULL DEFAULT b'0',
  `VERIFY_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int(11) DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_DETAILS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EDIT_USERNAME_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `OTP_POLICY_COUNTER` int(11) DEFAULT '0',
  `OTP_POLICY_WINDOW` int(11) DEFAULT '1',
  `OTP_POLICY_PERIOD` int(11) DEFAULT '30',
  `OTP_POLICY_DIGITS` int(11) DEFAULT '6',
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int(11) DEFAULT '0',
  `REVOKE_REFRESH_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `ACCESS_TOKEN_LIFE_IMPLICIT` int(11) DEFAULT '0',
  `LOGIN_WITH_EMAIL_ALLOWED` bit(1) NOT NULL DEFAULT b'1',
  `DUPLICATE_EMAILS_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int(11) DEFAULT '0',
  `ALLOW_USER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int(11) NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `REALM`
--

INSERT INTO `REALM` (`ID`, `ACCESS_CODE_LIFESPAN`, `USER_ACTION_LIFESPAN`, `ACCESS_TOKEN_LIFESPAN`, `ACCOUNT_THEME`, `ADMIN_THEME`, `EMAIL_THEME`, `ENABLED`, `EVENTS_ENABLED`, `EVENTS_EXPIRATION`, `LOGIN_THEME`, `NAME`, `NOT_BEFORE`, `PASSWORD_POLICY`, `REGISTRATION_ALLOWED`, `REMEMBER_ME`, `RESET_PASSWORD_ALLOWED`, `SOCIAL`, `SSL_REQUIRED`, `SSO_IDLE_TIMEOUT`, `SSO_MAX_LIFESPAN`, `UPDATE_PROFILE_ON_SOC_LOGIN`, `VERIFY_EMAIL`, `MASTER_ADMIN_CLIENT`, `LOGIN_LIFESPAN`, `INTERNATIONALIZATION_ENABLED`, `DEFAULT_LOCALE`, `REG_EMAIL_AS_USERNAME`, `ADMIN_EVENTS_ENABLED`, `ADMIN_EVENTS_DETAILS_ENABLED`, `EDIT_USERNAME_ALLOWED`, `OTP_POLICY_COUNTER`, `OTP_POLICY_WINDOW`, `OTP_POLICY_PERIOD`, `OTP_POLICY_DIGITS`, `OTP_POLICY_ALG`, `OTP_POLICY_TYPE`, `BROWSER_FLOW`, `REGISTRATION_FLOW`, `DIRECT_GRANT_FLOW`, `RESET_CREDENTIALS_FLOW`, `CLIENT_AUTH_FLOW`, `OFFLINE_SESSION_IDLE_TIMEOUT`, `REVOKE_REFRESH_TOKEN`, `ACCESS_TOKEN_LIFE_IMPLICIT`, `LOGIN_WITH_EMAIL_ALLOWED`, `DUPLICATE_EMAILS_ALLOWED`, `DOCKER_AUTH_FLOW`, `REFRESH_TOKEN_MAX_REUSE`, `ALLOW_USER_MANAGED_ACCESS`, `SSO_MAX_LIFESPAN_REMEMBER_ME`, `SSO_IDLE_TIMEOUT_REMEMBER_ME`) VALUES
('master', 60, 300, 60, NULL, NULL, NULL, b'1', b'0', 0, NULL, 'master', 0, NULL, b'0', b'0', b'0', b'0', 'EXTERNAL', 1800, 36000, b'0', b'0', '3b118a44-1a44-4bbb-b185-545cfdd66ec6', 1800, b'0', NULL, b'0', b'0', b'0', b'0', 0, 1, 30, 6, 'HmacSHA1', 'totp', '3f7e2830-1ded-4b1e-9997-e6f30d6058e0', 'd6d29913-0b3c-4669-9231-97e9a5322aa8', '9b9157e1-337f-465d-a756-faec5400fcf1', '46f1610c-d5b8-4d86-aae7-6d3c1e9a6872', 'db04ed4c-08b8-4f91-ae4e-31a8ffdb82da', 2592000, b'0', 900, b'1', b'0', '7c197479-52ea-48dc-b630-d7cf45b6f945', 0, b'0', 0, 0),
('user-authentication', 60, 300, 300, NULL, NULL, NULL, b'1', b'0', 0, NULL, '{{ .Env.KEYCLOAK_REALM }}', 0, NULL, b'1', b'0', b'0', b'0', 'EXTERNAL', 1800, 36000, b'0', b'0', '05fe9828-f9d9-4082-9cd0-a8e54e5098f1', 1800, b'0', NULL, b'0', b'0', b'0', b'0', 0, 1, 30, 6, 'HmacSHA1', 'totp', 'c533b231-d414-4f22-b4f6-a874209ef9a3', '63c9b959-805b-436f-b8fe-622ef1c40dfe', '89c11eb3-4c76-4480-bcb7-27650b07809e', '6f413474-251a-46ab-9dc1-9fbf204aecd9', '9171e4da-e71e-4bba-9083-0ebef188e6be', 2592000, b'0', 900, b'1', b'0', '8ae71391-05a1-46d2-9fd6-7a9d9d42a14f', 0, b'0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `REALM_ATTRIBUTE`
--

CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

INSERT INTO `REALM_ATTRIBUTE` (`NAME`, `VALUE`, `REALM_ID`) VALUES
('actionTokenGeneratedByAdminLifespan', '43200', 'user-authentication'),
('actionTokenGeneratedByUserLifespan', '300', 'user-authentication'),
('bruteForceProtected', 'false', 'master'),
('bruteForceProtected', 'false', 'user-authentication'),
('displayName', 'Keycloak', 'master'),
('displayNameHtml', '<div class=\"kc-logo-text\"><span>Keycloak</span></div>', 'master'),
('failureFactor', '30', 'master'),
('failureFactor', '30', 'user-authentication'),
('maxDeltaTimeSeconds', '43200', 'master'),
('maxDeltaTimeSeconds', '43200', 'user-authentication'),
('maxFailureWaitSeconds', '900', 'master'),
('maxFailureWaitSeconds', '900', 'user-authentication'),
('minimumQuickLoginWaitSeconds', '60', 'master'),
('minimumQuickLoginWaitSeconds', '60', 'user-authentication'),
('offlineSessionMaxLifespan', '5184000', 'master'),
('offlineSessionMaxLifespan', '5184000', 'user-authentication'),
('offlineSessionMaxLifespanEnabled', 'false', 'master'),
('offlineSessionMaxLifespanEnabled', 'false', 'user-authentication'),
('permanentLockout', 'false', 'master'),
('permanentLockout', 'false', 'user-authentication'),
('quickLoginCheckMilliSeconds', '1000', 'master'),
('quickLoginCheckMilliSeconds', '1000', 'user-authentication'),
('waitIncrementSeconds', '60', 'master'),
('waitIncrementSeconds', '60', 'user-authentication'),
('webAuthnPolicyAttestationConveyancePreference', 'not specified', 'user-authentication'),
('webAuthnPolicyAttestationConveyancePreferencePasswordless', 'not specified', 'user-authentication'),
('webAuthnPolicyAuthenticatorAttachment', 'not specified', 'user-authentication'),
('webAuthnPolicyAuthenticatorAttachmentPasswordless', 'not specified', 'user-authentication'),
('webAuthnPolicyAvoidSameAuthenticatorRegister', 'false', 'user-authentication'),
('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless', 'false', 'user-authentication'),
('webAuthnPolicyCreateTimeout', '0', 'user-authentication'),
('webAuthnPolicyCreateTimeoutPasswordless', '0', 'user-authentication'),
('webAuthnPolicyRequireResidentKey', 'not specified', 'user-authentication'),
('webAuthnPolicyRequireResidentKeyPasswordless', 'not specified', 'user-authentication'),
('webAuthnPolicyRpEntityName', 'keycloak', 'user-authentication'),
('webAuthnPolicyRpEntityNamePasswordless', 'keycloak', 'user-authentication'),
('webAuthnPolicyRpId', '', 'user-authentication'),
('webAuthnPolicyRpIdPasswordless', '', 'user-authentication'),
('webAuthnPolicySignatureAlgorithms', 'ES256', 'user-authentication'),
('webAuthnPolicySignatureAlgorithmsPasswordless', 'ES256', 'user-authentication'),
('webAuthnPolicyUserVerificationRequirement', 'not specified', 'user-authentication'),
('webAuthnPolicyUserVerificationRequirementPasswordless', 'not specified', 'user-authentication'),
('_browser_header.contentSecurityPolicy', 'frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';', 'master'),
('_browser_header.contentSecurityPolicy', 'frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';', 'user-authentication'),
('_browser_header.contentSecurityPolicyReportOnly', '', 'master'),
('_browser_header.contentSecurityPolicyReportOnly', '', 'user-authentication'),
('_browser_header.strictTransportSecurity', 'max-age=31536000; includeSubDomains', 'master'),
('_browser_header.strictTransportSecurity', 'max-age=31536000; includeSubDomains', 'user-authentication'),
('_browser_header.xContentTypeOptions', 'nosniff', 'master'),
('_browser_header.xContentTypeOptions', 'nosniff', 'user-authentication'),
('_browser_header.xFrameOptions', 'SAMEORIGIN', 'master'),
('_browser_header.xFrameOptions', 'SAMEORIGIN', 'user-authentication'),
('_browser_header.xRobotsTag', 'none', 'master'),
('_browser_header.xRobotsTag', 'none', 'user-authentication'),
('_browser_header.xXSSProtection', '1; mode=block', 'master'),
('_browser_header.xXSSProtection', '1; mode=block', 'user-authentication');

-- --------------------------------------------------------

--
-- Table structure for table `REALM_DEFAULT_GROUPS`
--

CREATE TABLE `REALM_DEFAULT_GROUPS` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `REALM_DEFAULT_ROLES`
--

CREATE TABLE `REALM_DEFAULT_ROLES` (
  `REALM_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `REALM_DEFAULT_ROLES`
--

INSERT INTO `REALM_DEFAULT_ROLES` (`REALM_ID`, `ROLE_ID`) VALUES
('user-authentication', '2cfba5c8-fe75-4430-a19a-3540bb233524'),
('master', '4bd62c62-f5d7-4af8-85ab-2ffa8cdcbe13'),
('master', '5a0bdd90-2ad1-4322-9ca2-e5e89fa5834d'),
('user-authentication', '633af178-e78b-48c8-9597-3160620f3c57'),
('user-authentication', '65ea9797-4b0f-4999-ab41-529c0d483022');

-- --------------------------------------------------------

--
-- Table structure for table `REALM_ENABLED_EVENT_TYPES`
--

CREATE TABLE `REALM_ENABLED_EVENT_TYPES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `REALM_EVENTS_LISTENERS`
--

CREATE TABLE `REALM_EVENTS_LISTENERS` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `REALM_EVENTS_LISTENERS`
--

INSERT INTO `REALM_EVENTS_LISTENERS` (`REALM_ID`, `VALUE`) VALUES
('master', 'jboss-logging'),
('user-authentication', 'jboss-logging');

-- --------------------------------------------------------

--
-- Table structure for table `REALM_REQUIRED_CREDENTIAL`
--

CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `REALM_REQUIRED_CREDENTIAL`
--

INSERT INTO `REALM_REQUIRED_CREDENTIAL` (`TYPE`, `FORM_LABEL`, `INPUT`, `SECRET`, `REALM_ID`) VALUES
('password', 'password', b'1', b'1', 'master'),
('password', 'password', b'1', b'1', 'user-authentication');

-- --------------------------------------------------------

--
-- Table structure for table `REALM_SMTP_CONFIG`
--

CREATE TABLE `REALM_SMTP_CONFIG` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `REALM_SUPPORTED_LOCALES`
--

CREATE TABLE `REALM_SUPPORTED_LOCALES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `REDIRECT_URIS`
--

CREATE TABLE `REDIRECT_URIS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `REDIRECT_URIS`
--

INSERT INTO `REDIRECT_URIS` (`CLIENT_ID`, `VALUE`) VALUES
('13388dce-30ee-4ecd-863f-b41a74fd6d2a', '/realms/{{ .Env.KEYCLOAK_REALM }}/account/*'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', '/realms/master/account/*'),
('67d4cec4-2ff5-4919-bb25-247374b8d742', '/admin/master/console/*'),
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', '/realms/user-authentication/account/*'),
('86cae607-1818-46da-94af-8cfb79cfa88a', '/admin/{{ .Env.KEYCLOAK_REALM }}/console/*'),
('c3a6265c-7208-4762-b8cb-b2240edc46c9', '/realms/master/account/*'),
('dd93430b-5fc4-4269-899d-672cb476154e', '{{ .Env.APP_BASE_URL }}/*');

-- --------------------------------------------------------

--
-- Table structure for table `REQUIRED_ACTION_CONFIG`
--

CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `REQUIRED_ACTION_PROVIDER`
--

CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_ACTION` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `REQUIRED_ACTION_PROVIDER`
--

INSERT INTO `REQUIRED_ACTION_PROVIDER` (`ID`, `ALIAS`, `NAME`, `REALM_ID`, `ENABLED`, `DEFAULT_ACTION`, `PROVIDER_ID`, `PRIORITY`) VALUES
('0e95a668-c7ff-40f5-805a-48646455fa65', 'CONFIGURE_TOTP', 'Configure OTP', 'user-authentication', b'1', b'0', 'CONFIGURE_TOTP', 10),
('1932b39d-1e6b-41f1-9cba-c6d0d03416f8', 'update_user_locale', 'Update User Locale', 'user-authentication', b'1', b'0', 'update_user_locale', 1000),
('214eaace-4773-41f1-a5ed-12fbc9cbf706', 'update_user_locale', 'Update User Locale', 'master', b'1', b'0', 'update_user_locale', 1000),
('2de93cf2-09b6-49f9-9072-f5a600ddb9e9', 'UPDATE_PROFILE', 'Update Profile', 'user-authentication', b'1', b'0', 'UPDATE_PROFILE', 40),
('544a5fd0-56eb-4e0b-b95f-ccf2b1ea1c77', 'CONFIGURE_TOTP', 'Configure OTP', 'master', b'1', b'0', 'CONFIGURE_TOTP', 10),
('82afae41-2692-42d5-9e34-298bc92a5ca4', 'terms_and_conditions', 'Terms and Conditions', 'master', b'0', b'0', 'terms_and_conditions', 20),
('89094182-5b7a-40b5-b4f1-f0666db2c601', 'UPDATE_PASSWORD', 'Update Password', 'user-authentication', b'1', b'0', 'UPDATE_PASSWORD', 30),
('c9a5ac03-386e-4123-81f0-339b74069e7b', 'terms_and_conditions', 'Terms and Conditions', 'user-authentication', b'0', b'0', 'terms_and_conditions', 20),
('c9b0f3f7-ce34-4097-a39b-232dd737bf59', 'VERIFY_EMAIL', 'Verify Email', 'master', b'1', b'0', 'VERIFY_EMAIL', 50),
('c9ce0468-83d5-4076-8687-134f38481700', 'VERIFY_EMAIL', 'Verify Email', 'user-authentication', b'1', b'0', 'VERIFY_EMAIL', 50),
('daff1f37-e92b-42ee-8bc9-f293c10c0a86', 'UPDATE_PROFILE', 'Update Profile', 'master', b'1', b'0', 'UPDATE_PROFILE', 40),
('e851d55a-a704-4eaf-b371-da409ef851cf', 'UPDATE_PASSWORD', 'Update Password', 'master', b'1', b'0', 'UPDATE_PASSWORD', 30);

-- --------------------------------------------------------

--
-- Table structure for table `RESOURCE_ATTRIBUTE`
--

CREATE TABLE `RESOURCE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RESOURCE_POLICY`
--

CREATE TABLE `RESOURCE_POLICY` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RESOURCE_SCOPE`
--

CREATE TABLE `RESOURCE_SCOPE` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RESOURCE_SERVER`
--

CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL DEFAULT '',
  `ALLOW_RS_REMOTE_MGMT` bit(1) NOT NULL DEFAULT b'0',
  `POLICY_ENFORCE_MODE` varchar(15) NOT NULL,
  `DECISION_STRATEGY` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RESOURCE_SERVER_PERM_TICKET`
--

CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `REQUESTER` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) NOT NULL,
  `GRANTED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RESOURCE_SERVER_POLICY`
--

CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` varchar(20) DEFAULT NULL,
  `LOGIC` varchar(20) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RESOURCE_SERVER_RESOURCE`
--

CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `DISPLAY_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RESOURCE_SERVER_SCOPE`
--

CREATE TABLE `RESOURCE_SERVER_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RESOURCE_URIS`
--

CREATE TABLE `RESOURCE_URIS` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ROLE_ATTRIBUTE`
--

CREATE TABLE `ROLE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SCOPE_MAPPING`
--

CREATE TABLE `SCOPE_MAPPING` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SCOPE_MAPPING`
--

INSERT INTO `SCOPE_MAPPING` (`CLIENT_ID`, `ROLE_ID`) VALUES
('6bbeacd7-5a4f-48cf-bc1b-883815f24997', '8d380b16-5d81-4201-9e8d-7cba22963840'),
('59c6af7f-2c6d-4212-9ff3-3f0ab3850834', 'fa61fc5e-1b07-433f-916c-1af7bd690ed1');

-- --------------------------------------------------------

--
-- Table structure for table `SCOPE_POLICY`
--

CREATE TABLE `SCOPE_POLICY` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USERNAME_LOGIN_FAILURE`
--

CREATE TABLE `USERNAME_LOGIN_FAILURE` (
  `REALM_ID` varchar(36) NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 NOT NULL,
  `FAILED_LOGIN_NOT_BEFORE` int(11) DEFAULT NULL,
  `LAST_FAILURE` bigint(20) DEFAULT NULL,
  `LAST_IP_FAILURE` varchar(255) DEFAULT NULL,
  `NUM_FAILURES` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_ATTRIBUTE`
--

CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

INSERT INTO `USER_ATTRIBUTE` (`NAME`, `VALUE`, `USER_ID`, `ID`) VALUES
('medical-roles', 'xxx,ambulance-crew', '3f0b39cb-0a1b-4428-b36f-b8c098126dbd', '20e26556-aa26-4678-9a3f-fa8d71d74512'),
('DOB', '1980-04-05', '3f0b39cb-0a1b-4428-b36f-b8c098126dbd', '40a0459e-9899-41c8-a82e-f47308520865'),
('ambulance-crew-id', 'ambulance-crew-id-1234', '3f0b39cb-0a1b-4428-b36f-b8c098126dbd', 'e0fb2acf-ab52-4880-a07c-52b3d8c79060');

-- --------------------------------------------------------

--
-- Table structure for table `USER_CONSENT`
--

CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_CONSENT_CLIENT_SCOPE`
--

CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_ENTITY`
--

CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` bit(1) NOT NULL DEFAULT b'0',
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LAST_NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `USER_ENTITY`
--

INSERT INTO `USER_ENTITY` (`ID`, `EMAIL`, `EMAIL_CONSTRAINT`, `EMAIL_VERIFIED`, `ENABLED`, `FEDERATION_LINK`, `FIRST_NAME`, `LAST_NAME`, `REALM_ID`, `USERNAME`, `CREATED_TIMESTAMP`, `SERVICE_ACCOUNT_CLIENT_LINK`, `NOT_BEFORE`) VALUES
('3cd03985-e069-4971-9201-e1aa31ccc8b0', NULL, '1b5a89b3-6efd-41cc-84e5-ceaab702c6cd', b'0', b'1', NULL, NULL, NULL, 'user-authentication', 'user2', 1611230553569, NULL, 0),
('3f0b39cb-0a1b-4428-b36f-b8c098126dbd', NULL, '392ac599-8e69-4ce2-8544-c5088996e53f', b'0', b'1', NULL, NULL, NULL, 'user-authentication', 'user1', 1611230523301, NULL, 0),
('b89fdb86-b9f5-4f3b-98a5-044ae2a59299', NULL, 'c0745471-ba03-4f55-aeaf-847d49ba7eb1', b'0', b'1', NULL, NULL, NULL, 'master', 'admin', 1611230477123, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `USER_FEDERATION_CONFIG`
--

CREATE TABLE `USER_FEDERATION_CONFIG` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_FEDERATION_MAPPER`
--

CREATE TABLE `USER_FEDERATION_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_FEDERATION_MAPPER_CONFIG`
--

CREATE TABLE `USER_FEDERATION_MAPPER_CONFIG` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_FEDERATION_PROVIDER`
--

CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int(11) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int(11) DEFAULT NULL,
  `LAST_SYNC` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_GROUP_MEMBERSHIP`
--

CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_REQUIRED_ACTION`
--

CREATE TABLE `USER_REQUIRED_ACTION` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_ROLE_MAPPING`
--

CREATE TABLE `USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `USER_ROLE_MAPPING`
--

INSERT INTO `USER_ROLE_MAPPING` (`ROLE_ID`, `USER_ID`) VALUES
('2cfba5c8-fe75-4430-a19a-3540bb233524', '3cd03985-e069-4971-9201-e1aa31ccc8b0'),
('633af178-e78b-48c8-9597-3160620f3c57', '3cd03985-e069-4971-9201-e1aa31ccc8b0'),
('65ea9797-4b0f-4999-ab41-529c0d483022', '3cd03985-e069-4971-9201-e1aa31ccc8b0'),
('695a6fc3-6969-4684-b8b1-715fc75c782d', '3cd03985-e069-4971-9201-e1aa31ccc8b0'),
('8d380b16-5d81-4201-9e8d-7cba22963840', '3cd03985-e069-4971-9201-e1aa31ccc8b0'),
('eee62a06-f60e-4ef8-954a-98dfeb869976', '3cd03985-e069-4971-9201-e1aa31ccc8b0'),
('2cfba5c8-fe75-4430-a19a-3540bb233524', '3f0b39cb-0a1b-4428-b36f-b8c098126dbd'),
('633af178-e78b-48c8-9597-3160620f3c57', '3f0b39cb-0a1b-4428-b36f-b8c098126dbd'),
('65ea9797-4b0f-4999-ab41-529c0d483022', '3f0b39cb-0a1b-4428-b36f-b8c098126dbd'),
('695a6fc3-6969-4684-b8b1-715fc75c782d', '3f0b39cb-0a1b-4428-b36f-b8c098126dbd'),
('8d380b16-5d81-4201-9e8d-7cba22963840', '3f0b39cb-0a1b-4428-b36f-b8c098126dbd'),
('eee62a06-f60e-4ef8-954a-98dfeb869976', '3f0b39cb-0a1b-4428-b36f-b8c098126dbd'),
('30e25665-437b-4004-bc41-22cb574cbe88', 'b89fdb86-b9f5-4f3b-98a5-044ae2a59299'),
('4bd62c62-f5d7-4af8-85ab-2ffa8cdcbe13', 'b89fdb86-b9f5-4f3b-98a5-044ae2a59299'),
('5a0bdd90-2ad1-4322-9ca2-e5e89fa5834d', 'b89fdb86-b9f5-4f3b-98a5-044ae2a59299'),
('a3a2ca14-c84b-4795-91cd-6395d91b2b95', 'b89fdb86-b9f5-4f3b-98a5-044ae2a59299'),
('fa61fc5e-1b07-433f-916c-1af7bd690ed1', 'b89fdb86-b9f5-4f3b-98a5-044ae2a59299');

-- --------------------------------------------------------

--
-- Table structure for table `USER_SESSION`
--

CREATE TABLE `USER_SESSION` (
  `ID` varchar(36) NOT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) DEFAULT NULL,
  `LOGIN_USERNAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `STARTED` int(11) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `USER_SESSION_STATE` int(11) DEFAULT NULL,
  `BROKER_SESSION_ID` varchar(255) DEFAULT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_SESSION_NOTE`
--

CREATE TABLE `USER_SESSION_NOTE` (
  `USER_SESSION` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `WEB_ORIGINS`
--

CREATE TABLE `WEB_ORIGINS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `WEB_ORIGINS`
--

INSERT INTO `WEB_ORIGINS` (`CLIENT_ID`, `VALUE`) VALUES
('67d4cec4-2ff5-4919-bb25-247374b8d742', '+'),
('86cae607-1818-46da-94af-8cfb79cfa88a', '+'),
('dd93430b-5fc4-4269-899d-672cb476154e', '{{ .Env.APP_BASE_URL }}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADMIN_EVENT_ENTITY`
--
ALTER TABLE `ADMIN_EVENT_ENTITY`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ASSOCIATED_POLICY`
--
ALTER TABLE `ASSOCIATED_POLICY`
  ADD PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  ADD KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`);

--
-- Indexes for table `AUTHENTICATION_EXECUTION`
--
ALTER TABLE `AUTHENTICATION_EXECUTION`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  ADD KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`);

--
-- Indexes for table `AUTHENTICATION_FLOW`
--
ALTER TABLE `AUTHENTICATION_FLOW`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`);

--
-- Indexes for table `AUTHENTICATOR_CONFIG`
--
ALTER TABLE `AUTHENTICATOR_CONFIG`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`);

--
-- Indexes for table `AUTHENTICATOR_CONFIG_ENTRY`
--
ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY`
  ADD PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`);

--
-- Indexes for table `BROKER_LINK`
--
ALTER TABLE `BROKER_LINK`
  ADD PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`);

--
-- Indexes for table `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  ADD KEY `IDX_CLIENT_ID` (`CLIENT_ID`);

--
-- Indexes for table `CLIENT_ATTRIBUTES`
--
ALTER TABLE `CLIENT_ATTRIBUTES`
  ADD PRIMARY KEY (`CLIENT_ID`,`NAME`);

--
-- Indexes for table `CLIENT_AUTH_FLOW_BINDINGS`
--
ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS`
  ADD PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`);

--
-- Indexes for table `CLIENT_DEFAULT_ROLES`
--
ALTER TABLE `CLIENT_DEFAULT_ROLES`
  ADD PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  ADD UNIQUE KEY `UK_8AELWNIBJI49AVXSRTUF6XJOW` (`ROLE_ID`),
  ADD KEY `IDX_CLIENT_DEF_ROLES_CLIENT` (`CLIENT_ID`);

--
-- Indexes for table `CLIENT_INITIAL_ACCESS`
--
ALTER TABLE `CLIENT_INITIAL_ACCESS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`);

--
-- Indexes for table `CLIENT_NODE_REGISTRATIONS`
--
ALTER TABLE `CLIENT_NODE_REGISTRATIONS`
  ADD PRIMARY KEY (`CLIENT_ID`,`NAME`);

--
-- Indexes for table `CLIENT_SCOPE`
--
ALTER TABLE `CLIENT_SCOPE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  ADD KEY `IDX_REALM_CLSCOPE` (`REALM_ID`);

--
-- Indexes for table `CLIENT_SCOPE_ATTRIBUTES`
--
ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES`
  ADD PRIMARY KEY (`SCOPE_ID`,`NAME`),
  ADD KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`);

--
-- Indexes for table `CLIENT_SCOPE_CLIENT`
--
ALTER TABLE `CLIENT_SCOPE_CLIENT`
  ADD PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  ADD KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  ADD KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`);

--
-- Indexes for table `CLIENT_SCOPE_ROLE_MAPPING`
--
ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING`
  ADD PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  ADD KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  ADD KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`);

--
-- Indexes for table `CLIENT_SESSION`
--
ALTER TABLE `CLIENT_SESSION`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_CLIENT_SESSION_SESSION` (`SESSION_ID`);

--
-- Indexes for table `CLIENT_SESSION_AUTH_STATUS`
--
ALTER TABLE `CLIENT_SESSION_AUTH_STATUS`
  ADD PRIMARY KEY (`CLIENT_SESSION`,`AUTHENTICATOR`);

--
-- Indexes for table `CLIENT_SESSION_NOTE`
--
ALTER TABLE `CLIENT_SESSION_NOTE`
  ADD PRIMARY KEY (`CLIENT_SESSION`,`NAME`);

--
-- Indexes for table `CLIENT_SESSION_PROT_MAPPER`
--
ALTER TABLE `CLIENT_SESSION_PROT_MAPPER`
  ADD PRIMARY KEY (`CLIENT_SESSION`,`PROTOCOL_MAPPER_ID`);

--
-- Indexes for table `CLIENT_SESSION_ROLE`
--
ALTER TABLE `CLIENT_SESSION_ROLE`
  ADD PRIMARY KEY (`CLIENT_SESSION`,`ROLE_ID`);

--
-- Indexes for table `CLIENT_USER_SESSION_NOTE`
--
ALTER TABLE `CLIENT_USER_SESSION_NOTE`
  ADD PRIMARY KEY (`CLIENT_SESSION`,`NAME`);

--
-- Indexes for table `COMPONENT`
--
ALTER TABLE `COMPONENT`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_COMPONENT_REALM` (`REALM_ID`),
  ADD KEY `IDX_COMPONENT_PROVIDER_TYPE` (`PROVIDER_TYPE`);

--
-- Indexes for table `COMPONENT_CONFIG`
--
ALTER TABLE `COMPONENT_CONFIG`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`);

--
-- Indexes for table `COMPOSITE_ROLE`
--
ALTER TABLE `COMPOSITE_ROLE`
  ADD PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  ADD KEY `IDX_COMPOSITE` (`COMPOSITE`),
  ADD KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`);

--
-- Indexes for table `CREDENTIAL`
--
ALTER TABLE `CREDENTIAL`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USER_CREDENTIAL` (`USER_ID`);

--
-- Indexes for table `DATABASECHANGELOGLOCK`
--
ALTER TABLE `DATABASECHANGELOGLOCK`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `DEFAULT_CLIENT_SCOPE`
--
ALTER TABLE `DEFAULT_CLIENT_SCOPE`
  ADD PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  ADD KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  ADD KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`);

--
-- Indexes for table `EVENT_ENTITY`
--
ALTER TABLE `EVENT_ENTITY`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_EVENT_TIME` (`REALM_ID`,`EVENT_TIME`);

--
-- Indexes for table `FEDERATED_IDENTITY`
--
ALTER TABLE `FEDERATED_IDENTITY`
  ADD PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  ADD KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  ADD KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`);

--
-- Indexes for table `FEDERATED_USER`
--
ALTER TABLE `FEDERATED_USER`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `FED_USER_ATTRIBUTE`
--
ALTER TABLE `FED_USER_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`);

--
-- Indexes for table `FED_USER_CONSENT`
--
ALTER TABLE `FED_USER_CONSENT`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_FU_CONSENT` (`USER_ID`,`CLIENT_ID`),
  ADD KEY `IDX_FU_CONSENT_RU` (`REALM_ID`,`USER_ID`),
  ADD KEY `IDX_FU_CNSNT_EXT` (`USER_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`);

--
-- Indexes for table `FED_USER_CONSENT_CL_SCOPE`
--
ALTER TABLE `FED_USER_CONSENT_CL_SCOPE`
  ADD PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`);

--
-- Indexes for table `FED_USER_CREDENTIAL`
--
ALTER TABLE `FED_USER_CREDENTIAL`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_FU_CREDENTIAL` (`USER_ID`,`TYPE`),
  ADD KEY `IDX_FU_CREDENTIAL_RU` (`REALM_ID`,`USER_ID`);

--
-- Indexes for table `FED_USER_GROUP_MEMBERSHIP`
--
ALTER TABLE `FED_USER_GROUP_MEMBERSHIP`
  ADD PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  ADD KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  ADD KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`);

--
-- Indexes for table `FED_USER_REQUIRED_ACTION`
--
ALTER TABLE `FED_USER_REQUIRED_ACTION`
  ADD PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  ADD KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  ADD KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`);

--
-- Indexes for table `FED_USER_ROLE_MAPPING`
--
ALTER TABLE `FED_USER_ROLE_MAPPING`
  ADD PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  ADD KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  ADD KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`);

--
-- Indexes for table `GROUP_ATTRIBUTE`
--
ALTER TABLE `GROUP_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`);

--
-- Indexes for table `GROUP_ROLE_MAPPING`
--
ALTER TABLE `GROUP_ROLE_MAPPING`
  ADD PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  ADD KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`);

--
-- Indexes for table `IDENTITY_PROVIDER`
--
ALTER TABLE `IDENTITY_PROVIDER`
  ADD PRIMARY KEY (`INTERNAL_ID`),
  ADD UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  ADD KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`);

--
-- Indexes for table `IDENTITY_PROVIDER_CONFIG`
--
ALTER TABLE `IDENTITY_PROVIDER_CONFIG`
  ADD PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`);

--
-- Indexes for table `IDENTITY_PROVIDER_MAPPER`
--
ALTER TABLE `IDENTITY_PROVIDER_MAPPER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`);

--
-- Indexes for table `IDP_MAPPER_CONFIG`
--
ALTER TABLE `IDP_MAPPER_CONFIG`
  ADD PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`);

--
-- Indexes for table `KEYCLOAK_GROUP`
--
ALTER TABLE `KEYCLOAK_GROUP`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`);

--
-- Indexes for table `KEYCLOAK_ROLE`
--
ALTER TABLE `KEYCLOAK_ROLE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  ADD KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  ADD KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`);

--
-- Indexes for table `MIGRATION_MODEL`
--
ALTER TABLE `MIGRATION_MODEL`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`);

--
-- Indexes for table `OFFLINE_CLIENT_SESSION`
--
ALTER TABLE `OFFLINE_CLIENT_SESSION`
  ADD PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  ADD KEY `IDX_US_SESS_ID_ON_CL_SESS` (`USER_SESSION_ID`);

--
-- Indexes for table `OFFLINE_USER_SESSION`
--
ALTER TABLE `OFFLINE_USER_SESSION`
  ADD PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  ADD KEY `IDX_OFFLINE_USS_CREATEDON` (`CREATED_ON`);

--
-- Indexes for table `POLICY_CONFIG`
--
ALTER TABLE `POLICY_CONFIG`
  ADD PRIMARY KEY (`POLICY_ID`,`NAME`);

--
-- Indexes for table `PROTOCOL_MAPPER`
--
ALTER TABLE `PROTOCOL_MAPPER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  ADD KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`);

--
-- Indexes for table `PROTOCOL_MAPPER_CONFIG`
--
ALTER TABLE `PROTOCOL_MAPPER_CONFIG`
  ADD PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`);

--
-- Indexes for table `REALM`
--
ALTER TABLE `REALM`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  ADD KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`);

--
-- Indexes for table `REALM_ATTRIBUTE`
--
ALTER TABLE `REALM_ATTRIBUTE`
  ADD PRIMARY KEY (`NAME`,`REALM_ID`),
  ADD KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`);

--
-- Indexes for table `REALM_DEFAULT_GROUPS`
--
ALTER TABLE `REALM_DEFAULT_GROUPS`
  ADD PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  ADD UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  ADD KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`);

--
-- Indexes for table `REALM_DEFAULT_ROLES`
--
ALTER TABLE `REALM_DEFAULT_ROLES`
  ADD PRIMARY KEY (`REALM_ID`,`ROLE_ID`),
  ADD UNIQUE KEY `UK_H4WPD7W4HSOOLNI3H0SW7BTJE` (`ROLE_ID`),
  ADD KEY `IDX_REALM_DEF_ROLES_REALM` (`REALM_ID`);

--
-- Indexes for table `REALM_ENABLED_EVENT_TYPES`
--
ALTER TABLE `REALM_ENABLED_EVENT_TYPES`
  ADD PRIMARY KEY (`REALM_ID`,`VALUE`),
  ADD KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`);

--
-- Indexes for table `REALM_EVENTS_LISTENERS`
--
ALTER TABLE `REALM_EVENTS_LISTENERS`
  ADD PRIMARY KEY (`REALM_ID`,`VALUE`),
  ADD KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`);

--
-- Indexes for table `REALM_REQUIRED_CREDENTIAL`
--
ALTER TABLE `REALM_REQUIRED_CREDENTIAL`
  ADD PRIMARY KEY (`REALM_ID`,`TYPE`);

--
-- Indexes for table `REALM_SMTP_CONFIG`
--
ALTER TABLE `REALM_SMTP_CONFIG`
  ADD PRIMARY KEY (`REALM_ID`,`NAME`);

--
-- Indexes for table `REALM_SUPPORTED_LOCALES`
--
ALTER TABLE `REALM_SUPPORTED_LOCALES`
  ADD PRIMARY KEY (`REALM_ID`,`VALUE`),
  ADD KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`);

--
-- Indexes for table `REDIRECT_URIS`
--
ALTER TABLE `REDIRECT_URIS`
  ADD PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  ADD KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`);

--
-- Indexes for table `REQUIRED_ACTION_CONFIG`
--
ALTER TABLE `REQUIRED_ACTION_CONFIG`
  ADD PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`);

--
-- Indexes for table `REQUIRED_ACTION_PROVIDER`
--
ALTER TABLE `REQUIRED_ACTION_PROVIDER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`);

--
-- Indexes for table `RESOURCE_ATTRIBUTE`
--
ALTER TABLE `RESOURCE_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`);

--
-- Indexes for table `RESOURCE_POLICY`
--
ALTER TABLE `RESOURCE_POLICY`
  ADD PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  ADD KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`);

--
-- Indexes for table `RESOURCE_SCOPE`
--
ALTER TABLE `RESOURCE_SCOPE`
  ADD PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  ADD KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`);

--
-- Indexes for table `RESOURCE_SERVER`
--
ALTER TABLE `RESOURCE_SERVER`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `RESOURCE_SERVER_PERM_TICKET`
--
ALTER TABLE `RESOURCE_SERVER_PERM_TICKET`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5PMT` (`OWNER`,`REQUESTER`,`RESOURCE_SERVER_ID`,`RESOURCE_ID`,`SCOPE_ID`),
  ADD KEY `FK_FRSRHO213XCX4WNKOG82SSPMT` (`RESOURCE_SERVER_ID`),
  ADD KEY `FK_FRSRHO213XCX4WNKOG83SSPMT` (`RESOURCE_ID`),
  ADD KEY `FK_FRSRHO213XCX4WNKOG84SSPMT` (`SCOPE_ID`),
  ADD KEY `FK_FRSRPO2128CX4WNKOG82SSRFY` (`POLICY_ID`);

--
-- Indexes for table `RESOURCE_SERVER_POLICY`
--
ALTER TABLE `RESOURCE_SERVER_POLICY`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  ADD KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`);

--
-- Indexes for table `RESOURCE_SERVER_RESOURCE`
--
ALTER TABLE `RESOURCE_SERVER_RESOURCE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  ADD KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`);

--
-- Indexes for table `RESOURCE_SERVER_SCOPE`
--
ALTER TABLE `RESOURCE_SERVER_SCOPE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  ADD KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`);

--
-- Indexes for table `RESOURCE_URIS`
--
ALTER TABLE `RESOURCE_URIS`
  ADD PRIMARY KEY (`RESOURCE_ID`,`VALUE`);

--
-- Indexes for table `ROLE_ATTRIBUTE`
--
ALTER TABLE `ROLE_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`);

--
-- Indexes for table `SCOPE_MAPPING`
--
ALTER TABLE `SCOPE_MAPPING`
  ADD PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  ADD KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`);

--
-- Indexes for table `SCOPE_POLICY`
--
ALTER TABLE `SCOPE_POLICY`
  ADD PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  ADD KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`);

--
-- Indexes for table `USERNAME_LOGIN_FAILURE`
--
ALTER TABLE `USERNAME_LOGIN_FAILURE`
  ADD PRIMARY KEY (`REALM_ID`,`USERNAME`);

--
-- Indexes for table `USER_ATTRIBUTE`
--
ALTER TABLE `USER_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USER_ATTRIBUTE` (`USER_ID`);

--
-- Indexes for table `USER_CONSENT`
--
ALTER TABLE `USER_CONSENT`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_JKUWUVD56ONTGSUHOGM8UEWRT` (`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  ADD KEY `IDX_USER_CONSENT` (`USER_ID`);

--
-- Indexes for table `USER_CONSENT_CLIENT_SCOPE`
--
ALTER TABLE `USER_CONSENT_CLIENT_SCOPE`
  ADD PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`),
  ADD KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`);

--
-- Indexes for table `USER_ENTITY`
--
ALTER TABLE `USER_ENTITY`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  ADD UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  ADD KEY `IDX_USER_EMAIL` (`EMAIL`);

--
-- Indexes for table `USER_FEDERATION_CONFIG`
--
ALTER TABLE `USER_FEDERATION_CONFIG`
  ADD PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`);

--
-- Indexes for table `USER_FEDERATION_MAPPER`
--
ALTER TABLE `USER_FEDERATION_MAPPER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  ADD KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`);

--
-- Indexes for table `USER_FEDERATION_MAPPER_CONFIG`
--
ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG`
  ADD PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`);

--
-- Indexes for table `USER_FEDERATION_PROVIDER`
--
ALTER TABLE `USER_FEDERATION_PROVIDER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USR_FED_PRV_REALM` (`REALM_ID`);

--
-- Indexes for table `USER_GROUP_MEMBERSHIP`
--
ALTER TABLE `USER_GROUP_MEMBERSHIP`
  ADD PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  ADD KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`);

--
-- Indexes for table `USER_REQUIRED_ACTION`
--
ALTER TABLE `USER_REQUIRED_ACTION`
  ADD PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  ADD KEY `IDX_USER_REQACTIONS` (`USER_ID`);

--
-- Indexes for table `USER_ROLE_MAPPING`
--
ALTER TABLE `USER_ROLE_MAPPING`
  ADD PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  ADD KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`);

--
-- Indexes for table `USER_SESSION`
--
ALTER TABLE `USER_SESSION`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `USER_SESSION_NOTE`
--
ALTER TABLE `USER_SESSION_NOTE`
  ADD PRIMARY KEY (`USER_SESSION`,`NAME`);

--
-- Indexes for table `WEB_ORIGINS`
--
ALTER TABLE `WEB_ORIGINS`
  ADD PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  ADD KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ASSOCIATED_POLICY`
--
ALTER TABLE `ASSOCIATED_POLICY`
  ADD CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  ADD CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Constraints for table `AUTHENTICATION_EXECUTION`
--
ALTER TABLE `AUTHENTICATION_EXECUTION`
  ADD CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `AUTHENTICATION_FLOW` (`ID`),
  ADD CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `AUTHENTICATION_FLOW`
--
ALTER TABLE `AUTHENTICATION_FLOW`
  ADD CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `AUTHENTICATOR_CONFIG`
--
ALTER TABLE `AUTHENTICATOR_CONFIG`
  ADD CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD CONSTRAINT `FK_P56CTINXXB9GSK57FO49F9TAC` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `CLIENT_ATTRIBUTES`
--
ALTER TABLE `CLIENT_ATTRIBUTES`
  ADD CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Constraints for table `CLIENT_DEFAULT_ROLES`
--
ALTER TABLE `CLIENT_DEFAULT_ROLES`
  ADD CONSTRAINT `FK_8AELWNIBJI49AVXSRTUF6XJOW` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  ADD CONSTRAINT `FK_NUILTS7KLWQW2H8M2B5JOYTKY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Constraints for table `CLIENT_INITIAL_ACCESS`
--
ALTER TABLE `CLIENT_INITIAL_ACCESS`
  ADD CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `CLIENT_NODE_REGISTRATIONS`
--
ALTER TABLE `CLIENT_NODE_REGISTRATIONS`
  ADD CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Constraints for table `CLIENT_SCOPE`
--
ALTER TABLE `CLIENT_SCOPE`
  ADD CONSTRAINT `FK_REALM_CLI_SCOPE` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `CLIENT_SCOPE_ATTRIBUTES`
--
ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES`
  ADD CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`);

--
-- Constraints for table `CLIENT_SCOPE_CLIENT`
--
ALTER TABLE `CLIENT_SCOPE_CLIENT`
  ADD CONSTRAINT `FK_C_CLI_SCOPE_CLIENT` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`),
  ADD CONSTRAINT `FK_C_CLI_SCOPE_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`);

--
-- Constraints for table `CLIENT_SCOPE_ROLE_MAPPING`
--
ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING`
  ADD CONSTRAINT `FK_CL_SCOPE_RM_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  ADD CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`);

--
-- Constraints for table `CLIENT_SESSION`
--
ALTER TABLE `CLIENT_SESSION`
  ADD CONSTRAINT `FK_B4AO2VCVAT6UKAU74WBWTFQO1` FOREIGN KEY (`SESSION_ID`) REFERENCES `USER_SESSION` (`ID`);

--
-- Constraints for table `CLIENT_SESSION_AUTH_STATUS`
--
ALTER TABLE `CLIENT_SESSION_AUTH_STATUS`
  ADD CONSTRAINT `AUTH_STATUS_CONSTRAINT` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`);

--
-- Constraints for table `CLIENT_SESSION_NOTE`
--
ALTER TABLE `CLIENT_SESSION_NOTE`
  ADD CONSTRAINT `FK5EDFB00FF51C2736` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`);

--
-- Constraints for table `CLIENT_SESSION_PROT_MAPPER`
--
ALTER TABLE `CLIENT_SESSION_PROT_MAPPER`
  ADD CONSTRAINT `FK_33A8SGQW18I532811V7O2DK89` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`);

--
-- Constraints for table `CLIENT_SESSION_ROLE`
--
ALTER TABLE `CLIENT_SESSION_ROLE`
  ADD CONSTRAINT `FK_11B7SGQW18I532811V7O2DV76` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`);

--
-- Constraints for table `CLIENT_USER_SESSION_NOTE`
--
ALTER TABLE `CLIENT_USER_SESSION_NOTE`
  ADD CONSTRAINT `FK_CL_USR_SES_NOTE` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`);

--
-- Constraints for table `COMPONENT`
--
ALTER TABLE `COMPONENT`
  ADD CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `COMPONENT_CONFIG`
--
ALTER TABLE `COMPONENT_CONFIG`
  ADD CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `COMPONENT` (`ID`);

--
-- Constraints for table `COMPOSITE_ROLE`
--
ALTER TABLE `COMPOSITE_ROLE`
  ADD CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  ADD CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `KEYCLOAK_ROLE` (`ID`);

--
-- Constraints for table `CREDENTIAL`
--
ALTER TABLE `CREDENTIAL`
  ADD CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Constraints for table `DEFAULT_CLIENT_SCOPE`
--
ALTER TABLE `DEFAULT_CLIENT_SCOPE`
  ADD CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`),
  ADD CONSTRAINT `FK_R_DEF_CLI_SCOPE_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`);

--
-- Constraints for table `FEDERATED_IDENTITY`
--
ALTER TABLE `FEDERATED_IDENTITY`
  ADD CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Constraints for table `GROUP_ATTRIBUTE`
--
ALTER TABLE `GROUP_ATTRIBUTE`
  ADD CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`);

--
-- Constraints for table `GROUP_ROLE_MAPPING`
--
ALTER TABLE `GROUP_ROLE_MAPPING`
  ADD CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`),
  ADD CONSTRAINT `FK_GROUP_ROLE_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`);

--
-- Constraints for table `IDENTITY_PROVIDER`
--
ALTER TABLE `IDENTITY_PROVIDER`
  ADD CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `IDENTITY_PROVIDER_CONFIG`
--
ALTER TABLE `IDENTITY_PROVIDER_CONFIG`
  ADD CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `IDENTITY_PROVIDER` (`INTERNAL_ID`);

--
-- Constraints for table `IDENTITY_PROVIDER_MAPPER`
--
ALTER TABLE `IDENTITY_PROVIDER_MAPPER`
  ADD CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `IDP_MAPPER_CONFIG`
--
ALTER TABLE `IDP_MAPPER_CONFIG`
  ADD CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `IDENTITY_PROVIDER_MAPPER` (`ID`);

--
-- Constraints for table `KEYCLOAK_GROUP`
--
ALTER TABLE `KEYCLOAK_GROUP`
  ADD CONSTRAINT `FK_GROUP_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `KEYCLOAK_ROLE`
--
ALTER TABLE `KEYCLOAK_ROLE`
  ADD CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `REALM` (`ID`),
  ADD CONSTRAINT `FK_KJHO5LE2C0RAL09FL8CM9WFW9` FOREIGN KEY (`CLIENT`) REFERENCES `CLIENT` (`ID`);

--
-- Constraints for table `POLICY_CONFIG`
--
ALTER TABLE `POLICY_CONFIG`
  ADD CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Constraints for table `PROTOCOL_MAPPER`
--
ALTER TABLE `PROTOCOL_MAPPER`
  ADD CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`),
  ADD CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Constraints for table `PROTOCOL_MAPPER_CONFIG`
--
ALTER TABLE `PROTOCOL_MAPPER_CONFIG`
  ADD CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `PROTOCOL_MAPPER` (`ID`);

--
-- Constraints for table `REALM`
--
ALTER TABLE `REALM`
  ADD CONSTRAINT `FK_TRAF444KK6QRKMS7N56AIWQ5Y` FOREIGN KEY (`MASTER_ADMIN_CLIENT`) REFERENCES `CLIENT` (`ID`);

--
-- Constraints for table `REALM_ATTRIBUTE`
--
ALTER TABLE `REALM_ATTRIBUTE`
  ADD CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `REALM_DEFAULT_GROUPS`
--
ALTER TABLE `REALM_DEFAULT_GROUPS`
  ADD CONSTRAINT `FK_DEF_GROUPS_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`),
  ADD CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `REALM_DEFAULT_ROLES`
--
ALTER TABLE `REALM_DEFAULT_ROLES`
  ADD CONSTRAINT `FK_EVUDB1PPW84OXFAX2DRS03ICC` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`),
  ADD CONSTRAINT `FK_H4WPD7W4HSOOLNI3H0SW7BTJE` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`);

--
-- Constraints for table `REALM_ENABLED_EVENT_TYPES`
--
ALTER TABLE `REALM_ENABLED_EVENT_TYPES`
  ADD CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `REALM_EVENTS_LISTENERS`
--
ALTER TABLE `REALM_EVENTS_LISTENERS`
  ADD CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `REALM_REQUIRED_CREDENTIAL`
--
ALTER TABLE `REALM_REQUIRED_CREDENTIAL`
  ADD CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `REALM_SMTP_CONFIG`
--
ALTER TABLE `REALM_SMTP_CONFIG`
  ADD CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `REALM_SUPPORTED_LOCALES`
--
ALTER TABLE `REALM_SUPPORTED_LOCALES`
  ADD CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `REDIRECT_URIS`
--
ALTER TABLE `REDIRECT_URIS`
  ADD CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Constraints for table `REQUIRED_ACTION_PROVIDER`
--
ALTER TABLE `REQUIRED_ACTION_PROVIDER`
  ADD CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `RESOURCE_ATTRIBUTE`
--
ALTER TABLE `RESOURCE_ATTRIBUTE`
  ADD CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`);

--
-- Constraints for table `RESOURCE_POLICY`
--
ALTER TABLE `RESOURCE_POLICY`
  ADD CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  ADD CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Constraints for table `RESOURCE_SCOPE`
--
ALTER TABLE `RESOURCE_SCOPE`
  ADD CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  ADD CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`);

--
-- Constraints for table `RESOURCE_SERVER_PERM_TICKET`
--
ALTER TABLE `RESOURCE_SERVER_PERM_TICKET`
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`),
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`),
  ADD CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Constraints for table `RESOURCE_SERVER_POLICY`
--
ALTER TABLE `RESOURCE_SERVER_POLICY`
  ADD CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`);

--
-- Constraints for table `RESOURCE_SERVER_RESOURCE`
--
ALTER TABLE `RESOURCE_SERVER_RESOURCE`
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`);

--
-- Constraints for table `RESOURCE_SERVER_SCOPE`
--
ALTER TABLE `RESOURCE_SERVER_SCOPE`
  ADD CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`);

--
-- Constraints for table `RESOURCE_URIS`
--
ALTER TABLE `RESOURCE_URIS`
  ADD CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`);

--
-- Constraints for table `ROLE_ATTRIBUTE`
--
ALTER TABLE `ROLE_ATTRIBUTE`
  ADD CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`);

--
-- Constraints for table `SCOPE_MAPPING`
--
ALTER TABLE `SCOPE_MAPPING`
  ADD CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`),
  ADD CONSTRAINT `FK_P3RH9GRKU11KQFRS4FLTT7RNQ` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`);

--
-- Constraints for table `SCOPE_POLICY`
--
ALTER TABLE `SCOPE_POLICY`
  ADD CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  ADD CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`);

--
-- Constraints for table `USER_ATTRIBUTE`
--
ALTER TABLE `USER_ATTRIBUTE`
  ADD CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Constraints for table `USER_CONSENT`
--
ALTER TABLE `USER_CONSENT`
  ADD CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Constraints for table `USER_CONSENT_CLIENT_SCOPE`
--
ALTER TABLE `USER_CONSENT_CLIENT_SCOPE`
  ADD CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `USER_CONSENT` (`ID`);

--
-- Constraints for table `USER_FEDERATION_CONFIG`
--
ALTER TABLE `USER_FEDERATION_CONFIG`
  ADD CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`);

--
-- Constraints for table `USER_FEDERATION_MAPPER`
--
ALTER TABLE `USER_FEDERATION_MAPPER`
  ADD CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`),
  ADD CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `USER_FEDERATION_MAPPER_CONFIG`
--
ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG`
  ADD CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `USER_FEDERATION_MAPPER` (`ID`);

--
-- Constraints for table `USER_FEDERATION_PROVIDER`
--
ALTER TABLE `USER_FEDERATION_PROVIDER`
  ADD CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Constraints for table `USER_GROUP_MEMBERSHIP`
--
ALTER TABLE `USER_GROUP_MEMBERSHIP`
  ADD CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Constraints for table `USER_REQUIRED_ACTION`
--
ALTER TABLE `USER_REQUIRED_ACTION`
  ADD CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Constraints for table `USER_ROLE_MAPPING`
--
ALTER TABLE `USER_ROLE_MAPPING`
  ADD CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Constraints for table `USER_SESSION_NOTE`
--
ALTER TABLE `USER_SESSION_NOTE`
  ADD CONSTRAINT `FK5EDFB00FF51D3472` FOREIGN KEY (`USER_SESSION`) REFERENCES `USER_SESSION` (`ID`);

--
-- Constraints for table `WEB_ORIGINS`
--
ALTER TABLE `WEB_ORIGINS`
  ADD CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
