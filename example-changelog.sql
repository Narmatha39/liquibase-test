--liquibase formatted sql

--changeset your.name:1 labels:example-label context:example-context
--comment: Creating the business_types table
CREATE TABLE `business_types` (
  `id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `kyc_doc_id_list` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--rollback DROP TABLE `business_types`;

--
-- Dumping data for table `business_types`
--
--changeset your.name:2 labels:example-label context:example-context
--comment: Inserting initial data into the business_types table
INSERT INTO `business_types` (`id`, `created_date`, `modified_date`, `created_by`, `modified_by`, `name`, `kyc_doc_id_list`) VALUES
(1, '2022-12-13 06:27:54', '2022-12-13 06:27:54', 1, 1, 'Proprietorship', '1,2,3'),
(2, '2022-12-13 06:27:54', '2022-12-13 06:27:54', 1, 1, 'Partnership', '1,2,3'),
(3, '2022-12-13 06:27:54', '2022-12-13 06:27:54', 1, 1, 'Pvt. Ltd', '1,2,3'),
(4, '2022-12-13 06:27:54', '2022-12-13 06:27:54', 1, 1, 'Ltd. Co', '1,2,3'),
(5, '2022-12-13 06:27:54', '2022-12-13 06:27:54', 1, 1, 'Others', '1,2,3'),
(6, '2022-12-13 06:27:54', '2022-12-13 06:27:54', 1, 1, 'Undefined', '0');

--rollback DELETE FROM `business_types` WHERE `id` IN (1, 2, 3, 4, 5, 6);
