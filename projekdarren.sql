/*
 Navicat Premium Data Transfer

 Source Server         : Darren
 Source Server Type    : MySQL
 Source Server Version : 100424 (10.4.24-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : projekdarren

 Target Server Type    : MySQL
 Target Server Version : 100424 (10.4.24-MariaDB)
 File Encoding         : 65001

 Date: 08/09/2024 20:06:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alumni
-- ----------------------------
DROP TABLE IF EXISTS `alumni`;
CREATE TABLE `alumni`  (
  `id_alumni` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `nama_alumni` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jurusan` enum('AKL','BDP','RPL') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NIS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tahun_lulus` year NULL DEFAULT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `perusahaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `edited_at` datetime NULL DEFAULT NULL,
  `edited_by` int NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_alumni`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of alumni
-- ----------------------------
INSERT INTO `alumni` VALUES (2, 1, 'van', 'RPL', '22161069', 2024, 'pengangguran', 'di rumah', '1.149986912115757', '104.00736151971336', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `alumni` VALUES (3, 1, 'Aldrian', 'AKL', '22161001', 2024, 'Akuntan', 'PT Mitra Baru', '1.1614534381730457', '104.00360970104322', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `alumni` VALUES (4, 1, 'Asep', 'BDP', '22151002', 2023, 'Salesman', 'Honda Indonesia', '1.1412488148444622', '104.01701841941697', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `alumni` VALUES (5, 1, 'tester', 'AKL', '20141120', 2021, 'biduan', 'belakang bca', '1.0452992', '103.9826944', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `alumni` VALUES (6, 1, 'Erwin', 'RPL', '22161000', 2024, 'mekanik', 'cv diesel service', '1.125869202127916', '104.02588038494918', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `alumni` VALUES (7, 1, 'Leonardo', 'RPL', '22161077', 2024, 'Programmer', 'PT 123', '1.1359604499999998', '104.00611503670476', 1, '2024-09-08 19:51:33', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level`  (
  `id_level` int NOT NULL AUTO_INCREMENT,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES (1, 'Admin');
INSERT INTO `level` VALUES (2, 'Kepala Sekolah');
INSERT INTO `level` VALUES (3, 'Kajur');
INSERT INTO `level` VALUES (4, 'Guru');
INSERT INTO `level` VALUES (5, 'Alumni');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_log`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 310 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1, 1, 'Login', '2024-09-06 22:41:16');
INSERT INTO `log` VALUES (2, 1, 'Masuk Menu Setting', '2024-09-07 07:57:32');
INSERT INTO `log` VALUES (3, 1, 'Masuk Log Activity', '2024-09-07 20:04:55');
INSERT INTO `log` VALUES (4, 1, 'Masuk Menu Data Alumni', '2024-09-07 20:05:08');
INSERT INTO `log` VALUES (5, 1, 'Masuk Menu Alumni', '2024-09-07 20:05:13');
INSERT INTO `log` VALUES (6, 1, 'Masuk Log Activity', '2024-09-07 20:05:16');
INSERT INTO `log` VALUES (7, 1, 'Masuk Log Activity', '2024-09-07 20:06:36');
INSERT INTO `log` VALUES (8, 1, 'Masuk Log Activity', '2024-09-07 20:06:45');
INSERT INTO `log` VALUES (9, 1, 'Masuk Menu Alumni', '2024-09-07 20:06:59');
INSERT INTO `log` VALUES (10, 1, 'Masuk Menu Dashboard', '2024-09-07 20:07:14');
INSERT INTO `log` VALUES (11, 1, 'Masuk Menu Data Alumni', '2024-09-07 20:07:22');
INSERT INTO `log` VALUES (12, 1, 'Masuk Log Activity', '2024-09-07 20:07:37');
INSERT INTO `log` VALUES (13, 1, 'Masuk Menu Dashboard', '2024-09-07 20:18:18');
INSERT INTO `log` VALUES (14, 1, 'Masuk Menu Dashboard', '2024-09-07 20:18:28');
INSERT INTO `log` VALUES (15, 1, 'Masuk Menu Dashboard', '2024-09-07 20:19:03');
INSERT INTO `log` VALUES (16, 1, 'Masuk Menu Dashboard', '2024-09-07 20:20:31');
INSERT INTO `log` VALUES (17, 1, 'Masuk Menu Dashboard', '2024-09-07 20:25:24');
INSERT INTO `log` VALUES (18, 1, 'Masuk Menu Dashboard', '2024-09-07 20:25:44');
INSERT INTO `log` VALUES (19, 1, 'Masuk Menu Dashboard', '2024-09-07 20:25:56');
INSERT INTO `log` VALUES (20, 1, 'Masuk Menu Dashboard', '2024-09-07 20:26:08');
INSERT INTO `log` VALUES (21, 1, 'Masuk Menu Dashboard', '2024-09-07 20:26:20');
INSERT INTO `log` VALUES (22, 1, 'Masuk Menu Dashboard', '2024-09-07 20:26:29');
INSERT INTO `log` VALUES (23, 1, 'Masuk Menu Dashboard', '2024-09-07 20:26:36');
INSERT INTO `log` VALUES (24, 1, 'Masuk Menu Dashboard', '2024-09-07 20:26:43');
INSERT INTO `log` VALUES (25, 1, 'Masuk Menu Dashboard', '2024-09-07 20:26:52');
INSERT INTO `log` VALUES (26, 1, 'Masuk Menu Dashboard', '2024-09-07 20:29:26');
INSERT INTO `log` VALUES (27, 1, 'Masuk Menu Dashboard', '2024-09-07 20:30:30');
INSERT INTO `log` VALUES (28, 1, 'Masuk Menu Dashboard', '2024-09-07 20:30:45');
INSERT INTO `log` VALUES (29, 1, 'Masuk Menu Dashboard', '2024-09-07 20:31:00');
INSERT INTO `log` VALUES (30, 1, 'Masuk Menu Dashboard', '2024-09-07 20:32:56');
INSERT INTO `log` VALUES (31, 1, 'Masuk Menu Dashboard', '2024-09-07 20:34:20');
INSERT INTO `log` VALUES (32, 1, 'Masuk Menu Dashboard', '2024-09-07 20:34:45');
INSERT INTO `log` VALUES (33, 1, 'Masuk Menu Dashboard', '2024-09-07 20:35:10');
INSERT INTO `log` VALUES (34, 1, 'Masuk Menu Dashboard', '2024-09-07 20:35:23');
INSERT INTO `log` VALUES (35, 1, 'Masuk Menu Dashboard', '2024-09-07 20:35:35');
INSERT INTO `log` VALUES (36, 1, 'Masuk Menu Dashboard', '2024-09-07 20:35:45');
INSERT INTO `log` VALUES (37, 1, 'Masuk Menu Alumni', '2024-09-07 20:36:08');
INSERT INTO `log` VALUES (38, 1, 'Masuk Menu Alumni', '2024-09-07 20:36:57');
INSERT INTO `log` VALUES (39, 1, 'Masuk Menu Data Alumni', '2024-09-07 20:37:03');
INSERT INTO `log` VALUES (40, 1, 'Masuk Menu Data Alumni', '2024-09-07 20:37:45');
INSERT INTO `log` VALUES (41, 1, 'Masuk Menu User', '2024-09-07 20:37:50');
INSERT INTO `log` VALUES (42, 1, 'Masuk Menu Setting', '2024-09-07 20:37:54');
INSERT INTO `log` VALUES (43, 1, 'Masuk Menu Setting', '2024-09-07 20:38:19');
INSERT INTO `log` VALUES (44, 1, 'Masuk Menu Dashboard', '2024-09-07 20:38:28');
INSERT INTO `log` VALUES (45, 1, 'Masuk Log Activity', '2024-09-07 20:38:32');
INSERT INTO `log` VALUES (46, 1, 'Masuk Menu Data Alumni', '2024-09-07 20:39:01');
INSERT INTO `log` VALUES (47, 1, 'Masuk Menu Data Alumni', '2024-09-07 20:39:47');
INSERT INTO `log` VALUES (48, 1, 'Masuk Menu User', '2024-09-07 20:41:22');
INSERT INTO `log` VALUES (49, 1, 'Masuk Menu User', '2024-09-07 20:45:58');
INSERT INTO `log` VALUES (50, 1, 'Logout', '2024-09-07 20:51:12');
INSERT INTO `log` VALUES (51, 1, 'Login', '2024-09-07 20:53:19');
INSERT INTO `log` VALUES (52, 1, 'Masuk Menu Dashboard', '2024-09-07 20:53:21');
INSERT INTO `log` VALUES (53, 1, 'Masuk Menu Dashboard', '2024-09-07 20:54:15');
INSERT INTO `log` VALUES (54, 1, 'Masuk Menu User', '2024-09-07 20:54:21');
INSERT INTO `log` VALUES (55, 1, 'Masuk Menu User', '2024-09-07 20:55:53');
INSERT INTO `log` VALUES (56, 1, 'Menambahkan Data Alumni', '2024-09-07 20:56:53');
INSERT INTO `log` VALUES (57, 1, 'Masuk Menu Dashboard', '2024-09-07 20:56:55');
INSERT INTO `log` VALUES (58, 1, 'Masuk Menu User', '2024-09-07 20:56:59');
INSERT INTO `log` VALUES (59, 1, 'Masuk Menu User', '2024-09-07 20:57:46');
INSERT INTO `log` VALUES (60, 1, 'Menambahkan User baru', '2024-09-07 20:58:09');
INSERT INTO `log` VALUES (61, 1, 'Masuk Menu User', '2024-09-07 20:58:11');
INSERT INTO `log` VALUES (62, 1, 'Menambahkan User baru', '2024-09-07 21:00:06');
INSERT INTO `log` VALUES (63, 1, 'Masuk Menu User', '2024-09-07 21:00:11');
INSERT INTO `log` VALUES (64, 1, 'Menambahkan User baru', '2024-09-07 21:00:12');
INSERT INTO `log` VALUES (65, 1, 'Masuk Menu User', '2024-09-07 21:00:13');
INSERT INTO `log` VALUES (66, 1, 'Masuk Menu User', '2024-09-07 21:02:52');
INSERT INTO `log` VALUES (67, 1, 'Masuk Menu User', '2024-09-07 21:03:05');
INSERT INTO `log` VALUES (68, 1, 'Masuk Menu User', '2024-09-07 21:05:35');
INSERT INTO `log` VALUES (69, 1, 'Masuk Menu User', '2024-09-07 21:06:27');
INSERT INTO `log` VALUES (70, 1, 'Hapus User', '2024-09-07 21:06:32');
INSERT INTO `log` VALUES (71, 1, 'Hapus User', '2024-09-07 21:06:36');
INSERT INTO `log` VALUES (72, 1, 'Masuk Menu User', '2024-09-07 21:06:38');
INSERT INTO `log` VALUES (73, 1, 'Hapus User', '2024-09-07 21:06:50');
INSERT INTO `log` VALUES (74, 1, 'Masuk Menu User', '2024-09-07 21:06:53');
INSERT INTO `log` VALUES (75, 1, 'Masuk Menu User', '2024-09-07 21:07:26');
INSERT INTO `log` VALUES (76, 1, 'Hapus User', '2024-09-07 21:07:31');
INSERT INTO `log` VALUES (77, 1, 'Hapus User', '2024-09-07 21:07:32');
INSERT INTO `log` VALUES (78, 1, 'Masuk Menu User', '2024-09-07 21:07:34');
INSERT INTO `log` VALUES (79, 1, 'Masuk Menu User', '2024-09-07 21:09:01');
INSERT INTO `log` VALUES (80, 1, 'Logout', '2024-09-07 21:14:16');
INSERT INTO `log` VALUES (81, 1, 'Login', '2024-09-08 00:23:35');
INSERT INTO `log` VALUES (82, 1, 'Masuk Menu Dashboard', '2024-09-08 00:23:35');
INSERT INTO `log` VALUES (83, 1, 'Masuk Menu User', '2024-09-08 00:23:51');
INSERT INTO `log` VALUES (84, 1, 'Masuk Menu User', '2024-09-08 00:24:42');
INSERT INTO `log` VALUES (85, 1, 'Masuk Menu User', '2024-09-08 00:25:46');
INSERT INTO `log` VALUES (86, 1, 'Login', '2024-09-08 00:26:18');
INSERT INTO `log` VALUES (87, 1, 'Masuk Menu Dashboard', '2024-09-08 00:26:22');
INSERT INTO `log` VALUES (88, 1, 'Masuk Menu User', '2024-09-08 00:27:35');
INSERT INTO `log` VALUES (89, 1, 'Masuk Menu User', '2024-09-08 00:28:17');
INSERT INTO `log` VALUES (90, 1, 'Masuk Menu User', '2024-09-08 00:29:12');
INSERT INTO `log` VALUES (91, 1, 'Masuk Menu User', '2024-09-08 00:29:32');
INSERT INTO `log` VALUES (92, 1, 'Masuk Menu User', '2024-09-08 00:30:53');
INSERT INTO `log` VALUES (93, 1, 'Restore User', '2024-09-08 00:41:14');
INSERT INTO `log` VALUES (94, 1, 'Masuk Menu User', '2024-09-08 00:41:26');
INSERT INTO `log` VALUES (95, 1, 'Hapus User', '2024-09-08 00:41:36');
INSERT INTO `log` VALUES (96, 1, 'Masuk Menu User', '2024-09-08 00:41:36');
INSERT INTO `log` VALUES (97, 1, 'Masuk Menu User', '2024-09-08 00:41:41');
INSERT INTO `log` VALUES (98, 1, 'Masuk Menu User', '2024-09-08 00:41:42');
INSERT INTO `log` VALUES (99, 1, 'Masuk Menu Data Alumni', '2024-09-08 00:42:07');
INSERT INTO `log` VALUES (100, 1, 'Masuk Menu User', '2024-09-08 00:42:11');
INSERT INTO `log` VALUES (101, 1, 'Masuk Menu Data Alumni', '2024-09-08 00:42:18');
INSERT INTO `log` VALUES (102, 1, 'Masuk Menu Data Alumni', '2024-09-08 00:46:33');
INSERT INTO `log` VALUES (103, 1, 'Masuk Menu Data Alumni', '2024-09-08 00:48:35');
INSERT INTO `log` VALUES (104, 1, 'Masuk Menu Data Alumni', '2024-09-08 00:48:44');
INSERT INTO `log` VALUES (105, 1, 'Masuk Menu User', '2024-09-08 00:48:45');
INSERT INTO `log` VALUES (106, 1, 'Masuk Menu Data Alumni', '2024-09-08 00:51:18');
INSERT INTO `log` VALUES (107, 1, 'Logout', '2024-09-08 01:00:22');
INSERT INTO `log` VALUES (108, 1, 'Login', '2024-09-08 01:00:34');
INSERT INTO `log` VALUES (109, 1, 'Masuk Menu Dashboard', '2024-09-08 01:00:35');
INSERT INTO `log` VALUES (110, 1, 'Masuk Menu Data Alumni', '2024-09-08 01:01:38');
INSERT INTO `log` VALUES (111, 1, 'Masuk Menu Alumni', '2024-09-08 01:01:59');
INSERT INTO `log` VALUES (112, 1, 'Masuk Menu Data Alumni', '2024-09-08 01:02:11');
INSERT INTO `log` VALUES (113, 1, 'Hapus Alumni', '2024-09-08 01:02:17');
INSERT INTO `log` VALUES (114, 1, 'Masuk Menu Data Alumni', '2024-09-08 01:02:19');
INSERT INTO `log` VALUES (115, 1, 'Logout', '2024-09-08 01:07:23');
INSERT INTO `log` VALUES (116, 1, 'Login', '2024-09-08 01:11:19');
INSERT INTO `log` VALUES (117, 1, 'Masuk Menu Dashboard', '2024-09-08 01:11:22');
INSERT INTO `log` VALUES (118, 1, 'Logout', '2024-09-08 01:16:25');
INSERT INTO `log` VALUES (119, 1, 'Login', '2024-09-08 01:18:32');
INSERT INTO `log` VALUES (120, 1, 'Masuk Menu Dashboard', '2024-09-08 01:18:33');
INSERT INTO `log` VALUES (121, 1, 'Masuk Menu Alumni', '2024-09-08 01:21:00');
INSERT INTO `log` VALUES (122, 1, 'Masuk Menu Data Alumni', '2024-09-08 01:21:01');
INSERT INTO `log` VALUES (123, 1, 'Restore User', '2024-09-08 01:21:52');
INSERT INTO `log` VALUES (124, 1, 'Restore User', '2024-09-08 01:21:57');
INSERT INTO `log` VALUES (125, 1, 'Restore User', '2024-09-08 01:22:50');
INSERT INTO `log` VALUES (126, 1, 'Masuk Menu Data Alumni', '2024-09-08 01:22:52');
INSERT INTO `log` VALUES (127, 1, 'Logout', '2024-09-08 01:35:17');
INSERT INTO `log` VALUES (128, NULL, 'Logout', '2024-09-08 01:35:22');
INSERT INTO `log` VALUES (129, 1, 'Login', '2024-09-08 01:36:50');
INSERT INTO `log` VALUES (130, 1, 'Masuk Menu Dashboard', '2024-09-08 01:36:51');
INSERT INTO `log` VALUES (131, 1, 'Masuk Menu Data Alumni', '2024-09-08 01:39:20');
INSERT INTO `log` VALUES (132, 1, 'Masuk Menu Data Alumni', '2024-09-08 01:39:29');
INSERT INTO `log` VALUES (133, 1, 'Masuk Menu Data Alumni', '2024-09-08 01:39:33');
INSERT INTO `log` VALUES (134, 1, 'Masuk Menu Dashboard', '2024-09-08 01:39:34');
INSERT INTO `log` VALUES (135, 1, 'Login', '2024-09-08 01:40:10');
INSERT INTO `log` VALUES (136, 1, 'Masuk Menu Dashboard', '2024-09-08 01:40:12');
INSERT INTO `log` VALUES (137, 1, 'Masuk Menu Data Alumni', '2024-09-08 01:40:30');
INSERT INTO `log` VALUES (138, 1, 'Masuk Menu User', '2024-09-08 01:40:34');
INSERT INTO `log` VALUES (139, 1, 'Login', '2024-09-08 12:16:22');
INSERT INTO `log` VALUES (140, 1, 'Masuk Menu Dashboard', '2024-09-08 12:16:23');
INSERT INTO `log` VALUES (141, 1, 'Logout', '2024-09-08 12:23:29');
INSERT INTO `log` VALUES (142, NULL, 'Logout', '2024-09-08 12:29:08');
INSERT INTO `log` VALUES (143, NULL, 'Logout', '2024-09-08 12:35:08');
INSERT INTO `log` VALUES (144, NULL, 'Logout', '2024-09-08 12:41:08');
INSERT INTO `log` VALUES (145, NULL, 'Logout', '2024-09-08 12:46:14');
INSERT INTO `log` VALUES (146, 1, 'Login', '2024-09-08 12:48:11');
INSERT INTO `log` VALUES (147, 1, 'Masuk Menu Dashboard', '2024-09-08 12:48:16');
INSERT INTO `log` VALUES (148, 1, 'Masuk Menu User', '2024-09-08 12:48:28');
INSERT INTO `log` VALUES (149, 1, 'Masuk Menu Data Alumni', '2024-09-08 12:48:41');
INSERT INTO `log` VALUES (150, 1, 'Masuk Menu Data Alumni', '2024-09-08 12:49:44');
INSERT INTO `log` VALUES (151, 1, 'Logout', '2024-09-08 12:56:51');
INSERT INTO `log` VALUES (152, NULL, 'Logout', '2024-09-08 13:02:09');
INSERT INTO `log` VALUES (153, 1, 'Login', '2024-09-08 13:04:09');
INSERT INTO `log` VALUES (154, 1, 'Masuk Menu Dashboard', '2024-09-08 13:04:11');
INSERT INTO `log` VALUES (155, 1, 'Masuk Menu Data Alumni', '2024-09-08 13:04:15');
INSERT INTO `log` VALUES (156, 1, 'Masuk Menu User', '2024-09-08 13:04:40');
INSERT INTO `log` VALUES (157, 1, 'Masuk Menu Data Alumni', '2024-09-08 13:04:49');
INSERT INTO `log` VALUES (158, 1, 'Masuk Menu Data Alumni', '2024-09-08 13:05:32');
INSERT INTO `log` VALUES (159, 1, 'Masuk Menu User', '2024-09-08 13:06:53');
INSERT INTO `log` VALUES (160, 1, 'Masuk Menu Data Alumni', '2024-09-08 13:07:05');
INSERT INTO `log` VALUES (161, 1, 'Logout', '2024-09-08 13:19:13');
INSERT INTO `log` VALUES (162, NULL, 'Logout', '2024-09-08 13:25:10');
INSERT INTO `log` VALUES (163, NULL, 'Logout', '2024-09-08 13:37:58');
INSERT INTO `log` VALUES (164, NULL, 'Logout', '2024-09-08 13:43:21');
INSERT INTO `log` VALUES (165, 1, 'Login', '2024-09-08 13:47:52');
INSERT INTO `log` VALUES (166, 1, 'Masuk Menu Dashboard', '2024-09-08 13:47:53');
INSERT INTO `log` VALUES (167, 1, 'Masuk Menu User', '2024-09-08 13:48:00');
INSERT INTO `log` VALUES (168, 1, 'Masuk Menu User', '2024-09-08 13:48:11');
INSERT INTO `log` VALUES (169, 1, 'Masuk Menu Dashboard', '2024-09-08 13:48:12');
INSERT INTO `log` VALUES (170, 1, 'Masuk Menu Data Alumni', '2024-09-08 13:48:14');
INSERT INTO `log` VALUES (171, 1, 'Masuk Menu User', '2024-09-08 13:49:15');
INSERT INTO `log` VALUES (172, 1, 'Masuk Menu User', '2024-09-08 13:54:05');
INSERT INTO `log` VALUES (173, 1, 'Masuk Menu User', '2024-09-08 13:54:49');
INSERT INTO `log` VALUES (174, 1, 'Masuk Menu User', '2024-09-08 13:55:44');
INSERT INTO `log` VALUES (175, 1, 'Masuk Menu User', '2024-09-08 13:56:01');
INSERT INTO `log` VALUES (176, 1, 'Masuk Menu User', '2024-09-08 13:56:55');
INSERT INTO `log` VALUES (177, 1, 'Masuk Menu User', '2024-09-08 14:04:08');
INSERT INTO `log` VALUES (178, 1, 'Logout', '2024-09-08 14:13:16');
INSERT INTO `log` VALUES (179, NULL, 'Logout', '2024-09-08 14:19:08');
INSERT INTO `log` VALUES (180, NULL, 'Logout', '2024-09-08 14:25:08');
INSERT INTO `log` VALUES (181, NULL, 'Logout', '2024-09-08 14:31:18');
INSERT INTO `log` VALUES (182, 1, 'Login', '2024-09-08 14:31:49');
INSERT INTO `log` VALUES (183, 1, 'Masuk Menu Dashboard', '2024-09-08 14:31:51');
INSERT INTO `log` VALUES (184, 1, 'Masuk Menu User', '2024-09-08 14:31:58');
INSERT INTO `log` VALUES (185, 1, 'Edit User', '2024-09-08 14:32:24');
INSERT INTO `log` VALUES (186, 1, 'Masuk Menu User', '2024-09-08 14:32:27');
INSERT INTO `log` VALUES (187, 1, 'Masuk Menu User', '2024-09-08 14:32:42');
INSERT INTO `log` VALUES (188, 1, 'Masuk Menu User', '2024-09-08 14:42:25');
INSERT INTO `log` VALUES (189, 1, 'Masuk Menu User', '2024-09-08 14:44:28');
INSERT INTO `log` VALUES (190, 1, 'Edit User', '2024-09-08 14:44:37');
INSERT INTO `log` VALUES (191, 1, 'Masuk Menu User', '2024-09-08 14:44:38');
INSERT INTO `log` VALUES (192, 1, 'Masuk Menu User', '2024-09-08 14:46:38');
INSERT INTO `log` VALUES (193, 1, 'Edit User', '2024-09-08 14:46:54');
INSERT INTO `log` VALUES (194, 1, 'Masuk Menu User', '2024-09-08 14:46:59');
INSERT INTO `log` VALUES (195, 1, 'Edit User', '2024-09-08 14:52:58');
INSERT INTO `log` VALUES (196, 1, 'Masuk Menu User', '2024-09-08 14:52:59');
INSERT INTO `log` VALUES (197, 1, 'Edit User', '2024-09-08 14:53:41');
INSERT INTO `log` VALUES (198, 1, 'Masuk Menu User', '2024-09-08 14:53:41');
INSERT INTO `log` VALUES (199, 1, 'Edit User', '2024-09-08 14:55:38');
INSERT INTO `log` VALUES (200, 1, 'Masuk Menu User', '2024-09-08 14:55:38');
INSERT INTO `log` VALUES (201, 1, 'Logout', '2024-09-08 15:03:46');
INSERT INTO `log` VALUES (202, 1, 'Login', '2024-09-08 15:04:42');
INSERT INTO `log` VALUES (203, 1, 'Masuk Menu Dashboard', '2024-09-08 15:04:44');
INSERT INTO `log` VALUES (204, 1, 'Masuk Menu User', '2024-09-08 15:04:49');
INSERT INTO `log` VALUES (205, 1, 'Masuk Menu User', '2024-09-08 15:05:47');
INSERT INTO `log` VALUES (206, 1, 'Masuk Menu User', '2024-09-08 15:05:56');
INSERT INTO `log` VALUES (207, 1, 'Masuk Menu User', '2024-09-08 15:06:05');
INSERT INTO `log` VALUES (208, 1, 'Masuk Menu User', '2024-09-08 15:06:47');
INSERT INTO `log` VALUES (209, 1, 'Masuk Menu User', '2024-09-08 15:14:39');
INSERT INTO `log` VALUES (210, 1, 'Masuk Menu User', '2024-09-08 15:15:12');
INSERT INTO `log` VALUES (211, 1, 'Edit User', '2024-09-08 15:15:23');
INSERT INTO `log` VALUES (212, 1, 'Masuk Menu User', '2024-09-08 15:15:24');
INSERT INTO `log` VALUES (213, 1, 'Masuk Menu User', '2024-09-08 15:15:32');
INSERT INTO `log` VALUES (214, 1, 'Edit User', '2024-09-08 15:15:43');
INSERT INTO `log` VALUES (215, 1, 'Masuk Menu User', '2024-09-08 15:15:43');
INSERT INTO `log` VALUES (216, 1, 'Logout', '2024-09-08 15:20:43');
INSERT INTO `log` VALUES (217, 1, 'Login', '2024-09-08 15:22:33');
INSERT INTO `log` VALUES (218, 1, 'Masuk Menu Dashboard', '2024-09-08 15:22:34');
INSERT INTO `log` VALUES (219, 1, 'Masuk Menu Setting', '2024-09-08 15:23:03');
INSERT INTO `log` VALUES (220, 1, 'Logout', '2024-09-08 15:28:05');
INSERT INTO `log` VALUES (221, NULL, 'Logout', '2024-09-08 15:33:08');
INSERT INTO `log` VALUES (222, 1, 'Login', '2024-09-08 15:36:45');
INSERT INTO `log` VALUES (223, 1, 'Masuk Menu Dashboard', '2024-09-08 15:36:45');
INSERT INTO `log` VALUES (224, 1, 'Masuk Menu Dashboard', '2024-09-08 15:38:10');
INSERT INTO `log` VALUES (225, 1, 'Logout', '2024-09-08 15:48:09');
INSERT INTO `log` VALUES (226, NULL, 'Logout', '2024-09-08 15:54:03');
INSERT INTO `log` VALUES (227, NULL, 'Logout', '2024-09-08 15:59:06');
INSERT INTO `log` VALUES (228, 1, 'Login', '2024-09-08 16:00:06');
INSERT INTO `log` VALUES (229, 1, 'Masuk Menu Dashboard', '2024-09-08 16:00:08');
INSERT INTO `log` VALUES (230, 1, 'Masuk Menu Alumni', '2024-09-08 16:00:18');
INSERT INTO `log` VALUES (231, 1, 'Masuk Menu Profile', '2024-09-08 16:13:19');
INSERT INTO `log` VALUES (232, 1, 'Masuk Menu Alumni', '2024-09-08 16:13:20');
INSERT INTO `log` VALUES (233, 1, 'Masuk Menu Dashboard', '2024-09-08 16:13:21');
INSERT INTO `log` VALUES (234, 1, 'Masuk Menu Alumni', '2024-09-08 16:17:34');
INSERT INTO `log` VALUES (235, 1, 'Masuk Menu Profile', '2024-09-08 16:17:39');
INSERT INTO `log` VALUES (236, 1, 'Edit Profile', '2024-09-08 16:17:42');
INSERT INTO `log` VALUES (237, 1, 'Masuk Menu Dashboard', '2024-09-08 16:17:59');
INSERT INTO `log` VALUES (238, 1, 'Masuk Menu Profile', '2024-09-08 16:18:07');
INSERT INTO `log` VALUES (239, 1, 'Edit Profile', '2024-09-08 16:18:30');
INSERT INTO `log` VALUES (240, 1, 'Masuk Menu Profile', '2024-09-08 16:18:31');
INSERT INTO `log` VALUES (241, 1, 'Masuk Menu Profile', '2024-09-08 16:18:56');
INSERT INTO `log` VALUES (242, 1, 'Edit Profile', '2024-09-08 16:19:02');
INSERT INTO `log` VALUES (243, 1, 'Masuk Menu Profile', '2024-09-08 16:19:03');
INSERT INTO `log` VALUES (244, 1, 'Masuk Menu Profile', '2024-09-08 16:21:28');
INSERT INTO `log` VALUES (245, 1, 'Edit Profile', '2024-09-08 16:21:37');
INSERT INTO `log` VALUES (246, 1, 'Masuk Menu Profile', '2024-09-08 16:21:38');
INSERT INTO `log` VALUES (247, 1, 'Masuk Menu Profile', '2024-09-08 16:25:01');
INSERT INTO `log` VALUES (248, 1, 'Masuk Menu Profile', '2024-09-08 16:26:33');
INSERT INTO `log` VALUES (249, 1, 'Edit Profile', '2024-09-08 16:26:59');
INSERT INTO `log` VALUES (250, 1, 'Masuk Menu Profile', '2024-09-08 16:26:59');
INSERT INTO `log` VALUES (251, 1, 'Edit Profile', '2024-09-08 16:27:13');
INSERT INTO `log` VALUES (252, 1, 'Masuk Menu Profile', '2024-09-08 16:27:14');
INSERT INTO `log` VALUES (253, 1, 'Masuk Menu Profile', '2024-09-08 16:27:34');
INSERT INTO `log` VALUES (254, 1, 'Logout', '2024-09-08 16:32:38');
INSERT INTO `log` VALUES (255, 1, 'Login', '2024-09-08 16:33:16');
INSERT INTO `log` VALUES (256, 1, 'Masuk Menu Dashboard', '2024-09-08 16:33:18');
INSERT INTO `log` VALUES (257, 1, 'Logout', '2024-09-08 16:38:21');
INSERT INTO `log` VALUES (258, 1, 'Login', '2024-09-08 16:38:30');
INSERT INTO `log` VALUES (259, 1, 'Masuk Menu Dashboard', '2024-09-08 16:38:31');
INSERT INTO `log` VALUES (260, 1, 'Login', '2024-09-08 17:02:00');
INSERT INTO `log` VALUES (261, 1, 'Masuk Menu Dashboard', '2024-09-08 17:02:01');
INSERT INTO `log` VALUES (262, 1, 'Login', '2024-09-08 19:17:01');
INSERT INTO `log` VALUES (263, 1, 'Masuk Menu Dashboard', '2024-09-08 19:17:02');
INSERT INTO `log` VALUES (264, 1, 'Masuk Menu Alumni', '2024-09-08 19:21:22');
INSERT INTO `log` VALUES (265, 1, 'Masuk Menu Data Alumni', '2024-09-08 19:23:29');
INSERT INTO `log` VALUES (266, 1, 'Masuk Menu Data Alumni', '2024-09-08 19:25:44');
INSERT INTO `log` VALUES (267, 1, 'Masuk Log Activity', '2024-09-08 19:26:21');
INSERT INTO `log` VALUES (268, 1, 'Masuk Menu User', '2024-09-08 19:26:22');
INSERT INTO `log` VALUES (269, 1, 'Logout', '2024-09-08 19:31:51');
INSERT INTO `log` VALUES (270, 1, 'Login', '2024-09-08 19:32:12');
INSERT INTO `log` VALUES (271, 1, 'Masuk Menu Dashboard', '2024-09-08 19:32:13');
INSERT INTO `log` VALUES (272, 1, 'Login', '2024-09-08 19:32:33');
INSERT INTO `log` VALUES (273, 1, 'Masuk Menu Dashboard', '2024-09-08 19:32:34');
INSERT INTO `log` VALUES (274, 1, 'Masuk Menu User', '2024-09-08 19:32:42');
INSERT INTO `log` VALUES (275, 1, 'Masuk Log Activity', '2024-09-08 19:34:15');
INSERT INTO `log` VALUES (276, 1, 'Masuk Menu Setting', '2024-09-08 19:36:30');
INSERT INTO `log` VALUES (277, 1, 'Masuk Menu Profile', '2024-09-08 19:38:25');
INSERT INTO `log` VALUES (278, 1, 'Logout', '2024-09-08 19:40:00');
INSERT INTO `log` VALUES (279, 1, 'Login', '2024-09-08 19:50:10');
INSERT INTO `log` VALUES (280, 1, 'Masuk Menu Dashboard', '2024-09-08 19:50:11');
INSERT INTO `log` VALUES (281, 1, 'Menambahkan Data Alumni', '2024-09-08 19:51:33');
INSERT INTO `log` VALUES (282, 1, 'Masuk Menu Dashboard', '2024-09-08 19:51:34');
INSERT INTO `log` VALUES (283, 1, 'Masuk Menu Alumni', '2024-09-08 19:51:39');
INSERT INTO `log` VALUES (284, 1, 'Masuk Menu Data Alumni', '2024-09-08 19:52:02');
INSERT INTO `log` VALUES (285, 1, 'Hapus Alumni', '2024-09-08 19:52:25');
INSERT INTO `log` VALUES (286, 1, 'Masuk Menu Data Alumni', '2024-09-08 19:52:26');
INSERT INTO `log` VALUES (287, 1, 'Restore Alumni', '2024-09-08 19:52:35');
INSERT INTO `log` VALUES (288, 1, 'Masuk Menu Data Alumni', '2024-09-08 19:52:39');
INSERT INTO `log` VALUES (289, 1, 'Masuk Menu User', '2024-09-08 19:52:42');
INSERT INTO `log` VALUES (290, 1, 'Masuk Menu User', '2024-09-08 19:52:53');
INSERT INTO `log` VALUES (291, 1, 'Masuk Menu User', '2024-09-08 19:53:03');
INSERT INTO `log` VALUES (292, 1, 'Masuk Log Activity', '2024-09-08 19:53:08');
INSERT INTO `log` VALUES (293, 1, 'Masuk Menu Setting', '2024-09-08 19:53:27');
INSERT INTO `log` VALUES (294, 1, 'Masuk Menu Setting', '2024-09-08 19:54:00');
INSERT INTO `log` VALUES (295, 1, 'Masuk Menu Profile', '2024-09-08 19:54:07');
INSERT INTO `log` VALUES (296, 1, 'Edit Profile', '2024-09-08 19:54:18');
INSERT INTO `log` VALUES (297, 1, 'Masuk Menu Profile', '2024-09-08 19:54:19');
INSERT INTO `log` VALUES (298, 1, 'Edit Profile', '2024-09-08 19:54:26');
INSERT INTO `log` VALUES (299, 1, 'Masuk Menu Profile', '2024-09-08 19:54:27');
INSERT INTO `log` VALUES (300, 1, 'Masuk Menu User', '2024-09-08 19:54:32');
INSERT INTO `log` VALUES (301, 1, 'Menambahkan User baru', '2024-09-08 19:54:51');
INSERT INTO `log` VALUES (302, 1, 'Masuk Menu User', '2024-09-08 19:54:52');
INSERT INTO `log` VALUES (303, 1, 'Hapus User', '2024-09-08 19:54:58');
INSERT INTO `log` VALUES (304, 1, 'Masuk Menu User', '2024-09-08 19:54:59');
INSERT INTO `log` VALUES (305, 1, 'Restore User', '2024-09-08 19:55:11');
INSERT INTO `log` VALUES (306, 1, 'Masuk Menu User', '2024-09-08 19:55:14');
INSERT INTO `log` VALUES (307, 1, 'Edit User', '2024-09-08 19:55:28');
INSERT INTO `log` VALUES (308, 1, 'Masuk Menu User', '2024-09-08 19:55:29');
INSERT INTO `log` VALUES (309, 1, 'Masuk Menu User', '2024-09-08 19:55:45');

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `namawebsite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `iconlogin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `iconmenu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icontab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, 'Pendataan Alumni', 'logo_sph_1.png', 'logo_sph_1.png', 'logo_sph_2.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `edited_at` datetime NULL DEFAULT NULL,
  `edited_by` int NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Admin', 'd41d8cd98f00b204e9800998ecf8427e', 1, NULL, NULL, '2024-09-08 19:54:26', 1, NULL, NULL);
INSERT INTO `user` VALUES (2, 'Kepsek', 'kepsek', 2, NULL, NULL, '2024-09-08 15:15:43', 1, NULL, NULL);
INSERT INTO `user` VALUES (3, 'Kajur', 'kajur', 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (4, 'Guru', 'guru', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (5, 'Darren', 'darren', 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (7, '22161048', '1599e39a397ff160aefd12156fde28a4', 5, '2024-09-07 21:00:06', 1, NULL, NULL, '2024-09-08 00:41:35', 1);
INSERT INTO `user` VALUES (8, '22161048', '1599e39a397ff160aefd12156fde28a4', 5, '2024-09-07 21:00:12', 1, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (9, 'USER123', 'b6f120aa2cdfe30201124fe099041d10', 5, '2024-09-08 19:54:51', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_backup
-- ----------------------------
DROP TABLE IF EXISTS `user_backup`;
CREATE TABLE `user_backup`  (
  `id_user` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `edited_at` datetime NULL DEFAULT NULL,
  `edited_by` int NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `deleted_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_backup
-- ----------------------------
INSERT INTO `user_backup` VALUES (2, 'Kepsek1', 'kepsek', 1, NULL, NULL, '2024-09-08 14:53:41', 1, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
