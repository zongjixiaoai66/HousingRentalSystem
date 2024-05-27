/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t020`;
CREATE DATABASE IF NOT EXISTS `t020` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t020`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot08hr3/upload/1614855528584.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot08hr3/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot08hr3/upload/picture3.jpg'),
	(6, 'homepage', NULL);

DROP TABLE IF EXISTS `discussfangwuxinxi`;
CREATE TABLE IF NOT EXISTS `discussfangwuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='房屋信息评论表';

DELETE FROM `discussfangwuxinxi`;
INSERT INTO `discussfangwuxinxi` (`id`, `addtime`, `refid`, `userid`, `content`, `reply`) VALUES
	(141, '2021-03-04 10:46:53', 1, 1, '评论内容1', '回复内容1'),
	(142, '2021-03-04 10:46:53', 2, 2, '评论内容2', '回复内容2'),
	(143, '2021-03-04 10:46:53', 3, 3, '评论内容3', '回复内容3'),
	(144, '2021-03-04 10:46:53', 4, 4, '评论内容4', '回复内容4'),
	(145, '2021-03-04 10:46:53', 5, 5, '评论内容5', '回复内容5'),
	(146, '2021-03-04 10:46:53', 6, 6, '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusswoyaodangfangzhu`;
CREATE TABLE IF NOT EXISTS `discusswoyaodangfangzhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb3 COMMENT='我要当房主评论表';

DELETE FROM `discusswoyaodangfangzhu`;
INSERT INTO `discusswoyaodangfangzhu` (`id`, `addtime`, `refid`, `userid`, `content`, `reply`) VALUES
	(151, '2021-03-04 10:46:53', 1, 1, '评论内容1', '回复内容1'),
	(152, '2021-03-04 10:46:53', 2, 2, '评论内容2', '回复内容2'),
	(153, '2021-03-04 10:46:53', 3, 3, '评论内容3', '回复内容3'),
	(154, '2021-03-04 10:46:53', 4, 4, '评论内容4', '回复内容4'),
	(155, '2021-03-04 10:46:53', 5, 5, '评论内容5', '回复内容5'),
	(156, '2021-03-04 10:46:53', 6, 6, '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `fangwubaoxiu`;
CREATE TABLE IF NOT EXISTS `fangwubaoxiu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `baoxiumingcheng` varchar(200) DEFAULT NULL COMMENT '报修名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `baoxiuneirong` varchar(200) DEFAULT NULL COMMENT '报修内容',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `fangzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '房主账号',
  `fangzhuxingming` varchar(200) DEFAULT NULL COMMENT '房主姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614856006266 DEFAULT CHARSET=utf8mb3 COMMENT='房屋报修';

DELETE FROM `fangwubaoxiu`;
INSERT INTO `fangwubaoxiu` (`id`, `addtime`, `hetongbianhao`, `fangwumingcheng`, `fangwuleixing`, `xiaoqu`, `baoxiumingcheng`, `leixing`, `baoxiuneirong`, `tupian`, `baoxiuriqi`, `fangzhuzhanghao`, `fangzhuxingming`, `yonghuming`, `lianxidianhua`, `sfsh`, `shhf`) VALUES
	(71, '2021-03-04 10:46:53', '合同编号1', '房屋名称1', '房屋类型1', '小区1', '报修名称1', '水工', '报修内容1', 'http://localhost:8080/springboot08hr3/upload/fangwubaoxiu_tupian1.jpg', '2021-03-04', '房主账号1', '房主姓名1', '用户名1', '联系电话1', '是', ''),
	(72, '2021-03-04 10:46:53', '合同编号2', '房屋名称2', '房屋类型2', '小区2', '报修名称2', '水工', '报修内容2', 'http://localhost:8080/springboot08hr3/upload/fangwubaoxiu_tupian2.jpg', '2021-03-04', '房主账号2', '房主姓名2', '用户名2', '联系电话2', '是', ''),
	(73, '2021-03-04 10:46:53', '合同编号3', '房屋名称3', '房屋类型3', '小区3', '报修名称3', '水工', '报修内容3', 'http://localhost:8080/springboot08hr3/upload/fangwubaoxiu_tupian3.jpg', '2021-03-04', '房主账号3', '房主姓名3', '用户名3', '联系电话3', '是', ''),
	(74, '2021-03-04 10:46:53', '合同编号4', '房屋名称4', '房屋类型4', '小区4', '报修名称4', '水工', '报修内容4', 'http://localhost:8080/springboot08hr3/upload/fangwubaoxiu_tupian4.jpg', '2021-03-04', '房主账号4', '房主姓名4', '用户名4', '联系电话4', '是', ''),
	(75, '2021-03-04 10:46:53', '合同编号5', '房屋名称5', '房屋类型5', '小区5', '报修名称5', '水工', '报修内容5', 'http://localhost:8080/springboot08hr3/upload/fangwubaoxiu_tupian5.jpg', '2021-03-04', '房主账号5', '房主姓名5', '用户名5', '联系电话5', '是', ''),
	(76, '2021-03-04 10:46:53', '合同编号6', '房屋名称6', '房屋类型6', '小区6', '报修名称6', '水工', '报修内容6', 'http://localhost:8080/springboot08hr3/upload/fangwubaoxiu_tupian6.jpg', '2021-03-04', '房主账号6', '房主姓名6', '用户名6', '联系电话6', '是', ''),
	(1614856006265, '2021-03-04 11:06:46', '1614855788435', '新记家园605房', '3房1厅', '新记家园', '下水管堵塞', '水工', '浴室下水管堵了', 'http://localhost:8080/springboot08hr3/upload/1614856003509.jpg', '2021-03-04', '1', '张明', '2', '12312312312', '是', '今晚维修');

DROP TABLE IF EXISTS `fangwuleixing`;
CREATE TABLE IF NOT EXISTS `fangwuleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwuleixing` (`fangwuleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1614855386784 DEFAULT CHARSET=utf8mb3 COMMENT='房屋类型';

DELETE FROM `fangwuleixing`;
INSERT INTO `fangwuleixing` (`id`, `addtime`, `fangwuleixing`) VALUES
	(31, '2021-03-04 10:46:53', '房屋类型1'),
	(32, '2021-03-04 10:46:53', '房屋类型2'),
	(33, '2021-03-04 10:46:53', '房屋类型3'),
	(34, '2021-03-04 10:46:53', '房屋类型4'),
	(35, '2021-03-04 10:46:53', '房屋类型5'),
	(36, '2021-03-04 10:46:53', '房屋类型6'),
	(1614855386783, '2021-03-04 10:56:25', '3房1厅');

DROP TABLE IF EXISTS `fangwupingjia`;
CREATE TABLE IF NOT EXISTS `fangwupingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `fangzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '房主账号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614856023366 DEFAULT CHARSET=utf8mb3 COMMENT='房屋评价';

DELETE FROM `fangwupingjia`;
INSERT INTO `fangwupingjia` (`id`, `addtime`, `hetongbianhao`, `fangwumingcheng`, `fangwuleixing`, `xiaoqu`, `pingfen`, `pingjianeirong`, `pingjiariqi`, `fangzhuzhanghao`, `yonghuming`, `lianxidianhua`, `sfsh`, `shhf`) VALUES
	(91, '2021-03-04 10:46:53', '合同编号1', '房屋名称1', '房屋类型1', '小区1', '1', '评价内容1', '2021-03-04', '房主账号1', '用户名1', '联系电话1', '是', ''),
	(92, '2021-03-04 10:46:53', '合同编号2', '房屋名称2', '房屋类型2', '小区2', '1', '评价内容2', '2021-03-04', '房主账号2', '用户名2', '联系电话2', '是', ''),
	(93, '2021-03-04 10:46:53', '合同编号3', '房屋名称3', '房屋类型3', '小区3', '1', '评价内容3', '2021-03-04', '房主账号3', '用户名3', '联系电话3', '是', ''),
	(94, '2021-03-04 10:46:53', '合同编号4', '房屋名称4', '房屋类型4', '小区4', '1', '评价内容4', '2021-03-04', '房主账号4', '用户名4', '联系电话4', '是', ''),
	(95, '2021-03-04 10:46:53', '合同编号5', '房屋名称5', '房屋类型5', '小区5', '1', '评价内容5', '2021-03-04', '房主账号5', '用户名5', '联系电话5', '是', ''),
	(96, '2021-03-04 10:46:53', '合同编号6', '房屋名称6', '房屋类型6', '小区6', '1', '评价内容6', '2021-03-04', '房主账号6', '用户名6', '联系电话6', '是', ''),
	(1614856023365, '2021-03-04 11:07:03', '1614855788435', '新记家园605房', '3房1厅', '新记家园', '5', '房屋不错', '2021-03-04', '1', '2', '12312312312', '是', '感谢支持');

DROP TABLE IF EXISTS `fangwuxinxi`;
CREATE TABLE IF NOT EXISTS `fangwuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `zulinfangshi` varchar(200) DEFAULT NULL COMMENT '租赁方式',
  `chaoxianglouceng` varchar(200) DEFAULT NULL COMMENT '朝向楼层',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `fangwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '房屋状态',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `yuezujiage` int DEFAULT NULL COMMENT '月租价格',
  `yajin` int DEFAULT NULL COMMENT '押金',
  `fangwusheshi` varchar(200) DEFAULT NULL COMMENT '房屋设施',
  `fangwuxiangqing` longtext COMMENT '房屋详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `fangzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '房主账号',
  `fangzhuxingming` varchar(200) DEFAULT NULL COMMENT '房主姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614855484230 DEFAULT CHARSET=utf8mb3 COMMENT='房屋信息';

DELETE FROM `fangwuxinxi`;
INSERT INTO `fangwuxinxi` (`id`, `addtime`, `fangwumingcheng`, `fangwuleixing`, `tupian`, `zulinfangshi`, `chaoxianglouceng`, `mianji`, `fangwuzhuangtai`, `xiaoqu`, `xiangxidizhi`, `yuezujiage`, `yajin`, `fangwusheshi`, `fangwuxiangqing`, `faburiqi`, `fangzhuzhanghao`, `fangzhuxingming`) VALUES
	(41, '2021-03-04 10:46:53', '房屋名称1', '房屋类型1', 'http://localhost:8080/springboot08hr3/upload/fangwuxinxi_tupian1.jpg', '整租', '朝向楼层1', '面积1', '可租', '小区1', '详细地址1', 1, 1, '房屋设施1', '房屋详情1', '2021-03-04', '房主账号1', '房主姓名1'),
	(42, '2021-03-04 10:46:53', '房屋名称2', '房屋类型2', 'http://localhost:8080/springboot08hr3/upload/1614855060611.jpg', '整租', '朝向楼层2', '面积2', '可租', '小区2', '详细地址2', 2, 2, '房屋设施2', '<p>房屋详情2</p>', '2021-03-04', '房主账号2', '房主姓名2'),
	(43, '2021-03-04 10:46:53', '房屋名称3', '房屋类型3', 'http://localhost:8080/springboot08hr3/upload/fangwuxinxi_tupian3.jpg', '整租', '朝向楼层3', '面积3', '可租', '小区3', '详细地址3', 3, 3, '房屋设施3', '房屋详情3', '2021-03-04', '房主账号3', '房主姓名3'),
	(44, '2021-03-04 10:46:53', '房屋名称4', '房屋类型4', 'http://localhost:8080/springboot08hr3/upload/1614855071690.jpg', '整租', '朝向楼层4', '面积4', '可租', '小区4', '详细地址4', 4, 4, '房屋设施4', '<p>房屋详情4</p>', '2021-03-04', '房主账号4', '房主姓名4'),
	(45, '2021-03-04 10:46:53', '房屋名称5', '房屋类型5', 'http://localhost:8080/springboot08hr3/upload/fangwuxinxi_tupian5.jpg', '整租', '朝向楼层5', '面积5', '可租', '小区5', '详细地址5', 5, 5, '房屋设施5', '房屋详情5', '2021-03-04', '房主账号5', '房主姓名5'),
	(46, '2021-03-04 10:46:53', '房屋名称6', '房屋类型6', 'http://localhost:8080/springboot08hr3/upload/1614855082369.jpg', '整租', '朝向楼层6', '面积6', '可租', '小区6', '详细地址6', 6, 6, '房屋设施6', '<p>房屋详情6</p>', '2021-03-04', '房主账号6', '房主姓名6'),
	(1614855484229, '2021-03-04 10:58:03', '新记家园605房', '3房1厅', 'http://localhost:8080/springboot08hr3/upload/1614855416340.jpg', '整租', '南北 共8层', '90平', '可租', '新记家园', '太阳宫中路', 2000, 2000, '设施齐全', '<p>设施齐全，采光极好</p><p><img src="http://localhost:8080/springboot08hr3/upload/1614855482288.jpg"></p>', '2021-03-04', '1', '张明');

DROP TABLE IF EXISTS `fangzhu`;
CREATE TABLE IF NOT EXISTS `fangzhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangzhuzhanghao` varchar(200) NOT NULL COMMENT '房主账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fangzhuxingming` varchar(200) NOT NULL COMMENT '房主姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangzhuzhanghao` (`fangzhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614855337501 DEFAULT CHARSET=utf8mb3 COMMENT='房主';

DELETE FROM `fangzhu`;
INSERT INTO `fangzhu` (`id`, `addtime`, `fangzhuzhanghao`, `mima`, `fangzhuxingming`, `xingbie`, `touxiang`, `shouji`, `shenfenzheng`) VALUES
	(21, '2021-03-04 10:46:53', '房主1', '123456', '房主姓名1', '男', 'http://localhost:8080/springboot08hr3/upload/fangzhu_touxiang1.jpg', '13823888881', '440300199101010001'),
	(22, '2021-03-04 10:46:53', '房主2', '123456', '房主姓名2', '男', 'http://localhost:8080/springboot08hr3/upload/fangzhu_touxiang2.jpg', '13823888882', '440300199202020002'),
	(23, '2021-03-04 10:46:53', '房主3', '123456', '房主姓名3', '男', 'http://localhost:8080/springboot08hr3/upload/fangzhu_touxiang3.jpg', '13823888883', '440300199303030003'),
	(24, '2021-03-04 10:46:53', '房主4', '123456', '房主姓名4', '男', 'http://localhost:8080/springboot08hr3/upload/fangzhu_touxiang4.jpg', '13823888884', '440300199404040004'),
	(25, '2021-03-04 10:46:53', '房主5', '123456', '房主姓名5', '男', 'http://localhost:8080/springboot08hr3/upload/fangzhu_touxiang5.jpg', '13823888885', '440300199505050005'),
	(26, '2021-03-04 10:46:53', '房主6', '123456', '房主姓名6', '男', 'http://localhost:8080/springboot08hr3/upload/fangzhu_touxiang6.jpg', '13823888886', '440300199606060006'),
	(1614855337500, '2021-03-04 10:55:37', '1', '1', '张明', '男', 'http://localhost:8080/springboot08hr3/upload/1614855356133.jpg', '12312312312', '123456789789456123');

DROP TABLE IF EXISTS `hetongxinxi`;
CREATE TABLE IF NOT EXISTS `hetongxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `yuezujiage` varchar(200) DEFAULT NULL COMMENT '月租价格',
  `zuyongyueshu` varchar(200) DEFAULT NULL COMMENT '租用月数',
  `zuyongjine` int DEFAULT NULL COMMENT '租用金额',
  `yajin` int DEFAULT NULL COMMENT '押金',
  `fangzuzhuangtai` varchar(200) DEFAULT NULL COMMENT '房租状态',
  `hetongjine` varchar(200) DEFAULT NULL COMMENT '合同金额',
  `hetongneirong` varchar(200) DEFAULT NULL COMMENT '合同内容',
  `shengxiaori` date DEFAULT NULL COMMENT '生效日',
  `youxianqizhi` date DEFAULT NULL COMMENT '有限期至',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `fangzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '房主账号',
  `fangzhuxingming` varchar(200) DEFAULT NULL COMMENT '房主姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hetongbianhao` (`hetongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614855849545 DEFAULT CHARSET=utf8mb3 COMMENT='合同信息';

DELETE FROM `hetongxinxi`;
INSERT INTO `hetongxinxi` (`id`, `addtime`, `hetongbianhao`, `fangwumingcheng`, `fangwuleixing`, `xiaoqu`, `yuezujiage`, `zuyongyueshu`, `zuyongjine`, `yajin`, `fangzuzhuangtai`, `hetongjine`, `hetongneirong`, `shengxiaori`, `youxianqizhi`, `yonghuming`, `lianxidianhua`, `fangzhuzhanghao`, `fangzhuxingming`, `sfsh`, `shhf`, `ispay`) VALUES
	(61, '2021-03-04 10:46:53', '合同编号1', '房屋名称1', '房屋类型1', '小区1', '月租价格1', '租用月数1', 1, 1, '租赁中', '合同金额1', '', '2021-03-04', '2021-03-04', '用户名1', '联系电话1', '房主账号1', '房主姓名1', '是', '', '未支付'),
	(62, '2021-03-04 10:46:53', '合同编号2', '房屋名称2', '房屋类型2', '小区2', '月租价格2', '租用月数2', 2, 2, '租赁中', '合同金额2', '', '2021-03-04', '2021-03-04', '用户名2', '联系电话2', '房主账号2', '房主姓名2', '是', '', '未支付'),
	(63, '2021-03-04 10:46:53', '合同编号3', '房屋名称3', '房屋类型3', '小区3', '月租价格3', '租用月数3', 3, 3, '租赁中', '合同金额3', '', '2021-03-04', '2021-03-04', '用户名3', '联系电话3', '房主账号3', '房主姓名3', '是', '', '未支付'),
	(64, '2021-03-04 10:46:53', '合同编号4', '房屋名称4', '房屋类型4', '小区4', '月租价格4', '租用月数4', 4, 4, '租赁中', '合同金额4', '', '2021-03-04', '2021-03-04', '用户名4', '联系电话4', '房主账号4', '房主姓名4', '是', '', '未支付'),
	(65, '2021-03-04 10:46:53', '合同编号5', '房屋名称5', '房屋类型5', '小区5', '月租价格5', '租用月数5', 5, 5, '租赁中', '合同金额5', '', '2021-03-04', '2021-03-04', '用户名5', '联系电话5', '房主账号5', '房主姓名5', '是', '', '未支付'),
	(66, '2021-03-04 10:46:53', '合同编号6', '房屋名称6', '房屋类型6', '小区6', '月租价格6', '租用月数6', 6, 6, '租赁中', '合同金额6', '', '2021-03-04', '2021-03-04', '用户名6', '联系电话6', '房主账号6', '房主姓名6', '是', '', '未支付'),
	(1614855849544, '2021-03-04 11:04:09', '1614855788435', '新记家园605房', '3房1厅', '新记家园', '2000', '12', 24000, 2000, '租赁中', '26000', 'http://localhost:8080/springboot08hr3/upload/1614855836417.doc', '2021-03-04', '2022-03-04', '2', '12312312312', '1', '张明', '是', '同意条款', '已支付');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1703250291716 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(131, '2021-03-04 10:46:53', 1, '用户名1', '留言内容1', '回复内容1'),
	(132, '2021-03-04 10:46:53', 2, '用户名2', '留言内容2', '回复内容2'),
	(133, '2021-03-04 10:46:53', 3, '用户名3', '留言内容3', '回复内容3'),
	(134, '2021-03-04 10:46:53', 4, '用户名4', '留言内容4', '回复内容4'),
	(135, '2021-03-04 10:46:53', 5, '用户名5', '留言内容5', '回复内容5'),
	(136, '2021-03-04 10:46:53', 6, '用户名6', '留言内容6', '回复内容6'),
	(1614855688487, '2021-03-04 11:01:28', 1614855579738, '2', '请问雨花石小区有房源吗', '暂时没有'),
	(1703250291715, '2023-12-22 13:04:51', 11, '用户1', '测试！', NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614855517964 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(121, '2021-03-04 10:46:53', '标题1', '简介1', 'http://localhost:8080/springboot08hr3/upload/news_picture1.jpg', '内容1'),
	(122, '2021-03-04 10:46:53', '标题2', '简介2', 'http://localhost:8080/springboot08hr3/upload/news_picture2.jpg', '内容2'),
	(123, '2021-03-04 10:46:53', '标题3', '简介3', 'http://localhost:8080/springboot08hr3/upload/news_picture3.jpg', '内容3'),
	(124, '2021-03-04 10:46:53', '标题4', '简介4', 'http://localhost:8080/springboot08hr3/upload/news_picture4.jpg', '内容4'),
	(125, '2021-03-04 10:46:53', '标题5', '简介5', 'http://localhost:8080/springboot08hr3/upload/news_picture5.jpg', '内容5'),
	(126, '2021-03-04 10:46:53', '标题6', '简介6', 'http://localhost:8080/springboot08hr3/upload/news_picture6.jpg', '内容6'),
	(1614855517963, '2021-03-04 10:58:37', '租赁流程', '租赁须知', 'http://localhost:8080/springboot08hr3/upload/1614855502003.jpg', '<p>租赁流程：</p><p>HJFGHFDJTGFTYH</p><p><br></p>');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1703250272426 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1703250272425, '2023-12-22 13:04:32', 11, 41, 'fangwuxinxi', '房屋名称1', 'http://localhost:8080/springboot08hr3/upload/fangwuxinxi_tupian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '7d86qwj0uodmxkquupozhdv7qpd4ulvu', '2021-03-04 10:49:44', '2023-12-22 14:26:12'),
	(2, 1614855337500, '1', 'fangzhu', '房主', 'iumiceml897a25hpnecq2uudxw58sa5q', '2021-03-04 10:55:43', '2021-03-04 12:08:31'),
	(3, 1614855579738, '2', 'yonghu', '用户', 'hn33g6k468pem5wkdrksstimshbg7c6p', '2021-03-04 10:59:45', '2021-03-04 12:05:05'),
	(4, 11, '用户1', 'yonghu', '用户', 'jsonr4o2oaqkrhsmvfuspxfns5yfrymv', '2023-12-22 12:54:19', '2023-12-22 14:04:07'),
	(5, 21, '房主1', 'fangzhu', '房主', 'thx8p7v6f0q2f88ootyibu7yslx1or7l', '2023-12-22 13:03:50', '2023-12-22 14:03:51');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-03-04 10:46:53');

DROP TABLE IF EXISTS `weixiuchuli`;
CREATE TABLE IF NOT EXISTS `weixiuchuli` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `baoxiumingcheng` varchar(200) DEFAULT NULL COMMENT '报修名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `baoxiuriqi` varchar(200) DEFAULT NULL COMMENT '报修日期',
  `weixiufankui` varchar(200) DEFAULT NULL COMMENT '维修反馈',
  `weixiujindu` varchar(200) DEFAULT NULL COMMENT '维修进度',
  `gengxinriqi` date DEFAULT NULL COMMENT '更新日期',
  `fangzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '房主账号',
  `fangzhuxingming` varchar(200) DEFAULT NULL COMMENT '房主姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614856078292 DEFAULT CHARSET=utf8mb3 COMMENT='维修处理';

DELETE FROM `weixiuchuli`;
INSERT INTO `weixiuchuli` (`id`, `addtime`, `fangwumingcheng`, `fangwuleixing`, `baoxiumingcheng`, `leixing`, `baoxiuriqi`, `weixiufankui`, `weixiujindu`, `gengxinriqi`, `fangzhuzhanghao`, `fangzhuxingming`, `yonghuming`, `lianxidianhua`) VALUES
	(81, '2021-03-04 10:46:53', '房屋名称1', '房屋类型1', '报修名称1', '类型1', '报修日期1', '维修反馈1', '维修中', '2021-03-04', '房主账号1', '房主姓名1', '用户名1', '联系电话1'),
	(82, '2021-03-04 10:46:53', '房屋名称2', '房屋类型2', '报修名称2', '类型2', '报修日期2', '维修反馈2', '维修中', '2021-03-04', '房主账号2', '房主姓名2', '用户名2', '联系电话2'),
	(83, '2021-03-04 10:46:53', '房屋名称3', '房屋类型3', '报修名称3', '类型3', '报修日期3', '维修反馈3', '维修中', '2021-03-04', '房主账号3', '房主姓名3', '用户名3', '联系电话3'),
	(84, '2021-03-04 10:46:53', '房屋名称4', '房屋类型4', '报修名称4', '类型4', '报修日期4', '维修反馈4', '维修中', '2021-03-04', '房主账号4', '房主姓名4', '用户名4', '联系电话4'),
	(85, '2021-03-04 10:46:53', '房屋名称5', '房屋类型5', '报修名称5', '类型5', '报修日期5', '维修反馈5', '维修中', '2021-03-04', '房主账号5', '房主姓名5', '用户名5', '联系电话5'),
	(86, '2021-03-04 10:46:53', '房屋名称6', '房屋类型6', '报修名称6', '类型6', '报修日期6', '维修反馈6', '维修中', '2021-03-04', '房主账号6', '房主姓名6', '用户名6', '联系电话6'),
	(1614856078291, '2021-03-04 11:07:57', '新记家园605房', '3房1厅', '下水管堵塞', '水工', '2021-03-04', '需要维修费', '已完成', '2021-03-05', '1', '张明', '2', '12312312312');

DROP TABLE IF EXISTS `woyaodangfangzhu`;
CREATE TABLE IF NOT EXISTS `woyaodangfangzhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `zulinfangshi` varchar(200) NOT NULL COMMENT '租赁方式',
  `chaoxianglouceng` varchar(200) DEFAULT NULL COMMENT '朝向楼层',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `yuezujiage` int DEFAULT NULL COMMENT '月租价格',
  `fangwuxiangqing` longtext COMMENT '房屋详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614855750985 DEFAULT CHARSET=utf8mb3 COMMENT='我要当房主';

DELETE FROM `woyaodangfangzhu`;
INSERT INTO `woyaodangfangzhu` (`id`, `addtime`, `fangwumingcheng`, `fangwuleixing`, `tupian`, `zulinfangshi`, `chaoxianglouceng`, `xiaoqu`, `mianji`, `yuezujiage`, `fangwuxiangqing`, `faburiqi`, `yonghuming`, `lianxidianhua`, `sfsh`, `shhf`) VALUES
	(101, '2021-03-04 10:46:53', '房屋名称1', '房屋类型1', 'http://localhost:8080/springboot08hr3/upload/woyaodangfangzhu_tupian1.jpg', '整租', '朝向楼层1', '小区1', '面积1', 1, '房屋详情1', '2021-03-04', '用户名1', '联系电话1', '是', ''),
	(102, '2021-03-04 10:46:53', '房屋名称2', '房屋类型2', 'http://localhost:8080/springboot08hr3/upload/woyaodangfangzhu_tupian2.jpg', '整租', '朝向楼层2', '小区2', '面积2', 2, '房屋详情2', '2021-03-04', '用户名2', '联系电话2', '是', ''),
	(103, '2021-03-04 10:46:53', '房屋名称3', '房屋类型3', 'http://localhost:8080/springboot08hr3/upload/woyaodangfangzhu_tupian3.jpg', '整租', '朝向楼层3', '小区3', '面积3', 3, '房屋详情3', '2021-03-04', '用户名3', '联系电话3', '是', ''),
	(104, '2021-03-04 10:46:53', '房屋名称4', '房屋类型4', 'http://localhost:8080/springboot08hr3/upload/woyaodangfangzhu_tupian4.jpg', '整租', '朝向楼层4', '小区4', '面积4', 4, '房屋详情4', '2021-03-04', '用户名4', '联系电话4', '是', ''),
	(105, '2021-03-04 10:46:53', '房屋名称5', '房屋类型5', 'http://localhost:8080/springboot08hr3/upload/woyaodangfangzhu_tupian5.jpg', '整租', '朝向楼层5', '小区5', '面积5', 5, '房屋详情5', '2021-03-04', '用户名5', '联系电话5', '是', ''),
	(106, '2021-03-04 10:46:53', '房屋名称6', '房屋类型6', 'http://localhost:8080/springboot08hr3/upload/1614855114406.jpg', '整租', '朝向楼层6', '小区6', '面积6', 6, '<p>房屋详情6</p>', '2021-03-04', '用户名6', '联系电话6', '是', ''),
	(1614855750984, '2021-03-04 11:02:30', '雨花石604', '3房1厅', 'http://localhost:8080/springboot08hr3/upload/1614855720959.jpg', '整租', '东南 中层', '雨花石', '60', 1000, '<p>采光好</p><p><img src="http://localhost:8080/springboot08hr3/upload/1614855748947.jpg"></p>', '2021-03-04', '2', '12312312312', '是', 'ok');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiye` varchar(200) DEFAULT NULL COMMENT '职业',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614855579739 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `xingbie`, `zhiye`, `lianxidianhua`, `shenfenzheng`) VALUES
	(11, '2021-03-04 10:46:53', '用户1', '123456', '姓名1', 'http://localhost:8080/springboot08hr3/upload/yonghu_touxiang1.jpg', '男', '职业1', '13823888881', '440300199101010001'),
	(12, '2021-03-04 10:46:53', '用户2', '123456', '姓名2', 'http://localhost:8080/springboot08hr3/upload/yonghu_touxiang2.jpg', '男', '职业2', '13823888882', '440300199202020002'),
	(13, '2021-03-04 10:46:53', '用户3', '123456', '姓名3', 'http://localhost:8080/springboot08hr3/upload/yonghu_touxiang3.jpg', '男', '职业3', '13823888883', '440300199303030003'),
	(14, '2021-03-04 10:46:53', '用户4', '123456', '姓名4', 'http://localhost:8080/springboot08hr3/upload/yonghu_touxiang4.jpg', '男', '职业4', '13823888884', '440300199404040004'),
	(15, '2021-03-04 10:46:53', '用户5', '123456', '姓名5', 'http://localhost:8080/springboot08hr3/upload/yonghu_touxiang5.jpg', '男', '职业5', '13823888885', '440300199505050005'),
	(16, '2021-03-04 10:46:53', '用户6', '123456', '姓名6', 'http://localhost:8080/springboot08hr3/upload/yonghu_touxiang6.jpg', '男', '职业6', '13823888886', '440300199606060006'),
	(1614855579738, '2021-03-04 10:59:39', '2', '2', '陈一', 'http://localhost:8080/springboot08hr3/upload/1614855594396.jpg', '女', 'IT', '12312312312', '123456789789456123');

DROP TABLE IF EXISTS `yuyuekanfang`;
CREATE TABLE IF NOT EXISTS `yuyuekanfang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) NOT NULL COMMENT '预约编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `fangwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '房屋状态',
  `xiaoqu` varchar(200) DEFAULT NULL COMMENT '小区',
  `yuezujiage` int DEFAULT NULL COMMENT '月租价格',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `zuyongyueshu` int DEFAULT NULL COMMENT '租用月数',
  `zuyongjine` varchar(200) DEFAULT NULL COMMENT '租用金额',
  `yuyueshijian` datetime NOT NULL COMMENT '预约时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `fangzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '房主账号',
  `fangzhuxingming` varchar(200) DEFAULT NULL COMMENT '房主姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614855637717 DEFAULT CHARSET=utf8mb3 COMMENT='预约看房';

DELETE FROM `yuyuekanfang`;
INSERT INTO `yuyuekanfang` (`id`, `addtime`, `yuyuebianhao`, `fangwumingcheng`, `fangwuleixing`, `fangwuzhuangtai`, `xiaoqu`, `yuezujiage`, `yajin`, `zuyongyueshu`, `zuyongjine`, `yuyueshijian`, `yonghuming`, `xingming`, `shenfenzheng`, `lianxidianhua`, `fangzhuzhanghao`, `fangzhuxingming`, `sfsh`, `shhf`) VALUES
	(51, '2021-03-04 10:46:53', '预约编号1', '房屋名称1', '房屋类型1', '房屋状态1', '小区1', 1, '押金1', 1, '租用金额1', '2021-03-04 18:46:53', '用户名1', '姓名1', '身份证1', '联系电话1', '房主账号1', '房主姓名1', '是', ''),
	(52, '2021-03-04 10:46:53', '预约编号2', '房屋名称2', '房屋类型2', '房屋状态2', '小区2', 2, '押金2', 2, '租用金额2', '2021-03-04 18:46:53', '用户名2', '姓名2', '身份证2', '联系电话2', '房主账号2', '房主姓名2', '是', ''),
	(53, '2021-03-04 10:46:53', '预约编号3', '房屋名称3', '房屋类型3', '房屋状态3', '小区3', 3, '押金3', 3, '租用金额3', '2021-03-04 18:46:53', '用户名3', '姓名3', '身份证3', '联系电话3', '房主账号3', '房主姓名3', '是', ''),
	(54, '2021-03-04 10:46:53', '预约编号4', '房屋名称4', '房屋类型4', '房屋状态4', '小区4', 4, '押金4', 4, '租用金额4', '2021-03-04 18:46:53', '用户名4', '姓名4', '身份证4', '联系电话4', '房主账号4', '房主姓名4', '是', ''),
	(55, '2021-03-04 10:46:53', '预约编号5', '房屋名称5', '房屋类型5', '房屋状态5', '小区5', 5, '押金5', 5, '租用金额5', '2021-03-04 18:46:53', '用户名5', '姓名5', '身份证5', '联系电话5', '房主账号5', '房主姓名5', '是', ''),
	(56, '2021-03-04 10:46:53', '预约编号6', '房屋名称6', '房屋类型6', '房屋状态6', '小区6', 6, '押金6', 6, '租用金额6', '2021-03-04 18:46:53', '用户名6', '姓名6', '身份证6', '联系电话6', '房主账号6', '房主姓名6', '是', ''),
	(1614855637716, '2021-03-04 11:00:37', '2021341902829609414', '新记家园605房', '3房1厅', '可租', '新记家园', 2000, '2000', 12, '24000', '2021-03-04 19:00:35', '2', '陈一', '123456789789456123', '12312312312', '1', '张明', '是', '可以');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
