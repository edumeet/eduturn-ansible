DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`fqdn` varchar(255) DEFAULT NULL,
	`organization` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `ip`;
CREATE TABLE `ip` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`server_id` bigint(20) unsigned NOT NULL,
	`ip` varchar(45) NOT NULL COMMENT 'IPv4/IPv6',
	`ipv6` tinyint(1) NOT NULL,
	`latitude` double DEFAULT NULL,
	`longitude` double DEFAULT NULL,
	`preference` int(10) unsigned NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE KEY `ip` (`ip`),
	KEY `server_id` (`server_id`),
	CONSTRAINT `ip_ibfk_1` FOREIGN KEY (`server_id`) REFERENCES `server` (`id`)
);

DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`ip_id` bigint(20) unsigned DEFAULT NULL,
	`port` smallint(5) unsigned DEFAULT '3478',
	`protocol` enum('udp','tcp','sctp') DEFAULT NULL,
	`uri_schema` enum('stun','stuns','turn','turns') DEFAULT NULL,
	`preference` int(10) unsigned DEFAULT NULL,
	PRIMARY KEY (`id`),
	KEY `ip_id` (`ip_id`),
	CONSTRAINT `service_ibfk_1` FOREIGN KEY (`ip_id`) REFERENCES `ip` (`id`)
);

