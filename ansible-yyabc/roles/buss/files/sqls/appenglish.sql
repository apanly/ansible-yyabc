CREATE DATABASE appenglish;
USE appenglish;
CREATE TABLE `articles` (
  `id` int(10) NOT NULL auto_increment,
  `chititle` varchar(255) collate utf8_unicode_ci NOT NULL,
  `engtitle` varchar(255) collate utf8_unicode_ci NOT NULL,
  `picuri` varchar(250) collate utf8_unicode_ci NOT NULL,
  `artid` varchar(40) collate utf8_unicode_ci NOT NULL,
  `idate` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `engtitle` (`engtitle`),
  KEY `idate` (`idate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `articles_content` (
  `id` int(10) NOT NULL auto_increment,
  `fid` int(10) NOT NULL,
  `englishjson` text collate utf8_unicode_ci NOT NULL,
  `chinesejson` text collate utf8_unicode_ci NOT NULL,
  `idate` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `cet` (
  `id` int(10) NOT NULL auto_increment,
  `cettitle` varchar(255) collate utf8_unicode_ci NOT NULL,
  `cetdate` date NOT NULL,
  `idate` date NOT NULL,
  `suri` varchar(255) collate utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL default '1' COMMENT '1=>cet4,2=>cet6',
  `has_desc` int(1) NOT NULL default '0' COMMENT '1=>has,0=>dont',
  PRIMARY KEY  (`id`),
  KEY `type` (`type`),
  KEY `has_desc` (`has_desc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `cetdesc` (
  `id` int(10) NOT NULL,
  `content` text collate utf8_unicode_ci NOT NULL,
  `idate` date NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `englishtest` (
  `id` int(10) NOT NULL auto_increment,
  `questionjson` text collate utf8_unicode_ci NOT NULL,
  `pdate` date NOT NULL,
  `idate` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tinyenglish` (
  `id` int(10) NOT NULL auto_increment,
  `idate` int(10) NOT NULL,
  `md5hash` varchar(64) collate utf8_unicode_ci NOT NULL COMMENT '英语语句的hash数值用以保证不会重复采集',
  `econtent` text collate utf8_unicode_ci NOT NULL COMMENT '英文内容',
  `zcontent` text collate utf8_unicode_ci NOT NULL COMMENT '中文内容',
  `imguri` varchar(255) collate utf8_unicode_ci NOT NULL COMMENT '图片地址',
  `innermguri` varchar(100) collate utf8_unicode_ci NOT NULL default '''''',
  `createtime` int(10) NOT NULL COMMENT '采集时间',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `md5hash` (`md5hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;