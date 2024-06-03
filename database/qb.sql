/* [[[ PREMIUM GARAGE ]]] */
CREATE TABLE IF NOT EXISTS `premium_garage` (
  `identifier` varchar(60) NOT NULL,
  `class` varchar(60) NOT NULL,
  `date_regist` timestamp NULL DEFAULT NULL,
  `expired` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* [[[ CREATE NEW DATABASE ]]] */
/* [[[ this is the database of QB ]]] */
CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* [[[ ADD A DATABASE COLUMN ]]] */
/* [[[ these are the additional columns required for this script ]]] */
ALTER TABLE `player_vehicles` ADD COLUMN `type` varchar(20) NOT NULL DEFAULT 'car';
ALTER TABLE `player_vehicles` ADD COLUMN `odo` varchar(255) NOT NULL DEFAULT '0';
ALTER TABLE `player_vehicles` ADD COLUMN `deformation` LONGTEXT NULL;
ALTER TABLE `player_vehicles` ADD COLUMN `peopleWithKeys` LONGTEXT NULL;
ALTER TABLE `player_vehicles` ADD COLUMN `shared` tinyint(1) NOT NULL DEFAULT 0;
ALTER TABLE `player_vehicles` ADD COLUMN `favorit` tinyint(1) NOT NULL DEFAULT 0;
ALTER TABLE `player_vehicles` ADD COLUMN `date_in` timestamp NULL DEFAULT NULL;
ALTER TABLE `player_vehicles` ADD COLUMN `date_out` timestamp NULL DEFAULT NULL;

/* [[[ OPTIONAL DATABASE COLUMNS ]]] */
/* [[[ if you are using ox_inventory this field is required ]]] */
ALTER TABLE `owned_vehicles` ADD COLUMN `glovebox` LONGTEXT NULL;
ALTER TABLE `owned_vehicles` ADD COLUMN `trunk` LONGTEXT NULL;