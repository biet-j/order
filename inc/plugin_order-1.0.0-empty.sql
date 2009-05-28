DROP TABLE IF EXISTS `glpi_plugin_order`;
CREATE TABLE `glpi_plugin_order` (
	`ID` int(11) NOT NULL auto_increment,
	`name` varchar(255) UNIQUE collate utf8_unicode_ci NOT NULL default '',
	`numordersupplier` varchar(255) NOT NULL collate utf8_unicode_ci default '',
	`deliverynum` varchar(255) NOT NULL collate utf8_unicode_ci default '',
	`numbill`varchar(255) NOT NULL collate utf8_unicode_ci default '',
	`budget` int (11) NOT NULL default 0,
	`payment` int (11) NOT NULL default 0,
	`status` int(11) NOT NULL default 1,
	`FK_entities` int(11) NOT NULL default 0,
	`price`decimal(15,2) NOT NULL default 0,
	`date` date,
	`FK_enterprise` SMALLINT(6) NOT NULL DEFAULT '0',
	`recursive` tinyint(1) NOT NULL default '1',
	`deleted` smallint(6) NOT NULL default '0',
	`comment` varchar(255) collate utf8_unicode_ci NOT NULL default '',
	PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_dropdown_plugin_order_status`;
	CREATE TABLE `glpi_dropdown_plugin_order_status` (
	`ID` int(11) NOT NULL auto_increment,
	`name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
	`comments` text,
	PRIMARY KEY  (`ID`),
	KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_dropdown_plugin_order_payment`;
	CREATE TABLE `glpi_dropdown_plugin_order_payment` (
	`ID` int(11) NOT NULL auto_increment,
	`name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
	`comments` text,
	PRIMARY KEY  (`ID`),
	KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_dropdown_plugin_order_taxes`;
CREATE TABLE `glpi_dropdown_plugin_order_taxes` (
	`ID` int(11) NOT NULL auto_increment,
	`name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
        `value`decimal(4,3),
	`comments` text,
	PRIMARY KEY  (`ID`),
	KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `glpi_dropdown_plugin_order_taxes`(ID,name, value) VALUES (1,'5,5', 1.055);
INSERT INTO `glpi_dropdown_plugin_order_taxes`(ID,name, value) VALUES (2,'19,6', 1.196);



DROP TABLE IF EXISTS `glpi_plugin_order_detail`;
CREATE TABLE `glpi_plugin_order_detail` (
	`ID` int(11) NOT NULL auto_increment,
	`FK_order` int(11) NOT NULL default '0',
	`type`int(11) NOT NULL,
	`reference` varchar(255) collate utf8_unicode_ci NOT NULL default '',
        `manufacturer`int(11) NOT NULL,
	`quantity`int (11) NOT NULL,
	`delivredquantity`int (11) NOT NULL default 0,
	`unitprice`decimal(15,2) NOT NULL,
        `taxes`int(11) NOT NULL default 2,
	`totalpricetaxes`decimal(15,2) NOT NULL default 0,
	PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_plugin_order_device`;
CREATE TABLE `glpi_plugin_order_device` (
	`ID` int(11) NOT NULL auto_increment,
	`FK_order` int(11)  NOT NULL default 0,
	`FK_device` int(11) NOT NULL default 0,
	`device_type` int(11) NOT NULL default 0,
	PRIMARY KEY  (`ID`),
	KEY `FK_device` (`FK_device`,`device_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `glpi_plugin_order_profiles`;
CREATE TABLE `glpi_plugin_order_profiles` (
	`ID` int(11) NOT NULL auto_increment,
	`name` varchar(255) collate utf8_unicode_ci default NULL,
	`order` char(1) default NULL,
	PRIMARY KEY  (`ID`),
	KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
	
INSERT INTO `glpi_display` ( `ID` , `type` , `num` , `rank` , `FK_users` )  VALUES (NULL,'3150','1','1','0');
INSERT INTO `glpi_display` ( `ID` , `type` , `num` , `rank` , `FK_users` )  VALUES (NULL,'3150','2','2','0');
INSERT INTO `glpi_display` ( `ID` , `type` , `num` , `rank` , `FK_users` )  VALUES (NULL,'3150','3','3','0');
INSERT INTO `glpi_display` ( `ID` , `type` , `num` , `rank` , `FK_users` )  VALUES (NULL,'3150','4','4','0');
INSERT INTO `glpi_display` ( `ID` , `type` , `num` , `rank` , `FK_users` )  VALUES (NULL,'3150','5','5','0');
INSERT INTO `glpi_display` ( `ID` , `type` , `num` , `rank` , `FK_users` )  VALUES (NULL,'3150','6','6','0');
INSERT INTO `glpi_display` ( `ID` , `type` , `num` , `rank` , `FK_users` )  VALUES (NULL,'3150','7','7','0');
INSERT INTO `glpi_display` ( `ID` , `type` , `num` , `rank` , `FK_users` )  VALUES (NULL,'3150','8','8','0');
INSERT INTO `glpi_display` ( `ID` , `type` , `num` , `rank` , `FK_users` )  VALUES (NULL,'3150','9','9','0');