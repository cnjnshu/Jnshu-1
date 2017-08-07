CREATE DATABASE /*!32312 IF NOT EXISTS*/`task2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `task2`;



DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '学生id 主键自增长ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '学生姓名',
  `stu_id` bigint(255) NOT NULL DEFAULT '0' COMMENT '学号',
  `create_at` bigint(255) NOT NULL DEFAULT '0' COMMENT '创建于',
  `update_at` bigint(255) NOT NULL DEFAULT '0' COMMENT '修改于',
  PRIMARY KEY (`id`)
);



