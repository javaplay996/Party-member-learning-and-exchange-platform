/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dangyaunxuexijiaoliupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dangyaunxuexijiaoliupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dangyaunxuexijiaoliupingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-07 20:34:02'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-07 20:34:02'),(3,'zujuan_types','组卷方式',1,'自动组卷',NULL,NULL,'2023-03-07 20:34:02'),(4,'zujuan_types','组卷方式',2,'手动组卷',NULL,NULL,'2023-03-07 20:34:02'),(5,'kemu_types','科目',1,'语文',NULL,NULL,'2023-03-07 20:34:02'),(6,'kemu_types','科目',2,'数学',NULL,NULL,'2023-03-07 20:34:02'),(7,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2023-03-07 20:34:02'),(8,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2023-03-07 20:34:02'),(9,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2023-03-07 20:34:03'),(10,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2023-03-07 20:34:03'),(11,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2023-03-07 20:34:03'),(12,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2023-03-07 20:34:03'),(13,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-03-07 20:34:03'),(14,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-03-07 20:34:03'),(15,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-03-07 20:34:03'),(16,'kecheng_types','课程类型',4,'课程类型4',NULL,NULL,'2023-03-07 20:34:03'),(17,'ziliao_types','资料信息类型',1,'资料信息类型1',NULL,NULL,'2023-03-07 20:34:03'),(18,'ziliao_types','资料信息类型',2,'资料信息类型2',NULL,NULL,'2023-03-07 20:34:03'),(19,'ziliao_types','资料信息类型',3,'资料信息类型3',NULL,NULL,'2023-03-07 20:34:03'),(20,'ziliao_types','资料信息类型',4,'资料信息类型4',NULL,NULL,'2023-03-07 20:34:03'),(21,'zuoye_types','作业类型',1,'作业类型1',NULL,NULL,'2023-03-07 20:34:03'),(22,'zuoye_types','作业类型',2,'作业类型2',NULL,NULL,'2023-03-07 20:34:03'),(23,'zuoye_types','作业类型',3,'作业类型3',NULL,NULL,'2023-03-07 20:34:03'),(24,'zuoye_types','作业类型',4,'作业类型4',NULL,NULL,'2023-03-07 20:34:03'),(25,'zuoye_tijiao_yesno_types','提交状态',1,'待审批',NULL,NULL,'2023-03-07 20:34:03'),(26,'zuoye_tijiao_yesno_types','提交状态',2,'已批改',NULL,NULL,'2023-03-07 20:34:03'),(27,'zuoye_tijiao_yesno_types','提交状态',3,'未批改',NULL,NULL,'2023-03-07 20:34:03');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int(11) DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='试卷';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`kemu_types`,`exampaper_types`,`zujuan_types`,`exampaper_delete`,`create_time`) values (1,'测试试卷1',60,100,2,1,2,1,'2023-03-07 20:34:02'),(2,'测试试卷2',180,100,2,1,1,1,'2023-03-07 20:34:02');

/*Table structure for table `exampapertopic` */

DROP TABLE IF EXISTS `exampapertopic`;

CREATE TABLE `exampapertopic` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷',
  `examquestion_id` int(20) NOT NULL COMMENT '试题',
  `exampapertopic_number` int(20) NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='试卷选题';

/*Data for the table `exampapertopic` */

insert  into `exampapertopic`(`id`,`exampaper_id`,`examquestion_id`,`exampapertopic_number`,`create_time`) values (7,1,5,10,'2023-03-07 20:34:02'),(8,1,4,10,'2023-03-07 20:34:02'),(9,1,6,70,'2023-03-07 20:34:03'),(18,2,5,15,'2023-03-07 20:34:03'),(19,2,11,15,'2023-03-07 20:34:03'),(20,2,9,15,'2023-03-07 20:34:03'),(21,2,1,15,'2023-03-07 20:34:03'),(22,2,10,20,'2023-03-07 20:34:03'),(23,2,3,20,'2023-03-07 20:34:03'),(31,1,7,10,'2023-03-07 20:34:03'),(33,1,9,0,'2023-03-07 20:34:03'),(34,1,12,0,'2023-03-07 20:34:03');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) DEFAULT NULL COMMENT '试题名称 Search111',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型 Search111',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`examquestion_name`,`kemu_types`,`examquestion_options`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,'1-1=1',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','1-1=0',3,1,'2023-03-07 20:34:03'),(2,'1+1=？',2,'[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','B','1+1=2',1,2,'2023-03-07 20:34:03'),(3,'1+1-1=?',2,'[]','1','1+1-1=1',4,3,'2023-03-07 20:34:03'),(4,'2+2=?',2,'[]','4','2+2=4',4,4,'2023-03-07 20:34:03'),(5,'1-1-1+6=?',2,'[{\"text\":\"4\",\"code\":\"A\"},{\"text\":\"5\",\"code\":\"B\"},{\"text\":\"6\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]','B','1-1-1+6=5',1,5,'2023-03-07 20:34:03'),(6,'3+3=9',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','3+3=6',3,6,'2023-03-07 20:34:03'),(7,'试题名称1',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A,B,C','答案解析1',2,7,'2023-03-07 20:34:03'),(8,'试题名称2',2,'[]','正确答案2','答案解析2',4,8,'2023-03-07 20:34:03'),(9,'试题名称3',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','A','答案解析3',3,9,'2023-03-07 20:34:03'),(10,'试题名称4',2,'[]','正确答案4','答案解析4',4,10,'2023-03-07 20:34:03'),(11,'试题名称5',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','B','答案解析5',1,11,'2023-03-07 20:34:03'),(12,'试题名称6',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A','答案解析6',1,12,'2023-03-07 20:34:03');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1678193897679',1,2,50,'2023-03-07 20:58:18','2023-03-07 20:58:18'),(2,'1678194599828',1,2,50,'2023-03-07 21:10:00','2023-03-07 21:10:00');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1678193897679',1,3,'1',20,'2023-03-07 20:58:18'),(2,'1678193897679',1,10,'2',0,'2023-03-07 20:58:18'),(3,'1678193897679',1,1,'B',15,'2023-03-07 20:58:18'),(4,'1678193897679',1,9,'A',15,'2023-03-07 20:58:18'),(5,'1678193897679',1,11,'C',0,'2023-03-07 20:58:18'),(6,'1678193897679',1,5,'D',0,'2023-03-07 20:58:18'),(7,'1678194599828',1,3,'1',20,'2023-03-07 21:10:00'),(8,'1678194599828',1,10,'2',0,'2023-03-07 21:10:00'),(9,'1678194599828',1,1,'B',15,'2023-03-07 21:10:00'),(10,'1678194599828',1,9,'A',15,'2023-03-07 21:10:00'),(11,'1678194599828',1,11,'D',0,'2023-03-07 21:10:00'),(12,'1678194599828',1,5,'D',0,'2023-03-07 21:10:00');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,2,10,'2','2023-03-07 20:58:18','2023-03-07 20:58:18'),(2,1,2,11,'C','2023-03-07 20:58:18','2023-03-07 20:58:18'),(3,1,2,5,'D','2023-03-07 20:58:18','2023-03-07 20:58:18'),(4,1,2,10,'2','2023-03-07 21:10:00','2023-03-07 21:10:00'),(5,1,2,11,'D','2023-03-07 21:10:00','2023-03-07 21:10:00'),(6,1,2,5,'D','2023-03-07 21:10:00','2023-03-07 21:10:00');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kechengkaishi_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kecheng_content` text COMMENT '课程介绍 ',
  `kecheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`laoshi_id`,`kecheng_name`,`kecheng_uuid_number`,`kecheng_photo`,`kecheng_types`,`kechengkaishi_time`,`kecheng_video`,`kecheng_content`,`kecheng_delete`,`insert_time`,`create_time`) values (1,2,'课程名称1','1678192471081','upload/kecheng1.jpg',1,'2023-03-07 20:34:31','upload/video.mp4','课程介绍1',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(2,2,'课程名称2','1678192471135','upload/kecheng2.jpg',3,'2023-03-07 20:34:31','upload/video.mp4','课程介绍2',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(3,2,'课程名称3','1678192471074','upload/kecheng3.jpg',3,'2023-03-07 20:34:31','upload/video.mp4','课程介绍3',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(4,3,'课程名称4','1678192471060','upload/kecheng4.jpg',1,'2023-03-07 20:34:31','upload/video.mp4','课程介绍4',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(5,3,'课程名称5','1678192471059','upload/kecheng5.jpg',4,'2023-03-07 20:34:31','upload/video.mp4','课程介绍5',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(6,2,'课程名称6','1678192471081','upload/kecheng6.jpg',4,'2023-03-07 20:34:31','upload/video.mp4','课程介绍6',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(7,3,'课程名称7','1678192471136','upload/kecheng7.jpg',1,'2023-03-07 20:34:31','upload/video.mp4','课程介绍7',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(8,1,'课程名称8','1678192471156','upload/kecheng8.jpg',1,'2023-03-07 20:34:31','upload/video.mp4','课程介绍8',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(9,3,'课程名称9','1678192471068','upload/kecheng9.jpg',2,'2023-03-07 20:34:31','upload/video.mp4','课程介绍9',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(10,3,'课程名称10','1678192471129','upload/kecheng10.jpg',1,'2023-03-07 20:34:31','upload/video.mp4','课程介绍10',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(11,3,'课程名称11','1678192471117','upload/kecheng11.jpg',2,'2023-03-07 20:34:31','upload/video.mp4','课程介绍11',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(12,2,'课程名称12','1678192471085','upload/kecheng12.jpg',2,'2023-03-07 20:34:31','upload/video.mp4','课程介绍12',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(13,3,'课程名称13','1678192471088','upload/kecheng13.jpg',1,'2023-03-07 20:34:31','upload/video.mp4','课程介绍13',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(14,3,'课程名称14','1678192471134','upload/kecheng14.jpg',1,'2023-03-07 20:34:31','upload/video.mp4','课程介绍14',1,'2023-03-07 20:34:31','2023-03-07 20:34:31');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',1,'1@qq.com','2023-03-07 20:34:31'),(2,'a2','123456','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',1,'2@qq.com','2023-03-07 20:34:31'),(3,'a3','123456','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',1,'3@qq.com','2023-03-07 20:34:31');

/*Table structure for table `qiandao` */

DROP TABLE IF EXISTS `qiandao`;

CREATE TABLE `qiandao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiandao_text` text COMMENT '内容',
  `qiandao_beizhu` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '签到时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='签到';

/*Data for the table `qiandao` */

insert  into `qiandao`(`id`,`yonghu_id`,`qiandao_text`,`qiandao_beizhu`,`insert_time`,`create_time`) values (1,3,'内容1','备注1','2023-03-07 20:34:31','2023-03-07 20:34:31'),(2,1,'内容2','备注2','2023-03-07 20:34:31','2023-03-07 20:34:31'),(3,2,'内容3','备注3','2023-03-07 20:34:31','2023-03-07 20:34:31'),(4,1,'内容4','备注4','2023-03-07 20:34:31','2023-03-07 20:34:31'),(5,1,'内容5','备注5','2023-03-07 20:34:31','2023-03-07 20:34:31'),(6,3,'内容6','备注6','2023-03-07 20:34:31','2023-03-07 20:34:31'),(7,2,'内容7','备注7','2023-03-07 20:34:31','2023-03-07 20:34:31'),(8,1,'内容8','备注8','2023-03-07 20:34:31','2023-03-07 20:34:31'),(9,2,'内容9','备注9','2023-03-07 20:34:31','2023-03-07 20:34:31'),(10,2,'内容10','备注10','2023-03-07 20:34:31','2023-03-07 20:34:31'),(11,1,'内容11','备注11','2023-03-07 20:34:31','2023-03-07 20:34:31'),(12,1,'内容12','备注12','2023-03-07 20:34:31','2023-03-07 20:34:31'),(13,2,'内容13','备注13','2023-03-07 20:34:31','2023-03-07 20:34:31'),(14,2,'内容14','备注14','2023-03-07 20:34:31','2023-03-07 20:34:31'),(15,1,'签到','今天签到','2023-03-07 21:10:27','2023-03-07 21:10:27');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','vch890buot7yro8f831l35s28l2zznu1','2023-03-07 20:36:03','2023-03-07 22:09:16'),(2,1,'admin','users','管理员','1e0b47rmg2gbgt0zb70rfwolanx2l2sg','2023-03-07 20:40:27','2023-03-07 22:12:04'),(3,1,'a1','laoshi','老师','i0wp6j4odl5wk7j0iwytrdvba93ck8pr','2023-03-07 20:53:20','2023-03-07 22:11:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-07 20:34:02');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-03-07 20:34:31'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-03-07 20:34:31'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-03-07 20:34:31');

/*Table structure for table `ziliao` */

DROP TABLE IF EXISTS `ziliao`;

CREATE TABLE `ziliao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `ziliao_name` varchar(200) DEFAULT NULL COMMENT '资料信息名称  Search111 ',
  `ziliao_uuid_number` varchar(200) DEFAULT NULL COMMENT '资料信息编号',
  `ziliao_photo` varchar(200) DEFAULT NULL COMMENT '资料信息封面',
  `ziliao_types` int(11) DEFAULT NULL COMMENT '资料信息类型 Search111',
  `ziliao_file` varchar(200) DEFAULT NULL COMMENT '资料信息下载',
  `ziliao_content` text COMMENT '资料信息介绍 ',
  `ziliao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='资料信息';

/*Data for the table `ziliao` */

insert  into `ziliao`(`id`,`laoshi_id`,`ziliao_name`,`ziliao_uuid_number`,`ziliao_photo`,`ziliao_types`,`ziliao_file`,`ziliao_content`,`ziliao_delete`,`insert_time`,`create_time`) values (1,2,'资料信息名称1','1678192471139','upload/ziliao1.jpg',2,'upload/file.rar','资料信息介绍1',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(2,2,'资料信息名称2','1678192471119','upload/ziliao2.jpg',3,'upload/file.rar','资料信息介绍2',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(3,3,'资料信息名称3','1678192471126','upload/ziliao3.jpg',4,'upload/file.rar','资料信息介绍3',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(4,1,'资料信息名称4','1678192471100','upload/ziliao4.jpg',4,'upload/file.rar','资料信息介绍4',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(5,2,'资料信息名称5','1678192471099','upload/ziliao5.jpg',3,'upload/file.rar','资料信息介绍5',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(6,2,'资料信息名称6','1678192471135','upload/ziliao6.jpg',2,'upload/file.rar','资料信息介绍6',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(7,3,'资料信息名称7','1678192471134','upload/ziliao7.jpg',1,'upload/file.rar','资料信息介绍7',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(8,3,'资料信息名称8','1678192471109','upload/ziliao8.jpg',2,'upload/file.rar','资料信息介绍8',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(9,3,'资料信息名称9','1678192471169','upload/ziliao9.jpg',2,'upload/file.rar','资料信息介绍9',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(10,2,'资料信息名称10','1678192471169','upload/ziliao10.jpg',4,'upload/file.rar','资料信息介绍10',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(11,3,'资料信息名称11','1678192471083','upload/ziliao11.jpg',3,'upload/file.rar','资料信息介绍11',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(12,2,'资料信息名称12','1678192471168','upload/ziliao12.jpg',4,'upload/file.rar','资料信息介绍12',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(13,3,'资料信息名称13','1678192471137','upload/ziliao13.jpg',2,'upload/file.rar','资料信息介绍13',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(14,2,'资料信息名称14','1678192471132','upload/ziliao14.jpg',4,'upload/file.rar','资料信息介绍14',1,'2023-03-07 20:34:31','2023-03-07 20:34:31');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称  Search111 ',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoye_photo` varchar(200) DEFAULT NULL COMMENT '作业封面',
  `zuoye_types` int(11) DEFAULT NULL COMMENT '作业类型 Search111',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业下载',
  `zuoye_content` text COMMENT '作业介绍 ',
  `zuoye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`laoshi_id`,`zuoye_name`,`zuoye_uuid_number`,`zuoye_photo`,`zuoye_types`,`zuoye_file`,`zuoye_content`,`zuoye_delete`,`insert_time`,`create_time`) values (1,3,'作业名称1','1678192471131','upload/zuoye1.jpg',4,'upload/file.rar','作业介绍1',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(2,1,'作业名称2','1678192471155','upload/zuoye2.jpg',3,'upload/file.rar','作业介绍2',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(3,2,'作业名称3','1678192471091','upload/zuoye3.jpg',4,'upload/file.rar','作业介绍3',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(4,1,'作业名称4','1678192471157','upload/zuoye4.jpg',2,'upload/file.rar','作业介绍4',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(5,1,'作业名称5','1678192471158','upload/zuoye5.jpg',2,'upload/file.rar','作业介绍5',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(6,1,'作业名称6','1678192471111','upload/zuoye6.jpg',3,'upload/file.rar','作业介绍6',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(7,3,'作业名称7','1678192471118','upload/zuoye7.jpg',1,'upload/file.rar','作业介绍7',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(8,3,'作业名称8','1678192471137','upload/zuoye8.jpg',4,'upload/file.rar','作业介绍8',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(9,1,'作业名称9','1678192471086','upload/zuoye9.jpg',2,'upload/file.rar','作业介绍9',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(10,2,'作业名称10','1678192471074','upload/zuoye10.jpg',2,'upload/file.rar','作业介绍10',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(11,1,'作业名称11','1678192471081','upload/zuoye11.jpg',2,'upload/file.rar','作业介绍11',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(12,3,'作业名称12','1678192471109','upload/zuoye12.jpg',1,'upload/file.rar','作业介绍12',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(13,1,'作业名称13','1678192471120','upload/zuoye13.jpg',4,'upload/file.rar','作业介绍13',1,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(14,1,'作业名称14','1678192471149','upload/zuoye14.jpg',4,'upload/file.rar','作业介绍14',1,'2023-03-07 20:34:31','2023-03-07 20:34:31');

/*Table structure for table `zuoye_tijiao` */

DROP TABLE IF EXISTS `zuoye_tijiao`;

CREATE TABLE `zuoye_tijiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_tijiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zuoye_tijiao_text` text COMMENT '内容',
  `zuoye_shangchuan_file` varchar(200) DEFAULT NULL COMMENT '作业上传',
  `zuoye_tijiao_yesno_types` int(11) DEFAULT NULL COMMENT '提交状态 Search111 ',
  `zuoye_tijiao_pigai` int(11) DEFAULT NULL COMMENT '批改分数',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业提交时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoye_tijiao` */

insert  into `zuoye_tijiao`(`id`,`zuoye_tijiao_uuid_number`,`zuoye_id`,`laoshi_id`,`yonghu_id`,`zuoye_tijiao_text`,`zuoye_shangchuan_file`,`zuoye_tijiao_yesno_types`,`zuoye_tijiao_pigai`,`insert_time`,`create_time`) values (1,'1678192471137',1,2,3,'内容1','upload/file.rar',1,444,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(2,'1678192471077',2,2,2,'内容2','upload/file.rar',1,209,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(3,'1678192471169',3,3,1,'内容3','upload/file.rar',1,231,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(4,'1678192471125',4,1,1,'内容4','upload/file.rar',1,462,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(5,'1678192471088',5,2,2,'内容5','upload/file.rar',1,394,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(6,'1678192471158',6,3,2,'内容6','upload/file.rar',1,177,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(7,'1678192471162',7,3,2,'内容7','upload/file.rar',1,54,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(8,'1678192471149',8,1,3,'内容8','upload/file.rar',1,269,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(9,'1678192471090',9,2,2,'内容9','upload/file.rar',1,480,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(10,'1678192471138',10,2,3,'内容10','upload/file.rar',1,204,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(11,'1678192471152',11,1,3,'内容11','upload/file.rar',1,84,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(12,'1678192471120',12,1,2,'内容12','upload/file.rar',1,126,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(13,'1678192471157',13,2,2,'内容13','upload/file.rar',1,185,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(14,'1678192471124',14,2,1,'内容14','upload/file.rar',1,279,'2023-03-07 20:34:31','2023-03-07 20:34:31'),(15,'1678192764815',1,1,1,'sadsad','upload/1678192777221.jpg',2,60,'2023-03-07 20:39:39','2023-03-07 20:39:39'),(16,'1678194642906',4,1,1,'手打sad ','upload/1678194652089.jpg',2,80,'2023-03-07 21:10:53','2023-03-07 21:10:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
