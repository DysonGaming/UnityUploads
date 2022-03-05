CREATE TABLE `users` (
	`usersId` INT(11) NOT NULL AUTO_INCREMENT,
	`usersRank` ENUM('1','2','3','4') NOT NULL COLLATE 'utf8mb4_general_ci',
	`usersEmail` VARCHAR(128) NOT NULL COLLATE 'utf8mb4_general_ci',
	`usersUid` VARCHAR(128) NOT NULL COLLATE 'utf8mb4_general_ci',
	`usersPwd` VARCHAR(128) NOT NULL COLLATE 'utf8mb4_general_ci',
	`usersStatus` SET('None','Protected','Suspended','Banned') NULL DEFAULT 'None' COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`usersId`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=7
;
