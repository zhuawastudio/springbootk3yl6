/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootk3yl6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootk3yl6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootk3yl6`;

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-05-26 13:15:18',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (62,'2021-05-26 13:15:18',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (63,'2021-05-26 13:15:18',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (64,'2021-05-26 13:15:18',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (65,'2021-05-26 13:15:18',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (66,'2021-05-26 13:15:18',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootk3yl6/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootk3yl6/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootk3yl6/upload/picture3.jpg');

/*Table structure for table `discussxuexijiqiao` */

DROP TABLE IF EXISTS `discussxuexijiqiao`;

CREATE TABLE `discussxuexijiqiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='学习技巧评论表';

/*Data for the table `discussxuexijiqiao` */

insert  into `discussxuexijiqiao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-05-26 13:15:18',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxuexijiqiao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-05-26 13:15:18',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxuexijiqiao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-05-26 13:15:18',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxuexijiqiao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-05-26 13:15:18',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxuexijiqiao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-05-26 13:15:18',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxuexijiqiao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-05-26 13:15:18',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusszaixianxuexi` */

DROP TABLE IF EXISTS `discusszaixianxuexi`;

CREATE TABLE `discusszaixianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='在线学习评论表';

/*Data for the table `discusszaixianxuexi` */

insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-26 13:15:18',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-26 13:15:18',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-26 13:15:18',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-26 13:15:18',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-26 13:15:18',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusszaixianxuexi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-26 13:15:18',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='英语角';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (71,'2021-05-26 13:15:18','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (72,'2021-05-26 13:15:18','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (73,'2021-05-26 13:15:18','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (74,'2021-05-26 13:15:18','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (75,'2021-05-26 13:15:18','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (76,'2021-05-26 13:15:18','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `peixunbaoming` */

DROP TABLE IF EXISTS `peixunbaoming`;

CREATE TABLE `peixunbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peixunmingcheng` varchar(200) NOT NULL COMMENT '培训名称',
  `kecheng` varchar(200) NOT NULL COMMENT '课程',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `peixunzhouqi` varchar(200) DEFAULT NULL COMMENT '培训周期',
  `peixundidian` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `peixunfeiyong` int(11) DEFAULT NULL COMMENT '培训费用',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1622006244210 DEFAULT CHARSET=utf8 COMMENT='培训报名';

/*Data for the table `peixunbaoming` */

insert  into `peixunbaoming`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixundidian`,`zhanghao`,`xingming`,`peixunfeiyong`,`baomingshijian`,`sfsh`,`shhf`,`ispay`) values (51,'2021-05-26 13:15:18','培训名称1','课程1','http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian1.jpg','培训周期1','培训地点1','账号1','姓名1',1,'2021-05-26 13:15:18','是','','未支付');
insert  into `peixunbaoming`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixundidian`,`zhanghao`,`xingming`,`peixunfeiyong`,`baomingshijian`,`sfsh`,`shhf`,`ispay`) values (52,'2021-05-26 13:15:18','培训名称2','课程2','http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian2.jpg','培训周期2','培训地点2','账号2','姓名2',2,'2021-05-26 13:15:18','是','','未支付');
insert  into `peixunbaoming`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixundidian`,`zhanghao`,`xingming`,`peixunfeiyong`,`baomingshijian`,`sfsh`,`shhf`,`ispay`) values (53,'2021-05-26 13:15:18','培训名称3','课程3','http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian3.jpg','培训周期3','培训地点3','账号3','姓名3',3,'2021-05-26 13:15:18','是','','未支付');
insert  into `peixunbaoming`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixundidian`,`zhanghao`,`xingming`,`peixunfeiyong`,`baomingshijian`,`sfsh`,`shhf`,`ispay`) values (54,'2021-05-26 13:15:18','培训名称4','课程4','http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian4.jpg','培训周期4','培训地点4','账号4','姓名4',4,'2021-05-26 13:15:18','是','','未支付');
insert  into `peixunbaoming`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixundidian`,`zhanghao`,`xingming`,`peixunfeiyong`,`baomingshijian`,`sfsh`,`shhf`,`ispay`) values (55,'2021-05-26 13:15:18','培训名称5','课程5','http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian5.jpg','培训周期5','培训地点5','账号5','姓名5',5,'2021-05-26 13:15:18','是','','未支付');
insert  into `peixunbaoming`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixundidian`,`zhanghao`,`xingming`,`peixunfeiyong`,`baomingshijian`,`sfsh`,`shhf`,`ispay`) values (56,'2021-05-26 13:15:18','培训名称6','课程6','http://localhost:8080/springbootk3yl6/upload/peixunbaoming_tupian6.jpg','培训周期6','培训地点6','账号6','姓名6',6,'2021-05-26 13:15:18','是','','未支付');
insert  into `peixunbaoming`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixundidian`,`zhanghao`,`xingming`,`peixunfeiyong`,`baomingshijian`,`sfsh`,`shhf`,`ispay`) values (1622006244209,'2021-05-26 13:17:23','培训名称6','课程6','http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian6.jpg','培训周期6','培训地点6','1',NULL,6,'2021-05-26 13:17:16','否',NULL,'已支付');

/*Table structure for table `peixunxinxi` */

DROP TABLE IF EXISTS `peixunxinxi`;

CREATE TABLE `peixunxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peixunmingcheng` varchar(200) NOT NULL COMMENT '培训名称',
  `kecheng` varchar(200) NOT NULL COMMENT '课程',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `peixunzhouqi` varchar(200) DEFAULT NULL COMMENT '培训周期',
  `peixunfeiyong` int(11) DEFAULT NULL COMMENT '培训费用',
  `peixundidian` varchar(200) DEFAULT NULL COMMENT '培训地点',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='培训信息';

/*Data for the table `peixunxinxi` */

insert  into `peixunxinxi`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixunfeiyong`,`peixundidian`,`beizhu`) values (41,'2021-05-26 13:15:18','培训名称1','课程1','http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian1.jpg','培训周期1',1,'培训地点1','备注1');
insert  into `peixunxinxi`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixunfeiyong`,`peixundidian`,`beizhu`) values (42,'2021-05-26 13:15:18','培训名称2','课程2','http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian2.jpg','培训周期2',2,'培训地点2','备注2');
insert  into `peixunxinxi`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixunfeiyong`,`peixundidian`,`beizhu`) values (43,'2021-05-26 13:15:18','培训名称3','课程3','http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian3.jpg','培训周期3',3,'培训地点3','备注3');
insert  into `peixunxinxi`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixunfeiyong`,`peixundidian`,`beizhu`) values (44,'2021-05-26 13:15:18','培训名称4','课程4','http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian4.jpg','培训周期4',4,'培训地点4','备注4');
insert  into `peixunxinxi`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixunfeiyong`,`peixundidian`,`beizhu`) values (45,'2021-05-26 13:15:18','培训名称5','课程5','http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian5.jpg','培训周期5',5,'培训地点5','备注5');
insert  into `peixunxinxi`(`id`,`addtime`,`peixunmingcheng`,`kecheng`,`tupian`,`peixunzhouqi`,`peixunfeiyong`,`peixundidian`,`beizhu`) values (46,'2021-05-26 13:15:18','培训名称6','课程6','http://localhost:8080/springbootk3yl6/upload/peixunxinxi_tupian6.jpg','培训周期6',6,'培训地点6','备注6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1622006216588,'1','yonghu','用户','8j26ufcv8np1k15d9zzk71hdy5vit8u0','2021-05-26 13:17:02','2021-05-26 14:17:03');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-26 13:15:19');

/*Table structure for table `xuexijiqiao` */

DROP TABLE IF EXISTS `xuexijiqiao`;

CREATE TABLE `xuexijiqiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `xuexiwenjian` varchar(200) DEFAULT NULL COMMENT '学习文件',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学习技巧';

/*Data for the table `xuexijiqiao` */

insert  into `xuexijiqiao`(`id`,`addtime`,`biaoti`,`neirong`,`xuexiwenjian`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (31,'2021-05-26 13:15:18','标题1','内容1','','2021-05-26 13:15:18','http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian1.jpg','2021-05-26 13:15:18',1);
insert  into `xuexijiqiao`(`id`,`addtime`,`biaoti`,`neirong`,`xuexiwenjian`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (32,'2021-05-26 13:15:18','标题2','内容2','','2021-05-26 13:15:18','http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian2.jpg','2021-05-26 13:15:18',2);
insert  into `xuexijiqiao`(`id`,`addtime`,`biaoti`,`neirong`,`xuexiwenjian`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (33,'2021-05-26 13:15:18','标题3','内容3','','2021-05-26 13:15:18','http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian3.jpg','2021-05-26 13:15:18',3);
insert  into `xuexijiqiao`(`id`,`addtime`,`biaoti`,`neirong`,`xuexiwenjian`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (34,'2021-05-26 13:15:18','标题4','内容4','','2021-05-26 13:15:18','http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian4.jpg','2021-05-26 13:15:18',4);
insert  into `xuexijiqiao`(`id`,`addtime`,`biaoti`,`neirong`,`xuexiwenjian`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (35,'2021-05-26 13:15:18','标题5','内容5','','2021-05-26 13:15:18','http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian5.jpg','2021-05-26 13:15:18',5);
insert  into `xuexijiqiao`(`id`,`addtime`,`biaoti`,`neirong`,`xuexiwenjian`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (36,'2021-05-26 13:15:18','标题6','内容6','','2021-05-26 13:15:18','http://localhost:8080/springbootk3yl6/upload/xuexijiqiao_fengmian6.jpg','2021-05-26 13:15:18',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1622006216589 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`) values (11,'2021-05-26 13:15:18','用户1','123456','姓名1','男','13823888881','440300199101010001','773890001@qq.com','http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`) values (12,'2021-05-26 13:15:18','用户2','123456','姓名2','男','13823888882','440300199202020002','773890002@qq.com','http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`) values (13,'2021-05-26 13:15:18','用户3','123456','姓名3','男','13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`) values (14,'2021-05-26 13:15:18','用户4','123456','姓名4','男','13823888884','440300199404040004','773890004@qq.com','http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`) values (15,'2021-05-26 13:15:18','用户5','123456','姓名5','男','13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`) values (16,'2021-05-26 13:15:18','用户6','123456','姓名6','男','13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/springbootk3yl6/upload/yonghu_zhaopian6.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`) values (1622006216588,'2021-05-26 13:16:56','1','1',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `zaixianxuexi` */

DROP TABLE IF EXISTS `zaixianxuexi`;

CREATE TABLE `zaixianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirongjianjie` longtext COMMENT '内容简介',
  `xuexishipin` varchar(200) DEFAULT NULL COMMENT '学习视频',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='在线学习';

/*Data for the table `zaixianxuexi` */

insert  into `zaixianxuexi`(`id`,`addtime`,`biaoti`,`tupian`,`neirongjianjie`,`xuexishipin`,`faburiqi`,`clicktime`,`clicknum`) values (21,'2021-05-26 13:15:18','标题1','http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian1.jpg','内容简介1','','2021-05-26 13:15:18','2021-05-26 13:15:18',1);
insert  into `zaixianxuexi`(`id`,`addtime`,`biaoti`,`tupian`,`neirongjianjie`,`xuexishipin`,`faburiqi`,`clicktime`,`clicknum`) values (22,'2021-05-26 13:15:18','标题2','http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian2.jpg','内容简介2','','2021-05-26 13:15:18','2021-05-26 13:15:18',2);
insert  into `zaixianxuexi`(`id`,`addtime`,`biaoti`,`tupian`,`neirongjianjie`,`xuexishipin`,`faburiqi`,`clicktime`,`clicknum`) values (23,'2021-05-26 13:15:18','标题3','http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian3.jpg','内容简介3','','2021-05-26 13:15:18','2021-05-26 13:15:18',3);
insert  into `zaixianxuexi`(`id`,`addtime`,`biaoti`,`tupian`,`neirongjianjie`,`xuexishipin`,`faburiqi`,`clicktime`,`clicknum`) values (24,'2021-05-26 13:15:18','标题4','http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian4.jpg','内容简介4','','2021-05-26 13:15:18','2021-05-26 13:15:18',4);
insert  into `zaixianxuexi`(`id`,`addtime`,`biaoti`,`tupian`,`neirongjianjie`,`xuexishipin`,`faburiqi`,`clicktime`,`clicknum`) values (25,'2021-05-26 13:15:18','标题5','http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian5.jpg','内容简介5','','2021-05-26 13:15:18','2021-05-26 13:15:18',5);
insert  into `zaixianxuexi`(`id`,`addtime`,`biaoti`,`tupian`,`neirongjianjie`,`xuexishipin`,`faburiqi`,`clicktime`,`clicknum`) values (26,'2021-05-26 13:15:18','标题6','http://localhost:8080/springbootk3yl6/upload/zaixianxuexi_tupian6.jpg','内容简介6','','2021-05-26 13:15:18','2021-05-26 13:15:18',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
