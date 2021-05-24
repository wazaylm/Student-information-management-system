/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.20-log : Database - brian_lib
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`brian_lib` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `brian_lib`;

/*Table structure for table `score` */

DROP TABLE IF EXISTS `score`;

CREATE TABLE `score` (
  `score_id` varchar(10) NOT NULL COMMENT '成绩编号',
  `score_subject_id` varchar(10) NOT NULL COMMENT '课程编号',
  `score_student_id` varchar(100) NOT NULL COMMENT '学生编号',
  `score_num` int(11) DEFAULT NULL COMMENT '成绩数字',
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `score` */

/*Table structure for table `signup` */

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `signup_id` varchar(10) NOT NULL COMMENT '成绩编号',
  `signup_student_id` text NOT NULL COMMENT '所得该成绩学生(可有有多个，用,隔开)',
  `signup_subject_id` varchar(10) NOT NULL COMMENT '该成绩对应的学科',
  PRIMARY KEY (`signup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `signup` */

/*Table structure for table `subjects` */

DROP TABLE IF EXISTS `subjects`;

CREATE TABLE `subjects` (
  `subjects_id` varchar(10) NOT NULL COMMENT '科目编号',
  `subjects_schools` varchar(200) NOT NULL COMMENT '科目所在学院',
  `subjects_majors` varchar(200) NOT NULL COMMENT '科目所在专业',
  `subjects_teachers` text COMMENT '科目任课老师（可以有多个，用,隔开）',
  `subjects_startDate` date NOT NULL COMMENT '科目开始时间',
  `subjects_endDate` date NOT NULL COMMENT '科目结束时间',
  PRIMARY KEY (`subjects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `subjects` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `users_id` varchar(100) NOT NULL COMMENT '用户工号（学号）',
  `users_password` varchar(100) NOT NULL COMMENT '用户密码',
  `users_name` varchar(100) NOT NULL COMMENT '用户姓名',
  `users_sex` varchar(5) NOT NULL DEFAULT '男' COMMENT '用户性别',
  `users_email` varchar(200) NOT NULL COMMENT '用户邮箱',
  `users_school` varchar(100) NOT NULL COMMENT '用户所在学院',
  `users_major` varchar(100) NOT NULL COMMENT '用户所在专业',
  `users_class` varchar(100) DEFAULT NULL COMMENT '用户所在班级（若是学生才需要填写）',
  `users_grade` varchar(10) NOT NULL COMMENT '用户所在年级',
  `users_length` varchar(5) DEFAULT NULL COMMENT '用户学制（若是学生才需要填写）',
  `users_type` varchar(10) NOT NULL DEFAULT '学生' COMMENT '用户类型',
  `users_campus` varchar(100) NOT NULL COMMENT '用户所在校区',
  `users_registerDate` date NOT NULL COMMENT '用户注册日期',
  `users_expiredDate` date NOT NULL COMMENT '用户过期日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`users_id`,`users_password`,`users_name`,`users_sex`,`users_email`,`users_school`,`users_major`,`users_class`,`users_grade`,`users_length`,`users_type`,`users_campus`,`users_registerDate`,`users_expiredDate`) values ('1300002001','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','张玲','女','1300002001@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002003','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈林浩','男','1300002003@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002005','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','王帅粤','男','1300002005@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002007','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','张碧红','女','1300002007@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002009','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','黄升','男','1300002009@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002011','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','林义伟','男','1300002011@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002013','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈振聪','男','1300002013@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002015','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','张芳','女','1300002015@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','教师','大学城校区','2017-01-01','2017-03-01'),('1300002017','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','廖云枫','男','1300002017@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','管理员','大学城校区','2017-01-01','2017-03-01'),('1300002019','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','白永睿','男','1300002019@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002021','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','吴丽烨','女','1300002021@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002023','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','刘华俊','男','1300002023@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002025','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','莫文诺','男','1300002025@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002027','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈振生','男','1300002027@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002029','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陆扬奎','男','1300002029@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002031','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','方伟榕','男','1300002031@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002033','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','杜加威','男','1300002033@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002035','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','张金如','男','1300002035@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002037','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','孙国强','男','1300002037@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002039','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈盛绿','男','1300002039@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002041','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','许茂','男','1300002041@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002043','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','林超','男','1300002043@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002045','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈楚坤','男','1300002045@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002047','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','李旭','男','1300002047@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002049','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','林进雄','男','1300002049@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002051','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','李创盛','男','1300002051@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002053','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','林志文','男','1300002053@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002055','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','吴永顺','男','1300002055@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002057','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','江紫红','女','1300002057@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002059','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈宜波','男','1300002059@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002061','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','林昆','男','1300002061@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002063','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','郭桦强','男','1300002063@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002065','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','林志成','男','1300002065@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002067','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','宋万财','男','1300002067@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002069','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','宋仁胜','男','1300002069@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002071','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','黎浩标','男','1300002071@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002073','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','潘洪亮','男','1300002073@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002075','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','黄汉杰','男','1300002075@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002077','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陆奕呈','男','1300002077@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002079','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','马得中','男','1300002079@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002081','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','周武杰','男','1300002081@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002083','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','盘志伟','男','1300002083@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002085','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','李丽冰','女','1300002085@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002087','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','李浩龙','男','1300002087@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002089','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','郑怀彬','男','1300002089@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002091','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','关炜健','男','1300002091@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002092','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','梁碧兰','女','1300002092@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002095','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','王伟伦','男','1300002095@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','137','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002002','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','黄启样','男','1300002002@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002004','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','姜喆','男','1300002004@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002006','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈强生','男','1300002006@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002008','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','詹威垚','男','1300002008@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002010','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','邓阳俊','男','1300002010@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002012','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','詹武警','男','1300002012@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002014','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','张华','男','1300002014@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002016','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','马志绅','男','1300002016@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002018','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','何波','男','1300002018@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002020','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','郑志红','女','1300002020@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002022','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈锐锋','男','1300002022@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002024','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','李金峰','男','1300002024@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002026','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','黄裕明','男','1300002026@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002028','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','黄光义','男','1300002028@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002030','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈健斌','男','1300002030@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002032','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','叶海峰','男','1300002032@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002034','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','苏华生','男','1300002034@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002036','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','叶泳锋','男','1300002036@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002038','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','林伟武','男','1300002038@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002040','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','胡康泽','男','1300002040@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002042','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈锦川','男','1300002042@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002044','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','吴展材','男','1300002044@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002046','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','洪振健','男','1300002046@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002048','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','方伟霞','女','1300002048@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002050','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈汉林','男','1300002050@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002052','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','江长娴','女','1300002052@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002054','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','谭发新','男','1300002054@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002056','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','沈美玲','女','1300002056@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002058','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','朱海东','男','1300002058@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002060','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈伟州','男','1300002060@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002062','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','蔡杰豪','男','1300002062@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002064','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','何斯浩','男','1300002064@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002066','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','叶天桥','男','1300002066@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002068','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','彭成亮','男','1300002068@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002070','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈永珍','女','1300002070@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002072','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','刘泽楠','男','1300002072@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002074','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','葛俊鑫','男','1300002074@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002076','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','黄镜波','男','1300002076@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002078','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','李展生','男','1300002078@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002080','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','张媚','女','1300002080@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002082','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','谢子颖','男','1300002082@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002084','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','叶菁','女','1300002084@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002086','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','郑主霸','男','1300002086@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002088','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','吴仕超','男','1300002088@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002090','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','梁旭昇','男','1300002090@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002093','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','陈锐鹏','男','1300002093@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002094','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','朱锦塔','男','1300002094@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01'),('1300002096','*FD571203974BA9AFE270FE62151AE967ECA5E0AA','梁颢议','男','1300002096@gzhu.edu.cn','计算机科学与教育软件学院','计算机科学与技术','138','2013','4','学生','大学城校区','2017-01-01','2017-03-01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;