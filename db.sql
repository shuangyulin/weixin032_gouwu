/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmt45rj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmt45rj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmt45rj`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615254455950 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-09 08:56:17',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-09 08:56:17',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-09 08:56:17',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-09 08:56:17',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-09 08:56:17',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-09 08:56:17',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615253747889,'2021-03-09 09:35:47',1615253681564,'银宇大厦','陈一','12312312312','是'),(1615254455949,'2021-03-09 09:47:35',1615254276524,'银宇大厦','张明','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615254406969 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1615251760450,'2021-03-09 09:02:40','shangpinxinxi',11,33,'商品名称3','http://localhost:8080/ssmt45rj/upload/shangpinxinxi_tupian3.jpg',1,99.9,NULL),(1615254202769,'2021-03-09 09:43:21','shangpinxinxi',1615254053493,1615253595849,'任天堂多模式便携式游戏机','http://localhost:8080/ssmt45rj/upload/1615253567712.jpg',1,2997,NULL);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615254490544 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (41,'2021-03-09 08:56:17',1,1,'提问1','回复1',1),(42,'2021-03-09 08:56:17',2,2,'提问2','回复2',2),(43,'2021-03-09 08:56:17',3,3,'提问3','回复3',3),(44,'2021-03-09 08:56:17',4,4,'提问4','回复4',4),(45,'2021-03-09 08:56:17',5,5,'提问5','回复5',5),(46,'2021-03-09 08:56:17',6,6,'提问6','回复6',6),(1615253783278,'2021-03-09 09:36:23',1615253681564,NULL,'请问耳机耳麦参与优惠活动吗',NULL,0),(1615253813770,'2021-03-09 09:36:53',1615253681564,1,NULL,'有的',NULL),(1615254231037,'2021-03-09 09:43:50',1615254053493,NULL,'请问优惠活动到什么时候结束呢',NULL,1),(1615254438321,'2021-03-09 09:47:17',1615254276524,NULL,'请问优惠活动到什么时候结束呢',NULL,0),(1615254490543,'2021-03-09 09:48:09',1615254276524,1,NULL,'5.9',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmt45rj/upload/1615253273159.jpg'),(2,'picture2','http://localhost:8080/ssmt45rj/upload/1615253280924.jpg'),(3,'picture3','http://localhost:8080/ssmt45rj/upload/1615253623964.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615254399914 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-09 08:56:17',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-09 08:56:17',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-09 08:56:17',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-09 08:56:17',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-09 08:56:17',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-09 08:56:17',6,6,'用户名6','评论内容6','回复内容6'),(1615253917043,'2021-03-09 09:38:36',1615253595849,1615253681564,'1','游戏机适合两个人用吗','适合'),(1615254196327,'2021-03-09 09:43:15',1615253595849,1615254053493,'2','请问这款有多少个模式',''),(1615254399913,'2021-03-09 09:46:39',1615253595849,1615254276524,'3','请问这款是有三个模式吗','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615253664416 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-03-09 08:56:17','标题1','简介1','http://localhost:8080/ssmt45rj/upload/1615252688354.jpg','<p>内容1</p>'),(93,'2021-03-09 08:56:17','标题3','简介3','http://localhost:8080/ssmt45rj/upload/news_picture3.jpg','内容3'),(94,'2021-03-09 08:56:17','标题4','简介4','http://localhost:8080/ssmt45rj/upload/1615252698267.jpg','<p>内容4</p>'),(95,'2021-03-09 08:56:17','标题5','简介5','http://localhost:8080/ssmt45rj/upload/1615252707019.jpg','<p>内容5</p>'),(96,'2021-03-09 08:56:17','标题6','简介6','http://localhost:8080/ssmt45rj/upload/1615252716104.jpg','<p>内容6</p>'),(1615253664415,'2021-03-09 09:34:23','电子产品优惠资讯','优惠资讯','http://localhost:8080/ssmt45rj/upload/1615253647512.jpg','<p><br></p><p>优惠时间：5.7-5.9</p><p><img src=\"http://localhost:8080/ssmt45rj/upload/1615253662041.jpg\"></p><p><br></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615254459441 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1615253753280,'2021-03-09 09:35:53','2021399355279905356','shangpinxinxi',1615253681564,1615253595849,'任天堂多模式便携式游戏机','http://localhost:8080/ssmt45rj/upload/1615253567712.jpg',1,2997,2997,2997,2997,1,'已完成','银宇大厦'),(1615253753564,'2021-03-09 09:35:53','2021399355285514022','shangpinxinxi',1615253681564,36,'商品名称6','http://localhost:8080/ssmt45rj/upload/1615252645968.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','银宇大厦'),(1615254459374,'2021-03-09 09:47:38','2021399473857918151','shangpinxinxi',1615254276524,1615253595849,'任天堂多模式便携式游戏机','http://localhost:8080/ssmt45rj/upload/1615253567712.jpg',1,2997,2997,2997,2997,1,'已完成','银宇大厦'),(1615254459440,'2021-03-09 09:47:38','2021399473862307343','shangpinxinxi',1615254276524,35,'商品名称5','http://localhost:8080/ssmt45rj/upload/1615252632593.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','银宇大厦');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615253535622 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-09 08:56:17','智能手表'),(22,'2021-03-09 08:56:17','智能手机'),(23,'2021-03-09 08:56:17','平板电脑'),(25,'2021-03-09 08:56:17','相机'),(1615253535621,'2021-03-09 09:32:15','游戏机');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615253595850 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (31,'2021-03-09 08:56:17','商品名称1','平板电脑','http://localhost:8080/ssmt45rj/upload/1615252589364.jpg','品牌1','规格1','<p>商品详情1</p>','2021-03-09 09:16:16',3,99.9),(32,'2021-03-09 08:56:17','商品名称2','智能手机','http://localhost:8080/ssmt45rj/upload/1615252599720.jpg','品牌2','规格2','<p>商品详情2</p>','2021-03-09 09:16:32',3,99.9),(33,'2021-03-09 08:56:17','商品名称3','平板电脑','http://localhost:8080/ssmt45rj/upload/shangpinxinxi_tupian3.jpg','品牌3','规格3','<p>商品详情3</p>','2021-03-09 09:16:44',5,99.9),(34,'2021-03-09 08:56:17','商品名称4','智能手表','http://localhost:8080/ssmt45rj/upload/1615252618128.jpg','品牌4','规格4','<p>商品详情4</p>','2021-03-09 09:16:50',6,99.9),(35,'2021-03-09 08:56:17','商品名称5','相机','http://localhost:8080/ssmt45rj/upload/1615252632593.jpg','品牌5','规格5','<p>商品详情5</p>','2021-03-09 09:46:43',17,99.9),(1615253595849,'2021-03-09 09:33:15','任天堂多模式便携式游戏机','游戏机','http://localhost:8080/ssmt45rj/upload/1615253567712.jpg','任天堂','深灰色','<p>一台主机三种玩法</p><p><img src=\"http://localhost:8080/ssmt45rj/upload/1615253594073.jpg\"></p>','2021-03-09 09:46:41',18,2997);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615254405572 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615254181115,'2021-03-09 09:43:00',1615254053493,1615253595849,'shangpinxinxi','任天堂多模式便携式游戏机','http://localhost:8080/ssmt45rj/upload/1615253567712.jpg'),(1615254384537,'2021-03-09 09:46:23',1615254276524,1615253595849,'shangpinxinxi','任天堂多模式便携式游戏机','http://localhost:8080/ssmt45rj/upload/1615253567712.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','u7z65d65k3v0idotqn5tke0i90oodrt7','2021-03-09 08:58:41','2021-03-09 10:02:25'),(2,1,'abo','users','管理员','we31cvgfzczhgke2jrkfy3tsrgjuwbos','2021-03-09 08:58:55','2021-03-09 10:32:00'),(3,1615253681564,'1','yonghu','用户','rvradnkoslxfffl5mwg1hw4ii9my46he','2021-03-09 09:34:47','2021-03-09 10:34:48'),(4,1615254053493,'2','yonghu','用户','fsi9ltdeshiuh76rdfagzg5ax41dwbam','2021-03-09 09:41:00','2021-03-09 10:41:59'),(5,1615254276524,'3','yonghu','用户','han16e2sw42hqrbt0x2o3v9em4rydsip','2021-03-09 09:45:17','2021-03-09 10:45:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','aboo','管理员','2021-03-09 08:56:17');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615254276525 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (11,'2021-03-09 08:56:17','用户1','123456','姓名1','男','http://localhost:8080/ssmt45rj/upload/yonghu_touxiang1.jpg','13823888881',1100),(12,'2021-03-09 08:56:17','用户2','123456','姓名2','男','http://localhost:8080/ssmt45rj/upload/yonghu_touxiang2.jpg','13823888882',100),(13,'2021-03-09 08:56:17','用户3','123456','姓名3','男','http://localhost:8080/ssmt45rj/upload/yonghu_touxiang3.jpg','13823888883',100),(14,'2021-03-09 08:56:17','用户4','123456','姓名4','男','http://localhost:8080/ssmt45rj/upload/yonghu_touxiang4.jpg','13823888884',100),(15,'2021-03-09 08:56:17','用户5','123456','姓名5','男','http://localhost:8080/ssmt45rj/upload/yonghu_touxiang5.jpg','13823888885',100),(16,'2021-03-09 08:56:17','用户6','123456','姓名6','男','http://localhost:8080/ssmt45rj/upload/yonghu_touxiang6.jpg','13823888886',100),(1615253681564,'2021-03-09 09:34:41','1','1','陈一','女',NULL,'12312312312',1903.1),(1615254053493,'2021-03-09 09:40:53','2','2','王明','男','http://localhost:8080/ssmt45rj/upload/1615254070951.jpg','12312312345',5000),(1615254276524,'2021-03-09 09:44:36','3','3','张明','男','http://localhost:8080/ssmt45rj/upload/1615254326092.jpg','12312312312',1903.1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
