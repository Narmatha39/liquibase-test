--liquibase formatted sql

--changeset your.name:1 labels:example-label context:example-context
--comment: example comment
CREATE TABLE `business_types` (
  `id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `kyc_doc_id_list` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--rollback DROP TABLE business_types;



