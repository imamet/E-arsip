/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : 127.0.0.1:3306
 Source Schema         : e-arsip-ci4

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 08/10/2020 21:35:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_arsip
-- ----------------------------
DROP TABLE IF EXISTS `tbl_arsip`;
CREATE TABLE `tbl_arsip`  (
  `id_arsip` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(11) NULL DEFAULT NULL,
  `no_arsip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_arsip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tgl_upload` date NULL DEFAULT NULL,
  `tgl_update` date NULL DEFAULT NULL,
  `file_arsip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `ukuran_file` int(11) NULL DEFAULT NULL,
  `id_dep` int(11) NULL DEFAULT NULL,
  `id_user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_arsip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_arsip
-- ----------------------------
INSERT INTO `tbl_arsip` VALUES (7, 12, '20100259-sjFJ', 'Sertifikat seminar', NULL, '2020-10-02', '2020-10-02', '1601643438_f6c983f776afce130031.pdf', 1000, 1, 1);
INSERT INTO `tbl_arsip` VALUES (8, 3, '20100228-PtZ5', 'Surat Keputusan', 'Surat Keputusan', '2020-10-02', '2020-10-02', '1601643665_70cb49d74ee3cdf2ffc0.pdf', 632879, 1, 1);
INSERT INTO `tbl_arsip` VALUES (9, 2, '20100219-owBC', 'Surat Keluar Ke Kantor Camat', 'Surat Keluar Ke Kantor Camat', '2020-10-02', '2020-10-02', '1601644005_e6dea022fdbf6549db8e.pdf', 632879, 1, 1);

-- ----------------------------
-- Table structure for tbl_dep
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dep`;
CREATE TABLE `tbl_dep`  (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_dep`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_dep
-- ----------------------------
INSERT INTO `tbl_dep` VALUES (1, 'Keuangan');
INSERT INTO `tbl_dep` VALUES (2, 'Humas');
INSERT INTO `tbl_dep` VALUES (3, 'Pemasaran');

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori`  (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES (1, 'Surat Masuk');
INSERT INTO `tbl_kategori` VALUES (2, 'Surat Keluar');
INSERT INTO `tbl_kategori` VALUES (3, 'Berkas Kerja');
INSERT INTO `tbl_kategori` VALUES (4, 'Surat Keputusan');
INSERT INTO `tbl_kategori` VALUES (5, 'Arsip Umum');
INSERT INTO `tbl_kategori` VALUES (6, 'Berkas Kesehatan');
INSERT INTO `tbl_kategori` VALUES (7, 'Berkas Internal');
INSERT INTO `tbl_kategori` VALUES (12, 'Sertifikat');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` int(1) NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_dep` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'Mardalius', 'mardalius18@gmail.com', '1234', 1, 'user1.png', 1);
INSERT INTO `tbl_user` VALUES (2, 'Budi', 'budi@gmail.com', '1234', 2, 'User.png', 2);
INSERT INTO `tbl_user` VALUES (3, 'Andi', 'andi@gmail.com', '1234', 2, 'User.png', 3);
INSERT INTO `tbl_user` VALUES (8, 'Ani', 'ani@gmail.com', '1234', 2, '1601116917_ba4a3e3fd9841cf88fd3.png', 3);

SET FOREIGN_KEY_CHECKS = 1;
