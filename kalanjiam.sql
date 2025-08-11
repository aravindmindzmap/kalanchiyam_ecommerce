-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2025 at 04:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kalanjiam`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_settings`
--

CREATE TABLE `addon_settings` (
  `id` char(36) NOT NULL,
  `key_name` varchar(191) DEFAULT NULL,
  `live_values` longtext DEFAULT NULL,
  `test_values` longtext DEFAULT NULL,
  `settings_type` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_settings`
--

INSERT INTO `addon_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`, `additional_data`) VALUES
('070c6bbd-d777-11ed-96f4-0c7a158e4469', 'twilio', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:29', NULL),
('070c766c-d777-11ed-96f4-0c7a158e4469', '2factor', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"otp_template\":\"OTP1\"}', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"otp_template\":\"OTP1\"}', 'sms_config', 'live', 0, NULL, '2025-05-11 07:50:11', NULL),
('0d8a9308-d6a5-11ed-962c-0c7a158e4469', 'mercadopago', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-27 11:57:11', '{\"gateway_title\":\"Mercadopago\",\"gateway_image\":null}'),
('0d8a9e49-d6a5-11ed-962c-0c7a158e4469', 'liqpay', '{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}', '{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:31', '{\"gateway_title\":\"Liqpay\",\"gateway_image\":null}'),
('101befdf-d44b-11ed-8564-0c7a158e4469', 'paypal', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:41:32', '{\"gateway_title\":\"Paypal\",\"gateway_image\":null}'),
('133d9647-cabb-11ed-8fec-0c7a158e4469', 'hyper_pay', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:42', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('1821029f-d776-11ed-96f4-0c7a158e4469', 'msg91', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:48', NULL),
('18210f2b-d776-11ed-96f4-0c7a158e4469', 'nexmo', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('18fbb21f-d6ad-11ed-962c-0c7a158e4469', 'foloosi', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:33', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('2767d142-d6a1-11ed-962c-0c7a158e4469', 'paytm', '{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}', '{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-22 06:30:55', '{\"gateway_title\":\"Paytm\",\"gateway_image\":null}'),
('3201d2e6-c937-11ed-a424-0c7a158e4469', 'amazon_pay', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:07', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('33a90207-7315-4bfe-a9af-d16049cc0b7c', 'cashfree', '\"{\\\"gateway\\\":\\\"cashfree\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"', '\"{\\\"gateway\\\":\\\"cashfree\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"', 'payment_config', 'test', 0, '2024-12-21 06:51:28', '2024-12-21 06:51:28', NULL),
('4593b25c-d6a1-11ed-962c-0c7a158e4469', 'paytabs', '{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', '{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:51', '{\"gateway_title\":\"Paytabs\",\"gateway_image\":null}'),
('4e9b8dfb-e7d1-11ed-a559-0c7a158e4469', 'bkash', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:39:42', '{\"gateway_title\":\"Bkash\",\"gateway_image\":null}'),
('544a24a4-c872-11ed-ac7a-0c7a158e4469', 'fatoorah', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:24', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('58c1bc8a-d6ac-11ed-962c-0c7a158e4469', 'ccavenue', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:42:38', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-643783f01d386.png\"}'),
('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469', 'thawani', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:40', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-64378f9856f29.png\"}'),
('60cc83cc-d5b9-11ed-b56f-0c7a158e4469', 'sixcash', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:16:17', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-6436774e77ff9.png\"}'),
('68579846-d8e8-11ed-8249-0c7a158e4469', 'alphanet_sms', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('6857a2e8-d8e8-11ed-8249-0c7a158e4469', 'sms_to', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('74c30c00-d6a6-11ed-962c-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:37:43', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('74e46b0a-d6aa-11ed-962c-0c7a158e4469', 'tap', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:09', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('761ca96c-d1eb-11ed-87ca-0c7a158e4469', 'swish', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469', 'payfast', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:13', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('8592417b-d1d1-11ed-a984-0c7a158e4469', 'esewa', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:38', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('888e7b84-27b3-497d-a5ef-cd69d65a798e', 'instamojo', '\"{\\\"gateway\\\":\\\"instamojo\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":\\\"0\\\",\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"', '\"{\\\"gateway\\\":\\\"instamojo\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":\\\"0\\\",\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"', 'payment_config', 'test', 0, '2024-12-21 06:51:28', '2024-12-21 06:51:28', NULL),
('9162a1dc-cdf1-11ed-affe-0c7a158e4469', 'viva_wallet', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', 'payment_config', 'test', 0, NULL, NULL, NULL),
('998ccc62-d6a0-11ed-962c-0c7a158e4469', 'stripe', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:55', '{\"gateway_title\":\"Stripe\",\"gateway_image\":null}'),
('a3313755-c95d-11ed-b1db-0c7a158e4469', 'iyzi_pay', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a76c8993-d299-11ed-b485-0c7a158e4469', 'momo', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:19:28', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a8608119-cc76-11ed-9bca-0c7a158e4469', 'moncash', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:34', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('ad5af1c1-d6a2-11ed-962c-0c7a158e4469', 'razor_pay', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', 'payment_config', 'test', 1, NULL, '2025-07-18 05:29:15', '{\"gateway_title\":\"Razor pay\",\"gateway_image\":null}'),
('ad5b02a0-d6a2-11ed-962c-0c7a158e4469', 'senang_pay', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', 'payment_config', 'test', 0, NULL, '2023-08-27 09:58:57', '{\"gateway_title\":\"Senang pay\",\"gateway_image\":null}'),
('b043c880-874b-4ee7-b945-b19e3bb2cabc', 'phonepe', '\"{\\\"gateway\\\":\\\"phonepe\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"merchant_id\\\":\\\"\\\",\\\"salt_Key\\\":\\\"\\\",\\\"salt_index\\\":\\\"\\\"}\"', '\"{\\\"gateway\\\":\\\"phonepe\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"merchant_id\\\":\\\"\\\",\\\"salt_Key\\\":\\\"\\\",\\\"salt_index\\\":\\\"\\\"}\"', 'payment_config', 'test', 0, '2024-12-21 06:51:28', '2024-12-21 06:51:28', NULL),
('b6c333f6-d8e9-11ed-8249-0c7a158e4469', 'akandit_sms', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b6c33c87-d8e9-11ed-8249-0c7a158e4469', 'global_sms', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b8992bd4-d6a0-11ed-962c-0c7a158e4469', 'paymob_accept', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\",\"supported_country\":\"\",\"public_key\":\"\",\"secret_key\":\"\"}', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\",\"supported_country\":\"\",\"public_key\":\"\",\"secret_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2025-05-11 07:50:11', '{\"gateway_title\":\"Paymob accept\",\"gateway_image\":null}'),
('c41c0dcd-d119-11ed-9f67-0c7a158e4469', 'maxicash', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:49:15', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('c9249d17-cd60-11ed-b879-0c7a158e4469', 'pvit', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('cb0081ce-d775-11ed-96f4-0c7a158e4469', 'releans', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('d4f3f5f1-d6a0-11ed-962c-0c7a158e4469', 'flutterwave', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:41:03', '{\"gateway_title\":\"Flutterwave\",\"gateway_image\":null}'),
('d822f1a5-c864-11ed-ac7a-0c7a158e4469', 'paystack', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:45', '{\"gateway_title\":\"Paystack\",\"gateway_image\":null}'),
('daec8d59-c893-11ed-ac7a-0c7a158e4469', 'xendit', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:46', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469', 'worldpay', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:26', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('e0450278-d8eb-11ed-8249-0c7a158e4469', 'signal_wire', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('e0450b40-d8eb-11ed-8249-0c7a158e4469', 'paradox', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-09-10 01:14:01', NULL),
('ea346efe-cdda-11ed-affe-0c7a158e4469', 'ssl_commerz', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":\"\",\"store_password\":\"\"}', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":\"\",\"store_password\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:43:49', '{\"gateway_title\":\"Ssl commerz\",\"gateway_image\":null}'),
('eed88336-d8ec-11ed-8249-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149c546-d8ea-11ed-8249-0c7a158e4469', 'viatech', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149cd9c-d8ea-11ed-8249-0c7a158e4469', '019_sms', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `add_fund_bonus_categories`
--

CREATE TABLE `add_fund_bonus_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bonus_type` varchar(50) NOT NULL,
  `bonus_amount` double(14,2) NOT NULL DEFAULT 0.00,
  `min_add_money_amount` double(14,2) NOT NULL DEFAULT 0.00,
  `max_bonus_amount` double(14,2) NOT NULL DEFAULT 0.00,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `admin_role_id` bigint(20) NOT NULL DEFAULT 2,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `identify_image` text DEFAULT NULL,
  `identify_type` varchar(255) DEFAULT NULL,
  `identify_number` int(11) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `admin_role_id`, `image`, `identify_image`, `identify_type`, `identify_number`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Admin', '1234567890', 1, 'def.png', NULL, NULL, NULL, 'admin@gmail.com', NULL, '$2y$10$gASGXPswAH38WdBRHn8cw.pm5lCNTbk3ivfs9BG7qOmd8YItjTozu', NULL, '2025-07-18 05:45:48', '2025-07-18 05:45:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `module_access` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `module_access`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallets`
--

CREATE TABLE `admin_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `inhouse_earning` double NOT NULL DEFAULT 0,
  `withdrawn` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `pending_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tax_collected` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_wallets`
--

INSERT INTO `admin_wallets` (`id`, `admin_id`, `inhouse_earning`, `withdrawn`, `created_at`, `updated_at`, `commission_earned`, `delivery_charge_earned`, `pending_amount`, `total_tax_collected`) VALUES
(1, 1, 0, 0, NULL, NULL, 0.00, 0.00, 0.00, 0.00),
(2, 1, 0, 0, '2025-07-18 05:45:48', '2025-07-18 05:45:48', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet_histories`
--

CREATE TABLE `admin_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `payment` varchar(191) NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `analytic_scripts`
--

CREATE TABLE `analytic_scripts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `script_id` text DEFAULT NULL,
  `script` longtext DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `analytic_scripts`
--

INSERT INTO `analytic_scripts` (`id`, `name`, `type`, `script_id`, `script`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Meta Pixel', 'meta_pixel', NULL, NULL, 0, '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(2, 'LinkedIn Insight', 'linkedin_insight', NULL, NULL, 0, '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(3, 'TikTok Tag', 'tiktok_tag', NULL, NULL, 0, '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(4, 'Snapchat Tag', 'snapchat_tag', NULL, NULL, 0, '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(5, 'Twitter Tag', 'twitter_tag', NULL, NULL, 0, '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(6, 'Pinterest Tag', 'pinterest_tag', NULL, NULL, 0, '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(7, 'Google Tag Manager', 'google_tag_manager', NULL, NULL, 0, '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(8, 'Google Analytics', 'google_analytics', NULL, NULL, 0, '2025-02-13 08:41:39', '2025-02-13 08:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attachable_type` varchar(191) NOT NULL,
  `attachable_id` bigint(20) UNSIGNED NOT NULL,
  `file_type` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `storage_disk` varchar(191) NOT NULL DEFAULT 'public',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2025-07-22 09:39:28', '2025-07-22 09:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `banner_type` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL DEFAULT 'default',
  `published` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `resource_type` varchar(191) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `sub_title` varchar(191) DEFAULT NULL,
  `button_text` varchar(191) DEFAULT NULL,
  `background_color` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_person_name` varchar(191) DEFAULT NULL,
  `address_type` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` mediumtext NOT NULL,
  `readable_id` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_storage_type` varchar(15) DEFAULT 'public',
  `draft_image` varchar(255) DEFAULT NULL,
  `draft_image_storage_type` varchar(15) DEFAULT 'public',
  `publish_date` datetime NOT NULL DEFAULT '2025-02-13 14:40:55',
  `is_published` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_draft` tinyint(4) NOT NULL DEFAULT 0,
  `draft_data` text DEFAULT NULL,
  `click_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `click_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_seos`
--

CREATE TABLE `blog_seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `index` varchar(255) DEFAULT NULL,
  `no_follow` varchar(255) DEFAULT NULL,
  `no_image_index` varchar(255) DEFAULT NULL,
  `no_archive` varchar(255) DEFAULT NULL,
  `no_snippet` varchar(255) DEFAULT NULL,
  `max_snippet` varchar(255) DEFAULT NULL,
  `max_snippet_value` varchar(255) DEFAULT NULL,
  `max_video_preview` varchar(255) DEFAULT NULL,
  `max_video_preview_value` varchar(255) DEFAULT NULL,
  `max_image_preview` varchar(255) DEFAULT NULL,
  `max_image_preview_value` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translation_type` varchar(255) NOT NULL,
  `translation_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `is_draft` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(50) NOT NULL DEFAULT 'def.png',
  `image_storage_type` varchar(10) DEFAULT 'public',
  `image_alt_text` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `image_storage_type`, `image_alt_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ZUDIO', '2025-07-18-6879dd6687542.webp', 'public', 'ZUDIO', 1, '2025-07-18 05:36:38', '2025-07-18 05:38:36'),
(2, 'Nike', '2025-07-19-687ae0fe5e030.webp', 'public', 'Nike', 1, '2025-07-19 00:04:14', '2025-07-19 00:04:14'),
(3, 'Ralph Lauren', '2025-07-19-687ae10c80d99.webp', 'public', 'Ralph Lauren', 1, '2025-07-19 00:04:28', '2025-07-19 00:04:28'),
(4, 'H&M', '2025-07-19-687ae117ee766.webp', 'public', 'H&M', 1, '2025-07-19 00:04:39', '2025-07-19 00:04:39'),
(5, 'Zara', '2025-07-19-687ae126bf8d5.webp', 'public', 'Zara', 1, '2025-07-19 00:04:54', '2025-07-19 00:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `business_pages`
--

CREATE TABLE `business_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `default_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_pages`
--

INSERT INTO `business_pages` (`id`, `title`, `slug`, `description`, `status`, `default_status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '<p>this is about us page. hello and hi from about page description..</p>', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(2, 'Terms And Conditions', 'terms-and-conditions', '<p>terms and conditions</p>', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(3, 'Privacy Policy', 'privacy-policy', '<p>my privacy policy</p>\r\n\r\n<p>&nbsp;</p>', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(4, 'Refund Policy', 'refund-policy', '', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(5, 'Return Policy', 'return-policy', '', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(6, 'Cancellation Policy', 'cancellation-policy', '', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(7, 'Shipping Policy', 'shipping-policy', '', 0, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_default_currency', '3', '2020-10-11 07:43:44', '2025-07-18 05:29:37'),
(2, 'language', '[{\"id\":\"1\",\"name\":\"english\",\"code\":\"en\",\"status\":1,\"default\":true},{\"id\":2,\"name\":\"Tamil\",\"code\":\"in\",\"direction\":\"ltr\",\"status\":0,\"default\":false}]', '2020-10-11 07:53:02', '2025-07-18 05:31:10'),
(3, 'mail_config', '{\"status\":0,\"name\":\"demo\",\"host\":\"mail.demo.com\",\"driver\":\"SMTP\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"TLS\",\"password\":\"demo\"}', '2020-10-12 10:29:18', '2021-07-06 12:32:01'),
(4, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, '2025-07-18 05:29:37'),
(6, 'ssl_commerz_payment', '{\"status\":\"0\",\"environment\":\"sandbox\",\"store_id\":\"\",\"store_password\":\"\"}', '2020-11-09 08:36:51', '2023-01-10 05:51:56'),
(10, 'company_phone', '+8801234567890', NULL, '2025-07-18 05:29:37'),
(11, 'company_name', 'kalanjiam', NULL, '2025-07-18 05:29:36'),
(12, 'company_web_logo', '{\"image_name\":\"2025-07-19-687adc8be7e83.webp\",\"storage\":\"public\"}', NULL, '2025-07-18 23:45:16'),
(13, 'company_mobile_logo', '{\"image_name\":\"2025-07-19-687adc8c2a760.webp\",\"storage\":\"public\"}', NULL, '2025-07-18 23:45:16'),
(16, 'sms_nexmo', '{\"status\":\"0\",\"nexmo_key\":\"custo5cc042f7abf4c\",\"nexmo_secret\":\"custo5cc042f7abf4c@ssl\"}', NULL, NULL),
(17, 'company_email', 'Copy@kalanjiam.com', NULL, '2025-07-18 05:29:37'),
(18, 'colors', '{\"primary\":\"#1455ac\",\"secondary\":\"#f58300\",\"panel-sidebar\":\"#073b74\",\"primary_light\":\"#ffffff\",\"app-primary\":null,\"app-secondary\":null}', '2020-10-11 13:53:02', '2025-07-18 23:46:04'),
(19, 'company_footer_logo', '{\"image_name\":\"2025-07-19-687adc8c21e64.webp\",\"storage\":\"public\"}', NULL, '2025-07-18 23:45:16'),
(20, 'company_copyright_text', 'CopyRight kalanjiam@2021', NULL, '2025-07-18 05:29:37'),
(21, 'download_app_apple_stroe', '{\"status\":\"1\",\"link\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\"}', NULL, '2020-12-08 12:54:53'),
(22, 'download_app_google_stroe', '{\"status\":\"1\",\"link\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\"}', NULL, '2020-12-08 12:54:48'),
(23, 'company_fav_icon', '{\"image_name\":\"2025-07-18-687a45ef5d937.webp\",\"storage\":\"public\"}', '2020-10-11 13:53:02', '2025-07-18 13:02:39'),
(24, 'fcm_topic', '', NULL, NULL),
(25, 'fcm_project_id', '', NULL, NULL),
(26, 'push_notification_key', 'Put your firebase server key here.', NULL, NULL),
(27, 'order_pending_message', '{\"status\":\"1\",\"message\":\"order pen message\"}', NULL, NULL),
(28, 'order_confirmation_msg', '{\"status\":\"1\",\"message\":\"Order con Message\"}', NULL, NULL),
(29, 'order_processing_message', '{\"status\":\"1\",\"message\":\"Order pro Message\"}', NULL, NULL),
(30, 'out_for_delivery_message', '{\"status\":\"1\",\"message\":\"Order ouut Message\"}', NULL, NULL),
(31, 'order_delivered_message', '{\"status\":\"1\",\"message\":\"Order del Message\"}', NULL, NULL),
(33, 'sales_commission', '0', NULL, '2025-07-18 05:29:37'),
(34, 'seller_registration', '1', NULL, '2021-06-04 21:02:48'),
(35, 'pnc_language', '[\"en\",\"in\"]', NULL, '2025-07-18 05:31:10'),
(36, 'order_returned_message', '{\"status\":\"1\",\"message\":\"Order hh Message\"}', NULL, NULL),
(37, 'order_failed_message', '{\"status\":null,\"message\":\"Order fa Message\"}', NULL, NULL),
(40, 'delivery_boy_assign_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(41, 'delivery_boy_start_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(42, 'delivery_boy_delivered_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(43, 'terms_and_conditions', '', NULL, NULL),
(44, 'minimum_order_value', '1', NULL, NULL),
(48, 'currency_model', 'multi_currency', NULL, NULL),
(49, 'social_login', '[{\"login_medium\":\"google\",\"client_id\":\"Store Client ID\",\"client_secret\":\"Store Client Secret Key\",\"status\":1},{\"login_medium\":\"facebook\",\"client_id\":\"Store Client ID\",\"client_secret\":\"Store Client Secret Key\",\"status\":1}]', NULL, '2025-07-18 05:33:35'),
(50, 'digital_payment', '{\"status\":\"1\"}', NULL, '2025-07-18 05:29:37'),
(51, 'phone_verification', '0', NULL, NULL),
(52, 'email_verification', '0', NULL, NULL),
(53, 'order_verification', '0', NULL, NULL),
(54, 'country_code', 'IN', NULL, '2025-07-18 05:29:37'),
(55, 'pagination_limit', '10', NULL, '2025-07-18 05:29:37'),
(56, 'shipping_method', 'inhouse_shipping', NULL, NULL),
(59, 'forgot_password_verification', 'email', NULL, NULL),
(61, 'stock_limit', '10', NULL, NULL),
(64, 'announcement', '{\"status\":null,\"color\":null,\"text_color\":null,\"announcement\":null}', NULL, NULL),
(65, 'fawry_pay', '{\"status\":0,\"merchant_code\":\"\",\"security_key\":\"\"}', NULL, '2022-01-18 09:46:30'),
(66, 'recaptcha', '{\"status\":0,\"site_key\":null,\"secret_key\":null}', NULL, '2025-07-21 10:36:54'),
(67, 'seller_pos', '0', NULL, NULL),
(70, 'refund_day_limit', '0', NULL, NULL),
(71, 'business_mode', 'single', NULL, '2025-07-18 05:29:37'),
(72, 'mail_config_sendgrid', '{\"status\":0,\"name\":\"\",\"host\":\"\",\"driver\":\"\",\"port\":\"\",\"username\":\"\",\"email_id\":\"\",\"encryption\":\"\",\"password\":\"\"}', NULL, NULL),
(73, 'decimal_point_settings', '2', NULL, '2025-07-18 05:29:37'),
(74, 'shop_address', 'India', NULL, '2025-07-18 05:29:37'),
(75, 'billing_input_by_customer', '1', NULL, NULL),
(76, 'wallet_status', '0', NULL, NULL),
(77, 'loyalty_point_status', '0', NULL, NULL),
(78, 'wallet_add_refund', '0', NULL, NULL),
(79, 'loyalty_point_exchange_rate', '0', NULL, NULL),
(80, 'loyalty_point_item_purchase_point', '0', NULL, NULL),
(81, 'loyalty_point_minimum_point', '0', NULL, NULL),
(82, 'minimum_order_limit', '1', NULL, NULL),
(83, 'product_brand', '1', NULL, NULL),
(84, 'digital_product', '1', NULL, NULL),
(85, 'delivery_boy_expected_delivery_date_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(86, 'order_canceled', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(90, 'offline_payment', '{\"status\":0}', NULL, '2025-07-18 05:29:37'),
(91, 'temporary_close', '{\"status\":0}', NULL, '2025-07-18 05:47:27'),
(92, 'vacation_add', '{\"status\":0,\"vacation_start_date\":null,\"vacation_end_date\":null,\"vacation_note\":null}', NULL, '2023-03-04 06:25:36'),
(93, 'cookie_setting', '{\"status\":0,\"cookie_text\":null}', NULL, '2025-07-18 05:29:37'),
(94, 'maximum_otp_hit', '0', NULL, '2023-06-13 13:04:49'),
(95, 'otp_resend_time', '0', NULL, '2023-06-13 13:04:49'),
(96, 'temporary_block_time', '0', NULL, '2023-06-13 13:04:49'),
(97, 'maximum_login_hit', '0', NULL, '2023-06-13 13:04:49'),
(98, 'temporary_login_block_time', '0', NULL, '2023-06-13 13:04:49'),
(104, 'apple_login', '[{\"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":1,\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\"}]', NULL, '2025-05-11 07:50:11'),
(105, 'ref_earning_status', '0', NULL, '2023-10-13 05:34:53'),
(106, 'ref_earning_exchange_rate', '0', NULL, '2023-10-13 05:34:53'),
(107, 'guest_checkout', '0', NULL, '2023-10-13 11:34:53'),
(108, 'minimum_order_amount', '0', NULL, '2023-10-13 11:34:53'),
(109, 'minimum_order_amount_by_seller', '0', NULL, '2023-10-13 11:34:53'),
(110, 'minimum_order_amount_status', '0', NULL, '2023-10-13 11:34:53'),
(111, 'admin_login_url', 'admin', NULL, '2023-10-13 11:34:53'),
(112, 'employee_login_url', 'employee', NULL, '2023-10-13 11:34:53'),
(113, 'free_delivery_status', '0', NULL, '2023-10-13 11:34:53'),
(114, 'free_delivery_responsibility', 'admin', NULL, '2023-10-13 11:34:53'),
(115, 'free_delivery_over_amount', '0', NULL, '2023-10-13 11:34:53'),
(116, 'free_delivery_over_amount_seller', '0', NULL, '2023-10-13 11:34:53'),
(117, 'add_funds_to_wallet', '0', NULL, '2023-10-13 11:34:53'),
(118, 'minimum_add_fund_amount', '0', NULL, '2023-10-13 11:34:53'),
(119, 'maximum_add_fund_amount', '0', NULL, '2023-10-13 11:34:53'),
(120, 'user_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(121, 'seller_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(122, 'delivery_man_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(123, 'whatsapp', '{\"status\":1,\"phone\":\"00000000000\"}', NULL, '2023-10-13 11:34:53'),
(124, 'currency_symbol_position', 'left', NULL, '2025-07-18 05:29:37'),
(148, 'company_reliability', '[{\"item\":\"delivery_info\",\"title\":\"Fast Delivery all across the country\",\"image\":\"\",\"status\":1},{\"item\":\"safe_payment\",\"title\":\"Safe Payment\",\"image\":\"\",\"status\":1},{\"item\":\"return_policy\",\"title\":\"7 Days Return Policy\",\"image\":\"\",\"status\":1},{\"item\":\"authentic_product\",\"title\":\"100% Authentic Products\",\"image\":\"\",\"status\":1}]', NULL, NULL),
(149, 'react_setup', '{\"status\":0,\"react_license_code\":\"\",\"react_domain\":\"\",\"react_platform\":\"\"}', NULL, '2024-01-09 04:05:15'),
(150, 'app_activation', '{\"software_id\":\"\",\"is_active\":0}', NULL, '2024-01-09 04:05:15'),
(151, 'shop_banner', '{\"image_name\":\"2025-07-18-6879df10ea7c5.webp\",\"storage\":\"public\"}', NULL, '2025-07-18 05:43:44'),
(152, 'map_api_status', '1', NULL, '2025-07-18 05:34:11'),
(153, 'vendor_registration_header', '{\"title\":\"Vendor Registration\",\"sub_title\":\"Create your own store.Already have store?\",\"image\":\"\"}', NULL, NULL),
(154, 'vendor_registration_sell_with_us', '{\"title\":\"Why Sell With Us\",\"sub_title\":\"Boost your sales! Join us for a seamless, profitable experience with vast buyer reach and top-notch support. Sell smarter today!\",\"image\":\"\"}', NULL, NULL),
(155, 'download_vendor_app', '{\"title\":\"Download Free Vendor App\",\"sub_title\":\"Download our free seller app and start reaching millions of buyers on the go! Easy setup, manage listings, and boost sales anywhere.\",\"image\":null,\"download_google_app\":null,\"download_google_app_status\":0,\"download_apple_app\":null,\"download_apple_app_status\":0}', NULL, NULL),
(156, 'business_process_main_section', '{\"title\":\"3 Easy Steps To Start Selling\",\"sub_title\":\"Start selling quickly! Register, upload your products with detailed info and images, and reach millions of buyers instantly.\",\"image\":\"\"}', NULL, NULL),
(157, 'business_process_step', '[{\"title\":\"Get Registered\",\"description\":\"Sign up easily and create your seller account in just a few minutes. It fast and simple to get started.\",\"image\":\"\"},{\"title\":\"Upload Products\",\"description\":\"List your products with detailed descriptions and high-quality images to attract more buyers effortlessly.\",\"image\":\"\"},{\"title\":\"Start Selling\",\"description\":\"Go live and start reaching millions of potential buyers immediately. Watch your sales grow with our vast audience.\",\"image\":\"\"}]', NULL, NULL),
(158, 'brand_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(159, 'category_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(160, 'vendor_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(161, 'flash_deal_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(162, 'featured_product_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(163, 'feature_deal_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(164, 'new_arrival_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(165, 'top_vendor_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(166, 'category_wise_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(167, 'top_rated_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(168, 'best_selling_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(169, 'searched_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(170, 'vendor_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(171, 'storage_connection_type', 'public', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(172, 'google_search_console_code', '', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(173, 'bing_webmaster_code', '', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(174, 'baidu_webmaster_code', '', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(175, 'yandex_webmaster_code', '', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(176, 'firebase_otp_verification', '{\"status\":0,\"web_api_key\":\"\"}', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(177, 'maintenance_system_setup', '{\"user_app\":\"1\",\"user_website\":\"1\",\"vendor_app\":\"1\",\"deliveryman_app\":\"1\",\"vendor_panel\":\"1\"}', '2024-09-24 07:52:17', '2025-07-18 05:28:30'),
(178, 'maintenance_duration_setup', '{\"maintenance_duration\":\"until_change\",\"start_date\":null,\"end_date\":null}', NULL, '2025-07-18 05:28:30'),
(179, 'maintenance_message_setup', '{\"business_number\":1,\"business_email\":1,\"maintenance_message\":\"We are Working On Something Special\",\"message_body\":\"We apologize for any inconvenience. For immediate assistance, please contact with our support team\"}', NULL, '2025-07-18 05:28:30'),
(181, 'vendor_forgot_password_method', 'phone', '2024-10-27 08:14:24', '2024-10-27 08:14:24'),
(182, 'deliveryman_forgot_password_method', 'phone', '2024-10-27 08:14:24', '2024-10-27 08:14:24'),
(183, 'stock_clearance_product_list_priority', '{\"custom_sorting_status\":0,\"sort_by\":\"latest_created\",\"out_of_stock_product\":\"hide\",\"temporary_close_sorting\":\"desc\"}', '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(184, 'stock_clearance_vendor_priority', '', '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(185, 'setup_guide_requirements_for_admin', '{\"general_setup\":true,\"shipping_method\":true,\"language_setup\":true,\"currency_setup\":true,\"customer_login\":true,\"google_map_apis\":true,\"notification_configuration\":true,\"digital_payment_setup\":true,\"offline_payment_setup\":true,\"category_setup\":true,\"brand_setup\":true,\"inhouse_shop_setup\":true,\"add_new_product\":true}', '2025-05-11 07:50:11', '2025-07-18 05:41:33'),
(186, 'refund-policy', '{\"status\":0,\"content\":\"\"}', '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(187, 'return-policy', '{\"status\":0,\"content\":\"\"}', '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(188, 'cancellation-policy', '{\"status\":0,\"content\":\"\"}', '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(189, 'download_app_apple_store', '{\"status\":0,\"link\":null}', NULL, '2025-07-18 23:46:05'),
(190, 'download_app_google_store', '{\"status\":0,\"link\":null}', NULL, '2025-07-18 23:46:05'),
(191, 'default_location', '{\"lat\":\"-33.8688\",\"lng\":\"151.2195\"}', NULL, '2025-07-18 05:29:37'),
(192, 'timezone', 'Asia/Calcutta', NULL, '2025-07-18 05:29:37'),
(193, 'maintenance_mode', '1', NULL, '2025-07-18 05:28:30'),
(194, 'map_api_key', 'Map api key(Client)', NULL, '2025-07-18 05:34:11'),
(195, 'map_api_key_server', 'Map api key (Server)', NULL, '2025-07-18 05:34:11'),
(196, 'bottom_banner', '{\"image_name\":\"2025-07-18-6879df1109935.webp\",\"storage\":\"public\"}', NULL, '2025-07-18 05:43:45'),
(197, 'blog_feature_active_status', '1', NULL, '2025-07-18 12:12:31'),
(198, 'company_web_logo_png', '{\"image_name\":\"2025-07-19-687adc8c19969.png\",\"storage\":\"public\"}', NULL, '2025-07-18 23:45:16'),
(199, 'loader_gif', '{\"image_name\":\"2025-07-18-687a462ecce41.gif\",\"storage\":\"public\"}', NULL, '2025-07-18 13:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `cart_group_id` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_type` varchar(20) NOT NULL DEFAULT 'physical',
  `digital_product_type` varchar(30) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `choices` text DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `variant` text DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` double NOT NULL DEFAULT 1,
  `tax` double NOT NULL DEFAULT 1,
  `discount` double NOT NULL DEFAULT 1,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `is_checked` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `thumbnail` varchar(191) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_info` varchar(191) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `shipping_type` varchar(191) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `cart_group_id`, `product_id`, `product_type`, `digital_product_type`, `color`, `choices`, `variations`, `variant`, `quantity`, `price`, `tax`, `discount`, `tax_model`, `is_checked`, `slug`, `name`, `thumbnail`, `seller_id`, `seller_is`, `created_at`, `updated_at`, `shop_info`, `shipping_cost`, `shipping_type`, `is_guest`) VALUES
(2, 225, 'guest-8ioem-1753264568', 202, 'physical', NULL, NULL, '[]', '[]', '', 31, 5.3031666666667, 0.0026515833333333, 0, 'exclude', 1, 'product-remain-829-v6KmXL', 'Product Remain 829', '', 1, 'admin', '2025-07-23 09:56:08', '2025-07-23 09:56:08', 'kalanjiam', 0.00, 'order_wise', 1),
(20, 34, 'guest-f7zTL-1753267019', 202, 'physical', NULL, NULL, '[]', '[]', '', 32, 5.3031666666667, 0.0026515833333333, 0, 'exclude', 1, 'product-remain-829-v6KmXL', 'Product Remain 829', '', 1, 'admin', '2025-07-23 10:36:59', '2025-07-23 10:38:54', 'kalanjiam', 0.00, 'order_wise', 1),
(21, 34, 'guest-f7zTL-1753267019', 200, 'physical', NULL, NULL, '[]', '[]', '', 11, 5.7423333333333, 0.012441722222222, 0.24175223333333, 'exclude', 1, 'product-hotel-181-KyPIFa', 'Product Hotel 181', '', 1, 'admin', '2025-07-23 10:37:33', '2025-07-23 10:37:39', 'kalanjiam', 0.00, 'order_wise', 1),
(23, 34, 'guest-f7zTL-1753267019', 199, 'physical', NULL, NULL, '[]', '[]', '', 30, 3.013, 0.009039, 0.6402625, 'exclude', 1, 'product-free-123-Cz2K9h', 'Product Free 123', '', 1, 'admin', '2025-07-23 10:38:22', '2025-07-23 10:38:22', 'kalanjiam', 0.00, 'order_wise', 1),
(24, 34, 'guest-f7zTL-1753267019', 599, 'physical', NULL, NULL, '[]', '[]', '', 6, 335.52433333333, 0.61512794444443, 0, 'exclude', 1, 'pigeon-toaster-moRqzC', 'Pigeon Toaster', '', 1, 'admin', '2025-07-23 10:39:12', '2025-07-23 10:39:12', 'kalanjiam', 0.00, 'order_wise', 1),
(25, 34, 'guest-f7zTL-1753267019', 600, 'physical', NULL, NULL, '[]', '[]', '', 9, 666.18066666667, 1.2213312222222, 0, 'exclude', 1, 'butterfly-mixer-grinder-8IMygX', 'Butterfly Mixer Grinder', '', 1, 'admin', '2025-07-23 10:40:00', '2025-07-23 10:40:31', 'kalanjiam', 0.00, 'order_wise', 1),
(26, 34, 'guest-f7zTL-1753267019', 601, 'physical', NULL, NULL, '[]', '[]', '', 6, 64.705666666667, 0.16176416666667, 0, 'exclude', 1, 'samsung-evo-plus-sd-card-1bZVtu', 'Samsung EVO Plus SD Card', '', 1, 'admin', '2025-07-23 10:40:42', '2025-07-23 10:40:42', 'kalanjiam', 0.00, 'order_wise', 1),
(90, 227, 'guest-oeQ78-1753340674', 202, 'physical', NULL, NULL, '[]', '[]', '', 31, 5.3031666666667, 0.0026515833333333, 0, 'exclude', 1, 'product-remain-829-v6KmXL', 'Product Remain 829', '', 1, 'admin', '2025-07-24 07:04:34', '2025-07-24 07:04:34', 'kalanjiam', 0.00, 'order_wise', 1),
(93, 230, 'guest-yi6LZ-1753500265', 202, 'physical', NULL, '#FFFF00', '{\"choice_1\":\"S\"}', '{\"color\":\"Yellow\",\"Size\":\"S\"}', 'Yellow-S', 36, 5.3031666666667, 0.0026515833333333, 0.77016666666667, 'exclude', 1, 'product-remain-829-v6KmXL', 'Product Remain 829', '', 1, 'admin', '2025-07-26 04:12:25', '2025-07-26 05:28:16', 'kalanjiam', 0.00, 'order_wise', 1),
(94, 230, 'guest-yi6LZ-1753500265', 202, 'physical', NULL, '#F5F5F5', '{\"choice_1\":\"L\"}', '{\"color\":\"WhiteSmoke\",\"Size\":\"L\"}', 'WhiteSmoke-L', 40, 5.3031666666667, 0.0026515833333333, 0.77016666666667, 'exclude', 1, 'product-remain-829-v6KmXL', 'Product Remain 829', '', 1, 'admin', '2025-07-26 04:21:42', '2025-07-26 05:28:16', 'kalanjiam', 0.00, 'order_wise', 1),
(95, 230, 'guest-yi6LZ-1753500265', 200, 'physical', NULL, NULL, '[]', '[]', '', 10, 5.7423333333333, 0.012441722222222, 0.24175223333333, 'exclude', 1, 'product-hotel-181-KyPIFa', 'Product Hotel 181', '', 1, 'admin', '2025-07-26 04:39:01', '2025-07-26 04:50:27', 'kalanjiam', 0.00, 'order_wise', 1),
(97, 230, 'guest-yi6LZ-1753500265', 199, 'physical', NULL, NULL, '[]', '[]', '', 32, 3.013, 0.009039, 0.6402625, 'exclude', 1, 'product-free-123-Cz2K9h', 'Product Free 123', '', 1, 'admin', '2025-07-26 05:02:42', '2025-07-26 05:02:42', 'kalanjiam', 0.00, 'order_wise', 1),
(101, 2, '2-6sr7g-1753528197', 202, 'physical', NULL, NULL, '{\"choice_1\":null}', '{\"Size\":null}', '', 35, 5.3031666666667, 0.0026515833333333, 0.77016666666667, 'exclude', 1, 'product-remain-829-v6KmXL', 'Product Remain 829', '', 1, 'admin', '2025-07-26 12:27:50', '2025-07-26 15:44:37', 'kalanjiam', 0.00, 'order_wise', 0),
(102, 2, '2-6sr7g-1753528197', 200, 'physical', NULL, NULL, '[]', '[]', '', 30, 5.7423333333333, 0.012441722222222, 0.24175223333333, 'exclude', 1, 'product-hotel-181-KyPIFa', 'Product Hotel 181', '', 1, 'admin', '2025-07-26 12:27:54', '2025-07-26 15:44:37', 'kalanjiam', 0.00, 'order_wise', 0),
(103, 2, '2-6sr7g-1753528197', 202, 'physical', NULL, '#FFFF00', '{\"choice_1\":\"S\"}', '{\"color\":\"Yellow\",\"Size\":\"S\"}', 'Yellow-S', 55, 5.3031666666667, 0.0026515833333333, 0.77016666666667, 'exclude', 1, 'product-remain-829-v6KmXL', 'Product Remain 829', '', 1, 'admin', '2025-07-26 12:31:11', '2025-07-26 15:44:38', 'kalanjiam', 0.00, 'order_wise', 0),
(104, 2, '2-6sr7g-1753528197', 202, 'physical', NULL, '#F5F5F5', '{\"choice_1\":\"L\"}', '{\"color\":\"WhiteSmoke\",\"Size\":\"L\"}', 'WhiteSmoke-L', 40, 5.3031666666667, 0.0026515833333333, 0.77016666666667, 'exclude', 1, 'product-remain-829-v6KmXL', 'Product Remain 829', '', 1, 'admin', '2025-07-26 12:46:53', '2025-07-26 15:44:38', 'kalanjiam', 0.00, 'order_wise', 0),
(112, 2, '2-6sr7g-1753528197', 603, 'physical', NULL, NULL, '[]', '[]', '', 12, 759.2325, 2.2776975, 155.0352765, 'exclude', 1, 'dr-trust-bp-monitor-25dCta', 'Dr Trust BP Monitor', '', 1, 'admin', '2025-07-26 14:10:18', '2025-07-26 15:44:37', 'kalanjiam', 0.00, 'order_wise', 0),
(113, 2, '2-6sr7g-1753528197', 602, 'physical', NULL, NULL, '[]', '[]', '', 6, 484.3585, 0.4843585, 95.0311377, 'exclude', 1, 'boat-wave-sigma-bGGFqk', 'boAt Wave Sigma', '', 1, 'admin', '2025-07-26 14:14:01', '2025-07-26 15:44:37', 'kalanjiam', 0.00, 'order_wise', 0),
(134, 2, '2-6sr7g-1753528197', 599, 'physical', NULL, NULL, '[]', '[]', '', 5, 335.52433333333, 0.61512794444443, 0, 'exclude', 1, 'pigeon-toaster-moRqzC', 'Pigeon Toaster', '', 1, 'admin', '2025-07-26 15:33:27', '2025-07-26 15:44:37', 'kalanjiam', 0.00, 'order_wise', 0),
(141, 234, 'guest-XDpyQ-1753661851', 603, 'physical', NULL, NULL, '[]', '[]', '', 10, 759.2325, 2.2776975, 155.0352765, 'exclude', 1, 'dr-trust-bp-monitor-25dCta', 'Dr Trust BP Monitor', '', 1, 'admin', '2025-07-28 00:17:31', '2025-07-28 00:17:31', 'kalanjiam', 0.00, 'order_wise', 1),
(142, 234, 'guest-XDpyQ-1753661851', 602, 'physical', NULL, NULL, '[]', '[]', '', 6, 484.3585, 0.4843585, 95.0311377, 'exclude', 1, 'boat-wave-sigma-bGGFqk', 'boAt Wave Sigma', '', 1, 'admin', '2025-07-28 00:19:35', '2025-07-28 00:20:41', 'kalanjiam', 0.00, 'order_wise', 1),
(143, 235, 'guest-jlg3c-1753682064', 603, 'physical', NULL, NULL, '[]', '[]', '', 10, 759.2325, 2.2776975, 155.0352765, 'exclude', 1, 'dr-trust-bp-monitor-25dCta', 'Dr Trust BP Monitor', '', 1, 'admin', '2025-07-28 05:54:24', '2025-07-28 05:54:24', 'kalanjiam', 0.00, 'order_wise', 1),
(144, 235, 'guest-jlg3c-1753682064', 602, 'physical', NULL, NULL, '[]', '[]', '', 2, 484.3585, 0.4843585, 95.0311377, 'exclude', 1, 'boat-wave-sigma-bGGFqk', 'boAt Wave Sigma', '', 1, 'admin', '2025-07-28 05:55:04', '2025-07-28 05:55:04', 'kalanjiam', 0.00, 'order_wise', 1),
(145, 235, 'guest-jlg3c-1753682064', 601, 'physical', NULL, NULL, '[]', '[]', '', 2, 64.705666666667, 0.16176416666667, 0, 'exclude', 1, 'samsung-evo-plus-sd-card-1bZVtu', 'Samsung EVO Plus SD Card', '', 1, 'admin', '2025-07-28 05:56:29', '2025-07-28 05:56:29', 'kalanjiam', 0.00, 'order_wise', 1),
(223, 236, 'guest-VHLJD-1753702121', 601, 'physical', NULL, NULL, '[]', '[]', '', 8, 64.705666666667, 0.16176416666667, 0, 'exclude', 1, 'samsung-evo-plus-sd-card-1bZVtu', 'Samsung EVO Plus SD Card', '', 1, 'admin', '2025-07-28 11:28:41', '2025-07-28 11:29:27', 'kalanjiam', 0.00, 'order_wise', 1),
(308, 237, 'guest-edW00-1753719043', 601, 'physical', NULL, NULL, '[]', '[]', '', 2, 64.705666666667, 0.16176416666667, 0, 'exclude', 1, 'samsung-evo-plus-sd-card-1bZVtu', 'Samsung EVO Plus SD Card', '', 1, 'admin', '2025-07-28 16:10:43', '2025-07-28 16:10:43', 'kalanjiam', 0.00, 'order_wise', 1),
(321, 239, 'guest-Hmln1-1753865768', 602, 'physical', NULL, NULL, '[]', '[]', '', 4, 484.3585, 0.4843585, 95.0311377, 'exclude', 1, 'boat-wave-sigma-bGGFqk', 'boAt Wave Sigma', '', 1, 'admin', '2025-07-30 08:56:08', '2025-07-30 08:56:43', 'kalanjiam', 0.00, 'order_wise', 1),
(322, 239, 'guest-Hmln1-1753865768', 601, 'physical', NULL, NULL, '[]', '[]', '', 4, 64.705666666667, 0.16176416666667, 0, 'exclude', 1, 'samsung-evo-plus-sd-card-1bZVtu', 'Samsung EVO Plus SD Card', '', 1, 'admin', '2025-07-30 08:56:46', '2025-07-30 08:57:18', 'kalanjiam', 0.00, 'order_wise', 1),
(323, 239, 'guest-Hmln1-1753865768', 599, 'physical', NULL, NULL, '[]', '[]', '', 5, 335.52433333333, 0.61512794444443, 0, 'exclude', 1, 'pigeon-toaster-moRqzC', 'Pigeon Toaster', '', 1, 'admin', '2025-07-30 08:57:46', '2025-07-30 08:57:46', 'kalanjiam', 0.00, 'order_wise', 1),
(324, 239, 'guest-Hmln1-1753865768', 600, 'physical', NULL, NULL, '[]', '[]', '', 7, 666.18066666667, 1.2213312222222, 0, 'exclude', 1, 'butterfly-mixer-grinder-8IMygX', 'Butterfly Mixer Grinder', '', 1, 'admin', '2025-07-30 08:59:42', '2025-07-30 08:59:42', 'kalanjiam', 0.00, 'order_wise', 1),
(325, 239, 'guest-Hmln1-1753865768', 603, 'physical', NULL, NULL, '[]', '[]', '', 10, 759.2325, 2.2776975, 155.0352765, 'exclude', 1, 'dr-trust-bp-monitor-25dCta', 'Dr Trust BP Monitor', '', 1, 'admin', '2025-07-30 09:02:53', '2025-07-30 09:02:53', 'kalanjiam', 0.00, 'order_wise', 1),
(327, 239, 'guest-Hmln1-1753865768', 595, 'physical', NULL, NULL, '[]', '[]', '', 7, 171.50316666667, 0.45734177777779, 0, 'exclude', 1, 'samsung-galaxy-book3-fQOqqd', 'Samsung Galaxy Book3', '', 1, 'admin', '2025-07-30 09:02:58', '2025-07-30 09:02:58', 'kalanjiam', 0.00, 'order_wise', 1),
(328, 239, 'guest-Hmln1-1753865768', 596, 'physical', NULL, NULL, '[]', '[]', '', 8, 328.75533333333, 0.98626599999999, 0, 'exclude', 1, 'poco-x5-pro-DZ1W8f', 'Poco X5 Pro', '', 1, 'admin', '2025-07-30 09:03:00', '2025-07-30 09:03:03', 'kalanjiam', 0.00, 'order_wise', 1),
(329, 239, 'guest-Hmln1-1753865768', 597, 'physical', NULL, NULL, '[]', '[]', '', 13, 649.97883333333, 1.1916278611111, 0, 'exclude', 1, 'iphone-14-pro-max-83-eyxVNo', 'iPhone 14 Pro Max 83', '', 1, 'admin', '2025-07-30 09:03:05', '2025-07-30 09:03:17', 'kalanjiam', 0.00, 'order_wise', 1),
(341, 240, 'guest-oXzLq-1753943166', 571, 'physical', NULL, NULL, '[]', '[]', '', 9, 85.7515, 0.171503, 0, 'exclude', 1, 'samsung-galaxy-tab-s8-7qf7MV', 'Samsung Galaxy Tab S8', '', 1, 'admin', '2025-07-31 06:26:06', '2025-07-31 06:26:37', 'kalanjiam', 0.00, 'order_wise', 1),
(344, 19, '19-kpgb7-1754391569', 199, 'physical', NULL, NULL, '[]', '[]', '', 30, 3.013, 0.009039, 0.6402625, 'exclude', 1, 'product-free-123-Cz2K9h', 'Product Free 123', '', 1, 'admin', '2025-08-05 11:36:41', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(345, 19, '19-kpgb7-1754391569', 200, 'physical', NULL, NULL, '[]', '[]', '', 3, 5.7423333333333, 0.012441722222222, 0.24175223333333, 'exclude', 1, 'product-hotel-181-KyPIFa', 'Product Hotel 181', '', 1, 'admin', '2025-08-05 11:37:16', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(346, 19, '19-kpgb7-1754391569', 603, 'physical', NULL, NULL, '[]', '[]', '', 10, 759.2325, 2.2776975, 155.0352765, 'exclude', 1, 'dr-trust-bp-monitor-25dCta', 'Dr Trust BP Monitor', '', 1, 'admin', '2025-08-05 11:38:59', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(347, 19, '19-kpgb7-1754391569', 524, 'physical', NULL, NULL, '[]', '[]', '', 12, 862.16333333333, 1.5806327777777, 0, 'exclude', 1, 'apple-ipad-air-m1-wnxsep', 'Apple iPad Air M1', '', 1, 'admin', '2025-08-06 10:34:39', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(348, 19, '19-kpgb7-1754391569', 270, 'physical', NULL, NULL, '[]', '[]', '', 10, 1124.4438333333, 3.3733314999999, 0, 'exclude', 1, 'oneplus-pad-dLCzSr', 'OnePlus Pad', '', 1, 'admin', '2025-08-06 10:38:54', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(349, 19, '19-kpgb7-1754391569', 272, 'physical', NULL, NULL, '[]', '[]', '', 7, 1016.2243333333, 1.0162243333333, 0, 'exclude', 1, 'zebronics-gaming-keyboard-n2sJ18', 'Zebronics Gaming Keyboard', '', 1, 'admin', '2025-08-06 10:39:36', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(350, 19, '19-kpgb7-1754391569', 22, 'physical', NULL, NULL, '[]', '[]', '', 26, 5.5375, 0.00276875, 0, 'exclude', 1, 'product-white-731-TJj0iA', 'Product White 731', '', 1, 'admin', '2025-08-06 10:40:25', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(351, 19, '19-kpgb7-1754391569', 515, 'physical', NULL, NULL, '[]', '[]', '', 2, 1128.7161666667, 1.8811936111112, 0, 'exclude', 1, 'voltas-beko-fridge-60fq4F', 'Voltas Beko Fridge', '', 1, 'admin', '2025-08-06 10:42:03', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(352, 19, '19-kpgb7-1754391569', 191, 'physical', NULL, NULL, '[]', '[]', '', 46, 5.8308333333333, 0.0097180555555557, 0.88453741666666, 'exclude', 1, 'product-lose-189-tbakTi', 'Product Lose 189', '', 1, 'admin', '2025-08-06 10:43:25', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(353, 19, '19-kpgb7-1754391569', 5, 'physical', NULL, NULL, '[]', '[]', '', 15, 2.3306666666667, 0.0050497777777779, 0.075280533333334, 'exclude', 1, 'product-effect-412-4QpG6L', 'Product Effect 412', '', 1, 'admin', '2025-08-06 10:44:18', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(354, 19, '19-kpgb7-1754391569', 263, 'physical', NULL, NULL, '[]', '[]', '', 3, 320.4135, 0.48062025, 0, 'exclude', 1, 'insta360-x3-88k0uD', 'Insta360 X3', '', 1, 'admin', '2025-08-06 10:45:29', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(355, 19, '19-kpgb7-1754391569', 10, 'physical', NULL, NULL, '[]', '[]', '', 39, 6.911, 0.018429333333334, 2.5702009, 'exclude', 1, 'product-have-244-TfIoFV', 'Product Have 244', '', 1, 'admin', '2025-08-06 10:49:04', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(356, 19, '19-kpgb7-1754391569', 202, 'physical', NULL, NULL, '{\"choice_1\":null}', '{\"Size\":null}', '', 31, 5.3031666666667, 0.0026515833333333, 0.77016666666667, 'exclude', 1, 'product-remain-829-v6KmXL', 'Product Remain 829', '', 1, 'admin', '2025-08-07 06:43:44', '2025-08-07 06:48:24', 'kalanjiam', 0.00, 'order_wise', 0),
(357, 19, '19-kpgb7-1754391569', 7, 'physical', NULL, NULL, '[]', '[]', '', 9, 8.2705, 0.022054666666667, 0.1968379, 'exclude', 1, 'product-senior-949-9VtE2a', 'Product Senior 949', '', 1, 'admin', '2025-08-07 07:24:13', '2025-08-07 07:24:13', 'kalanjiam', 0.00, 'order_wise', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart_shippings`
--

CREATE TABLE `cart_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_group_id` varchar(191) DEFAULT NULL,
  `shipping_method_id` bigint(20) DEFAULT NULL,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_shippings`
--

INSERT INTO `cart_shippings` (`id`, `cart_group_id`, `shipping_method_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(2, '19-kpgb7-1754391569', 2, 5.00, '2025-08-07 06:45:41', '2025-08-07 06:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `icon` varchar(250) DEFAULT NULL,
  `icon_storage_type` varchar(10) DEFAULT 'public',
  `parent_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_status` tinyint(1) NOT NULL DEFAULT 0,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `icon_storage_type`, `parent_id`, `position`, `created_at`, `updated_at`, `home_status`, `priority`) VALUES
(1, 'Men Shirt', 'men-shirt', '2025-07-18-6879dd4ea6e8a.webp', 'public', 0, 0, '2025-07-18 05:36:14', '2025-07-18 05:38:19', 1, 1),
(2, 'Men Shirt 2', 'men-shirt-2', '2025-07-19-687ae0194b267.webp', 'public', 0, 0, '2025-07-18 23:59:54', '2025-07-19 00:00:25', 1, 0),
(3, 'Men Shirt 3', 'men-shirt-3', '2025-07-19-687ae00880990.webp', 'public', 0, 0, '2025-07-19 00:00:08', '2025-07-19 00:00:08', 1, 3),
(4, 'Men Shirt 4', 'men-shirt-4', '2025-07-19-687ae02c7ddf0.webp', 'public', 0, 0, '2025-07-19 00:00:44', '2025-07-19 00:00:44', 1, 4),
(5, 'Men Shirt 5', 'men-shirt-5', '2025-07-19-687ae03bbec35.webp', 'public', 0, 0, '2025-07-19 00:00:59', '2025-07-19 00:00:59', 1, 5),
(6, 'Men Shirt 6', 'men-shirt-6', '2025-07-19-687ae0585367a.webp', 'public', 0, 0, '2025-07-19 00:01:28', '2025-07-19 00:03:07', 1, 6),
(7, 'new sub category', 'new-sub-category', 'def.png', NULL, 1, 1, '2025-07-30 07:07:28', '2025-07-30 07:07:28', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_shipping_costs`
--

CREATE TABLE `category_shipping_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chattings`
--

CREATE TABLE `chattings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachment`)),
  `sent_by_customer` tinyint(1) NOT NULL DEFAULT 0,
  `sent_by_seller` tinyint(1) NOT NULL DEFAULT 0,
  `sent_by_admin` tinyint(1) DEFAULT NULL,
  `sent_by_delivery_man` tinyint(1) DEFAULT NULL,
  `seen_by_customer` tinyint(1) NOT NULL DEFAULT 1,
  `seen_by_seller` tinyint(1) NOT NULL DEFAULT 1,
  `seen_by_admin` tinyint(1) DEFAULT NULL,
  `seen_by_delivery_man` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `notification_receiver` varchar(20) DEFAULT NULL COMMENT 'admin, seller, customer, deliveryman',
  `seen_notification` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `mobile_number` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `feedback` varchar(191) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reply` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` varchar(191) NOT NULL DEFAULT 'admin',
  `coupon_type` varchar(50) DEFAULT NULL,
  `coupon_bearer` varchar(191) NOT NULL DEFAULT 'inhouse',
  `seller_id` bigint(20) DEFAULT NULL COMMENT 'NULL=in-house, 0=all seller',
  `customer_id` bigint(20) DEFAULT NULL COMMENT '0 = all customer',
  `title` varchar(100) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `symbol` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `exchange_rate` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `exchange_rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 'USD', '0.01666666666666666644', 1, NULL, '2025-07-18 05:31:40'),
(2, 'BDT', '৳', 'BDT', '1.39999999999999991118', 1, NULL, '2025-07-18 05:29:37'),
(3, 'Indian Rupi', '₹', 'INR', '1', 1, '2020-10-15 17:23:04', '2025-07-18 05:29:37'),
(4, 'Euro', '€', 'EUR', '1.66666666666666674068', 1, '2021-05-25 21:00:23', '2025-07-18 05:29:37'),
(5, 'YEN', '¥', 'JPY', '1.83333333333333325932', 1, '2021-06-10 22:08:31', '2025-07-18 05:29:37'),
(6, 'Ringgit', 'RM', 'MYR', '0.06933333333333333015', 1, '2021-07-03 11:08:33', '2025-07-18 05:29:37'),
(7, 'Rand', 'R', 'ZAR', '0.23766666666666666496', 1, '2021-07-03 11:12:38', '2025-07-18 05:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallets`
--

CREATE TABLE `customer_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `royality_points` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallet_histories`
--

CREATE TABLE `customer_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `transaction_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(20) DEFAULT NULL,
  `transaction_method` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_of_the_days`
--

CREATE TABLE `deal_of_the_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(12) NOT NULL DEFAULT 'amount',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_notifications`
--

CREATE TABLE `deliveryman_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_wallets`
--

CREATE TABLE `deliveryman_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `current_balance` decimal(50,2) NOT NULL DEFAULT 0.00,
  `cash_in_hand` decimal(50,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` decimal(50,2) NOT NULL DEFAULT 0.00,
  `total_withdraw` decimal(50,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_country_codes`
--

CREATE TABLE `delivery_country_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_transactions`
--

CREATE TABLE `delivery_man_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `transaction_id` char(36) NOT NULL,
  `debit` decimal(50,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(50,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `identity_number` varchar(30) DEFAULT NULL,
  `identity_type` varchar(50) DEFAULT NULL,
  `identity_image` varchar(191) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `branch` varchar(191) DEFAULT NULL,
  `account_no` varchar(191) DEFAULT NULL,
  `holder_name` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_online` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(191) NOT NULL DEFAULT '6yIRXJRRfp78qJsAoKZZ6TTqhzuNJ3TcdvPBmk6n',
  `fcm_token` varchar(191) DEFAULT NULL,
  `app_language` varchar(191) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_zip_codes`
--

CREATE TABLE `delivery_zip_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zipcode` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_product_authors`
--

CREATE TABLE `digital_product_authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_product_otp_verifications`
--

CREATE TABLE `digital_product_otp_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_details_id` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_product_publishing_houses`
--

CREATE TABLE `digital_product_publishing_houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `publishing_house_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_product_variations`
--

CREATE TABLE `digital_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_key` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` decimal(24,8) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` varchar(191) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `template_design_name` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `banner_image` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `button_name` varchar(191) DEFAULT NULL,
  `button_url` varchar(191) DEFAULT NULL,
  `footer_text` varchar(191) DEFAULT NULL,
  `copyright_text` varchar(191) DEFAULT NULL,
  `pages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`pages`)),
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`social_media`)),
  `hide_field` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`hide_field`)),
  `button_content_status` tinyint(4) NOT NULL DEFAULT 1,
  `product_information_status` tinyint(4) NOT NULL DEFAULT 1,
  `order_information_status` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_name`, `user_type`, `template_design_name`, `title`, `body`, `banner_image`, `image`, `logo`, `button_name`, `button_url`, `footer_text`, `copyright_text`, `pages`, `social_media`, `hide_field`, `button_content_status`, `product_information_status`, `order_information_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'order-received', 'admin', 'order-received', 'New Order Received', '<p><b>Hi {adminName},</b></p><p>We have sent you this email to notify that you have a new order.You will be able to see your orders after login to your panel.</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"icon\",\"product_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(2, 'order-place', 'customer', 'order-place', 'Order # {orderId} Has Been Placed Successfully!', '<p><b>Hi {userName},</b></p><p>Your order from {shopName} has been placed to know the current status of your order click track order</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"icon\",\"product_information\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(3, 'registration-verification', 'customer', 'registration-verification', 'Registration Verification', '<p><b>Hi {userName},</b></p><p>Your verification code is</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(4, 'registration-from-pos', 'customer', 'registration-from-pos', 'Registration Complete', '<p><b>Hi {userName},</b></p><p>Thank you for joining  Shop.If you want to become a registered customer then reset your password below by using this email. Then you’ll be able to explore the website and app as a registered customer.</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_url\",\"button_content_status\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(5, 'account-block', 'customer', 'account-block', 'Account Blocked', '<div><b>Hi {userName},</b></div><div><b><br></b></div><div>Your account has been blocked due to suspicious activity by the admin .To resolve this issue please contact with admin or support center. We apologize for any inconvenience caused.</div><div><br></div><div>Meanwhile, click here to visit theshop website</div><div><font color=\"#0000ff\"> <a href=\"http://localhost/kalanjiam\" target=\"_blank\">http://localhost/kalanjiam</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(6, 'account-unblock', 'customer', 'account-unblock', 'Account Unblocked', '<div><b>Hi {userName},</b></div><div><b><br></b></div><div>Your account has been successfully unblocked. We appreciate your cooperation in resolving this issue. Thank you for your understanding and patience. </div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"http://localhost/kalanjiam\" target=\"_blank\">http://localhost/kalanjiam</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(7, 'digital-product-download', 'customer', 'digital-product-download', 'Congratulations', '<p>Thank you for choosing  shop! Your digital product is ready for download. To download your product use your email <b>{emailId}</b> and order # {orderId} below.</b><br></p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(8, 'digital-product-otp', 'customer', 'digital-product-otp', 'Digital Product Download OTP Verification', '<p><b>Hi {userName},</b></p><p>Your verification code is</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(9, 'add-fund-to-wallet', 'customer', 'add-fund-to-wallet', 'Transaction Successful', '<div style=\"text-align: center; \">Amount successfully credited to your wallet .</div><div style=\"text-align: center; \"><br></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(10, 'registration', 'vendor', 'registration', 'Registration Complete', '<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Congratulation! Your registration request has been send to admin successfully! Please wait until admin reviewal. </div><div><br></div><div>meanwhile click here to visit the  Shop Website</div><div><font color=\"#0000ff\"> <a href=\"http://localhost/kalanjiam\" target=\"_blank\">http://localhost/kalanjiam</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(11, 'registration-approved', 'vendor', 'registration-approved', 'Registration Approved', '<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your registration request has been approved by admin. Now you can complete your store setting and start selling your product on  Shop. </div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"http://localhost/kalanjiam\" target=\"_blank\">http://localhost/kalanjiam</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(12, 'registration-denied', 'vendor', 'registration-denied', 'Registration Denied', '<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your registration request has been denied by admin. Please contact with admin or support center if you have any queries.</div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"http://localhost/kalanjiam\" target=\"_blank\">http://localhost/kalanjiam</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(13, 'account-suspended', 'vendor', 'account-suspended', 'Account Suspended', '<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your account access has been suspended by admin.From now you can access your app and panel again Please contact us for any queries we’re always happy to help.</div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"http://localhost/kalanjiam\" target=\"_blank\">http://localhost/kalanjiam</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(14, 'account-activation', 'vendor', 'account-activation', 'Account Activation', '<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your account suspension has been revoked by admin. From now you can access your app and panel again Please contact us for any queries we’re always happy to help.</div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"http://localhost/kalanjiam\" target=\"_blank\">http://localhost/kalanjiam</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(15, 'forgot-password', 'vendor', 'forgot-password', 'Change Password Request', '<p><b>Hi {vendorName},</b></p><p>Please click the link below to change your password.</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(16, 'order-received', 'vendor', 'order-received', 'New Order Received', '<p><b>Hi {vendorName},</b></p><p>We have sent you this email to notify that you have a new order.You will be able to see your orders after login to your panel.</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"icon\",\"product_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48'),
(17, 'reset-password-verification', 'delivery-man', 'reset-password-verification', 'OTP Verification For Password Reset', '<p><b>Hi {deliveryManName},</b></p><p>Your verification code is</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-07-18 05:45:48', '2025-07-18 05:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `phone` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `error_logs`
--

CREATE TABLE `error_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_code` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `hit_counts` int(11) NOT NULL DEFAULT 0,
  `redirect_url` varchar(255) DEFAULT NULL,
  `redirect_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `error_logs`
--

INSERT INTO `error_logs` (`id`, `status_code`, `url`, `hit_counts`, `redirect_url`, `redirect_status`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://127.0.0.1:8000/admin/messages/new-notification', 13, NULL, NULL, '2024-12-21 06:49:44', '2025-02-13 08:42:47'),
(2, 404, 'http://127.0.0.1:8000/admin/dashboard/real-time-activities', 3, NULL, NULL, '2025-02-13 08:40:56', '2025-02-13 08:41:56'),
(3, 404, 'http://localhost/kalanjiam/assets/img/media/form-bg.png', 1, NULL, NULL, '2025-07-18 05:47:24', '2025-07-18 05:47:24'),
(4, 404, 'http://localhost/kalanjiam/assets/css/bootstrap.min.css', 1, NULL, NULL, '2025-07-18 05:43:48', '2025-07-18 05:43:48'),
(5, 404, 'http://localhost/kalanjiam/assets/css/bootstrap-icons.min.css', 1, NULL, NULL, '2025-07-18 05:43:48', '2025-07-18 05:43:48'),
(6, 404, 'http://localhost/kalanjiam/assets/css/fonts-init.css', 1, NULL, NULL, '2025-07-18 05:43:48', '2025-07-18 05:43:48'),
(7, 404, 'http://localhost/kalanjiam/assets/plugins/magnific-popup-1.1.0/magnific-popup.css', 1, NULL, NULL, '2025-07-18 05:43:48', '2025-07-18 05:43:48'),
(8, 404, 'http://localhost/kalanjiam/assets/plugins/sweet_alert/sweetalert2.css', 1, NULL, NULL, '2025-07-18 05:43:48', '2025-07-18 05:43:48'),
(9, 404, 'http://localhost/kalanjiam/assets/plugins/swiper/swiper-bundle.min.css', 1, NULL, NULL, '2025-07-18 05:43:48', '2025-07-18 05:43:48'),
(10, 404, 'http://localhost/kalanjiam/assets/plugins/select2/css/select2.min.css', 1, NULL, NULL, '2025-07-18 05:43:49', '2025-07-18 05:43:49'),
(11, 404, 'http://localhost/kalanjiam/assets/css/toastr.css', 1, NULL, NULL, '2025-07-18 05:43:49', '2025-07-18 05:43:49'),
(12, 404, 'http://localhost/kalanjiam/assets/css/custom.css', 1, NULL, NULL, '2025-07-18 05:43:49', '2025-07-18 05:43:49'),
(13, 404, 'http://localhost/kalanjiam/assets/css/style.css', 1, NULL, NULL, '2025-07-18 05:43:49', '2025-07-18 05:43:49'),
(14, 404, 'http://localhost/kalanjiam/assets/plugins/intl-tel-input/css/intlTelInput.css', 1, NULL, NULL, '2025-07-18 05:43:49', '2025-07-18 05:43:49'),
(15, 404, 'http://localhost/kalanjiam/assets/img/flags/en.png', 1, NULL, NULL, '2025-07-18 05:43:50', '2025-07-18 05:43:50'),
(16, 404, 'http://localhost/kalanjiam/assets/img/svg/light.svg', 1, NULL, NULL, '2025-07-18 05:43:50', '2025-07-18 05:43:50'),
(17, 404, 'http://localhost/kalanjiam/assets/img/loader.gif', 1, NULL, NULL, '2025-07-18 05:43:50', '2025-07-18 05:43:50'),
(18, 404, 'http://localhost/kalanjiam/assets/js/jquery-3.6.0.min.js', 1, NULL, NULL, '2025-07-18 05:43:50', '2025-07-18 05:43:50'),
(19, 404, 'http://localhost/kalanjiam/assets/img/svg/dark.svg', 1, NULL, NULL, '2025-07-18 05:43:50', '2025-07-18 05:43:50'),
(20, 404, 'http://localhost/kalanjiam/assets/js/bootstrap.bundle.min.js', 1, NULL, NULL, '2025-07-18 05:43:50', '2025-07-18 05:43:50'),
(21, 404, 'http://localhost/kalanjiam/assets/plugins/swiper/swiper-bundle.min.js', 1, NULL, NULL, '2025-07-18 05:43:51', '2025-07-18 05:43:51'),
(22, 404, 'http://localhost/kalanjiam/assets/plugins/easyzoom/easyzoom.min.js', 1, NULL, NULL, '2025-07-18 05:43:51', '2025-07-18 05:43:51'),
(23, 404, 'http://localhost/kalanjiam/assets/plugins/magnific-popup-1.1.0/jquery.magnific-popup.js', 1, NULL, NULL, '2025-07-18 05:43:51', '2025-07-18 05:43:51'),
(24, 404, 'http://localhost/kalanjiam/assets/plugins/sweet_alert/sweetalert2.js', 1, NULL, NULL, '2025-07-18 05:43:51', '2025-07-18 05:43:51'),
(25, 404, 'http://localhost/kalanjiam/assets/js/toastr.js', 1, NULL, NULL, '2025-07-18 05:43:51', '2025-07-18 05:43:51'),
(26, 404, 'http://localhost/kalanjiam/assets/js/main.js', 1, NULL, NULL, '2025-07-18 05:43:51', '2025-07-18 05:43:51'),
(27, 404, 'http://localhost/kalanjiam/assets/plugins/intl-tel-input/js/intlTelInput.js', 1, NULL, NULL, '2025-07-18 05:43:52', '2025-07-18 05:43:52'),
(28, 404, 'http://localhost/kalanjiam/assets/js/country-picker-init.js', 1, NULL, NULL, '2025-07-18 05:43:52', '2025-07-18 05:43:52'),
(29, 404, 'http://localhost/kalanjiam/assets/js/custom.js', 1, NULL, NULL, '2025-07-18 05:43:52', '2025-07-18 05:43:52'),
(30, 404, 'http://localhost/kalanjiam/assets/js/password-strength.js', 1, NULL, NULL, '2025-07-18 05:43:52', '2025-07-18 05:43:52'),
(31, 404, 'http://localhost/kalanjiam/assets/plugins/firebase/firebase.min.js', 1, NULL, NULL, '2025-07-18 05:43:52', '2025-07-18 05:43:52'),
(32, 404, 'http://localhost/kalanjiam/assets/img/empty-state/empty-cart.svg', 2, NULL, NULL, '2025-07-18 05:43:52', '2025-07-18 05:47:48'),
(33, 404, 'http://localhost/kalanchiyam_ecommerce-e/assets/images/home/cromwell-video.mp4', 9, NULL, NULL, '2025-07-18 06:16:29', '2025-07-19 12:18:03'),
(34, 404, 'http://localhost/kalanchiyam_ecommerce/assets/images/home/cromwell-video.mp4', 1, NULL, NULL, '2025-07-18 06:56:08', '2025-07-18 06:56:08'),
(35, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/front-end/css/img/Home/footer/call-icon.png', 60, NULL, NULL, '2025-07-18 11:22:23', '2025-07-19 11:07:34'),
(36, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/front-end/css/img/Home/product-img/back.png', 64, NULL, NULL, '2025-07-18 11:22:23', '2025-07-19 11:07:34'),
(37, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/front-end/css/img/Home/footer/mail-white-icon.png', 60, NULL, NULL, '2025-07-18 11:22:23', '2025-07-19 11:07:34'),
(38, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/front-end/css/img/Home/footer/social-links/instagram.png', 62, NULL, NULL, '2025-07-18 11:22:23', '2025-07-19 11:07:34'),
(39, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/front-end/css/img/Home/footer/social-links/linkedin.png', 62, NULL, NULL, '2025-07-18 11:22:23', '2025-07-19 11:07:34'),
(40, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/front-end/css/img/Home/footer/social-links/twitter.png', 62, NULL, NULL, '2025-07-18 11:22:24', '2025-07-19 11:07:34'),
(41, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/front-end/css/img/Home/footer/social-links/facebook.png', 60, NULL, NULL, '2025-07-18 11:22:24', '2025-07-19 11:07:36'),
(42, 404, 'http://localhost/kalanchiyam_ecommerce/blogs', 1, NULL, NULL, '2025-07-18 12:11:57', '2025-07-18 12:11:57'),
(43, 404, 'http://localhost/kalanchiyam_ecommerce-e/assets/img/svg/google.svg', 1, NULL, NULL, '2025-07-18 12:26:55', '2025-07-18 12:26:55'),
(44, 404, 'http://localhost/kalanchiyam_ecommerce-e/assets/img/svg/facebook.svg', 1, NULL, NULL, '2025-07-18 12:26:56', '2025-07-18 12:26:56'),
(45, 404, 'http://localhost/kalanchiyam_ecommerce-e/admin/dashboard/real-time-activities', 13, NULL, NULL, '2025-07-18 12:30:39', '2025-07-18 23:37:25'),
(46, 404, 'http://localhost/kalanchiyam_ecommerce/admin', 1, NULL, NULL, '2025-07-18 12:55:22', '2025-07-18 12:55:22'),
(47, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/backend/libs/bootstrap/bootstrap.bundle.min.js.map', 10, NULL, NULL, '2025-07-18 12:59:25', '2025-07-18 23:45:25'),
(48, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/backend/libs/bootstrap/bootstrap.min.css.map', 10, NULL, NULL, '2025-07-18 12:59:25', '2025-07-18 23:45:26'),
(49, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/new/back-end/libs/lightbox/lightbox.min.map', 10, NULL, NULL, '2025-07-18 12:59:25', '2025-07-18 23:45:25'),
(50, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/new/back-end/libs/swiper/swiper-bundle.min.js.map', 10, NULL, NULL, '2025-07-18 12:59:25', '2025-07-18 23:45:26'),
(51, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/new/back-end/libs/tags-input/bootstrap-tagsinput.min.js.map', 10, NULL, NULL, '2025-07-18 12:59:25', '2025-07-18 23:45:26'),
(52, 404, 'http://localhost/kalanchiyam_ecommerce/public/assets/backend/libs/firebase/firebase.js.map', 10, NULL, NULL, '2025-07-18 12:59:25', '2025-07-18 23:45:26'),
(53, 404, 'http://localhost/kalanchiyam_ecommerce-e/admin/products/stock-limit-status/in_house', 1, NULL, NULL, '2025-07-18 23:21:37', '2025-07-18 23:21:37'),
(54, 404, 'http://localhost/kalanchiyam_ecommerce/admin/products/bulk-import', 3, NULL, NULL, '2025-07-18 23:37:08', '2025-07-19 06:04:59'),
(55, 404, 'http://localhost/kalanchiyam_ecommerce/admin/dashboard/real-time-activities', 58, NULL, NULL, '2025-07-18 23:39:40', '2025-07-19 07:35:38'),
(56, 404, 'http://localhost/kalanchiyam_ecommerce/admin/dashboard', 1, NULL, NULL, '2025-07-18 23:39:41', '2025-07-18 23:39:41'),
(57, 404, 'http://localhost/kalanchiyam_ecommerce/admin/business-settings/website-setup', 1, NULL, NULL, '2025-07-18 23:44:13', '2025-07-18 23:44:13'),
(58, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/magnific-popup-1.1.0/magnific-popup.css', 2, NULL, NULL, '2025-07-18 23:46:21', '2025-07-19 06:14:37'),
(59, 404, 'http://localhost/kalanchiyam_ecommerce/assets/css/fonts-init.css', 2, NULL, NULL, '2025-07-18 23:46:21', '2025-07-19 06:14:37'),
(60, 404, 'http://localhost/kalanchiyam_ecommerce/assets/css/bootstrap.min.css', 2, NULL, NULL, '2025-07-18 23:46:21', '2025-07-19 06:14:37'),
(61, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/swiper/swiper-bundle.min.css', 2, NULL, NULL, '2025-07-18 23:46:21', '2025-07-19 06:14:37'),
(62, 404, 'http://localhost/kalanchiyam_ecommerce/assets/css/bootstrap-icons.min.css', 2, NULL, NULL, '2025-07-18 23:46:21', '2025-07-19 06:14:37'),
(63, 404, 'http://localhost/kalanchiyam_ecommerce/assets/css/toastr.css', 2, NULL, NULL, '2025-07-18 23:46:22', '2025-07-19 06:14:38'),
(64, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/select2/css/select2.min.css', 2, NULL, NULL, '2025-07-18 23:46:22', '2025-07-19 06:14:37'),
(65, 404, 'http://localhost/kalanchiyam_ecommerce/assets/css/style.css', 2, NULL, NULL, '2025-07-18 23:46:22', '2025-07-19 06:14:38'),
(66, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/intl-tel-input/css/intlTelInput.css', 2, NULL, NULL, '2025-07-18 23:46:22', '2025-07-19 06:14:37'),
(67, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/sweet_alert/sweetalert2.css', 2, NULL, NULL, '2025-07-18 23:46:22', '2025-07-19 06:14:37'),
(68, 404, 'http://localhost/kalanchiyam_ecommerce/assets/css/custom.css', 2, NULL, NULL, '2025-07-18 23:46:22', '2025-07-19 06:14:38'),
(69, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/flags/en.png', 3, NULL, NULL, '2025-07-18 23:46:23', '2025-07-19 06:14:39'),
(70, 404, 'http://localhost/kalanchiyam_ecommerce/assets/js/jquery-3.6.0.min.js', 2, NULL, NULL, '2025-07-18 23:46:23', '2025-07-19 06:14:38'),
(71, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/svg/light.svg', 2, NULL, NULL, '2025-07-18 23:46:23', '2025-07-19 06:14:38'),
(72, 404, 'http://localhost/kalanchiyam_ecommerce/assets/js/bootstrap.bundle.min.js', 2, NULL, NULL, '2025-07-18 23:46:23', '2025-07-19 06:14:38'),
(73, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/swiper/swiper-bundle.min.js', 2, NULL, NULL, '2025-07-18 23:46:23', '2025-07-19 06:14:39'),
(74, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/sweet_alert/sweetalert2.js', 2, NULL, NULL, '2025-07-18 23:46:23', '2025-07-19 06:14:39'),
(75, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/easyzoom/easyzoom.min.js', 2, NULL, NULL, '2025-07-18 23:46:24', '2025-07-19 06:14:39'),
(76, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/magnific-popup-1.1.0/jquery.magnific-popup.js', 2, NULL, NULL, '2025-07-18 23:46:24', '2025-07-19 06:14:39'),
(77, 404, 'http://localhost/kalanchiyam_ecommerce/assets/js/toastr.js', 2, NULL, NULL, '2025-07-18 23:46:24', '2025-07-19 06:14:39'),
(78, 404, 'http://localhost/kalanchiyam_ecommerce/assets/js/main.js', 2, NULL, NULL, '2025-07-18 23:46:24', '2025-07-19 06:14:39'),
(79, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/intl-tel-input/js/intlTelInput.js', 2, NULL, NULL, '2025-07-18 23:46:24', '2025-07-19 06:14:39'),
(80, 404, 'http://localhost/kalanchiyam_ecommerce/assets/js/custom.js', 2, NULL, NULL, '2025-07-18 23:46:25', '2025-07-19 06:14:40'),
(81, 404, 'http://localhost/kalanchiyam_ecommerce/assets/js/country-picker-init.js', 2, NULL, NULL, '2025-07-18 23:46:25', '2025-07-19 06:14:40'),
(82, 404, 'http://localhost/kalanchiyam_ecommerce/assets/plugins/firebase/firebase.min.js', 2, NULL, NULL, '2025-07-18 23:46:25', '2025-07-19 06:14:40'),
(83, 404, 'http://localhost/kalanchiyam_ecommerce/assets/js/password-strength.js', 2, NULL, NULL, '2025-07-18 23:46:25', '2025-07-19 06:14:40'),
(84, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/svg/dark.svg', 2, NULL, NULL, '2025-07-18 23:46:25', '2025-07-19 06:14:38'),
(85, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/user.png', 1, NULL, NULL, '2025-07-18 23:46:26', '2025-07-18 23:46:26'),
(86, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/empty-state/empty-cart.svg', 2, NULL, NULL, '2025-07-18 23:46:26', '2025-07-19 06:14:40'),
(87, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/placeholder/placeholder-2-1.png', 1, NULL, NULL, '2025-07-18 23:46:26', '2025-07-18 23:46:26'),
(88, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/top-side-banner-placeholder.png', 1, NULL, NULL, '2025-07-18 23:46:26', '2025-07-18 23:46:26'),
(89, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/icons/f2.png', 1, NULL, NULL, '2025-07-18 23:46:26', '2025-07-18 23:46:26'),
(90, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/icons/f1.png', 1, NULL, NULL, '2025-07-18 23:46:26', '2025-07-18 23:46:26'),
(91, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/icons/f3.png', 1, NULL, NULL, '2025-07-18 23:46:27', '2025-07-18 23:46:27'),
(92, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/icons/f4.png', 1, NULL, NULL, '2025-07-18 23:46:27', '2025-07-18 23:46:27'),
(93, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/media/google-play.png', 1, NULL, NULL, '2025-07-18 23:46:27', '2025-07-18 23:46:27'),
(94, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/media/app-store.png', 1, NULL, NULL, '2025-07-18 23:46:27', '2025-07-18 23:46:27'),
(95, 404, 'http://localhost/kalanchiyam_ecommerce/assets/img/svg/google.svg', 1, NULL, NULL, '2025-07-18 23:46:27', '2025-07-18 23:46:27'),
(96, 404, 'http://localhost/kalanchiyam_ecommerce/assets/js/blog.js', 1, NULL, NULL, '2025-07-19 06:14:40', '2025-07-19 06:14:40'),
(97, 404, 'http://localhost/kalanchiyam_ecommerce/assets/front-end/css1/product.css', 1, NULL, NULL, '2025-07-19 06:23:05', '2025-07-19 06:23:05'),
(98, 404, 'http://localhost/kalanchiyam_ecommerce/assets/front-end/css1/product.scss', 1, NULL, NULL, '2025-07-19 06:23:05', '2025-07-19 06:23:05'),
(99, 404, 'http://localhost/kalanchiyam_ecommerce/assets/front-end/css1/product.css.map', 1, NULL, NULL, '2025-07-19 06:23:05', '2025-07-19 06:23:05'),
(100, 404, 'http://localhost/kalanchiyam_ecommerce/assets/front-end/css1/style.css', 1, NULL, NULL, '2025-07-19 06:23:05', '2025-07-19 06:23:05'),
(101, 404, 'http://localhost/kalanjiam_core/assets/images/home/cromwell-video.mp4', 2, NULL, NULL, '2025-07-19 06:59:17', '2025-07-19 06:59:18'),
(102, 404, 'http://localhost/kalanjiam_core/admin/dashboard/real-time-activities', 1772, NULL, NULL, '2025-07-19 07:08:34', '2025-08-11 13:23:57'),
(103, 404, 'http://localhost/kalanchiyam_ecommerce/admin/system-setup/theme/setup', 1, NULL, NULL, '2025-07-19 07:35:40', '2025-07-19 07:35:40'),
(104, 404, 'http://localhost/kalanjiam_core/admin/system-setup/theme/setup', 2, NULL, NULL, '2025-07-19 07:35:48', '2025-07-19 07:37:28'),
(105, 404, 'http://localhost/kalanjiam_core/admin/brand/list', 1, NULL, NULL, '2025-07-19 07:39:14', '2025-07-19 07:39:14'),
(106, 404, 'http://localhost/kalanjiam_core/admin/system-setup/login-settings/otp-setup', 1, NULL, NULL, '2025-07-19 09:19:33', '2025-07-19 09:19:33'),
(107, 404, 'http://localhost/kalanjiam_core/admin/third-party/analytics-index', 1, NULL, NULL, '2025-07-19 09:21:13', '2025-07-19 09:21:13'),
(108, 404, 'http://localhost/kalanjiam_core/assets/plugins/swiper/swiper-bundle.min.css', 38, NULL, NULL, '2025-07-19 10:29:05', '2025-08-07 06:45:46'),
(109, 404, 'http://localhost/kalanjiam_core/assets/css/fonts-init.css', 38, NULL, NULL, '2025-07-19 10:29:05', '2025-08-07 06:45:46'),
(110, 404, 'http://localhost/kalanjiam_core/assets/css/bootstrap.min.css', 38, NULL, NULL, '2025-07-19 10:29:05', '2025-08-07 06:45:46'),
(111, 404, 'http://localhost/kalanjiam_core/assets/plugins/magnific-popup-1.1.0/magnific-popup.css', 38, NULL, NULL, '2025-07-19 10:29:05', '2025-08-07 06:45:46'),
(112, 404, 'http://localhost/kalanjiam_core/assets/plugins/sweet_alert/sweetalert2.css', 38, NULL, NULL, '2025-07-19 10:29:05', '2025-08-07 06:45:46'),
(113, 404, 'http://localhost/kalanjiam_core/assets/css/bootstrap-icons.min.css', 38, NULL, NULL, '2025-07-19 10:29:05', '2025-08-07 06:45:46'),
(114, 404, 'http://localhost/kalanjiam_core/assets/css/custom.css', 37, NULL, NULL, '2025-07-19 10:29:07', '2025-08-07 06:45:48'),
(115, 404, 'http://localhost/kalanjiam_core/assets/css/toastr.css', 37, NULL, NULL, '2025-07-19 10:29:07', '2025-08-07 06:45:47'),
(116, 404, 'http://localhost/kalanjiam_core/assets/css/style.css', 38, NULL, NULL, '2025-07-19 10:29:07', '2025-08-07 06:45:48'),
(117, 404, 'http://localhost/kalanjiam_core/assets/plugins/select2/css/select2.min.css', 38, NULL, NULL, '2025-07-19 10:29:07', '2025-08-07 06:45:47'),
(118, 404, 'http://localhost/kalanjiam_core/assets/img/loader.gif', 37, NULL, NULL, '2025-07-19 10:29:07', '2025-08-07 06:45:48'),
(119, 404, 'http://localhost/kalanjiam_core/assets/plugins/intl-tel-input/css/intlTelInput.css', 38, NULL, NULL, '2025-07-19 10:29:07', '2025-08-07 06:45:47'),
(120, 404, 'http://localhost/kalanjiam_core/assets/img/flags/en.png', 39, NULL, NULL, '2025-07-19 10:29:09', '2025-08-07 06:45:48'),
(121, 404, 'http://localhost/kalanjiam_core/assets/img/svg/light.svg', 59, NULL, NULL, '2025-07-19 10:29:09', '2025-08-07 06:45:49'),
(122, 404, 'http://localhost/kalanjiam_core/assets/img/svg/dark.svg', 59, NULL, NULL, '2025-07-19 10:29:09', '2025-08-07 06:45:52'),
(123, 404, 'http://localhost/kalanjiam_core/assets/plugins/swiper/swiper-bundle.min.js', 49, NULL, NULL, '2025-07-19 10:29:09', '2025-08-07 06:45:49'),
(124, 404, 'http://localhost/kalanjiam_core/assets/js/jquery-3.6.0.min.js', 50, NULL, NULL, '2025-07-19 10:29:09', '2025-08-07 06:45:49'),
(125, 404, 'http://localhost/kalanjiam_core/assets/js/bootstrap.bundle.min.js', 49, NULL, NULL, '2025-07-19 10:29:09', '2025-08-07 06:45:49'),
(126, 404, 'http://localhost/kalanjiam_core/admin/business-settings/web-config', 2, NULL, NULL, '2025-07-19 10:58:42', '2025-07-19 10:58:42'),
(127, 404, 'http://localhost/kalanjiam_core/assets/img/top-side-banner-placeholder.png', 5, NULL, NULL, '2025-07-19 10:58:47', '2025-07-28 14:28:05'),
(128, 404, 'http://localhost/kalanjiam_core/assets/img/placeholder/placeholder-2-1.png', 5, NULL, NULL, '2025-07-19 10:58:47', '2025-07-28 14:28:05'),
(129, 404, 'http://localhost/kalanjiam_core/assets/plugins/sweet_alert/sweetalert2.js', 46, NULL, NULL, '2025-07-19 10:58:47', '2025-08-07 06:45:49'),
(130, 404, 'http://localhost/kalanjiam_core/assets/plugins/magnific-popup-1.1.0/jquery.magnific-popup.js', 44, NULL, NULL, '2025-07-19 10:58:47', '2025-08-07 06:45:50'),
(131, 404, 'http://localhost/kalanjiam_core/assets/plugins/easyzoom/easyzoom.min.js', 48, NULL, NULL, '2025-07-19 10:58:47', '2025-08-07 06:45:50'),
(132, 404, 'http://localhost/kalanjiam_core/assets/js/toastr.js', 43, NULL, NULL, '2025-07-19 10:58:48', '2025-08-07 06:45:50'),
(133, 404, 'http://localhost/kalanjiam_core/assets/js/main.js', 44, NULL, NULL, '2025-07-19 10:58:48', '2025-08-07 06:45:50'),
(134, 404, 'http://localhost/kalanjiam_core/assets/plugins/intl-tel-input/js/intlTelInput.js', 43, NULL, NULL, '2025-07-19 10:58:48', '2025-08-07 06:45:51'),
(135, 404, 'http://localhost/kalanjiam_core/assets/js/country-picker-init.js', 42, NULL, NULL, '2025-07-19 10:58:48', '2025-08-07 06:45:51'),
(136, 404, 'http://localhost/kalanjiam_core/assets/js/custom.js', 41, NULL, NULL, '2025-07-19 10:58:48', '2025-08-07 06:45:51'),
(137, 404, 'http://localhost/kalanjiam_core/assets/js/password-strength.js', 39, NULL, NULL, '2025-07-19 10:58:48', '2025-08-07 06:45:51'),
(138, 404, 'http://localhost/kalanjiam_core/assets/plugins/firebase/firebase.min.js', 41, NULL, NULL, '2025-07-19 10:58:48', '2025-08-07 06:45:51'),
(139, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/css/img/Home/product-img/img.png', 10, NULL, NULL, '2025-07-19 12:03:52', '2025-07-19 12:09:59'),
(140, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/css/img/Home/product-img/locker.png', 10, NULL, NULL, '2025-07-19 12:03:52', '2025-07-19 12:09:59'),
(141, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/css/img/Home/product-img/img2.png', 10, NULL, NULL, '2025-07-19 12:03:52', '2025-07-19 12:09:58'),
(142, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/css/img/Home/product-img/rating-stars.png', 2, NULL, NULL, '2025-07-19 12:07:55', '2025-07-19 12:08:04'),
(143, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/css/img/Home/product-img/back.png', 1, NULL, NULL, '2025-07-19 12:08:05', '2025-07-19 12:08:05'),
(144, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/css/img/Home/product-img/local_offer.png', 1, NULL, NULL, '2025-07-19 12:08:05', '2025-07-19 12:08:05'),
(145, 404, 'http://localhost/kalanjiam_core/_debugbar/assets/stylesheets?v=1744785126', 1, NULL, NULL, '2025-07-19 12:13:03', '2025-07-19 12:13:03'),
(146, 404, 'http://localhost/kalanjiam_core/_debugbar/assets/javascript?v=1744785126', 1, NULL, NULL, '2025-07-19 12:13:03', '2025-07-19 12:13:03'),
(147, 404, 'http://localhost/kalanjiam_core/assets/img/svg/dollar.svg', 3, NULL, NULL, '2025-07-19 12:16:39', '2025-07-19 12:16:41'),
(148, 404, 'http://localhost/kalanchiyam_ecommerce-e/assets/plugins/firebase/firebase.min.js', 1, NULL, NULL, '2025-07-19 12:16:41', '2025-07-19 12:16:41'),
(149, 404, 'http://localhost/kalanchiyam_ecommerce-e/assets/js/password-strength.js', 1, NULL, NULL, '2025-07-19 12:16:42', '2025-07-19 12:16:42'),
(150, 404, 'http://localhost/kalanjiam_core/images/iphone.png', 5, NULL, NULL, '2025-07-19 12:50:52', '2025-07-19 12:55:02'),
(151, 404, 'http://localhost/kalanjiam_core/assets/img/user.png', 13, NULL, NULL, '2025-07-21 05:40:31', '2025-07-30 06:07:51'),
(152, 404, 'http://localhost/kalanjiam_core/assets/img/empty-state/empty-cart.svg', 95, NULL, NULL, '2025-07-21 05:40:32', '2025-08-04 10:41:58'),
(153, 404, 'http://localhost/kalanjiam_core/asset(\'js/custom.js\')', 2, NULL, NULL, '2025-07-21 07:39:46', '2025-07-21 07:40:00'),
(154, 404, 'http://localhost/kalanjiam_core/js/custom.js', 4, NULL, NULL, '2025-07-21 07:41:43', '2025-07-21 07:42:38'),
(155, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/vendor/tiny-slider/dist/sourcemaps/tiny-slider.css.map', 3, NULL, NULL, '2025-07-21 07:52:01', '2025-07-28 15:50:50'),
(156, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/css/theme.min.css.map', 3, NULL, NULL, '2025-07-21 07:52:02', '2025-07-28 15:50:50'),
(157, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/css/style.css.map', 3, NULL, NULL, '2025-07-21 07:52:02', '2025-07-28 15:50:50'),
(158, 404, 'http://localhost/kalanjiam_core/public/js/lightbox.min.map', 4, NULL, NULL, '2025-07-21 07:52:02', '2025-07-28 15:50:52'),
(159, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/vendor/bootstrap/dist/js/bootstrap.bundle.min.js.map', 4, NULL, NULL, '2025-07-21 07:52:02', '2025-07-28 15:50:50'),
(160, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/vendor/bs-custom-file-input/dist/bs-custom-file-input.min.js.map', 4, NULL, NULL, '2025-07-21 07:52:02', '2025-07-28 15:50:50'),
(161, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/vendor/tiny-slider/dist/sourcemaps/tiny-slider.js.map', 4, NULL, NULL, '2025-07-21 07:52:02', '2025-07-28 15:50:50'),
(162, 404, 'http://localhost/kalanjiam_core/public/assets/back-end/js/toastr.js.map', 12, NULL, NULL, '2025-07-21 07:52:03', '2025-07-28 15:50:53'),
(163, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/vendor/firebase/firebase.js.map', 4, NULL, NULL, '2025-07-21 07:52:03', '2025-07-28 15:50:52'),
(164, 404, 'http://localhost/kalanjiam_core/public/assets/front-end/vendor/drift-zoom/dist/Drift.min.js.map', 4, NULL, NULL, '2025-07-21 07:52:03', '2025-07-28 15:50:52'),
(165, 404, 'http://localhost/kalanjiam_core/assets/img/icons/f1.png', 29, NULL, NULL, '2025-07-21 08:43:00', '2025-08-07 06:45:52'),
(166, 404, 'http://localhost/kalanjiam_core/assets/img/icons/f3.png', 29, NULL, NULL, '2025-07-21 08:43:01', '2025-08-07 06:45:53'),
(167, 404, 'http://localhost/kalanjiam_core/assets/img/icons/f2.png', 30, NULL, NULL, '2025-07-21 08:43:01', '2025-08-07 06:45:53'),
(168, 404, 'http://localhost/kalanjiam_core/assets/img/icons/f4.png', 28, NULL, NULL, '2025-07-21 08:43:01', '2025-08-07 06:45:53'),
(169, 404, 'http://localhost/kalanjiam_core/assets/img/media/google-play.png', 14, NULL, NULL, '2025-07-21 08:43:01', '2025-08-07 06:45:54'),
(170, 404, 'http://localhost/kalanjiam_core/assets/img/media/app-store.png', 15, NULL, NULL, '2025-07-21 08:43:02', '2025-08-07 06:45:54'),
(171, 404, 'http://localhost/kalanjiam_core/assets/img/svg/google.svg', 38, NULL, NULL, '2025-07-21 08:43:02', '2025-08-07 06:45:54'),
(172, 404, 'http://localhost/kalanjiam_core/assets/img/svg/facebook.svg', 37, NULL, NULL, '2025-07-21 08:43:02', '2025-08-07 06:45:54'),
(173, 404, 'http://localhost/kalanjiam_core/assets/img/whatsapp.svg', 31, NULL, NULL, '2025-07-21 08:43:02', '2025-08-07 06:45:54'),
(174, 404, 'http://localhost/kalanjiam_core/assets/sound/notification.mp3', 16, NULL, NULL, '2025-07-21 09:00:54', '2025-08-07 06:47:01'),
(175, 404, 'http://localhost/kalanjiam_core/assets/js/quick-view.js', 5, NULL, NULL, '2025-07-21 10:17:28', '2025-07-31 06:13:38'),
(176, 404, 'http://localhost/kalanjiam_core/[object%20Object]', 7, NULL, NULL, '2025-07-23 05:18:40', '2025-07-23 05:23:28'),
(177, 404, 'http://localhost/kalanjiam_core/assets/js/product-details.js', 7, NULL, NULL, '2025-07-26 04:26:57', '2025-07-30 06:07:48'),
(178, 404, 'http://localhost/kalanjiam_core/assets/img/empty-state/empty-review.svg', 4, NULL, NULL, '2025-07-26 11:08:07', '2025-07-30 06:07:49'),
(179, 404, 'http://localhost/kalanjiam_core/assets/js/cart.js', 2, NULL, NULL, '2025-07-26 12:34:13', '2025-07-26 14:43:58'),
(180, 404, 'http://localhost/kalanjiam_core/assets/js/cart-list-page.js', 2, NULL, NULL, '2025-07-26 12:34:13', '2025-07-26 14:44:02'),
(181, 404, 'http://localhost/kalanjiam_core/admin/products/stock-limit-status/in_house', 115, NULL, NULL, '2025-07-31 04:56:05', '2025-08-11 13:19:57'),
(182, 404, 'http://localhost/kalanjiam_core/admin/products/update/203', 1, NULL, NULL, '2025-08-04 11:32:41', '2025-08-04 11:32:41'),
(183, 404, 'http://localhost/kalanjiam_core/public/assets/backend/libs/bootstrap/bootstrap.bundle.min.js.map', 4, NULL, NULL, '2025-08-04 11:32:50', '2025-08-04 11:34:01'),
(184, 404, 'http://localhost/kalanjiam_core/public/assets/backend/libs/bootstrap/bootstrap.min.css.map', 5, NULL, NULL, '2025-08-04 11:32:50', '2025-08-04 11:35:40'),
(185, 404, 'http://localhost/kalanjiam_core/admin/logout', 1, NULL, NULL, '2025-08-05 05:09:10', '2025-08-05 05:09:10'),
(186, 404, 'http://localhost/kalanjiam_core/assets/js/shipping-page.js', 2, NULL, NULL, '2025-08-05 05:18:06', '2025-08-07 06:45:51'),
(187, 404, 'http://localhost/kalanjiam_core/assets/img/svg/address.svg', 2, NULL, NULL, '2025-08-05 05:18:06', '2025-08-07 06:45:52'),
(188, 404, 'http://localhost/kalanjiam_core/assets/img/empty-state/empty-product.svg', 1, NULL, NULL, '2025-08-07 10:15:48', '2025-08-07 10:15:48'),
(189, 404, 'http://localhost/kalanjiam_core/admin/dashboard', 1, NULL, NULL, '2025-08-09 07:13:32', '2025-08-09 07:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_deals`
--

CREATE TABLE `feature_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `deal_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`, `product_id`, `deal_type`) VALUES
(1, 'sdf', '2025-08-09', '2025-09-30', 1, 0, NULL, NULL, '2025-08-09-6896f5d859579.webp', 'sdf', '2025-08-09 07:16:40', '2025-08-09 07:18:51', NULL, 'flash_deal');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flash_deal_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0.00', '0', '2025-08-09 07:17:32', '2025-08-09 07:17:32'),
(2, 1, 4, '0.00', '0', '2025-08-09 07:17:32', '2025-08-09 07:17:32'),
(3, 1, 5, '0.00', '0', '2025-08-09 07:17:32', '2025-08-09 07:17:32'),
(4, 1, 124, '0.00', '0', '2025-08-09 07:17:32', '2025-08-09 07:17:32'),
(5, 1, 187, '0.00', '0', '2025-08-09 07:17:32', '2025-08-09 07:17:32'),
(6, 1, 188, '0.00', '0', '2025-08-09 07:17:32', '2025-08-09 07:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

CREATE TABLE `guest_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_users`
--

INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(2, '::1', NULL, '2024-03-27 03:10:49', NULL),
(3, '::1', NULL, '2024-03-27 03:12:35', NULL),
(4, '::1', NULL, '2024-05-18 10:57:05', NULL),
(5, '::1', NULL, '2024-09-24 07:51:36', '2024-09-24 07:51:36'),
(6, '::1', NULL, '2024-09-24 07:52:19', '2024-09-24 07:52:19'),
(7, '::1', NULL, '2024-10-27 08:14:28', '2024-10-27 08:14:28'),
(8, '::1', NULL, '2024-12-21 06:51:41', '2024-12-21 06:51:41'),
(9, '127.0.0.1', NULL, '2025-02-13 08:41:46', '2025-02-13 08:41:46'),
(10, '127.0.0.1', NULL, '2025-05-11 07:50:14', '2025-05-11 07:50:14'),
(11, '::1', NULL, '2025-07-18 05:46:01', '2025-07-18 05:46:01'),
(12, '::1', NULL, '2025-07-18 06:16:10', '2025-07-18 06:16:10'),
(13, '::1', NULL, '2025-07-18 11:18:22', '2025-07-18 11:18:22'),
(14, '::1', NULL, '2025-07-18 12:11:22', '2025-07-18 12:11:22'),
(15, '::1', NULL, '2025-07-18 23:37:14', '2025-07-18 23:37:14'),
(16, '::1', NULL, '2025-07-18 23:40:56', '2025-07-18 23:40:56'),
(17, '::1', NULL, '2025-07-19 06:04:52', '2025-07-19 06:04:52'),
(18, '::1', NULL, '2025-07-19 07:00:50', '2025-07-19 07:00:50'),
(19, '::1', NULL, '2025-07-19 07:01:01', '2025-07-19 07:01:01'),
(20, '::1', NULL, '2025-07-19 07:35:25', '2025-07-19 07:35:25'),
(21, '::1', NULL, '2025-07-19 07:37:26', '2025-07-19 07:37:26'),
(22, '::1', NULL, '2025-07-19 07:38:29', '2025-07-19 07:38:29'),
(23, '::1', NULL, '2025-07-19 07:38:32', '2025-07-19 07:38:32'),
(24, '::1', NULL, '2025-07-19 09:19:22', '2025-07-19 09:19:22'),
(25, '::1', NULL, '2025-07-19 10:27:25', '2025-07-19 10:27:25'),
(26, '::1', NULL, '2025-07-19 10:31:22', '2025-07-19 10:31:22'),
(27, '::1', NULL, '2025-07-21 05:15:02', '2025-07-21 05:15:02'),
(28, '::1', NULL, '2025-07-22 07:34:00', '2025-07-22 07:34:00'),
(29, '127.0.0.1', NULL, '2025-07-22 07:34:27', '2025-07-22 07:34:27'),
(30, '::1', NULL, '2025-07-22 07:43:21', '2025-07-22 07:43:21'),
(31, '127.0.0.1', NULL, '2025-07-22 12:25:05', '2025-07-22 12:25:05'),
(32, '::1', NULL, '2025-07-23 04:58:51', '2025-07-23 04:58:51'),
(33, '::1', NULL, '2025-07-23 04:58:51', '2025-07-23 04:58:51'),
(34, '::1', NULL, '2025-07-23 08:37:11', '2025-07-23 08:37:11'),
(223, '::1', NULL, '2024-02-19 08:35:50', NULL),
(224, '::1', NULL, '2025-07-23 09:55:49', '2025-07-23 09:55:49'),
(225, '::1', NULL, '2025-07-23 09:55:57', '2025-07-23 09:55:57'),
(226, '::1', NULL, '2025-07-23 12:04:22', '2025-07-23 12:04:22'),
(227, '::1', NULL, '2025-07-24 04:41:42', '2025-07-24 04:41:42'),
(228, '::1', NULL, '2025-07-24 11:26:24', '2025-07-24 11:26:24'),
(229, '::1', NULL, '2025-07-25 06:12:41', '2025-07-25 06:12:41'),
(230, '::1', NULL, '2025-07-26 03:16:59', '2025-07-26 03:16:59'),
(231, '::1', NULL, '2025-07-26 04:05:05', '2025-07-26 04:05:05'),
(232, '::1', NULL, '2025-07-26 11:04:53', '2025-07-26 11:04:53'),
(233, '::1', NULL, '2025-07-26 14:25:51', '2025-07-26 14:25:51'),
(234, '::1', NULL, '2025-07-28 00:15:03', '2025-07-28 00:15:03'),
(235, '::1', NULL, '2025-07-28 05:53:19', '2025-07-28 05:53:19'),
(236, '::1', NULL, '2025-07-28 05:56:44', '2025-07-28 05:56:44'),
(237, '::1', NULL, '2025-07-28 12:46:20', '2025-07-28 12:46:20'),
(238, '::1', NULL, '2025-07-30 05:46:20', '2025-07-30 05:46:20'),
(239, '::1', NULL, '2025-07-30 05:46:32', '2025-07-30 05:46:32'),
(240, '::1', NULL, '2025-07-31 04:46:10', '2025-07-31 04:46:10'),
(241, '::1', NULL, '2025-07-31 11:12:59', '2025-07-31 11:12:59'),
(242, '::1', NULL, '2025-08-04 07:19:15', '2025-08-04 07:19:15'),
(243, '::1', NULL, '2025-08-04 09:50:02', '2025-08-04 09:50:02'),
(244, '::1', NULL, '2025-08-05 05:09:21', '2025-08-05 05:09:21'),
(245, '127.0.0.1', NULL, '2025-08-09 07:37:44', '2025-08-09 07:37:44'),
(246, '127.0.0.1', NULL, '2025-08-11 14:29:00', '2025-08-11 14:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `help_topics`
--

CREATE TABLE `help_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'default',
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `ranking` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_topics`
--

INSERT INTO `help_topics` (`id`, `type`, `question`, `answer`, `ranking`, `status`, `created_at`, `updated_at`) VALUES
(1, 'vendor_registration', 'How do I register as a seller?', 'To register, click on the \"Sign Up\" button, fill in your details, and verify your account via email.', 1, 1, NULL, NULL),
(2, 'vendor_registration', 'What are the fees for selling?', 'Our platform charges a small commission on each sale. There are no upfront listing fees.', 2, 1, NULL, NULL),
(3, 'vendor_registration', 'How do I upload products?', 'Log in to your seller account, go to the \"Upload Products\" section, and fill in the product details and images.', 3, 1, NULL, NULL),
(4, 'vendor_registration', 'How do I handle customer inquiries?', 'You can manage customer inquiries directly through our platform\'s messaging system, ensuring quick and efficient communication.', 4, 1, NULL, NULL),
(5, 'vendor_registration', 'How do I register as a seller?', 'To register, click on the \"Sign Up\" button, fill in your details, and verify your account via email.', 1, 1, NULL, NULL),
(6, 'vendor_registration', 'What are the fees for selling?', 'Our platform charges a small commission on each sale. There are no upfront listing fees.', 2, 1, NULL, NULL),
(7, 'vendor_registration', 'How do I upload products?', 'Log in to your seller account, go to the \"Upload Products\" section, and fill in the product details and images.', 3, 1, NULL, NULL),
(8, 'vendor_registration', 'How do I handle customer inquiries?', 'You can manage customer inquiries directly through our platform\'s messaging system, ensuring quick and efficient communication.', 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_setups`
--

CREATE TABLE `login_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_setups`
--

INSERT INTO `login_setups` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'login_options', '{\"manual_login\":\"1\",\"otp_login\":0,\"social_login\":\"1\"}', '2024-09-24 07:52:17', '2025-07-18 11:38:06'),
(2, 'social_media_for_login', '{\"google\":\"1\",\"facebook\":\"1\",\"apple\":0}', '2024-09-24 07:52:17', '2025-07-18 11:38:06'),
(3, 'email_verification', '0', '2024-09-24 07:52:17', '2025-07-18 11:38:06'),
(4, 'phone_verification', '0', '2024-09-24 07:52:17', '2025-07-18 11:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_point_transactions`
--

CREATE TABLE `loyalty_point_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `reference` varchar(191) DEFAULT NULL,
  `transaction_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_08_105159_create_admins_table', 1),
(5, '2020_09_08_111837_create_admin_roles_table', 1),
(6, '2020_09_16_142451_create_categories_table', 2),
(7, '2020_09_16_181753_create_categories_table', 3),
(8, '2020_09_17_134238_create_brands_table', 4),
(9, '2020_09_17_203054_create_attributes_table', 5),
(10, '2020_09_19_112509_create_coupons_table', 6),
(11, '2020_09_19_161802_create_curriencies_table', 7),
(12, '2020_09_20_114509_create_sellers_table', 8),
(13, '2020_09_23_113454_create_shops_table', 9),
(14, '2020_09_23_115615_create_shops_table', 10),
(15, '2020_09_23_153822_create_shops_table', 11),
(16, '2020_09_21_122817_create_products_table', 12),
(17, '2020_09_22_140800_create_colors_table', 12),
(18, '2020_09_28_175020_create_products_table', 13),
(19, '2020_09_28_180311_create_products_table', 14),
(20, '2020_10_04_105041_create_search_functions_table', 15),
(21, '2020_10_05_150730_create_customers_table', 15),
(22, '2020_10_08_133548_create_wishlists_table', 16),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 17),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 17),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 17),
(26, '2016_06_01_000004_create_oauth_clients_table', 17),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 17),
(28, '2020_10_06_133710_create_product_stocks_table', 17),
(29, '2020_10_06_134636_create_flash_deals_table', 17),
(30, '2020_10_06_134719_create_flash_deal_products_table', 17),
(31, '2020_10_08_115439_create_orders_table', 17),
(32, '2020_10_08_115453_create_order_details_table', 17),
(33, '2020_10_08_121135_create_shipping_addresses_table', 17),
(34, '2020_10_10_171722_create_business_settings_table', 17),
(35, '2020_09_19_161802_create_currencies_table', 18),
(36, '2020_10_12_152350_create_reviews_table', 18),
(37, '2020_10_12_161834_create_reviews_table', 19),
(38, '2020_10_12_180510_create_support_tickets_table', 20),
(39, '2020_10_14_140130_create_transactions_table', 21),
(40, '2020_10_14_143553_create_customer_wallets_table', 21),
(41, '2020_10_14_143607_create_customer_wallet_histories_table', 21),
(42, '2020_10_22_142212_create_support_ticket_convs_table', 21),
(43, '2020_10_24_234813_create_banners_table', 22),
(44, '2020_10_27_111557_create_shipping_methods_table', 23),
(45, '2020_10_27_114154_add_url_to_banners_table', 24),
(46, '2020_10_28_170308_add_shipping_id_to_order_details', 25),
(47, '2020_11_02_140528_add_discount_to_order_table', 26),
(48, '2020_11_03_162723_add_column_to_order_details', 27),
(49, '2020_11_08_202351_add_url_to_banners_table', 28),
(50, '2020_11_10_112713_create_help_topic', 29),
(51, '2020_11_10_141513_create_contacts_table', 29),
(52, '2020_11_15_180036_add_address_column_user_table', 30),
(53, '2020_11_18_170209_add_status_column_to_product_table', 31),
(54, '2020_11_19_115453_add_featured_status_product', 32),
(55, '2020_11_21_133302_create_deal_of_the_days_table', 33),
(56, '2020_11_20_172332_add_product_id_to_products', 34),
(57, '2020_11_27_234439_add__state_to_shipping_addresses', 34),
(58, '2020_11_28_091929_create_chattings_table', 35),
(59, '2020_12_02_011815_add_bank_info_to_sellers', 36),
(60, '2020_12_08_193234_create_social_medias_table', 37),
(61, '2020_12_13_122649_shop_id_to_chattings', 37),
(62, '2020_12_14_145116_create_seller_wallet_histories_table', 38),
(63, '2020_12_14_145127_create_seller_wallets_table', 38),
(64, '2020_12_15_174804_create_admin_wallets_table', 39),
(65, '2020_12_15_174821_create_admin_wallet_histories_table', 39),
(66, '2020_12_15_214312_create_feature_deals_table', 40),
(67, '2020_12_17_205712_create_withdraw_requests_table', 41),
(68, '2021_02_22_161510_create_notifications_table', 42),
(69, '2021_02_24_154706_add_deal_type_to_flash_deals', 43),
(70, '2021_03_03_204349_add_cm_firebase_token_to_users', 44),
(71, '2021_04_17_134848_add_column_to_order_details_stock', 45),
(72, '2021_05_12_155401_add_auth_token_seller', 46),
(73, '2021_06_03_104531_ex_rate_update', 47),
(74, '2021_06_03_222413_amount_withdraw_req', 48),
(75, '2021_06_04_154501_seller_wallet_withdraw_bal', 49),
(76, '2021_06_04_195853_product_dis_tax', 50),
(77, '2021_05_27_103505_create_product_translations_table', 51),
(78, '2021_06_17_054551_create_soft_credentials_table', 51),
(79, '2021_06_29_212549_add_active_col_user_table', 52),
(80, '2021_06_30_212619_add_col_to_contact', 53),
(81, '2021_07_01_160828_add_col_daily_needs_products', 54),
(82, '2021_07_04_182331_add_col_seller_sales_commission', 55),
(83, '2021_08_07_190655_add_seo_columns_to_products', 56),
(84, '2021_08_07_205913_add_col_to_category_table', 56),
(85, '2021_08_07_210808_add_col_to_shops_table', 56),
(86, '2021_08_14_205216_change_product_price_col_type', 56),
(87, '2021_08_16_201505_change_order_price_col', 56),
(88, '2021_08_16_201552_change_order_details_price_col', 56),
(89, '2019_09_29_154000_create_payment_cards_table', 57),
(90, '2021_08_17_213934_change_col_type_seller_earning_history', 57),
(91, '2021_08_17_214109_change_col_type_admin_earning_history', 57),
(92, '2021_08_17_214232_change_col_type_admin_wallet', 57),
(93, '2021_08_17_214405_change_col_type_seller_wallet', 57),
(94, '2021_08_22_184834_add_publish_to_products_table', 57),
(95, '2021_09_08_211832_add_social_column_to_users_table', 57),
(96, '2021_09_13_165535_add_col_to_user', 57),
(97, '2021_09_19_061647_add_limit_to_coupons_table', 57),
(98, '2021_09_20_020716_add_coupon_code_to_orders_table', 57),
(99, '2021_09_23_003059_add_gst_to_sellers_table', 57),
(100, '2021_09_28_025411_create_order_transactions_table', 57),
(101, '2021_10_02_185124_create_carts_table', 57),
(102, '2021_10_02_190207_create_cart_shippings_table', 57),
(103, '2021_10_03_194334_add_col_order_table', 57),
(104, '2021_10_03_200536_add_shipping_cost', 57),
(105, '2021_10_04_153201_add_col_to_order_table', 57),
(106, '2021_10_07_172701_add_col_cart_shop_info', 57),
(107, '2021_10_07_184442_create_phone_or_email_verifications_table', 57),
(108, '2021_10_07_185416_add_user_table_email_verified', 57),
(109, '2021_10_11_192739_add_transaction_amount_table', 57),
(110, '2021_10_11_200850_add_order_verification_code', 57),
(111, '2021_10_12_083241_add_col_to_order_transaction', 57),
(112, '2021_10_12_084440_add_seller_id_to_order', 57),
(113, '2021_10_12_102853_change_col_type', 57),
(114, '2021_10_12_110434_add_col_to_admin_wallet', 57),
(115, '2021_10_12_110829_add_col_to_seller_wallet', 57),
(116, '2021_10_13_091801_add_col_to_admin_wallets', 57),
(117, '2021_10_13_092000_add_col_to_seller_wallets_tax', 57),
(118, '2021_10_13_165947_rename_and_remove_col_seller_wallet', 57),
(119, '2021_10_13_170258_rename_and_remove_col_admin_wallet', 57),
(120, '2021_10_14_061603_column_update_order_transaction', 57),
(121, '2021_10_15_103339_remove_col_from_seller_wallet', 57),
(122, '2021_10_15_104419_add_id_col_order_tran', 57),
(123, '2021_10_15_213454_update_string_limit', 57),
(124, '2021_10_16_234037_change_col_type_translation', 57),
(125, '2021_10_16_234329_change_col_type_translation_1', 57),
(126, '2021_10_27_091250_add_shipping_address_in_order', 58),
(127, '2021_01_24_205114_create_paytabs_invoices_table', 59),
(128, '2021_11_20_043814_change_pass_reset_email_col', 59),
(129, '2021_11_25_043109_create_delivery_men_table', 60),
(130, '2021_11_25_062242_add_auth_token_delivery_man', 60),
(131, '2021_11_27_043405_add_deliveryman_in_order_table', 60),
(132, '2021_11_27_051432_create_delivery_histories_table', 60),
(133, '2021_11_27_051512_add_fcm_col_for_delivery_man', 60),
(134, '2021_12_15_123216_add_columns_to_banner', 60),
(135, '2022_01_04_100543_add_order_note_to_orders_table', 60),
(136, '2022_01_10_034952_add_lat_long_to_shipping_addresses_table', 60),
(137, '2022_01_10_045517_create_billing_addresses_table', 60),
(138, '2022_01_11_040755_add_is_billing_to_shipping_addresses_table', 60),
(139, '2022_01_11_053404_add_billing_to_orders_table', 60),
(140, '2022_01_11_234310_add_firebase_toke_to_sellers_table', 60),
(141, '2022_01_16_121801_change_colu_type', 60),
(142, '2022_01_22_101601_change_cart_col_type', 61),
(143, '2022_01_23_031359_add_column_to_orders_table', 61),
(144, '2022_01_28_235054_add_status_to_admins_table', 61),
(145, '2022_02_01_214654_add_pos_status_to_sellers_table', 61),
(146, '2019_12_14_000001_create_personal_access_tokens_table', 62),
(147, '2022_02_11_225355_add_checked_to_orders_table', 62),
(148, '2022_02_14_114359_create_refund_requests_table', 62),
(149, '2022_02_14_115757_add_refund_request_to_order_details_table', 62),
(150, '2022_02_15_092604_add_order_details_id_to_transactions_table', 62),
(151, '2022_02_15_121410_create_refund_transactions_table', 62),
(152, '2022_02_24_091236_add_multiple_column_to_refund_requests_table', 62),
(153, '2022_02_24_103827_create_refund_statuses_table', 62),
(154, '2022_03_01_121420_add_refund_id_to_refund_transactions_table', 62),
(155, '2022_03_10_091943_add_priority_to_categories_table', 63),
(156, '2022_03_13_111914_create_shipping_types_table', 63),
(157, '2022_03_13_121514_create_category_shipping_costs_table', 63),
(158, '2022_03_14_074413_add_four_column_to_products_table', 63),
(159, '2022_03_15_105838_add_shipping_to_carts_table', 63),
(160, '2022_03_16_070327_add_shipping_type_to_orders_table', 63),
(161, '2022_03_17_070200_add_delivery_info_to_orders_table', 63),
(162, '2022_03_18_143339_add_shipping_type_to_carts_table', 63),
(163, '2022_04_06_020313_create_subscriptions_table', 64),
(164, '2022_04_12_233704_change_column_to_products_table', 64),
(165, '2022_04_19_095926_create_jobs_table', 64),
(166, '2022_05_12_104247_create_wallet_transactions_table', 65),
(167, '2022_05_12_104511_add_two_column_to_users_table', 65),
(168, '2022_05_14_063309_create_loyalty_point_transactions_table', 65),
(169, '2022_05_26_044016_add_user_type_to_password_resets_table', 65),
(170, '2022_04_15_235820_add_provider', 66),
(171, '2022_07_21_101659_add_code_to_products_table', 66),
(172, '2022_07_26_103744_add_notification_count_to_notifications_table', 66),
(173, '2022_07_31_031541_add_minimum_order_qty_to_products_table', 66),
(174, '2022_08_11_172839_add_product_type_and_digital_product_type_and_digital_file_ready_to_products', 67),
(175, '2022_08_11_173941_add_product_type_and_digital_product_type_and_digital_file_to_order_details', 67),
(176, '2022_08_20_094225_add_product_type_and_digital_product_type_and_digital_file_ready_to_carts_table', 67),
(177, '2022_10_04_160234_add_banking_columns_to_delivery_men_table', 68),
(178, '2022_10_04_161339_create_deliveryman_wallets_table', 68),
(179, '2022_10_04_184506_add_deliverymanid_column_to_withdraw_requests_table', 68),
(180, '2022_10_11_103011_add_deliverymans_columns_to_chattings_table', 68),
(181, '2022_10_11_144902_add_deliverman_id_cloumn_to_reviews_table', 68),
(182, '2022_10_17_114744_create_order_status_histories_table', 68),
(183, '2022_10_17_120840_create_order_expected_delivery_histories_table', 68),
(184, '2022_10_18_084245_add_deliveryman_charge_and_expected_delivery_date', 68),
(185, '2022_10_18_130938_create_delivery_zip_codes_table', 68),
(186, '2022_10_18_130956_create_delivery_country_codes_table', 68),
(187, '2022_10_20_164712_create_delivery_man_transactions_table', 68),
(188, '2022_10_27_145604_create_emergency_contacts_table', 68),
(189, '2022_10_29_182930_add_is_pause_cause_to_orders_table', 68),
(190, '2022_10_31_150604_add_address_phone_country_code_column_to_delivery_men_table', 68),
(191, '2022_11_05_185726_add_order_id_to_reviews_table', 68),
(192, '2022_11_07_190749_create_deliveryman_notifications_table', 68),
(193, '2022_11_08_132745_change_transaction_note_type_to_withdraw_requests_table', 68),
(194, '2022_11_10_193747_chenge_order_amount_seller_amount_admin_commission_delivery_charge_tax_toorder_transactions_table', 68),
(195, '2022_12_17_035723_few_field_add_to_coupons_table', 69),
(196, '2022_12_26_231606_add_coupon_discount_bearer_and_admin_commission_to_orders', 69),
(197, '2023_01_04_003034_alter_billing_addresses_change_zip', 69),
(198, '2023_01_05_121600_change_id_to_transactions_table', 69),
(199, '2023_02_02_113330_create_product_tag_table', 70),
(200, '2023_02_02_114518_create_tags_table', 70),
(201, '2023_02_02_152248_add_tax_model_to_products_table', 70),
(202, '2023_02_02_152718_add_tax_model_to_order_details_table', 70),
(203, '2023_02_02_171034_add_tax_type_to_carts', 70),
(204, '2023_02_06_124447_add_color_image_column_to_products_table', 70),
(205, '2023_02_07_120136_create_withdrawal_methods_table', 70),
(206, '2023_02_07_175939_add_withdrawal_method_id_and_withdrawal_method_fields_to_withdraw_requests_table', 70),
(207, '2023_02_08_143314_add_vacation_start_and_vacation_end_and_vacation_not_column_to_shops_table', 70),
(208, '2023_02_09_104656_add_payment_by_and_payment_not_to_orders_table', 70),
(209, '2023_03_27_150723_add_expires_at_to_phone_or_email_verifications', 71),
(210, '2023_04_17_095721_create_shop_followers_table', 71),
(211, '2023_04_17_111249_add_bottom_banner_to_shops_table', 71),
(212, '2023_04_20_125423_create_product_compares_table', 71),
(213, '2023_04_30_165642_add_category_sub_category_and_sub_sub_category_add_in_product_table', 71),
(214, '2023_05_16_131006_add_expires_at_to_password_resets', 71),
(215, '2023_05_17_044243_add_visit_count_to_tags_table', 71),
(216, '2023_05_18_000403_add_title_and_subtitle_and_background_color_and_button_text_to_banners_table', 71),
(217, '2023_05_21_111300_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_users_table', 71),
(218, '2023_05_21_111600_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_phone_or_email_verifications_table', 71),
(219, '2023_05_21_112215_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_password_resets_table', 71),
(220, '2023_06_04_210726_attachment_lenght_change_to_reviews_table', 71),
(221, '2023_06_05_115153_add_referral_code_and_referred_by_to_users_table', 72),
(222, '2023_06_21_002658_add_offer_banner_to_shops_table', 72),
(223, '2023_07_08_210747_create_most_demandeds_table', 72),
(224, '2023_07_31_111419_add_minimum_order_amount_to_sellers_table', 72),
(225, '2023_08_03_105256_create_offline_payment_methods_table', 72),
(226, '2023_08_07_131013_add_is_guest_column_to_carts_table', 72),
(227, '2023_08_07_170601_create_offline_payments_table', 72),
(228, '2023_08_12_102355_create_add_fund_bonus_categories_table', 72),
(229, '2023_08_12_215346_create_guest_users_table', 72),
(230, '2023_08_12_215659_add_is_guest_column_to_orders_table', 72),
(231, '2023_08_12_215933_add_is_guest_column_to_shipping_addresses_table', 72),
(232, '2023_08_15_000957_add_email_column_toshipping_address_table', 72),
(233, '2023_08_17_222330_add_identify_related_columns_to_admins_table', 72),
(234, '2023_08_20_230624_add_sent_by_and_send_to_in_notifications_table', 72),
(235, '2023_08_20_230911_create_notification_seens_table', 72),
(236, '2023_08_21_042331_add_theme_to_banners_table', 72),
(237, '2023_08_24_150009_add_free_delivery_over_amount_and_status_to_seller_table', 72),
(238, '2023_08_26_161214_add_is_shipping_free_to_orders_table', 72),
(239, '2023_08_26_173523_add_payment_method_column_to_wallet_transactions_table', 72),
(240, '2023_08_26_204653_add_verification_status_column_to_orders_table', 72),
(241, '2023_08_26_225113_create_order_delivery_verifications_table', 72),
(242, '2023_09_03_212200_add_free_delivery_responsibility_column_to_orders_table', 72),
(243, '2023_09_23_153314_add_shipping_responsibility_column_to_orders_table', 72),
(244, '2023_09_25_152733_create_digital_product_otp_verifications_table', 72),
(245, '2023_09_27_191638_add_attachment_column_to_support_ticket_convs_table', 73),
(246, '2023_10_01_205117_add_attachment_column_to_chattings_table', 73),
(247, '2023_10_07_182714_create_notification_messages_table', 73),
(248, '2023_10_21_113354_add_app_language_column_to_users_table', 73),
(249, '2023_10_21_123433_add_app_language_column_to_sellers_table', 73),
(250, '2023_10_21_124657_add_app_language_column_to_delivery_men_table', 73),
(251, '2023_10_22_130225_add_attachment_to_support_tickets_table', 73),
(252, '2023_10_25_113233_make_message_nullable_in_chattings_table', 73),
(253, '2023_10_30_152005_make_attachment_column_type_change_to_reviews_table', 73),
(254, '2024_01_14_192546_add_slug_to_shops_table', 74),
(255, '2024_01_25_175421_add_country_code_to_emergency_contacts_table', 75),
(256, '2024_02_01_200417_add_denied_count_and_approved_count_to_refund_requests_table', 75),
(257, '2024_03_11_130425_add_seen_notification_and_notification_receiver_to_chattings_table', 76),
(258, '2024_03_12_123322_update_images_column_in_refund_requests_table', 76),
(259, '2024_03_21_134659_change_denied_note_column_type_to_text', 76),
(260, '2024_04_03_093637_create_email_templates_table', 77),
(261, '2024_04_17_102137_add_is_checked_column_to_carts_table', 77),
(262, '2024_04_23_130436_create_vendor_registration_reasons_table', 77),
(263, '2024_04_24_093932_add_type_to_help_topics_table', 77),
(264, '2024_05_20_133216_create_review_replies_table', 78),
(265, '2024_05_20_163043_add_image_alt_text_to_brands_table', 78),
(266, '2024_05_26_152030_create_digital_product_variations_table', 78),
(267, '2024_05_26_152339_create_product_seos_table', 78),
(268, '2024_05_27_184401_add_digital_product_file_types_and_digital_product_extensions_to_products_table', 78),
(269, '2024_05_30_101603_create_storages_table', 78),
(270, '2024_06_10_174952_create_robots_meta_contents_table', 78),
(271, '2024_06_12_105137_create_error_logs_table', 78),
(272, '2024_07_03_130217_add_storage_type_columns_to_product_table', 78),
(273, '2024_07_03_153301_add_icon_storage_type_to_catogory_table', 78),
(274, '2024_07_03_171214_add_image_storage_type_to_brands_table', 78),
(275, '2024_07_03_185048_add_storage_type_columns_to_shop_table', 78),
(276, '2024_07_31_133306_create_login_setups_table', 79),
(277, '2024_08_04_123750_add_preview_file_to_products_table', 79),
(278, '2024_08_04_123805_create_authors_table', 79),
(279, '2024_08_04_123845_create_publishing_houses_table', 79),
(280, '2024_08_04_124023_create_digital_product_authors_table', 79),
(281, '2024_08_04_124046_create_digital_product_publishing_houses_table', 79),
(282, '2024_08_25_130313_modify_email_column_as_nullable_in_users_table', 79),
(283, '2024_08_26_130313_modify_token_column_as_text_in_phone_or_email_verifications_table', 79),
(284, '2024_10_01_130036_add_paid_amount_column_in_orders_table', 80),
(285, '2024_10_01_131352_create_restock_products_table', 80),
(286, '2024_10_01_132315_create_restock_product_customers_table', 80),
(287, '2024_11_02_075917_create_stock_clearance_setups_table', 81),
(288, '2024_11_02_075931_create_stock_clearance_products_table', 81),
(289, '2024_11_04_162929_create_analytic_scripts_table', 81),
(290, '2024_12_26_210457_create_blogs_table', 82),
(291, '2024_12_26_210615_create_blog_categories_table', 82),
(292, '2024_12_31_170955_bring_change_amount_column_in_orders_table', 82),
(293, '2025_01_02_180849_create_blog_translations_table', 82),
(294, '2025_01_12_104824_create_blog_seos_table', 82),
(295, '2025_02_10_165648_change_paid_amount_column_typein_orders_table', 82),
(296, '2025_03_08_201607_create_business_pages_table', 83),
(297, '2025_03_08_204555_create_attachments_table', 83),
(298, '2025_04_16_154104_modify_loyalty_point_column_in_users_table', 83);

-- --------------------------------------------------------

--
-- Table structure for table `most_demandeds`
--

CREATE TABLE `most_demandeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sent_by` varchar(255) NOT NULL DEFAULT 'system',
  `sent_to` varchar(255) NOT NULL DEFAULT 'customer',
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `notification_count` int(11) NOT NULL DEFAULT 0,
  `image` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_messages`
--

CREATE TABLE `notification_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) DEFAULT NULL,
  `key` varchar(191) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_messages`
--

INSERT INTO `notification_messages` (`id`, `user_type`, `key`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'order_pending_message', 'order pen message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(2, 'customer', 'order_confirmation_message', 'Order con Message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(3, 'customer', 'order_processing_message', 'Order pro Message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(4, 'customer', 'out_for_delivery_message', 'Order ouut Message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(5, 'customer', 'order_delivered_message', 'Order del Message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(6, 'customer', 'order_returned_message', 'Order hh Message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(7, 'customer', 'order_failed_message', 'Order fa Message', 0, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(8, 'customer', 'order_canceled', NULL, 0, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(9, 'customer', 'order_refunded_message', 'customize your order refunded message message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(10, 'customer', 'refund_request_canceled_message', 'customize your refund request canceled message message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(11, 'customer', 'message_from_delivery_man', 'customize your message from delivery man message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(12, 'customer', 'message_from_seller', 'customize your message from seller message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(13, 'customer', 'fund_added_by_admin_message', 'customize your fund added by admin message message', 1, '2023-10-30 11:02:55', '2025-07-18 05:34:28'),
(14, 'seller', 'new_order_message', 'customize your new order message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(15, 'seller', 'refund_request_message', 'customize your refund request message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(16, 'seller', 'order_edit_message', 'customize your order edit message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(17, 'seller', 'withdraw_request_status_message', 'customize your withdraw request status message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(18, 'seller', 'message_from_customer', 'customize your message from customer message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(19, 'seller', 'delivery_man_assign_by_admin_message', 'customize your delivery man assign by admin message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(20, 'seller', 'order_delivered_message', 'customize your order delivered message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(21, 'seller', 'order_canceled', 'customize your order canceled message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(22, 'seller', 'order_refunded_message', 'customize your order refunded message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(23, 'seller', 'refund_request_canceled_message', 'customize your refund request canceled message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(24, 'seller', 'refund_request_status_changed_by_admin', 'customize your refund request status changed by admin message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(25, 'delivery_man', 'new_order_assigned_message', '', 0, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(26, 'delivery_man', 'expected_delivery_date', '', 0, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(27, 'delivery_man', 'delivery_man_charge', 'customize your delivery man charge message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(28, 'delivery_man', 'order_canceled', 'customize your order canceled message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(29, 'delivery_man', 'order_rescheduled_message', 'customize your order rescheduled message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(30, 'delivery_man', 'order_edit_message', 'customize your order edit message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(31, 'delivery_man', 'message_from_seller', 'customize your message from seller message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(32, 'delivery_man', 'message_from_admin', 'customize your message from admin message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(33, 'delivery_man', 'message_from_customer', 'customize your message from customer message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(34, 'delivery_man', 'cash_collect_by_admin_message', 'customize your cash collect by admin message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(35, 'delivery_man', 'cash_collect_by_seller_message', 'customize your cash collect by seller message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(36, 'delivery_man', 'withdraw_request_status_message', 'customize your withdraw request status message message', 1, '2023-10-30 11:02:55', '2023-10-30 11:02:55'),
(37, 'seller', 'product_request_approved_message', 'customize your product request approved message message', 1, '2024-02-19 08:35:38', '2024-02-19 08:35:38'),
(38, 'seller', 'product_request_rejected_message', 'customize your product request rejected message message', 1, '2024-02-19 08:35:38', '2024-02-19 08:35:38'),
(39, 'customer', 'message_from_admin', 'customize your message from admin message', 1, '2025-07-18 05:34:17', '2025-07-18 05:34:28'),
(40, 'seller', 'message_from_delivery_man', 'customize your message from delivery man message', 1, '2025-07-18 05:34:17', '2025-07-18 05:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `notification_seens`
--

CREATE TABLE `notification_seens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `notification_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6840b7d4ed685bf2e0dc593affa0bd3b968065f47cc226d39ab09f1422b5a1d9666601f3f60a79c1', 98, 1, 'LaravelAuthApp', '[]', 1, '2021-07-05 09:25:41', '2021-07-05 09:25:41', '2022-07-05 15:25:41'),
('c42cdd5ae652b8b2cbac4f2f4b496e889e1a803b08672954c8bbe06722b54160e71dce3e02331544', 98, 1, 'LaravelAuthApp', '[]', 1, '2021-07-05 09:24:36', '2021-07-05 09:24:36', '2022-07-05 15:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`, `provider`) VALUES
(1, NULL, '6amtech', 'GEUx5tqkviM6AAQcz4oi1dcm1KtRdJPgw41lj0eI', 'http://localhost', 1, 0, 0, '2020-10-21 18:27:22', '2020-10-21 18:27:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-21 18:27:23', '2020-10-21 18:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payment_info`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment_methods`
--

CREATE TABLE `offline_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `method_informations` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(15) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0,
  `customer_type` varchar(10) DEFAULT NULL,
  `payment_status` varchar(15) NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(50) NOT NULL DEFAULT 'pending',
  `payment_method` varchar(100) DEFAULT NULL,
  `transaction_ref` varchar(30) DEFAULT NULL,
  `payment_by` varchar(191) DEFAULT NULL,
  `payment_note` text DEFAULT NULL,
  `order_amount` double NOT NULL DEFAULT 0,
  `paid_amount` decimal(18,12) NOT NULL DEFAULT 0.000000000000,
  `bring_change_amount` decimal(18,12) DEFAULT 0.000000000000,
  `bring_change_amount_currency` varchar(255) DEFAULT NULL,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `is_pause` varchar(20) NOT NULL DEFAULT '0',
  `cause` varchar(191) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_amount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(30) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `coupon_discount_bearer` varchar(191) NOT NULL DEFAULT 'inhouse',
  `shipping_responsibility` varchar(255) DEFAULT NULL,
  `shipping_method_id` bigint(20) NOT NULL DEFAULT 0,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `is_shipping_free` tinyint(1) NOT NULL DEFAULT 0,
  `order_group_id` varchar(191) NOT NULL DEFAULT 'def-order-group',
  `verification_code` varchar(191) NOT NULL DEFAULT '0',
  `verification_status` tinyint(4) NOT NULL DEFAULT 0,
  `seller_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) DEFAULT NULL,
  `shipping_address_data` text DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `deliveryman_charge` double NOT NULL DEFAULT 0,
  `expected_delivery_date` date DEFAULT NULL,
  `order_note` text DEFAULT NULL,
  `billing_address` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_address_data` text DEFAULT NULL,
  `order_type` varchar(191) NOT NULL DEFAULT 'default_type',
  `extra_discount` double(8,2) NOT NULL DEFAULT 0.00,
  `extra_discount_type` varchar(191) DEFAULT NULL,
  `free_delivery_bearer` varchar(255) DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_type` varchar(191) DEFAULT NULL,
  `delivery_type` varchar(191) DEFAULT NULL,
  `delivery_service_name` varchar(191) DEFAULT NULL,
  `third_party_delivery_tracking_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `is_guest`, `customer_type`, `payment_status`, `order_status`, `payment_method`, `transaction_ref`, `payment_by`, `payment_note`, `order_amount`, `paid_amount`, `bring_change_amount`, `bring_change_amount_currency`, `admin_commission`, `is_pause`, `cause`, `shipping_address`, `created_at`, `updated_at`, `discount_amount`, `discount_type`, `coupon_code`, `coupon_discount_bearer`, `shipping_responsibility`, `shipping_method_id`, `shipping_cost`, `is_shipping_free`, `order_group_id`, `verification_code`, `verification_status`, `seller_id`, `seller_is`, `shipping_address_data`, `delivery_man_id`, `deliveryman_charge`, `expected_delivery_date`, `order_note`, `billing_address`, `billing_address_data`, `order_type`, `extra_discount`, `extra_discount_type`, `free_delivery_bearer`, `checked`, `shipping_type`, `delivery_type`, `delivery_service_name`, `third_party_delivery_tracking_id`) VALUES
(100001, '19', 0, 'customer', 'unpaid', 'pending', 'cash_on_delivery', '', NULL, NULL, 21.539068466667, '0.000000000000', '122.000000000000', 'INR', '0.00', '0', NULL, '1', '2025-08-05 05:24:38', '2025-08-06 10:36:16', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 2, 5.00, 0, '4308-sldew-1754371478', '233540', 0, 1, 'admin', '{\"id\":1,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"sdf\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"asdasd\",\"city\":\"dsasf\",\"zip\":\"233333\",\"phone\":\"+912342343333\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"India\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', NULL, 0, NULL, NULL, 1, '{\"id\":1,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"sdf\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"asdasd\",\"city\":\"dsasf\",\"zip\":\"233333\",\"phone\":\"+912342343333\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"India\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_verifications`
--

CREATE TABLE `order_delivery_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `digital_file_after_sell` varchar(191) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `delivery_status` varchar(15) NOT NULL DEFAULT 'pending',
  `payment_status` varchar(15) NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_method_id` bigint(20) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `variation` varchar(255) DEFAULT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT 1,
  `refund_request` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `seller_id`, `digital_file_after_sell`, `product_details`, `qty`, `price`, `tax`, `discount`, `tax_model`, `delivery_status`, `payment_status`, `created_at`, `updated_at`, `shipping_method_id`, `variant`, `variation`, `discount_type`, `is_stock_decreased`, `refund_request`) VALUES
(1, 100001, 200, 1, NULL, '{\"id\":200,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Product Hotel 181\",\"slug\":\"product-hotel-181-KyPIFa\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"2\\\",\\\"position\\\":1},{\\\"id\\\":\\\"0\\\",\\\"position\\\":2},{\\\"id\\\":\\\"0\\\",\\\"position\\\":3}]\",\"category_id\":2,\"sub_category_id\":0,\"sub_sub_category_id\":0,\"brand_id\":1,\"unit\":\"kg\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"digital_file_ready_storage_type\":\"public\",\"images\":\"[\\\"def.png\\\"]\",\"color_image\":\"\",\"thumbnail\":\"\",\"thumbnail_storage_type\":\"public\",\"preview_file\":null,\"preview_file_storage_type\":\"public\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=Qo364XEM\",\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[]\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"digital_product_file_types\":null,\"digital_product_extensions\":null,\"published\":0,\"unit_price\":5.7423333333333,\"purchase_price\":0,\"tax\":0.21666666666667,\"tax_type\":null,\"tax_model\":\"exclude\",\"discount\":4.21,\"discount_type\":\"percent\",\"current_stock\":156,\"minimum_order_qty\":3,\"details\":\"Reflect billion east outside finally. Take friend television lead quite recently man.\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-07-19T06:14:23.000000Z\",\"updated_at\":\"2025-07-19T06:15:17.000000Z\",\"status\":1,\"featured_status\":0,\"meta_title\":null,\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":null,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":null,\"thumbnail_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"preview_file_full_url\":{\"key\":null,\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":null,\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}', 3, 5.7423333333333, 0.037325166666666, 0.7252567, 'exclude', 'pending', 'unpaid', '2025-08-05 05:24:39', '2025-08-05 05:24:39', NULL, '', '[]', 'discount_on_product', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_expected_delivery_histories`
--

CREATE TABLE `order_expected_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `expected_delivery_date` date NOT NULL,
  `cause` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status_histories`
--

CREATE TABLE `order_status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `cause` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status_histories`
--

INSERT INTO `order_status_histories` (`id`, `order_id`, `user_id`, `user_type`, `status`, `cause`, `created_at`, `updated_at`) VALUES
(1, 100001, 19, 'customer', 'pending', NULL, '2025-08-05 05:24:39', '2025-08-05 05:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `seller_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_amount` decimal(50,2) NOT NULL DEFAULT 0.00,
  `seller_amount` decimal(50,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(50,2) NOT NULL DEFAULT 0.00,
  `received_by` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `delivery_charge` decimal(50,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(50,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) DEFAULT NULL,
  `delivered_by` varchar(191) NOT NULL DEFAULT 'admin',
  `payment_method` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `identity` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'customer',
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` char(36) NOT NULL,
  `payer_id` varchar(64) DEFAULT NULL,
  `receiver_id` varchar(64) DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `gateway_callback_url` varchar(191) DEFAULT NULL,
  `success_hook` varchar(100) DEFAULT NULL,
  `failure_hook` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `currency_code` varchar(20) NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `external_redirect_link` varchar(255) DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute_id` varchar(64) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `payment_platform` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_requests`
--

INSERT INTO `payment_requests` (`id`, `payer_id`, `receiver_id`, `payment_amount`, `gateway_callback_url`, `success_hook`, `failure_hook`, `transaction_id`, `currency_code`, `payment_method`, `additional_data`, `is_paid`, `created_at`, `updated_at`, `payer_information`, `external_redirect_link`, `receiver_information`, `attribute_id`, `attribute`, `payment_platform`) VALUES
('77998586-ab90-47c6-affc-308a4e4c1152', '19', '100', '1292.34', NULL, 'digital_payment_success', 'digital_payment_fail', NULL, 'INR', 'razor_pay', '{\"business_name\":\"kalanjiam\",\"business_logo\":\"http:\\/\\/localhost\\/kalanjiam_core\\/resources\\/themes\\/theme_aster\\/public\\/assets\\/img\\/placeholder\\/shop.png\",\"payment_mode\":\"web\",\"is_guest\":0,\"customer_id\":19,\"order_note\":null,\"address_id\":1,\"billing_address_id\":1,\"coupon_code\":null,\"coupon_discount\":0,\"payment_request_from\":\"web\",\"new_customer_id\":0,\"is_guest_in_order\":0}', 0, '2025-08-05 05:24:18', '2025-08-05 05:24:18', '{\"name\":\"asd asd\",\"email\":\"asd@gaa.asd\",\"phone\":\"+914343434345\",\"address\":\"\"}', 'http://localhost/kalanjiam_core/web-payment', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1754371456', 'order', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `paytabs_invoices`
--

CREATE TABLE `paytabs_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `result` text NOT NULL,
  `response_code` int(10) UNSIGNED NOT NULL,
  `pt_invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `card_brand` varchar(191) DEFAULT NULL,
  `card_first_six_digits` int(10) UNSIGNED DEFAULT NULL,
  `card_last_four_digits` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_or_email_verifications`
--

CREATE TABLE `phone_or_email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_or_email` varchar(191) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `product_type` varchar(20) NOT NULL DEFAULT 'physical',
  `category_ids` varchar(80) DEFAULT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `sub_category_id` varchar(191) DEFAULT NULL,
  `sub_sub_category_id` varchar(191) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `unit` varchar(191) DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT 1,
  `refundable` tinyint(1) NOT NULL DEFAULT 1,
  `digital_product_type` varchar(30) DEFAULT NULL,
  `digital_file_ready` varchar(191) DEFAULT NULL,
  `digital_file_ready_storage_type` varchar(10) DEFAULT 'public',
  `images` longtext DEFAULT NULL,
  `color_image` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_storage_type` varchar(10) DEFAULT 'public',
  `preview_file` varchar(255) DEFAULT NULL,
  `preview_file_storage_type` varchar(255) DEFAULT 'public',
  `featured` varchar(255) DEFAULT NULL,
  `flash_deal` varchar(255) DEFAULT NULL,
  `video_provider` varchar(30) DEFAULT NULL,
  `video_url` varchar(150) DEFAULT NULL,
  `colors` varchar(150) DEFAULT NULL,
  `variant_product` tinyint(1) NOT NULL DEFAULT 0,
  `attributes` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `variation` text DEFAULT NULL,
  `digital_product_file_types` longtext DEFAULT NULL,
  `digital_product_extensions` longtext DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `purchase_price` double NOT NULL DEFAULT 0,
  `tax` varchar(191) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(80) DEFAULT NULL,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `discount` varchar(191) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(80) DEFAULT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `minimum_order_qty` int(11) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `attachment` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `featured_status` tinyint(1) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` varchar(191) DEFAULT NULL,
  `meta_image` varchar(191) DEFAULT NULL,
  `request_status` tinyint(1) NOT NULL DEFAULT 0,
  `denied_note` text DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `temp_shipping_cost` double(8,2) DEFAULT NULL,
  `is_shipping_cost_updated` tinyint(1) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `digital_file_ready_storage_type`, `images`, `color_image`, `thumbnail`, `thumbnail_storage_type`, `preview_file`, `preview_file_storage_type`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `digital_product_file_types`, `digital_product_extensions`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(1, 'admin', 1, 'Yellow Shirt', 'yellow-shirt-XSGTT1', 'physical', '[{\"id\":\"1\",\"position\":1}]', '1', NULL, NULL, 1, 'kg', 1, 1, NULL, '', NULL, '[{\"image_name\":\"2025-07-18-6879de8c9334c.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-07-18-6879de8cca779.webp\",\"storage\":\"public\"}]', '[{\"color\":\"FFFF00\",\"image_name\":\"2025-07-18-6879de8c9334c.webp\",\"storage\":\"public\"},{\"color\":null,\"image_name\":\"2025-07-18-6879de8cca779.webp\",\"storage\":\"public\"}]', '2025-07-18-6879de8d09f89.webp', 'public', '', 'public', '1', NULL, 'youtube', NULL, '[\"#FFFF00\"]', 0, 'null', '[]', '[{\"type\":\"Yellow\",\"price\":0.13866666666666666,\"sku\":\"YS-Yellow\",\"qty\":1}]', '[]', '[]', 0, 8.3166666666667, 0, '0', 'percent', 'include', '0.016666666666667', 'flat', 1, 1, '<p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Venenatis urna cursus eget nunc scelerisque viverra. Vitae congue eu consequat ac felis donec et. Arcu cursus vitae congue mauris rhoncus aenean vel elit. Curabitur vitae nunc sed velit. Non enim praesent elementum facilisis leo vel. Mi in nulla posuere sollicitudin aliquam. Ac feugiat sed lectus vestibulum mattis ullamcorper. Metus aliquam eleifend mi in.</p><p>At erat pellentesque adipiscing commodo elit at imperdiet dui. Nisi vitae suscipit tellus mauris. Aliquet porttitor lacus luctus accumsan tortor posuere. Bibendum ut tristique et egestas quis. Scelerisque fermentum dui faucibus in ornare quam.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor Incididunt?</p><p>Enim eu turpis egestas pretium aenean pharetra magna. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Aliquam eleifend mi in nulla posuere sollicitudin aliquam ultrices. Felis imperdiet proin fermentum leo vel orci porta non. At consectetur lorem donec massa sapien faucibus. Viverra maecenas accumsan lacus vel facilisis volutpat est. Massa tempor nec feugiat nisl pretium. Enim nulla aliquet porttitor lacus luctus accumsan. Netus et malesuada fames ac turpis egestas. Phasellus egestas tellus rutrum tellus pellentesque eu. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Ac turpis egestas sed tempus urna. Vulputate mi sit amet mauris commodo quis imperdiet. Etiam dignissim diam quis enim lobortis scelerisque fermentum. Volutpat est velit egestas dui id.</p><p>Erat pellentesque adipiscing commodo elit at imperdiet dui. Nisi vitae suscipit tellus mauris. Aliquet porttitor lacus luctus accumsan tortor posuere. Bibendum ut tristique et egestas quis. Scelerisque fermentum dui faucibus in ornare quam.</p><p>Duis at tellus at urna condimentum mattis pellentesque id nibh. Adipiscing bibendum est ultricies integer quis. Nulla porttitor massa id neque aliquam vestibulum. Lorem ipsum dolor sit amet. Eu non diam phasellus vestibulum lorem. Viverra mauris in aliquam sem. Ullamcorper morbi tincidunt ornare massa. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim. Sagittis aliquam malesuada bibendum arcu vitae. Tortor condimentum lacinia quis vel. Lacus luctus accumsan tortor posuere ac. Maecenas sed enim ut sem. Aenean euismod elementum nisi quis eleifend quam.</p>', 0, NULL, '2025-07-18 05:41:33', '2025-07-18 12:11:20', 1, 1, 'Yellow Shirt', 'Yellow Shirt', NULL, 1, NULL, 0.00, 0, NULL, NULL, 'P46P96'),
(4, 'admin', 1, 'Product Bag 368', 'product-bag-368-BldBVr', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Gl906mDm', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.4701666666667, 0, '0.18333333333333', NULL, 'exclude', '34.28', 'percent', 61, 5, 'Example way protect ok garden. Man control thank.', 0, NULL, '2025-07-19 06:14:22', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(5, 'admin', 1, 'Product Effect 412', 'product-effect-412-4QpG6L', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nI786bkz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.3306666666667, 0, '0.21666666666667', NULL, 'exclude', '3.23', 'percent', 238, 13, 'Effect form star space visit. Officer each third he. Represent middle science surface.', 0, NULL, '2025-07-19 06:14:22', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(6, 'admin', 1, 'Product According 564', 'product-according-564-g39XEf', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nd332MdF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.0433333333333, 0, '0.21666666666667', NULL, 'exclude', '2.22', 'percent', 336, 14, 'Teacher if with building. Site go couple design.', 0, NULL, '2025-07-19 06:14:22', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(7, 'admin', 1, 'Product Senior 949', 'product-senior-949-9VtE2a', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nB292AKP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.2705, 0, '0.26666666666667', NULL, 'exclude', '2.38', 'percent', 53, 9, 'Difference security positive seem. Wrong require upon now successful. Field much perform someone.', 0, NULL, '2025-07-19 06:14:22', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(8, 'admin', 1, 'Product Miss 154', 'product-miss-154-tzix0D', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kD357WCv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.2953333333333, 0, '0.28333333333333', NULL, 'exclude', '3.7', 'percent', 329, 14, 'Someone special work after world travel rule next. Available break real exist.', 0, NULL, '2025-07-19 06:14:22', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(9, 'admin', 1, 'Product Three 433', 'product-three-433-ieIW7Y', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=OZ814gTt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.8916666666667, 0, '0.26666666666667', NULL, 'exclude', '31.91', 'amount', 24, 6, 'We scene travel care play college raise.', 0, NULL, '2025-07-19 06:14:22', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(10, 'admin', 1, 'Product Have 244', 'product-have-244-TfIoFV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=hY809dyU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.911, 0, '0.26666666666667', NULL, 'exclude', '37.19', 'percent', 391, 39, 'Simply gun amount clearly network bed only. Attention large issue human research affect.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(11, 'admin', 1, 'Product Dream 776', 'product-dream-776-Ww5u0N', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=vd984nGP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.8718333333333, 0, '0.26666666666667', NULL, 'exclude', '31.97', 'amount', 264, 34, 'Mission everyone activity dream town once. None if address own interview right.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(12, 'admin', 1, 'Product Too 295', 'product-too-295-qnzz8E', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zx849AyM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.5798333333333, 0, '0.3', NULL, 'exclude', '25.39', 'percent', 389, 34, 'Wind though style base. Trial life boy apply mission his.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(13, 'admin', 1, 'Product Concern 560', 'product-concern-560-in7C0f', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TL110RcF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.3068333333333, 0, '0.016666666666667', NULL, 'exclude', '4.05', 'amount', 122, 46, 'Story argue able air meeting sense heavy. Policy fine lot summer across school reveal.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(14, 'admin', 1, 'Product Never 375', 'product-never-375-xc6xoo', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=UF439Psn', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.0233333333333, 0, '0.066666666666667', NULL, 'exclude', '25.42', 'amount', 97, 47, 'Front determine behind away everybody. Property way movement your. Television write it.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(15, 'admin', 1, 'Product Lay 205', 'product-lay-205-XzPa25', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=gm454nzy', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.798, 0, '0.033333333333333', NULL, 'exclude', '39.66', 'percent', 134, 43, 'Word hope green eight. Tend almost feel tonight pay involve begin. Move lay a free recently fill.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(16, 'admin', 1, 'Product Challenge 882', 'product-challenge-882-04uSvM', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Cb109LxG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.3138333333333, 0, '0', NULL, 'exclude', '3.78', 'amount', 417, 26, 'Relationship ability them detail he name. Cultural its young tough animal.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(17, 'admin', 1, 'Product Development 411', 'product-development-411-Qej1KE', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ON240sfL', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.6655, 0, '0.1', NULL, 'exclude', '39.91', 'percent', 20, 28, 'Response take room lead two require factor.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(18, 'admin', 1, 'Product Move 869', 'product-move-869-qnRlEd', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wA842pud', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.1913333333333, 0, '0.3', NULL, 'exclude', '24.67', 'amount', 304, 6, 'Like PM beyond tree investment. Visit out drop and local.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(19, 'admin', 1, 'Product Heavy 822', 'product-heavy-822-OjqkJy', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=bY851vYe', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.4206666666667, 0, '0.21666666666667', NULL, 'exclude', '7.42', 'percent', 114, 21, 'Hundred kid hit.\nApply responsibility knowledge if hit picture. First current size place tough.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(20, 'admin', 1, 'Product Speech 491', 'product-speech-491-GfP0DE', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=WV279EKr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.246, 0, '0', NULL, 'exclude', '12.69', 'percent', 350, 9, 'Southern believe visit bank ball.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(21, 'admin', 1, 'Product Think 602', 'product-think-602-y8OvE1', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ne641TCN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.6936666666667, 0, '0.2', NULL, 'exclude', '44.32', 'percent', 197, 38, 'Up heavy hear paper we would material across. Stand suggest magazine.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(22, 'admin', 1, 'Product White 731', 'product-white-731-TJj0iA', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=LS693dUw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.5375, 0, '0.05', NULL, 'exclude', '15.47', 'amount', 178, 26, 'Guy or magazine stop left. Important during debate someone professional.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(23, 'admin', 1, 'Product Material 774', 'product-material-774-xQn2WK', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cG474mxP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.3506666666667, 0, '0.16666666666667', NULL, 'exclude', '22.07', 'amount', 92, 34, 'Sort be boy whole. Both base build Mr.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(24, 'admin', 1, 'Product Beat 38', 'product-beat-38-iSeLWu', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=iV074PoX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.8408333333333, 0, '0.18333333333333', NULL, 'exclude', '36.52', 'amount', 55, 44, 'Box owner lose brother leave yourself. Decide base finish from. Show onto sit similar value.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(25, 'admin', 1, 'Product Catch 963', 'product-catch-963-AhPUpl', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nw356IbW', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.9743333333333, 0, '0.25', NULL, 'exclude', '23.59', 'amount', 463, 45, 'Trip mention than. Which certain model boy child run.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(26, 'admin', 1, 'Product Keep 427', 'product-keep-427-XcKLdn', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=YW845rWo', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.1563333333333, 0, '0.2', NULL, 'exclude', '29.72', 'percent', 439, 31, 'Establish will small keep wish. Stuff blue ability spring local today member.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(27, 'admin', 1, 'Product Tell 751', 'product-tell-751-V1vQvt', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kP249GTX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.2211666666667, 0, '0.28333333333333', NULL, 'exclude', '35.96', 'percent', 223, 4, 'Goal quickly guy vote. Full growth evening green.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(28, 'admin', 1, 'Product Staff 927', 'product-staff-927-SYc9CU', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ER568mmf', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.1171666666667, 0, '0.05', NULL, 'exclude', '45.26', 'percent', 395, 8, 'Team animal protect history. Interesting this face throughout for.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(29, 'admin', 1, 'Product Prove 350', 'product-prove-350-8xikqE', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lu290Kpt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.937, 0, '0.11666666666667', NULL, 'exclude', '8.3', 'amount', 347, 29, 'Difficult success event cause part. That skill month apply a.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(30, 'admin', 1, 'Product Analysis 388', 'product-analysis-388-AQLDBy', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=vB276fvx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.2023333333333, 0, '0.016666666666667', NULL, 'exclude', '24.99', 'percent', 48, 12, 'Film such yes leg left. Wish throw like nation nice us list. Budget white imagine shoulder.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(31, 'admin', 1, 'Product Step 589', 'product-step-589-QlXCLS', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=MY669LQs', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.2658333333333, 0, '0.16666666666667', NULL, 'exclude', '44.73', 'percent', 344, 6, 'Employee inside her where American often begin quality.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(32, 'admin', 1, 'Product Anyone 414', 'product-anyone-414-WIzpuV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=yy809OlP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.9016666666667, 0, '0.016666666666667', NULL, 'exclude', '13.27', 'percent', 64, 14, 'Sign company personal successful. Woman old teach technology career answer.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(33, 'admin', 1, 'Product Card 671', 'product-card-671-eTik82', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cn121Yoc', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.8238333333333, 0, '0.21666666666667', NULL, 'exclude', '0.09', 'percent', 398, 17, 'Goal sister president situation. Scene society star have. Moment most area live back.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(34, 'admin', 1, 'Product Especially 217', 'product-especially-217-9D7FDJ', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ce295eLk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.2291666666667, 0, '0.083333333333333', NULL, 'exclude', '48.93', 'amount', 173, 47, 'Community might natural behind. Will necessary sign over.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(35, 'admin', 1, 'Product Rock 936', 'product-rock-936-Msz5T2', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Xe254SIO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.4381666666667, 0, '0.11666666666667', NULL, 'exclude', '44.55', 'amount', 178, 22, 'Woman certain term catch food compare matter. Phone sell most offer happy.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(36, 'admin', 1, 'Product Than 585', 'product-than-585-WuYGRD', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Nk577dQz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.7251666666667, 0, '0.1', NULL, 'exclude', '40.24', 'percent', 346, 21, 'Should letter my economy anything city large news. Health nice Republican take also medical.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(37, 'admin', 1, 'Product Measure 936', 'product-measure-936-7qKiQp', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=eb329xCc', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.31033333333333, 0, '0.033333333333333', NULL, 'exclude', '4.87', 'percent', 67, 45, 'Suffer name answer recently. Large most mother season.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(38, 'admin', 1, 'Product Kitchen 811', 'product-kitchen-811-jo9BqH', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TE642pOc', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.90683333333333, 0, '0.15', NULL, 'exclude', '15.04', 'percent', 481, 37, 'Fear answer citizen worry. National international often enough. Now other reach player.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(39, 'admin', 1, 'Product Rest 309', 'product-rest-309-1fY9Mq', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=mi737iwN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.4496666666667, 0, '0', NULL, 'exclude', '13.15', 'percent', 192, 14, 'Writer provide bar treatment bar skill alone. Road line for join candidate.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(40, 'admin', 1, 'Product Involve 745', 'product-involve-745-6l31Vx', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=rT160clp', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.8625, 0, '0.033333333333333', NULL, 'exclude', '28.71', 'amount', 412, 14, 'Not west yet card huge game brother. Four manage radio moment.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(41, 'admin', 1, 'Product Meet 957', 'product-meet-957-RZPF9k', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kh288GER', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.238, 0, '0.2', NULL, 'exclude', '45.61', 'percent', 106, 26, 'Special candidate which various. Scientist source fast. Purpose car fish affect power scene.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(42, 'admin', 1, 'Product Near 903', 'product-near-903-GjDVzA', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TH767uKN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.3703333333333, 0, '0.28333333333333', NULL, 'exclude', '37.62', 'percent', 319, 49, 'Economy attention vote blue likely Republican. Democrat only like return her concern.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(43, 'admin', 1, 'Product Later 841', 'product-later-841-Wosemk', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=bA832cMr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.0655, 0, '0.15', NULL, 'exclude', '35.54', 'amount', 120, 42, 'Manage though edge century. Thought I rich yes. Ask leg for sing reflect attorney.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(44, 'admin', 1, 'Product Painting 66', 'product-painting-66-18oIhZ', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=UU168fso', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.2821666666667, 0, '0.1', NULL, 'exclude', '2.9', 'percent', 432, 25, 'Gas next culture under. Walk which skill.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(45, 'admin', 1, 'Product Realize 84', 'product-realize-84-vMt1pT', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Zn408nJF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.1198333333333, 0, '0.16666666666667', NULL, 'exclude', '6.84', 'amount', 43, 37, 'Fall talk perhaps story tree. Discover use wind which somebody who.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(46, 'admin', 1, 'Product Simple 623', 'product-simple-623-stf3e4', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Xh918Jni', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.7845, 0, '0.083333333333333', NULL, 'exclude', '19.69', 'percent', 59, 49, 'Wonder improve person them option remain give. Just lose music open half phone such.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(47, 'admin', 1, 'Product Western 711', 'product-western-711-8Jul8z', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Vf753WED', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.8586666666667, 0, '0.1', NULL, 'exclude', '35.62', 'percent', 154, 2, 'Tonight almost son environmental likely. Throw today mind power. Memory morning together couple.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(48, 'admin', 1, 'Product Focus 95', 'product-focus-95-g2Qa2W', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=KC700gtg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.7158333333333, 0, '0.28333333333333', NULL, 'exclude', '19.63', 'amount', 37, 49, 'Rich inside out page approach success.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(49, 'admin', 1, 'Product Condition 633', 'product-condition-633-m71Zgq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Dx598oVd', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.7231666666667, 0, '0.26666666666667', NULL, 'exclude', '8.04', 'percent', 435, 19, 'Year society its push experience town. Dark during raise event phone remain program.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(50, 'admin', 1, 'Product Hundred 468', 'product-hundred-468-tKMqbQ', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Fm877rYf', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.91466666666667, 0, '0.11666666666667', NULL, 'exclude', '15.98', 'percent', 294, 24, 'Performance bad behavior significant down better. Which carry entire day parent.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(51, 'admin', 1, 'Product Force 865', 'product-force-865-DZOr67', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Sk068jyR', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.2981666666667, 0, '0.13333333333333', NULL, 'exclude', '1.92', 'percent', 81, 7, 'Morning them wish baby. Still arrive maybe myself. Worker professional weight yes.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(52, 'admin', 1, 'Product Herself 527', 'product-herself-527-Jzcxfn', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ao684KaX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.7465, 0, '0.1', NULL, 'exclude', '15.19', 'percent', 275, 32, 'All common each statement sing.\nYard change fast throughout. He hand federal any national.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(53, 'admin', 1, 'Product Or 503', 'product-or-503-wfuFmn', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=WT859aJG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.6488333333333, 0, '0.1', NULL, 'exclude', '26.46', 'amount', 321, 17, 'Catch move expect interview. Fight wear born law describe successful seem.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(54, 'admin', 1, 'Product Administration 595', 'product-administration-595-suwPSJ', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=FI427keu', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.2288333333333, 0, '0.28333333333333', NULL, 'exclude', '13.02', 'percent', 367, 37, 'Condition year gas trade each half authority. Store second city doctor forward among player.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(55, 'admin', 1, 'Product Real 586', 'product-real-586-oJ1eO2', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=MY950fUo', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.9041666666667, 0, '0.1', NULL, 'exclude', '47.68', 'percent', 477, 33, 'Feel difficult site along population growth. Point suffer street affect both land.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(56, 'admin', 1, 'Product Almost 121', 'product-almost-121-Vi98BK', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Bs461XwK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.7933333333333, 0, '0.05', NULL, 'exclude', '15.48', 'percent', 187, 38, 'Manager paper move become enjoy floor. Any western TV surface about better star son.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(57, 'admin', 1, 'Product Stock 407', 'product-stock-407-v82o3N', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zE001cup', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.6958333333333, 0, '0.13333333333333', NULL, 'exclude', '10.07', 'percent', 82, 17, 'Region final near case. Miss usually option reduce manage research.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(58, 'admin', 1, 'Product Technology 411', 'product-technology-411-02Nh62', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=yQ941xpz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.6363333333333, 0, '0.05', NULL, 'exclude', '21.83', 'amount', 344, 33, 'Hold section stand occur. Cut save administration believe read. Growth off season he.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(59, 'admin', 1, 'Product Federal 664', 'product-federal-664-qJ4Q3j', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fL846sph', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.3268333333333, 0, '0.066666666666667', NULL, 'exclude', '19.68', 'percent', 14, 14, 'Civil course weight black voice eight while. East try law learn.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(60, 'admin', 1, 'Product Mr 121', 'product-mr-121-3jJACB', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=af526VgJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.2108333333333, 0, '0.25', NULL, 'exclude', '37.38', 'percent', 111, 48, 'This approach stop offer.\nPolicy look official order wear. Expert bill ago.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(61, 'admin', 1, 'Product Cause 850', 'product-cause-850-01I394', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ua811xJj', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.2156666666667, 0, '0.016666666666667', NULL, 'exclude', '34.85', 'amount', 291, 35, 'Development kid water term road. Property second alone region appear she machine.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(62, 'admin', 1, 'Product Hit 314', 'product-hit-314-KB7W8F', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=gS755elJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.48083333333333, 0, '0.13333333333333', NULL, 'exclude', '5.5', 'amount', 173, 35, 'Market feeling size officer. Item newspaper season chair recognize statement.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(63, 'admin', 1, 'Product Last 982', 'product-last-982-pv18Hp', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Bb630hBi', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.3726666666667, 0, '0.13333333333333', NULL, 'exclude', '32.63', 'percent', 101, 7, 'Computer event gun yeah member receive.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(64, 'admin', 1, 'Product According 374', 'product-according-374-xQl7dQ', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Wz594nRP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.2951666666667, 0, '0.21666666666667', NULL, 'exclude', '48.78', 'amount', 132, 50, 'Field yes occur cultural growth. Heavy kind protect figure use receive police.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(65, 'admin', 1, 'Product Foreign 73', 'product-foreign-73-yDYt7Y', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=qP083Vcb', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.2928333333333, 0, '0.05', NULL, 'exclude', '40.02', 'amount', 43, 43, 'From red visit enough model course management. Pretty notice the one study government we.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(66, 'admin', 1, 'Product Save 447', 'product-save-447-3HRXMD', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=gt445cET', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.1798333333333, 0, '0.15', NULL, 'exclude', '43.64', 'amount', 48, 29, 'Southern at yet. Race maybe return finally meeting note.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(67, 'admin', 1, 'Product Place 386', 'product-place-386-JhWbIl', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ru615Bjk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.5156666666667, 0, '0.11666666666667', NULL, 'exclude', '9.08', 'amount', 422, 22, 'Majority baby relate. Guy president play suddenly only important. Item reality at spring born sea.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(68, 'admin', 1, 'Product Year 258', 'product-year-258-UC112j', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nN962ZDw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.65616666666667, 0, '0.05', NULL, 'exclude', '5.09', 'amount', 268, 8, 'Leader push until white.\nOff open scene service allow shake cover would.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(69, 'admin', 1, 'Product Brother 863', 'product-brother-863-pvb380', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=QX061CTv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.7331666666667, 0, '0.18333333333333', NULL, 'exclude', '45.12', 'amount', 290, 49, 'Of son rock drop scene list. Budget tonight risk mention. Yeah police pretty through.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(70, 'admin', 1, 'Product Reveal 443', 'product-reveal-443-l1zGYE', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Pm304fiq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.2621666666667, 0, '0.21666666666667', NULL, 'exclude', '6.91', 'percent', 137, 17, 'Street test your indicate main. Reveal join boy market ground student.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(71, 'admin', 1, 'Product Final 530', 'product-final-530-WVkeCl', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=jz540IkW', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.0941666666667, 0, '0.05', NULL, 'exclude', '0.7', 'amount', 184, 18, 'About claim beautiful present pay opportunity.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(72, 'admin', 1, 'Product From 294', 'product-from-294-bSmalw', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wC478tBm', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.0635, 0, '0.15', NULL, 'exclude', '3.23', 'percent', 479, 28, 'Here less for goal significant. Food however far song quite level.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(73, 'admin', 1, 'Product Perform 770', 'product-perform-770-NlhQTQ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nj226TMO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.2676666666667, 0, '0.23333333333333', NULL, 'exclude', '2.1', 'amount', 116, 40, 'So call national. Stop clearly form debate voice politics. Cultural feel lot.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(74, 'admin', 1, 'Product While 545', 'product-while-545-Pni4d0', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=jg438nbj', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.2393333333333, 0, '0.033333333333333', NULL, 'exclude', '38.05', 'percent', 407, 21, 'May fight administration understand.\nManagement us important.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `digital_file_ready_storage_type`, `images`, `color_image`, `thumbnail`, `thumbnail_storage_type`, `preview_file`, `preview_file_storage_type`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `digital_product_file_types`, `digital_product_extensions`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(75, 'admin', 1, 'Product Might 637', 'product-might-637-cvEOHw', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pW641URq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.1108333333333, 0, '0.25', NULL, 'exclude', '10.73', 'amount', 341, 14, 'Mission news eight marriage. Man stage agreement crime become. Card about person apply.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(76, 'admin', 1, 'Product Road 753', 'product-road-753-i4iZhV', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zg449tKV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.7353333333333, 0, '0.23333333333333', NULL, 'exclude', '36.18', 'amount', 252, 15, 'Institution member third change. By enough financial sort building because news.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(77, 'admin', 1, 'Product Month 813', 'product-month-813-MP0D0O', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cc686GdB', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.0368333333333, 0, '0.016666666666667', NULL, 'exclude', '19.12', 'amount', 325, 44, 'Fear strong section. Like fast break company.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(78, 'admin', 1, 'Product Federal 336', 'product-federal-336-F5Baeq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=QA475wBE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.4151666666667, 0, '0.16666666666667', NULL, 'exclude', '40.69', 'amount', 151, 45, 'Show treat class. Already major wonder other before want. Meeting stage over both above yourself.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(79, 'admin', 1, 'Product Beyond 789', 'product-beyond-789-GWp2YH', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=hE084wOW', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.21416666666667, 0, '0.2', NULL, 'exclude', '25.56', 'percent', 61, 40, 'Bit turn artist no program final. Out south agreement be million.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(80, 'admin', 1, 'Product Care 549', 'product-care-549-xT43uV', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Eg358Xxj', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.0533333333333, 0, '0.05', NULL, 'exclude', '23.38', 'percent', 389, 21, 'Seat get sell lay able into read. North weight what. Entire marriage agree before second rise.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(81, 'admin', 1, 'Product Total 450', 'product-total-450-MGO7pF', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kt146hBA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.264, 0, '0.083333333333333', NULL, 'exclude', '12.36', 'percent', 480, 30, 'Join between actually scientist get election. Hand kind assume.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(82, 'admin', 1, 'Product Public 22', 'product-public-22-teXc7D', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Tk424XGf', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.263, 0, '0.1', NULL, 'exclude', '39.88', 'amount', 18, 46, 'Leave use toward street name job. Building seem since program last specific.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(83, 'admin', 1, 'Product Production 134', 'product-production-134-RMUNTD', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ou580tRB', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.818, 0, '0.28333333333333', NULL, 'exclude', '26.66', 'amount', 265, 18, 'Move effect surface bill so note oil discover. Radio range these full.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(84, 'admin', 1, 'Product Window 930', 'product-window-930-apfuq9', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=LE624eLE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.19316666666667, 0, '0.21666666666667', NULL, 'exclude', '31.84', 'percent', 116, 47, 'Everything example town poor huge next design. Beyond drug practice wrong.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(85, 'admin', 1, 'Product Increase 442', 'product-increase-442-qF0ci2', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Zq669nkV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.438, 0, '0.016666666666667', NULL, 'exclude', '48.38', 'amount', 322, 11, 'Dog light toward player. Water general toward own. Ten player school along parent.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(86, 'admin', 1, 'Product Manager 202', 'product-manager-202-fQ2uAg', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=aV100ozC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.39083333333333, 0, '0.16666666666667', NULL, 'exclude', '32.07', 'percent', 272, 32, 'Radio detail off court. Reach drug try friend provide rather.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(87, 'admin', 1, 'Product Nature 320', 'product-nature-320-J0w57s', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Qs622cbF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.231, 0, '0.21666666666667', NULL, 'exclude', '23.56', 'percent', 356, 4, 'Receive beautiful section employee city activity six. Experience wide suggest ever nor everybody.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(88, 'admin', 1, 'Product Employee 333', 'product-employee-333-9zxnIp', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Xg937nIN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.0741666666667, 0, '0.3', NULL, 'exclude', '31.98', 'amount', 100, 16, 'Draw sort building defense bag dark.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(89, 'admin', 1, 'Product Big 873', 'product-big-873-LuXU6K', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AW567FiF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.3045, 0, '0.016666666666667', NULL, 'exclude', '42.4', 'percent', 268, 21, 'Young action door floor. Will tree sound light player.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(90, 'admin', 1, 'Product Director 962', 'product-director-962-dd2gIT', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Xc533UTb', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.6375, 0, '0.15', NULL, 'exclude', '39.62', 'percent', 151, 42, 'Step fly rise mouth. Quite evidence vote despite. Our light poor beyond another soon.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(91, 'admin', 1, 'Product These 290', 'product-these-290-vVZbzO', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AN205fpd', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.9015, 0, '0.1', NULL, 'exclude', '26.77', 'amount', 465, 2, 'Product PM these where responsibility save. Hot people beyond.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(92, 'admin', 1, 'Product Fact 33', 'product-fact-33-1QYbl1', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=hG000PXx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.56016666666667, 0, '0.15', NULL, 'exclude', '31.95', 'percent', 174, 21, 'Low five across price hot. In between buy. Animal toward class system citizen.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(93, 'admin', 1, 'Product Attack 170', 'product-attack-170-ikuMfy', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lY251GGe', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.9835, 0, '0.033333333333333', NULL, 'exclude', '12.65', 'percent', 26, 21, 'Course present buy. Player mother seat.\nAuthority enjoy pattern manager save.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(94, 'admin', 1, 'Product Loss 717', 'product-loss-717-Kd9B8N', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=UB933LtX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.4593333333333, 0, '0.13333333333333', NULL, 'exclude', '48.68', 'amount', 334, 2, 'Contain media enjoy total. Institution painting among own huge him section.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(95, 'admin', 1, 'Product World 372', 'product-world-372-61xz6X', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AI343aAf', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.7481666666667, 0, '0.18333333333333', NULL, 'exclude', '15.85', 'percent', 323, 37, 'Mean once specific mention.\nSecond bar base do your prepare. Audience worker increase front.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(96, 'admin', 1, 'Product Amount 881', 'product-amount-881-RgHYnh', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=jf638uSG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.4841666666667, 0, '0.16666666666667', NULL, 'exclude', '40.5', 'amount', 269, 8, 'Condition once expect miss. Likely firm against follow case here.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(97, 'admin', 1, 'Product Factor 313', 'product-factor-313-zdbhki', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=hQ538TJG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.0175, 0, '0.1', NULL, 'exclude', '21.05', 'percent', 228, 6, 'Prepare himself baby organization hundred.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(98, 'admin', 1, 'Product Region 430', 'product-region-430-Uo91lm', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ja716OcQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.5778333333333, 0, '0.1', NULL, 'exclude', '44.06', 'percent', 481, 47, 'Forward big player forward. Morning outside road site yourself southern consumer effect.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(99, 'admin', 1, 'Product Me 286', 'product-me-286-5Ex99d', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=mL525koC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.0211666666667, 0, '0.033333333333333', NULL, 'exclude', '9.68', 'amount', 261, 43, 'Out per heart draw food believe guess. Rock child together past financial fly.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(100, 'admin', 1, 'Product Religious 15', 'product-religious-15-awTL1e', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=GT254umb', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.445, 0, '0.15', NULL, 'exclude', '31.14', 'amount', 99, 18, 'Value social statement quality. Hear argue discussion peace.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(101, 'admin', 1, 'Product Part 283', 'product-part-283-kigG8U', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Vv122SCG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.2121666666667, 0, '0', NULL, 'exclude', '14.86', 'amount', 257, 8, 'Let song institution several guess amount. Develop drug common guy.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(102, 'admin', 1, 'Product It 122', 'product-it-122-CIheYa', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=sl307fXx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.8253333333333, 0, '0.25', NULL, 'exclude', '43.93', 'percent', 62, 2, 'Candidate husband friend indicate start.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(103, 'admin', 1, 'Product Full 754', 'product-full-754-S3flbp', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ne842obH', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.9331666666667, 0, '0.26666666666667', NULL, 'exclude', '37.19', 'percent', 217, 29, 'Brother cold cut arrive long report. President film race affect north ago large.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(104, 'admin', 1, 'Product Identify 20', 'product-identify-20-mOyUue', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=hz987VIE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.7603333333333, 0, '0.23333333333333', NULL, 'exclude', '29.53', 'percent', 186, 4, 'Compare guess particularly word everything loss degree. Certain place report office.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(105, 'admin', 1, 'Product Model 699', 'product-model-699-7t2emF', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AU230eWA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.7041666666667, 0, '0.1', NULL, 'exclude', '28.36', 'percent', 444, 26, 'Lose situation improve its. Lose enough figure pull.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(106, 'admin', 1, 'Product Theory 524', 'product-theory-524-IoG968', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=De508dNU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.4868333333333, 0, '0.1', NULL, 'exclude', '3.06', 'percent', 437, 34, 'News sort deep drive peace. East general large community.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(107, 'admin', 1, 'Product By 162', 'product-by-162-G2fKvf', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=jJ674WZv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.9808333333333, 0, '0.05', NULL, 'exclude', '25.22', 'amount', 497, 45, 'Reason improve everybody produce later as. Campaign word night office including somebody share.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(108, 'admin', 1, 'Product Short 404', 'product-short-404-gsnWfO', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fe818jSh', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.6731666666667, 0, '0.083333333333333', NULL, 'exclude', '29.63', 'amount', 18, 2, 'Most and officer hit line our.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(109, 'admin', 1, 'Product Thus 855', 'product-thus-855-NoVEpI', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zR119epV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.47583333333333, 0, '0.1', NULL, 'exclude', '17.39', 'amount', 321, 47, 'Issue line tree despite page them. Former treatment sport work voice. Left expert shake reduce.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(110, 'admin', 1, 'Product Cup 202', 'product-cup-202-FMBvdl', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=DX272DpK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.759, 0, '0.28333333333333', NULL, 'exclude', '30.28', 'percent', 213, 40, 'First movement read final.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(111, 'admin', 1, 'Product Go 739', 'product-go-739-ctSoEd', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=IR955ECZ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.1645, 0, '0.05', NULL, 'exclude', '16.24', 'amount', 191, 2, 'Too large traditional cultural remain. You material low.\nMake light build by hard.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(112, 'admin', 1, 'Product Trip 108', 'product-trip-108-ik3xZV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wm148Ach', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.0741666666667, 0, '0.26666666666667', NULL, 'exclude', '13.88', 'percent', 54, 28, 'Same opportunity option political full once. Themselves common set instead exist not nearly put.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(113, 'admin', 1, 'Product Weight 267', 'product-weight-267-phq5gT', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pA939ljM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.54133333333333, 0, '0.1', NULL, 'exclude', '49.56', 'amount', 479, 24, 'Look whole suggest follow lawyer although. Big value truth painting project security control.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(114, 'admin', 1, 'Product Energy 471', 'product-energy-471-p32ty0', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fN687ePu', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.8316666666667, 0, '0.11666666666667', NULL, 'exclude', '9.83', 'percent', 370, 20, 'Reduce magazine group when scientist win. Town dream seven why change.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(115, 'admin', 1, 'Product Middle 522', 'product-middle-522-0UOB5f', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=eK895UCv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.5176666666667, 0, '0.033333333333333', NULL, 'exclude', '39.15', 'amount', 131, 26, 'Operation develop hold hold protect him blue. Believe between program keep senior talk.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(116, 'admin', 1, 'Product History 732', 'product-history-732-SAVMmQ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fV165lDT', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.363, 0, '0.066666666666667', NULL, 'exclude', '9.39', 'percent', 77, 27, 'From picture year success before.\nWonder human central international thought.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(117, 'admin', 1, 'Product Certainly 669', 'product-certainly-669-5ydy82', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Sl439KgF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.0138333333333, 0, '0.2', NULL, 'exclude', '19.78', 'amount', 140, 24, 'Throughout tough ok wind six start. Job single agreement spend inside evening.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(118, 'admin', 1, 'Product Head 819', 'product-head-819-IolRZN', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=dI840AlJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.5438333333333, 0, '0.1', NULL, 'exclude', '14.89', 'amount', 71, 22, 'Continue than wife piece notice but adult.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(119, 'admin', 1, 'Product Tv 670', 'product-tv-670-PUFQIP', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=dA230XAU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.9288333333333, 0, '0.21666666666667', NULL, 'exclude', '9.06', 'percent', 154, 44, 'Among group four find case land decide nothing. Effect rise guy step.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(120, 'admin', 1, 'Product I 251', 'product-i-251-6Cu37n', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=mj709AxW', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.59733333333333, 0, '0.066666666666667', NULL, 'exclude', '7.21', 'percent', 220, 36, 'Surface machine rate quickly tonight fly. Thing after operation own.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(121, 'admin', 1, 'Product Put 385', 'product-put-385-4BWZaF', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Kx414SST', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.3736666666667, 0, '0.033333333333333', NULL, 'exclude', '44.02', 'percent', 469, 20, 'Yeah population front college camera hot. Nothing class back share.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(122, 'admin', 1, 'Product Serve 567', 'product-serve-567-aiFCvl', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ou999wLY', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.32116666666667, 0, '0.15', NULL, 'exclude', '47.29', 'percent', 35, 23, 'Foot wait expert late upon trip method. It society religious bank site himself too.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(123, 'admin', 1, 'Product Popular 105', 'product-popular-105-u4rfRF', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Sq489qDU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.2475, 0, '0.18333333333333', NULL, 'exclude', '41.35', 'amount', 460, 46, 'Toward center land cause. Room price trade. Car side voice carry write.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(124, 'admin', 1, 'Product Serious 558', 'product-serious-558-I0NrW8', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=gH867VhT', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.0031666666667, 0, '0.3', NULL, 'exclude', '32.2', 'percent', 317, 31, 'Exist benefit hope ground current young capital interest. Just black call truth.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(125, 'admin', 1, 'Product Huge 871', 'product-huge-871-V8GzVN', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ht910Qvy', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.6868333333333, 0, '0.15', NULL, 'exclude', '27.2', 'percent', 352, 13, 'Feel or move friend either couple. Have resource scientist sea open.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(126, 'admin', 1, 'Product Require 849', 'product-require-849-5Rm4ac', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=rz898Opg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.7021666666667, 0, '0.21666666666667', NULL, 'exclude', '9.62', 'percent', 20, 30, 'Contain those hour issue. Car foot control see.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(127, 'admin', 1, 'Product Simple 914', 'product-simple-914-e7qBmG', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=vY045MuT', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.1833333333333, 0, '0.11666666666667', NULL, 'exclude', '28.53', 'amount', 224, 31, 'Spend when moment. Day mean win owner six none. Third serve security school.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(128, 'admin', 1, 'Product Television 640', 'product-television-640-lfwId7', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ny216NpJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.2755, 0, '0.2', NULL, 'exclude', '3.34', 'percent', 417, 15, 'Down none leave tend bar. Hope should present way identify how recently.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(129, 'admin', 1, 'Product Mind 482', 'product-mind-482-xctMpg', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=en771PtI', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.5511666666667, 0, '0.26666666666667', NULL, 'exclude', '48.21', 'percent', 253, 14, 'Lead middle guy political indeed defense. Red visit on amount much.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(130, 'admin', 1, 'Product Husband 294', 'product-husband-294-ubRlOM', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=bA536zuq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.2033333333333, 0, '0.18333333333333', NULL, 'exclude', '11.02', 'amount', 97, 4, 'Ago note resource tough.\nIn black turn fly until. Operation property we city. Race west cause to.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(131, 'admin', 1, 'Product Life 711', 'product-life-711-44AnG5', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=CW004rHW', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.4336666666667, 0, '0.21666666666667', NULL, 'exclude', '18.8', 'percent', 473, 14, 'Ask kid them floor. Catch visit day ever score.\nYard affect beyond fear. Off letter page group.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(132, 'admin', 1, 'Product Long 728', 'product-long-728-g10AFU', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=xh847fqr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.71, 0, '0.28333333333333', NULL, 'exclude', '23.96', 'percent', 152, 22, 'Bank vote listen. Show want role try free industry.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(133, 'admin', 1, 'Product Say 539', 'product-say-539-20Z9PI', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=QR400fmw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.2645, 0, '0.016666666666667', NULL, 'exclude', '14.69', 'percent', 303, 1, 'Indeed position another laugh condition get thought. Sometimes item test last.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(134, 'admin', 1, 'Product Be 263', 'product-be-263-7GPffJ', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kr225wFU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.4021666666667, 0, '0.18333333333333', NULL, 'exclude', '36.95', 'amount', 367, 21, 'Head else start candidate. Pressure election shake foreign.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(135, 'admin', 1, 'Product Sit 987', 'product-sit-987-bJE0oJ', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=XI864ksB', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.3058333333333, 0, '0.2', NULL, 'exclude', '29.51', 'percent', 66, 21, 'Anyone system attack toward person. Sense improve mind.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(136, 'admin', 1, 'Product Movie 425', 'product-movie-425-nZEPbV', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=DY863ybk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.3865, 0, '0.28333333333333', NULL, 'exclude', '15.18', 'amount', 462, 37, 'Father explain nor. Feeling easy because response.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(137, 'admin', 1, 'Product Recognize 787', 'product-recognize-787-ElYUKz', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=MS225ueq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.2913333333333, 0, '0.066666666666667', NULL, 'exclude', '33.84', 'percent', 122, 17, 'If no move style.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(138, 'admin', 1, 'Product Party 604', 'product-party-604-afxGd1', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cY261TuN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.84, 0, '0', NULL, 'exclude', '39.6', 'amount', 408, 4, 'Impact drug before. Shoulder strong must which who pretty.\nLocal trouble show wonder.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(139, 'admin', 1, 'Product Quality 430', 'product-quality-430-uQGuOO', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=mO927FoS', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.8988333333333, 0, '0', NULL, 'exclude', '5.76', 'percent', 295, 13, 'Coach several dark second main raise back light. Specific left reality company sell.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(140, 'admin', 1, 'Product Law 450', 'product-law-450-jNmf9g', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=qu899UIa', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.7846666666667, 0, '0.23333333333333', NULL, 'exclude', '15.91', 'amount', 208, 13, 'Seem church view political design letter machine mission. Day door doctor control notice increase.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(141, 'admin', 1, 'Product Wear 120', 'product-wear-120-Tcq4hJ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ja981IJa', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.243, 0, '0.3', NULL, 'exclude', '6.22', 'amount', 256, 47, 'Risk any all star check turn to. Increase enjoy fish place.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(142, 'admin', 1, 'Product Level 946', 'product-level-946-WOa5HX', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Sa408GhJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.9483333333333, 0, '0.15', NULL, 'exclude', '36.73', 'percent', 398, 41, 'Outside summer few keep either visit perform popular. Choice set I attorney once old sea.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(143, 'admin', 1, 'Product Very 336', 'product-very-336-W8l71h', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=CC902des', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.0603333333333, 0, '0.28333333333333', NULL, 'exclude', '0.11', 'percent', 61, 34, 'Religious age I. Song third common threat. Change country scene oil building perhaps.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(144, 'admin', 1, 'Product Finally 913', 'product-finally-913-vSM2lO', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fJ324gZq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.9438333333333, 0, '0.13333333333333', NULL, 'exclude', '29.42', 'percent', 305, 15, 'Cut service responsibility effort friend. Last explain total who opportunity five success plan.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(145, 'admin', 1, 'Product Daughter 723', 'product-daughter-723-Ef5wPB', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=bj534CtF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.1986666666667, 0, '0.28333333333333', NULL, 'exclude', '4.99', 'amount', 335, 18, 'Threat term firm who detail different. There can enjoy player good.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(146, 'admin', 1, 'Product Table 459', 'product-table-459-jVhXNk', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=rp070sud', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.9316666666667, 0, '0.23333333333333', NULL, 'exclude', '49.86', 'amount', 306, 37, 'Risk road interesting movie near best. Fast born coach stay. Clear Congress former eye.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(147, 'admin', 1, 'Product Common 654', 'product-common-654-56E4wT', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ZE967YGG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.7645, 0, '0.25', NULL, 'exclude', '5.81', 'percent', 61, 22, 'Serve hour effect agency price. Adult final behavior. Together less section piece.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(148, 'admin', 1, 'Product Without 573', 'product-without-573-cPrEKw', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Gn282cNJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.0495, 0, '0.28333333333333', NULL, 'exclude', '26.49', 'percent', 409, 43, 'Argue sell pretty cost data. Half manage city.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(149, 'admin', 1, 'Product Fill 230', 'product-fill-230-dLO2RF', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=oB263BgO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.558, 0, '0.16666666666667', NULL, 'exclude', '40.17', 'percent', 198, 11, 'Night movement lot. Participant officer strategy evening work wear toward.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(150, 'admin', 1, 'Product Know 451', 'product-know-451-xFcJlS', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ar010TMM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.2051666666667, 0, '0.13333333333333', NULL, 'exclude', '39.46', 'amount', 381, 38, 'Discussion dinner stuff. Development employee individual on director back.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `digital_file_ready_storage_type`, `images`, `color_image`, `thumbnail`, `thumbnail_storage_type`, `preview_file`, `preview_file_storage_type`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `digital_product_file_types`, `digital_product_extensions`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(151, 'admin', 1, 'Product Everybody 163', 'product-everybody-163-42Zvj5', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Xo667miB', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.63066666666667, 0, '0.1', NULL, 'exclude', '17.35', 'amount', 378, 15, 'Positive since let sit indicate.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(152, 'admin', 1, 'Product Write 86', 'product-write-86-R7PAuI', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=PL047Tkj', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.2486666666667, 0, '0.033333333333333', NULL, 'exclude', '44.74', 'amount', 81, 50, 'Something right begin American type office both. Or during foot degree.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(153, 'admin', 1, 'Product Call 805', 'product-call-805-628Sa7', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fb250qbJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.3896666666667, 0, '0.13333333333333', NULL, 'exclude', '44.01', 'amount', 81, 34, 'Place production occur TV by institution hundred see.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(154, 'admin', 1, 'Product Ground 765', 'product-ground-765-NnGVV7', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=VK036CPx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.4511666666667, 0, '0.1', NULL, 'exclude', '19.1', 'amount', 89, 38, 'Admit stuff physical same hand everything. Recognize south dinner mission medical cost magazine.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(155, 'admin', 1, 'Product Marriage 726', 'product-marriage-726-L2hLAv', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=aO016TUU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.8515, 0, '0.066666666666667', NULL, 'exclude', '14.64', 'amount', 282, 49, 'Seem company many else. Figure care coach skin performance skin.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(156, 'admin', 1, 'Product Minute 605', 'product-minute-605-687ov8', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Me158QnZ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.0153333333333, 0, '0.13333333333333', NULL, 'exclude', '12.99', 'amount', 137, 33, 'Whose less system always test ask. Change catch name guess.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(157, 'admin', 1, 'Product Strategy 664', 'product-strategy-664-MI52PO', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TT230Gbn', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.8365, 0, '0.1', NULL, 'exclude', '8.93', 'percent', 256, 6, 'Small lot college. Drop executive during none program movement.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(158, 'admin', 1, 'Product Create 630', 'product-create-630-SPJXuW', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Dy943eXu', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.2523333333333, 0, '0.2', NULL, 'exclude', '21.89', 'percent', 430, 29, 'Food type picture short little at happy collection. Plant blue drop little.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(159, 'admin', 1, 'Product Door 529', 'product-door-529-knHHNP', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Yt238DHi', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.3018333333333, 0, '0.016666666666667', NULL, 'exclude', '37.31', 'amount', 242, 42, 'Safe party north often position nor almost.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(160, 'admin', 1, 'Product Hear 312', 'product-hear-312-K1o0gC', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=oV977Rrm', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.6476666666667, 0, '0.016666666666667', NULL, 'exclude', '23.74', 'amount', 481, 43, 'They individual early. Where today fast each. Miss everything meet central.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(161, 'admin', 1, 'Product Money 202', 'product-money-202-RYK6Cb', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Lc476ZFS', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.7486666666667, 0, '0.2', NULL, 'exclude', '25.61', 'amount', 69, 25, 'Beautiful nice painting responsibility thus player. Response business vote production add.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(162, 'admin', 1, 'Product Smile 479', 'product-smile-479-aNHayv', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AE929rfZ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.3223333333333, 0, '0.2', NULL, 'exclude', '5.54', 'amount', 362, 31, 'One audience war visit write free.\nThird over agency. Give include forward very.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(163, 'admin', 1, 'Product Yet 710', 'product-yet-710-tnjDoj', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Hx673alQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.669, 0, '0.033333333333333', NULL, 'exclude', '40.19', 'amount', 219, 20, 'Within mouth learn phone hour possible record. Ok at once sell particular through least.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(164, 'admin', 1, 'Product With 603', 'product-with-603-13ToZ8', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=WK652sRz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.0095, 0, '0.26666666666667', NULL, 'exclude', '10.5', 'percent', 495, 7, 'Defense scene whose seek agency two. Society let seem young recently.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(165, 'admin', 1, 'Product Get 365', 'product-get-365-TS0ibe', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=sw783fOh', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.3635, 0, '0.083333333333333', NULL, 'exclude', '36.32', 'amount', 19, 8, 'Item each responsibility Congress brother or act. Agency series newspaper main exactly quite unit.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(166, 'admin', 1, 'Product To 725', 'product-to-725-hCguPv', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=UB268bnL', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.9786666666667, 0, '0.15', NULL, 'exclude', '22.57', 'percent', 457, 46, 'Statement difficult until play success less single. Season evidence machine.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(167, 'admin', 1, 'Product South 420', 'product-south-420-aibNGW', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ua885tci', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.97, 0, '0.21666666666667', NULL, 'exclude', '5.95', 'amount', 219, 1, 'National interview sister machine would woman food leg. One woman management every.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(168, 'admin', 1, 'Product Site 630', 'product-site-630-xcL9Kv', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Zf158FIC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.5403333333333, 0, '0.25', NULL, 'exclude', '14.16', 'percent', 238, 38, 'Data no window. Bring poor practice serious through choice. Tree fight stand yard goal that.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(169, 'admin', 1, 'Product Man 228', 'product-man-228-dsMC94', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=XI681XQe', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.7668333333333, 0, '0.23333333333333', NULL, 'exclude', '43.84', 'percent', 131, 4, 'Yard describe system analysis go century. Ball remain away page at certainly.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:54', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(170, 'admin', 1, 'Product Friend 195', 'product-friend-195-byQfPV', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ln841HNy', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 8.1471666666667, 0, '0.23333333333333', NULL, 'exclude', '20.15', 'percent', 439, 40, 'Age gas you small candidate call gun foot.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(171, 'admin', 1, 'Product Way 781', 'product-way-781-yLUi6n', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=dU257TNC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.2583333333333, 0, '0.3', NULL, 'exclude', '19.37', 'percent', 268, 46, 'Prevent ok adult particular property. Guy phone social guy find. Everybody traditional operation.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:51', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(172, 'admin', 1, 'Product Off 835', 'product-off-835-bMMSAc', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=YP049GBv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.4623333333333, 0, '0.066666666666667', NULL, 'exclude', '48.28', 'amount', 187, 22, 'Town event short open. When hard factor process computer.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(173, 'admin', 1, 'Product Radio 381', 'product-radio-381-XGG2Qn', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=He459OgK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.48783333333333, 0, '0.13333333333333', NULL, 'exclude', '31.46', 'percent', 334, 45, 'Song doctor among rule dog above no. And good more. Leader onto western church fear.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:52', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(174, 'admin', 1, 'Product Issue 884', 'product-issue-884-dUxXZZ', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Dh090LZF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.3645, 0, '0.25', NULL, 'exclude', '39.02', 'amount', 212, 35, 'Result free win. Court discover response service. Maybe early anything moment give recent dinner.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(175, 'admin', 1, 'Product Best 244', 'product-best-244-yUtOyG', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Uu539uCl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.0985, 0, '0.26666666666667', NULL, 'exclude', '42.15', 'amount', 500, 44, 'Lay focus industry admit. Threat green course close dream. Image break mind trial himself.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(176, 'admin', 1, 'Product Hard 842', 'product-hard-842-lrWUvm', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ld672vJO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.221, 0, '0.26666666666667', NULL, 'exclude', '20.87', 'amount', 500, 39, 'Offer play off. Subject actually again beat paper class small man.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(177, 'admin', 1, 'Product Tonight 667', 'product-tonight-667-K4kuGV', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Uv518DEl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.0938333333333, 0, '0.1', NULL, 'exclude', '9.78', 'percent', 319, 46, 'Cause few around face inside little sit exist. Line brother their half not situation.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(178, 'admin', 1, 'Product She 77', 'product-she-77-pa7gW8', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ar033Jhe', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.7856666666667, 0, '0.16666666666667', NULL, 'exclude', '49.76', 'percent', 455, 50, 'Else him score effect despite nation.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(179, 'admin', 1, 'Product Stay 564', 'product-stay-564-vYCmRq', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=xZ840TBI', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.8436666666667, 0, '0.18333333333333', NULL, 'exclude', '23.15', 'amount', 117, 37, 'Adult east certainly less. Point lead agency yard memory rest room.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(180, 'admin', 1, 'Product Level 786', 'product-level-786-u2RG9g', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kP022JGj', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.4546666666667, 0, '0.15', NULL, 'exclude', '35.11', 'percent', 291, 37, 'Say purpose police amount loss medical pretty.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(181, 'admin', 1, 'Product Community 370', 'product-community-370-b12ccH', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Kw852aOC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.217, 0, '0.083333333333333', NULL, 'exclude', '37.89', 'percent', 442, 42, 'Just include success whole seek what body group. Plan prove both white body evening staff.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(182, 'admin', 1, 'Product Current 854', 'product-current-854-pasLL8', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Gb166GMr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.4505, 0, '0.15', NULL, 'exclude', '38.27', 'amount', 177, 41, 'Performance until late event. Ground news range. Last pass require win.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(183, 'admin', 1, 'Product Language 35', 'product-language-35-ye4dE2', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wk973mco', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.571, 0, '0', NULL, 'exclude', '17.38', 'percent', 372, 4, 'Time although them already suggest page not student. Reach either assume let later truth finish.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(184, 'admin', 1, 'Product Recognize 68', 'product-recognize-68-MAhfqQ', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=tb110dpS', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.0971666666667, 0, '0.21666666666667', NULL, 'exclude', '17.13', 'amount', 185, 12, 'Data finish increase discussion long.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:44', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(185, 'admin', 1, 'Product Which 387', 'product-which-387-2dzBJq', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=tt409fhh', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.92483333333333, 0, '0.033333333333333', NULL, 'exclude', '19.47', 'percent', 12, 30, 'Lead news voice during bit. Record point least thought race modern.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:39', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(186, 'admin', 1, 'Product Turn 124', 'product-turn-124-A0UkeK', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=sO094LtH', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.5791666666667, 0, '0.21666666666667', NULL, 'exclude', '47.99', 'amount', 61, 7, 'Information pick town expert me seven I even. Check easy wonder almost. Purpose quite military.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:37', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(187, 'admin', 1, 'Product Skin 64', 'product-skin-64-hnjbzh', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=Ve923Snt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 4.945, 0, '0.016666666666667', NULL, 'exclude', '28.56', 'percent', 379, 30, 'Yeah rich air into travel series. Performance military different space.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:36', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(188, 'admin', 1, 'Product Agent 670', 'product-agent-670-H9k3om', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Rl073DYb', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.3028333333333, 0, '0.083333333333333', NULL, 'exclude', '38.61', 'amount', 162, 44, 'Budget clear since support much scientist agree identify.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(189, 'admin', 1, 'Product Toward 409', 'product-toward-409-zkXR1U', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=fm918hMB', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 2.3915, 0, '0', NULL, 'exclude', '19.79', 'amount', 228, 36, 'Series company than dream manager share. Every memory test capital around consumer.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:31', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(190, 'admin', 1, 'Product Family 787', 'product-family-787-c4goyW', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=bE555qFd', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.3861666666667, 0, '0.23333333333333', NULL, 'exclude', '45.25', 'amount', 38, 21, 'Two television nearly scene I place. Director blue safe between. Another international same effect.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(191, 'admin', 1, 'Product Lose 189', 'product-lose-189-tbakTi', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=lx975fWl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.8308333333333, 0, '0.16666666666667', NULL, 'exclude', '15.17', 'percent', 207, 46, 'Whether cell line performance certainly loss.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:30', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(192, 'admin', 1, 'Product Everything 287', 'product-everything-287-I8OVjn', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=DZ278Gjz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.3475, 0, '0.23333333333333', NULL, 'exclude', '18.28', 'amount', 208, 39, 'Hundred he sport over artist ground. Happen member per worker.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:28', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(193, 'admin', 1, 'Product Where 851', 'product-where-851-4DMv3b', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=JX911aTI', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.0941666666667, 0, '0.25', NULL, 'exclude', '46.36', 'percent', 359, 20, 'As especially direction goal. Occur water court issue price. Step agent task hear.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:26', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(194, 'admin', 1, 'Product News 656', 'product-news-656-BgvWWi', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Qn137zQP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.2661666666667, 0, '0.3', NULL, 'exclude', '39.13', 'percent', 103, 6, 'Boy anyone service heavy all budget. Thank experience eye choose cause building shoulder.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(195, 'admin', 1, 'Product Item 752', 'product-item-752-l3QoF3', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=JI132xSY', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1.6881666666667, 0, '0.066666666666667', NULL, 'exclude', '44.48', 'amount', 82, 19, 'Plan his wear manager.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(196, 'admin', 1, 'Product Ten 846', 'product-ten-846-gnKFiL', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fr345zDX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 7.626, 0, '0.25', NULL, 'exclude', '16.55', 'amount', 110, 21, 'Along institution opportunity foot hope attorney art here. Investment throw feel product.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(197, 'admin', 1, 'Product Pattern 817', 'product-pattern-817-mhxz8m', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=BC327for', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 6.98, 0, '0.25', NULL, 'exclude', '13.27', 'amount', 211, 33, 'Pm next data American drug. Face be interview month challenge central let different.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(198, 'admin', 1, 'Product Wide 129', 'product-wide-129-UgCigS', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wR702ylV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 0.51916666666667, 0, '0', NULL, 'exclude', '8.37', 'amount', 173, 39, 'Send face social affect. Effect benefit sister each pretty worry detail know.', 0, NULL, '2025-07-19 06:14:23', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(199, 'admin', 1, 'Product Free 123', 'product-free-123-Cz2K9h', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=mu770RRL', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 3.013, 0, '0.3', NULL, 'exclude', '21.25', 'percent', 66, 29, 'Stop actually fall across. Beat crime wear any discuss structure determine.', 0, NULL, '2025-07-19 06:14:23', '2025-07-19 06:15:19', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(200, 'admin', 1, 'Product Hotel 181', 'product-hotel-181-KyPIFa', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=Qo364XEM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 5.7423333333333, 0, '0.21666666666667', NULL, 'exclude', '4.21', 'percent', 153, 3, 'Reflect billion east outside finally. Take friend television lead quite recently man.', 0, NULL, '2025-07-19 06:14:23', '2025-08-05 05:24:39', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(201, 'admin', 1, 'Product Training 971', 'product-training-971-yiazn9', 'physical', '[{\"id\":\"3\",\"position\":1}]', '3', NULL, NULL, 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '[]', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=BG516PDB', '[]', 0, 'null', '[]', '[]', '[]', '[]', 0, 1.0665, 0, '0.16666666666667', 'percent', 'exclude', '0.64666666666667', 'flat', 0, 35, 'Social red explain public modern argue health employee. May peace rest.', 0, NULL, '2025-07-19 06:14:23', '2025-07-22 07:57:49', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, '06YN5U'),
(202, 'admin', 1, 'Product Remain 829', 'product-remain-829-v6KmXL', 'physical', '[{\"id\":\"2\",\"position\":1}]', '2', NULL, NULL, 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\",{\"image_name\":\"2025-07-26-688454f391427.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-07-26-688454f3c4239.webp\",\"storage\":\"public\"},{\"image_name\":\"def.png\",\"storage\":\"public\"}]', '[{\"color\":\"FFFF00\",\"image_name\":\"2025-07-26-688454f391427.webp\",\"storage\":\"public\"},{\"color\":\"F5F5F5\",\"image_name\":\"2025-07-26-688454f3c4239.webp\",\"storage\":\"public\"},{\"color\":null,\"image_name\":\"def.png\",\"storage\":\"public\"}]', '', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=qf015cvB', '[\"#FFFF00\",\"#F5F5F5\"]', 0, '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"S\",\"L\"]}]', '[{\"type\":\"Yellow-S\",\"price\":5.303166666666667,\"sku\":\"PR8-Yellow-S\",\"qty\":100},{\"type\":\"Yellow-L\",\"price\":5.303166666666667,\"sku\":\"PR8-Yellow-L\",\"qty\":100},{\"type\":\"WhiteSmoke-S\",\"price\":5.303166666666667,\"sku\":\"PR8-WhiteSmoke-S\",\"qty\":100},{\"type\":\"WhiteSmoke-L\",\"price\":5.303166666666667,\"sku\":\"PR8-WhiteSmoke-L\",\"qty\":100}]', '[]', '[]', 0, 5.3031666666667, 0, '0.05', 'percent', 'exclude', '0.77016666666667', 'flat', 400, 31, 'Pick class same research tell increase. Charge order bag join country. Human that fire among task.', 0, NULL, '2025-07-19 06:14:23', '2025-07-26 04:11:06', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, '1UVAV7'),
(203, 'admin', 1, 'Product Number 261', 'product-number-261-bBA0tl', 'physical', '[{\"id\":\"3\",\"position\":1}]', '3', NULL, NULL, 3, 'pc', 1, 0, NULL, NULL, 'public', '[{\"image_name\":\"2025-07-21-687dd2c708c1c.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-07-21-687dd2c723f47.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-07-21-687dd2c72c4af.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-07-22-687f5cedd9437.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-07-22-687f5cedf259d.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-07-22-687f5cee0453d.webp\",\"storage\":\"public\"}]', '[{\"color\":\"9ACD32\",\"image_name\":\"2025-07-22-687f5cedd9437.webp\",\"storage\":\"public\"},{\"color\":\"FFFF00\",\"image_name\":\"2025-07-22-687f5cedf259d.webp\",\"storage\":\"public\"},{\"color\":\"F5F5F5\",\"image_name\":\"2025-07-22-687f5cee0453d.webp\",\"storage\":\"public\"},{\"color\":null,\"image_name\":\"2025-07-21-687dd2c708c1c.webp\",\"storage\":\"public\"},{\"color\":null,\"image_name\":\"2025-07-21-687dd2c723f47.webp\",\"storage\":\"public\"},{\"color\":null,\"image_name\":\"2025-07-21-687dd2c72c4af.webp\",\"storage\":\"public\"}]', '2025-07-21-687e0ff1d36bf.webp', 'public', NULL, 'public', '1', NULL, 'youtube', 'https://www.youtube.com/watch?v=xs604Hey', '[\"#9ACD32\",\"#FFFF00\",\"#F5F5F5\"]', 0, '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Size\",\"options\":[\"M\",\"L\",\"XL\"]}]', '[{\"type\":\"YellowGreen-M\",\"price\":2.744333333333333,\"sku\":\"PN2-YellowGreen-M\",\"qty\":0},{\"type\":\"YellowGreen-L\",\"price\":2.744333333333333,\"sku\":\"PN2-YellowGreen-L\",\"qty\":0},{\"type\":\"YellowGreen-XL\",\"price\":2.744333333333333,\"sku\":\"PN2-YellowGreen-XL\",\"qty\":0},{\"type\":\"Yellow-M\",\"price\":2.744333333333333,\"sku\":\"PN2-Yellow-M\",\"qty\":0},{\"type\":\"Yellow-L\",\"price\":2.744333333333333,\"sku\":\"PN2-Yellow-L\",\"qty\":0},{\"type\":\"Yellow-XL\",\"price\":2.744333333333333,\"sku\":\"PN2-Yellow-XL\",\"qty\":0},{\"type\":\"WhiteSmoke-M\",\"price\":2.744333333333333,\"sku\":\"PN2-WhiteSmoke-M\",\"qty\":0},{\"type\":\"WhiteSmoke-L\",\"price\":2.744333333333333,\"sku\":\"PN2-WhiteSmoke-L\",\"qty\":0},{\"type\":\"WhiteSmoke-XL\",\"price\":2.744333333333333,\"sku\":\"PN2-WhiteSmoke-XL\",\"qty\":0}]', '[]', '[]', 0, 2.7443333333333, 0, '0.15', 'percent', 'exclude', '20.13', 'percent', 0, 44, 'Soldier forget whom ask other music clearly. Else during public difficult home when follow during.', 0, NULL, '2025-07-19 06:14:23', '2025-07-22 09:42:06', 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, 'WO2UEV'),
(204, 'admin', 1, 'Wipro Smart LED', 'wipro-smart-led-qqvy9R', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Hr144rLm', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 71.077333333333, 0, '0.083333333333333', NULL, 'exclude', '0.15', 'percent', 24, 7, 'Instead control themselves group. Prove head network decide world free wife.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(205, 'admin', 1, 'Logitech MX Master 3', 'logitech-mx-master-3-I8hBwm', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=iF456BYI', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 58.707166666667, 0, '0.083333333333333', NULL, 'exclude', '23.98', 'amount', 14, 8, 'Civil consumer mind place line.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(206, 'admin', 1, 'Bosch 655L Fridge', 'bosch-655l-fridge-3tvzN4', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=yf463ieA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 603.03116666667, 0, '0.13333333333333', NULL, 'exclude', '28.75', 'amount', 62, 10, 'Value mouth kind remain general attack myself. Rate they technology.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(207, 'admin', 1, 'Kingston 128GB USB 3.2', 'kingston-128gb-usb-32-aTiS5R', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=DN467dKR', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 277.12783333333, 0, '0.18333333333333', NULL, 'exclude', '15.45', 'amount', 11, 6, 'Figure third huge thing. Of within who war.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(208, 'admin', 1, 'GoPro Hero 11', 'gopro-hero-11-u9UU9w', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=mm557oex', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 636.82366666667, 0, '0.28333333333333', NULL, 'exclude', '4.87', 'amount', 14, 4, 'Size around with art whole. Effort involve hair marriage member within.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(209, 'admin', 1, 'Fire-Boltt Phoenix', 'fire-boltt-phoenix-wV7ay7', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=HS639IcO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 690.96983333333, 0, '0.3', NULL, 'exclude', '12.38', 'percent', 78, 1, 'Reach chance including visit clearly.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(210, 'admin', 1, 'JBL Bar 2.1 Soundbar', 'jbl-bar-21-soundbar-ZAXmIg', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=mQ894XNE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 533.129, 0, '0.25', NULL, 'exclude', '22.38', 'percent', 95, 2, 'Top quality produce baby school purpose detail. War southern organization.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(211, 'admin', 1, 'Dell Wireless Keyboard 17', 'dell-wireless-keyboard-17-MN7xxd', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ac426Dvp', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 461.48666666667, 0, '0.28333333333333', NULL, 'exclude', '13.67', 'percent', 64, 6, 'Both somebody on visit my future letter. How history list return before.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(212, 'admin', 1, 'Mi Smart Speaker', 'mi-smart-speaker-kSbsWU', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Fy734ijj', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 211.997, 0, '0.21666666666667', NULL, 'exclude', '12.19', 'percent', 65, 3, 'Foot morning condition wear past. Dream type town magazine.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(213, 'admin', 1, 'LG 32 Inch HD Ready', 'lg-32-inch-hd-ready-nrUPZ5', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=LU558svA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 493.50416666667, 0, '0.23333333333333', NULL, 'exclude', '27.6', 'percent', 98, 1, 'Item seat cold. National rich system able. Election strategy along support.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(214, 'admin', 1, 'Kent Water Purifier', 'kent-water-purifier-aneuoq', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ff354xEF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 379.60166666667, 0, '0.1', NULL, 'exclude', '5.08', 'amount', 29, 1, 'Morning suggest fire. Cost scene reality although require tax.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(215, 'admin', 1, 'Titan Smart Pro', 'titan-smart-pro-B18xJh', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=mg441ssU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 199.13283333333, 0, '0.26666666666667', NULL, 'exclude', '5.38', 'amount', 54, 5, 'Amount gun baby blue analysis structure similar.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(216, 'admin', 1, 'Apple Watch Series 9', 'apple-watch-series-9-MIzsev', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=UG226AJE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 97.163833333333, 0, '0.16666666666667', NULL, 'exclude', '23.63', 'amount', 87, 4, 'Soon task despite happy radio federal when. Truth would believe final.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(217, 'admin', 1, 'Google Nest Mini', 'google-nest-mini-dHJfan', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Js161EaL', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1001.275, 0, '0.3', NULL, 'exclude', '16.74', 'percent', 8, 2, 'Rate staff add million mouth can. Admit tend skill in.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(218, 'admin', 1, 'Tenda 4G Router', 'tenda-4g-router-fNg47O', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Nw353Xdp', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 194.43533333333, 0, '0.13333333333333', NULL, 'exclude', '12.18', 'amount', 79, 3, 'Eye door art individual today. Bag Democrat form raise.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(219, 'admin', 1, 'Realme Pad Slim', 'realme-pad-slim-8fAXU8', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=iS519BDY', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 522.874, 0, '0.3', NULL, 'exclude', '13.88', 'amount', 68, 5, 'Letter take may north. Just ground exist yard firm let mouth.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(220, 'admin', 1, 'Voltas 1.5 Ton AC', 'voltas-15-ton-ac-gqk9nM', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Uj465Amy', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1212.5403333333, 0, '0.3', NULL, 'exclude', '3.04', 'percent', 36, 6, 'Especially today air hope of although. Will value work operation project.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(221, 'admin', 1, 'Samsung Crystal UHD TV', 'samsung-crystal-uhd-tv-FCbXQJ', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fD433rhr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 603.3625, 0, '0.13333333333333', NULL, 'exclude', '8.89', 'percent', 52, 4, 'Theory plan sing live both. Their produce evening page fall beyond.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(222, 'admin', 1, 'Butterfly Gas Stove', 'butterfly-gas-stove-LQg0t9', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=XJ617sWJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 934.75383333333, 0, '0.23333333333333', NULL, 'exclude', '1.88', 'percent', 13, 3, 'Lead which various continue.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `digital_file_ready_storage_type`, `images`, `color_image`, `thumbnail`, `thumbnail_storage_type`, `preview_file`, `preview_file_storage_type`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `digital_product_file_types`, `digital_product_extensions`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(223, 'admin', 1, 'Motorola Edge 40', 'motorola-edge-40-W1XLRl', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=uv702vvy', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 146.37333333333, 0, '0.26666666666667', NULL, 'exclude', '10.76', 'percent', 64, 7, 'Stand me here. Drug involve also research billion.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(224, 'admin', 1, 'Acer Boundless TV', 'acer-boundless-tv-oLLksG', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nu559uST', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 831.73433333333, 0, '0.21666666666667', NULL, 'exclude', '23.08', 'amount', 43, 2, 'Put college question development less. Like far father.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(225, 'admin', 1, 'Lexar 128GB Memory Card', 'lexar-128gb-memory-card-CrMN64', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ha499KJs', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 331.42466666667, 0, '0.21666666666667', NULL, 'exclude', '28.25', 'amount', 73, 7, 'Bed exactly public art. High thing always son despite win strong.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(226, 'admin', 1, 'Samsung Galaxy Tab S8', 'samsung-galaxy-tab-s8-Q7BNVy', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=yN458SlV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 347.56233333333, 0, '0.28333333333333', NULL, 'exclude', '28.32', 'amount', 86, 7, 'Part source kid individual light wide. Concern firm whatever suddenly.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(227, 'admin', 1, 'LG Fully Auto 6.5kg 34', 'lg-fully-auto-65kg-34-pd90Hr', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TN653RsR', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 742.61733333333, 0, '0.28333333333333', NULL, 'exclude', '3.81', 'percent', 58, 6, 'Section us four daughter break. Choice commercial its first tend job.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(228, 'admin', 1, 'JBL Bar 2.1 Soundbar 2 57', 'jbl-bar-21-soundbar-2-57-h3nKAp', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Sp945QfD', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1248.865, 0, '0.26666666666667', NULL, 'exclude', '25.29', 'amount', 68, 3, 'Fish high or tough interesting issue government.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(229, 'admin', 1, 'Poco X5 Pro', 'poco-x5-pro-WcdWt4', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ku061tbA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 128.1045, 0, '0.3', NULL, 'exclude', '4.28', 'amount', 51, 4, 'Figure me hospital fast. Meet region surface position in by between.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(230, 'admin', 1, 'Dr Trust BP Monitor', 'dr-trust-bp-monitor-jQiJ2F', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ye738ZQE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 629.663, 0, '0.11666666666667', NULL, 'exclude', '1.63', 'amount', 59, 2, 'Party throw success teach him. Add score pay. Long teacher nation.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(231, 'admin', 1, 'Realme Narzo 60', 'realme-narzo-60-GyY62t', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wO501Ftf', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 813.38983333333, 0, '0.21666666666667', NULL, 'exclude', '8.51', 'percent', 8, 8, 'Particular however available develop involve. Different no room major report.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(232, 'admin', 1, 'ASUS Gaming Router', 'asus-gaming-router-mjHaZs', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nC244YCT', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 567.96283333333, 0, '0.1', NULL, 'exclude', '19.69', 'amount', 89, 4, 'Officer daughter security middle myself.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(233, 'admin', 1, 'Kent Rice Cooker', 'kent-rice-cooker-42LFqw', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=eI399asU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 543.67216666667, 0, '0.13333333333333', NULL, 'exclude', '18.18', 'percent', 92, 9, 'Bad fill factor American deep. Anyone his ten painting way mission.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(234, 'admin', 1, 'Lifelong Massager', 'lifelong-massager-7gCpP9', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zt179MzJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 364.12583333333, 0, '0.21666666666667', NULL, 'exclude', '26.36', 'amount', 23, 5, 'Window medical hundred shoulder. Include door your list.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(235, 'admin', 1, 'Dell Wireless Keyboard', 'dell-wireless-keyboard-UxaZTL', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=OP156Dtk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1154.6348333333, 0, '0.13333333333333', NULL, 'exclude', '26.94', 'percent', 44, 10, 'Hit available everyone budget. Success attack memory agree heavy education.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(236, 'admin', 1, 'Blue Star Air Cooler', 'blue-star-air-cooler-ejeJ2I', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Rq270pXJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 336.21266666667, 0, '0.3', NULL, 'exclude', '2.07', 'percent', 7, 7, 'Bit clearly have treatment bring. Administration new market follow.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(237, 'admin', 1, 'Lenovo IdeaPad Slim 5', 'lenovo-ideapad-slim-5-cI14aA', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=WT041Kmo', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 336.67766666667, 0, '0.083333333333333', NULL, 'exclude', '5.28', 'percent', 22, 9, 'Board give pick American economic. Color myself report customer.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(238, 'admin', 1, 'Sony Alpha Mirrorless Camera', 'sony-alpha-mirrorless-camera-ltzpIK', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=VZ359nBd', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 795.40983333333, 0, '0.18333333333333', NULL, 'exclude', '27.41', 'percent', 12, 8, 'Why study Congress chance.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(239, 'admin', 1, 'TP-Link Smart Plug', 'tp-link-smart-plug-ctHdAw', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=BG849gjn', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 993.23416666667, 0, '0.18333333333333', NULL, 'exclude', '6.36', 'amount', 7, 4, 'Attention tree argue itself wind trial item.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(240, 'admin', 1, 'Noise Buds VS104', 'noise-buds-vs104-TyeuxQ', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Bi424hEA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 61.053, 0, '0.083333333333333', NULL, 'exclude', '2.67', 'percent', 9, 3, 'Air military cup after. Happen organization name sell.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(241, 'admin', 1, 'Asus ROG Strix G16', 'asus-rog-strix-g16-Q63I8y', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=YA641AQw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 770.4615, 0, '0.21666666666667', NULL, 'exclude', '6.91', 'percent', 81, 9, 'Decision by from social accept seven they.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(242, 'admin', 1, 'Crucial X8 2TB SSD', 'crucial-x8-2tb-ssd-PIQaYH', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ev508HOx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 210.50283333333, 0, '0.11666666666667', NULL, 'exclude', '25.95', 'percent', 48, 10, 'Fly tough stop way necessary both firm.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(243, 'admin', 1, 'Pigeon Gas Stove', 'pigeon-gas-stove-tksCHW', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ui647Xri', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1084.7938333333, 0, '0.25', NULL, 'exclude', '16.04', 'percent', 48, 3, 'Cause guess candidate owner key hair. Talk nation character left.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(244, 'admin', 1, 'iPhone 13', 'iphone-13-jSBpyp', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=VS057mbF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1017.152, 0, '0.3', NULL, 'exclude', '9.02', 'amount', 71, 2, 'People hard involve field address experience chair.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(245, 'admin', 1, 'IFB Front Load Washer 66', 'ifb-front-load-washer-66-QRvFod', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Af803nRK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1227.5276666667, 0, '0.26666666666667', NULL, 'exclude', '6.52', 'amount', 71, 3, 'Individual fine particularly thousand front chair box.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(246, 'admin', 1, 'Prestige Electric Kettle', 'prestige-electric-kettle-6BQ7M1', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Wt601Jjo', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 218.97883333333, 0, '0.15', NULL, 'exclude', '24.25', 'amount', 37, 6, 'Pattern whether increase method spring.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(247, 'admin', 1, 'IFB Grill Oven 38', 'ifb-grill-oven-38-cmbFUG', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Yh972sWw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 880.69433333333, 0, '0.26666666666667', NULL, 'exclude', '28.52', 'amount', 58, 8, 'A when fly laugh yes. Approach race learn operation so key.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(248, 'admin', 1, 'Asus Vivobook 16 59', 'asus-vivobook-16-59-VW7JdO', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=vV398eFm', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1165.305, 0, '0.13333333333333', NULL, 'exclude', '9.86', 'amount', 28, 1, 'Season three family firm third young who.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(249, 'admin', 1, 'Realme 11 Pro+', 'realme-11-pro-GFYfgc', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Zh090jwF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 438.24216666667, 0, '0.2', NULL, 'exclude', '20.21', 'amount', 34, 5, 'Less strategy in market.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(250, 'admin', 1, 'Acer Aspire 5', 'acer-aspire-5-FIZLCR', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fj636kJg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 786.72083333333, 0, '0.1', NULL, 'exclude', '23.49', 'percent', 12, 4, 'Meet pick focus action discuss entire. Conference thought growth road.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(251, 'admin', 1, 'Samsung Galaxy Buds2', 'samsung-galaxy-buds2-y4Kxxo', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=IE244DMg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 321.10266666667, 0, '0.15', NULL, 'exclude', '0.19', 'percent', 34, 4, 'Force measure free meet right attention.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(252, 'admin', 1, 'LG 420L Side-by-Side Fridge 75', 'lg-420l-side-by-side-fridge-75-aVcBpE', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fJ502bRr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 225.45383333333, 0, '0.3', NULL, 'exclude', '22.25', 'percent', 79, 4, 'Technology any wrong bring.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(253, 'admin', 1, 'Panasonic 6kg Washer', 'panasonic-6kg-washer-TeXxLS', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Rp414rUB', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1240.7666666667, 0, '0.3', NULL, 'exclude', '6.33', 'amount', 38, 2, 'Return at begin certainly cause interview. Again hour wish eye.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(254, 'admin', 1, 'HP Pavilion 15', 'hp-pavilion-15-aAyZmy', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Wc224Wgq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 16.325333333333, 0, '0.26666666666667', NULL, 'exclude', '2.07', 'amount', 65, 7, 'Seek organization firm individual. Note too agree food other already.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(255, 'admin', 1, 'Lenovo Tab P12 Pro', 'lenovo-tab-p12-pro-2qHW2u', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Dr264pnu', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 160.5795, 0, '0.26666666666667', NULL, 'exclude', '9.39', 'percent', 85, 1, 'Receive collection state. At many build arm.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(256, 'admin', 1, 'boAt Airdopes 141', 'boat-airdopes-141-QSQ0Ln', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=MJ428IyM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 471.16333333333, 0, '0.16666666666667', NULL, 'exclude', '18.25', 'amount', 72, 5, 'Measure school make life particularly. Back production social open.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(257, 'admin', 1, 'Lenovo Tab P12 Pro 2', 'lenovo-tab-p12-pro-2-qN9SI5', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Nn806bdp', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1068.9473333333, 0, '0.25', NULL, 'exclude', '2.63', 'percent', 97, 6, 'Whose series between him think product. Admit difference approach indeed.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(258, 'admin', 1, 'Xiaomi Smart TV X', 'xiaomi-smart-tv-x-Jaq8bf', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AN536ugQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 749.8005, 0, '0.3', NULL, 'exclude', '3.06', 'amount', 51, 8, 'American a want us affect prevent near name. Its one reduce rich fill.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(259, 'admin', 1, 'Samsung Galaxy S23', 'samsung-galaxy-s23-5QAUi8', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=BB207ksX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 632.80333333333, 0, '0.15', NULL, 'exclude', '12.16', 'amount', 39, 7, 'Role always because everything security.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(260, 'admin', 1, 'Realme Pad Mini', 'realme-pad-mini-rAHk1U', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=HA682gML', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1152.703, 0, '0.18333333333333', NULL, 'exclude', '6.95', 'amount', 64, 1, 'Position side interest during always almost.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(261, 'admin', 1, 'Vega Curling Wand', 'vega-curling-wand-3fvkLx', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=PM710VjX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 547.54316666667, 0, '0.3', NULL, 'exclude', '2.39', 'percent', 33, 8, 'Friend man score water. Site building computer.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(262, 'admin', 1, 'Samsung Galaxy Watch 6', 'samsung-galaxy-watch-6-39VJWb', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=JU214pLX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1072.952, 0, '0.28333333333333', NULL, 'exclude', '27.98', 'percent', 81, 10, 'Trouble spring paper sense grow. Poor some season though.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(263, 'admin', 1, 'Insta360 X3', 'insta360-x3-88k0uD', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zR207YSD', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 320.4135, 0, '0.15', NULL, 'exclude', '21.04', 'amount', 37, 3, 'Tonight eye attorney body short place television admit.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(264, 'admin', 1, 'Daikin Inverter AC', 'daikin-inverter-ac-ZtdI8F', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wa620ogE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 452.261, 0, '0.25', NULL, 'exclude', '1.03', 'amount', 7, 7, 'Both determine worry run series news anything. House put move successful.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(265, 'admin', 1, 'LG 420L Side-by-Side Fridge', 'lg-420l-side-by-side-fridge-d6tyrf', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pM044djS', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 62.5305, 0, '0.25', NULL, 'exclude', '23.54', 'amount', 44, 1, 'Check hot employee though administration staff. Executive interesting pretty.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(266, 'admin', 1, 'JBL Charge 5 90', 'jbl-charge-5-90-iEUzMy', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=hN879SXg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1117.3461666667, 0, '0.18333333333333', NULL, 'exclude', '10.32', 'amount', 11, 2, 'Our dinner war. Rock administration paper specific accept customer follow.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(267, 'admin', 1, 'Prestige Induction Stove', 'prestige-induction-stove-osmkyy', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cv393Mxw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1212.0046666667, 0, '0.16666666666667', NULL, 'exclude', '24.86', 'amount', 52, 10, 'Watch one question dream company beautiful her.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(268, 'admin', 1, 'Ambrane Powerbank 20000mAh', 'ambrane-powerbank-20000mah-TrijOj', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Mh378iHG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 506.3675, 0, '0.21666666666667', NULL, 'exclude', '5.96', 'amount', 18, 3, 'Land professor world minute alone source industry our.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(269, 'admin', 1, 'LG 190L Single Door Refrigerator 11', 'lg-190l-single-door-refrigerator-11-LF285N', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pW030Dop', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 243.18283333333, 0, '0.2', NULL, 'exclude', '9.76', 'amount', 26, 4, 'Student pass week. Treatment color skin yes main politics newspaper.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(270, 'admin', 1, 'OnePlus Pad', 'oneplus-pad-dLCzSr', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Fv047DSm', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1124.4438333333, 0, '0.3', NULL, 'exclude', '8.06', 'amount', 91, 8, 'Piece democratic theory ever. Road read guy time.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(271, 'admin', 1, 'Atomberg Renesa Smart Fan 27', 'atomberg-renesa-smart-fan-27-Dru2KG', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kC774nSA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 739.3145, 0, '0.1', NULL, 'exclude', '14.29', 'percent', 23, 8, 'For on north. Edge through north establish seven course.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(272, 'admin', 1, 'Zebronics Gaming Keyboard', 'zebronics-gaming-keyboard-n2sJ18', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ju321rqe', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1016.2243333333, 0, '0.1', NULL, 'exclude', '21.26', 'amount', 73, 7, 'We certain water chair guess water up.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(273, 'admin', 1, 'Philips Hue Bulb', 'philips-hue-bulb-2IF9my', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=FD416YOP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 295.19533333333, 0, '0.15', NULL, 'exclude', '5.49', 'percent', 68, 9, 'We measure side see these decision add result. Cold for bag word beyond.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(274, 'admin', 1, 'Sony Bravia 65 Inch OLED', 'sony-bravia-65-inch-oled-yqqFIx', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ji821oqe', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 68.295166666667, 0, '0.16666666666667', NULL, 'exclude', '19.55', 'amount', 54, 3, 'Herself both remain other yes whom way. Identify more turn physical size.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(275, 'admin', 1, 'Aquaguard RO+UV', 'aquaguard-rouv-k8zGze', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=dv888xdl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 806.27666666667, 0, '0.11666666666667', NULL, 'exclude', '27.88', 'percent', 7, 9, 'Hear interview we several bad example food clearly.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(276, 'admin', 1, 'Godrej 185L Fridge', 'godrej-185l-fridge-P1on1m', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ym891VVU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 447.68866666667, 0, '0.18333333333333', NULL, 'exclude', '28.21', 'percent', 29, 8, 'Only be east often.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(277, 'admin', 1, 'JBL Charge 5', 'jbl-charge-5-YhhS06', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pa711XLo', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 919.93816666667, 0, '0.18333333333333', NULL, 'exclude', '13.14', 'percent', 15, 10, 'Around trip by value. Name us mention environment they call ten.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(278, 'admin', 1, 'HP Pavilion 15 13', 'hp-pavilion-15-13-IOMjsA', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Uo321zSV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1181.48, 0, '0.3', NULL, 'exclude', '23.67', 'percent', 43, 10, 'Small city though direction check. Sell my ahead finish decade right a.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(279, 'admin', 1, 'Khaitan Turbo Fan', 'khaitan-turbo-fan-MW7ZhI', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Cm576QBJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 640.85233333333, 0, '0.26666666666667', NULL, 'exclude', '22.24', 'amount', 74, 9, 'Smile executive sell police official rule so heart.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(280, 'admin', 1, 'SanDisk Extreme Pro SSD', 'sandisk-extreme-pro-ssd-v4GegL', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cw225zNx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 67.312666666667, 0, '0.3', NULL, 'exclude', '16.15', 'percent', 82, 3, 'Mrs door economy next seven tax cup. Culture key girl threat data.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(281, 'admin', 1, 'Khaitan Turbo Fan 7', 'khaitan-turbo-fan-7-L1TJLU', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pK295FFl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 509.74866666667, 0, '0.25', NULL, 'exclude', '11.45', 'percent', 8, 8, 'Yeah memory word cell attention. Partner interview day.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(282, 'admin', 1, 'Panasonic 338L Fridge', 'panasonic-338l-fridge-rBHzTk', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fT705bkK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 109.52866666667, 0, '0.16666666666667', NULL, 'exclude', '20.14', 'percent', 83, 10, 'Under blood past seek worker. Future say meeting body present run.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(283, 'admin', 1, 'Bajaj Induction Cooktop', 'bajaj-induction-cooktop-wl918H', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kH049oWM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 593.225, 0, '0.26666666666667', NULL, 'exclude', '15.42', 'amount', 58, 3, 'Five forward board. Personal century toward short.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(284, 'admin', 1, 'Beurer Weighing Scale', 'beurer-weighing-scale-Qlfijf', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=qB003amH', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 58.761166666667, 0, '0.2', NULL, 'exclude', '12.8', 'amount', 96, 1, 'Work now Mrs less article agree. Purpose five leave with moment.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(285, 'admin', 1, 'Luminous Vento Fan', 'luminous-vento-fan-Tteuf6', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cN142HwJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1240.473, 0, '0.11666666666667', NULL, 'exclude', '23.6', 'percent', 37, 5, 'Indicate there list.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(286, 'admin', 1, 'Canon EOS 1500D DSLR 41', 'canon-eos-1500d-dslr-41-DMsWQF', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Dy812pQP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 757.84033333333, 0, '0.23333333333333', NULL, 'exclude', '13.51', 'percent', 67, 3, 'City week station. Across buy former police. Attorney key might north.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(287, 'admin', 1, 'WD 1TB External HDD', 'wd-1tb-external-hdd-IYO4Mk', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kV689Uwz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1214.8703333333, 0, '0.25', NULL, 'exclude', '29.11', 'percent', 15, 2, 'Majority wind politics all speak. Low movie show garden low together.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(288, 'admin', 1, 'Whirlpool 240L Fridge', 'whirlpool-240l-fridge-BJgjhN', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=PW710nXf', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 52.875833333333, 0, '0.21666666666667', NULL, 'exclude', '27.27', 'amount', 43, 4, 'Imagine nation security investment. Respond despite past at medical tax series.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(289, 'admin', 1, 'Prestige Omega Non-Stick', 'prestige-omega-non-stick-Rv5v5G', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ns732oZM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 194.19333333333, 0, '0.2', NULL, 'exclude', '19.72', 'percent', 62, 6, 'Picture radio money star. Military ago figure what camera.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(290, 'admin', 1, 'IFB Front Load Washer', 'ifb-front-load-washer-g3Tdt9', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Nk228jTZ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 823.48483333333, 0, '0.13333333333333', NULL, 'exclude', '27.02', 'amount', 31, 10, 'Against I civil stage short agree. Together turn loss hand realize I simple.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(291, 'admin', 1, 'TP-Link WiFi Router', 'tp-link-wifi-router-sYhJB0', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=vu829QHe', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1055.756, 0, '0.11666666666667', NULL, 'exclude', '28.92', 'amount', 30, 9, 'Financial head animal. Food loss forget production point quickly.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(292, 'admin', 1, 'Apple Watch Series 9 40', 'apple-watch-series-9-40-IPtzvc', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TH961aoV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 893.851, 0, '0.26666666666667', NULL, 'exclude', '15', 'amount', 89, 4, 'Order court special data charge candidate responsibility. Probably drive whom.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(293, 'admin', 1, 'LG 190L Single Door Refrigerator', 'lg-190l-single-door-refrigerator-qWA3Co', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Iu194VQV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 226.73883333333, 0, '0.083333333333333', NULL, 'exclude', '9.04', 'percent', 26, 2, 'Condition fish message green. Answer information thank head since.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(294, 'admin', 1, 'Redgear Wireless Mouse 89', 'redgear-wireless-mouse-89-uD3Ufm', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=DP859CCo', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1007.7445, 0, '0.23333333333333', NULL, 'exclude', '5.46', 'amount', 82, 6, 'Prove dog name box step agent. Once strategy free class particular page.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(295, 'admin', 1, 'Philips Beard Trimmer', 'philips-beard-trimmer-Lsrgs0', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Lr241Aza', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 65.031666666667, 0, '0.18333333333333', NULL, 'exclude', '16.61', 'amount', 68, 9, 'Else happy interesting. Herself voice kind law.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(296, 'admin', 1, 'Amazon Fire HD 10', 'amazon-fire-hd-10-TvzGir', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=EG773hYr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 130.72983333333, 0, '0.2', NULL, 'exclude', '28.03', 'amount', 56, 9, 'Center what south push sister project. Want seem prove street check.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(297, 'admin', 1, 'Whirlpool Washing Machine 10', 'whirlpool-washing-machine-10-noGzUA', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=bV842UNG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 306.02533333333, 0, '0.25', NULL, 'exclude', '10.26', 'amount', 52, 1, 'Though item player a leader enjoy. Imagine radio little late.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(298, 'admin', 1, 'SanDisk Dual Drive', 'sandisk-dual-drive-ZVdWrL', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cY700fkd', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 658.03683333333, 0, '0.18333333333333', NULL, 'exclude', '19.46', 'percent', 17, 5, 'Through market still view my no hotel.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(299, 'admin', 1, 'Havells Hair Clipper', 'havells-hair-clipper-ibCO9t', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Fi812SeY', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 965.26466666667, 0, '0.16666666666667', NULL, 'exclude', '21.76', 'percent', 16, 8, 'Property eye weight. Idea these these lawyer.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `digital_file_ready_storage_type`, `images`, `color_image`, `thumbnail`, `thumbnail_storage_type`, `preview_file`, `preview_file_storage_type`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `digital_product_file_types`, `digital_product_extensions`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(300, 'admin', 1, 'LG 190L Single Door Refrigerator 78', 'lg-190l-single-door-refrigerator-78-MaefOM', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=UU658tLL', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 679.186, 0, '0.15', NULL, 'exclude', '18.21', 'amount', 20, 6, 'Animal last run our. Follow really girl admit performance drug prepare.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(301, 'admin', 1, 'TCL 4K Smart TV', 'tcl-4k-smart-tv-cSlhKy', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TK441vff', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 559.39783333333, 0, '0.15', NULL, 'exclude', '0.27', 'percent', 10, 5, 'Activity attention expect government door oil could.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(302, 'admin', 1, 'Dr Trust BP Monitor 47', 'dr-trust-bp-monitor-47-HUHSW6', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=LR310NHy', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1041.5076666667, 0, '0.15', NULL, 'exclude', '0.53', 'percent', 85, 2, 'Society marriage walk. Center drive like wonder political begin.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(303, 'admin', 1, 'Redmi Note 11', 'redmi-note-11-qMNcJL', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=DZ472Wqd', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 64.605666666667, 0, '0.2', NULL, 'exclude', '24.51', 'percent', 5, 5, 'Expert next continue make example professional should. Likely still center.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(304, 'admin', 1, 'Bosch Top Load Washer', 'bosch-top-load-washer-ztx0Sm', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=hQ149bMT', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 536.73416666667, 0, '0.083333333333333', NULL, 'exclude', '4.69', 'percent', 14, 8, 'Sister build deep political peace maybe ask.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(305, 'admin', 1, 'Nikon Z50', 'nikon-z50-yvMv6V', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Xj402whP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 74.496333333333, 0, '0.23333333333333', NULL, 'exclude', '13.03', 'percent', 88, 7, 'Information important live focus per.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(306, 'admin', 1, 'Canon M50 Mark II', 'canon-m50-mark-ii-1hdNMe', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=NA629EYY', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 693.64583333333, 0, '0.18333333333333', NULL, 'exclude', '20.72', 'percent', 96, 2, 'Serve result book analysis. Enter market look there PM try.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(307, 'admin', 1, 'Haier Inverter Washer', 'haier-inverter-washer-Jy6UWH', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Bk901UIc', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1159.3031666667, 0, '0.25', NULL, 'exclude', '27.64', 'percent', 76, 8, 'Safe group discussion drive notice certainly. Mean explain return.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(308, 'admin', 1, 'Nikon D5600 Camera', 'nikon-d5600-camera-X6xhKL', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kz139gaO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1004.7321666667, 0, '0.13333333333333', NULL, 'exclude', '29.35', 'percent', 76, 6, 'Wrong entire catch training month war. Happy long old ok type technology.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(309, 'admin', 1, 'Haier 195L Fridge', 'haier-195l-fridge-agh78U', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=yP236TlK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 543.32466666667, 0, '0.13333333333333', NULL, 'exclude', '6.88', 'amount', 77, 3, 'Not suffer popular stage already water finish.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(310, 'admin', 1, 'Apple Watch SE', 'apple-watch-se-A5HcUr', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Dq307met', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 128.72383333333, 0, '0.26666666666667', NULL, 'exclude', '24.53', 'amount', 45, 2, 'Best team government age. Next across such on teacher be.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(311, 'admin', 1, 'Amazfit GTS 4', 'amazfit-gts-4-JFESkh', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=KQ646aTV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 445.7845, 0, '0.28333333333333', NULL, 'exclude', '15.93', 'percent', 41, 8, 'Large board father. Agent room check land win. Gun per the defense respond.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(312, 'admin', 1, 'Canon EOS 1500D DSLR', 'canon-eos-1500d-dslr-dcspuy', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=au352mKa', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 434.12283333333, 0, '0.2', NULL, 'exclude', '27.71', 'percent', 10, 10, 'Range four no career agent yourself. Industry either individual truth plan.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(313, 'admin', 1, 'Samsung Galaxy S22 Ultra', 'samsung-galaxy-s22-ultra-qFK4cQ', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=gj642kUG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 289.08316666667, 0, '0.083333333333333', NULL, 'exclude', '24.54', 'percent', 16, 6, 'Network art away make community. Election have talk especially hit subject.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(314, 'admin', 1, 'Sony Alpha Mirrorless Camera 16', 'sony-alpha-mirrorless-camera-16-YlUlgX', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kh410AUO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1084.6365, 0, '0.16666666666667', NULL, 'exclude', '19.66', 'amount', 84, 4, 'Large history pretty conference public professional.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(315, 'admin', 1, 'Syska Hair Dryer', 'syska-hair-dryer-xCUkL6', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=WE567VVU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 18.270166666667, 0, '0.2', NULL, 'exclude', '25.15', 'amount', 16, 5, 'After computer Congress base reason color statement.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(316, 'admin', 1, 'Lifelong Massager 52', 'lifelong-massager-52-RtTcoJ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=sw508wBA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 599.1625, 0, '0.18333333333333', NULL, 'exclude', '1.95', 'amount', 60, 5, 'Feel make really. Subject military thought day most.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(317, 'admin', 1, 'OnePlus 11R', 'oneplus-11r-hnOP9J', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=xt264ZVu', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 727.13166666667, 0, '0.21666666666667', NULL, 'exclude', '21.11', 'percent', 36, 10, 'Else seem operation writer once lay hard. Art decade military even set idea.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(318, 'admin', 1, 'OnePlus Nord CE 3', 'oneplus-nord-ce-3-LiUdOj', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=MO807Xxt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 269.20983333333, 0, '0.28333333333333', NULL, 'exclude', '12.16', 'amount', 35, 2, 'Rule tax peace evidence trial. My lose evidence media without girl red mother.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(319, 'admin', 1, 'Noise Colorfit Icon 2', 'noise-colorfit-icon-2-z9tYbW', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=WA567FEd', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 967.056, 0, '0.083333333333333', NULL, 'exclude', '14.61', 'amount', 9, 10, 'Social reduce need go us any trial understand. She sense goal at.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(320, 'admin', 1, 'Onida Semi Auto Washer', 'onida-semi-auto-washer-Nb5xGV', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Zh945lHW', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 924.93583333333, 0, '0.26666666666667', NULL, 'exclude', '19.56', 'percent', 36, 6, 'Try detail six create growth join. Even miss floor between.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(321, 'admin', 1, 'HP 64GB Pendrive', 'hp-64gb-pendrive-VgqeSi', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Rq236uIG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 426.78483333333, 0, '0.1', NULL, 'exclude', '7.29', 'percent', 6, 3, 'Represent their guess. Some yourself time policy meet. Law yet buy improve.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(322, 'admin', 1, 'Atomberg Renesa Smart Fan', 'atomberg-renesa-smart-fan-KmD3BZ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ri143uDr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 335.99983333333, 0, '0.21666666666667', NULL, 'exclude', '21.95', 'amount', 5, 10, 'Project word shoulder. About call receive center trip pull.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(323, 'admin', 1, 'Asus Vivobook 16', 'asus-vivobook-16-1g2Rrz', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=qc947KIB', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 508.1095, 0, '0.26666666666667', NULL, 'exclude', '11.27', 'amount', 40, 10, 'Story vote talk entire. Story near relationship middle fish. Bank both write.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(324, 'admin', 1, 'Samsung EVO Plus SD Card', 'samsung-evo-plus-sd-card-FGhsqB', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ln182OTm', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 624.48433333333, 0, '0.16666666666667', NULL, 'exclude', '24.45', 'amount', 66, 3, 'Produce animal item see instead. Central throughout something all tend movie.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(325, 'admin', 1, 'Redmi 10 Prime', 'redmi-10-prime-dLdyLI', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=CF931ytw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 671.64, 0, '0.2', NULL, 'exclude', '23.24', 'percent', 69, 7, 'Inside action point find year college drug.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(326, 'admin', 1, 'Apple iPad 10th Gen', 'apple-ipad-10th-gen-5RHSGD', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=dA588gMP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 704.44883333333, 0, '0.3', NULL, 'exclude', '22.16', 'amount', 89, 6, 'Sit pay form improve anything ahead relationship.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(327, 'admin', 1, 'Redmi Note 11 29', 'redmi-note-11-29-SsniKY', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=sL666toU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 537.59216666667, 0, '0.26666666666667', NULL, 'exclude', '19.76', 'amount', 96, 10, 'Reflect minute report medical face remember.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(328, 'admin', 1, 'OnePlus Nord CE 3 42', 'oneplus-nord-ce-3-42-GMM3cf', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lp238kLP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 813.113, 0, '0.2', NULL, 'exclude', '28.41', 'amount', 87, 5, 'Perform social push now. Maintain appear enter cause strategy student.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(329, 'admin', 1, 'Havells Pedestal Fan', 'havells-pedestal-fan-rsrnVY', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=BY841HXo', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 231.92866666667, 0, '0.13333333333333', NULL, 'exclude', '13.58', 'percent', 72, 9, 'Environmental outside across film. He tend build charge reflect.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(330, 'admin', 1, 'Dell Inspiron 15', 'dell-inspiron-15-OsnOKg', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kH479zzr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 944.817, 0, '0.083333333333333', NULL, 'exclude', '27.96', 'percent', 86, 6, 'Air court wait yard pass oil here. Fly resource contain thousand less.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(331, 'admin', 1, 'Sony Bravia 65 Inch OLED 1', 'sony-bravia-65-inch-oled-1-bhACeF', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=OI441Lvn', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1165.2181666667, 0, '0.3', NULL, 'exclude', '16.92', 'amount', 87, 6, 'Production child including realize. Blood others any.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(332, 'admin', 1, 'Apple iPad 10th Gen 20', 'apple-ipad-10th-gen-20-MJhDyc', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=xl963rFn', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 583.45466666667, 0, '0.16666666666667', NULL, 'exclude', '15.6', 'percent', 84, 2, 'Ahead history certain factor evidence first.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(333, 'admin', 1, 'Samsung T7 SSD 1TB 30', 'samsung-t7-ssd-1tb-30-jUdi8a', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zn554UKt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 674.586, 0, '0.28333333333333', NULL, 'exclude', '2.72', 'percent', 74, 2, 'Such wall easy close message. Cell try challenge star.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(334, 'admin', 1, 'HP USB Mouse', 'hp-usb-mouse-tS0u3O', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=oE519dOQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 420.03133333333, 0, '0.2', NULL, 'exclude', '16.54', 'percent', 63, 9, 'Data include everything. Write culture position force effort mission.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(335, 'admin', 1, 'Netgear AC1200 Router', 'netgear-ac1200-router-AQ3di6', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Fw002nWR', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1134.0083333333, 0, '0.13333333333333', NULL, 'exclude', '10.18', 'percent', 35, 8, 'National budget community wind learn. Raise have ask who toward.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(336, 'admin', 1, 'Voltas Beko Fridge 75', 'voltas-beko-fridge-75-Wd0w2G', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Vd974vTt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1202.7288333333, 0, '0.11666666666667', NULL, 'exclude', '1.38', 'percent', 47, 6, 'Perhaps hand if produce teacher. Above feel morning lay.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(337, 'admin', 1, 'IFB Grill Oven', 'ifb-grill-oven-ZDeNZD', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Zo003UrP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1009.9495, 0, '0.2', NULL, 'exclude', '24.65', 'amount', 22, 10, 'Outside win prepare trouble hundred kid management.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(338, 'admin', 1, 'Mi Smart Speaker 84', 'mi-smart-speaker-84-ST3Gjd', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=we055PNv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1120.0898333333, 0, '0.25', NULL, 'exclude', '11.95', 'amount', 54, 5, 'Apply yard west. Realize participant town stuff. There TV mission.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(339, 'admin', 1, 'LG Fully Auto 6.5kg', 'lg-fully-auto-65kg-EmBOXI', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lA054DqK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 433.83383333333, 0, '0.13333333333333', NULL, 'exclude', '5.98', 'amount', 30, 2, 'Single population choose talk religious. Difficult stage night only product.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(340, 'admin', 1, 'boAt Rockerz 255', 'boat-rockerz-255-iS2fdZ', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AH357pXv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 911.36916666667, 0, '0.23333333333333', NULL, 'exclude', '16.2', 'amount', 45, 5, 'Somebody simple current not. Home raise say well.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(341, 'admin', 1, 'Sony WF-C500 Earbuds', 'sony-wf-c500-earbuds-dtx8iB', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=xY916Zzy', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1134.4028333333, 0, '0.28333333333333', NULL, 'exclude', '26.07', 'percent', 60, 4, 'Million final keep draw worry late. Both rest without certainly.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(342, 'admin', 1, 'Whirlpool Washing Machine', 'whirlpool-washing-machine-2gUZ94', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zg303uEx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1077.4641666667, 0, '0.16666666666667', NULL, 'exclude', '27.53', 'amount', 7, 10, 'Course least so southern food someone tend. Upon allow challenge new candidate.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(343, 'admin', 1, 'Redgear Wireless Mouse', 'redgear-wireless-mouse-KRPqwi', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ut161Irr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1243.1378333333, 0, '0.26666666666667', NULL, 'exclude', '2.64', 'percent', 8, 4, 'Forget occur performance and occur identify ground.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(344, 'admin', 1, 'Whirlpool 7kg Washing Machine', 'whirlpool-7kg-washing-machine-A2Lnwg', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=sY762TLq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 437.90966666667, 0, '0.26666666666667', NULL, 'exclude', '6.33', 'percent', 87, 8, 'Even money trip our social station in he. Protect score walk far education of.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(345, 'admin', 1, 'Xiaomi Pad 6', 'xiaomi-pad-6-VasEFG', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zx504LoN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1123.8338333333, 0, '0.3', NULL, 'exclude', '15', 'percent', 71, 6, 'Try tonight memory take organization. Center beautiful author someone.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(346, 'admin', 1, 'Honor Pad X9', 'honor-pad-x9-vWqn6e', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Gl827lxU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 352.28516666667, 0, '0.16666666666667', NULL, 'exclude', '11.9', 'percent', 43, 2, 'Quality whether find church.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(347, 'admin', 1, 'Bajaj Table Fan', 'bajaj-table-fan-kYlRfc', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=iF958Vfg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 53.190333333333, 0, '0.11666666666667', NULL, 'exclude', '5.44', 'percent', 63, 10, 'Page pretty start join. Skin size save notice pass.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(348, 'admin', 1, 'iPhone 14 Pro Max 47', 'iphone-14-pro-max-47-Ci7ZCO', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=VY127VGX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 401.22616666667, 0, '0.11666666666667', NULL, 'exclude', '8.65', 'amount', 98, 1, 'Really realize mouth happy morning professor product.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(349, 'admin', 1, 'iPhone 14 Pro Max', 'iphone-14-pro-max-MahzNM', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fJ584juw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 953.24183333333, 0, '0.15', NULL, 'exclude', '10.28', 'amount', 24, 1, 'Stock democratic thousand film present read heavy.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(350, 'admin', 1, 'iPhone 12 Mini', 'iphone-12-mini-M2DlyA', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ze176OmR', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 952.177, 0, '0.18333333333333', NULL, 'exclude', '12.41', 'amount', 92, 7, 'Attack later fill large blood hit. New nice really couple move.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(351, 'admin', 1, 'Asus ROG Strix G16 9', 'asus-rog-strix-g16-9-bebANb', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Yx818MXf', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 117.45366666667, 0, '0.26666666666667', NULL, 'exclude', '13.45', 'percent', 98, 5, 'Standard voice black interview. Put necessary pattern series apply hot economy.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(352, 'admin', 1, 'Bajaj Ceiling Fan', 'bajaj-ceiling-fan-GJIsi9', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lG659Kxk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 224.86616666667, 0, '0.28333333333333', NULL, 'exclude', '16.5', 'amount', 98, 2, 'Instead head loss. Garden within safe lay. What high adult miss can until.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(353, 'admin', 1, 'OnePlus Nord Buds', 'oneplus-nord-buds-nc9QjO', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=HM855vWa', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 719.94066666667, 0, '0.23333333333333', NULL, 'exclude', '7.28', 'percent', 80, 6, 'Stock hear attention. Policy range space question believe.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(354, 'admin', 1, 'Garmin Forerunner 55', 'garmin-forerunner-55-B8Z35N', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Kp864Lsp', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 799.648, 0, '0.15', NULL, 'exclude', '8.97', 'amount', 22, 3, 'Our rate current begin approach movie. Machine sometimes similar threat.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(355, 'admin', 1, 'Havells Wall Fan', 'havells-wall-fan-hdMns3', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Vg810ukv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 769.84016666667, 0, '0.3', NULL, 'exclude', '25.65', 'percent', 48, 5, 'Whole throughout run check. Option address worry job such.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(356, 'admin', 1, 'Panasonic Lumix G7', 'panasonic-lumix-g7-gTIPyX', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Cj324nwL', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 131.44833333333, 0, '0.25', NULL, 'exclude', '3', 'amount', 32, 2, 'Ball about film structure security create two. Who hope than various.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(357, 'admin', 1, 'MSI Modern 15', 'msi-modern-15-vVDgMR', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Di059hKJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 936.5105, 0, '0.13333333333333', NULL, 'exclude', '26.06', 'amount', 81, 5, 'Can store let style data part show. Table once significant even sound admit.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(358, 'admin', 1, 'Morphy Richards OTG', 'morphy-richards-otg-OKdPsf', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=DN197bPg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 670.15083333333, 0, '0.21666666666667', NULL, 'exclude', '8.12', 'amount', 60, 5, 'Western to more loss attack soldier discuss board.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(359, 'admin', 1, 'Seagate 2TB Portable HDD', 'seagate-2tb-portable-hdd-66EBwx', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=tj712fvN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 834.93116666667, 0, '0.28333333333333', NULL, 'exclude', '16.77', 'amount', 91, 5, 'Lose short size season blood remember enjoy.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(360, 'admin', 1, 'Pigeon Toaster', 'pigeon-toaster-Ki4P5y', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=xw150SHl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 606.88183333333, 0, '0.11666666666667', NULL, 'exclude', '8.04', 'percent', 80, 2, 'Treatment imagine country stand southern. So thousand year be.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(361, 'admin', 1, 'Amazon Echo Dot 5', 'amazon-echo-dot-5-wVZwQa', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=eI271XtS', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 181.07683333333, 0, '0.15', NULL, 'exclude', '7.48', 'amount', 45, 6, 'Court test staff. Own have performance current line traditional.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(362, 'admin', 1, 'Voltas Beko Fridge', 'voltas-beko-fridge-AfswYC', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=on245enc', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1049.9556666667, 0, '0.28333333333333', NULL, 'exclude', '6.18', 'percent', 59, 1, 'Establish during sit only program. Need might agency turn meeting real.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(363, 'admin', 1, 'Butterfly Mixer Grinder', 'butterfly-mixer-grinder-iGWT5y', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cf915peD', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 645.8185, 0, '0.2', NULL, 'exclude', '13.47', 'amount', 13, 3, 'Boy thousand word manage finally realize hot deep.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(364, 'admin', 1, 'Samsung 324L Inverter Fridge', 'samsung-324l-inverter-fridge-iVZo4i', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=HP942giH', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 747.6855, 0, '0.13333333333333', NULL, 'exclude', '18.81', 'amount', 33, 6, 'Method deep fall threat carry reach name.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(365, 'admin', 1, 'HP Victus Gaming Laptop', 'hp-victus-gaming-laptop-cRYM0A', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=bE451Nyz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 507.743, 0, '0.16666666666667', NULL, 'exclude', '25.31', 'percent', 82, 4, 'His traditional age choice look. Hope pull notice center.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(366, 'admin', 1, 'Dell XPS 13', 'dell-xps-13-oKWis1', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Pb170uWJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1114.5865, 0, '0.23333333333333', NULL, 'exclude', '16.18', 'amount', 5, 4, 'Most baby race side. Decade side career member ball together.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(367, 'admin', 1, 'Fastrack Reflex Vox', 'fastrack-reflex-vox-61viLg', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=dK952bBX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 19.817666666667, 0, '0.3', NULL, 'exclude', '0.86', 'percent', 16, 1, 'Response yes amount front head. Culture catch pressure father test human.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(368, 'admin', 1, 'Havells Induction Plate', 'havells-induction-plate-ROTO6t', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=aH263aLJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 544.01416666667, 0, '0.15', NULL, 'exclude', '14.58', 'percent', 94, 8, 'Under step body true there media take budget. Cost ready everybody speech.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(369, 'admin', 1, 'Syska Smart Light', 'syska-smart-light-V2uweV', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Kg328DTS', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 642.71466666667, 0, '0.25', NULL, 'exclude', '18.82', 'amount', 93, 1, 'Technology open among offer job foot question third.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(370, 'admin', 1, 'boAt Wave Sigma', 'boat-wave-sigma-bnNriz', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=MI421qNr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 945.22783333333, 0, '0.16666666666667', NULL, 'exclude', '9.34', 'amount', 55, 8, 'South second discuss hour expect gas. Purpose skill place.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(371, 'admin', 1, 'Panasonic Nose Trimmer', 'panasonic-nose-trimmer-8rEbyS', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=UX760peM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 104.96266666667, 0, '0.13333333333333', NULL, 'exclude', '9.96', 'amount', 98, 7, 'Medical base message consumer by play hope store.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(372, 'admin', 1, 'JBL Bluetooth Speaker', 'jbl-bluetooth-speaker-GopuCG', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=NZ684XQr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 95.778833333333, 0, '0.28333333333333', NULL, 'exclude', '21.48', 'amount', 22, 6, 'Law place window PM eye maybe while seat.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(373, 'admin', 1, 'Samsung EcoBubble 7kg', 'samsung-ecobubble-7kg-nRmI5G', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pT336kJX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1187.224, 0, '0.23333333333333', NULL, 'exclude', '8.04', 'percent', 97, 9, 'Heart investment and understand. You will rise card. Cause box sister tend.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(374, 'admin', 1, 'Zebronics BT Soundbar', 'zebronics-bt-soundbar-RfZagU', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=XJ570swC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 56.962833333333, 0, '0.2', NULL, 'exclude', '27.37', 'percent', 84, 2, 'Score road tax drug four. Cup collection according.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(375, 'admin', 1, 'Crucial X8 2TB SSD 16', 'crucial-x8-2tb-ssd-16-CjfuJH', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Zw095KTw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 175.002, 0, '0.3', NULL, 'exclude', '9.5', 'amount', 97, 7, 'Purpose realize television help leader.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(376, 'admin', 1, 'Orient Electric Fan', 'orient-electric-fan-L0PBJj', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=uY658RYn', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 546.86883333333, 0, '0.083333333333333', NULL, 'exclude', '6.11', 'percent', 85, 9, 'Performance thousand change drug. Work subject safe summer finally their.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `digital_file_ready_storage_type`, `images`, `color_image`, `thumbnail`, `thumbnail_storage_type`, `preview_file`, `preview_file_storage_type`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `digital_product_file_types`, `digital_product_extensions`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(377, 'admin', 1, 'Nova Hair Straightener', 'nova-hair-straightener-caLFAW', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=QX541cUQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 88.805666666667, 0, '0.1', NULL, 'exclude', '13.61', 'amount', 55, 9, 'Pull least enjoy go place message. Yet control rate.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(378, 'admin', 1, 'DJI Osmo Pocket 3', 'dji-osmo-pocket-3-jeN84t', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=YH003pdN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1222.5356666667, 0, '0.083333333333333', NULL, 'exclude', '15.39', 'percent', 93, 3, 'Tax north radio yet. Boy weight suddenly at under ok.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(379, 'admin', 1, 'Panasonic 43 Inch TV', 'panasonic-43-inch-tv-FQYaeG', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=eF926nqH', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1193.9453333333, 0, '0.2', NULL, 'exclude', '12.02', 'amount', 58, 1, 'Civil bank our this go dog. Major relationship hot method push have rise onto.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(380, 'admin', 1, 'JBL Bar 2.1 Soundbar 2', 'jbl-bar-21-soundbar-2-Ij1jBd', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=hx766MAg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 371.80733333333, 0, '0.2', NULL, 'exclude', '27.27', 'amount', 35, 8, 'Threat suffer coach century. Decision read son within either.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(381, 'admin', 1, 'Samsung Galaxy Book3', 'samsung-galaxy-book3-8pSEkR', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=bi025YZh', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 969.7855, 0, '0.21666666666667', NULL, 'exclude', '1.26', 'percent', 23, 5, 'Leave thus mind stop. Inside task least instead.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(382, 'admin', 1, 'LG Convection Oven', 'lg-convection-oven-GFLdQv', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=BO420mCU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1018.0621666667, 0, '0.21666666666667', NULL, 'exclude', '4.41', 'percent', 50, 9, 'Time lead join can group news century. While defense away whom.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(383, 'admin', 1, 'Fujifilm X-T30 II', 'fujifilm-x-t30-ii-eLymRt', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=RE231DXJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 67.6855, 0, '0.2', NULL, 'exclude', '29.2', 'percent', 26, 3, 'News into safe writer if. Good over should theory picture teacher pattern.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(384, 'admin', 1, 'Poco M6 Pro', 'poco-m6-pro-xvypj9', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=WE412VxN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 825.10516666667, 0, '0.1', NULL, 'exclude', '27.58', 'percent', 68, 2, 'Create soon college find hard their interesting.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(385, 'admin', 1, 'Samsung 253L Double Door Fridge', 'samsung-253l-double-door-fridge-VpdZdU', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Kq523ruh', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 154.1785, 0, '0.3', NULL, 'exclude', '14.8', 'percent', 100, 10, 'Page food special usually clearly. Brother clearly next home similar.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(386, 'admin', 1, 'Crompton Aura Fan', 'crompton-aura-fan-xsP4uY', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TH165WyD', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1065.9658333333, 0, '0.23333333333333', NULL, 'exclude', '21.08', 'percent', 83, 2, 'Court even site PM fund card.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(387, 'admin', 1, 'Godrej Eon 7.5kg', 'godrej-eon-75kg-MYckIc', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=xi966JsU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 199.04683333333, 0, '0.16666666666667', NULL, 'exclude', '10.04', 'percent', 100, 10, 'Wall enter avoid figure civil politics sit I.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(388, 'admin', 1, 'Ambrane Powerbank 10000mAh', 'ambrane-powerbank-10000mah-qX54QC', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cf129vbP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 371.61733333333, 0, '0.21666666666667', NULL, 'exclude', '25.4', 'percent', 56, 1, 'While agent wind determine. Here reason room name song.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(389, 'admin', 1, 'Infinix Smart TV', 'infinix-smart-tv-BiPkU3', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=RC460eYn', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 849.41316666667, 0, '0.11666666666667', NULL, 'exclude', '3.03', 'amount', 65, 8, 'Bank section six specific effect either. Admit school kitchen choice nice.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(390, 'admin', 1, 'Khaitan Turbo Fan 91', 'khaitan-turbo-fan-91-5R3QGE', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=WL100lLP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1058.1633333333, 0, '0.1', NULL, 'exclude', '11.77', 'amount', 67, 2, 'Old heart final special role loss. Our someone new bit usually value.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(391, 'admin', 1, 'Samsung T7 SSD 1TB', 'samsung-t7-ssd-1tb-vofj9a', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=mG618xrk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 728.90766666667, 0, '0.1', NULL, 'exclude', '22.64', 'amount', 48, 2, 'World small half work. Morning west foot mention clearly owner.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(392, 'admin', 1, 'Morphy Richards OTG 88', 'morphy-richards-otg-88-l7zZp6', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pv881uVE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 41.161, 0, '0.11666666666667', NULL, 'exclude', '7.29', 'percent', 91, 7, 'Student expect challenge decide so bit. Meet maybe officer whose buy as.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(393, 'admin', 1, 'HP 64GB Pendrive 39', 'hp-64gb-pendrive-39-R6vIcp', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zN328XHM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 311.9525, 0, '0.28333333333333', NULL, 'exclude', '1.85', 'percent', 99, 10, 'With could science at where practice. Wife evening leg however.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(394, 'admin', 1, 'LG OLED Smart TV', 'lg-oled-smart-tv-rtPyiz', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=jG340XxW', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 263.46966666667, 0, '0.18333333333333', NULL, 'exclude', '11.02', 'amount', 78, 3, 'Maintain owner become stock a. Point house although simple cup.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(395, 'admin', 1, 'boAt Aavante Bar 2000', 'boat-aavante-bar-2000-cJd4yk', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=JK615cEj', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1146.9285, 0, '0.3', NULL, 'exclude', '26.58', 'amount', 91, 10, 'Usually give who find evening. Class performance hour.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(396, 'admin', 1, 'Apple iPad Air M1', 'apple-ipad-air-m1-Mptzer', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fC587pLH', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 669.99833333333, 0, '0.18333333333333', NULL, 'exclude', '17.94', 'amount', 8, 1, 'Thing Congress officer thousand study car eight.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(397, 'admin', 1, 'Philips Mixer Grinder', 'philips-mixer-grinder-vPHZ7M', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=aq097RbV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 143.053, 0, '0.083333333333333', NULL, 'exclude', '20.1', 'amount', 43, 8, 'Ok week left door democratic pretty. Away character board analysis even north.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(398, 'admin', 1, 'Omron Thermometer', 'omron-thermometer-hfzogZ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=tq518CpX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 939.8365, 0, '0.16666666666667', NULL, 'exclude', '15.75', 'amount', 92, 4, 'Leave decade protect yeah when. Production know reason lot.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(399, 'admin', 1, 'Usha Mist Air Fan', 'usha-mist-air-fan-5oV52W', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=tE931iSl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 16.266833333333, 0, '0.13333333333333', NULL, 'exclude', '27', 'percent', 59, 7, 'Might owner than concern politics.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(400, 'admin', 1, 'Bajaj Microwave Oven', 'bajaj-microwave-oven-bEGpgb', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fh543DwA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 957.00183333333, 0, '0.28333333333333', NULL, 'exclude', '0.92', 'percent', 25, 4, 'In something rather interesting democratic forget.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(401, 'admin', 1, 'Redmi Note 12', 'redmi-note-12-u1E3Gg', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wW442HKO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 153.261, 0, '0.1', NULL, 'exclude', '13.12', 'percent', 37, 7, 'Away professional task player bad. Early increase oil.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(402, 'admin', 1, 'D-Link Dual Band Router', 'd-link-dual-band-router-y9ulpO', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Rq204jRk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 150.42066666667, 0, '0.1', NULL, 'exclude', '21.25', 'amount', 75, 4, 'Window maybe stop case wind enough year least. Social student thing job as hot.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(403, 'admin', 1, 'Sony Bravia 55 Inch 4K TV', 'sony-bravia-55-inch-4k-tv-LNPBEp', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AZ973uuK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 424.76633333333, 0, '0.23333333333333', NULL, 'exclude', '22.51', 'percent', 9, 8, 'Measure base piece process.', 0, NULL, '2025-07-19 06:22:56', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(404, 'admin', 1, 'Bajaj Ceiling Fan', 'bajaj-ceiling-fan-4iWdMq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wH853cnx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 444.48266666667, 0, '0.16666666666667', NULL, 'exclude', '8.83', 'percent', 88, 5, 'Avoid part war collection least professional involve simple.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(405, 'admin', 1, 'Realme 11 Pro+', 'realme-11-pro-epPe2c', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lk756aGh', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 781.3905, 0, '0.25', NULL, 'exclude', '12.29', 'amount', 66, 8, 'Language owner at argue. Now national impact student.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(406, 'admin', 1, 'Butterfly Gas Stove', 'butterfly-gas-stove-L97PRX', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Bx700uej', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 217.43666666667, 0, '0.26666666666667', NULL, 'exclude', '14.03', 'amount', 92, 4, 'Impact audience speech soldier policy million. Determine store budget good.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(407, 'admin', 1, 'SanDisk Extreme Pro SSD 95', 'sandisk-extreme-pro-ssd-95-MpwdlN', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Xy710dUU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 73.509333333333, 0, '0.11666666666667', NULL, 'exclude', '2.15', 'percent', 25, 3, 'Rate wide gun tree past law. Finally return course method perform author.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(408, 'admin', 1, 'Aquaguard RO+UV', 'aquaguard-rouv-K7A4JS', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ah521yJx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 453.8015, 0, '0.083333333333333', NULL, 'exclude', '21.6', 'percent', 65, 8, 'Begin knowledge minute election present.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(409, 'admin', 1, 'Lenovo IdeaPad Slim 5', 'lenovo-ideapad-slim-5-ujFDJU', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=uz535auY', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 253.58766666667, 0, '0.25', NULL, 'exclude', '23.97', 'amount', 74, 3, 'Fly speech ok. Stock minute deep sea. Adult figure stuff if network continue.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(410, 'admin', 1, 'Amazon Echo Dot 5 72', 'amazon-echo-dot-5-72-wE7IDo', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=qc408bbb', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 386.4565, 0, '0.23333333333333', NULL, 'exclude', '6.09', 'amount', 21, 7, 'Continue high few series political road.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(411, 'admin', 1, 'Samsung Galaxy Watch 6', 'samsung-galaxy-watch-6-PcFq8x', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=vv053oAq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 959.33683333333, 0, '0.11666666666667', NULL, 'exclude', '4.98', 'amount', 29, 5, 'Face owner feeling form bar. Summer seven sit important prepare raise.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(412, 'admin', 1, 'Infinix Smart TV', 'infinix-smart-tv-7Lz9hA', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Mq757OqB', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1056.7648333333, 0, '0.16666666666667', NULL, 'exclude', '22.11', 'amount', 24, 9, 'Body style carry power wish. Skill hospital generation pay way.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(413, 'admin', 1, 'Zebronics Gaming Keyboard', 'zebronics-gaming-keyboard-exvUSm', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AB807Qts', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 229.23366666667, 0, '0.23333333333333', NULL, 'exclude', '17.31', 'percent', 23, 9, 'Cultural population involve car why itself issue.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(414, 'admin', 1, 'Apple Watch Series 9', 'apple-watch-series-9-Rzr09u', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=OM965lfC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 446.59383333333, 0, '0.28333333333333', NULL, 'exclude', '27.62', 'amount', 7, 2, 'Land collection public.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(415, 'admin', 1, 'Bosch 655L Fridge', 'bosch-655l-fridge-i4GzUz', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nS098sVP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 878.34216666667, 0, '0.25', NULL, 'exclude', '18.65', 'percent', 82, 9, 'Often single summer cover apply short. Maybe design issue.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(416, 'admin', 1, 'boAt Rockerz 255', 'boat-rockerz-255-9dHNPm', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=uH315RVI', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 51.8, 0, '0.23333333333333', NULL, 'exclude', '23.13', 'amount', 51, 1, 'Truth successful simply mind others agent try executive.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(417, 'admin', 1, 'Titan Smart Pro', 'titan-smart-pro-Yyei4j', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=GC851xeg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 202.64216666667, 0, '0.28333333333333', NULL, 'exclude', '26.26', 'amount', 98, 10, 'Check list agent sign also stock high. Always role receive her result.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(418, 'admin', 1, 'Havells Wall Fan', 'havells-wall-fan-sK7iTl', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=aE954Bjp', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 521.76333333333, 0, '0.23333333333333', NULL, 'exclude', '2.79', 'amount', 60, 6, 'Dinner point chance computer shake book. Manage thing difficult political.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(419, 'admin', 1, 'Acer Boundless TV', 'acer-boundless-tv-FbRRQk', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Zb175PLT', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 623.88783333333, 0, '0.1', NULL, 'exclude', '23.64', 'percent', 61, 10, 'Only turn boy. Paper usually your price open. Actually century bag magazine.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(420, 'admin', 1, 'TP-Link Smart Plug', 'tp-link-smart-plug-37aXFV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Eo730rpr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 202.068, 0, '0.2', NULL, 'exclude', '12.98', 'amount', 35, 3, 'By skin quickly window partner pressure spring. Standard nothing news nearly.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(421, 'admin', 1, 'Samsung EcoBubble 7kg', 'samsung-ecobubble-7kg-vLzulf', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=YK346xBO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 665.1585, 0, '0.13333333333333', NULL, 'exclude', '14.8', 'amount', 99, 3, 'Six cultural item out. Nice parent reality ask. Person return anyone TV.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(422, 'admin', 1, 'Xiaomi Pad 6', 'xiaomi-pad-6-gNEWrE', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=qG331LkU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 909.13733333333, 0, '0.3', NULL, 'exclude', '16.7', 'amount', 28, 1, 'Low manage society for training that person.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(423, 'admin', 1, 'Godrej Eon 7.5kg', 'godrej-eon-75kg-oxIj7Z', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ic868fav', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1110.3586666667, 0, '0.13333333333333', NULL, 'exclude', '0.93', 'amount', 76, 3, 'Rich five true mind exist technology. Enough star know nation hand family stay.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(424, 'admin', 1, 'DJI Osmo Pocket 3 78', 'dji-osmo-pocket-3-78-eschik', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=iV762zoa', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 191.56766666667, 0, '0.3', NULL, 'exclude', '13.87', 'percent', 76, 3, 'Camera choose evening whose. Generation question probably.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(425, 'admin', 1, 'Redmi Note 12', 'redmi-note-12-gph8Oh', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=OS125Mjm', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 638.7495, 0, '0.3', NULL, 'exclude', '28.59', 'percent', 33, 4, 'Whose alone life could sure job position.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(426, 'admin', 1, 'Bajaj Table Fan', 'bajaj-table-fan-AxgKdd', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Rw544XEM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 436.12083333333, 0, '0.18333333333333', NULL, 'exclude', '25.27', 'amount', 11, 2, 'Two determine several. Ball whom method perhaps according good.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(427, 'admin', 1, 'Lexar 128GB Memory Card 61', 'lexar-128gb-memory-card-61-CMRxI7', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=YU808GDj', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 667.83433333333, 0, '0.083333333333333', NULL, 'exclude', '28.43', 'amount', 88, 8, 'Movement across pressure book. Production young similar common show image.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(428, 'admin', 1, 'Acer Aspire 5', 'acer-aspire-5-rinK0g', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Lw782KZq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 624.07583333333, 0, '0.2', NULL, 'exclude', '2.91', 'amount', 19, 7, 'Tend type American meet. Involve all environmental at take heavy.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(429, 'admin', 1, 'Apple iPad 10th Gen', 'apple-ipad-10th-gen-LTyxAd', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=FG022MTt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 653.91683333333, 0, '0.083333333333333', NULL, 'exclude', '3.65', 'percent', 23, 8, 'Also half like middle dark involve lawyer meeting. Central newspaper crime.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(430, 'admin', 1, 'Sony Bravia 65 Inch OLED', 'sony-bravia-65-inch-oled-GIwOv8', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ws055ItP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 134.5835, 0, '0.11666666666667', NULL, 'exclude', '27.74', 'amount', 83, 5, 'Challenge executive from trial show yeah camera.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(431, 'admin', 1, 'Xiaomi Smart TV X 52', 'xiaomi-smart-tv-x-52-buxBRB', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Gg723lLw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 327.31916666667, 0, '0.28333333333333', NULL, 'exclude', '23.37', 'percent', 28, 5, 'Buy team personal conference citizen effort. But process song military media.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(432, 'admin', 1, 'Havells Induction Plate', 'havells-induction-plate-4iKQ9K', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ix659RpF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 25.245166666667, 0, '0.2', NULL, 'exclude', '3.4', 'percent', 99, 5, 'Do character high the. Mission coach deep have to investment film.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(433, 'admin', 1, 'TCL 4K Smart TV', 'tcl-4k-smart-tv-xyJRZX', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=WV107lef', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 966.71166666667, 0, '0.28333333333333', NULL, 'exclude', '21.81', 'amount', 62, 2, 'Policy company several a. Each car among anyone pay expert season risk.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(434, 'admin', 1, 'Sony WF-C500 Earbuds', 'sony-wf-c500-earbuds-oe6xMv', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=HJ397Bcr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 154.30366666667, 0, '0.1', NULL, 'exclude', '25.42', 'amount', 8, 7, 'Skill window probably.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(435, 'admin', 1, 'Mi Smart Speaker', 'mi-smart-speaker-eDWCLX', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=vS486XAi', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 514.8545, 0, '0.28333333333333', NULL, 'exclude', '21.07', 'percent', 36, 6, 'Morning last benefit team across. Resource his parent.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(436, 'admin', 1, 'Logitech MX Master 3', 'logitech-mx-master-3-nhf0ZO', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lN985YIC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 144.94533333333, 0, '0.18333333333333', NULL, 'exclude', '1.27', 'amount', 16, 7, 'Practice lot baby in from give election item.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(437, 'admin', 1, 'Kingston 128GB USB 3.2', 'kingston-128gb-usb-32-hQFxtP', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=xZ448NUA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 263.218, 0, '0.2', NULL, 'exclude', '25.58', 'percent', 7, 2, 'Adult world actually minute much.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(438, 'admin', 1, 'Samsung Galaxy S22 Ultra 78', 'samsung-galaxy-s22-ultra-78-RHcxR7', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=sx299UKf', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 99.727666666667, 0, '0.16666666666667', NULL, 'exclude', '23.72', 'amount', 39, 7, 'Role might beat issue child that believe.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(439, 'admin', 1, 'Bosch 655L Fridge 49', 'bosch-655l-fridge-49-579RjH', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=tf255azc', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 198.85483333333, 0, '0.26666666666667', NULL, 'exclude', '26.55', 'amount', 58, 5, 'Military side staff better size. Or interest TV decide without.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(440, 'admin', 1, 'Panasonic 43 Inch TV', 'panasonic-43-inch-tv-r68YCX', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=SV474HvR', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1229.1003333333, 0, '0.1', NULL, 'exclude', '8.65', 'amount', 14, 7, 'And tough dog. Television campaign wall drop month.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(441, 'admin', 1, 'Redmi Note 11', 'redmi-note-11-udJyWq', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=rF164Geo', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 17.092333333333, 0, '0.26666666666667', NULL, 'exclude', '21.49', 'amount', 83, 4, 'Cut cut morning describe century truth mouth.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(442, 'admin', 1, 'Panasonic 6kg Washer', 'panasonic-6kg-washer-EdtX3m', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=PB442UTe', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 302.50916666667, 0, '0.16666666666667', NULL, 'exclude', '20.71', 'percent', 84, 6, 'Campaign natural sea security recent offer possible among.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(443, 'admin', 1, 'Lenovo Tab P12 Pro', 'lenovo-tab-p12-pro-23x22K', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pR539oNc', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 170.6335, 0, '0.16666666666667', NULL, 'exclude', '9.23', 'percent', 76, 8, 'Bit for his sit sure. Quickly southern your.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(444, 'admin', 1, 'D-Link Dual Band Router', 'd-link-dual-band-router-BFMEiN', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=gI286Iyk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 570.4145, 0, '0.11666666666667', NULL, 'exclude', '6.94', 'amount', 29, 9, 'Seem color change feeling. Performance indicate those free reality change.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(445, 'admin', 1, 'OnePlus Pad 4', 'oneplus-pad-4-BLONqZ', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=vZ237EMG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 963.1515, 0, '0.15', NULL, 'exclude', '18.84', 'percent', 20, 1, 'Several order leave commercial however. Street consumer everything owner.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(446, 'admin', 1, 'Crucial X8 2TB SSD', 'crucial-x8-2tb-ssd-CgiMcH', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Sq484tqz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 132.05116666667, 0, '0.13333333333333', NULL, 'exclude', '24.37', 'percent', 74, 8, 'Including these thousand claim different Mr hold. Speech attention skin.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(447, 'admin', 1, 'Panasonic 338L Fridge', 'panasonic-338l-fridge-Bj81p7', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TU992jxu', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 755.16933333333, 0, '0.13333333333333', NULL, 'exclude', '11.98', 'percent', 53, 5, 'Series everyone Republican something tell act.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(448, 'admin', 1, 'Prestige Induction Stove', 'prestige-induction-stove-miLcLw', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=vw278cNl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 811.41283333333, 0, '0.18333333333333', NULL, 'exclude', '27.82', 'amount', 7, 1, 'Case born property gun. Baby design woman management system free daughter.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(449, 'admin', 1, 'Amazfit GTS 4', 'amazfit-gts-4-R1yI8D', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Lb853Bik', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 369.92316666667, 0, '0.16666666666667', NULL, 'exclude', '29.53', 'percent', 67, 6, 'Hope as the animal hotel nearly. Interesting science could market.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(450, 'admin', 1, 'JBL Charge 5', 'jbl-charge-5-NFDpxk', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Bi156tBM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 430.08816666667, 0, '0.3', NULL, 'exclude', '25.61', 'percent', 12, 8, 'Customer south leader painting follow network.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(451, 'admin', 1, 'Bosch Top Load Washer', 'bosch-top-load-washer-hX70vo', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=YB747Jvc', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 483.44533333333, 0, '0.11666666666667', NULL, 'exclude', '19.31', 'percent', 5, 6, 'Network free husband fight his born he. Artist method my force imagine hold.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(452, 'admin', 1, 'Honor Pad X9', 'honor-pad-x9-yMoVM2', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=JJ998GCr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 933.1205, 0, '0.18333333333333', NULL, 'exclude', '19.34', 'amount', 30, 8, 'Wrong kitchen one thus catch number. Pretty debate skin.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(453, 'admin', 1, 'LG OLED Smart TV', 'lg-oled-smart-tv-xF83t9', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Cj708LrE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 612.02083333333, 0, '0.16666666666667', NULL, 'exclude', '20.5', 'amount', 47, 3, 'Citizen because cost could wait process front.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `digital_file_ready_storage_type`, `images`, `color_image`, `thumbnail`, `thumbnail_storage_type`, `preview_file`, `preview_file_storage_type`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `digital_product_file_types`, `digital_product_extensions`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(454, 'admin', 1, 'Pigeon Gas Stove', 'pigeon-gas-stove-r27tlq', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Md894ZXv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1166.988, 0, '0.18333333333333', NULL, 'exclude', '13.31', 'percent', 83, 1, 'Policy financial play happy kind notice.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(455, 'admin', 1, 'Poco M6 Pro', 'poco-m6-pro-yCnblz', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=UH178SVN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 258.52233333333, 0, '0.16666666666667', NULL, 'exclude', '1.57', 'percent', 5, 1, 'Turn investment main describe. Contain enter edge often most key.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(456, 'admin', 1, 'Orient Electric Fan', 'orient-electric-fan-4v5Ezv', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=aT532Mum', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1064.6543333333, 0, '0.25', NULL, 'exclude', '9.06', 'amount', 9, 7, 'Year sit institution Democrat foot. Thing next opportunity herself.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(457, 'admin', 1, 'SanDisk Dual Drive', 'sandisk-dual-drive-39LdGZ', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=gI676tct', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 840.02233333333, 0, '0.15', NULL, 'exclude', '23.97', 'percent', 58, 10, 'Capital nearly speak technology word it your. Meet end fall see.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(458, 'admin', 1, 'Havells Induction Plate 29', 'havells-induction-plate-29-mSmgeq', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Zr116hWd', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 775.75366666667, 0, '0.2', NULL, 'exclude', '17.58', 'amount', 41, 4, 'Feel sign support piece subject college hard. During enough important pattern.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(459, 'admin', 1, 'Samsung 253L Double Door Fridge', 'samsung-253l-double-door-fridge-cQxRJS', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=qQ253nyH', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 127.0875, 0, '0.25', NULL, 'exclude', '23.99', 'percent', 45, 8, 'Government during clearly goal institution.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(460, 'admin', 1, 'Syska Smart Light', 'syska-smart-light-g74nSj', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=BE340qms', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 17.231, 0, '0.23333333333333', NULL, 'exclude', '13.2', 'percent', 65, 7, 'Begin nice community be reflect. Return century drug.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(461, 'admin', 1, 'Voltas 1.5 Ton AC', 'voltas-15-ton-ac-JtaO75', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=xE045rQp', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 373.9825, 0, '0.26666666666667', NULL, 'exclude', '11.85', 'percent', 80, 7, 'Western serious address toward. Sing food center. Everything red heavy.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(462, 'admin', 1, 'Google Nest Mini 28', 'google-nest-mini-28-KSp6NT', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ig851ROM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 191.723, 0, '0.13333333333333', NULL, 'exclude', '14.69', 'amount', 96, 8, 'Affect expect impact. Food light meeting machine enjoy. Easy million east.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(463, 'admin', 1, 'Whirlpool 240L Fridge 49', 'whirlpool-240l-fridge-49-6W28Oo', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ge852WIU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 751.1295, 0, '0.1', NULL, 'exclude', '16.81', 'percent', 11, 9, 'Whatever American relate move. Not how check the.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(464, 'admin', 1, 'Google Nest Mini', 'google-nest-mini-YIjEUB', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cA125WjQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 877.61333333333, 0, '0.25', NULL, 'exclude', '25.82', 'percent', 50, 5, 'Growth point feeling wrong rich that. Month film feel lead party receive.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(465, 'admin', 1, 'Havells Pedestal Fan', 'havells-pedestal-fan-iNWHW9', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=CR991dxk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 686.09, 0, '0.28333333333333', NULL, 'exclude', '3.65', 'amount', 10, 8, 'Ten week later. On organization somebody send us.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(466, 'admin', 1, 'Xiaomi Smart TV X 77', 'xiaomi-smart-tv-x-77-STItQD', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Te397hrj', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 307.12433333333, 0, '0.16666666666667', NULL, 'exclude', '4.65', 'percent', 57, 9, 'Huge around bank or. Fish state word car international draw treat job.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(467, 'admin', 1, 'Seagate 2TB Portable HDD', 'seagate-2tb-portable-hdd-1bvWJd', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=dV233LIl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1094.6363333333, 0, '0.083333333333333', NULL, 'exclude', '15.98', 'amount', 53, 6, 'Hour listen traditional owner positive I. Blue deep computer born.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(468, 'admin', 1, 'Khaitan Turbo Fan', 'khaitan-turbo-fan-HfaRad', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cZ323Ukb', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 877.80833333333, 0, '0.28333333333333', NULL, 'exclude', '7.57', 'percent', 91, 10, 'Remain son whose reality base either kitchen. Mind still leave answer reduce.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(469, 'admin', 1, 'OnePlus Pad', 'oneplus-pad-pC93qI', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=az866eom', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 688.7945, 0, '0.18333333333333', NULL, 'exclude', '6.05', 'amount', 51, 5, 'Measure station spring strong drive direction.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(470, 'admin', 1, 'JBL Bar 2.1 Soundbar', 'jbl-bar-21-soundbar-5m9j8o', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Wc903Pxt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 569.93733333333, 0, '0.16666666666667', NULL, 'exclude', '15.25', 'percent', 72, 9, 'Write late marriage. Tell one another along condition.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(471, 'admin', 1, 'LG 190L Single Door Refrigerator', 'lg-190l-single-door-refrigerator-KgsNYC', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=No634sjF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 597.0555, 0, '0.25', NULL, 'exclude', '3.64', 'amount', 45, 9, 'Change light also marriage interest reason.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(472, 'admin', 1, 'Fujifilm X-T30 II', 'fujifilm-x-t30-ii-TNzXlk', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Tr822TkS', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1080.6756666667, 0, '0.15', NULL, 'exclude', '3.69', 'percent', 86, 9, 'Lot arm whose. Live they determine half. Arm bill first clearly gas unit upon.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(473, 'admin', 1, 'Nikon Z50', 'nikon-z50-v9ZAvi', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Bc948rYv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1153.1961666667, 0, '0.1', NULL, 'exclude', '9.87', 'percent', 35, 6, 'Event design special pay. Sister pass western eye.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(474, 'admin', 1, 'Philips Beard Trimmer', 'philips-beard-trimmer-lkJioW', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=KC536jCz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 26.105833333333, 0, '0.16666666666667', NULL, 'exclude', '19.06', 'percent', 89, 6, 'Card Republican edge Congress measure all.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(475, 'admin', 1, 'Samsung 324L Inverter Fridge', 'samsung-324l-inverter-fridge-pOtXzv', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cP378jiv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 150.00516666667, 0, '0.2', NULL, 'exclude', '2.1', 'percent', 87, 10, 'Street strategy protect skill camera social culture.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(476, 'admin', 1, 'Realme Pad Mini', 'realme-pad-mini-U5akRD', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lm601sHV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 791.04383333333, 0, '0.083333333333333', NULL, 'exclude', '23.66', 'amount', 78, 4, 'Table stop husband. Improve only away debate. Clear give sell.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(477, 'admin', 1, 'JBL Charge 5 43', 'jbl-charge-5-43-o51Rwl', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 3, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ru874lBZ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 166.16866666667, 0, '0.25', NULL, 'exclude', '8.26', 'percent', 32, 6, 'Send number town nature community discussion. To full clear enter couple.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(478, 'admin', 1, 'HP Victus Gaming Laptop 27', 'hp-victus-gaming-laptop-27-OHbyjk', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Gc301bxl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1065.9841666667, 0, '0.21666666666667', NULL, 'exclude', '22.37', 'amount', 100, 10, 'Very blood source minute fire myself reflect. Option body lot price.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(479, 'admin', 1, 'LG Fully Auto 6.5kg', 'lg-fully-auto-65kg-QjRKrV', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ne099HMI', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 651.08183333333, 0, '0.2', NULL, 'exclude', '15.14', 'percent', 65, 6, 'Time always often two girl. Activity actually concern into machine.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(480, 'admin', 1, 'JBL Bluetooth Speaker', 'jbl-bluetooth-speaker-6hCrZU', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=We163bug', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1015.2851666667, 0, '0.083333333333333', NULL, 'exclude', '20.44', 'percent', 79, 2, 'Order officer another present hit behind long staff.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(481, 'admin', 1, 'Kent Rice Cooker', 'kent-rice-cooker-uvihbi', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=hn288PsP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 596.0665, 0, '0.23333333333333', NULL, 'exclude', '27.21', 'percent', 86, 9, 'Already defense nation according. Total three small card go identify ago.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(482, 'admin', 1, 'Sony WF-C500 Earbuds 76', 'sony-wf-c500-earbuds-76-Vl6Ie1', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fx217yXg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 158.55966666667, 0, '0.16666666666667', NULL, 'exclude', '3.87', 'percent', 76, 8, 'Peace star this deep. Pass stock set who side.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(483, 'admin', 1, 'iPhone 13', 'iphone-13-a2KR98', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=FG746pjW', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1140.5448333333, 0, '0.3', NULL, 'exclude', '3.46', 'amount', 20, 7, 'Popular interesting alone hot fact. Glass responsibility these kitchen.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(484, 'admin', 1, 'Sony Alpha Mirrorless Camera', 'sony-alpha-mirrorless-camera-VAGof6', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pT827WVp', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1216.8006666667, 0, '0.15', NULL, 'exclude', '28.01', 'percent', 30, 1, 'Pm toward pick seat enter control answer. Water wear enter ball loss peace.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(485, 'admin', 1, 'Wipro Smart LED', 'wipro-smart-led-AS2iKs', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Hb919FOV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1091.7703333333, 0, '0.16666666666667', NULL, 'exclude', '2.03', 'percent', 97, 10, 'Left film democratic position hope wife.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(486, 'admin', 1, 'IFB Grill Oven', 'ifb-grill-oven-U5VzT1', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=jE048axk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1225.6555, 0, '0.2', NULL, 'exclude', '28.65', 'amount', 9, 5, 'Much detail already. Light month fight public enter.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(487, 'admin', 1, 'Whirlpool 240L Fridge', 'whirlpool-240l-fridge-vHmTz7', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zw986JPQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 777.41933333333, 0, '0.18333333333333', NULL, 'exclude', '28.36', 'amount', 73, 8, 'Ever power specific home.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(488, 'admin', 1, 'Xiaomi Smart TV X', 'xiaomi-smart-tv-x-57Uncn', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=dt187IqK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1104.4733333333, 0, '0.16666666666667', NULL, 'exclude', '3.26', 'percent', 83, 3, 'Not face perform forward arm. Deal sister study since.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(489, 'admin', 1, 'Pigeon Gas Stove 27', 'pigeon-gas-stove-27-UtBPoT', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=bB167eGE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1142.3001666667, 0, '0.15', NULL, 'exclude', '6.63', 'percent', 20, 8, 'Baby rich car forward. Tell baby customer clearly kitchen better third.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(490, 'admin', 1, 'Whirlpool 7kg Washing Machine', 'whirlpool-7kg-washing-machine-Cyy5El', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=vU089YvS', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1005.4088333333, 0, '0.18333333333333', NULL, 'exclude', '7.74', 'percent', 9, 5, 'Source shake can travel pass close represent.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(491, 'admin', 1, 'DJI Osmo Pocket 3', 'dji-osmo-pocket-3-ldUiCe', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Kw038rrP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 493.24216666667, 0, '0.28333333333333', NULL, 'exclude', '8.03', 'amount', 49, 9, 'Instead at money pick view. Baby research scene high drop.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(492, 'admin', 1, 'Insta360 X3', 'insta360-x3-C3onsT', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AC990taA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 443.70766666667, 0, '0.25', NULL, 'exclude', '27.64', 'amount', 63, 10, 'Have specific television million total. Huge since well fish involve power.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(493, 'admin', 1, 'Motorola Edge 40', 'motorola-edge-40-b1Ja9I', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ky367yKQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 22.8635, 0, '0.3', NULL, 'exclude', '26.76', 'amount', 29, 1, 'Product they executive. Likely product ability worker.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(494, 'admin', 1, 'Samsung T7 SSD 1TB 75', 'samsung-t7-ssd-1tb-75-561FMa', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=om729NIQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 223.86383333333, 0, '0.21666666666667', NULL, 'exclude', '3.05', 'percent', 37, 6, 'Suddenly plant never. Former half option camera say smile.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(495, 'admin', 1, 'Whirlpool Washing Machine', 'whirlpool-washing-machine-lHJGni', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=eF753FMa', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 43.0355, 0, '0.1', NULL, 'exclude', '14.72', 'percent', 27, 9, 'Financial up upon best career product play.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(496, 'admin', 1, 'Crompton Aura Fan', 'crompton-aura-fan-YnBdOj', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=yi240svq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 448.7165, 0, '0.28333333333333', NULL, 'exclude', '5.26', 'amount', 81, 8, 'Decide democratic everybody probably goal water feeling.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(497, 'admin', 1, 'Redgear Wireless Mouse', 'redgear-wireless-mouse-CNrU8g', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=MS695jNK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 819.87616666667, 0, '0.26666666666667', NULL, 'exclude', '0.99', 'percent', 98, 2, 'Election these of form such stuff experience. Everything drive night white.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(498, 'admin', 1, 'Redmi 10 Prime', 'redmi-10-prime-YbsAnt', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Rq023Hnl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 712.1395, 0, '0.1', NULL, 'exclude', '21.47', 'percent', 74, 1, 'Star level him trip example modern. Win production major involve power work.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(499, 'admin', 1, 'boAt Aavante Bar 2000', 'boat-aavante-bar-2000-UIAjxD', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Fv145xAh', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 135.13783333333, 0, '0.11666666666667', NULL, 'exclude', '5.5', 'amount', 92, 8, 'Fall vote development apply meeting city. Strong attack area.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(500, 'admin', 1, 'Syska Hair Dryer', 'syska-hair-dryer-Glg6wA', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Xk389Qvc', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 912.73366666667, 0, '0.23333333333333', NULL, 'exclude', '20.01', 'percent', 7, 4, 'Rise miss bad minute job set. Summer outside behind pick.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(501, 'admin', 1, 'Butterfly Mixer Grinder 66', 'butterfly-mixer-grinder-66-SyRI9l', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kZ833mBt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 210.39016666667, 0, '0.18333333333333', NULL, 'exclude', '20.07', 'percent', 53, 10, 'Apply skill my study different look. Tax ten now catch nothing at use.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(502, 'admin', 1, 'Asus Vivobook 16', 'asus-vivobook-16-9QB2lu', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Uo837fao', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 786.15366666667, 0, '0.25', NULL, 'exclude', '28.78', 'percent', 13, 8, 'Suggest often common marriage. Car opportunity large important size season.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(503, 'admin', 1, 'Realme Pad Slim', 'realme-pad-slim-cnkSPm', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=rp026vrV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1170.0788333333, 0, '0.18333333333333', NULL, 'exclude', '25.98', 'amount', 43, 9, 'Easy response reflect successful. According member she.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(504, 'admin', 1, 'Samsung Galaxy S22 Ultra', 'samsung-galaxy-s22-ultra-kcwaka', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ef144STX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 33.607, 0, '0.1', NULL, 'exclude', '10', 'amount', 48, 8, 'Dark court act he debate actually sport. Trade recently moment particular drug.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(505, 'admin', 1, 'Amazon Fire HD 10 58', 'amazon-fire-hd-10-58-en0ni4', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ff935oEU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 97.308166666667, 0, '0.11666666666667', NULL, 'exclude', '8.17', 'amount', 74, 2, 'Source subject short just evidence executive sell.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(506, 'admin', 1, 'Samsung Crystal UHD TV', 'samsung-crystal-uhd-tv-tBNfqJ', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Fn324BdQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1203.3715, 0, '0.23333333333333', NULL, 'exclude', '3.65', 'percent', 25, 10, 'But data again factor. Yes account now difference specific.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(507, 'admin', 1, 'Kent Water Purifier', 'kent-water-purifier-aM5ZNq', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=LZ043RUr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 567.93816666667, 0, '0.26666666666667', NULL, 'exclude', '21.39', 'amount', 80, 7, 'Ask movement become point. Develop represent night night pattern author.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(508, 'admin', 1, 'Morphy Richards OTG', 'morphy-richards-otg-znsrgi', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kQ742jgd', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1031.7223333333, 0, '0.083333333333333', NULL, 'exclude', '2.6', 'percent', 8, 9, 'In cold buy mission people account. Rate morning manager my important.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(509, 'admin', 1, 'Panasonic Nose Trimmer', 'panasonic-nose-trimmer-Z70Ghh', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ae159rdQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 103.87266666667, 0, '0.1', NULL, 'exclude', '22.76', 'percent', 90, 7, 'Effect goal low administration material movie dog.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(510, 'admin', 1, 'HP USB Mouse', 'hp-usb-mouse-qDa9ZL', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=HU619DsQ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 941.24933333333, 0, '0.23333333333333', NULL, 'exclude', '28.01', 'percent', 18, 7, 'Walk cut it state. Wait way next forget yourself already.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(511, 'admin', 1, 'Bajaj Microwave Oven', 'bajaj-microwave-oven-Jobfsa', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Bk276lgi', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 298.73716666667, 0, '0.15', NULL, 'exclude', '23.83', 'amount', 60, 3, 'Ball ask pattern act modern situation card.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(512, 'admin', 1, 'Fire-Boltt Phoenix', 'fire-boltt-phoenix-WmdSXL', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=OQ773ifC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 506.113, 0, '0.25', NULL, 'exclude', '19.13', 'percent', 88, 6, 'Source pattern wrong today agreement. Food everyone hard discuss food.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(513, 'admin', 1, 'boAt Airdopes 141', 'boat-airdopes-141-euBwFM', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AH127XFr', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 139.9705, 0, '0.16666666666667', NULL, 'exclude', '17.93', 'percent', 88, 5, 'Face thousand meet save discuss. Instead break each.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(514, 'admin', 1, 'TP-Link WiFi Router', 'tp-link-wifi-router-RS5NHG', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=qn877Ndm', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 146.00733333333, 0, '0.3', NULL, 'exclude', '29.44', 'percent', 89, 7, 'Such look level will. Black police site between.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(515, 'admin', 1, 'Voltas Beko Fridge', 'voltas-beko-fridge-60fq4F', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Hy346zWD', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1128.7161666667, 0, '0.16666666666667', NULL, 'exclude', '8.88', 'amount', 97, 2, 'Rule book poor cultural choose old. Read baby building man little and.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(516, 'admin', 1, 'Noise Buds VS104', 'noise-buds-vs104-OhOQmN', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=SV057GbE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 781.58533333333, 0, '0.1', NULL, 'exclude', '3.93', 'amount', 8, 6, 'Cut seem hear step page dark. Campaign stock picture option enough can.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(517, 'admin', 1, 'GoPro Hero 11', 'gopro-hero-11-hejcT5', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=eH744SxF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1220.9121666667, 0, '0.2', NULL, 'exclude', '23.22', 'percent', 37, 7, 'Well me recently born table accept contain.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(518, 'admin', 1, 'Canon M50 Mark II', 'canon-m50-mark-ii-dHsP64', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wx869irl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 59.6245, 0, '0.16666666666667', NULL, 'exclude', '5.51', 'amount', 61, 5, 'International expect capital commercial company.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(519, 'admin', 1, 'Canon EOS 1500D DSLR', 'canon-eos-1500d-dslr-jFpypF', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=SL082neF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 67.938333333333, 0, '0.25', NULL, 'exclude', '6.83', 'percent', 17, 2, 'Throw race type suffer listen plan. First spend world not prove adult.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(520, 'admin', 1, 'Apple Watch SE', 'apple-watch-se-5Io3lU', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=PQ062Ibn', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 500.72633333333, 0, '0.26666666666667', NULL, 'exclude', '10.53', 'amount', 79, 4, 'Others for price people in account near. Others night Congress seek each.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(521, 'admin', 1, 'OnePlus Nord CE 3', 'oneplus-nord-ce-3-tHY3AB', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nQ072RgW', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 502.60266666667, 0, '0.16666666666667', NULL, 'exclude', '24.23', 'percent', 38, 8, 'Across consumer military free among. Hot stuff inside animal possible music.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(522, 'admin', 1, 'Dell Inspiron 15', 'dell-inspiron-15-PzJVsR', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=FP968HLk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 412.68166666667, 0, '0.11666666666667', NULL, 'exclude', '7.12', 'percent', 61, 1, 'Market certain study. Smile century federal travel education after use.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(523, 'admin', 1, 'Prestige Omega Non-Stick', 'prestige-omega-non-stick-i4PFSM', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=oY002abz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 204.06333333333, 0, '0.28333333333333', NULL, 'exclude', '21.42', 'amount', 77, 8, 'Member return case to southern. Boy him discussion cold drug matter power.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(524, 'admin', 1, 'Apple iPad Air M1', 'apple-ipad-air-m1-wnxsep', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=oU972hNt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 862.16333333333, 0, '0.18333333333333', NULL, 'exclude', '27.08', 'amount', 83, 10, 'Tough describe identify goal hour often trip.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(525, 'admin', 1, 'Dell XPS 13', 'dell-xps-13-O5GExY', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Hr158xlS', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1027.0126666667, 0, '0.3', NULL, 'exclude', '13.19', 'amount', 66, 9, 'Occur wear watch same. Price success mouth. Letter animal data project.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(526, 'admin', 1, 'Netgear AC1200 Router', 'netgear-ac1200-router-Cq9rW2', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=zV550zCq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 563.92966666667, 0, '0.28333333333333', NULL, 'exclude', '12.35', 'amount', 83, 4, 'Best study chance condition. Why race including do charge.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(527, 'admin', 1, 'LG 420L Side-by-Side Fridge', 'lg-420l-side-by-side-fridge-Rka8sb', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AW316bcu', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 495.62566666667, 0, '0.2', NULL, 'exclude', '13.04', 'amount', 100, 6, 'Industry of serve program space. Increase admit night skin computer.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(528, 'admin', 1, 'Bajaj Induction Cooktop', 'bajaj-induction-cooktop-4YAHyp', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TB614zWo', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1164.0841666667, 0, '0.3', NULL, 'exclude', '2.34', 'percent', 70, 2, 'Growth partner against. Lawyer season certainly eye. Argue Mr seven poor star.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(529, 'admin', 1, 'iPhone 12 Mini', 'iphone-12-mini-3QMJcd', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Cx001Trq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 215.5955, 0, '0.11666666666667', NULL, 'exclude', '6.12', 'percent', 95, 8, 'Risk turn near east really fish pattern far. Machine two seem attack positive.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(530, 'admin', 1, 'Godrej 185L Fridge', 'godrej-185l-fridge-EyPdcz', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=YI150klK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 94.800666666667, 0, '0.25', NULL, 'exclude', '23.87', 'amount', 33, 4, 'School off town. Cover should lose add decade significant.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `digital_file_ready_storage_type`, `images`, `color_image`, `thumbnail`, `thumbnail_storage_type`, `preview_file`, `preview_file_storage_type`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `digital_product_file_types`, `digital_product_extensions`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(531, 'admin', 1, 'Blue Star Air Cooler', 'blue-star-air-cooler-ibLkuk', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Sb402AOt', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 337.58066666667, 0, '0.15', NULL, 'exclude', '18.96', 'amount', 66, 5, 'Could I citizen sing inside.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(532, 'admin', 1, 'Lexar 128GB Memory Card', 'lexar-128gb-memory-card-BT6RAe', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=gW673qIq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 730.36766666667, 0, '0.21666666666667', NULL, 'exclude', '9.56', 'amount', 44, 5, 'Dream despite large. What keep benefit parent remember side.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(533, 'admin', 1, 'Haier Inverter Washer', 'haier-inverter-washer-fp0NvW', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=oy262Abb', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 855.76133333333, 0, '0.23333333333333', NULL, 'exclude', '17.51', 'amount', 80, 6, 'Should out fly of member all natural.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(534, 'admin', 1, 'Sony Alpha Mirrorless Camera 77', 'sony-alpha-mirrorless-camera-77-Kc8fTG', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ng822bOT', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 790.987, 0, '0.1', NULL, 'exclude', '5.04', 'amount', 54, 1, 'Country role everybody American which who second. Idea with partner goal.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(535, 'admin', 1, 'Acer Boundless TV 3', 'acer-boundless-tv-3-QNaywK', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=tA177irl', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 580.224, 0, '0.3', NULL, 'exclude', '13.92', 'percent', 76, 9, 'Part send meeting certain. Team theory practice kind. Car east personal former.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(536, 'admin', 1, 'Philips Mixer Grinder', 'philips-mixer-grinder-3crvWJ', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Pm200XsY', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 872.81066666667, 0, '0.18333333333333', NULL, 'exclude', '17.76', 'amount', 40, 10, 'Most next thank. Television want such against try such.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(537, 'admin', 1, 'Amazon Echo Dot 5', 'amazon-echo-dot-5-Y2Ojbq', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=tp657uGx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 321.3055, 0, '0.11666666666667', NULL, 'exclude', '9.37', 'amount', 91, 5, 'Share think character city number. Food discuss animal.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(538, 'admin', 1, 'Onida Semi Auto Washer', 'onida-semi-auto-washer-kNiIyz', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ms023JdL', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 899.078, 0, '0.1', NULL, 'exclude', '5.28', 'amount', 84, 7, 'Full collection thank suffer mind cell. Inside sound age agree.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(539, 'admin', 1, 'Prestige Electric Kettle', 'prestige-electric-kettle-iWLg8o', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AN955mCE', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1028.7606666667, 0, '0.21666666666667', NULL, 'exclude', '11.93', 'amount', 66, 1, 'East like experience herself try eat.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(540, 'admin', 1, 'Samsung Galaxy S23', 'samsung-galaxy-s23-eEHeDC', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cW867BXi', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1030.8726666667, 0, '0.13333333333333', NULL, 'exclude', '10.33', 'percent', 14, 9, 'Very middle cup state last father ever. Customer piece much.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(541, 'admin', 1, 'MSI Modern 15', 'msi-modern-15-3Qf6Dd', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ow185RKb', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 182.72483333333, 0, '0.25', NULL, 'exclude', '29.67', 'amount', 78, 8, 'Mission shoulder head her again at.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(542, 'admin', 1, 'Panasonic Lumix G7', 'panasonic-lumix-g7-pkGiYd', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lM873ztK', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 556.89483333333, 0, '0.16666666666667', NULL, 'exclude', '12.77', 'percent', 65, 6, 'Water heavy give their wear international nice. Allow teacher effect they.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(543, 'admin', 1, 'Haier 195L Fridge 52', 'haier-195l-fridge-52-D8TXZx', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Mi423BcH', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 215.082, 0, '0.3', NULL, 'exclude', '5.15', 'percent', 24, 7, 'Break within direction determine. Paper analysis field again evening.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(544, 'admin', 1, 'Ambrane Powerbank 10000mAh', 'ambrane-powerbank-10000mah-YfphkD', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wC946ENN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1103.6746666667, 0, '0.2', NULL, 'exclude', '26.61', 'amount', 73, 6, 'Development result professional believe worry wrong.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(545, 'admin', 1, 'Zebronics BT Soundbar', 'zebronics-bt-soundbar-Qq0JD6', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Kq300OBW', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 936.80616666667, 0, '0.18333333333333', NULL, 'exclude', '24.35', 'amount', 76, 4, 'Energy able far production house. Catch international miss against speech.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(546, 'admin', 1, 'Redmi Note 12 70', 'redmi-note-12-70-L96hDi', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=TJ249xCx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 203.54933333333, 0, '0.26666666666667', NULL, 'exclude', '26.4', 'amount', 26, 4, 'Inside our star rest special continue. Fast hair consumer challenge.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(547, 'admin', 1, 'Samsung T7 SSD 1TB', 'samsung-t7-ssd-1tb-1R1DR0', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=KI813Mer', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 70.407666666667, 0, '0.26666666666667', NULL, 'exclude', '26.6', 'amount', 18, 4, 'Area nothing number hard far friend son ability.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(548, 'admin', 1, 'HP 64GB Pendrive', 'hp-64gb-pendrive-VregN0', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ys153UpV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 948.24383333333, 0, '0.26666666666667', NULL, 'exclude', '21.46', 'amount', 10, 8, 'Term tough good main bring today sense.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(549, 'admin', 1, 'Haier 195L Fridge', 'haier-195l-fridge-k2JlsQ', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=wO932lEe', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 964.99433333333, 0, '0.1', NULL, 'exclude', '7.53', 'amount', 44, 10, 'Hour gas line fire enough send. Professional do control way.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(550, 'admin', 1, 'Realme Narzo 60', 'realme-narzo-60-bny7JR', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=dt908IXY', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 581.07283333333, 0, '0.3', NULL, 'exclude', '3.64', 'percent', 77, 6, 'Bad practice house eat on husband do.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(551, 'admin', 1, 'Asus ROG Strix G16', 'asus-rog-strix-g16-KVQd3T', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=EK680IHM', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 550.41066666667, 0, '0.28333333333333', NULL, 'exclude', '12', 'amount', 9, 10, 'Arm thousand full language. Seek decision risk skill.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(552, 'admin', 1, 'Amazon Fire HD 10 15', 'amazon-fire-hd-10-15-PcGBLH', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=bm840YeP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 968.91616666667, 0, '0.15', NULL, 'exclude', '0.84', 'percent', 73, 6, 'Out hot save your little produce.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(553, 'admin', 1, 'Luminous Vento Fan', 'luminous-vento-fan-nXtFOC', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Mu091piA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 865.10866666667, 0, '0.26666666666667', NULL, 'exclude', '9.79', 'percent', 27, 7, 'Republican positive floor wrong behind. Between trouble hotel high.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(554, 'admin', 1, 'SanDisk Extreme Pro SSD', 'sandisk-extreme-pro-ssd-wMw0Gy', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=aU939HFL', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 248.71083333333, 0, '0.16666666666667', NULL, 'exclude', '4.81', 'percent', 93, 4, 'Night foreign according military. Food into tax standard sea.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(555, 'admin', 1, 'Panasonic Nose Trimmer 34', 'panasonic-nose-trimmer-34-1d1Z7N', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=aJ545pTa', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 272.26983333333, 0, '0.13333333333333', NULL, 'exclude', '18.4', 'amount', 78, 3, 'North scientist nature small. Safe magazine thought purpose.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(556, 'admin', 1, 'Omron Thermometer', 'omron-thermometer-fnXCWG', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Le504EfU', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1052.6868333333, 0, '0.3', NULL, 'exclude', '24.15', 'amount', 14, 6, 'Between hospital gas ten. Such left scientist about fall.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(557, 'admin', 1, 'Onida Semi Auto Washer 86', 'onida-semi-auto-washer-86-aOdFfi', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=qn638VJG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 51.035, 0, '0.2', NULL, 'exclude', '15.93', 'amount', 42, 5, 'Five above weight. Degree military eight imagine call American.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(558, 'admin', 1, 'LG 32 Inch HD Ready', 'lg-32-inch-hd-ready-S6AMup', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Ui727QjN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 665.1475, 0, '0.13333333333333', NULL, 'exclude', '6.65', 'amount', 18, 7, 'Relationship recently enough within. Anything because space party wait own.', 0, NULL, '2025-07-19 06:38:48', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(559, 'admin', 1, 'Acer Boundless TV 3 37 63', 'acer-boundless-tv-3-37-63-9dVrHv', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=fF008cCH', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 929.114, 0, '0.26666666666667', NULL, 'exclude', '15.17', 'percent', 42, 1, 'Mouth door defense or away. Check direction other draw spend.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(560, 'admin', 1, 'Acer Boundless TV 3 37', 'acer-boundless-tv-3-37-P7O03F', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Nn038CLw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 566.6825, 0, '0.23333333333333', NULL, 'exclude', '17.49', 'percent', 17, 6, 'Morning grow art cell it. Effect despite she network develop.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(561, 'admin', 1, 'Nikon D5600 Camera', 'nikon-d5600-camera-FZNu3q', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lV941dWx', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 160.155, 0, '0.25', NULL, 'exclude', '13.19', 'amount', 61, 6, 'Letter one those side growth hand describe spring.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(562, 'admin', 1, 'Atomberg Renesa Smart Fan', 'atomberg-renesa-smart-fan-RRW5o5', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ur791GiO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1078.0155, 0, '0.15', NULL, 'exclude', '22.61', 'amount', 59, 2, 'Lot leader condition however executive language campaign.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(563, 'admin', 1, 'Lifelong Massager', 'lifelong-massager-Dj1MF4', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=EU600ZfP', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 475.39916666667, 0, '0.13333333333333', NULL, 'exclude', '24.21', 'percent', 99, 6, 'Carry before me any customer. Agent main behind.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(564, 'admin', 1, 'Garmin Forerunner 55', 'garmin-forerunner-55-m0z1bD', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Oj048jYa', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 906.56283333333, 0, '0.1', NULL, 'exclude', '3.8', 'amount', 85, 7, 'Material thus beautiful than. Fund real machine example official here art.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(565, 'admin', 1, 'ASUS Gaming Router', 'asus-gaming-router-0q8Jcn', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=aw961wVg', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 655.725, 0, '0.15', NULL, 'exclude', '24.61', 'amount', 44, 1, 'Campaign head audience whose thousand me.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(566, 'admin', 1, 'Dell Wireless Keyboard', 'dell-wireless-keyboard-t0ZEfR', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lm724sfV', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 191.11983333333, 0, '0.25', NULL, 'exclude', '17.63', 'percent', 27, 10, 'Let soldier population day kitchen artist.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(567, 'admin', 1, 'Ambrane Powerbank 20000mAh', 'ambrane-powerbank-20000mah-BjL3FS', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=eo921PdX', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1245.0336666667, 0, '0.3', NULL, 'exclude', '11.81', 'amount', 40, 3, 'Back join around. Party expect organization throughout television.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(568, 'admin', 1, 'Beurer Weighing Scale', 'beurer-weighing-scale-DXQ5Ls', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Sj802jhk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 714.34266666667, 0, '0.11666666666667', NULL, 'exclude', '7.35', 'percent', 50, 3, 'Hard majority my key fear start down. Occur sing still though.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(569, 'admin', 1, 'iPhone 14 Pro Max', 'iphone-14-pro-max-PEUt01', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=kW896QoN', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1130.8343333333, 0, '0.083333333333333', NULL, 'exclude', '13.27', 'amount', 33, 10, 'Shoulder collection water structure build.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(570, 'admin', 1, 'HP Victus Gaming Laptop', 'hp-victus-gaming-laptop-hPDpME', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=AY405CFG', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 901.627, 0, '0.21666666666667', NULL, 'exclude', '29.91', 'amount', 64, 5, 'Rather color statement. Word itself state car message wear risk institution.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(571, 'admin', 1, 'Samsung Galaxy Tab S8', 'samsung-galaxy-tab-s8-7qf7MV', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Pt227UUq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 85.7515, 0, '0.2', NULL, 'exclude', '11.94', 'amount', 35, 8, 'Sister right song. Series product office artist society very play.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(572, 'admin', 1, 'Zebronics Gaming Keyboard 66', 'zebronics-gaming-keyboard-66-bv2Xjw', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 4, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Hq844nLH', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1033.2371666667, 0, '0.21666666666667', NULL, 'exclude', '11.97', 'amount', 62, 2, 'Back contain along last official fill. The policy for none.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(573, 'admin', 1, 'Fastrack Reflex Vox', 'fastrack-reflex-vox-zSeSno', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=iX458HTO', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 849.93583333333, 0, '0.25', NULL, 'exclude', '16.01', 'percent', 46, 6, 'Grow explain argue realize popular account. Experience table market talk.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(574, 'admin', 1, 'Havells Hair Clipper', 'havells-hair-clipper-jcnw0C', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 3, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=md496Qyi', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 753.22283333333, 0, '0.18333333333333', NULL, 'exclude', '24.23', 'percent', 94, 9, 'Chance student represent difficult ago.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(575, 'admin', 1, 'Acer Aspire 5 11', 'acer-aspire-5-11-W2qQB7', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=oL793bZF', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 212.954, 0, '0.15', NULL, 'exclude', '6.17', 'percent', 44, 3, 'Hotel sort whether. Sing might perform main. Such idea number know along.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(576, 'admin', 1, 'Sony Bravia 55 Inch 4K TV', 'sony-bravia-55-inch-4k-tv-f0C3qA', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 3, 'item', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=rM998qPn', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 837.07, 0, '0.1', NULL, 'exclude', '14.35', 'amount', 67, 1, 'Decision idea continue people. Success arrive daughter ago.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(577, 'admin', 1, 'Asus ROG Strix G16 69', 'asus-rog-strix-g16-69-BgGkda', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=JK247qyC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 931.35066666667, 0, '0.26666666666667', NULL, 'exclude', '8.33', 'percent', 51, 9, 'Blue could begin tax base design. Turn through couple whom front without.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(578, 'admin', 1, 'HP Pavilion 15', 'hp-pavilion-15-kT1bDf', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ze340Brz', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 583.48583333333, 0, '0.21666666666667', NULL, 'exclude', '26.95', 'percent', 75, 5, 'Type or suggest table theory. Describe relationship space thus prepare strong.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(579, 'admin', 1, 'Samsung Galaxy Buds2', 'samsung-galaxy-buds2-qxRine', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=qc302ayf', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1187.8438333333, 0, '0.23333333333333', NULL, 'exclude', '28.19', 'amount', 19, 1, 'Year local middle set score page top. Avoid south deep charge support customer.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(580, 'admin', 1, 'IFB Front Load Washer', 'ifb-front-load-washer-wY39rO', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 5, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=XK779Efs', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 516.93316666667, 0, '0.16666666666667', NULL, 'exclude', '2.45', 'percent', 21, 9, 'Rich buy season bad cover off include usually. Firm of avoid purpose seem.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(581, 'admin', 1, 'Amazon Fire HD 10', 'amazon-fire-hd-10-WyoQJ8', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 4, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=lv911KXk', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 991.73466666667, 0, '0.083333333333333', NULL, 'exclude', '20.13', 'amount', 90, 9, 'Fire all else nation reality. Yourself behavior score soon.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(582, 'admin', 1, 'WD 1TB External HDD', 'wd-1tb-external-hdd-pcQuwE', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=YK652MsS', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 268.88583333333, 0, '0.28333333333333', NULL, 'exclude', '29.14', 'amount', 23, 4, 'Community year indicate big. Line quickly exist seek police customer.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(583, 'admin', 1, 'LG Convection Oven', 'lg-convection-oven-siR8vD', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=LQ311oZy', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 59.715166666667, 0, '0.16666666666667', NULL, 'exclude', '7.35', 'percent', 9, 5, 'So vote American fill point east.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(584, 'admin', 1, 'OnePlus 11R', 'oneplus-11r-CQWFnP', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 3, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=sU612FEB', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 977.97283333333, 0, '0.28333333333333', NULL, 'exclude', '11.86', 'amount', 77, 6, 'Expect staff relate team finally compare.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(585, 'admin', 1, 'Usha Mist Air Fan', 'usha-mist-air-fan-hQEDK5', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 5, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=PE079Wyq', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 146.32933333333, 0, '0.18333333333333', NULL, 'exclude', '24.59', 'amount', 40, 10, 'Without husband like only. Wide top actually agreement.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(586, 'admin', 1, 'Tenda 4G Router', 'tenda-4g-router-XzIATf', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=nw188fYf', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 886.284, 0, '0.23333333333333', NULL, 'exclude', '5.53', 'amount', 41, 9, 'Interview always stay. Step computer education student the executive game.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(587, 'admin', 1, 'Daikin Inverter AC', 'daikin-inverter-ac-atrdmv', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 5, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=ew546Keb', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 619.1395, 0, '0.18333333333333', NULL, 'exclude', '16.88', 'amount', 27, 8, 'Chair eye not present whom from how.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(588, 'admin', 1, 'OnePlus Nord Buds', 'oneplus-nord-buds-BCOrwl', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'kg', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cO044AYw', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 779.057, 0, '0.21666666666667', NULL, 'exclude', '4.35', 'amount', 22, 8, 'During life future key cup tell edge data. Adult relationship senior fly enter.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(589, 'admin', 1, 'Zebronics BT Soundbar 5', 'zebronics-bt-soundbar-5-budNhS', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 3, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Xo842zYb', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 681.54516666667, 0, '0.15', NULL, 'exclude', '7.42', 'percent', 55, 3, 'Imagine government sign suggest ago.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(590, 'admin', 1, 'Philips Hue Bulb', 'philips-hue-bulb-kvGxR6', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 2, 'box', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=uu372tEv', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 557.82683333333, 0, '0.2', NULL, 'exclude', '14.41', 'amount', 61, 8, 'Former true offer. Discover fear if everybody time instead situation.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(591, 'admin', 1, 'Vega Curling Wand', 'vega-curling-wand-PP2BmW', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Fo155oTh', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1078.9811666667, 0, '0.15', NULL, 'exclude', '13.72', 'amount', 81, 3, 'Student between development bag coach. Third Congress early hit everyone.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(592, 'admin', 1, 'Nova Hair Straightener', 'nova-hair-straightener-IHoOKU', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=af168fPJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 711.86333333333, 0, '0.11666666666667', NULL, 'exclude', '7.27', 'amount', 37, 2, 'Pm vote left officer especially education feeling. Effect treatment forward PM.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(593, 'admin', 1, 'boAt Wave Sigma 4', 'boat-wave-sigma-4-PNxgEs', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pack', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=IY031MNC', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 598.23416666667, 0, '0.15', NULL, 'exclude', '22.03', 'percent', 26, 10, 'Identify eat war leave brother rule. Contain on international game.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(594, 'admin', 1, 'Samsung Galaxy Tab S8 39', 'samsung-galaxy-tab-s8-39-UHnJxv', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'kg', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=hr621Zyu', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 1223.7981666667, 0, '0.28333333333333', NULL, 'exclude', '5.51', 'percent', 97, 6, 'Put cost institution safe. Then without lot check only.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(595, 'admin', 1, 'Samsung Galaxy Book3', 'samsung-galaxy-book3-fQOqqd', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 1, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=in056KpJ', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 171.50316666667, 0, '0.26666666666667', NULL, 'exclude', '24.29', 'amount', 22, 7, 'Leg somebody hospital hold day forward. Forget born TV leader.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(596, 'admin', 1, 'Poco X5 Pro', 'poco-x5-pro-DZ1W8f', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 5, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Nc261pTA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 328.75533333333, 0, '0.3', NULL, 'exclude', '19.87', 'amount', 96, 7, 'Doctor general send teach. Senior reduce put medical rather group any rise.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(597, 'admin', 1, 'iPhone 14 Pro Max 83', 'iphone-14-pro-max-83-eyxVNo', 'physical', '[{\"id\":\"1\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '1', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=rj450vry', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 649.97883333333, 0, '0.18333333333333', NULL, 'exclude', '0.74', 'amount', 92, 8, 'Crime every money even interesting newspaper blood.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(598, 'admin', 1, 'Noise Colorfit Icon 2', 'noise-colorfit-icon-2-ttvl09', 'physical', '[{\"id\":\"5\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '5', '0', '0', 1, 'item', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=cq724fVA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 559.82583333333, 0, '0.11666666666667', NULL, 'exclude', '3.02', 'percent', 27, 2, 'Lawyer business heavy. Example as ahead write difference.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(599, 'admin', 1, 'Pigeon Toaster', 'pigeon-toaster-moRqzC', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 4, 'pc', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=Pf937zWs', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 335.52433333333, 0, '0.18333333333333', NULL, 'exclude', '27.42', 'amount', 95, 5, 'Cover huge population. Leader industry today quality.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(600, 'admin', 1, 'Butterfly Mixer Grinder', 'butterfly-mixer-grinder-8IMygX', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 2, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=pK847ypy', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 666.18066666667, 0, '0.18333333333333', NULL, 'exclude', '8.51', 'amount', 78, 7, 'They issue yet wind truth minute trouble. Job behind low half.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(601, 'admin', 1, 'Samsung EVO Plus SD Card', 'samsung-evo-plus-sd-card-1bZVtu', 'physical', '[{\"id\":\"4\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '4', '0', '0', 1, 'box', 1, 0, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=oT049XcA', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 64.705666666667, 0, '0.25', NULL, 'exclude', '27.29', 'amount', 13, 2, 'My community look sure point former blood. Generation join executive cost.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(602, 'admin', 1, 'boAt Wave Sigma', 'boat-wave-sigma-bGGFqk', 'physical', '[{\"id\":\"2\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '2', '0', '0', 2, 'pc', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=dc488wiL', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 484.3585, 0, '0.1', NULL, 'exclude', '19.62', 'percent', 74, 2, 'Ok culture total per statement lot region. Someone husband watch already.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL),
(603, 'admin', 1, 'Dr Trust BP Monitor', 'dr-trust-bp-monitor-25dCta', 'physical', '[{\"id\":\"3\",\"position\":1},{\"id\":\"0\",\"position\":2},{\"id\":\"0\",\"position\":3}]', '3', '0', '0', 1, 'pack', 1, 1, NULL, NULL, 'public', '[\"def.png\"]', '', '', 'public', NULL, 'public', NULL, NULL, 'youtube', 'https://www.youtube.com/watch?v=PX629Vgh', '[]', 0, '[]', '[]', '[]', NULL, NULL, 0, 759.2325, 0, '0.3', NULL, 'exclude', '20.42', 'percent', 63, 10, 'Effect increase cup. Someone chance employee others.', 0, NULL, '2025-07-19 06:38:49', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, 0.00, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_compares`
--

CREATE TABLE `product_compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'customer_id',
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_compares`
--

INSERT INTO `product_compares` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 202, '2025-07-21 10:44:51', '2025-07-21 10:44:51'),
(2, 2, 201, '2025-07-22 09:50:25', '2025-07-22 09:50:25'),
(3, 19, 5, '2025-08-06 11:32:16', '2025-08-06 11:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `product_seos`
--

CREATE TABLE `product_seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `index` varchar(255) DEFAULT NULL,
  `no_follow` varchar(255) DEFAULT NULL,
  `no_image_index` varchar(255) DEFAULT NULL,
  `no_archive` varchar(255) DEFAULT NULL,
  `no_snippet` varchar(255) DEFAULT NULL,
  `max_snippet` varchar(255) DEFAULT NULL,
  `max_snippet_value` varchar(255) DEFAULT NULL,
  `max_video_preview` varchar(255) DEFAULT NULL,
  `max_video_preview_value` varchar(255) DEFAULT NULL,
  `max_image_preview` varchar(255) DEFAULT NULL,
  `max_image_preview_value` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_seos`
--

INSERT INTO `product_seos` (`id`, `product_id`, `title`, `description`, `index`, `no_follow`, `no_image_index`, `no_archive`, `no_snippet`, `max_snippet`, `max_snippet_value`, `max_video_preview`, `max_video_preview_value`, `max_image_preview`, `max_image_preview_value`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Yellow Shirt', 'Yellow Shirt', '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-07-18-6879de8d48bab.webp', '2025-07-18 05:41:33', '2025-07-18 05:41:33'),
(2, 203, NULL, NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', NULL, '2025-07-21 05:40:23', '2025-07-21 05:40:23'),
(3, 201, NULL, NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', NULL, '2025-07-22 07:57:49', '2025-07-22 07:57:49'),
(4, 202, NULL, NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', NULL, '2025-07-26 04:09:24', '2025-07-26 04:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publishing_houses`
--

CREATE TABLE `publishing_houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `approved_count` tinyint(4) NOT NULL DEFAULT 0,
  `denied_count` tinyint(4) NOT NULL DEFAULT 0,
  `amount` double(8,2) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `refund_reason` longtext NOT NULL,
  `images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_note` longtext DEFAULT NULL,
  `rejected_note` longtext DEFAULT NULL,
  `payment_info` longtext DEFAULT NULL,
  `change_by` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_statuses`
--

CREATE TABLE `refund_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `refund_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `change_by` varchar(191) DEFAULT NULL,
  `change_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_transactions`
--

CREATE TABLE `refund_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_for` varchar(191) DEFAULT NULL,
  `payer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_by` varchar(191) DEFAULT NULL,
  `paid_to` varchar(191) DEFAULT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `payment_status` varchar(191) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `transaction_type` varchar(191) DEFAULT NULL,
  `order_details_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restock_products`
--

CREATE TABLE `restock_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restock_products`
--

INSERT INTO `restock_products` (`id`, `product_id`, `variant`, `created_at`, `updated_at`) VALUES
(1, 203, NULL, '2025-07-22 11:16:02', '2025-07-22 11:16:02'),
(2, 201, NULL, '2025-07-23 07:26:00', '2025-07-23 07:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `restock_product_customers`
--

CREATE TABLE `restock_product_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restock_product_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restock_product_customers`
--

INSERT INTO `restock_product_customers` (`id`, `restock_product_id`, `customer_id`, `variant`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, '2025-07-22 11:16:02', '2025-07-22 11:16:02'),
(2, 2, 2, NULL, '2025-07-23 07:26:00', '2025-07-23 07:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachment`)),
  `rating` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_saved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_replies`
--

CREATE TABLE `review_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` int(11) NOT NULL,
  `added_by_id` int(11) DEFAULT NULL,
  `added_by` varchar(255) NOT NULL COMMENT 'customer, seller, admin, deliveryman',
  `reply_text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `robots_meta_contents`
--

CREATE TABLE `robots_meta_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `canonicals_url` varchar(255) DEFAULT NULL,
  `index` varchar(255) DEFAULT NULL,
  `no_follow` varchar(255) DEFAULT NULL,
  `no_image_index` varchar(255) DEFAULT NULL,
  `no_archive` varchar(255) DEFAULT NULL,
  `no_snippet` varchar(255) DEFAULT NULL,
  `max_snippet` varchar(255) DEFAULT NULL,
  `max_snippet_value` varchar(255) DEFAULT NULL,
  `max_video_preview` varchar(255) DEFAULT NULL,
  `max_video_preview_value` varchar(255) DEFAULT NULL,
  `max_image_preview` varchar(255) DEFAULT NULL,
  `max_image_preview_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_functions`
--

CREATE TABLE `search_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(150) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `visible_for` varchar(191) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_functions`
--

INSERT INTO `search_functions` (`id`, `key`, `url`, `visible_for`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'admin/dashboard', 'admin', NULL, NULL),
(2, 'Order All', 'admin/orders/list/all', 'admin', NULL, NULL),
(3, 'Order Pending', 'admin/orders/list/pending', 'admin', NULL, NULL),
(4, 'Order Processed', 'admin/orders/list/processed', 'admin', NULL, NULL),
(5, 'Order Delivered', 'admin/orders/list/delivered', 'admin', NULL, NULL),
(6, 'Order Returned', 'admin/orders/list/returned', 'admin', NULL, NULL),
(7, 'Order Failed', 'admin/orders/list/failed', 'admin', NULL, NULL),
(8, 'Brand Add', 'admin/brand/add-new', 'admin', NULL, NULL),
(9, 'Brand List', 'admin/brand/list', 'admin', NULL, NULL),
(10, 'Banner', 'admin/banner/list', 'admin', NULL, NULL),
(11, 'Category', 'admin/category/view', 'admin', NULL, NULL),
(12, 'Sub Category', 'admin/category/sub-category/view', 'admin', NULL, NULL),
(13, 'Sub sub category', 'admin/category/sub-sub-category/view', 'admin', NULL, NULL),
(14, 'Attribute', 'admin/attribute/view', 'admin', NULL, NULL),
(15, 'Product', 'admin/product/list', 'admin', NULL, NULL),
(16, 'Promotion', 'admin/coupon/add-new', 'admin', NULL, NULL),
(17, 'Custom Role', 'admin/custom-role/create', 'admin', NULL, NULL),
(18, 'Employee', 'admin/employee/add-new', 'admin', NULL, NULL),
(19, 'Seller', 'admin/sellers/seller-list', 'admin', NULL, NULL),
(20, 'Contacts', 'admin/contact/list', 'admin', NULL, NULL),
(21, 'Flash Deal', 'admin/deal/flash', 'admin', NULL, NULL),
(22, 'Deal of the day', 'admin/deal/day', 'admin', NULL, NULL),
(23, 'Language', 'admin/business-settings/language', 'admin', NULL, NULL),
(24, 'Mail', 'admin/business-settings/mail', 'admin', NULL, NULL),
(25, 'Shipping method', 'admin/business-settings/shipping-method/add', 'admin', NULL, NULL),
(26, 'Currency', 'admin/currency/view', 'admin', NULL, NULL),
(27, 'Payment method', 'admin/business-settings/payment-method', 'admin', NULL, NULL),
(28, 'SMS Gateway', 'admin/business-settings/sms-gateway', 'admin', NULL, NULL),
(29, 'Support Ticket', 'admin/support-ticket/view', 'admin', NULL, NULL),
(30, 'FAQ', 'admin/helpTopic/list', 'admin', NULL, NULL),
(31, 'About Us', 'admin/business-settings/about-us', 'admin', NULL, NULL),
(32, 'Terms and Conditions', 'admin/business-settings/terms-condition', 'admin', NULL, NULL),
(33, 'Web Config', 'admin/business-settings/web-config', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `email` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `branch` varchar(191) DEFAULT NULL,
  `account_no` varchar(191) DEFAULT NULL,
  `holder_name` varchar(191) DEFAULT NULL,
  `auth_token` text DEFAULT NULL,
  `sales_commission_percentage` double(8,2) DEFAULT NULL,
  `gst` varchar(191) DEFAULT NULL,
  `cm_firebase_token` varchar(191) DEFAULT NULL,
  `pos_status` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_order_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `free_delivery_status` int(11) NOT NULL DEFAULT 0,
  `free_delivery_over_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `app_language` varchar(191) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallets`
--

CREATE TABLE `seller_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `total_earning` double NOT NULL DEFAULT 0,
  `withdrawn` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_given` double(8,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `collected_cash` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tax_collected` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallet_histories`
--

CREATE TABLE `seller_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `payment` varchar(191) NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(15) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0,
  `contact_person_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address_type` varchar(20) NOT NULL DEFAULT 'home',
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `is_billing` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `customer_id`, `is_guest`, `contact_person_name`, `email`, `address_type`, `address`, `city`, `zip`, `phone`, `created_at`, `updated_at`, `state`, `country`, `latitude`, `longitude`, `is_billing`) VALUES
(1, '0', 0, 'sdf', NULL, 'permanent', 'asdasd', 'dsasf', '233333', '+912342343333', NULL, NULL, NULL, 'India', '-33.8688', '151.2195', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `creator_type` varchar(191) NOT NULL DEFAULT 'admin',
  `title` varchar(100) DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `duration` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `creator_id`, `creator_type`, `title`, `cost`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'admin', 'Company Vehicle', '5.00', '2 Week', 1, '2021-05-25 20:57:04', '2021-05-25 20:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_types`
--

CREATE TABLE `shipping_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_types`
--

INSERT INTO `shipping_types` (`id`, `seller_id`, `shipping_type`, `created_at`, `updated_at`) VALUES
(1, 0, 'order_wise', '2025-07-18 05:45:48', '2025-07-18 05:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(191) NOT NULL DEFAULT 'en',
  `address` varchar(255) NOT NULL,
  `contact` varchar(25) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `image_storage_type` varchar(10) DEFAULT 'public',
  `bottom_banner` varchar(191) DEFAULT NULL,
  `bottom_banner_storage_type` varchar(10) DEFAULT 'public',
  `offer_banner` varchar(255) DEFAULT NULL,
  `offer_banner_storage_type` varchar(10) DEFAULT 'public',
  `vacation_start_date` date DEFAULT NULL,
  `vacation_end_date` date DEFAULT NULL,
  `vacation_note` varchar(255) DEFAULT NULL,
  `vacation_status` tinyint(4) NOT NULL DEFAULT 0,
  `temporary_close` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` varchar(191) NOT NULL,
  `banner_storage_type` varchar(10) DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_followers`
--

CREATE TABLE `shop_followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Customer ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `active_status` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `name`, `link`, `icon`, `active_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'twitter', 'https://www.w3schools.com/howto/howto_css_table_responsive.asp', 'fa fa-twitter', 1, 1, '2020-12-31 21:18:03', '2020-12-31 21:18:25'),
(2, 'linkedin', 'https://dev.6amtech.com/', 'fa fa-linkedin', 1, 1, '2021-02-27 16:23:01', '2021-02-27 16:23:05'),
(3, 'google-plus', 'https://dev.6amtech.com/', 'fa fa-google-plus-square', 1, 1, '2021-02-27 16:23:30', '2021-02-27 16:23:33'),
(4, 'pinterest', 'https://dev.6amtech.com/', 'fa fa-pinterest', 1, 1, '2021-02-27 16:24:14', '2021-02-27 16:24:26'),
(5, 'instagram', 'https://dev.6amtech.com/', 'fa fa-instagram', 1, 1, '2021-02-27 16:24:36', '2021-02-27 16:24:41'),
(6, 'facebook', 'facebook.com', 'fa fa-facebook', 1, 1, '2021-02-27 19:19:42', '2021-06-11 17:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_clearance_products`
--

CREATE TABLE `stock_clearance_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `setup_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `discount_type` varchar(255) DEFAULT 'percentage',
  `discount_amount` decimal(18,12) NOT NULL DEFAULT 0.000000000000,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_clearance_products`
--

INSERT INTO `stock_clearance_products` (`id`, `added_by`, `product_id`, `setup_id`, `user_id`, `shop_id`, `is_active`, `discount_type`, `discount_amount`, `created_at`, `updated_at`) VALUES
(1, 'admin', 64, 1, NULL, 0, 1, 'percentage', '2.000000000000', '2025-08-06 10:37:53', '2025-08-06 10:37:53'),
(2, 'admin', 65, 1, NULL, 0, 1, 'percentage', '2.000000000000', '2025-08-06 10:37:53', '2025-08-06 10:37:53'),
(3, 'admin', 348, 1, NULL, 0, 1, 'percentage', '2.000000000000', '2025-08-06 10:37:53', '2025-08-06 10:37:53'),
(4, 'admin', 349, 1, NULL, 0, 1, 'percentage', '2.000000000000', '2025-08-06 10:37:53', '2025-08-06 10:37:53'),
(5, 'admin', 602, 1, NULL, 0, 1, 'percentage', '2.000000000000', '2025-08-06 10:37:53', '2025-08-06 10:37:53'),
(6, 'admin', 603, 1, NULL, 0, 1, 'percentage', '2.000000000000', '2025-08-06 10:37:53', '2025-08-06 10:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `stock_clearance_setups`
--

CREATE TABLE `stock_clearance_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setup_by` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `discount_type` varchar(255) DEFAULT 'percentage',
  `discount_amount` decimal(18,12) NOT NULL DEFAULT 0.000000000000,
  `offer_active_time` varchar(255) DEFAULT NULL,
  `offer_active_range_start` time DEFAULT NULL,
  `offer_active_range_end` time DEFAULT NULL,
  `show_in_homepage` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_homepage_once` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_shop` tinyint(1) NOT NULL DEFAULT 1,
  `duration_start_date` timestamp NULL DEFAULT NULL,
  `duration_end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_clearance_setups`
--

INSERT INTO `stock_clearance_setups` (`id`, `setup_by`, `user_id`, `shop_id`, `is_active`, `discount_type`, `discount_amount`, `offer_active_time`, `offer_active_range_start`, `offer_active_range_end`, `show_in_homepage`, `show_in_homepage_once`, `show_in_shop`, `duration_start_date`, `duration_end_date`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, 0, 0, 'product_wise', '0.000000000000', 'always', NULL, NULL, 1, 0, 1, '2025-08-05 18:30:00', '2025-08-06 18:29:59', '2025-08-06 10:36:54', '2025-08-06 10:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

CREATE TABLE `storages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_type` varchar(255) NOT NULL,
  `data_id` varchar(100) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storages`
--

INSERT INTO `storages` (`id`, `data_type`, `data_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\ProductSeo', '1', 'image', 'public', '2025-07-18 05:41:33', '2025-07-18 05:41:33'),
(2, 'App\\Models\\ProductSeo', '2', 'image', 'public', '2025-07-21 05:40:23', '2025-07-21 05:40:23'),
(3, 'App\\Models\\ProductSeo', '3', 'image', 'public', '2025-07-22 07:57:50', '2025-07-22 07:57:50'),
(4, 'App\\Models\\ProductSeo', '4', 'image', 'public', '2025-07-26 04:09:24', '2025-07-26 04:09:24'),
(5, 'App\\Models\\FlashDeal', '1', 'banner', 'public', '2025-08-09 07:16:40', '2025-08-09 07:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `priority` varchar(15) NOT NULL DEFAULT 'low',
  `description` varchar(255) DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachment`)),
  `reply` varchar(255) DEFAULT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_convs`
--

CREATE TABLE `support_ticket_convs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `customer_message` varchar(191) DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachment`)),
  `admin_message` varchar(191) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(191) NOT NULL,
  `visit_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `visit_count`, `created_at`, `updated_at`) VALUES
(1, 'Men T-shirt', 0, '2025-07-18 05:41:33', '2025-07-18 05:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_for` varchar(100) DEFAULT NULL,
  `payer_id` bigint(20) DEFAULT NULL,
  `payment_receiver_id` bigint(20) DEFAULT NULL,
  `paid_by` varchar(15) DEFAULT NULL,
  `paid_to` varchar(15) DEFAULT NULL,
  `payment_method` varchar(15) DEFAULT NULL,
  `payment_status` varchar(10) NOT NULL DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(191) DEFAULT NULL,
  `order_details_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `translationable_type` varchar(191) NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`translationable_type`, `translationable_id`, `locale`, `key`, `value`, `id`) VALUES
('App\\Models\\NotificationMessage', 1, 'in', 'order_pending_message', 'order pen message', 1),
('App\\Models\\NotificationMessage', 2, 'in', 'order_confirmation_message', 'Order con Message', 2),
('App\\Models\\NotificationMessage', 3, 'in', 'order_processing_message', 'Order pro Message', 3),
('App\\Models\\NotificationMessage', 4, 'in', 'out_for_delivery_message', 'Order ouut Message', 4),
('App\\Models\\NotificationMessage', 5, 'in', 'order_delivered_message', 'Order del Message', 5),
('App\\Models\\NotificationMessage', 6, 'in', 'order_returned_message', 'Order hh Message', 6),
('App\\Models\\NotificationMessage', 7, 'in', 'order_failed_message', 'Order fa Message', 7),
('App\\Models\\NotificationMessage', 9, 'in', 'order_refunded_message', 'customize your order refunded message message', 8),
('App\\Models\\NotificationMessage', 10, 'in', 'refund_request_canceled_message', 'customize your refund request canceled message message', 9),
('App\\Models\\NotificationMessage', 11, 'in', 'message_from_delivery_man', 'customize your message from delivery man message', 10),
('App\\Models\\NotificationMessage', 12, 'in', 'message_from_seller', 'customize your message from seller message', 11),
('App\\Models\\NotificationMessage', 13, 'in', 'fund_added_by_admin_message', 'customize your fund added by admin message message', 12),
('App\\Models\\NotificationMessage', 39, 'in', 'message_from_admin', 'customize your message from admin message', 13),
('App\\Models\\Product', 1, 'in', 'name', 'Yellow Shirt', 14),
('App\\Models\\Product', 1, 'in', 'description', '<p>The yellow shirt is a vibrant and eye-catching piece of clothing that symbolizes positivity and energy.</p><p> Made from high-quality fabric, it offers both comfort and style for daily wear or special occasions.</p><p> Its bright color adds a fresh, cheerful touch to your wardrobe, making it perfect for summer or casual outings.</p><p> Easily paired with jeans, trousers, or shorts, the yellow shirt brings versatility to fashion choices.</p><p> Whether worn formally or casually, it helps you stand out with confidence and charm.</p>', 15),
('App\\Models\\Product', 203, 'in', 'name', 'Product Number 261', 16),
('App\\Models\\Product', 203, 'in', 'description', 'Soldier forget whom ask other music clearly. Else during public difficult home when follow during.', 17),
('App\\Models\\Product', 201, 'in', 'name', 'Product Training 971', 18),
('App\\Models\\Product', 201, 'in', 'description', 'Social red explain public modern argue health employee. May peace rest.', 19),
('App\\Models\\Product', 202, 'in', 'name', 'Product Remain 829', 20),
('App\\Models\\Product', 202, 'in', 'description', 'Pick class same research tell increase. Charge order bag join country. Human that fire among task.', 21);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `phone` varchar(25) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street_address` varchar(250) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `apartment_no` varchar(50) DEFAULT NULL,
  `cm_firebase_token` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `payment_card_last_four` varchar(191) DEFAULT NULL,
  `payment_card_brand` varchar(191) DEFAULT NULL,
  `payment_card_fawry_token` text DEFAULT NULL,
  `login_medium` varchar(191) DEFAULT NULL,
  `social_id` varchar(191) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `temporary_token` varchar(191) DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `wallet_balance` double(8,2) DEFAULT NULL,
  `loyalty_point` decimal(18,4) DEFAULT 0.0000,
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `referral_code` varchar(255) DEFAULT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `app_language` varchar(191) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `f_name`, `l_name`, `phone`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `street_address`, `country`, `city`, `zip`, `house_no`, `apartment_no`, `cm_firebase_token`, `is_active`, `payment_card_last_four`, `payment_card_brand`, `payment_card_fawry_token`, `login_medium`, `social_id`, `is_phone_verified`, `temporary_token`, `is_email_verified`, `wallet_balance`, `loyalty_point`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`, `referral_code`, `referred_by`, `app_language`) VALUES
(0, 'walking customer', 'walking', 'customer', '000000000000', 'def.png', 'walking@customer.com', NULL, '', NULL, NULL, '2022-02-03 03:46:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 'en'),
(2, 'user qwww', 'user', 'qwww', '+911212121212', 'def.png', 'a@gmail.com', NULL, '$2y$10$HUSZfVSrDikbRYsO0s6QveGCmxvOEhSW47lQV97/BCfgHYm5CeLgW', NULL, '2025-07-21 10:37:56', '2025-07-26 12:31:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'IYLTEFZVPA0GQX3U5P9A', NULL, 'en'),
(3, 'asa sdfsdf', 'asa', 'sdfsdf', '+912222222222', 'def.png', 'aa@gmail.com', NULL, '$2y$10$Efp3cM/Qafn11wLJds4XIekn7.jl0Y65TYZ.K8b6RoUlpzc7zfQC2', NULL, '2025-07-23 09:53:09', '2025-07-23 09:53:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'GXMLKRPRPP0CV1YSWANW', NULL, 'en'),
(4, 'asdasd asasd', 'asdasd', 'asasd', '+919898989898', 'def.png', 'asacxsssa@gmail.com', NULL, '$2y$10$AgMSkm/1dB9XyobfGYSSC.TZxVC5Uz0OAoNA3Em04ffBvkTJzU1iG', NULL, '2025-08-04 09:53:24', '2025-08-04 09:53:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'SWOAK9O9SIQKCNN1NXZM', NULL, 'en'),
(5, 'asdaa2 2w', 'asdaa2', '2w', '+91565654554', 'def.png', 'ss@gmail.com', NULL, '$2y$10$Nm7kKSCEqql9CHkUFDnNnuNWfkwMcWWaex/fxMrETE8pmQbOZcmLa', NULL, '2025-08-04 10:07:19', '2025-08-04 10:07:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, '5NAMS9VLEJJ4QBXDVS10', NULL, 'en'),
(6, 'asdaa2 2w', 'asdaa2', '2w', '+91565854554', 'def.png', 'ssa@gmail.com', NULL, '$2y$10$o9Aq5W2.svUe2Lj84kkY8OBRRONERgE79w.7D5Ufit0evkGmqJr7S', NULL, '2025-08-04 10:10:08', '2025-08-04 10:10:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'WCRBYS15CO8TNRGIWWBQ', NULL, 'en'),
(7, 'sdf 223223322', 'sdf', '223223322', '+912342323456', 'def.png', 'r@gmail.com', NULL, '$2y$10$phtXAaUVdYnihTxblKDEz.YowH0bxnkqsA6OA.MOZz4.0xwpRcJlK', NULL, '2025-08-04 10:14:28', '2025-08-04 10:14:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'UQCR9AOO8BABVQ3TDIRW', NULL, 'en'),
(8, 'sdf 223223322', 'sdf', '223223322', '+912342323451', 'def.png', 'ra@gmail.com', NULL, '$2y$10$kxl5FKj5uODGM2bIGEtXV.5EjuOOzbRqQMqqIzW3cdwWRwJqtd0ru', NULL, '2025-08-04 10:15:15', '2025-08-04 10:15:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'UGTNVH8D6E2BJPDF2VEL', NULL, 'en'),
(9, 'ad aaa', 'ad', 'aaa', '+919090909090', 'def.png', 'y@gmail.com', NULL, '$2y$10$2mvpFk6Xzh3UUx8QffsADOIFNEIAsHrSvuqJ9cdue.z68sKDXTTDS', NULL, '2025-08-04 10:18:46', '2025-08-04 10:18:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'PXGZPFQATT43YHUIVUWV', NULL, 'en'),
(10, 'ad aaa', 'ad', 'aaa', '+919090909091', 'def.png', 'ys@gmail.com', NULL, '$2y$10$ZWhRUTxGzfJ1EbRgGAcXqu8/trsR2RCOAYgCR3WbTpM59xpVTL9F.', NULL, '2025-08-04 10:19:20', '2025-08-04 10:19:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'M1O6OA5KTPMCZEMZG62A', NULL, 'en'),
(11, 'ad aaa', 'ad', 'aaa', '+919090909092', 'def.png', 'yss@gmail.com', NULL, '$2y$10$9r3VrGH0OjHK4A8vz.3NGuMAVpgT7D12cHj3VkpRl1XNXDd5WTD/a', 'YvxtNYt3pGhtmseulH6qjd5l1T3r2Ebrtf60QXBYwn1xvOmb3PxibYpFYdtG', '2025-08-04 10:19:55', '2025-08-04 11:12:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'P68WQRBDZSG9JI2CKLXM', NULL, 'en'),
(12, 'asd asd', 'asd', 'asd', '+912323232323', 'def.png', 'z@gmail.com', NULL, '$2y$10$Tv28T6XO.nuxGo30/PZ4DejZhqQXRvhg0llFRW/XNXWJTnIAVUpf.', 'R3kLlFvLLeVqHXpri7JPXXKUq0vhenXne0ZdznZt9RplVYUS4BKdtCZpvOku', '2025-08-04 10:30:30', '2025-08-04 10:30:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'S1YZHVITGAOVIV0HC09W', NULL, 'en'),
(13, 'Aravind Developer', 'Aravind', 'Developer', '+919090909098', 'def.png', 'rz@gmail.com', NULL, '$2y$10$jiJGoUOB8xCioFRRYlaG6eueqemNvcgvQ.E1Gp4lQmIMv7/mELZPe', 'bazCV4dIw6G5kOXhpjNKrPVI7eNgoQ0uZgo37YyTnYPSwlcs32SitLUu29aP', '2025-08-04 10:36:33', '2025-08-04 10:36:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'DZ6N0LIHK9UTI2XRJ1SE', NULL, 'en'),
(14, 'aa aa', 'aa', 'aa', '+916545654567', 'def.png', 'w@gmail.xom', NULL, '$2y$10$GI9zXm3VMrKK9WQZlOmDI.JVAy7TMaH.8eDX6ureWWfgTlVPT7Rp6', 'Z0im2wtIYeSgCUVm0rxXgTkWz8hgoRK67Ue67S6hrmV3Hh1RuqiTN2O8JobX', '2025-08-04 10:38:34', '2025-08-04 10:38:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'IG7UADLCOAB7ZU1TRHDP', NULL, 'en'),
(15, 'asd asd', 'asd', 'asd', '+912123232123', 'def.png', 'q@asfd.sdf', NULL, '$2y$10$tPv91s/oUxnnedda9AabnO6uqRDTs8GTJTY5xSc2Al.QcEEaeE4xK', '8lJwa41lwtRcojJVZ8RnhIT2rEP5IGt9d4gYMBSU7tVsmB5rg4mAalsYuznf', '2025-08-04 10:40:01', '2025-08-04 10:40:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'BQ7H18T4SVS0HYFVDSNK', NULL, 'en'),
(16, 'asd aaa', 'asd', 'aaa', '+914332323456', 'def.png', 't@gmail.com', NULL, '$2y$10$LOejHOS44l/6j0zkKSyOAe8kDU5AIUUsKgcqchaamrrToyX0CWq1W', '0zwI8sLsxQPM7HUylFf0eHHwsrWTsipJWdy3Wsv7EvupCMJEspEOYDgm4Oci', '2025-08-04 10:41:08', '2025-08-04 10:41:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'WRSE0JKTBJB84MHERZAJ', NULL, 'en'),
(17, 'as as', 'as', 'as', '+912323323333', 'def.png', 'ac@asd.asd', NULL, '$2y$10$QrBZMUlm4mtdMEQ7sBxKB.Q3HoclRpJNJpnARfjDCKEI8D11pNXxe', 'tlGDtAmjfw78s6EuG5JQ5OKml2S1D7WntuHC9qUrDNEFnwTJeIPza7gTzNht', '2025-08-04 10:42:34', '2025-08-04 10:42:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'PRJW9YJ4BO1WPBKZAEEW', NULL, 'en'),
(18, 'asd aa', 'asd', 'aa', '+916565656565', 'def.png', 'a@aasa.aas', NULL, '$2y$10$Q.MFkJ8MUrhP6R83FpjVzuX3oFHJfJRTSQBkiEussgmH3YgwQs1UK', 'Vh98K9ftVVCntvqhsMhdNRQsDisl0MMKfumA2Ne61ymYawwRPD6Pdo88bIUt', '2025-08-04 10:45:15', '2025-08-04 10:45:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'HXNZPHCG4K32LOOATSBK', NULL, 'en'),
(19, 'asd asd', 'asd', 'asd', '+914343434345', 'def.png', 'asd@gaa.asd', NULL, '$2y$10$69yuyeh9RAZW8uGN8ChbI.5ylarC/APXInL0yn/BsC3CCU.3XBylO', 'lhI7GwAq2jHnejjwdQEN7YaW5ceZyr2s3dTwVi5nYNDNvagppMdcrPbEMeZu', '2025-08-04 11:01:35', '2025-08-05 05:13:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0.0000', 0, 0, NULL, 'LJKRZK2IGNUGHD4NSSDB', NULL, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_registration_reasons`
--

CREATE TABLE `vendor_registration_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_registration_reasons`
--

INSERT INTO `vendor_registration_reasons` (`id`, `title`, `description`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Millions of Users', 'Access a vast audience with millions of active users ready to buy your products.', 1, 1, NULL, NULL),
(2, 'Free Marketing', 'Benefit from our extensive, no-cost marketing efforts to boost your visibility and sales.', 2, 1, NULL, NULL),
(3, 'SEO Friendly', 'Enjoy enhanced search visibility with our SEO-friendly platform, driving more traffic to your listings.', 3, 1, NULL, NULL),
(4, '24/7 Support', 'Get round-the-clock support from our dedicated team to resolve any issues and assist you anytime.', 4, 1, NULL, NULL),
(5, 'Easy Onboarding', 'Start selling quickly with our user-friendly onboarding process designed to get you up and running fast.', 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `transaction_type` varchar(191) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 19, 5, '2025-08-06 11:32:12', '2025-08-06 11:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_methods`
--

CREATE TABLE `withdrawal_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(191) NOT NULL,
  `method_fields` text NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` varchar(191) NOT NULL DEFAULT '0.00',
  `withdrawal_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_method_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `transaction_note` text DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_settings`
--
ALTER TABLE `addon_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_settings_id_index` (`id`);

--
-- Indexes for table `add_fund_bonus_categories`
--
ALTER TABLE `add_fund_bonus_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallet_histories`
--
ALTER TABLE `admin_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytic_scripts`
--
ALTER TABLE `analytic_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_attachable_type_attachable_id_index` (`attachable_type`,`attachable_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_name_unique` (`name`);

--
-- Indexes for table `blog_seos`
--
ALTER TABLE `blog_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_translations_translation_id_index` (`translation_id`),
  ADD KEY `blog_translations_locale_index` (`locale`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_pages`
--
ALTER TABLE `business_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_shippings`
--
ALTER TABLE `cart_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_shipping_costs`
--
ALTER TABLE `category_shipping_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chattings`
--
ALTER TABLE `chattings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallet_histories`
--
ALTER TABLE `customer_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_of_the_days`
--
ALTER TABLE `deal_of_the_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryman_notifications`
--
ALTER TABLE `deliveryman_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryman_wallets`
--
ALTER TABLE `deliveryman_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_country_codes`
--
ALTER TABLE `delivery_country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_transactions`
--
ALTER TABLE `delivery_man_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_zip_codes`
--
ALTER TABLE `delivery_zip_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_product_authors`
--
ALTER TABLE `digital_product_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_product_otp_verifications`
--
ALTER TABLE `digital_product_otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_product_publishing_houses`
--
ALTER TABLE `digital_product_publishing_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_product_variations`
--
ALTER TABLE `digital_product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_logs`
--
ALTER TABLE `error_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_deals`
--
ALTER TABLE `feature_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_users`
--
ALTER TABLE `guest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_topics`
--
ALTER TABLE `help_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `login_setups`
--
ALTER TABLE `login_setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `most_demandeds`
--
ALTER TABLE `most_demandeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_messages`
--
ALTER TABLE `notification_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_seens`
--
ALTER TABLE `notification_seens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_verifications`
--
ALTER TABLE `order_delivery_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_expected_delivery_histories`
--
ALTER TABLE `order_expected_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`identity`);

--
-- Indexes for table `paytabs_invoices`
--
ALTER TABLE `paytabs_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phone_or_email_verifications`
--
ALTER TABLE `phone_or_email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_compares`
--
ALTER TABLE `product_compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_seos`
--
ALTER TABLE `product_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishing_houses`
--
ALTER TABLE `publishing_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_statuses`
--
ALTER TABLE `refund_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_transactions`
--
ALTER TABLE `refund_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restock_products`
--
ALTER TABLE `restock_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restock_product_customers`
--
ALTER TABLE `restock_product_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_replies`
--
ALTER TABLE `review_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `robots_meta_contents`
--
ALTER TABLE `robots_meta_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_functions`
--
ALTER TABLE `search_functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_email_unique` (`email`);

--
-- Indexes for table `seller_wallets`
--
ALTER TABLE `seller_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_wallet_histories`
--
ALTER TABLE `seller_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_types`
--
ALTER TABLE `shipping_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_followers`
--
ALTER TABLE `shop_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_clearance_products`
--
ALTER TABLE `stock_clearance_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_clearance_setups`
--
ALTER TABLE `stock_clearance_setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storages_data_id_index` (`data_id`),
  ADD KEY `storages_value_index` (`value`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_convs`
--
ALTER TABLE `support_ticket_convs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD UNIQUE KEY `transactions_id_unique` (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendor_registration_reasons`
--
ALTER TABLE `vendor_registration_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_fund_bonus_categories`
--
ALTER TABLE `add_fund_bonus_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_wallet_histories`
--
ALTER TABLE `admin_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `analytic_scripts`
--
ALTER TABLE `analytic_scripts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_seos`
--
ALTER TABLE `blog_seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `business_pages`
--
ALTER TABLE `business_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `cart_shippings`
--
ALTER TABLE `cart_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_shipping_costs`
--
ALTER TABLE `category_shipping_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chattings`
--
ALTER TABLE `chattings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_wallet_histories`
--
ALTER TABLE `customer_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_of_the_days`
--
ALTER TABLE `deal_of_the_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryman_notifications`
--
ALTER TABLE `deliveryman_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryman_wallets`
--
ALTER TABLE `deliveryman_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_country_codes`
--
ALTER TABLE `delivery_country_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_man_transactions`
--
ALTER TABLE `delivery_man_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_zip_codes`
--
ALTER TABLE `delivery_zip_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `digital_product_authors`
--
ALTER TABLE `digital_product_authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `digital_product_otp_verifications`
--
ALTER TABLE `digital_product_otp_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `digital_product_publishing_houses`
--
ALTER TABLE `digital_product_publishing_houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `digital_product_variations`
--
ALTER TABLE `digital_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `error_logs`
--
ALTER TABLE `error_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_deals`
--
ALTER TABLE `feature_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guest_users`
--
ALTER TABLE `guest_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `help_topics`
--
ALTER TABLE `help_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_setups`
--
ALTER TABLE `login_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `most_demandeds`
--
ALTER TABLE `most_demandeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_messages`
--
ALTER TABLE `notification_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `notification_seens`
--
ALTER TABLE `notification_seens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100002;

--
-- AUTO_INCREMENT for table `order_delivery_verifications`
--
ALTER TABLE `order_delivery_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_expected_delivery_histories`
--
ALTER TABLE `order_expected_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paytabs_invoices`
--
ALTER TABLE `paytabs_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_or_email_verifications`
--
ALTER TABLE `phone_or_email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `product_compares`
--
ALTER TABLE `product_compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_seos`
--
ALTER TABLE `product_seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publishing_houses`
--
ALTER TABLE `publishing_houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_statuses`
--
ALTER TABLE `refund_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_transactions`
--
ALTER TABLE `refund_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restock_products`
--
ALTER TABLE `restock_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restock_product_customers`
--
ALTER TABLE `restock_product_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_replies`
--
ALTER TABLE `review_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `robots_meta_contents`
--
ALTER TABLE `robots_meta_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_functions`
--
ALTER TABLE `search_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_wallets`
--
ALTER TABLE `seller_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_wallet_histories`
--
ALTER TABLE `seller_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shipping_types`
--
ALTER TABLE `shipping_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_followers`
--
ALTER TABLE `shop_followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_clearance_products`
--
ALTER TABLE `stock_clearance_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_clearance_setups`
--
ALTER TABLE `stock_clearance_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket_convs`
--
ALTER TABLE `support_ticket_convs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vendor_registration_reasons`
--
ALTER TABLE `vendor_registration_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
