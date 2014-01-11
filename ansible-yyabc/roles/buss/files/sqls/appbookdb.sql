CREATE DATABASE appbookdb;
USE appbookdb;

CREATE TABLE `book` (
  `id` int(10) NOT NULL auto_increment,
  `isbn` varchar(20) collate utf8_unicode_ci NOT NULL,
  `bartype` varchar(10) collate utf8_unicode_ci NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `booknumber` int(1) NOT NULL default '1',
  `creator` varchar(255) collate utf8_unicode_ci NOT NULL,
  `binding` varchar(50) collate utf8_unicode_ci NOT NULL,
  `pages` varchar(10) collate utf8_unicode_ci NOT NULL,
  `pdate` date NOT NULL,
  `publisher` varchar(255) collate utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) collate utf8_unicode_ci NOT NULL,
  `lrdate` date NOT NULL,
  `clicknum` int(10) NOT NULL default '0',
  `uid` int(10) NOT NULL,
  `rentor` varchar(255) collate utf8_unicode_ci NOT NULL,
  `flag` int(1) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `isbn` (`isbn`,`uid`),
  KEY `clicknum` (`clicknum`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `bookdetail` (
  `bookid` int(10) NOT NULL,
  `booksummary` text collate utf8_unicode_ci NOT NULL,
  `booktag` varchar(255) collate utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`bookid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `bookrecord` (
  `id` int(10) NOT NULL auto_increment,
  `bookid` int(10) NOT NULL,
  `content` text collate utf8_unicode_ci NOT NULL,
  `uid` int(10) NOT NULL,
  `idate` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `draftrecord` (
  `id` int(10) NOT NULL auto_increment,
  `content` text collate utf8_unicode_ci NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(100) collate utf8_unicode_ci NOT NULL,
  `idate` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `lifemedia` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `content` varchar(255) default NULL,
  `idate` datetime default NULL,
  `openid` varchar(100) default NULL,
  `type` int(1) default '1' COMMENT '1=>image,2=>audio,3=>video',
  PRIMARY KEY  (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE `msgqueue` (
  `msgid` int(10) NOT NULL auto_increment,
  `openid` varchar(100) collate utf8_unicode_ci NOT NULL,
  `content` varchar(255) collate utf8_unicode_ci NOT NULL,
  `msgtime` int(10) NOT NULL,
  `msgtype` int(1) NOT NULL,
  `fakeid` int(10) NOT NULL,
  `queueflag` int(1) NOT NULL default '0' COMMENT '0=>not,1=>done',
  `wxmsgid` int(10) NOT NULL,
  PRIMARY KEY  (`msgid`),
  KEY `queueflag` (`queueflag`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `orderlist` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL,
  `uname` varchar(255) collate utf8_unicode_ci NOT NULL,
  `bookid` int(10) NOT NULL,
  `flag` int(1) NOT NULL,
  `rentData` datetime NOT NULL,
  `backData` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `userinfo` (
  `id` int(10) NOT NULL auto_increment,
  `username` varchar(30) collate utf8_unicode_ci NOT NULL,
  `pwd` varchar(64) collate utf8_unicode_ci NOT NULL,
  `roles` int(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `username` (`username`,`pwd`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `user_relation` (
  `openid` varchar(64) collate utf8_unicode_ci NOT NULL,
  `fakeid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `nick_name` varchar(60) collate utf8_unicode_ci NOT NULL,
  `user_name` varchar(60) collate utf8_unicode_ci NOT NULL,
  `signature` varchar(120) collate utf8_unicode_ci NOT NULL,
  `city` varchar(20) collate utf8_unicode_ci NOT NULL,
  `province` varchar(20) collate utf8_unicode_ci NOT NULL,
  `country` varchar(20) collate utf8_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `flag` int(1) NOT NULL default '0',
  PRIMARY KEY  (`openid`),
  KEY `flag` (`flag`),
  KEY `fakeid` (`fakeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
