
CREATE TABLE turnusers_lt (
        id  bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        realm varchar(127) default '',
        name varchar(512),
        hmackey char(128),
        eppn varchar(128),
        email varchar(128),
        displayname varchar(60),
        primary key (id),
        key (realm,name)
);

CREATE TABLE turn_secret (
        id  bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	realm varchar(127) default '',
	value varchar(256),
        primary key (id),
	key (realm,value)
);

CREATE TABLE allowed_peer_ip (
        id  bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	realm varchar(127) default '',
	ip_range varchar(256),
        primary key (id),
	key (realm,ip_range)
);

CREATE TABLE denied_peer_ip (
	id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        realm varchar(127) default '',
	ip_range varchar(256),
        primary key (id),
	key (realm,ip_range)
);

CREATE TABLE turn_origin_to_realm (
        id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	origin varchar(127),
	realm varchar(127),
        primary key (id),
	key (origin)
);

CREATE TABLE turn_realm_option (
        id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	realm varchar(127) default '',
	opt varchar(32),
	value varchar(128),
        primary key (id),
	key (realm,opt)
);

CREATE TABLE oauth_key (
        id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	kid varchar(128),
	ikm_key varchar(256),
	timestamp bigint default 0,
	lifetime integer default 0,
	as_rs_alg varchar(64) default '',
	realm varchar(127),
        primary key (id),
	key (kid)
);

CREATE TABLE admin_user (
        id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	name varchar(32),
	realm varchar(127),
	password varchar(127),
        primary key (id),
	key (name)
);

