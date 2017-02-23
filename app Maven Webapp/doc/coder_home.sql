# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: 127.0.0.1    Database: coder_home
# ------------------------------------------------------
# Server version 5.5.34

DROP DATABASE IF EXISTS `coder_home`;
CREATE DATABASE `coder_home` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `coder_home`;

#
# Source for table blog_attach
#

DROP TABLE IF EXISTS `blog_attach`;
CREATE TABLE `blog_attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `attachname` varchar(255) DEFAULT NULL COMMENT '原附件名',
  `attachdir` varchar(500) DEFAULT NULL COMMENT '附件目录',
  `uuidname` varchar(255) DEFAULT NULL COMMENT '加密后的附件名',
  `type` varchar(3) DEFAULT NULL COMMENT '附件类型（1-图片，2-文档，3-音频，4-视频，5-flash，6-压缩包，9-其他）',
  `uploaduser` int(11) DEFAULT NULL COMMENT '上传人id',
  `uploadtime` datetime DEFAULT NULL COMMENT '上传时间',
  `status` varchar(3) DEFAULT '1' COMMENT '状态（0-删除，1-提交，2-审核通过，3-审核不通过，9-冻结）',
  `audittime` datetime DEFAULT NULL COMMENT '审核时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '审核不通过原因',
  `audituser` int(11) DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表';

#
# Dumping data for table blog_attach
#

LOCK TABLES `blog_attach` WRITE;
/*!40000 ALTER TABLE `blog_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_attach` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table blog_collect
#

DROP TABLE IF EXISTS `blog_collect`;
CREATE TABLE `blog_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(11) DEFAULT NULL COMMENT '收藏人id',
  `contentid` int(11) DEFAULT NULL COMMENT '收藏文章id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章收藏表';

#
# Dumping data for table blog_collect
#

LOCK TABLES `blog_collect` WRITE;
/*!40000 ALTER TABLE `blog_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_collect` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table blog_column
#

DROP TABLE IF EXISTS `blog_column`;
CREATE TABLE `blog_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目名称',
  `parentid` int(11) DEFAULT NULL COMMENT '父级栏目id',
  `status` varchar(255) DEFAULT '1' COMMENT '状态（1-正常，9-冻结）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客栏目表';

#
# Dumping data for table blog_column
#

LOCK TABLES `blog_column` WRITE;
/*!40000 ALTER TABLE `blog_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_column` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table blog_column_content
#

DROP TABLE IF EXISTS `blog_column_content`;
CREATE TABLE `blog_column_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `columnid` int(11) DEFAULT NULL COMMENT '栏目id',
  `contentid` int(11) DEFAULT NULL COMMENT '文章表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博文栏目关系表';

#
# Dumping data for table blog_column_content
#

LOCK TABLES `blog_column_content` WRITE;
/*!40000 ALTER TABLE `blog_column_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_column_content` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table blog_comment
#

DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content_id` int(11) DEFAULT NULL COMMENT '博文id',
  `userid` int(11) DEFAULT NULL COMMENT '评论人id',
  `type` varchar(3) DEFAULT NULL COMMENT '类型（1-点赞，2-评论）',
  `comment` varchar(1000) DEFAULT NULL COMMENT '评论',
  `praise` varchar(3) DEFAULT NULL COMMENT '赞扬（1-点赞，9-取消点赞）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博文评论';

#
# Dumping data for table blog_comment
#

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table blog_content
#

DROP TABLE IF EXISTS `blog_content`;
CREATE TABLE `blog_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `content` longtext COMMENT '文章内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `readnum` int(8) DEFAULT '0' COMMENT '浏览次数',
  `status` varchar(3) DEFAULT '1' COMMENT '状态（1-正常，9-删除）',
  `createuser` int(11) DEFAULT NULL COMMENT '发布人id',
  `introduction` varchar(255) DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博文表';

#
# Dumping data for table blog_content
#

LOCK TABLES `blog_content` WRITE;
/*!40000 ALTER TABLE `blog_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_content` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table blog_content_attach
#

DROP TABLE IF EXISTS `blog_content_attach`;
CREATE TABLE `blog_content_attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `contentid` int(11) DEFAULT NULL COMMENT '文章id',
  `attachid` int(11) DEFAULT NULL COMMENT '附件id',
  `status` varchar(3) DEFAULT '1' COMMENT '状态（1-关联，9-不关联/删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章附件关系表';

#
# Dumping data for table blog_content_attach
#

LOCK TABLES `blog_content_attach` WRITE;
/*!40000 ALTER TABLE `blog_content_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_content_attach` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table blog_content_keyword
#

DROP TABLE IF EXISTS `blog_content_keyword`;
CREATE TABLE `blog_content_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `contentid` int(11) DEFAULT NULL COMMENT '文章id',
  `keyword` varchar(32) DEFAULT NULL COMMENT '文章关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章关键字表';

#
# Dumping data for table blog_content_keyword
#

LOCK TABLES `blog_content_keyword` WRITE;
/*!40000 ALTER TABLE `blog_content_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_content_keyword` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table blog_content_tab
#

DROP TABLE IF EXISTS `blog_content_tab`;
CREATE TABLE `blog_content_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `contentid` int(11) DEFAULT NULL COMMENT '文章id',
  `tabname` varchar(255) DEFAULT NULL COMMENT '标签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章标签';

#
# Dumping data for table blog_content_tab
#

LOCK TABLES `blog_content_tab` WRITE;
/*!40000 ALTER TABLE `blog_content_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_content_tab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sys_code
#

DROP TABLE IF EXISTS `sys_code`;
CREATE TABLE `sys_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `typename` varchar(40) DEFAULT NULL COMMENT '编码类型名称',
  `typecode` varchar(20) DEFAULT NULL COMMENT '类型编码',
  `codename` varchar(40) DEFAULT NULL COMMENT '编码名称',
  `code` varchar(10) DEFAULT NULL COMMENT '编码值',
  `status` varchar(3) DEFAULT '1' COMMENT '状态（1-正常，9-冻结）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统数据字典';

#
# Dumping data for table sys_code
#

LOCK TABLES `sys_code` WRITE;
/*!40000 ALTER TABLE `sys_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_code` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sys_link
#

DROP TABLE IF EXISTS `sys_link`;
CREATE TABLE `sys_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` varchar(3) DEFAULT NULL COMMENT '链接类型',
  `url` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `imageid` int(11) DEFAULT NULL COMMENT '图片id（附件）',
  `status` varchar(3) DEFAULT NULL COMMENT '状态（1-正常，9-冻结）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统链接';

#
# Dumping data for table sys_link
#

LOCK TABLES `sys_link` WRITE;
/*!40000 ALTER TABLE `sys_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_link` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sys_log
#

DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '主键',
  `userid` int(11) DEFAULT NULL COMMENT '操作用户id',
  `url` varchar(500) DEFAULT NULL COMMENT '操作url',
  `params` longtext COMMENT '参数（json字符串形式）',
  `type` varchar(3) DEFAULT NULL COMMENT '日志记录类型（1-前置，2-后置，3-环绕，4-异常）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户操作日志';

#
# Dumping data for table sys_log
#

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sys_menu
#

DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuname` varchar(255) DEFAULT NULL COMMENT '菜单名',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单url',
  `parentid` int(11) DEFAULT NULL COMMENT '父级菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

#
# Dumping data for table sys_menu
#

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sys_role
#

DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rolename` varchar(255) DEFAULT NULL COMMENT '角色名',
  `status` varchar(3) DEFAULT '1' COMMENT '状态（1-正常，9-冻结）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色表';

#
# Dumping data for table sys_role
#

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sys_role_menu
#

DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `roleid` int(11) DEFAULT NULL COMMENT '系统角色id',
  `menuid` int(11) DEFAULT NULL COMMENT '系统菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色权限表';

#
# Dumping data for table sys_role_menu
#

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sys_user
#

DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loginname` varchar(32) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `passwd` varchar(32) DEFAULT NULL COMMENT '密码（md5）',
  `salt` varchar(32) DEFAULT NULL COMMENT '盐（密码加盐）',
  `usertype` varchar(3) DEFAULT NULL COMMENT '用户类型（1-系统管理员，2-系统业务员）',
  `lastlogin` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `loginip` varchar(32) DEFAULT NULL COMMENT '登陆ip',
  `loginnum` int(8) DEFAULT NULL COMMENT '登陆次数',
  `status` varchar(3) DEFAULT '1' COMMENT '状态（0-锁定，1-正常，9-注销）',
  `failnum` int(11) DEFAULT '0' COMMENT '登陆失败次数（每次解锁后置0）',
  `locktime` datetime DEFAULT NULL COMMENT '锁定时间',
  `unlocktime` datetime DEFAULT NULL COMMENT '解锁时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '锁定原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户表';

#
# Dumping data for table sys_user
#

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sys_user_role
#

DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(11) DEFAULT NULL COMMENT '系统用户id',
  `roleid` int(11) DEFAULT NULL COMMENT '系统角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户角色表';

#
# Dumping data for table sys_user_role
#

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table web_menu
#

DROP TABLE IF EXISTS `web_menu`;
CREATE TABLE `web_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuname` varchar(255) DEFAULT NULL COMMENT '菜单名',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单url',
  `parentid` int(11) DEFAULT NULL COMMENT '父级菜单id',
  `level` int(1) DEFAULT '0' COMMENT '网站菜单等级（根据用户等级来决定该用户可以使用哪些菜单）',
  `status` varchar(3) DEFAULT '1' COMMENT '状态（1-正常，9-冻结）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站菜单表';

#
# Dumping data for table web_menu
#

LOCK TABLES `web_menu` WRITE;
/*!40000 ALTER TABLE `web_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_menu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table web_user
#

DROP TABLE IF EXISTS `web_user`;
CREATE TABLE `web_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loginname` varchar(32) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `passwd` varchar(32) DEFAULT NULL COMMENT '密码（md5）',
  `salt` varchar(32) DEFAULT NULL COMMENT '盐（密码加盐）',
  `starlevel` int(1) DEFAULT '1' COMMENT '星级（0-9级，信息未完善-0级，信息完善-1级）',
  `vstatus` varchar(3) DEFAULT '0' COMMENT '是否大V（0-否，1-是）',
  `lastlogin` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `loginip` varchar(32) DEFAULT NULL COMMENT '登陆ip',
  `loginnum` int(8) DEFAULT NULL COMMENT '登陆次数',
  `status` varchar(3) DEFAULT '1' COMMENT '状态（0-锁定，1-正常，9-注销）',
  `failnum` int(11) DEFAULT '0' COMMENT '登陆失败次数（每次解锁后置0）',
  `locktime` datetime DEFAULT NULL COMMENT '锁定时间',
  `unlocktime` datetime DEFAULT NULL COMMENT '解锁时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '锁定原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站用户表';

#
# Dumping data for table web_user
#

LOCK TABLES `web_user` WRITE;
/*!40000 ALTER TABLE `web_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table web_user_fans
#

DROP TABLE IF EXISTS `web_user_fans`;
CREATE TABLE `web_user_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `masterid` int(11) DEFAULT NULL COMMENT '博主id',
  `funsid` int(11) DEFAULT NULL COMMENT '粉丝id',
  `status` varchar(255) DEFAULT NULL COMMENT '状态（1-关注/订阅，9-取消关注/订阅）',
  `focustime` datetime DEFAULT NULL COMMENT '关注时间',
  `unfocustime` datetime DEFAULT NULL COMMENT '取关时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站用户订阅粉丝表';

#
# Dumping data for table web_user_fans
#

LOCK TABLES `web_user_fans` WRITE;
/*!40000 ALTER TABLE `web_user_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_user_fans` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table web_user_log
#

DROP TABLE IF EXISTS `web_user_log`;
CREATE TABLE `web_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(11) DEFAULT NULL COMMENT '操作用户id',
  `url` varchar(500) DEFAULT NULL COMMENT '操作url',
  `params` longtext COMMENT '参数（json字符串形式）',
  `type` varchar(3) DEFAULT NULL COMMENT '日志记录类型（1-前置，2-后置，3-环绕，4-异常）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博主操作日志';

#
# Dumping data for table web_user_log
#

LOCK TABLES `web_user_log` WRITE;
/*!40000 ALTER TABLE `web_user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_user_log` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table web_user_score
#

DROP TABLE IF EXISTS `web_user_score`;
CREATE TABLE `web_user_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `score` int(8) DEFAULT '0' COMMENT '用户积分值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户积分表';

#
# Dumping data for table web_user_score
#

LOCK TABLES `web_user_score` WRITE;
/*!40000 ALTER TABLE `web_user_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_user_score` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
