CREATE TABLE `token` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `eppn` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `displayname` varchar(60) DEFAULT NULL,
  `token` varchar(64) NOT NULL,
  `service_url` varchar(500) DEFAULT NULL,
  `realm` varchar(127) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `eppn` (`eppn`),
  KEY `email` (`email`)
) DEFAULT CHARSET=utf8;
