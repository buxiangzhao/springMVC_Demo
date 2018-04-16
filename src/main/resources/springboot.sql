/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : springboot

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-16 17:34:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_logger_infos
-- ----------------------------
DROP TABLE IF EXISTS `t_logger_infos`;
CREATE TABLE `t_logger_infos` (
  `ali_id` int(11) NOT NULL AUTO_INCREMENT,
  `ali_client_ip` varchar(30) DEFAULT NULL COMMENT '客户端请求IP地址',
  `ali_uri` varchar(100) DEFAULT NULL COMMENT '日志请求地址',
  `ali_type` varchar(50) DEFAULT NULL COMMENT '终端请求方式,普通请求,ajax请求',
  `ali_method` varchar(10) DEFAULT NULL COMMENT '请求方式method,post,get等',
  `ali_param_data` longtext COMMENT '请求参数内容,json',
  `ali_session_id` varchar(100) DEFAULT NULL COMMENT '请求接口唯一session标识',
  `ali_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '请求时间',
  `ali_returm_time` varchar(50) DEFAULT NULL COMMENT '接口返回时间',
  `ali_return_data` longtext COMMENT '接口返回数据json',
  `ali_http_status_code` varchar(10) DEFAULT NULL COMMENT '请求时httpStatusCode代码，如：200,400,404等',
  `ali_time_consuming` int(8) DEFAULT '0' COMMENT '请求耗时（毫秒单位）',
  PRIMARY KEY (`ali_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106162 DEFAULT CHARSET=utf8 COMMENT='请求日志信息表';

-- ----------------------------
-- Records of t_logger_infos
-- ----------------------------
INSERT INTO `t_logger_infos` VALUES ('106119', '0:0:0:0:0:0:0:1', '/list', null, 'GET', '{}', 'FF66016DE81EFCAB5BD84DCFB8409410', '2018-04-12 16:09:34', '1523520574307', 'null', '200', '5');
INSERT INTO `t_logger_infos` VALUES ('106120', '0:0:0:0:0:0:0:1', '/user/login_view', null, 'GET', '{}', 'F61E4BBEFC1F74E8A61D3455DD08841A', '2018-04-12 16:09:35', '1523520575396', 'null', '200', '839');
INSERT INTO `t_logger_infos` VALUES ('106121', '0:0:0:0:0:0:0:1', '/user/login', null, 'GET', '{\"name\":[\"bxz\"],\"pwd\":[\"222222\"]}', 'F61E4BBEFC1F74E8A61D3455DD08841A', '2018-04-12 16:09:48', '1523520588350', 'null', '200', '466');
INSERT INTO `t_logger_infos` VALUES ('106122', '0:0:0:0:0:0:0:1', '/list', null, 'GET', '{}', 'F61E4BBEFC1F74E8A61D3455DD08841A', '2018-04-12 16:12:06', '1523520726103', 'null', '200', '28526');
INSERT INTO `t_logger_infos` VALUES ('106123', '0:0:0:0:0:0:0:1', '/user/login_view', null, 'GET', '{}', 'F61E4BBEFC1F74E8A61D3455DD08841A', '2018-04-12 16:12:31', '1523520751904', 'null', '200', '2903');
INSERT INTO `t_logger_infos` VALUES ('106124', '0:0:0:0:0:0:0:1', '/user/login', null, 'GET', '{\"name\":[\"bxz\"],\"pwd\":[\"123456\"]}', 'F61E4BBEFC1F74E8A61D3455DD08841A', '2018-04-12 16:13:15', '1523520795247', 'null', '200', '4400');
INSERT INTO `t_logger_infos` VALUES ('106125', '0:0:0:0:0:0:0:1', '/%E6%90%9E%E7%AC%91.jpg', null, 'GET', '{}', 'F61E4BBEFC1F74E8A61D3455DD08841A', '2018-04-12 17:14:14', '1523524452078', 'null', '302', '3387');
INSERT INTO `t_logger_infos` VALUES ('106126', '0:0:0:0:0:0:0:1', '/user/login_view', null, 'GET', '{}', '225CEFB86CF8C06289562838A77A5362', '2018-04-12 17:14:15', '1523524455212', 'null', '200', '455');
INSERT INTO `t_logger_infos` VALUES ('106127', '0:0:0:0:0:0:0:1', '/user/login', null, 'GET', '{\"name\":[\"bxz\"],\"pwd\":[\"123456\"]}', '225CEFB86CF8C06289562838A77A5362', '2018-04-12 17:16:32', '1523524592387', 'null', '200', '330');
INSERT INTO `t_logger_infos` VALUES ('106128', '0:0:0:0:0:0:0:1', '/%E6%90%9E%E7%AC%91.jpg', null, 'GET', '{}', '225CEFB86CF8C06289562838A77A5362', '2018-04-12 17:16:43', '1523524603749', 'null', '200', '39');
INSERT INTO `t_logger_infos` VALUES ('106129', '0:0:0:0:0:0:0:1', '/%E6%90%9E%E7%AC%91.jpg', null, 'GET', '{}', '225CEFB86CF8C06289562838A77A5362', '2018-04-12 17:22:29', '1523524949446', 'null', '302', '3');
INSERT INTO `t_logger_infos` VALUES ('106130', '0:0:0:0:0:0:0:1', '/user/login_view', null, 'GET', '{}', '2A034D16A2B66B2DF76593E96BDE302C', '2018-04-12 17:22:30', '1523524950001', 'null', '200', '419');
INSERT INTO `t_logger_infos` VALUES ('106131', '0:0:0:0:0:0:0:1', '/user/login_view', null, 'GET', '{}', '2A034D16A2B66B2DF76593E96BDE302C', '2018-04-12 17:23:18', '1523524998776', 'null', '200', '431');
INSERT INTO `t_logger_infos` VALUES ('106132', '0:0:0:0:0:0:0:1', '/list', null, 'GET', '{}', '76CAB4F27F535659B90E30A14FA201BD', '2018-04-12 17:23:23', '1523525003226', 'null', '200', '382');
INSERT INTO `t_logger_infos` VALUES ('106133', '0:0:0:0:0:0:0:1', '/gaoxiao.jpg', null, 'GET', '{}', '76CAB4F27F535659B90E30A14FA201BD', '2018-04-12 17:23:32', '1523525012049', 'null', '200', '3');
INSERT INTO `t_logger_infos` VALUES ('106134', '0:0:0:0:0:0:0:1', '/bxz/resources/gaoxiao.jpg', null, 'GET', '{}', '76CAB4F27F535659B90E30A14FA201BD', '2018-04-12 17:23:47', '1523525027752', 'null', '200', '3');
INSERT INTO `t_logger_infos` VALUES ('106135', '0:0:0:0:0:0:0:1', '/test', null, 'GET', '{}', '76CAB4F27F535659B90E30A14FA201BD', '2018-04-12 17:40:25', '1523526025116', 'null', '404', '4');
INSERT INTO `t_logger_infos` VALUES ('106136', '0:0:0:0:0:0:0:1', '/error', null, 'GET', '{}', '76CAB4F27F535659B90E30A14FA201BD', '2018-04-12 17:40:25', '1523526025343', 'null', '404', '74');
INSERT INTO `t_logger_infos` VALUES ('106137', '0:0:0:0:0:0:0:1', '/upload', null, 'GET', '{}', '76CAB4F27F535659B90E30A14FA201BD', '2018-04-12 17:56:10', '1523526970258', 'null', '200', '438');
INSERT INTO `t_logger_infos` VALUES ('106138', '0:0:0:0:0:0:0:1', '/error', null, 'POST', '{}', '4838E629CE25BE8C69D860E76A468550', '2018-04-12 17:56:20', '1523526980560', 'null', '500', '42');
INSERT INTO `t_logger_infos` VALUES ('106139', '0:0:0:0:0:0:0:1', '/uploadFiles', null, 'POST', '{}', '4838E629CE25BE8C69D860E76A468550', '2018-04-12 17:57:18', '1523527038238', 'null', '200', '94');
INSERT INTO `t_logger_infos` VALUES ('106140', '0:0:0:0:0:0:0:1', '/upload', null, 'GET', '{}', '12E406B8323164A9F8E0558FD198855E', '2018-04-12 17:57:30', '1523527050162', 'null', '200', '414');
INSERT INTO `t_logger_infos` VALUES ('106141', '0:0:0:0:0:0:0:1', '/uploadFiles', null, 'POST', '{}', '12E406B8323164A9F8E0558FD198855E', '2018-04-12 17:57:39', '1523527059364', 'null', '200', '32');
INSERT INTO `t_logger_infos` VALUES ('106142', '0:0:0:0:0:0:0:1', '/index', null, 'GET', '{}', '12E406B8323164A9F8E0558FD198855E', '2018-04-12 18:13:36', '1523528016888', 'null', '200', '30');
INSERT INTO `t_logger_infos` VALUES ('106143', '0:0:0:0:0:0:0:1', '/index', null, 'GET', '{}', '12E406B8323164A9F8E0558FD198855E', '2018-04-12 18:18:32', '1523528312062', 'null', '200', '31');
INSERT INTO `t_logger_infos` VALUES ('106144', '0:0:0:0:0:0:0:1', '/index', null, 'GET', '{}', '12E406B8323164A9F8E0558FD198855E', '2018-04-12 18:21:47', '1523528507423', 'null', '200', '33');
INSERT INTO `t_logger_infos` VALUES ('106145', '0:0:0:0:0:0:0:1', '/list', null, 'GET', '{}', null, '2018-04-13 17:11:14', '1523610673993', 'null', '200', '897');
INSERT INTO `t_logger_infos` VALUES ('106146', '0:0:0:0:0:0:0:1', '/age', null, 'GET', '{}', null, '2018-04-13 17:11:18', '1523610678574', 'null', '200', '126');
INSERT INTO `t_logger_infos` VALUES ('106147', '0:0:0:0:0:0:0:1', '/age', null, 'GET', '{}', null, '2018-04-13 17:11:33', '1523610693831', 'null', '200', '5');
INSERT INTO `t_logger_infos` VALUES ('106148', '0:0:0:0:0:0:0:1', '/age', null, 'GET', '{}', null, '2018-04-13 17:11:40', '1523610700369', 'null', '200', '4');
INSERT INTO `t_logger_infos` VALUES ('106149', '0:0:0:0:0:0:0:1', '/deleteWhere', null, 'GET', '{}', null, '2018-04-13 17:15:34', '1523610934571', 'null', '200', '78');
INSERT INTO `t_logger_infos` VALUES ('106150', '0:0:0:0:0:0:0:1', '/error', null, 'GET', '{}', null, '2018-04-13 17:15:34', '1523610934751', 'null', '500', '43');
INSERT INTO `t_logger_infos` VALUES ('106151', '0:0:0:0:0:0:0:1', '/deleteWhere', null, 'GET', '{}', null, '2018-04-13 17:17:22', '1523611042895', 'null', '200', '182');
INSERT INTO `t_logger_infos` VALUES ('106152', '0:0:0:0:0:0:0:1', '/cutpage', null, 'GET', '{}', null, '2018-04-13 17:31:04', '1523611864308', 'null', '200', '24');
INSERT INTO `t_logger_infos` VALUES ('106153', '0:0:0:0:0:0:0:1', '/error', null, 'GET', '{}', null, '2018-04-13 17:31:04', '1523611864480', 'null', '500', '28');
INSERT INTO `t_logger_infos` VALUES ('106154', '0:0:0:0:0:0:0:1', '/cutpage', null, 'GET', '{\"page\":[\"1\"]}', null, '2018-04-13 17:31:33', '1523611893574', 'null', '200', '221');
INSERT INTO `t_logger_infos` VALUES ('106155', '0:0:0:0:0:0:0:1', '/error', null, 'GET', '{\"page\":[\"1\"]}', null, '2018-04-13 17:31:33', '1523611893625', 'null', '500', '3');
INSERT INTO `t_logger_infos` VALUES ('106156', '0:0:0:0:0:0:0:1', '/cutpage', null, 'GET', '{\"page\":[\"1\"]}', null, '2018-04-13 17:31:44', '1523611904321', 'null', '200', '5');
INSERT INTO `t_logger_infos` VALUES ('106157', '0:0:0:0:0:0:0:1', '/error', null, 'GET', '{\"page\":[\"1\"]}', null, '2018-04-13 17:31:44', '1523611904354', 'null', '500', '2');
INSERT INTO `t_logger_infos` VALUES ('106158', '0:0:0:0:0:0:0:1', '/cutpage', null, 'GET', '{\"page\":[\"1\"]}', null, '2018-04-13 17:32:23', '1523611943253', 'null', '200', '179');
INSERT INTO `t_logger_infos` VALUES ('106159', '0:0:0:0:0:0:0:1', '/cutpage', null, 'GET', '{\"page\":[\"1\"]}', null, '2018-04-13 17:32:47', '1523611967151', 'null', '200', '13');
INSERT INTO `t_logger_infos` VALUES ('106160', '0:0:0:0:0:0:0:1', '/cutpage', null, 'GET', '{\"page\":[\"2\"]}', null, '2018-04-13 17:32:59', '1523611979229', 'null', '200', '9');
INSERT INTO `t_logger_infos` VALUES ('106161', '0:0:0:0:0:0:0:1', '/cutpage', null, 'GET', '{\"page\":[\"2\"]}', null, '2018-04-13 17:33:09', '1523611989571', 'null', '200', '8');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `t_name` varchar(30) DEFAULT NULL COMMENT '名称',
  `t_age` int(10) DEFAULT NULL COMMENT '年龄',
  `t_address` varchar(100) DEFAULT NULL COMMENT '家庭住址',
  `t_pwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('5', 'bxz', '12', '李四', '123456');
INSERT INTO `t_user` VALUES ('6', '里', '12', 'meikou', null);
INSERT INTO `t_user` VALUES ('7', '里', '21', 'meikou', null);
INSERT INTO `t_user` VALUES ('8', '', '0', '', '');
INSERT INTO `t_user` VALUES ('10', '李四', '1', null, null);
INSERT INTO `t_user` VALUES ('11', '行三', '2', null, null);
INSERT INTO `t_user` VALUES ('12', '王五', '3', null, null);
INSERT INTO `t_user` VALUES ('13', '赵四', '4', null, null);
INSERT INTO `t_user` VALUES ('14', '昭仪', '5', null, null);
INSERT INTO `t_user` VALUES ('15', '钱二', '6', null, null);
INSERT INTO `t_user` VALUES ('16', '孙三', '6', null, null);
