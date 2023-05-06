CREATE DATABASE backend_assignment5;
USE backend_assignment5;


CREATE TABLE IF NOT EXISTS `users` (
  `id` int AUTO_INCREMENT NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50),
  `phone_number` varchar(50) NOT NULL,
  `work_number` varchar(50),
  PRIMARY KEY (id)
);


