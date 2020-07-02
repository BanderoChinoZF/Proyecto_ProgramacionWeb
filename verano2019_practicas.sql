/*
Navicat MySQL Data Transfer

Source Server         : Verano-PrograWeb
Source Server Version : 50505
Source Host           : localhost:3310
Source Database       : verano2019_practicas

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-07-30 12:08:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ci_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT 0,
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for `estados`
-- ----------------------------
DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of estados
-- ----------------------------

-- ----------------------------
-- Table structure for `fotos`
-- ----------------------------
DROP TABLE IF EXISTS `fotos`;
CREATE TABLE `fotos` (
  `id_foto` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_foto`),
  KEY `id_persona` (`id_persona`),
  CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fotos
-- ----------------------------
INSERT INTO `fotos` VALUES ('13', '1', 'ATRAS', 'foto_ATRAS11.jpg');
INSERT INTO `fotos` VALUES ('16', '5', 'PERFIL', 'foto_PERFIL5.jpeg');
INSERT INTO `fotos` VALUES ('18', '6', 'PERSONALIZADA', 'foto_PERSONALIZADA_6.jpg');
INSERT INTO `fotos` VALUES ('20', '1', 'PERSONALIZADA', 'foto_PERSONALIZADA_1.jpg');
INSERT INTO `fotos` VALUES ('21', '1', 'PERFIL', 'foto_PERFIL_1.jpg');

-- ----------------------------
-- Table structure for `fotosusuarios`
-- ----------------------------
DROP TABLE IF EXISTS `fotosusuarios`;
CREATE TABLE `fotosusuarios` (
  `id_foto` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `foto` text NOT NULL,
  PRIMARY KEY (`id_foto`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fotosusuarios
-- ----------------------------
INSERT INTO `fotosusuarios` VALUES ('7', '19', 'foto_perfil_vegeta777.jpg');
INSERT INTO `fotosusuarios` VALUES ('9', '1', 'foto_perfil_Jose.jpg');
INSERT INTO `fotosusuarios` VALUES ('11', '17', 'foto_perfil_BanderoChinoZF.jpg');
INSERT INTO `fotosusuarios` VALUES ('12', '21', 'usuario_sin_foto.png');
INSERT INTO `fotosusuarios` VALUES ('20', '23', 'foto_perfil_secktor.jpg');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL,
  `huella` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `accion` varchar(100) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `variable` varchar(255) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=891 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', null, '2019-07-16 12:41:46', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('2', null, '2019-07-16 12:41:47', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('3', null, '2019-07-16 12:45:41', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('4', null, '2019-07-16 12:46:46', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('5', null, '2019-07-16 12:46:54', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('6', null, '2019-07-16 12:46:54', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('7', 'Jose', '2019-07-16 12:46:54', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('8', null, '2019-07-17 00:37:05', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('9', null, '2019-07-17 00:37:05', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('10', null, '2019-07-17 00:37:54', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('11', null, '2019-07-17 00:37:54', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('12', 'Jose', '2019-07-17 00:37:54', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('13', 'Jose', '2019-07-17 00:37:57', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('14', 'Jose', '2019-07-17 00:39:08', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('15', 'Jose', '2019-07-17 00:42:08', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('16', 'Jose', '2019-07-17 00:42:35', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('17', 'Jose', '2019-07-17 00:43:16', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('18', 'Jose', '2019-07-17 00:44:16', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('19', 'Jose', '2019-07-17 00:45:36', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('20', 'Jose', '2019-07-17 00:45:40', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('21', 'Jose', '2019-07-17 00:46:46', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('22', 'Jose', '2019-07-17 00:48:05', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('23', 'Jose', '2019-07-17 00:49:22', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('24', 'Jose', '2019-07-17 00:50:36', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('25', 'Jose', '2019-07-17 00:55:45', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('26', 'Jose', '2019-07-17 00:57:49', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('27', 'Jose', '2019-07-17 01:02:03', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('28', 'Jose', '2019-07-17 01:03:13', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('29', 'Jose', '2019-07-17 01:03:20', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('30', 'Jose', '2019-07-17 01:05:54', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('31', 'Jose', '2019-07-17 01:06:56', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('32', 'Jose', '2019-07-17 01:07:18', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('33', 'Jose', '2019-07-17 01:07:32', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('34', 'Jose', '2019-07-17 01:08:14', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('35', 'Jose', '2019-07-17 01:08:41', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('36', 'Jose', '2019-07-17 01:09:48', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('37', 'Jose', '2019-07-17 01:21:51', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('38', 'Jose', '2019-07-17 01:23:49', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('39', 'Jose', '2019-07-17 01:24:37', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('40', 'Jose', '2019-07-17 01:25:26', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('41', null, '2019-07-17 11:13:57', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('42', null, '2019-07-17 11:13:58', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('43', null, '2019-07-17 11:14:10', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('44', null, '2019-07-17 11:14:10', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('45', 'Jose', '2019-07-17 11:14:11', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('46', 'Jose', '2019-07-17 11:20:19', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('47', 'Jose', '2019-07-17 11:25:02', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('48', 'Jose', '2019-07-17 11:25:15', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('49', 'Jose', '2019-07-17 11:26:32', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('50', 'Jose', '2019-07-17 11:26:52', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('51', 'Jose', '2019-07-17 11:26:53', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('52', 'Jose', '2019-07-17 11:26:54', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('53', 'Jose', '2019-07-17 11:26:54', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('54', 'Jose', '2019-07-17 11:26:55', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('55', 'Jose', '2019-07-17 11:26:55', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('56', 'Jose', '2019-07-17 11:27:13', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('57', 'Jose', '2019-07-17 11:27:18', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('58', 'Jose', '2019-07-17 12:20:35', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('59', 'Jose', '2019-07-17 12:34:24', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('60', 'Jose', '2019-07-17 12:35:30', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('61', 'Jose', '2019-07-17 12:36:41', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('62', 'Jose', '2019-07-17 12:36:43', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('63', 'Jose', '2019-07-17 12:37:39', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('64', 'Jose', '2019-07-17 12:37:43', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('65', 'Jose', '2019-07-17 12:40:50', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('66', 'Jose', '2019-07-17 12:47:56', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('67', 'Jose', '2019-07-17 12:55:51', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('68', 'Jose', '2019-07-17 12:55:55', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('69', null, '2019-07-19 03:00:02', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('70', null, '2019-07-19 03:00:02', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('71', null, '2019-07-19 03:01:55', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('72', null, '2019-07-19 03:02:17', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('73', null, '2019-07-19 03:02:17', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('74', 'Jose', '2019-07-19 03:02:17', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('75', 'Jose', '2019-07-19 03:04:12', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('76', 'Jose', '2019-07-19 03:04:15', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('77', null, '2019-07-19 11:38:32', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('78', null, '2019-07-19 11:38:32', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('79', null, '2019-07-19 11:38:41', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('80', null, '2019-07-19 11:38:41', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('81', 'Jose', '2019-07-19 11:38:41', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('82', 'Jose', '2019-07-19 11:43:58', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('83', null, '2019-07-20 01:00:49', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('84', null, '2019-07-20 01:00:49', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('85', null, '2019-07-20 01:01:09', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('86', null, '2019-07-20 01:01:09', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('87', 'Jose', '2019-07-20 01:01:10', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('88', null, '2019-07-23 02:23:44', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('89', null, '2019-07-23 02:23:44', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('90', null, '2019-07-23 02:23:54', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('91', null, '2019-07-23 02:23:54', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose@', '127.0.0.1');
INSERT INTO `log` VALUES ('92', null, '2019-07-23 02:24:04', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('93', null, '2019-07-23 02:24:04', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('94', 'Jose', '2019-07-23 02:24:04', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('95', 'Jose', '2019-07-23 02:43:39', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('96', null, '2019-07-23 11:00:41', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('97', null, '2019-07-23 11:00:41', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('98', null, '2019-07-23 11:00:48', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('99', null, '2019-07-23 11:00:48', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('100', 'Jose', '2019-07-23 11:00:48', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('101', 'Jose', '2019-07-23 11:01:12', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('102', 'Jose', '2019-07-23 11:21:36', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('103', 'Jose', '2019-07-23 12:50:23', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('104', 'Jose', '2019-07-23 12:50:23', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('105', 'Jose', '2019-07-23 12:50:23', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('106', 'Jose', '2019-07-23 12:50:23', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('107', null, '2019-07-24 04:43:34', 'GET', 'Acceso/principal', 'ACCESO NO AUTORIZADO', '127.0.0.1');
INSERT INTO `log` VALUES ('108', null, '2019-07-24 04:43:34', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('109', null, '2019-07-24 04:43:44', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('110', null, '2019-07-24 04:43:44', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('111', 'Jose', '2019-07-24 04:43:45', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('112', 'Jose', '2019-07-24 05:57:12', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('113', 'Jose', '2019-07-24 05:57:12', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('114', 'Jose', '2019-07-24 05:57:12', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('115', 'Jose', '2019-07-24 05:57:12', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('116', null, '2019-07-24 10:56:18', 'GET', 'Acceso/principal', 'ACCESO NO AUTORIZADO', '127.0.0.1');
INSERT INTO `log` VALUES ('117', null, '2019-07-24 10:56:18', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('118', null, '2019-07-24 10:56:27', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('119', null, '2019-07-24 10:56:27', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('120', 'Jose', '2019-07-24 10:56:27', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('121', 'Jose', '2019-07-24 11:08:45', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('122', 'Jose', '2019-07-24 12:23:59', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('123', 'Jose', '2019-07-24 12:23:59', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('124', 'Jose', '2019-07-24 12:23:59', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('125', 'Jose', '2019-07-24 12:23:59', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('126', 'Jose', '2019-07-24 12:24:38', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('127', 'Jose', '2019-07-24 12:30:48', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('128', 'Jose', '2019-07-24 14:01:52', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('129', 'Jose', '2019-07-24 14:01:53', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('130', 'Jose', '2019-07-24 14:01:53', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('131', 'Jose', '2019-07-24 14:01:53', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('132', null, '2019-07-25 00:05:23', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('133', null, '2019-07-25 00:05:23', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('134', null, '2019-07-25 00:05:32', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('135', null, '2019-07-25 00:05:33', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('136', null, '2019-07-25 00:05:48', 'GET', 'Acceso/principal', 'ACCESO NO AUTORIZADO', '127.0.0.1');
INSERT INTO `log` VALUES ('137', null, '2019-07-25 00:05:48', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('138', null, '2019-07-25 00:06:58', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('139', null, '2019-07-25 00:07:18', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('140', null, '2019-07-25 00:07:18', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('141', 'Jose', '2019-07-25 00:07:18', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('142', null, '2019-07-25 13:37:29', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('143', null, '2019-07-25 13:37:30', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('144', null, '2019-07-25 13:37:35', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('145', null, '2019-07-25 13:37:35', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('146', 'Jose', '2019-07-25 13:37:37', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('147', null, '2019-07-26 11:20:24', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('148', null, '2019-07-26 11:20:27', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('149', null, '2019-07-26 11:20:39', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('150', null, '2019-07-26 11:20:39', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('151', 'Jose', '2019-07-26 11:20:39', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('152', 'Jose', '2019-07-26 11:21:41', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('153', 'Jose', '2019-07-26 11:23:40', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('154', null, '2019-07-26 11:23:48', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('155', null, '2019-07-26 11:23:56', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('156', null, '2019-07-26 11:23:56', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose', '127.0.0.1');
INSERT INTO `log` VALUES ('157', null, '2019-07-26 11:24:02', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('158', null, '2019-07-26 11:24:02', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jiose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('159', null, '2019-07-26 11:24:08', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('160', null, '2019-07-26 11:24:08', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('161', 'Jose', '2019-07-26 11:24:08', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('162', 'Jose', '2019-07-26 11:33:38', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('163', 'Jose', '2019-07-26 11:34:12', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('164', 'Jose', '2019-07-26 11:34:18', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('165', 'Jose', '2019-07-26 11:34:23', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('166', 'Jose', '2019-07-26 11:34:59', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('167', 'Jose', '2019-07-26 11:35:22', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('168', 'Jose', '2019-07-26 11:35:27', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('169', 'Jose', '2019-07-26 11:38:38', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('170', null, '2019-07-26 20:20:41', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('171', null, '2019-07-26 20:20:42', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('172', null, '2019-07-26 20:20:44', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('173', null, '2019-07-26 20:20:45', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('174', null, '2019-07-26 20:20:54', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('175', null, '2019-07-26 20:20:54', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('176', 'Jose', '2019-07-26 20:20:54', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('177', 'Jose', '2019-07-26 20:48:32', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('178', 'Jose', '2019-07-26 20:48:32', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('179', 'Jose', '2019-07-26 20:48:32', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('180', 'Jose', '2019-07-26 20:48:32', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('181', 'Jose', '2019-07-26 20:48:32', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('182', 'Jose', '2019-07-26 20:48:32', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('183', 'Jose', '2019-07-26 20:48:32', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('184', null, '2019-07-26 20:48:38', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('185', null, '2019-07-26 20:48:46', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('186', null, '2019-07-26 20:48:46', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('187', 'BanderoChinoZF', '2019-07-26 20:48:46', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('188', 'BanderoChinoZF', '2019-07-26 20:48:55', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('189', 'BanderoChinoZF', '2019-07-26 20:48:55', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('190', 'BanderoChinoZF', '2019-07-26 20:48:55', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('191', 'BanderoChinoZF', '2019-07-26 20:48:58', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('192', 'BanderoChinoZF', '2019-07-26 20:48:58', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('193', 'BanderoChinoZF', '2019-07-26 20:48:58', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('194', 'BanderoChinoZF', '2019-07-26 20:49:01', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('195', 'BanderoChinoZF', '2019-07-26 20:49:01', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('196', 'BanderoChinoZF', '2019-07-26 20:49:01', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('197', 'BanderoChinoZF', '2019-07-26 20:49:08', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('198', 'BanderoChinoZF', '2019-07-26 20:49:08', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('199', 'BanderoChinoZF', '2019-07-26 20:49:08', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('200', 'BanderoChinoZF', '2019-07-26 20:50:36', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('201', 'BanderoChinoZF', '2019-07-26 20:50:36', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('202', 'BanderoChinoZF', '2019-07-26 20:50:36', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('203', 'BanderoChinoZF', '2019-07-26 20:50:39', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('204', 'BanderoChinoZF', '2019-07-26 20:50:39', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('205', 'BanderoChinoZF', '2019-07-26 20:50:39', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('206', 'BanderoChinoZF', '2019-07-26 21:19:00', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('207', 'BanderoChinoZF', '2019-07-26 21:19:00', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('208', 'BanderoChinoZF', '2019-07-26 21:19:00', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('209', 'BanderoChinoZF', '2019-07-26 21:19:03', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('210', 'BanderoChinoZF', '2019-07-26 21:19:03', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('211', 'BanderoChinoZF', '2019-07-26 21:19:03', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('212', 'BanderoChinoZF', '2019-07-26 21:54:11', 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('213', 'BanderoChinoZF', '2019-07-26 21:54:11', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('214', 'BanderoChinoZF', '2019-07-26 21:54:15', 'GET', 'UsuariosController/detalleUsuarios', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('215', 'BanderoChinoZF', '2019-07-26 21:54:15', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('216', 'BanderoChinoZF', '2019-07-26 21:54:16', 'GET', 'UsuariosController/detalleUsuarios', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('217', 'BanderoChinoZF', '2019-07-26 21:54:16', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('218', 'BanderoChinoZF', '2019-07-26 21:54:18', 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('219', 'BanderoChinoZF', '2019-07-26 21:54:18', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('220', 'BanderoChinoZF', '2019-07-26 22:29:48', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('221', 'BanderoChinoZF', '2019-07-26 22:29:59', 'GET', 'UsuariosController/registrarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('222', 'BanderoChinoZF', '2019-07-26 22:29:59', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('223', 'BanderoChinoZF', '2019-07-26 22:30:14', 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('224', 'BanderoChinoZF', '2019-07-26 22:30:14', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('225', null, '2019-07-26 22:30:26', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('226', null, '2019-07-26 22:30:37', 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION AL LOGIN', '127.0.0.1');
INSERT INTO `log` VALUES ('227', null, '2019-07-26 22:30:37', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('228', null, '2019-07-26 22:30:50', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('229', null, '2019-07-26 22:30:50', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('230', 'Jose', '2019-07-26 22:30:50', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('231', 'Jose', '2019-07-26 22:30:57', 'GET', 'UsuariosController/registrarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('232', 'Jose', '2019-07-26 22:31:07', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('233', 'Jose', '2019-07-26 22:31:16', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('234', 'Jose', '2019-07-26 22:31:16', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('235', 'Jose', '2019-07-26 22:31:16', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('236', 'Jose', '2019-07-26 22:31:30', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('237', 'Jose', '2019-07-26 22:31:36', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('238', null, '2019-07-26 22:31:54', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('239', null, '2019-07-26 22:32:22', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('240', null, '2019-07-26 22:32:22', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('241', 'BanderoChinoZF', '2019-07-26 22:32:22', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('242', 'BanderoChinoZF', '2019-07-26 22:41:30', 'GET', 'UsuariosController/registrarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('243', 'BanderoChinoZF', '2019-07-26 22:41:30', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('244', 'BanderoChinoZF', '2019-07-26 22:41:32', 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('245', 'BanderoChinoZF', '2019-07-26 22:41:32', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('246', 'BanderoChinoZF', '2019-07-26 22:46:41', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('247', 'BanderoChinoZF', '2019-07-26 22:51:50', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('248', null, '2019-07-26 22:51:55', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('249', null, '2019-07-26 22:52:01', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('250', null, '2019-07-26 22:52:01', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose11258', '127.0.0.1');
INSERT INTO `log` VALUES ('251', null, '2019-07-26 22:52:08', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('252', null, '2019-07-26 22:52:08', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('253', 'Jose', '2019-07-26 22:52:08', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('254', 'Jose', '2019-07-26 22:53:08', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('255', 'Jose', '2019-07-26 22:53:44', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('256', 'Jose', '2019-07-26 22:53:48', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('257', null, '2019-07-26 22:53:52', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('258', null, '2019-07-26 22:54:00', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('259', null, '2019-07-26 22:54:00', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('260', 'BanderoChinoZF', '2019-07-26 22:54:00', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('261', 'BanderoChinoZF', '2019-07-26 23:21:54', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('262', 'BanderoChinoZF', '2019-07-26 23:33:41', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('263', 'BanderoChinoZF', '2019-07-26 23:36:17', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('264', 'BanderoChinoZF', '2019-07-26 23:46:01', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('265', 'BanderoChinoZF', '2019-07-26 23:46:04', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('266', 'BanderoChinoZF', '2019-07-26 23:58:28', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('267', 'BanderoChinoZF', '2019-07-27 00:27:43', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('268', 'BanderoChinoZF', '2019-07-27 00:28:03', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('269', 'BanderoChinoZF', '2019-07-27 00:28:22', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('270', null, '2019-07-27 19:22:11', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('271', null, '2019-07-27 19:22:12', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('272', null, '2019-07-27 19:22:26', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('273', null, '2019-07-27 19:22:27', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('274', 'BanderoChinoZF', '2019-07-27 19:22:28', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('275', 'BanderoChinoZF', '2019-07-27 19:22:32', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('276', 'BanderoChinoZF', '2019-07-27 19:23:22', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('277', 'BanderoChinoZF', '2019-07-27 19:23:25', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('278', 'BanderoChinoZF', '2019-07-27 19:23:34', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('279', 'BanderoChinoZF', '2019-07-27 19:26:22', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('280', 'BanderoChinoZF', '2019-07-27 19:41:51', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('281', 'BanderoChinoZF', '2019-07-27 19:42:50', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('282', 'BanderoChinoZF', '2019-07-27 19:42:52', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('283', 'BanderoChinoZF', '2019-07-27 19:43:08', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('284', 'BanderoChinoZF', '2019-07-27 19:43:10', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('285', 'BanderoChinoZF', '2019-07-27 19:43:12', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('286', 'BanderoChinoZF', '2019-07-27 19:44:29', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('287', 'BanderoChinoZF', '2019-07-27 19:45:03', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('288', 'BanderoChinoZF', '2019-07-27 19:45:24', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('289', 'BanderoChinoZF', '2019-07-27 20:11:12', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('290', 'BanderoChinoZF', '2019-07-27 20:11:14', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('291', 'BanderoChinoZF', '2019-07-27 20:11:57', 'GET', 'ProductosController/guardarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('292', 'BanderoChinoZF', '2019-07-27 20:12:24', 'GET', 'ProductosController/guardarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('293', 'BanderoChinoZF', '2019-07-27 20:12:24', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('294', 'BanderoChinoZF', '2019-07-27 20:13:04', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('295', 'BanderoChinoZF', '2019-07-27 20:20:01', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('296', 'BanderoChinoZF', '2019-07-27 20:22:53', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('297', 'BanderoChinoZF', '2019-07-27 20:23:03', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('298', 'BanderoChinoZF', '2019-07-27 20:23:15', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('299', 'BanderoChinoZF', '2019-07-27 20:23:21', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('300', 'BanderoChinoZF', '2019-07-27 20:23:34', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('301', 'BanderoChinoZF', '2019-07-27 20:23:35', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('302', 'BanderoChinoZF', '2019-07-27 20:23:35', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('303', 'BanderoChinoZF', '2019-07-27 20:23:35', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('304', 'BanderoChinoZF', '2019-07-27 20:24:30', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('305', 'BanderoChinoZF', '2019-07-27 20:25:05', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('306', 'BanderoChinoZF', '2019-07-27 20:25:14', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('307', 'BanderoChinoZF', '2019-07-27 20:25:35', 'GET', 'ProductosController/eliminarProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('308', 'BanderoChinoZF', '2019-07-27 20:25:35', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('309', 'BanderoChinoZF', '2019-07-27 20:25:39', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('310', 'BanderoChinoZF', '2019-07-27 20:25:46', 'GET', 'ProductosController/eliminarProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('311', 'BanderoChinoZF', '2019-07-27 20:25:46', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('312', 'BanderoChinoZF', '2019-07-27 20:25:49', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('313', null, '2019-07-27 20:27:06', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('314', null, '2019-07-27 20:27:17', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('315', null, '2019-07-27 20:27:17', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('316', 'Jose', '2019-07-27 20:27:17', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('317', 'Jose', '2019-07-27 20:27:20', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('318', 'Jose', '2019-07-27 20:27:23', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('319', 'Jose', '2019-07-27 20:27:26', 'GET', 'ProductosController/eliminarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('320', 'Jose', '2019-07-27 20:27:27', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('321', null, '2019-07-27 20:27:31', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('322', null, '2019-07-27 20:27:39', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('323', null, '2019-07-27 20:27:39', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('324', 'BanderoChinoZF', '2019-07-27 20:27:49', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('325', 'BanderoChinoZF', '2019-07-27 20:27:49', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('326', 'BanderoChinoZF', '2019-07-27 20:27:49', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('327', 'BanderoChinoZF', '2019-07-27 20:27:51', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('328', null, '2019-07-28 00:31:29', 'GET', 'ProductosController/listaProductos', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', '127.0.0.1');
INSERT INTO `log` VALUES ('329', null, '2019-07-28 00:31:29', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('330', null, '2019-07-28 00:31:45', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('331', null, '2019-07-28 00:31:45', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('332', 'BanderoChinoZF', '2019-07-28 00:31:45', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('333', 'BanderoChinoZF', '2019-07-28 00:31:47', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('334', 'BanderoChinoZF', '2019-07-28 01:35:05', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('335', 'BanderoChinoZF', '2019-07-28 01:35:08', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('336', 'BanderoChinoZF', '2019-07-28 01:35:08', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('337', 'BanderoChinoZF', '2019-07-28 01:35:08', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('338', 'BanderoChinoZF', '2019-07-28 01:36:56', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('339', 'BanderoChinoZF', '2019-07-28 01:36:59', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('340', 'BanderoChinoZF', '2019-07-28 01:37:01', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('341', 'BanderoChinoZF', '2019-07-28 01:37:01', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('342', 'BanderoChinoZF', '2019-07-28 01:37:01', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('343', 'BanderoChinoZF', '2019-07-28 01:37:04', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('344', 'BanderoChinoZF', '2019-07-28 01:37:07', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('345', 'BanderoChinoZF', '2019-07-28 01:37:07', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('346', 'BanderoChinoZF', '2019-07-28 01:37:07', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('347', 'BanderoChinoZF', '2019-07-28 01:37:10', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('348', 'BanderoChinoZF', '2019-07-28 01:37:12', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('349', 'BanderoChinoZF', '2019-07-28 01:37:12', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('350', 'BanderoChinoZF', '2019-07-28 01:37:12', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('351', 'BanderoChinoZF', '2019-07-28 01:37:14', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('352', 'BanderoChinoZF', '2019-07-28 01:57:09', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('353', 'BanderoChinoZF', '2019-07-28 01:57:09', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('354', 'BanderoChinoZF', '2019-07-28 01:57:09', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('355', 'BanderoChinoZF', '2019-07-28 01:57:11', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('356', 'BanderoChinoZF', '2019-07-28 01:57:15', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('357', 'BanderoChinoZF', '2019-07-28 01:57:15', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('358', 'BanderoChinoZF', '2019-07-28 01:57:15', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('359', 'BanderoChinoZF', '2019-07-28 01:57:16', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('360', null, '2019-07-28 15:15:54', 'GET', 'ProductosController/listaProductos', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', '127.0.0.1');
INSERT INTO `log` VALUES ('361', null, '2019-07-28 15:15:54', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('362', null, '2019-07-28 15:16:06', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('363', null, '2019-07-28 15:16:06', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('364', 'BanderoChinoZF', '2019-07-28 15:16:06', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('365', 'BanderoChinoZF', '2019-07-28 15:16:09', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('366', 'BanderoChinoZF', '2019-07-28 15:18:05', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('367', 'BanderoChinoZF', '2019-07-28 15:18:44', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('368', 'BanderoChinoZF', '2019-07-28 15:18:59', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('369', 'BanderoChinoZF', '2019-07-28 15:19:18', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('370', 'BanderoChinoZF', '2019-07-28 15:19:22', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('371', 'BanderoChinoZF', '2019-07-28 15:19:27', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('372', 'BanderoChinoZF', '2019-07-28 15:19:28', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('373', 'BanderoChinoZF', '2019-07-28 15:19:30', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('374', 'BanderoChinoZF', '2019-07-28 15:19:32', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('375', 'BanderoChinoZF', '2019-07-28 15:19:58', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('376', 'BanderoChinoZF', '2019-07-28 15:19:59', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('377', 'BanderoChinoZF', '2019-07-28 15:20:00', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('378', 'BanderoChinoZF', '2019-07-28 15:20:26', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('379', 'BanderoChinoZF', '2019-07-28 15:20:26', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('380', 'BanderoChinoZF', '2019-07-28 15:20:27', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('381', 'BanderoChinoZF', '2019-07-28 15:20:29', 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('382', 'BanderoChinoZF', '2019-07-28 15:20:29', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('383', 'BanderoChinoZF', '2019-07-28 15:20:31', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('384', 'BanderoChinoZF', '2019-07-28 15:20:37', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('385', 'BanderoChinoZF', '2019-07-28 15:20:37', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('386', 'BanderoChinoZF', '2019-07-28 15:20:37', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('387', 'BanderoChinoZF', '2019-07-28 15:27:20', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('388', 'BanderoChinoZF', '2019-07-28 15:27:20', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('389', 'BanderoChinoZF', '2019-07-28 15:27:20', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('390', 'BanderoChinoZF', '2019-07-28 15:30:23', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('391', 'BanderoChinoZF', '2019-07-28 15:30:23', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('392', 'BanderoChinoZF', '2019-07-28 15:30:23', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('393', 'BanderoChinoZF', '2019-07-28 15:30:24', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('394', 'BanderoChinoZF', '2019-07-28 15:30:25', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('395', 'BanderoChinoZF', '2019-07-28 15:30:25', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('396', 'BanderoChinoZF', '2019-07-28 15:30:33', 'GET', 'ProductosController/guardarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('397', 'BanderoChinoZF', '2019-07-28 15:30:33', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('398', 'BanderoChinoZF', '2019-07-28 15:30:39', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('399', 'BanderoChinoZF', '2019-07-28 15:30:39', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('400', 'BanderoChinoZF', '2019-07-28 15:30:39', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('401', 'BanderoChinoZF', '2019-07-28 15:30:45', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('402', 'BanderoChinoZF', '2019-07-28 15:31:39', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('403', 'BanderoChinoZF', '2019-07-28 15:31:43', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('404', 'BanderoChinoZF', '2019-07-28 15:31:43', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('405', 'BanderoChinoZF', '2019-07-28 15:31:44', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('406', 'BanderoChinoZF', '2019-07-28 15:33:29', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('407', 'BanderoChinoZF', '2019-07-28 15:33:29', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('408', 'BanderoChinoZF', '2019-07-28 15:33:30', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('409', 'BanderoChinoZF', '2019-07-28 15:33:33', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('410', 'BanderoChinoZF', '2019-07-28 15:33:36', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('411', 'BanderoChinoZF', '2019-07-28 15:33:36', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('412', 'BanderoChinoZF', '2019-07-28 15:33:36', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('413', 'BanderoChinoZF', '2019-07-28 15:33:47', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('414', 'BanderoChinoZF', '2019-07-28 15:33:47', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('415', 'BanderoChinoZF', '2019-07-28 15:33:47', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('416', 'BanderoChinoZF', '2019-07-28 15:33:54', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('417', 'BanderoChinoZF', '2019-07-28 15:33:54', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('418', 'BanderoChinoZF', '2019-07-28 15:33:54', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('419', 'BanderoChinoZF', '2019-07-28 15:34:00', 'GET', 'ProductosController/actualizarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('420', 'BanderoChinoZF', '2019-07-28 15:34:00', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('421', 'BanderoChinoZF', '2019-07-28 15:34:02', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('422', 'BanderoChinoZF', '2019-07-28 15:34:02', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('423', 'BanderoChinoZF', '2019-07-28 15:34:03', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('424', 'BanderoChinoZF', '2019-07-28 15:34:05', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('425', 'BanderoChinoZF', '2019-07-28 15:34:07', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('426', 'BanderoChinoZF', '2019-07-28 15:34:07', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('427', 'BanderoChinoZF', '2019-07-28 15:34:07', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('428', 'BanderoChinoZF', '2019-07-28 15:34:10', 'GET', 'ProductosController/actualizarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('429', 'BanderoChinoZF', '2019-07-28 15:34:10', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('430', 'BanderoChinoZF', '2019-07-28 15:34:37', 'GET', 'ProductosController/eliminarProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('431', 'BanderoChinoZF', '2019-07-28 15:34:37', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('432', 'BanderoChinoZF', '2019-07-28 15:34:40', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('433', null, '2019-07-28 15:34:46', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('434', null, '2019-07-28 15:34:53', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('435', null, '2019-07-28 15:34:53', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('436', 'Jose', '2019-07-28 15:34:53', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('437', 'Jose', '2019-07-28 15:34:55', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('438', 'Jose', '2019-07-28 15:34:58', 'GET', 'ProductosController/eliminarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('439', 'Jose', '2019-07-28 15:34:58', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('440', null, '2019-07-28 15:35:04', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('441', null, '2019-07-28 15:46:58', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('442', null, '2019-07-28 15:46:58', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('443', 'Jose', '2019-07-28 15:46:59', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('444', 'Jose', '2019-07-28 15:47:02', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('445', 'Jose', '2019-07-28 15:47:05', 'GET', 'UsuariosController/eliminarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('446', 'Jose', '2019-07-28 15:47:05', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('447', 'Jose', '2019-07-28 15:47:08', 'GET', 'UsuariosController/eliminarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('448', 'Jose', '2019-07-28 15:47:08', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('449', 'Jose', '2019-07-28 15:47:10', 'GET', 'UsuariosController/eliminarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('450', 'Jose', '2019-07-28 15:47:10', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('451', 'Jose', '2019-07-28 15:47:14', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('452', 'Jose', '2019-07-28 15:55:25', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('453', 'Jose', '2019-07-28 15:55:30', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('454', null, '2019-07-28 15:55:34', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('455', null, '2019-07-28 17:35:22', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('456', null, '2019-07-28 17:35:22', 'POST', 'Acceso/login', 'Intento de acceso con credenciales  - ', '127.0.0.1');
INSERT INTO `log` VALUES ('457', null, '2019-07-28 18:03:34', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('458', null, '2019-07-28 18:03:34', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('459', null, '2019-07-28 18:03:41', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('460', null, '2019-07-28 18:03:41', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('461', 'Jose', '2019-07-28 18:03:41', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('462', 'Jose', '2019-07-28 18:03:44', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('463', 'Jose', '2019-07-28 18:03:58', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('464', 'Jose', '2019-07-28 18:03:59', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('465', 'Jose', '2019-07-28 18:03:59', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('466', 'Jose', '2019-07-28 18:04:02', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('467', 'Jose', '2019-07-28 18:04:04', 'GET', 'UsuariosController/registrarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('468', 'Jose', '2019-07-28 18:05:01', 'GET', 'UsuariosController/registrarBD_Usuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('469', 'Jose', '2019-07-28 18:05:02', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('470', 'Jose', '2019-07-28 18:05:05', 'GET', 'UsuariosController/registrarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('471', 'Jose', '2019-07-28 18:06:05', 'GET', 'UsuariosController/registrarBD_Usuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('472', 'Jose', '2019-07-28 18:06:05', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('473', 'Jose', '2019-07-28 18:06:09', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('474', 'Jose', '2019-07-28 18:06:10', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('475', 'Jose', '2019-07-28 18:06:10', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('476', 'Jose', '2019-07-28 18:06:13', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('477', 'Jose', '2019-07-28 18:06:14', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('478', 'Jose', '2019-07-28 18:06:14', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('479', 'Jose', '2019-07-28 18:06:15', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('480', 'Jose', '2019-07-28 18:06:16', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('481', 'Jose', '2019-07-28 18:06:18', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('482', 'Jose', '2019-07-28 18:06:18', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('483', 'Jose', '2019-07-28 18:06:18', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('484', 'Jose', '2019-07-28 18:06:21', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('485', 'Jose', '2019-07-28 18:07:32', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('486', 'Jose', '2019-07-28 18:07:42', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('487', 'Jose', '2019-07-28 18:07:42', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('488', 'Jose', '2019-07-28 18:07:43', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('489', 'Jose', '2019-07-28 18:07:45', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('490', 'Jose', '2019-07-28 18:08:33', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('491', 'Jose', '2019-07-28 18:08:38', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('492', 'Jose', '2019-07-28 18:08:38', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('493', 'Jose', '2019-07-28 18:08:39', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('494', 'Jose', '2019-07-28 18:08:42', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('495', 'Jose', '2019-07-28 18:08:44', 'GET', 'UsuariosController/editarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('496', 'Jose', '2019-07-28 18:08:44', 'GET', 'UsuariosController/editarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('497', 'Jose', '2019-07-28 18:08:44', 'GET', 'UsuariosController/editarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('498', 'Jose', '2019-07-28 18:08:46', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('499', 'Jose', '2019-07-28 18:12:04', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('500', 'Jose', '2019-07-28 18:12:05', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('501', 'Jose', '2019-07-28 18:12:06', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('502', 'Jose', '2019-07-28 18:12:25', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('503', 'Jose', '2019-07-28 18:12:31', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('504', 'Jose', '2019-07-28 18:12:32', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('505', 'Jose', '2019-07-28 18:12:32', 'GET', 'ProductosController/editarProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('506', 'Jose', '2019-07-28 18:12:33', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('507', 'Jose', '2019-07-28 18:12:34', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('508', 'Jose', '2019-07-28 18:12:35', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('509', 'Jose', '2019-07-28 18:12:35', 'GET', 'ProductosController/detalleProducto', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('510', 'Jose', '2019-07-28 18:12:36', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('511', 'Jose', '2019-07-28 18:12:40', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('512', null, '2019-07-28 18:14:40', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('513', null, '2019-07-28 18:14:47', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('514', null, '2019-07-28 18:14:47', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('515', 'BanderoChinoZF', '2019-07-28 18:14:47', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('516', null, '2019-07-28 18:14:52', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('517', null, '2019-07-28 18:15:00', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('518', null, '2019-07-28 18:15:00', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('519', 'BanderoChinoZF', '2019-07-28 18:15:01', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('520', 'BanderoChinoZF', '2019-07-28 18:15:04', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('521', null, '2019-07-28 18:15:09', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('522', null, '2019-07-28 18:15:28', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('523', null, '2019-07-28 18:15:28', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Panchito12 - Panchito@', '127.0.0.1');
INSERT INTO `log` VALUES ('524', null, '2019-07-28 18:15:45', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('525', null, '2019-07-28 18:15:45', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Panchito12 - Panchito@', '127.0.0.1');
INSERT INTO `log` VALUES ('526', null, '2019-07-28 18:15:52', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('527', null, '2019-07-28 18:15:52', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('528', 'BanderoChinoZF', '2019-07-28 18:15:53', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('529', 'BanderoChinoZF', '2019-07-28 18:15:55', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('530', 'BanderoChinoZF', '2019-07-28 18:16:00', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('531', 'BanderoChinoZF', '2019-07-28 18:16:00', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('532', 'BanderoChinoZF', '2019-07-28 18:16:01', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('533', 'BanderoChinoZF', '2019-07-28 18:16:03', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('534', 'BanderoChinoZF', '2019-07-28 18:16:06', 'GET', 'UsuariosController/eliminarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('535', 'BanderoChinoZF', '2019-07-28 18:16:06', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('536', 'BanderoChinoZF', '2019-07-28 18:16:08', 'GET', 'UsuariosController/registrarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('537', 'BanderoChinoZF', '2019-07-28 18:17:24', 'GET', 'UsuariosController/registrarBD_Usuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('538', 'BanderoChinoZF', '2019-07-28 18:17:25', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('539', null, '2019-07-28 18:17:30', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('540', null, '2019-07-28 18:17:41', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('541', null, '2019-07-28 18:17:41', 'POST', 'Acceso/login', 'Intento de acceso con credenciales vegeta777 - ', '127.0.0.1');
INSERT INTO `log` VALUES ('542', null, '2019-07-28 18:17:59', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('543', null, '2019-07-28 18:17:59', 'POST', 'Acceso/login', 'Intento de acceso con credenciales vegeta777 - vegeta1125', '127.0.0.1');
INSERT INTO `log` VALUES ('544', 'vegeta777', '2019-07-28 18:18:00', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('545', 'vegeta777', '2019-07-28 19:22:38', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('546', 'vegeta777', '2019-07-28 19:23:09', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('547', 'vegeta777', '2019-07-28 19:23:32', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('548', 'vegeta777', '2019-07-28 19:24:15', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('549', null, '2019-07-28 21:26:25', 'GET', 'Acceso/principal', 'ACCESO NO AUTORIZADO', '127.0.0.1');
INSERT INTO `log` VALUES ('550', null, '2019-07-28 21:26:25', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('551', null, '2019-07-28 21:26:35', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('552', null, '2019-07-28 21:26:35', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('553', 'BanderoChinoZF', '2019-07-28 21:26:36', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('554', 'BanderoChinoZF', '2019-07-28 21:26:40', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('555', 'BanderoChinoZF', '2019-07-28 21:28:08', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('556', 'BanderoChinoZF', '2019-07-28 21:33:56', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('557', 'BanderoChinoZF', '2019-07-28 21:34:03', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('558', 'BanderoChinoZF', '2019-07-28 21:34:07', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('559', 'BanderoChinoZF', '2019-07-28 21:34:12', 'GET', 'UsuariosController/registrarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('560', 'BanderoChinoZF', '2019-07-28 21:34:16', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('561', 'BanderoChinoZF', '2019-07-28 21:40:48', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('562', 'BanderoChinoZF', '2019-07-28 21:41:04', 'GET', 'Acceso/guardarNuevaContra', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('563', 'BanderoChinoZF', '2019-07-28 21:41:09', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('564', 'BanderoChinoZF', '2019-07-28 21:44:00', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('565', 'BanderoChinoZF', '2019-07-28 21:44:11', 'GET', 'Acceso/guardarNuevaContra', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('566', 'BanderoChinoZF', '2019-07-28 21:44:13', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('567', 'BanderoChinoZF', '2019-07-28 21:44:15', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('568', 'BanderoChinoZF', '2019-07-28 21:54:01', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('569', 'BanderoChinoZF', '2019-07-28 22:46:54', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('570', 'BanderoChinoZF', '2019-07-28 22:47:04', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('571', 'BanderoChinoZF', '2019-07-28 23:24:47', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('572', 'BanderoChinoZF', '2019-07-28 23:25:02', 'GET', 'Acceso/guardarNuevaContra', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('573', 'BanderoChinoZF', '2019-07-28 23:26:07', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('574', 'BanderoChinoZF', '2019-07-28 23:26:09', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('575', null, '2019-07-28 23:26:18', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('576', null, '2019-07-28 23:26:25', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('577', null, '2019-07-28 23:26:25', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis1125', '127.0.0.1');
INSERT INTO `log` VALUES ('578', null, '2019-07-28 23:26:33', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('579', null, '2019-07-28 23:26:33', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis@', '127.0.0.1');
INSERT INTO `log` VALUES ('580', 'BanderoChinoZF', '2019-07-28 23:26:33', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('581', 'BanderoChinoZF', '2019-07-28 23:26:43', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('582', 'BanderoChinoZF', '2019-07-28 23:29:28', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('583', 'BanderoChinoZF', '2019-07-28 23:29:45', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('584', 'BanderoChinoZF', '2019-07-28 23:30:55', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('585', null, '2019-07-28 23:32:32', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('586', null, '2019-07-28 23:32:42', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('587', null, '2019-07-28 23:32:42', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Panchito12 - Panchito@', '127.0.0.1');
INSERT INTO `log` VALUES ('588', null, '2019-07-28 23:32:52', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('589', null, '2019-07-28 23:32:52', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Panchito12 - Panchito1125', '127.0.0.1');
INSERT INTO `log` VALUES ('590', null, '2019-07-28 23:33:09', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('591', null, '2019-07-28 23:33:09', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Panchito12 - Panchito1125', '127.0.0.1');
INSERT INTO `log` VALUES ('592', null, '2019-07-28 23:33:29', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('593', null, '2019-07-28 23:33:29', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('594', 'Jose', '2019-07-28 23:33:30', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('595', 'Jose', '2019-07-28 23:33:32', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('596', null, '2019-07-28 23:33:40', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('597', null, '2019-07-28 23:33:50', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('598', null, '2019-07-28 23:33:50', 'POST', 'Acceso/login', 'Intento de acceso con credenciales vegeta777 - vegeta1125', '127.0.0.1');
INSERT INTO `log` VALUES ('599', 'vegeta777', '2019-07-28 23:33:51', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('600', 'vegeta777', '2019-07-28 23:33:55', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('601', null, '2019-07-28 23:34:06', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('602', null, '2019-07-28 23:34:12', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('603', null, '2019-07-28 23:34:12', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis@', '127.0.0.1');
INSERT INTO `log` VALUES ('604', 'BanderoChinoZF', '2019-07-28 23:34:12', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('605', 'BanderoChinoZF', '2019-07-28 23:35:45', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('606', 'BanderoChinoZF', '2019-07-28 23:40:11', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('607', 'BanderoChinoZF', '2019-07-28 23:41:04', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('608', 'BanderoChinoZF', '2019-07-28 23:42:19', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('609', 'BanderoChinoZF', '2019-07-28 23:42:41', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('610', 'BanderoChinoZF', '2019-07-28 23:43:14', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('611', 'BanderoChinoZF', '2019-07-28 23:43:35', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('612', null, '2019-07-29 02:08:40', 'GET', 'Acceso/cambiarEmail', 'ACCESO NO AUTORIZADO :: REDIRECCION A LOGIN', '127.0.0.1');
INSERT INTO `log` VALUES ('613', null, '2019-07-29 02:08:40', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('614', null, '2019-07-29 02:08:59', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('615', null, '2019-07-29 02:08:59', 'POST', 'Acceso/login', 'Intento de acceso con credenciales vegeta777 - vegeta1125', '127.0.0.1');
INSERT INTO `log` VALUES ('616', 'vegeta777', '2019-07-29 02:08:59', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('617', 'vegeta777', '2019-07-29 02:09:04', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('618', 'vegeta777', '2019-07-29 02:09:17', 'GET', 'Acceso/guardarNuevaContra', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('619', 'vegeta777', '2019-07-29 02:09:17', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('620', null, '2019-07-29 02:09:24', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('621', null, '2019-07-29 02:09:30', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('622', null, '2019-07-29 02:09:30', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('623', 'Jose', '2019-07-29 02:09:30', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('624', 'Jose', '2019-07-29 02:09:32', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('625', 'Jose', '2019-07-29 02:09:34', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('626', 'Jose', '2019-07-29 02:09:35', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('627', 'Jose', '2019-07-29 02:09:35', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('628', 'Jose', '2019-07-29 02:11:20', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('629', null, '2019-07-29 02:11:22', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('630', null, '2019-07-29 02:11:31', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('631', null, '2019-07-29 02:11:31', 'POST', 'Acceso/login', 'Intento de acceso con credenciales vegeta777 - vegeta1125', '127.0.0.1');
INSERT INTO `log` VALUES ('632', 'vegeta777', '2019-07-29 02:11:31', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('633', 'vegeta777', '2019-07-29 02:11:35', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('634', 'vegeta777', '2019-07-29 02:11:46', 'GET', 'Acceso/guardarNuevaContra', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('635', 'vegeta777', '2019-07-29 02:11:46', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('636', null, '2019-07-29 02:11:49', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('637', null, '2019-07-29 02:11:55', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('638', null, '2019-07-29 02:11:55', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('639', 'Jose', '2019-07-29 02:11:55', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('640', 'Jose', '2019-07-29 02:11:58', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('641', 'Jose', '2019-07-29 02:12:00', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('642', 'Jose', '2019-07-29 02:12:00', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('643', 'Jose', '2019-07-29 02:12:01', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('644', null, '2019-07-29 02:12:06', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('645', null, '2019-07-29 02:12:31', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('646', null, '2019-07-29 02:12:31', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis@', '127.0.0.1');
INSERT INTO `log` VALUES ('647', 'BanderoChinoZF', '2019-07-29 02:12:32', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('648', 'BanderoChinoZF', '2019-07-29 02:12:39', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('649', 'BanderoChinoZF', '2019-07-29 02:12:44', 'GET', 'Acceso/cambiarContrasenia', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('650', null, '2019-07-29 02:14:04', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('651', null, '2019-07-29 02:14:11', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('652', null, '2019-07-29 02:14:11', 'POST', 'Acceso/login', 'Intento de acceso con credenciales vegeta777 - vegeta1125', '127.0.0.1');
INSERT INTO `log` VALUES ('653', 'vegeta777', '2019-07-29 02:14:11', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('654', 'vegeta777', '2019-07-29 02:14:15', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('655', 'vegeta777', '2019-07-29 02:42:29', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('656', 'vegeta777', '2019-07-29 02:42:55', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('657', 'vegeta777', '2019-07-29 02:43:01', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('658', 'vegeta777', '2019-07-29 02:44:42', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('659', 'vegeta777', '2019-07-29 02:47:11', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('660', 'vegeta777', '2019-07-29 02:49:39', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('661', 'vegeta777', '2019-07-29 02:51:15', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('662', 'vegeta777', '2019-07-29 02:51:31', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('663', 'vegeta777', '2019-07-29 02:51:32', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('664', 'vegeta777', '2019-07-29 02:53:08', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('665', 'vegeta777', '2019-07-29 03:00:50', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('666', 'vegeta777', '2019-07-29 03:02:20', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('667', 'vegeta777', '2019-07-29 03:02:23', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('668', 'vegeta777', '2019-07-29 03:02:23', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('669', 'vegeta777', '2019-07-29 03:02:24', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('670', 'vegeta777', '2019-07-29 03:02:36', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('671', 'vegeta777', '2019-07-29 03:02:55', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('672', 'vegeta777', '2019-07-29 03:03:29', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('673', 'vegeta777', '2019-07-29 03:03:49', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('674', 'vegeta777', '2019-07-29 03:03:53', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('675', 'vegeta777', '2019-07-29 03:03:56', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('676', 'vegeta777', '2019-07-29 03:04:25', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('677', 'vegeta777', '2019-07-29 03:04:25', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('678', 'vegeta777', '2019-07-29 03:26:12', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('679', 'vegeta777', '2019-07-29 03:26:12', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('680', 'vegeta777', '2019-07-29 03:26:49', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('681', 'vegeta777', '2019-07-29 03:26:49', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('682', 'vegeta777', '2019-07-29 03:27:55', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('683', 'vegeta777', '2019-07-29 03:27:55', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('684', 'vegeta777', '2019-07-29 03:27:58', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('685', 'vegeta777', '2019-07-29 03:27:58', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('686', 'vegeta777', '2019-07-29 03:28:06', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('687', 'vegeta777', '2019-07-29 03:28:06', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('688', 'vegeta777', '2019-07-29 03:28:47', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('689', 'vegeta777', '2019-07-29 03:28:48', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('690', 'vegeta777', '2019-07-29 03:31:55', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('691', 'vegeta777', '2019-07-29 03:31:56', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('692', 'vegeta777', '2019-07-29 03:34:51', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('693', 'vegeta777', '2019-07-29 03:34:52', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('694', 'vegeta777', '2019-07-29 03:36:07', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('695', 'vegeta777', '2019-07-29 03:36:07', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('696', 'vegeta777', '2019-07-29 03:38:23', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('697', 'vegeta777', '2019-07-29 03:38:24', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('698', 'vegeta777', '2019-07-29 03:40:12', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('699', 'vegeta777', '2019-07-29 03:40:12', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('700', 'vegeta777', '2019-07-29 03:48:09', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('701', 'vegeta777', '2019-07-29 03:49:21', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('702', 'vegeta777', '2019-07-29 03:50:03', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('703', 'vegeta777', '2019-07-29 03:50:15', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('704', 'vegeta777', '2019-07-29 03:50:22', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('705', 'vegeta777', '2019-07-29 03:50:23', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('706', 'vegeta777', '2019-07-29 03:50:23', 'GET', 'Acceso/login', 'Redireccion a principal', '127.0.0.1');
INSERT INTO `log` VALUES ('707', 'vegeta777', '2019-07-29 03:50:23', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('708', 'vegeta777', '2019-07-29 03:50:26', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('709', 'vegeta777', '2019-07-29 03:50:30', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('710', 'vegeta777', '2019-07-29 03:50:32', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('711', 'vegeta777', '2019-07-29 03:51:40', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('712', 'vegeta777', '2019-07-29 03:51:47', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('713', 'vegeta777', '2019-07-29 03:52:36', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('714', 'vegeta777', '2019-07-29 03:53:00', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('715', 'vegeta777', '2019-07-29 03:57:08', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('716', 'vegeta777', '2019-07-29 03:57:13', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('717', 'vegeta777', '2019-07-29 04:01:17', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('718', 'vegeta777', '2019-07-29 04:01:53', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('719', 'vegeta777', '2019-07-29 04:02:15', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('720', 'vegeta777', '2019-07-29 04:02:39', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('721', 'vegeta777', '2019-07-29 04:02:52', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('722', 'vegeta777', '2019-07-29 04:06:12', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('723', 'vegeta777', '2019-07-29 04:06:30', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('724', 'vegeta777', '2019-07-29 04:06:52', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('725', 'vegeta777', '2019-07-29 04:07:58', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('726', null, '2019-07-29 04:08:06', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('727', null, '2019-07-29 04:08:13', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('728', null, '2019-07-29 04:08:13', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('729', 'Jose', '2019-07-29 04:08:13', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('730', 'Jose', '2019-07-29 04:08:21', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('731', 'Jose', '2019-07-29 04:09:03', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('732', 'Jose', '2019-07-29 04:09:23', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('733', null, '2019-07-29 04:09:33', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('734', null, '2019-07-29 04:09:51', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('735', null, '2019-07-29 04:09:51', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis@', '127.0.0.1');
INSERT INTO `log` VALUES ('736', 'BanderoChinoZF', '2019-07-29 04:09:51', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('737', 'BanderoChinoZF', '2019-07-29 04:09:54', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('738', 'BanderoChinoZF', '2019-07-29 04:10:07', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('739', 'BanderoChinoZF', '2019-07-29 04:11:13', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('740', 'BanderoChinoZF', '2019-07-29 04:11:38', 'GET', 'UsuariosController/registrarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('741', 'BanderoChinoZF', '2019-07-29 04:20:03', 'GET', 'UsuariosController/registrarBD_Usuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('742', 'BanderoChinoZF', '2019-07-29 04:20:04', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('743', null, '2019-07-29 04:20:22', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('744', null, '2019-07-29 04:20:36', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('745', null, '2019-07-29 04:20:36', 'POST', 'Acceso/login', 'Intento de acceso con credenciales SoyPatricio - Patricio@', '127.0.0.1');
INSERT INTO `log` VALUES ('746', null, '2019-07-29 04:20:51', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('747', null, '2019-07-29 04:20:51', 'POST', 'Acceso/login', 'Intento de acceso con credenciales SoyPatricio - Patricio@', '127.0.0.1');
INSERT INTO `log` VALUES ('748', null, '2019-07-29 04:21:10', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('749', null, '2019-07-29 04:21:10', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('750', 'Jose', '2019-07-29 04:21:10', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('751', 'Jose', '2019-07-29 04:21:13', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('752', 'Jose', '2019-07-29 04:21:15', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('753', 'Jose', '2019-07-29 04:21:16', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('754', 'Jose', '2019-07-29 04:21:18', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('755', 'Jose', '2019-07-29 04:21:25', 'GET', 'UsuariosController/eliminarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('756', 'Jose', '2019-07-29 04:21:25', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('757', 'Jose', '2019-07-29 04:21:27', 'GET', 'UsuariosController/registrarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('758', 'Jose', '2019-07-29 04:22:27', 'GET', 'UsuariosController/registrarBD_Usuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('759', 'Jose', '2019-07-29 04:22:27', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('760', 'Jose', '2019-07-29 04:22:40', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('761', null, '2019-07-29 04:22:49', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('762', null, '2019-07-29 04:23:02', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('763', null, '2019-07-29 04:23:02', 'POST', 'Acceso/login', 'Intento de acceso con credenciales SoyPatricio - Patricio1125', '127.0.0.1');
INSERT INTO `log` VALUES ('764', 'SoyPatricio', '2019-07-29 04:23:02', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('765', 'SoyPatricio', '2019-07-29 04:23:09', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('766', 'SoyPatricio', '2019-07-29 04:25:27', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('767', 'SoyPatricio', '2019-07-29 04:27:16', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('768', 'SoyPatricio', '2019-07-29 04:31:14', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('769', 'SoyPatricio', '2019-07-29 04:37:23', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('770', 'SoyPatricio', '2019-07-29 04:38:05', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('771', null, '2019-07-29 04:38:14', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('772', null, '2019-07-29 04:38:22', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('773', null, '2019-07-29 04:38:22', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('774', 'Jose', '2019-07-29 04:38:22', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('775', 'Jose', '2019-07-29 04:38:25', 'GET', 'UsuariosController/registrarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('776', 'Jose', '2019-07-29 04:39:32', 'GET', 'UsuariosController/registrarBD_Usuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('777', 'Jose', '2019-07-29 04:39:33', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('778', null, '2019-07-29 04:39:40', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('779', null, '2019-07-29 04:39:49', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('780', null, '2019-07-29 04:39:49', 'POST', 'Acceso/login', 'Intento de acceso con credenciales secktor - secktor@', '127.0.0.1');
INSERT INTO `log` VALUES ('781', 'secktor', '2019-07-29 04:39:49', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('782', 'secktor', '2019-07-29 04:39:54', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('783', 'secktor', '2019-07-29 04:40:33', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('784', null, '2019-07-29 04:45:56', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('785', null, '2019-07-29 04:46:04', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('786', null, '2019-07-29 04:46:04', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('787', 'Jose', '2019-07-29 04:46:04', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('788', 'Jose', '2019-07-29 04:46:06', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('789', 'Jose', '2019-07-29 04:46:10', 'GET', 'UsuariosController/eliminarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('790', 'Jose', '2019-07-29 04:46:10', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('791', 'Jose', '2019-07-29 04:46:21', 'GET', 'UsuariosController/registrarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('792', 'Jose', '2019-07-29 04:47:41', 'GET', 'UsuariosController/registrarBD_Usuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('793', 'Jose', '2019-07-29 04:47:41', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('794', null, '2019-07-29 04:47:52', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('795', null, '2019-07-29 04:48:00', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('796', null, '2019-07-29 04:48:00', 'POST', 'Acceso/login', 'Intento de acceso con credenciales secktor - secktor@', '127.0.0.1');
INSERT INTO `log` VALUES ('797', 'secktor', '2019-07-29 04:48:00', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('798', 'secktor', '2019-07-29 04:48:07', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('799', 'secktor', '2019-07-29 04:48:32', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('800', 'secktor', '2019-07-29 04:52:18', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('801', 'secktor', '2019-07-29 04:52:29', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('802', 'secktor', '2019-07-29 04:52:44', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('803', 'secktor', '2019-07-29 04:53:35', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('804', 'secktor', '2019-07-29 04:53:56', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('805', 'secktor', '2019-07-29 04:58:04', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('806', 'secktor', '2019-07-29 04:58:39', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('807', 'secktor', '2019-07-29 04:58:56', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('808', 'secktor', '2019-07-29 05:00:31', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('809', 'secktor', '2019-07-29 05:02:29', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('810', 'secktor', '2019-07-29 05:02:59', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('811', 'secktor', '2019-07-29 05:05:03', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('812', 'secktor', '2019-07-29 05:05:16', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('813', 'secktor', '2019-07-29 05:05:30', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('814', 'secktor', '2019-07-29 05:06:15', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('815', 'secktor', '2019-07-29 05:06:19', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('816', 'secktor', '2019-07-29 05:06:23', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('817', 'secktor', '2019-07-29 05:06:29', 'GET', 'Acceso/cambiarEmail', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('818', 'secktor', '2019-07-29 05:06:33', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('819', 'secktor', '2019-07-29 05:10:49', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('820', 'secktor', '2019-07-29 05:12:43', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('821', 'secktor', '2019-07-29 05:13:10', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('822', 'secktor', '2019-07-29 05:17:23', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('823', 'secktor', '2019-07-29 05:17:27', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('824', 'secktor', '2019-07-29 05:18:07', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('825', null, '2019-07-29 05:18:21', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('826', null, '2019-07-29 05:18:28', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('827', null, '2019-07-29 05:18:28', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('828', 'Jose', '2019-07-29 05:18:28', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('829', 'Jose', '2019-07-29 05:21:20', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('830', 'Jose', '2019-07-29 05:21:30', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('831', 'Jose', '2019-07-29 05:21:36', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('832', 'Jose', '2019-07-29 05:21:36', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('833', null, '2019-07-29 05:22:00', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('834', null, '2019-07-29 05:22:08', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('835', null, '2019-07-29 05:22:09', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis@', '127.0.0.1');
INSERT INTO `log` VALUES ('836', 'BanderoChinoZF', '2019-07-29 05:22:09', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('837', null, '2019-07-29 05:22:19', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('838', null, '2019-07-29 05:22:35', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('839', null, '2019-07-29 05:22:35', 'POST', 'Acceso/login', 'Intento de acceso con credenciales vegeta777 - vegeta1125', '127.0.0.1');
INSERT INTO `log` VALUES ('840', 'vegeta777', '2019-07-29 05:22:35', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('841', 'vegeta777', '2019-07-29 05:22:39', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('842', 'vegeta777', '2019-07-29 05:22:46', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('843', null, '2019-07-30 10:37:24', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('844', null, '2019-07-30 10:37:24', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('845', null, '2019-07-30 10:37:24', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('846', null, '2019-07-30 10:37:25', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('847', null, '2019-07-30 10:37:39', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('848', null, '2019-07-30 10:37:39', 'POST', 'Acceso/login', 'Intento de acceso con credenciales BanderoChinoZF - Luis@', '127.0.0.1');
INSERT INTO `log` VALUES ('849', 'BanderoChinoZF', '2019-07-30 10:37:39', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('850', 'BanderoChinoZF', '2019-07-30 10:37:50', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('851', 'BanderoChinoZF', '2019-07-30 10:38:10', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('852', 'BanderoChinoZF', '2019-07-30 10:38:25', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('853', null, '2019-07-30 10:38:32', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('854', null, '2019-07-30 10:38:47', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('855', null, '2019-07-30 10:38:47', 'POST', 'Acceso/login', 'Intento de acceso con credenciales vegeta777 - vegeta1125', '127.0.0.1');
INSERT INTO `log` VALUES ('856', 'vegeta777', '2019-07-30 10:38:48', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('857', 'vegeta777', '2019-07-30 10:38:53', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('858', 'vegeta777', '2019-07-30 10:38:58', 'GET', 'ProductosController/eliminarProducto', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('859', 'vegeta777', '2019-07-30 10:38:58', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('860', 'vegeta777', '2019-07-30 10:39:01', 'GET', 'ProductosController/listaProductos', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('861', 'vegeta777', '2019-07-30 10:39:53', 'GET', 'ProductosController/nuevoProducto', 'AUTORIZACION VALIDA', '127.0.0.1');
INSERT INTO `log` VALUES ('862', null, '2019-07-30 10:39:58', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('863', null, '2019-07-30 10:40:07', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('864', null, '2019-07-30 10:40:07', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('865', 'Jose', '2019-07-30 10:40:07', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('866', 'Jose', '2019-07-30 10:40:11', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('867', 'Jose', '2019-07-30 10:40:13', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('868', 'Jose', '2019-07-30 10:40:14', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('869', 'Jose', '2019-07-30 10:40:16', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('870', null, '2019-07-30 10:40:20', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('871', null, '2019-07-30 11:59:46', 'GET', 'Acceso/', '', '127.0.0.1');
INSERT INTO `log` VALUES ('872', null, '2019-07-30 11:59:47', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('873', null, '2019-07-30 11:59:58', 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION AL LOGIN', '127.0.0.1');
INSERT INTO `log` VALUES ('874', null, '2019-07-30 11:59:58', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('875', null, '2019-07-30 12:00:08', 'GET', 'UsuariosController/detalleUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION AL LOGIN', '127.0.0.1');
INSERT INTO `log` VALUES ('876', null, '2019-07-30 12:00:09', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('877', null, '2019-07-30 12:02:50', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('878', null, '2019-07-30 12:03:02', 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION AL LOGIN', '127.0.0.1');
INSERT INTO `log` VALUES ('879', null, '2019-07-30 12:03:02', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('880', null, '2019-07-30 12:03:54', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('881', null, '2019-07-30 12:03:54', 'POST', 'Acceso/login', 'Intento de acceso con credenciales vegeta777 - vegeta1125', '127.0.0.1');
INSERT INTO `log` VALUES ('882', 'vegeta777', '2019-07-30 12:03:54', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('883', 'vegeta777', '2019-07-30 12:04:04', 'GET', 'UsuariosController/listarUsuario', 'ACCESO NO AUTORIZADO :: REDIRECCION A PRINCIPAL', '127.0.0.1');
INSERT INTO `log` VALUES ('884', 'vegeta777', '2019-07-30 12:04:04', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('885', 'vegeta777', '2019-07-30 12:04:10', 'GET', 'UsuariosController/detalleUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');
INSERT INTO `log` VALUES ('886', null, '2019-07-30 12:04:16', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('887', null, '2019-07-30 12:04:21', 'GET', 'Acceso/login', '', '127.0.0.1');
INSERT INTO `log` VALUES ('888', null, '2019-07-30 12:04:22', 'POST', 'Acceso/login', 'Intento de acceso con credenciales Jose - Jose1125', '127.0.0.1');
INSERT INTO `log` VALUES ('889', 'Jose', '2019-07-30 12:04:22', 'GET', 'Acceso/principal', '', '127.0.0.1');
INSERT INTO `log` VALUES ('890', 'Jose', '2019-07-30 12:04:30', 'GET', 'UsuariosController/listarUsuario', 'AUTORIZACION VALIDADA', '127.0.0.1');

-- ----------------------------
-- Table structure for `login_attempts`
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for `municipio`
-- ----------------------------
DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=571 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of municipio
-- ----------------------------
INSERT INTO `municipio` VALUES ('1', 'Abejones ');
INSERT INTO `municipio` VALUES ('2', 'Acatlán de Pérez Figueroa');
INSERT INTO `municipio` VALUES ('3', 'Asunción Cacalotepec ');
INSERT INTO `municipio` VALUES ('4', 'Asunción Cuyotepeji ');
INSERT INTO `municipio` VALUES ('5', 'Asunción Ixtaltepec');
INSERT INTO `municipio` VALUES ('6', 'Asunción Nochixtlán');
INSERT INTO `municipio` VALUES ('7', 'Asunción Ocotlán ');
INSERT INTO `municipio` VALUES ('8', 'Asunción Tlacolulita ');
INSERT INTO `municipio` VALUES ('9', 'Ayotzintepec');
INSERT INTO `municipio` VALUES ('10', 'El Barrio de la Soledad');
INSERT INTO `municipio` VALUES ('11', 'Calihualá ');
INSERT INTO `municipio` VALUES ('12', 'Candelaria Loxicha ');
INSERT INTO `municipio` VALUES ('13', 'Ciénega de Zimatlán ');
INSERT INTO `municipio` VALUES ('14', 'Ciudad Ixtepec');
INSERT INTO `municipio` VALUES ('15', 'Coatecas Altas ');
INSERT INTO `municipio` VALUES ('16', 'Coicoyán de las Flores ');
INSERT INTO `municipio` VALUES ('17', 'La Compañía ');
INSERT INTO `municipio` VALUES ('18', 'Concepción Buenavista ');
INSERT INTO `municipio` VALUES ('19', 'Concepción Pápalo ');
INSERT INTO `municipio` VALUES ('20', 'Constancia del Rosario ');
INSERT INTO `municipio` VALUES ('21', 'Cosolapa');
INSERT INTO `municipio` VALUES ('22', 'Cosoltepec ');
INSERT INTO `municipio` VALUES ('23', 'Cuilápam de Guerrero');
INSERT INTO `municipio` VALUES ('24', 'Cuyamecalco Villa de Zaragoza ');
INSERT INTO `municipio` VALUES ('25', 'Chahuites');
INSERT INTO `municipio` VALUES ('26', 'Chalcatongo de Hidalgo');
INSERT INTO `municipio` VALUES ('27', 'Chiquihuitlán de Benito Juárez ');
INSERT INTO `municipio` VALUES ('28', 'Heroica Ciudad de Ejutla de Crespo');
INSERT INTO `municipio` VALUES ('29', 'Eloxochitlán de Flores Magón ');
INSERT INTO `municipio` VALUES ('30', 'El Espinal');
INSERT INTO `municipio` VALUES ('31', 'Tamazulápam del Espíritu Santo');
INSERT INTO `municipio` VALUES ('32', 'Fresnillo de Trujano');
INSERT INTO `municipio` VALUES ('33', 'Guadalupe Etla ');
INSERT INTO `municipio` VALUES ('34', 'Guadalupe de Ramírez ');
INSERT INTO `municipio` VALUES ('35', 'Guelatao de Juárez');
INSERT INTO `municipio` VALUES ('36', 'Guevea de Humboldt');
INSERT INTO `municipio` VALUES ('37', 'Mesones Hidalgo ');
INSERT INTO `municipio` VALUES ('38', 'Villa Hidalgo ');
INSERT INTO `municipio` VALUES ('39', 'Heroica Ciudad de Huajuapan de León');
INSERT INTO `municipio` VALUES ('40', 'Huautepec ');
INSERT INTO `municipio` VALUES ('41', 'Huautla de Jiménez');
INSERT INTO `municipio` VALUES ('42', 'Ixtlán de Juárez');
INSERT INTO `municipio` VALUES ('43', 'Heroica Ciudad de Juchitán de Zaragoza');
INSERT INTO `municipio` VALUES ('44', 'Loma Bonita');
INSERT INTO `municipio` VALUES ('45', 'Magdalena Apasco');
INSERT INTO `municipio` VALUES ('46', 'Magdalena Jaltepec ');
INSERT INTO `municipio` VALUES ('47', 'Santa Magdalena Jicotlán ');
INSERT INTO `municipio` VALUES ('48', 'Magdalena Mixtepec ');
INSERT INTO `municipio` VALUES ('49', 'Magdalena Ocotlán ');
INSERT INTO `municipio` VALUES ('50', 'Magdalena Peñasco ');
INSERT INTO `municipio` VALUES ('51', 'Magdalena Teitipac ');
INSERT INTO `municipio` VALUES ('52', 'Magdalena Tequisistlán');
INSERT INTO `municipio` VALUES ('53', 'Magdalena Tlacotepec ');
INSERT INTO `municipio` VALUES ('54', 'Magdalena Zahuatlán ');
INSERT INTO `municipio` VALUES ('55', 'Mariscala de Juárez ');
INSERT INTO `municipio` VALUES ('56', 'Mártires de Tacubaya ');
INSERT INTO `municipio` VALUES ('57', 'Matías Romero Avendaño ');
INSERT INTO `municipio` VALUES ('58', 'Mazatlán Villa de Flores ');
INSERT INTO `municipio` VALUES ('59', 'Miahuatlán de Porfirio Díaz');
INSERT INTO `municipio` VALUES ('60', 'Mixistlán de la Reforma ');
INSERT INTO `municipio` VALUES ('61', 'Monjas ');
INSERT INTO `municipio` VALUES ('62', 'Natividad ');
INSERT INTO `municipio` VALUES ('63', 'Nazareno Etla ');
INSERT INTO `municipio` VALUES ('64', 'Nejapa de Madero');
INSERT INTO `municipio` VALUES ('65', 'Ixpantepec Nieves ');
INSERT INTO `municipio` VALUES ('66', 'Santiago Niltepec');
INSERT INTO `municipio` VALUES ('67', 'Oaxaca de Juárez');
INSERT INTO `municipio` VALUES ('68', 'Ocotlán de Morelos');
INSERT INTO `municipio` VALUES ('69', 'La Pe ');
INSERT INTO `municipio` VALUES ('70', 'Pinotepa de Don Luis');
INSERT INTO `municipio` VALUES ('71', 'Pluma Hidalgo ');
INSERT INTO `municipio` VALUES ('72', 'San José del Progreso');
INSERT INTO `municipio` VALUES ('73', 'Putla Villa de Guerrero');
INSERT INTO `municipio` VALUES ('74', 'Santa Catarina Quioquitani ');
INSERT INTO `municipio` VALUES ('75', 'Reforma de Pineda ');
INSERT INTO `municipio` VALUES ('76', 'La Reforma');
INSERT INTO `municipio` VALUES ('77', 'Reyes Etla ');
INSERT INTO `municipio` VALUES ('78', 'Rojas de Cuauhtémoc ');
INSERT INTO `municipio` VALUES ('79', 'Salina Cruz');
INSERT INTO `municipio` VALUES ('80', 'San Agustín Amatengo ');
INSERT INTO `municipio` VALUES ('81', 'San Agustín Atenango ');
INSERT INTO `municipio` VALUES ('82', 'San Agustín Chayuco ');
INSERT INTO `municipio` VALUES ('83', 'San Agustín de las Juntas');
INSERT INTO `municipio` VALUES ('84', 'San Agustín Etla ');
INSERT INTO `municipio` VALUES ('85', 'San Agustín Loxicha ');
INSERT INTO `municipio` VALUES ('86', 'San Agustín Tlacotepec ');
INSERT INTO `municipio` VALUES ('87', 'San Agustín Yatareni ');
INSERT INTO `municipio` VALUES ('88', 'San Andrés Cabecera Nueva ');
INSERT INTO `municipio` VALUES ('89', 'San Andrés Dinicuiti ');
INSERT INTO `municipio` VALUES ('90', 'San Andrés Huaxpaltepec');
INSERT INTO `municipio` VALUES ('91', 'San Andrés Huayápam ');
INSERT INTO `municipio` VALUES ('92', 'San Andrés Ixtlahuaca ');
INSERT INTO `municipio` VALUES ('93', 'San Andrés Lagunas ');
INSERT INTO `municipio` VALUES ('94', 'San Andrés Nuxiño ');
INSERT INTO `municipio` VALUES ('95', 'San Andrés Paxtlán ');
INSERT INTO `municipio` VALUES ('96', 'San Andrés Sinaxtla');
INSERT INTO `municipio` VALUES ('97', 'San Andrés Solaga ');
INSERT INTO `municipio` VALUES ('98', 'San Andrés Teotilálpam ');
INSERT INTO `municipio` VALUES ('99', 'San Andrés Tepetlapa ');
INSERT INTO `municipio` VALUES ('100', 'San Andrés Yaá ');
INSERT INTO `municipio` VALUES ('101', 'San Andrés Zabache ');
INSERT INTO `municipio` VALUES ('102', 'San Andrés Zautla ');
INSERT INTO `municipio` VALUES ('103', 'San Antonino Castillo Velasco');
INSERT INTO `municipio` VALUES ('104', 'San Antonino el Alto ');
INSERT INTO `municipio` VALUES ('105', 'San Antonino Monte Verde');
INSERT INTO `municipio` VALUES ('106', 'San Antonio Acutla ');
INSERT INTO `municipio` VALUES ('107', 'San Antonio de la Cal');
INSERT INTO `municipio` VALUES ('108', 'San Antonio Huitepec ');
INSERT INTO `municipio` VALUES ('109', 'San Antonio Nanahuatípam ');
INSERT INTO `municipio` VALUES ('110', 'San Antonio Sinicahua ');
INSERT INTO `municipio` VALUES ('111', 'San Antonio Tepetlapa');
INSERT INTO `municipio` VALUES ('112', 'San Baltazar Chichicápam ');
INSERT INTO `municipio` VALUES ('113', 'San Baltazar Loxicha ');
INSERT INTO `municipio` VALUES ('114', 'San Baltazar Yatzachi el Bajo ');
INSERT INTO `municipio` VALUES ('115', 'San Bartolo Coyotepec');
INSERT INTO `municipio` VALUES ('116', 'San Bartolomé Ayautla ');
INSERT INTO `municipio` VALUES ('117', 'San Bartolomé Loxicha ');
INSERT INTO `municipio` VALUES ('118', 'San Bartolomé Quialana ');
INSERT INTO `municipio` VALUES ('119', 'San Bartolomé Yucuañe ');
INSERT INTO `municipio` VALUES ('120', 'San Bartolomé Zoogocho ');
INSERT INTO `municipio` VALUES ('121', 'San Bartolo Soyaltepec ');
INSERT INTO `municipio` VALUES ('122', 'San Bartolo Yautepec ');
INSERT INTO `municipio` VALUES ('123', 'San Bernardo Mixtepec ');
INSERT INTO `municipio` VALUES ('124', 'San Blas Atempa');
INSERT INTO `municipio` VALUES ('125', 'San Carlos Yautepec');
INSERT INTO `municipio` VALUES ('126', 'San Cristóbal Amatlán ');
INSERT INTO `municipio` VALUES ('127', 'San Cristóbal Amoltepec ');
INSERT INTO `municipio` VALUES ('128', 'San Cristóbal Lachirioag ');
INSERT INTO `municipio` VALUES ('129', 'San Cristóbal Suchixtlahuaca ');
INSERT INTO `municipio` VALUES ('130', 'San Dionisio del Mar');
INSERT INTO `municipio` VALUES ('131', 'San Dionisio Ocotepec');
INSERT INTO `municipio` VALUES ('132', 'San Dionisio Ocotlán ');
INSERT INTO `municipio` VALUES ('133', 'San Esteban Atatlahuca ');
INSERT INTO `municipio` VALUES ('134', 'San Felipe Jalapa de Díaz ');
INSERT INTO `municipio` VALUES ('135', 'San Felipe Tejalápam');
INSERT INTO `municipio` VALUES ('136', 'San Felipe Usila ');
INSERT INTO `municipio` VALUES ('137', 'San Francisco Cahuacuá ');
INSERT INTO `municipio` VALUES ('138', 'San Francisco Cajonos ');
INSERT INTO `municipio` VALUES ('139', 'San Francisco Chapulapa ');
INSERT INTO `municipio` VALUES ('140', 'San Francisco Chindúa ');
INSERT INTO `municipio` VALUES ('141', 'San Francisco del Mar');
INSERT INTO `municipio` VALUES ('142', 'San Francisco Huehuetlán');
INSERT INTO `municipio` VALUES ('143', 'San Francisco Ixhuatán');
INSERT INTO `municipio` VALUES ('144', 'San Francisco Jaltepetongo ');
INSERT INTO `municipio` VALUES ('145', 'San Francisco Lachigoló ');
INSERT INTO `municipio` VALUES ('146', 'San Francisco Logueche ');
INSERT INTO `municipio` VALUES ('147', 'San Francisco Nuxaño ');
INSERT INTO `municipio` VALUES ('148', 'San Francisco Ozolotepec ');
INSERT INTO `municipio` VALUES ('149', 'San Francisco Sola ');
INSERT INTO `municipio` VALUES ('150', 'San Francisco Telixtlahuaca');
INSERT INTO `municipio` VALUES ('151', 'San Francisco Teopan ');
INSERT INTO `municipio` VALUES ('152', 'San Francisco Tlapancingo ');
INSERT INTO `municipio` VALUES ('153', 'San Gabriel Mixtepec ');
INSERT INTO `municipio` VALUES ('154', 'San Ildefonso Amatlán ');
INSERT INTO `municipio` VALUES ('155', 'San Ildefonso Sola ');
INSERT INTO `municipio` VALUES ('156', 'San Ildefonso Villa Alta ');
INSERT INTO `municipio` VALUES ('157', 'San Jacinto Amilpas');
INSERT INTO `municipio` VALUES ('158', 'San Jacinto Tlacotepec ');
INSERT INTO `municipio` VALUES ('159', 'San Jerónimo Coatlán ');
INSERT INTO `municipio` VALUES ('160', 'San Jerónimo Silacayoapilla ');
INSERT INTO `municipio` VALUES ('161', 'San Jerónimo Sosola ');
INSERT INTO `municipio` VALUES ('162', 'San Jerónimo Taviche ');
INSERT INTO `municipio` VALUES ('163', 'San Jerónimo Tecóatl ');
INSERT INTO `municipio` VALUES ('164', 'San Jorge Nuchita ');
INSERT INTO `municipio` VALUES ('165', 'San José Ayuquila ');
INSERT INTO `municipio` VALUES ('166', 'San José Chiltepec');
INSERT INTO `municipio` VALUES ('167', 'San José del Peñasco ');
INSERT INTO `municipio` VALUES ('168', 'San José Estancia Grande ');
INSERT INTO `municipio` VALUES ('169', 'San José Independencia ');
INSERT INTO `municipio` VALUES ('170', 'San José Lachiguiri ');
INSERT INTO `municipio` VALUES ('171', 'San José Tenango ');
INSERT INTO `municipio` VALUES ('172', 'San Juan Achiutla ');
INSERT INTO `municipio` VALUES ('173', 'San Juan Atepec ');
INSERT INTO `municipio` VALUES ('174', 'Ánimas Trujano ');
INSERT INTO `municipio` VALUES ('175', 'San Juan Bautista Atatlahuca ');
INSERT INTO `municipio` VALUES ('176', 'San Juan Bautista Coixtlahuaca ');
INSERT INTO `municipio` VALUES ('177', 'San Juan Bautista Cuicatlán');
INSERT INTO `municipio` VALUES ('178', 'San Juan Bautista Guelache');
INSERT INTO `municipio` VALUES ('179', 'San Juan Bautista Jayacatlán ');
INSERT INTO `municipio` VALUES ('180', 'San Juan Bautista Lo de Soto ');
INSERT INTO `municipio` VALUES ('181', 'San Juan Bautista Suchitepec ');
INSERT INTO `municipio` VALUES ('182', 'San Juan Bautista Tlacoatzintepec ');
INSERT INTO `municipio` VALUES ('183', 'San Juan Bautista Tlachichilco ');
INSERT INTO `municipio` VALUES ('184', 'San Juan Bautista Tuxtepec');
INSERT INTO `municipio` VALUES ('185', 'San Juan Cacahuatepec');
INSERT INTO `municipio` VALUES ('186', 'San Juan Cieneguilla ');
INSERT INTO `municipio` VALUES ('187', 'San Juan Coatzóspam ');
INSERT INTO `municipio` VALUES ('188', 'San Juan Colorado');
INSERT INTO `municipio` VALUES ('189', 'San Juan Comaltepec');
INSERT INTO `municipio` VALUES ('190', 'San Juan Cotzocón');
INSERT INTO `municipio` VALUES ('191', 'San Juan Chicomezúchil ');
INSERT INTO `municipio` VALUES ('192', 'San Juan Chilateca ');
INSERT INTO `municipio` VALUES ('193', 'San Juan del Estado ');
INSERT INTO `municipio` VALUES ('194', 'San Juan del Río');
INSERT INTO `municipio` VALUES ('195', 'San Juan Diuxi ');
INSERT INTO `municipio` VALUES ('196', 'San Juan Evangelista Analco ');
INSERT INTO `municipio` VALUES ('197', 'San Juan Guelavía ');
INSERT INTO `municipio` VALUES ('198', 'San Juan Guichicovi');
INSERT INTO `municipio` VALUES ('199', 'San Juan Ihualtepec ');
INSERT INTO `municipio` VALUES ('200', 'San Juan Juquila Mixes ');
INSERT INTO `municipio` VALUES ('201', 'San Juan Juquila Vijanos ');
INSERT INTO `municipio` VALUES ('202', 'San Juan Lachao ');
INSERT INTO `municipio` VALUES ('203', 'San Juan Lachigalla ');
INSERT INTO `municipio` VALUES ('204', 'San Juan Lajarcia ');
INSERT INTO `municipio` VALUES ('205', 'San Juan Lalana ');
INSERT INTO `municipio` VALUES ('206', 'San Juan de los Cués ');
INSERT INTO `municipio` VALUES ('207', 'San Juan Mazatlán');
INSERT INTO `municipio` VALUES ('208', 'San Juan Mixtepec');
INSERT INTO `municipio` VALUES ('209', 'San Juan Mixtepec ');
INSERT INTO `municipio` VALUES ('210', 'San Juan Ñumí');
INSERT INTO `municipio` VALUES ('211', 'San Juan Ozolotepec ');
INSERT INTO `municipio` VALUES ('212', 'San Juan Petlapa ');
INSERT INTO `municipio` VALUES ('213', 'San Juan Quiahije');
INSERT INTO `municipio` VALUES ('214', 'San Juan Quiotepec ');
INSERT INTO `municipio` VALUES ('215', 'San Juan Sayultepec ');
INSERT INTO `municipio` VALUES ('216', 'San Juan Tabaá ');
INSERT INTO `municipio` VALUES ('217', 'San Juan Tamazola ');
INSERT INTO `municipio` VALUES ('218', 'San Juan Teita ');
INSERT INTO `municipio` VALUES ('219', 'San Juan Teitipac ');
INSERT INTO `municipio` VALUES ('220', 'San Juan Tepeuxila ');
INSERT INTO `municipio` VALUES ('221', 'San Juan Teposcolula ');
INSERT INTO `municipio` VALUES ('222', 'San Juan Yaeé ');
INSERT INTO `municipio` VALUES ('223', 'San Juan Yatzona ');
INSERT INTO `municipio` VALUES ('224', 'San Juan Yucuita ');
INSERT INTO `municipio` VALUES ('225', 'San Lorenzo');
INSERT INTO `municipio` VALUES ('226', 'San Lorenzo Albarradas ');
INSERT INTO `municipio` VALUES ('227', 'San Lorenzo Cacaotepec');
INSERT INTO `municipio` VALUES ('228', 'San Lorenzo Cuaunecuiltitla ');
INSERT INTO `municipio` VALUES ('229', 'San Lorenzo Texmelúcan ');
INSERT INTO `municipio` VALUES ('230', 'San Lorenzo Victoria ');
INSERT INTO `municipio` VALUES ('231', 'San Lucas Camotlán ');
INSERT INTO `municipio` VALUES ('232', 'San Lucas Ojitlán ');
INSERT INTO `municipio` VALUES ('233', 'San Lucas Quiaviní ');
INSERT INTO `municipio` VALUES ('234', 'San Lucas Zoquiápam ');
INSERT INTO `municipio` VALUES ('235', 'San Luis Amatlán ');
INSERT INTO `municipio` VALUES ('236', 'San Marcial Ozolotepec ');
INSERT INTO `municipio` VALUES ('237', 'San Marcos Arteaga ');
INSERT INTO `municipio` VALUES ('238', 'San Martín de los Cansecos ');
INSERT INTO `municipio` VALUES ('239', 'San Martín Huamelúlpam ');
INSERT INTO `municipio` VALUES ('240', 'San Martín Itunyoso ');
INSERT INTO `municipio` VALUES ('241', 'San Martín Lachilá ');
INSERT INTO `municipio` VALUES ('242', 'San Martín Peras ');
INSERT INTO `municipio` VALUES ('243', 'San Martín Tilcajete ');
INSERT INTO `municipio` VALUES ('244', 'San Martín Toxpalan ');
INSERT INTO `municipio` VALUES ('245', 'San Martín Zacatepec ');
INSERT INTO `municipio` VALUES ('246', 'San Mateo Cajonos ');
INSERT INTO `municipio` VALUES ('247', 'Capulálpam de Méndez ');
INSERT INTO `municipio` VALUES ('248', 'San Mateo del Mar ');
INSERT INTO `municipio` VALUES ('249', 'San Mateo Yoloxochitlán ');
INSERT INTO `municipio` VALUES ('250', 'San Mateo Etlatongo ');
INSERT INTO `municipio` VALUES ('251', 'San Mateo Nejápam ');
INSERT INTO `municipio` VALUES ('252', 'San Mateo Peñasco ');
INSERT INTO `municipio` VALUES ('253', 'San Mateo Piñas ');
INSERT INTO `municipio` VALUES ('254', 'San Mateo Río Hondo ');
INSERT INTO `municipio` VALUES ('255', 'San Mateo Sindihui ');
INSERT INTO `municipio` VALUES ('256', 'San Mateo Tlapiltepec ');
INSERT INTO `municipio` VALUES ('257', 'San Melchor Betaza ');
INSERT INTO `municipio` VALUES ('258', 'San Miguel Achiutla ');
INSERT INTO `municipio` VALUES ('259', 'San Miguel Ahuehuetitlán');
INSERT INTO `municipio` VALUES ('260', 'San Miguel Aloápam ');
INSERT INTO `municipio` VALUES ('261', 'San Miguel Amatitlán');
INSERT INTO `municipio` VALUES ('262', 'San Miguel Amatlán ');
INSERT INTO `municipio` VALUES ('263', 'San Miguel Coatlán ');
INSERT INTO `municipio` VALUES ('264', 'San Miguel Chicahua ');
INSERT INTO `municipio` VALUES ('265', 'San Miguel Chimalapa');
INSERT INTO `municipio` VALUES ('266', 'San Miguel del Puerto');
INSERT INTO `municipio` VALUES ('267', 'San Miguel del Río ');
INSERT INTO `municipio` VALUES ('268', 'San Miguel Ejutla ');
INSERT INTO `municipio` VALUES ('269', 'San Miguel el Grande ');
INSERT INTO `municipio` VALUES ('270', 'San Miguel Huautla ');
INSERT INTO `municipio` VALUES ('271', 'San Miguel Mixtepec ');
INSERT INTO `municipio` VALUES ('272', 'San Miguel Panixtlahuaca ');
INSERT INTO `municipio` VALUES ('273', 'San Miguel Peras ');
INSERT INTO `municipio` VALUES ('274', 'San Miguel Piedras ');
INSERT INTO `municipio` VALUES ('275', 'San Miguel Quetzaltepec');
INSERT INTO `municipio` VALUES ('276', 'San Miguel Santa Flor ');
INSERT INTO `municipio` VALUES ('277', 'Villa Sola de Vega');
INSERT INTO `municipio` VALUES ('278', 'San Miguel Soyaltepec');
INSERT INTO `municipio` VALUES ('279', 'San Miguel Suchixtepec ');
INSERT INTO `municipio` VALUES ('280', 'Villa Talea de Castro ');
INSERT INTO `municipio` VALUES ('281', 'San Miguel Tecomatlán ');
INSERT INTO `municipio` VALUES ('282', 'San Miguel Tenango ');
INSERT INTO `municipio` VALUES ('283', 'San Miguel Tequixtepec ');
INSERT INTO `municipio` VALUES ('284', 'San Miguel Tilquiápam ');
INSERT INTO `municipio` VALUES ('285', 'San Miguel Tlacamama ');
INSERT INTO `municipio` VALUES ('286', 'San Miguel Tlacotepec ');
INSERT INTO `municipio` VALUES ('287', 'San Miguel Tulancingo ');
INSERT INTO `municipio` VALUES ('288', 'San Miguel Yotao ');
INSERT INTO `municipio` VALUES ('289', 'San Nicolás ');
INSERT INTO `municipio` VALUES ('290', 'San Nicolás Hidalgo ');
INSERT INTO `municipio` VALUES ('291', 'San Pablo Coatlán ');
INSERT INTO `municipio` VALUES ('292', 'San Pablo Cuatro Venados ');
INSERT INTO `municipio` VALUES ('293', 'San Pablo Etla');
INSERT INTO `municipio` VALUES ('294', 'San Pablo Huitzo');
INSERT INTO `municipio` VALUES ('295', 'San Pablo Huixtepec');
INSERT INTO `municipio` VALUES ('296', 'San Pablo Macuiltianguis ');
INSERT INTO `municipio` VALUES ('297', 'San Pablo Tijaltepec ');
INSERT INTO `municipio` VALUES ('298', 'San Pablo Villa de Mitla');
INSERT INTO `municipio` VALUES ('299', 'San Pablo Yaganiza ');
INSERT INTO `municipio` VALUES ('300', 'San Pedro Amuzgos');
INSERT INTO `municipio` VALUES ('301', 'San Pedro Apóstol ');
INSERT INTO `municipio` VALUES ('302', 'San Pedro Atoyac ');
INSERT INTO `municipio` VALUES ('303', 'San Pedro Cajonos ');
INSERT INTO `municipio` VALUES ('304', 'San Pedro Coxcaltepec Cántaros ');
INSERT INTO `municipio` VALUES ('305', 'San Pedro Comitancillo ');
INSERT INTO `municipio` VALUES ('306', 'San Pedro el Alto ');
INSERT INTO `municipio` VALUES ('307', 'San Pedro Huamelula');
INSERT INTO `municipio` VALUES ('308', 'San Pedro Huilotepec ');
INSERT INTO `municipio` VALUES ('309', 'San Pedro Ixcatlán');
INSERT INTO `municipio` VALUES ('310', 'San Pedro Ixtlahuaca');
INSERT INTO `municipio` VALUES ('311', 'San Pedro Jaltepetongo ');
INSERT INTO `municipio` VALUES ('312', 'San Pedro Jicayán');
INSERT INTO `municipio` VALUES ('313', 'San Pedro Jocotipac ');
INSERT INTO `municipio` VALUES ('314', 'San Pedro Juchatengo ');
INSERT INTO `municipio` VALUES ('315', 'San Pedro Mártir ');
INSERT INTO `municipio` VALUES ('316', 'San Pedro Mártir Quiechapa ');
INSERT INTO `municipio` VALUES ('317', 'San Pedro Mártir Yucuxaco ');
INSERT INTO `municipio` VALUES ('318', 'San Pedro Mixtepec');
INSERT INTO `municipio` VALUES ('319', 'San Pedro Mixtepec ');
INSERT INTO `municipio` VALUES ('320', 'San Pedro Molinos ');
INSERT INTO `municipio` VALUES ('321', 'San Pedro Nopala ');
INSERT INTO `municipio` VALUES ('322', 'San Pedro Ocopetatillo ');
INSERT INTO `municipio` VALUES ('323', 'San Pedro Ocotepec ');
INSERT INTO `municipio` VALUES ('324', 'San Pedro Pochutla');
INSERT INTO `municipio` VALUES ('325', 'San Pedro Quiatoni ');
INSERT INTO `municipio` VALUES ('326', 'San Pedro Sochiápam ');
INSERT INTO `municipio` VALUES ('327', 'San Pedro Tapanatepec');
INSERT INTO `municipio` VALUES ('328', 'San Pedro Taviche');
INSERT INTO `municipio` VALUES ('329', 'San Pedro Teozacoalco ');
INSERT INTO `municipio` VALUES ('330', 'San Pedro Teutila ');
INSERT INTO `municipio` VALUES ('331', 'San Pedro Tidaá ');
INSERT INTO `municipio` VALUES ('332', 'San Pedro Topiltepec ');
INSERT INTO `municipio` VALUES ('333', 'San Pedro Totolápam ');
INSERT INTO `municipio` VALUES ('334', 'Villa de Tututepec de Melchor Ocampo');
INSERT INTO `municipio` VALUES ('335', 'San Pedro Yaneri ');
INSERT INTO `municipio` VALUES ('336', 'San Pedro Yólox ');
INSERT INTO `municipio` VALUES ('337', 'San Pedro y San Pablo Ayutla ');
INSERT INTO `municipio` VALUES ('338', 'Villa de Etla');
INSERT INTO `municipio` VALUES ('339', 'San Pedro y San Pablo Teposcolula ');
INSERT INTO `municipio` VALUES ('340', 'San Pedro y San Pablo Tequixtepec ');
INSERT INTO `municipio` VALUES ('341', 'San Pedro Yucunama ');
INSERT INTO `municipio` VALUES ('342', 'San Raymundo Jalpan ');
INSERT INTO `municipio` VALUES ('343', 'San Sebastián Abasolo ');
INSERT INTO `municipio` VALUES ('344', 'San Sebastián Coatlán ');
INSERT INTO `municipio` VALUES ('345', 'San Sebastián Ixcapa ');
INSERT INTO `municipio` VALUES ('346', 'San Sebastián Nicananduta ');
INSERT INTO `municipio` VALUES ('347', 'San Sebastián Río Hondo ');
INSERT INTO `municipio` VALUES ('348', 'San Sebastián Tecomaxtlahuaca');
INSERT INTO `municipio` VALUES ('349', 'San Sebastián Teitipac ');
INSERT INTO `municipio` VALUES ('350', 'San Sebastián Tutla');
INSERT INTO `municipio` VALUES ('351', 'San Simón Almolongas ');
INSERT INTO `municipio` VALUES ('352', 'San Simón Zahuatlán ');
INSERT INTO `municipio` VALUES ('353', 'Santa Ana ');
INSERT INTO `municipio` VALUES ('354', 'Santa Ana Ateixtlahuaca ');
INSERT INTO `municipio` VALUES ('355', 'Santa Ana Cuauhtémoc ');
INSERT INTO `municipio` VALUES ('356', 'Santa Ana del Valle');
INSERT INTO `municipio` VALUES ('357', 'Santa Ana Tavela ');
INSERT INTO `municipio` VALUES ('358', 'Santa Ana Tlapacoyan ');
INSERT INTO `municipio` VALUES ('359', 'Santa Ana Yareni ');
INSERT INTO `municipio` VALUES ('360', 'Santa Ana Zegache ');
INSERT INTO `municipio` VALUES ('361', 'Santa Catalina Quierí ');
INSERT INTO `municipio` VALUES ('362', 'Santa Catarina Cuixtla ');
INSERT INTO `municipio` VALUES ('363', 'Santa Catarina Ixtepeji ');
INSERT INTO `municipio` VALUES ('364', 'Santa Catarina Juquila');
INSERT INTO `municipio` VALUES ('365', 'Santa Catarina Lachatao ');
INSERT INTO `municipio` VALUES ('366', 'Santa Catarina Loxicha ');
INSERT INTO `municipio` VALUES ('367', 'Santa Catarina Mechoacán ');
INSERT INTO `municipio` VALUES ('368', 'Santa Catarina Minas ');
INSERT INTO `municipio` VALUES ('369', 'Santa Catarina Quiané ');
INSERT INTO `municipio` VALUES ('370', 'Santa Catarina Tayata ');
INSERT INTO `municipio` VALUES ('371', 'Santa Catarina Ticuá');
INSERT INTO `municipio` VALUES ('372', 'Santa Catarina Yosonotú ');
INSERT INTO `municipio` VALUES ('373', 'Santa Catarina Zapoquila ');
INSERT INTO `municipio` VALUES ('374', 'Santa Cruz Acatepec ');
INSERT INTO `municipio` VALUES ('375', 'Santa Cruz Amilpas');
INSERT INTO `municipio` VALUES ('376', 'Santa Cruz de Bravo ');
INSERT INTO `municipio` VALUES ('377', 'Santa Cruz Itundujia');
INSERT INTO `municipio` VALUES ('378', 'Santa Cruz Mixtepec ');
INSERT INTO `municipio` VALUES ('379', 'Santa Cruz Nundaco ');
INSERT INTO `municipio` VALUES ('380', 'Santa Cruz Papalutla ');
INSERT INTO `municipio` VALUES ('381', 'Santa Cruz Tacache de Mina ');
INSERT INTO `municipio` VALUES ('382', 'Santa Cruz Tacahua ');
INSERT INTO `municipio` VALUES ('383', 'Santa Cruz Tayata ');
INSERT INTO `municipio` VALUES ('384', 'Santa Cruz Xitla ');
INSERT INTO `municipio` VALUES ('385', 'Santa Cruz Xoxocotlán');
INSERT INTO `municipio` VALUES ('386', 'Santa Cruz Zenzontepec ');
INSERT INTO `municipio` VALUES ('387', 'Santa Gertrudis ');
INSERT INTO `municipio` VALUES ('388', 'Santa Inés del Monte ');
INSERT INTO `municipio` VALUES ('389', 'Santa Inés Yatzeche ');
INSERT INTO `municipio` VALUES ('390', 'Santa Lucía del Camino');
INSERT INTO `municipio` VALUES ('391', 'Santa Lucía Miahuatlán ');
INSERT INTO `municipio` VALUES ('392', 'Santa Lucía Monteverde');
INSERT INTO `municipio` VALUES ('393', 'Santa Lucía Ocotlán ');
INSERT INTO `municipio` VALUES ('394', 'Santa María Alotepec ');
INSERT INTO `municipio` VALUES ('395', 'Santa María Apazco ');
INSERT INTO `municipio` VALUES ('396', 'Santa María la Asunción ');
INSERT INTO `municipio` VALUES ('397', 'Heroica Ciudad de Tlaxiaco');
INSERT INTO `municipio` VALUES ('398', 'Ayoquezco de Aldama ');
INSERT INTO `municipio` VALUES ('399', 'Santa María Atzompa');
INSERT INTO `municipio` VALUES ('400', 'Santa María Camotlán ');
INSERT INTO `municipio` VALUES ('401', 'Santa María Colotepec');
INSERT INTO `municipio` VALUES ('402', 'Santa María Cortijo ');
INSERT INTO `municipio` VALUES ('403', 'Santa María Coyotepec ');
INSERT INTO `municipio` VALUES ('404', 'Santa María Chachoápam ');
INSERT INTO `municipio` VALUES ('405', '405 Villa de Chilapa de Díaz ');
INSERT INTO `municipio` VALUES ('406', 'Santa María Chilchotla ');
INSERT INTO `municipio` VALUES ('407', 'Santa María Chimalapa ');
INSERT INTO `municipio` VALUES ('408', 'Santa María del Rosario ');
INSERT INTO `municipio` VALUES ('409', 'Santa María del Tule');
INSERT INTO `municipio` VALUES ('410', 'Santa María Ecatepec ');
INSERT INTO `municipio` VALUES ('411', 'Santa María Guelacé ');
INSERT INTO `municipio` VALUES ('412', 'Santa María Guienagati ');
INSERT INTO `municipio` VALUES ('413', 'Santa María Huatulco');
INSERT INTO `municipio` VALUES ('414', 'Santa María Huazolotitlán  ');
INSERT INTO `municipio` VALUES ('415', 'Santa María Ipalapa ');
INSERT INTO `municipio` VALUES ('416', 'Santa María Ixcatlán ');
INSERT INTO `municipio` VALUES ('417', 'Santa María Jacatepec');
INSERT INTO `municipio` VALUES ('418', 'Santa María Jalapa del Marqués');
INSERT INTO `municipio` VALUES ('419', 'Santa María Jaltianguis ');
INSERT INTO `municipio` VALUES ('420', 'Santa María Lachixío ');
INSERT INTO `municipio` VALUES ('421', 'Santa María Mixtequilla ');
INSERT INTO `municipio` VALUES ('422', 'Santa María Nativitas ');
INSERT INTO `municipio` VALUES ('423', 'Santa María Nduayaco ');
INSERT INTO `municipio` VALUES ('424', 'Santa María Ozolotepec ');
INSERT INTO `municipio` VALUES ('425', 'Santa María Pápalo ');
INSERT INTO `municipio` VALUES ('426', 'Santa María Peñoles ');
INSERT INTO `municipio` VALUES ('427', 'Santa María Petapa ');
INSERT INTO `municipio` VALUES ('428', 'Santa María Quiegolani ');
INSERT INTO `municipio` VALUES ('429', 'Santa María Sola ');
INSERT INTO `municipio` VALUES ('430', 'Santa María Tataltepec ');
INSERT INTO `municipio` VALUES ('431', 'Santa María Tecomavaca ');
INSERT INTO `municipio` VALUES ('432', 'Santa María Temaxcalapa ');
INSERT INTO `municipio` VALUES ('433', 'Santa María Temaxcaltepec ');
INSERT INTO `municipio` VALUES ('434', 'Santa María Teopoxco ');
INSERT INTO `municipio` VALUES ('435', 'Santa María Tepantlali ');
INSERT INTO `municipio` VALUES ('436', 'Santa María Texcatitlán ');
INSERT INTO `municipio` VALUES ('437', 'Santa María Tlahuitoltepec ');
INSERT INTO `municipio` VALUES ('438', 'Santa María Tlalixtac ');
INSERT INTO `municipio` VALUES ('439', 'Santa María Tonameca');
INSERT INTO `municipio` VALUES ('440', 'Santa María Totolapilla ');
INSERT INTO `municipio` VALUES ('441', 'Santa María Xadani');
INSERT INTO `municipio` VALUES ('442', 'Santa María Yalina ');
INSERT INTO `municipio` VALUES ('443', 'Santa María Yavesía ');
INSERT INTO `municipio` VALUES ('444', 'Santa María Yolotepec ');
INSERT INTO `municipio` VALUES ('445', 'Santa María Yosoyúa ');
INSERT INTO `municipio` VALUES ('446', 'Santa María Yucuhiti');
INSERT INTO `municipio` VALUES ('447', 'Santa María Zacatepec');
INSERT INTO `municipio` VALUES ('448', 'Santa María Zaniza ');
INSERT INTO `municipio` VALUES ('449', 'Santa María Zoquitlán ');
INSERT INTO `municipio` VALUES ('450', 'Santiago Amoltepec ');
INSERT INTO `municipio` VALUES ('451', 'Santiago Apoala ');
INSERT INTO `municipio` VALUES ('452', 'Santiago Apóstol ');
INSERT INTO `municipio` VALUES ('453', 'Santiago Astata ');
INSERT INTO `municipio` VALUES ('454', 'Santiago Atitlán ');
INSERT INTO `municipio` VALUES ('455', 'Santiago Ayuquililla ');
INSERT INTO `municipio` VALUES ('456', 'Santiago Cacaloxtepec ');
INSERT INTO `municipio` VALUES ('457', 'Santiago Camotlán ');
INSERT INTO `municipio` VALUES ('458', 'Santiago Comaltepec ');
INSERT INTO `municipio` VALUES ('459', 'Santiago Chazumba');
INSERT INTO `municipio` VALUES ('460', 'Santiago Choápam ');
INSERT INTO `municipio` VALUES ('461', 'Santiago del Río ');
INSERT INTO `municipio` VALUES ('462', 'Santiago Huajolotitlán ');
INSERT INTO `municipio` VALUES ('463', 'Santiago Huauclilla');
INSERT INTO `municipio` VALUES ('464', 'Santiago Ihuitlán Plumas ');
INSERT INTO `municipio` VALUES ('465', 'Santiago Ixcuintepec ');
INSERT INTO `municipio` VALUES ('466', 'Santiago Ixtayutla ');
INSERT INTO `municipio` VALUES ('467', 'Santiago Jamiltepec');
INSERT INTO `municipio` VALUES ('468', 'Santiago Jocotepec');
INSERT INTO `municipio` VALUES ('469', 'Santiago Juxtlahuaca');
INSERT INTO `municipio` VALUES ('470', 'Santiago Lachiguiri');
INSERT INTO `municipio` VALUES ('471', 'Santiago Lalopa ');
INSERT INTO `municipio` VALUES ('472', 'Santiago Laollaga ');
INSERT INTO `municipio` VALUES ('473', 'Santiago Laxopa ');
INSERT INTO `municipio` VALUES ('474', 'Santiago Llano Grande ');
INSERT INTO `municipio` VALUES ('475', 'Santiago Matatlán');
INSERT INTO `municipio` VALUES ('476', 'Santiago Miltepec ');
INSERT INTO `municipio` VALUES ('477', 'Santiago Minas ');
INSERT INTO `municipio` VALUES ('478', 'Santiago Nacaltepec ');
INSERT INTO `municipio` VALUES ('479', 'Santiago Nejapilla ');
INSERT INTO `municipio` VALUES ('480', 'Santiago Nundiche ');
INSERT INTO `municipio` VALUES ('481', 'Santiago Nuyoó ');
INSERT INTO `municipio` VALUES ('482', 'Santiago Pinotepa Nacional');
INSERT INTO `municipio` VALUES ('483', 'Santiago Suchilquitongo');
INSERT INTO `municipio` VALUES ('484', 'Santiago Tamazola ');
INSERT INTO `municipio` VALUES ('485', 'Santiago Tapextla ');
INSERT INTO `municipio` VALUES ('486', 'Villa Tejúpam de la Unión ');
INSERT INTO `municipio` VALUES ('487', 'Santiago Tenango ');
INSERT INTO `municipio` VALUES ('488', 'Santiago Tepetlapa ');
INSERT INTO `municipio` VALUES ('489', 'Santiago Tetepec ');
INSERT INTO `municipio` VALUES ('490', 'Santiago Texcalcingo ');
INSERT INTO `municipio` VALUES ('491', 'Santiago Textitlán ');
INSERT INTO `municipio` VALUES ('492', 'Santiago Tilantongo ');
INSERT INTO `municipio` VALUES ('493', 'Santiago Tillo ');
INSERT INTO `municipio` VALUES ('494', 'Santiago Tlazoyaltepec ');
INSERT INTO `municipio` VALUES ('495', 'Santiago Xanica ');
INSERT INTO `municipio` VALUES ('496', 'Santiago Xiacuí ');
INSERT INTO `municipio` VALUES ('497', 'Santiago Yaitepec ');
INSERT INTO `municipio` VALUES ('498', 'Santiago Yaveo');
INSERT INTO `municipio` VALUES ('499', 'Santiago Yolomécatl ');
INSERT INTO `municipio` VALUES ('500', 'Santiago Yosondúa');
INSERT INTO `municipio` VALUES ('501', 'Santiago Yucuyachi ');
INSERT INTO `municipio` VALUES ('502', 'Santiago Zacatepec ');
INSERT INTO `municipio` VALUES ('503', 'Santiago Zoochila ');
INSERT INTO `municipio` VALUES ('504', 'Nuevo Zoquiápam ');
INSERT INTO `municipio` VALUES ('505', 'Santo Domingo Ingenio');
INSERT INTO `municipio` VALUES ('506', 'Santo Domingo Albarradas ');
INSERT INTO `municipio` VALUES ('507', 'Santo Domingo Armenta ');
INSERT INTO `municipio` VALUES ('508', 'Santo Domingo Chihuitán ');
INSERT INTO `municipio` VALUES ('509', 'Santo Domingo de Morelos ');
INSERT INTO `municipio` VALUES ('510', 'Santo Domingo Ixcatlán ');
INSERT INTO `municipio` VALUES ('511', 'Santo Domingo Nuxaá ');
INSERT INTO `municipio` VALUES ('512', 'Santo Domingo Ozolotepec ');
INSERT INTO `municipio` VALUES ('513', 'Santo Domingo Petapa');
INSERT INTO `municipio` VALUES ('514', 'Santo Domingo Roayaga ');
INSERT INTO `municipio` VALUES ('515', 'Santo Domingo Tehuantepec');
INSERT INTO `municipio` VALUES ('516', 'Santo Domingo Teojomulco ');
INSERT INTO `municipio` VALUES ('517', 'Santo Domingo Tepuxtepec ');
INSERT INTO `municipio` VALUES ('518', 'Santo Domingo Tlatayápam ');
INSERT INTO `municipio` VALUES ('519', 'Santo Domingo Tomaltepec ');
INSERT INTO `municipio` VALUES ('520', 'Santo Domingo Tonalá');
INSERT INTO `municipio` VALUES ('521', 'Santo Domingo Tonaltepec ');
INSERT INTO `municipio` VALUES ('522', 'Santo Domingo Xagacía ');
INSERT INTO `municipio` VALUES ('523', 'Santo Domingo Yanhuitlán ');
INSERT INTO `municipio` VALUES ('524', 'Santo Domingo Yodohino ');
INSERT INTO `municipio` VALUES ('525', 'Santo Domingo Zanatepec');
INSERT INTO `municipio` VALUES ('526', 'Santos Reyes Nopala');
INSERT INTO `municipio` VALUES ('527', 'Santos Reyes Pápalo ');
INSERT INTO `municipio` VALUES ('528', 'Santos Reyes Tepejillo ');
INSERT INTO `municipio` VALUES ('529', 'Santos Reyes Yucuná ');
INSERT INTO `municipio` VALUES ('530', 'Santo Tomás Jalieza');
INSERT INTO `municipio` VALUES ('531', 'Santo Tomás Mazaltepec ');
INSERT INTO `municipio` VALUES ('532', 'Santo Tomás Ocotepec ');
INSERT INTO `municipio` VALUES ('533', 'Santo Tomás Tamazulapan');
INSERT INTO `municipio` VALUES ('534', 'San Vicente Coatlán ');
INSERT INTO `municipio` VALUES ('535', 'San Vicente Lachixío ');
INSERT INTO `municipio` VALUES ('536', 'San Vicente Nuñú ');
INSERT INTO `municipio` VALUES ('537', 'Silacayoápam');
INSERT INTO `municipio` VALUES ('538', 'Sitio de Xitlapehua ');
INSERT INTO `municipio` VALUES ('539', 'Soledad Etla ');
INSERT INTO `municipio` VALUES ('540', 'Villa de Tamazulápam del Progreso');
INSERT INTO `municipio` VALUES ('541', 'Tanetze de Zaragoza ');
INSERT INTO `municipio` VALUES ('542', 'Taniche ');
INSERT INTO `municipio` VALUES ('543', 'Tataltepec de Valdés ');
INSERT INTO `municipio` VALUES ('544', 'Teococuilco de Marcos Pérez ');
INSERT INTO `municipio` VALUES ('545', 'Teotitlán de Flores Magón');
INSERT INTO `municipio` VALUES ('546', 'Teotitlán del Valle');
INSERT INTO `municipio` VALUES ('547', 'Teotongo');
INSERT INTO `municipio` VALUES ('548', 'Tepelmeme Villa de Morelos');
INSERT INTO `municipio` VALUES ('549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ');
INSERT INTO `municipio` VALUES ('550', 'San Jerónimo Tlacochahuaya');
INSERT INTO `municipio` VALUES ('551', 'Tlacolula de Matamoros');
INSERT INTO `municipio` VALUES ('552', 'Tlacotepec Plumas ');
INSERT INTO `municipio` VALUES ('553', 'Tlalixtac de Cabrera');
INSERT INTO `municipio` VALUES ('554', 'Totontepec Villa de Morelos ');
INSERT INTO `municipio` VALUES ('555', 'Trinidad Zaachila ');
INSERT INTO `municipio` VALUES ('556', 'La Trinidad Vista Hermosa ');
INSERT INTO `municipio` VALUES ('557', 'Unión Hidalgo');
INSERT INTO `municipio` VALUES ('558', 'Valerio Trujano ');
INSERT INTO `municipio` VALUES ('559', 'San Juan Bautista Valle Nacional');
INSERT INTO `municipio` VALUES ('560', 'Villa Díaz Ordaz');
INSERT INTO `municipio` VALUES ('561', 'Yaxe ');
INSERT INTO `municipio` VALUES ('562', 'Magdalena Yodocono de Porfirio Díaz ');
INSERT INTO `municipio` VALUES ('563', 'Yogana ');
INSERT INTO `municipio` VALUES ('564', 'Yutanduchi de Guerrero ');
INSERT INTO `municipio` VALUES ('565', 'Villa de Zaachila');
INSERT INTO `municipio` VALUES ('566', 'San Mateo Yucutindoo ');
INSERT INTO `municipio` VALUES ('567', 'Zapotitlán Lagunas ');
INSERT INTO `municipio` VALUES ('568', 'Zapotitlán Palmas ');
INSERT INTO `municipio` VALUES ('569', 'Santa Inés de Zaragoza ');
INSERT INTO `municipio` VALUES ('570', 'Zimatlán de Álvarez');

-- ----------------------------
-- Table structure for `ocupaciones`
-- ----------------------------
DROP TABLE IF EXISTS `ocupaciones`;
CREATE TABLE `ocupaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocupacion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ocupaciones
-- ----------------------------
INSERT INTO `ocupaciones` VALUES ('1', 'Carpintero');
INSERT INTO `ocupaciones` VALUES ('2', 'Lechero');
INSERT INTO `ocupaciones` VALUES ('3', 'Cerrajero');
INSERT INTO `ocupaciones` VALUES ('4', 'Cocinero');
INSERT INTO `ocupaciones` VALUES ('5', 'Mecánico');
INSERT INTO `ocupaciones` VALUES ('6', 'Lavandero');
INSERT INTO `ocupaciones` VALUES ('7', 'Pescador');
INSERT INTO `ocupaciones` VALUES ('8', 'Escultor');
INSERT INTO `ocupaciones` VALUES ('9', 'Albañil');
INSERT INTO `ocupaciones` VALUES ('10', 'Editor');
INSERT INTO `ocupaciones` VALUES ('11', 'Fontanero o plomero');
INSERT INTO `ocupaciones` VALUES ('12', 'Obrero');
INSERT INTO `ocupaciones` VALUES ('13', 'Carpintero');
INSERT INTO `ocupaciones` VALUES ('14', 'Locutor');
INSERT INTO `ocupaciones` VALUES ('15', 'Soldador');
INSERT INTO `ocupaciones` VALUES ('16', 'Escritor');
INSERT INTO `ocupaciones` VALUES ('17', 'Pintor de brocha gorda');
INSERT INTO `ocupaciones` VALUES ('18', 'Vendedor');
INSERT INTO `ocupaciones` VALUES ('19', 'Sastre');
INSERT INTO `ocupaciones` VALUES ('20', 'Repartidor');
INSERT INTO `ocupaciones` VALUES ('21', 'Pastor ganadero');
INSERT INTO `ocupaciones` VALUES ('22', 'Cajero');
INSERT INTO `ocupaciones` VALUES ('23', 'Agricultor');
INSERT INTO `ocupaciones` VALUES ('24', 'Vigilante');
INSERT INTO `ocupaciones` VALUES ('25', 'Carnicero');
INSERT INTO `ocupaciones` VALUES ('26', 'Animador');
INSERT INTO `ocupaciones` VALUES ('27', 'Chofer o conductor');
INSERT INTO `ocupaciones` VALUES ('28', 'Peluquero');
INSERT INTO `ocupaciones` VALUES ('29', 'Frutero');
INSERT INTO `ocupaciones` VALUES ('30', 'Barbero');
INSERT INTO `ocupaciones` VALUES ('31', 'Deshollinador');
INSERT INTO `ocupaciones` VALUES ('32', 'Leñador');
INSERT INTO `ocupaciones` VALUES ('33', 'Artesano');
INSERT INTO `ocupaciones` VALUES ('34', 'Peletero');
INSERT INTO `ocupaciones` VALUES ('35', 'Tornero');
INSERT INTO `ocupaciones` VALUES ('36', 'Impresor');
INSERT INTO `ocupaciones` VALUES ('37', 'Barrendero');
INSERT INTO `ocupaciones` VALUES ('38', 'Policía');
INSERT INTO `ocupaciones` VALUES ('39', 'Panadero');
INSERT INTO `ocupaciones` VALUES ('40', 'Exterminador');
INSERT INTO `ocupaciones` VALUES ('41', 'Abogado');
INSERT INTO `ocupaciones` VALUES ('42', 'Médico cirujano');
INSERT INTO `ocupaciones` VALUES ('43', 'Ingeniero');
INSERT INTO `ocupaciones` VALUES ('44', 'Historiador');
INSERT INTO `ocupaciones` VALUES ('45', 'Biólogo');
INSERT INTO `ocupaciones` VALUES ('46', 'Filólogo');
INSERT INTO `ocupaciones` VALUES ('47', 'Matemático');
INSERT INTO `ocupaciones` VALUES ('48', 'Arquitecto');
INSERT INTO `ocupaciones` VALUES ('49', 'Profesor');
INSERT INTO `ocupaciones` VALUES ('50', 'Periodista');
INSERT INTO `ocupaciones` VALUES ('51', 'Físico');
INSERT INTO `ocupaciones` VALUES ('52', 'Sociólogo');
INSERT INTO `ocupaciones` VALUES ('53', 'Químico');
INSERT INTO `ocupaciones` VALUES ('54', 'Politólogo');
INSERT INTO `ocupaciones` VALUES ('55', 'Electricista');
INSERT INTO `ocupaciones` VALUES ('56', 'Bibliotecólogo');
INSERT INTO `ocupaciones` VALUES ('57', 'Técnico de sonido');
INSERT INTO `ocupaciones` VALUES ('58', 'Archivólogo');
INSERT INTO `ocupaciones` VALUES ('59', 'Filósofo');
INSERT INTO `ocupaciones` VALUES ('60', 'Secretaria');
INSERT INTO `ocupaciones` VALUES ('61', 'Antropólogo');
INSERT INTO `ocupaciones` VALUES ('62', 'Técnico en turismo');
INSERT INTO `ocupaciones` VALUES ('63', 'Administrador');
INSERT INTO `ocupaciones` VALUES ('64', 'Lingüista');
INSERT INTO `ocupaciones` VALUES ('65', 'Contador');
INSERT INTO `ocupaciones` VALUES ('66', 'Psicoanalista');
INSERT INTO `ocupaciones` VALUES ('67', 'Arqueólogo');
INSERT INTO `ocupaciones` VALUES ('68', 'Enfermero');
INSERT INTO `ocupaciones` VALUES ('69', 'Paleontólogo');
INSERT INTO `ocupaciones` VALUES ('70', 'Paramédico');
INSERT INTO `ocupaciones` VALUES ('71', 'Geógrafo');
INSERT INTO `ocupaciones` VALUES ('72', 'Músico');
INSERT INTO `ocupaciones` VALUES ('73', 'Psicólogo');
INSERT INTO `ocupaciones` VALUES ('74', 'Traductor');
INSERT INTO `ocupaciones` VALUES ('75', 'Computista');
INSERT INTO `ocupaciones` VALUES ('76', 'Economista');
INSERT INTO `ocupaciones` VALUES ('77', 'Botánico');
INSERT INTO `ocupaciones` VALUES ('78', 'Radiólogo');
INSERT INTO `ocupaciones` VALUES ('79', 'Farmacólogo');
INSERT INTO `ocupaciones` VALUES ('80', 'Ecólogo');

-- ----------------------------
-- Table structure for `personas`
-- ----------------------------
DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `rfc` varchar(14) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `primerApellido` varchar(255) DEFAULT NULL,
  `segundoApellido` varchar(255) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `sexo` char(2) DEFAULT NULL,
  `curp` varchar(20) DEFAULT NULL,
  `ocupacion` varchar(200) DEFAULT NULL,
  `gradoEstudios` varchar(200) DEFAULT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `colonia` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `cp` varchar(255) DEFAULT NULL,
  `tipoSangre` varchar(255) DEFAULT NULL,
  `alergias` varchar(255) DEFAULT NULL,
  `tipoAlergia` varchar(255) DEFAULT NULL,
  `fuma` varchar(255) DEFAULT NULL,
  `toma` varchar(255) DEFAULT NULL,
  `droga` varchar(255) DEFAULT NULL,
  `discapacitado` varchar(255) DEFAULT NULL,
  `tipoDiscapacidad` varchar(255) DEFAULT NULL,
  `estadoCivil` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personas
-- ----------------------------
INSERT INTO `personas` VALUES ('1', 'LAZ8501014I5', 'Luis Angel', 'Zaragoza ', 'Farrera', '1997-08-26', 'HO', 'LAZF970826HOCR', '43', 'Universidad', 'Tehuantepec', '18', 'Andador Zaachila Casa 18 Manzana 29', 'Fracc. El Rosario', '350', 'OAXACA', 'MEXICO', '71246', 'O+', 'NO', 'Ninguna', 'NO', 'SI', 'NO', 'SI', 'Visiual', 'En Relacion', 'luisangel.zafa@gmail.com', 'foto_LAZ8501014I5.jpeg');
INSERT INTO `personas` VALUES ('5', 'GEC8501014E8', 'Juan Diego', 'Lopez', 'Villalobos', '1995-05-15', 'HO', 'trdgfhgfjnghkm', '3', 'Bachillerato', 'tnymjhntgf', '75', 'bvesrvbh', 'Villa De Zaachila', '131', 'OAXACA', 'MEXICO', '71456', 'B-', 'SI', 'Paracetamol', 'SI', 'SI', 'SI', 'NO', 'Ninguna', 'Casado', 'thurman16@example.org', 'foto_GEC8501014E8.jpg');
INSERT INTO `personas` VALUES ('6', 'ASD1684s684158', 'Ignacio', 'Hernandez', 'Ortiz', '1992-02-18', 'HO', 'DSCL401001MOCR', '7', 'Secundaria', 'tnymjhntgf', '18', 'bvesrvbh', 'Villa De Zaachila', '5', 'OAXACA', 'MEXICO', '71542', 'O+', 'NO', 'Ninguna', 'SI', 'SI', 'NO', 'SI', 'Visual', 'En Relacion', '15161446@itoaxaca.edu.mx', 'foto_ASD1684s684158.jpg');

-- ----------------------------
-- Table structure for `productos`
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `sku` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombreCorto` varchar(50) DEFAULT NULL,
  `nombreLargo` varchar(300) DEFAULT NULL,
  `unidadMedida` varchar(20) DEFAULT NULL,
  `presentacion` varchar(50) DEFAULT NULL,
  `fechaAlta` date DEFAULT NULL,
  PRIMARY KEY (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES ('1', 'Coca Cola 1lt', 'Botella Coca Cola desechable edicion especial', 'PIEZA', 'BOTELLA', '2019-07-03');
INSERT INTO `productos` VALUES ('2', 'Queso chico', 'Queso fresco marca cosita', 'PIEZA', 'PAQUETE', '2019-07-03');
INSERT INTO `productos` VALUES ('3', 'Calcetines num', 'calcetines para caballero marca num', 'PIEZA', 'PAQUETE', '2019-07-03');
INSERT INTO `productos` VALUES ('4', 'Jamon de pavo kir', 'Jamon ahumado de pavo kir 5 kilos', 'GRAMOS', 'PAQUETE', '2019-07-04');
INSERT INTO `productos` VALUES ('5', 'TOTALLITAS HUMEDAS', 'TOALLITAS HUMEDAS HUGGIES', 'PIEZA', 'PAQUETE', '2019-07-04');
INSERT INTO `productos` VALUES ('6', 'PLAYERA MODA', 'PLAYERA MARCA CHEDRAHUI DE MODA', 'PIEZA', 'PIEZA', '2019-07-04');
INSERT INTO `productos` VALUES ('7', 'BATERIA DURACELL AA', 'BATERIAS DURACEL PAQUETE CON 6 DURACELL AA ALCALINA', 'PIEZA', 'PAQUETE', '2019-07-04');
INSERT INTO `productos` VALUES ('8', 'CAMARA KODAK 100', 'CAMARA FOTOGRAFICA DESECHABLE KODAK 100 CON 24 FOTOS', 'PIEZA', 'PAQUETE', '2019-07-05');
INSERT INTO `productos` VALUES ('9', 'CARREOLA BEBEMINK', 'CARREOLA PREMIUM MARCA BEBEMINK', 'PIEZA', 'PIEZA', '2019-07-05');
INSERT INTO `productos` VALUES ('10', 'CEREAL CHEDRAHUI GRANEL', 'CEREAL DE MAIZ MARCA CHEDRAHUI A GRANEL', 'GRAMOS', 'GRANEL', '2019-07-05');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 1,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `ban_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `primerApellido` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `segundoApellido` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `permisos` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0000000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Jose', '$P$B6sVMx2GYszt3R0vaLVonzb0q9UeOo.', 'Jose@itoaxaca.mx', '1', '0', null, null, null, null, null, '127.0.0.1', '2019-07-30 19:04:22', '2019-07-16 19:42:31', '2019-07-30 12:04:22', 'Jose', 'Hernandez', 'Alcantara', '0', '0000000000');
INSERT INTO `users` VALUES ('17', 'BanderoChinoZF', '$P$BNqyH.DgIFDej08snMZyLHRR/QzZxp0', 'luisangel.zafa@gmail.com', '1', '0', null, null, null, null, null, '127.0.0.1', '2019-07-30 17:37:39', '2019-07-29 01:05:01', '2019-07-30 10:37:39', 'Luis Angel', 'Zaragoza', 'Farrera', '1', '0000000000');
INSERT INTO `users` VALUES ('19', 'vegeta777', '$P$B8cpfimuT1ICoxIvL9o1hpajhzfYZo1', 'otroCorreo@gmail.com', '1', '0', null, null, null, null, null, '127.0.0.1', '2019-07-30 19:03:54', '2019-07-29 01:17:24', '2019-07-30 12:03:54', 'Oscar', 'Hernandez', 'Gutierrez', '2', '0000000000');
INSERT INTO `users` VALUES ('21', 'SoyPatricio', '$P$B3LwqAMijsGTH73M47PoEvJlCzS4lz/', 'miCorreo@gmail.com', '1', '0', null, null, null, null, null, '127.0.0.1', '2019-07-29 11:23:02', '2019-07-29 11:22:27', '2019-07-29 04:23:02', 'Patricio', 'Bernal', 'Gonzales', '2', '0000000000');
INSERT INTO `users` VALUES ('23', 'secktor', '$P$Ba805ye0ohhkv7CUZo60N2myRAEEov1', 'secktor007@gmail.com', '1', '0', null, null, null, null, null, '127.0.0.1', '2019-07-29 11:48:00', '2019-07-29 11:47:41', '2019-07-29 04:48:00', 'Dionisio', 'Toledo', 'Villalobos', '2', '0000000000');

-- ----------------------------
-- Table structure for `user_autologin`
-- ----------------------------
DROP TABLE IF EXISTS `user_autologin`;
CREATE TABLE `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_autologin
-- ----------------------------

-- ----------------------------
-- Table structure for `user_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_profiles
-- ----------------------------
INSERT INTO `user_profiles` VALUES ('1', '1', null, null);
INSERT INTO `user_profiles` VALUES ('2', '1', null, null);
INSERT INTO `user_profiles` VALUES ('3', '2', null, null);
INSERT INTO `user_profiles` VALUES ('4', '3', null, null);
INSERT INTO `user_profiles` VALUES ('5', '4', null, null);
INSERT INTO `user_profiles` VALUES ('6', '5', null, null);
INSERT INTO `user_profiles` VALUES ('7', '6', null, null);
INSERT INTO `user_profiles` VALUES ('8', '7', null, null);
INSERT INTO `user_profiles` VALUES ('9', '8', null, null);
INSERT INTO `user_profiles` VALUES ('10', '9', null, null);
INSERT INTO `user_profiles` VALUES ('11', '10', null, null);
INSERT INTO `user_profiles` VALUES ('12', '11', null, null);
INSERT INTO `user_profiles` VALUES ('13', '12', null, null);
INSERT INTO `user_profiles` VALUES ('14', '13', null, null);
INSERT INTO `user_profiles` VALUES ('15', '14', null, null);
INSERT INTO `user_profiles` VALUES ('16', '15', null, null);
INSERT INTO `user_profiles` VALUES ('17', '16', null, null);
INSERT INTO `user_profiles` VALUES ('18', '17', null, null);
INSERT INTO `user_profiles` VALUES ('19', '18', null, null);
INSERT INTO `user_profiles` VALUES ('20', '19', null, null);
INSERT INTO `user_profiles` VALUES ('21', '20', null, null);
INSERT INTO `user_profiles` VALUES ('22', '21', null, null);
INSERT INTO `user_profiles` VALUES ('23', '22', null, null);
INSERT INTO `user_profiles` VALUES ('24', '23', null, null);
