/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 10.1.21-MariaDB : Database - story
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`story` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `story`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) DEFAULT NULL,
  `title` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  `typeid` int(10) DEFAULT NULL,
  `state` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `words` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `putTime` date DEFAULT NULL,
  `nick` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` int(255) DEFAULT NULL,
  `good` int(255) DEFAULT NULL,
  `newhot` int(255) DEFAULT NULL,
  `cg` int(255) DEFAULT NULL,
  `wx` int(255) DEFAULT NULL,
  `tj` int(255) DEFAULT NULL,
  `readnum` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `article` */

insert  into `article`(`id`,`articleid`,`title`,`userid`,`typeid`,`state`,`words`,`cover`,`putTime`,`nick`,`type`,`hot`,`good`,`newhot`,`cg`,`wx`,`tj`,`readnum`) values (1,1,'他和她的晚安故事',1,1,'连载中','976','../img/17581984951308769530l.jpg','2017-03-30','烂柿子','秘密',253,45,58,58,56,58,5265),(2,2,'江月见重山',2,2,'已完结','256','../img/10490775291106461164l.jpg','2017-07-02','苏台新','创作',43,56,54,57,45,57,5623),(3,3,'每日礼记',3,3,'已完结','5452','../img/502595535614937209.jpg','2017-07-03','李二二','秘密',64,46,56,24,12,99,1254),(4,4,'赶车人',4,4,'连载中','7894','../img/526648115134607430l.jpg','2017-07-07','胡不归','创作',85,42,25,56,23,15,2365),(5,5,'下雨了',5,5,'连载中','5632','../img/10170079141842146566l.jpg','2017-07-26','很简单','创作',102,47,57,78,78,69,5214),(6,6,'我爱吃糖',6,6,'连载中','100','../img/10640952721095920193l.jpg','2017-07-16','六月雪','真事',73,22,222,0,22,22,231),(7,7,'香体',7,7,'连载中','24','../img/1168244645316027018.png','2017-07-14','苏之铭','真事',77,20,22,78,4,150,4569),(8,8,'久球',8,8,'连载中','4564','../img/11714328811435329948l.jpg','2017-07-18','小妖','真事',82,65,33,12,5,103,1234),(9,9,'逆天下弄明',9,9,'连载中','757','../img/1233906065609340752l.jpg','2017-07-26','粟冰箱','真事',76,55,44,63,103,78,3152),(11,11,'无题',11,11,'连载中','5456','../img/1416631200894572176l.jpg','2017-07-22','素闲','真事',57,62,66,45,101,23,987),(13,12,'硅娃杂技',12,12,'连载中','54','../img/1465519025672141681.jpg','2017-06-08','晓静如花','真事',99,20,77,32,100,74,4266),(14,13,'辛负公寓',13,13,'连载中','878','../img/1529582159467756805.png','2017-07-03','超美','真事',52,75,23,102,12,12,1254),(15,14,'大观幻节',14,14,'连载中','55','../img/16454612132021239431.jpg','2017-07-08','麦茶','真事',136,2,99,101,78,78,1987),(16,15,'玄武纪',15,15,'连载中','656','../img/1705815641030177849l_small.jpg','2017-07-18','阳光','真事',53,1,10,100,1,45,7560);

/*Table structure for table `cate` */

DROP TABLE IF EXISTS `cate`;

CREATE TABLE `cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cate` */

insert  into `cate`(`id`,`nick`) values (1,'李盆'),(2,'蔡要要'),(3,'桑榆非鱼'),(4,'远子'),(5,'画霓');

/*Table structure for table `recommend` */

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article-id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `recommend` */

insert  into `recommend`(`id`,`article-id`) values (1,1),(2,2),(3,3),(4,4),(5,5);

/*Table structure for table `section` */

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) DEFAULT NULL,
  `znum` int(11) DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `section` */

insert  into `section`(`id`,`articleid`,`znum`,`text`,`userid`) values (1,1,1,'朝鲜北路人文地理学................',1),(2,1,1,'还好我长得美...........................',1),(3,1,1,'橡皮橡皮章......................',1),(4,2,1,'眼望着北方..............',2),(5,2,1,'江月见重山..............',2),(6,3,1,'每日礼记...........',3),(7,4,1,'赶车人...........',4),(8,5,1,'下雨了.......',5),(9,6,1,'我爱吃糖......',6),(10,7,1,'香体.....',7),(11,8,1,'久球........',8),(12,9,1,'逆天下弄明........',9),(13,10,1,'暮春谋杀案......',10),(14,11,1,'无题.......',11),(15,12,1,'硅娃杂技.........',12),(16,13,1,'辛负公寓......',13),(17,14,1,'大观幻节.....',14),(18,15,1,'玄武纪',15);

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `type` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `type` */

insert  into `type`(`id`,`type`) values (1,'散文'),(2,'乡土'),(3,'微型小说'),(4,'游记'),(5,'言情'),(6,'仙侠'),(7,'奇幻'),(8,'志怪'),(9,'悬疑'),(10,'艺术'),(11,'童话'),(12,'非虚构'),(13,'青春'),(14,'职场'),(15,'架空'),(16,'穿越'),(17,'科幻'),(18,'历史'),(19,'试试手气'),(20,'秘密');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `turl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `burl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`nick`,`sign`,`turl`,`burl`,`email`,`password`,`name`) values (1,'烂柿子','想找人合作写联文','../img/touxiang/1.jpg','../img/beijing/101.jpg','1932064287@qq.com','123',NULL),(2,'苏台新','在故事里相遇','../img/touxiang/2.jpg','../img/beijing/102.jpg','1374591886@qq.com','123',NULL),(3,'李二二','小写手','../img/touxiang/3.jpg','../img/beijing/103.jpg','935958653@qq.com','123',NULL),(4,'胡不归','仙人抚我顶，结发受长生','../img/touxiang/4.jpg','../img/beijing/104.jpg','123456789@qq.com','123',NULL),(5,'很简单','我们举杯欢笑，庆祝时日无多','../img/touxiang/5.jpg','../img/beijing/105.jpg','1234567899@qq.com','123',NULL),(6,'六月雪','仰天大笑出门去，我辈岂是蓬蒿人','../img/touxiang/6.jpg','../img/beijing/106.jpg','4568522008@qq.com','123',NULL),(7,'苏之铭','我爱吃鱼','../img/touxiang/7.jpg','../img/beijing/107.jpg','4568522009@qq.com','123',NULL),(8,'小妖','山不在高','../img/touxiang/8.jpg','../img/beijing/108.jpg','4568522010@qq.com','123',NULL),(9,'栗冰箱','醉里挑灯看剑','../img/touxiang/9.jpg','../img/beijing/109.jpg','4568522011@qq.com','123',NULL),(10,'胡不归','梦回吹角连营','../img/touxiang/10.jpg','../img/beijing/110.jpg','4568522012@qq.com','123',NULL),(11,'素闲','一个人','../img/touxiang/11.jpg','../img/beijing/111.jpg','4568522013@qq.com','123',NULL),(12,'晓静如花','讨厌阴雨天','../img/touxiang/12.jpg','../img/beijing/112.jpg','4568522014@qq.com','123',NULL),(13,'超美','减肥！减肥！减肥！','../img/touxiang/13.jpg','../img/beijing/113.jpg','4568522015@qq.com','123',NULL),(14,'麦茶','工作累死了','../img/touxiang/14.jpg','../img/beijing/114.jpg','4568522016@qq.com','123',NULL),(15,'阳光','明天会跟好','../img/touxiang/15.jpg','../img/beijing/115.jpg','4568522017@qq.com','123',NULL),(16,'奥格威',NULL,NULL,NULL,'1849438119@qq.com','123',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
