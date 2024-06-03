/* [[[ PREMIUM GARAGE ]]] */
CREATE TABLE IF NOT EXISTS `premium_garage` (
  `identifier` varchar(60) NOT NULL,
  `class` varchar(60) NOT NULL,
  `date_regist` timestamp NULL DEFAULT NULL,
  `expired` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* [[[ CREATE NEW DATABASE ]]] */
/* [[[ this is the database of ESX ]]] */
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vin` CHAR(17) NULL DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'car',
  `job` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` VARCHAR(20) NULL DEFAULT NULL,
  `class` TINYINT NULL DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `vehicle` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` LONGTEXT NULL DEFAULT NULL,

  PRIMARY KEY (`id`),
  UNIQUE INDEX `plate` (`plate`),
  UNIQUE INDEX `vin` (`vin`),
  INDEX `FK_owned_vehicles_users` (`owner`),
  CONSTRAINT `FK_owned_vehicles_users` FOREIGN KEY (`owner`) REFERENCES `users` (`identifier`) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


/* [[[ ADD A DATABASE COLUMN ]]] */
/* [[[ these are the additional columns required for this script ]]] */
ALTER TABLE `owned_vehicles` ADD COLUMN `parking` varchar(60) DEFAULT NULL;
ALTER TABLE `owned_vehicles` ADD COLUMN `odo` varchar(255) NOT NULL DEFAULT '0';
ALTER TABLE `owned_vehicles` ADD COLUMN `deformation` LONGTEXT NULL;
ALTER TABLE `owned_vehicles` ADD COLUMN `peopleWithKeys` LONGTEXT NULL;
ALTER TABLE `owned_vehicles` ADD COLUMN `shared` tinyint(1) NOT NULL DEFAULT 0;
ALTER TABLE `owned_vehicles` ADD COLUMN `favorit` tinyint(1) NOT NULL DEFAULT 0;
ALTER TABLE `owned_vehicles` ADD COLUMN `date_in` timestamp NULL DEFAULT NULL;
ALTER TABLE `owned_vehicles` ADD COLUMN `date_out` timestamp NULL DEFAULT NULL;


/* [[[ OPTIONAL DATABASE COLUMNS ]]] */
/* [[[ if you are using ox_inventory this field is required ]]] */
ALTER TABLE `owned_vehicles` ADD COLUMN `glovebox` LONGTEXT NULL;
ALTER TABLE `owned_vehicles` ADD COLUMN `trunk` LONGTEXT NULL;