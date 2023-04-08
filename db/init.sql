

CREATE DATABASE flask_app
use flask_app;

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country_id` varchar(100) NOT NULL,
  `customer_type` varchar(100) NOT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_country_id` varchar(255) NOT NULL,
  `c_bin_nid` varchar(250) DEFAULT NULL,
  `c_tin` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0=active',
  `delete_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `customers` (`id`, `customer_name`, `email`, `phone`, `country_id`, `customer_type`, `c_address`, `shipping_address`, `shipping_country_id`, `c_bin_nid`, `c_tin`, `status`, `delete_date`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Arnab Rana Biswas', 'arnab@email.com', '0173974843', '2', '1', 'Dhaka', 'Sea Port', '43', '213', '43224', 0, NULL, NULL, '2023-03-23 09:23:21', NULL),
(3, 'Anjana Biswas', 'anjana@email.com', '0173974843', '2', '1', 'Khulna', 'Sea Port', '43', '213', '43224', 0, NULL, NULL, '2023-03-23 09:35:53', NULL),
(4, 'Arnab Biswas', 'arnab@email.com', '0173974843', '2', '1', 'Dhaka', 'Sea Port', '43', '213', '43224', 0, NULL, NULL, '2023-03-25 04:38:41', NULL);


ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

