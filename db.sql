/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - springboot03445
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot03445` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot03445`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot03445/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot03445/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot03445/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `kehuxinxi` */

DROP TABLE IF EXISTS `kehuxinxi`;

CREATE TABLE `kehuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehumingcheng` varchar(200) NOT NULL COMMENT '客户名称',
  `xingyeleixing` varchar(200) NOT NULL COMMENT '行业类型',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `beizhu` longtext COMMENT '备注',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615380007349 DEFAULT CHARSET=utf8 COMMENT='客户信息';

/*Data for the table `kehuxinxi` */

insert  into `kehuxinxi`(`id`,`addtime`,`kehumingcheng`,`xingyeleixing`,`xingbie`,`nianling`,`zhaopian`,`shouji`,`shenfenzheng`,`beizhu`,`gonghao`,`xingming`) values (21,'2021-03-10 20:37:42','客户名称1','行业类型1','男','年龄1','http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian1.jpg','13823888881','440300199101010001','备注1','工号1','姓名1'),(22,'2021-03-10 20:37:42','客户名称2','行业类型2','男','年龄2','http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian2.jpg','13823888882','440300199202020002','备注2','工号2','姓名2'),(23,'2021-03-10 20:37:42','客户名称3','行业类型3','男','年龄3','http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian3.jpg','13823888883','440300199303030003','备注3','工号3','姓名3'),(24,'2021-03-10 20:37:42','客户名称4','行业类型4','男','年龄4','http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian4.jpg','13823888884','440300199404040004','备注4','工号4','姓名4'),(25,'2021-03-10 20:37:42','客户名称5','行业类型5','男','年龄5','http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian5.jpg','13823888885','440300199505050005','备注5','工号5','姓名5'),(26,'2021-03-10 20:37:42','客户名称6','行业类型6','男','年龄6','http://localhost:8080/springboot03445/upload/kehuxinxi_zhaopian6.jpg','13823888886','440300199606060006','备注6','工号6','姓名6'),(1615380007348,'2021-03-10 20:40:07','测试','XX行业','女','22','http://localhost:8080/springboot03445/upload/1615379995482.png','15214121412','121111111111111111','11111111','001','测试');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','pf61q3mbmbf436b1u00r6gu5pl7slnyz','2021-03-10 20:38:42','2021-03-10 21:41:45'),(2,1615379969781,'001','yuangong','员工','a7a0kurb4alc7myys1wu3hhkr0fmv70v','2021-03-10 20:39:34','2021-03-10 21:41:01');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-10 20:37:42');

/*Table structure for table `xiangmuleixing` */

DROP TABLE IF EXISTS `xiangmuleixing`;

CREATE TABLE `xiangmuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='项目类型';

/*Data for the table `xiangmuleixing` */

insert  into `xiangmuleixing`(`id`,`addtime`,`xiangmuleixing`) values (51,'2021-03-10 20:37:42','XX类型'),(52,'2021-03-10 20:37:42','项目类型2'),(53,'2021-03-10 20:37:42','项目类型3'),(54,'2021-03-10 20:37:42','项目类型4'),(55,'2021-03-10 20:37:42','项目类型5'),(56,'2021-03-10 20:37:42','项目类型6');

/*Table structure for table `xiangmushouyi` */

DROP TABLE IF EXISTS `xiangmushouyi`;

CREATE TABLE `xiangmushouyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `qiandanjine` varchar(200) DEFAULT NULL COMMENT '签单金额',
  `fenpeileixing` varchar(200) DEFAULT NULL COMMENT '分配类型',
  `fenpeijine` int(11) NOT NULL COMMENT '分配金额',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615380216831 DEFAULT CHARSET=utf8 COMMENT='项目收益';

/*Data for the table `xiangmushouyi` */

insert  into `xiangmushouyi`(`id`,`addtime`,`xiangmumingcheng`,`xiangmuleixing`,`qiandanjine`,`fenpeileixing`,`fenpeijine`,`riqi`) values (61,'2021-03-10 20:37:42','项目名称1','项目类型1','签单金额1','集团',1,'2021-03-10'),(62,'2021-03-10 20:37:42','项目名称2','项目类型2','签单金额2','集团',2,'2021-03-10'),(63,'2021-03-10 20:37:42','项目名称3','项目类型3','签单金额3','集团',3,'2021-03-10'),(64,'2021-03-10 20:37:42','项目名称4','项目类型4','签单金额4','集团',4,'2021-03-10'),(65,'2021-03-10 20:37:42','项目名称5','项目类型5','签单金额5','集团',5,'2021-03-10'),(66,'2021-03-10 20:37:42','项目名称6','项目类型6','签单金额6','集团',6,'2021-03-10'),(1615380190610,'2021-03-10 20:43:10','11111','XX类型','500000','集团',250000,'2021-03-01'),(1615380200029,'2021-03-10 20:43:19','11111','XX类型','500000','售前',100000,'2021-03-01'),(1615380208316,'2021-03-10 20:43:27','11111','XX类型','500000','售后',100000,'2021-03-01'),(1615380216830,'2021-03-10 20:43:36','11111','XX类型','500000','部门',50000,'2021-03-01');

/*Table structure for table `xiangmuxinxi` */

DROP TABLE IF EXISTS `xiangmuxinxi`;

CREATE TABLE `xiangmuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) NOT NULL COMMENT '项目类型',
  `kehumingcheng` varchar(200) NOT NULL COMMENT '客户名称',
  `qiandanjine` int(11) DEFAULT NULL COMMENT '签单金额',
  `qiandanshuliang` int(11) DEFAULT NULL COMMENT '签单数量',
  `xiangmujindu` longtext COMMENT '项目进度',
  `qiandingriqi` date DEFAULT NULL COMMENT '签订日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `qiandanren` varchar(200) DEFAULT NULL COMMENT '签单人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615380094925 DEFAULT CHARSET=utf8 COMMENT='项目信息';

/*Data for the table `xiangmuxinxi` */

insert  into `xiangmuxinxi`(`id`,`addtime`,`xiangmumingcheng`,`xiangmuleixing`,`kehumingcheng`,`qiandanjine`,`qiandanshuliang`,`xiangmujindu`,`qiandingriqi`,`gonghao`,`qiandanren`) values (41,'2021-03-10 20:37:42','项目名称1','项目类型1','客户名称1',1,1,'项目进度1','2021-03-10','工号1','签单人1'),(42,'2021-03-10 20:37:42','项目名称2','项目类型2','客户名称2',2,2,'项目进度2','2021-03-10','工号2','签单人2'),(43,'2021-03-10 20:37:42','项目名称3','项目类型3','客户名称3',3,3,'项目进度3','2021-03-10','工号3','签单人3'),(44,'2021-03-10 20:37:42','项目名称4','项目类型4','客户名称4',4,4,'项目进度4','2021-03-10','工号4','签单人4'),(45,'2021-03-10 20:37:42','项目名称5','项目类型5','客户名称5',5,5,'项目进度5','2021-03-10','工号5','签单人5'),(46,'2021-03-10 20:37:42','项目名称6','项目类型6','客户名称6',6,6,'项目进度6','2021-03-10','工号6','签单人6'),(1615380094924,'2021-03-10 20:41:34','11111','XX类型','测试',500000,1000,'2121已经在开发中','2021-03-01','001','测试');

/*Table structure for table `xingyeleixing` */

DROP TABLE IF EXISTS `xingyeleixing`;

CREATE TABLE `xingyeleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingyeleixing` varchar(200) DEFAULT NULL COMMENT '行业类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='行业类型';

/*Data for the table `xingyeleixing` */

insert  into `xingyeleixing`(`id`,`addtime`,`xingyeleixing`) values (31,'2021-03-10 20:37:42','XX行业'),(32,'2021-03-10 20:37:42','行业类型2'),(33,'2021-03-10 20:37:42','行业类型3'),(34,'2021-03-10 20:37:42','行业类型4'),(35,'2021-03-10 20:37:42','行业类型5'),(36,'2021-03-10 20:37:42','行业类型6');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615379969782 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`zhaopian`,`shenfenzheng`,`shouji`,`youxiang`) values (11,'2021-03-10 20:37:42','1','1','姓名1','男','http://localhost:8080/springboot03445/upload/yuangong_zhaopian1.jpg','440300199101010001','13823888881','773890001@qq.com'),(12,'2021-03-10 20:37:42','员工2','123456','姓名2','男','http://localhost:8080/springboot03445/upload/yuangong_zhaopian2.jpg','440300199202020002','13823888882','773890002@qq.com'),(13,'2021-03-10 20:37:42','员工3','123456','姓名3','男','http://localhost:8080/springboot03445/upload/yuangong_zhaopian3.jpg','440300199303030003','13823888883','773890003@qq.com'),(14,'2021-03-10 20:37:42','员工4','123456','姓名4','男','http://localhost:8080/springboot03445/upload/yuangong_zhaopian4.jpg','440300199404040004','13823888884','773890004@qq.com'),(15,'2021-03-10 20:37:42','员工5','123456','姓名5','男','http://localhost:8080/springboot03445/upload/yuangong_zhaopian5.jpg','440300199505050005','13823888885','773890005@qq.com'),(16,'2021-03-10 20:37:42','员工6','123456','姓名6','男','http://localhost:8080/springboot03445/upload/yuangong_zhaopian6.jpg','440300199606060006','13823888886','773890006@qq.com'),(1615379969781,'2021-03-10 20:39:29','001','001','测试','男','http://localhost:8080/springboot03445/upload/1615379980447.png','441211111111111111','15221111111','12121@163.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
