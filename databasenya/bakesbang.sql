/*
 Navicat Premium Data Transfer

 Source Server         : afsutisna
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : bakesbang

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 22/08/2022 08:07:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for afs_akta_notaris
-- ----------------------------
DROP TABLE IF EXISTS `afs_akta_notaris`;
CREATE TABLE `afs_akta_notaris`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jenis_akta` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_akta_notaris
-- ----------------------------
INSERT INTO `afs_akta_notaris` VALUES (1, 'Akta Pendirian', '2022-08-15 09:05:34', '2022-08-15 09:05:34');
INSERT INTO `afs_akta_notaris` VALUES (2, 'Akta Perubahan', '2022-08-15 09:05:34', '2022-08-15 09:05:34');

-- ----------------------------
-- Table structure for afs_bendahara
-- ----------------------------
DROP TABLE IF EXISTS `afs_bendahara`;
CREATE TABLE `afs_bendahara`  (
  `no_register` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `masa_bakti_awal` date NULL DEFAULT NULL,
  `masa_bakti_akhir` date NULL DEFAULT NULL,
  `verifikasi` int(11) NULL DEFAULT NULL,
  `keterangan_verifikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file_ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_ktp_v` int(11) NULL DEFAULT NULL,
  `file_foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_foto_v` int(11) NULL DEFAULT NULL,
  `file_cv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_cv_v` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no_register`) USING BTREE,
  CONSTRAINT `afs_bendahara_no_register_foreign` FOREIGN KEY (`no_register`) REFERENCES `users` (`no_register`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_bendahara
-- ----------------------------
INSERT INTO `afs_bendahara` VALUES ('14000120220811ABC', 'dfdfd', '34434', '2022-08-20', '2022-08-31', 0, NULL, 'ktp_pengurus/jk8EPPRjWxRrvHqOAS5p9jkM1OrMrOdunA4k2jLf.pdf', 0, 'foto_pengurus/DhQi9BfRmMJKQ0Yasf2onjFw12h1Tu9z0tJYeEYf.pdf', 0, 'cv_pengurus/RDE1JcywbYDhlBDFvzZG78QvWBT5xDzQcJzBnHFn.pdf', 0, '2022-08-20 17:24:01', '2022-08-20 17:24:01');

-- ----------------------------
-- Table structure for afs_bidang
-- ----------------------------
DROP TABLE IF EXISTS `afs_bidang`;
CREATE TABLE `afs_bidang`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bidang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_bidang
-- ----------------------------
INSERT INTO `afs_bidang` VALUES (1, 'Keagamaan', '2022-08-19 09:50:25', '2022-08-19 09:50:25');
INSERT INTO `afs_bidang` VALUES (2, 'Sosial', '2022-08-19 09:56:40', '2022-08-19 09:56:40');

-- ----------------------------
-- Table structure for afs_dokumen
-- ----------------------------
DROP TABLE IF EXISTS `afs_dokumen`;
CREATE TABLE `afs_dokumen`  (
  `no_register` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lambang_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_lambang_ormaspol` int(11) NOT NULL,
  `valket_lambang_ormaspol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `stempel_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_stempel_ormaspol` int(11) NOT NULL,
  `valket_stempel_ormaspol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `surat_permohonan_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_surat_permohonan_ormaspol` int(11) NOT NULL,
  `valket_surat_permohonan_ormaspol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `surat_keputusan_pengurus_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_surat_keputusan_pengurus_ormaspol` int(11) NOT NULL,
  `valket_surat_keputusan_pengurus_ormaspol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `akta_notaris_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_akta_notaris_ormaspol` int(11) NOT NULL,
  `valket_akta_notaris_ormaspol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ad_art_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_ad_art_ormaspol` int(11) NOT NULL,
  `valket_ad_art_ormaspol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `sk_kemenkumham_ormas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_sk_kemenkumham_ormas` int(11) NOT NULL,
  `valket_sk_kemenkumham_ormas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `surat_rekom_ormas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_surat_rekom_ormas` int(11) NOT NULL,
  `valket_surat_rekom_ormas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `suket_domisili_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_suket_domisili_ormaspol` int(11) NOT NULL,
  `valket_suket_domisili_ormaspol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `surat_kepemilikan_kantor_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_surat_kepemilikan_kantor_ormaspol` int(11) NOT NULL,
  `valket_surat_kepemilikan_kantor_ormaspol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `foto_kantor_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_foto_kantor_ormaspol` int(11) NOT NULL,
  `valket_foto_kantor_ormaspol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `badan_hukum_parpol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `val_badan_hukum_parpol` int(11) NULL DEFAULT NULL,
  `valket_badan_hukum_parpol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `surat_pernyataan_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_surat_pernyataan_ormaspol` int(11) NOT NULL,
  `valket_surat_pernyataan_ormaspol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no_register`) USING BTREE,
  CONSTRAINT `afs_dokumen_ibfk_1` FOREIGN KEY (`no_register`) REFERENCES `users` (`no_register`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_dokumen
-- ----------------------------
INSERT INTO `afs_dokumen` VALUES ('14000120220811ABC', 'dok_lambang/14000120220811ABC_cv_1660992087.pdf', 0, NULL, 'dok_stempel/14000120220811ABC_ktp_1660992087.pdf', 0, NULL, 'dok_permohonan/14000120220811ABC_cv_1660992087.pdf', 0, NULL, 'dok_kepengurusan/14000120220811ABC_cv_1660992087.pdf', 0, NULL, 'dok_aktanotaris/14000120220811ABC_foto_1660992087.pdf', 0, NULL, 'dok_adart/14000120220811ABC_foto_1660992087.pdf', 0, NULL, 'dok_sk-uha/14000120220811ABC_cv_1660992087.pdf', 0, NULL, 'dok_remokendasi/14000120220811ABC_cv_1660992087.pdf', 0, NULL, 'dok_domisili/14000120220811ABC_cv_1660992087.pdf', 0, NULL, 'dok_kepemilikan/14000120220811ABC_ktp_1660992087.pdf', 0, NULL, 'dok_foto-kantor/14000120220811ABC_foto_1660992087.pdf', 0, NULL, NULL, NULL, NULL, 'dok_pernyataan/14000120220811ABC_cv_1660992087.pdf', 0, NULL, '2022-08-20 17:41:27', '2022-08-20 17:41:27');

-- ----------------------------
-- Table structure for afs_kategori
-- ----------------------------
DROP TABLE IF EXISTS `afs_kategori`;
CREATE TABLE `afs_kategori`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_kategori
-- ----------------------------
INSERT INTO `afs_kategori` VALUES (1, 'PARPOL', '2022-08-15 09:05:34', '2022-08-15 09:05:34');
INSERT INTO `afs_kategori` VALUES (2, 'ORMAS', '2022-08-15 09:05:34', '2022-08-15 09:05:34');

-- ----------------------------
-- Table structure for afs_kepengurusan
-- ----------------------------
DROP TABLE IF EXISTS `afs_kepengurusan`;
CREATE TABLE `afs_kepengurusan`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kepengurusan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_kepengurusan
-- ----------------------------
INSERT INTO `afs_kepengurusan` VALUES (1, 'Pusat', '2022-08-15 09:05:34', '2022-08-15 09:05:34');
INSERT INTO `afs_kepengurusan` VALUES (2, 'Cabang', '2022-08-15 09:05:34', '2022-08-15 09:05:34');

-- ----------------------------
-- Table structure for afs_ketua
-- ----------------------------
DROP TABLE IF EXISTS `afs_ketua`;
CREATE TABLE `afs_ketua`  (
  `no_register` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `masa_bakti_awal` date NULL DEFAULT NULL,
  `masa_bakti_akhir` date NULL DEFAULT NULL,
  `verifikasi` int(11) NULL DEFAULT NULL,
  `keterangan_verifikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file_ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_ktp_v` int(11) NULL DEFAULT NULL,
  `file_foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_foto_v` int(11) NULL DEFAULT NULL,
  `file_cv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_cv_v` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no_register`) USING BTREE,
  CONSTRAINT `afs_ketua_no_register_foreign` FOREIGN KEY (`no_register`) REFERENCES `users` (`no_register`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_ketua
-- ----------------------------
INSERT INTO `afs_ketua` VALUES ('14000120220811ABC', 'Tes Ketua', '123', '2022-08-20', '2022-08-31', 0, NULL, 'ktp_pengurus/C2QCfmogUfESZPjNI1CIek7hIhMFSJtqQS7lPlpI.pdf', 0, 'foto_pengurus/Uz7mAmQkk90BdNBHJ27S9oPe5LABBLApgeh2ZgLm.pdf', 0, 'cv_pengurus/bwooInCnZ8Zi5dJHTEBvPXKBMMNfBAHI9Bcb5GGr.pdf', 0, '2022-08-20 17:22:24', '2022-08-20 17:25:24');

-- ----------------------------
-- Table structure for afs_pembina
-- ----------------------------
DROP TABLE IF EXISTS `afs_pembina`;
CREATE TABLE `afs_pembina`  (
  `no_register` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `verifikasi` int(11) NULL DEFAULT NULL,
  `keterangan_verifikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no_register`) USING BTREE,
  CONSTRAINT `afs_pembina_no_register_foreign` FOREIGN KEY (`no_register`) REFERENCES `users` (`no_register`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_pembina
-- ----------------------------
INSERT INTO `afs_pembina` VALUES ('14000120220811ABC', 't', 't', 0, NULL, '2022-08-20 10:26:05', '2022-08-20 10:26:05');

-- ----------------------------
-- Table structure for afs_penasihat
-- ----------------------------
DROP TABLE IF EXISTS `afs_penasihat`;
CREATE TABLE `afs_penasihat`  (
  `no_register` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `verifikasi` int(11) NULL DEFAULT NULL,
  `keterangan_verifikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no_register`) USING BTREE,
  CONSTRAINT `afs_penasihat_no_register_foreign` FOREIGN KEY (`no_register`) REFERENCES `users` (`no_register`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_penasihat
-- ----------------------------
INSERT INTO `afs_penasihat` VALUES ('14000120220811ABC', 'Test', '123', 0, NULL, '2022-08-20 10:26:05', '2022-08-20 10:26:05');

-- ----------------------------
-- Table structure for afs_pendiri
-- ----------------------------
DROP TABLE IF EXISTS `afs_pendiri`;
CREATE TABLE `afs_pendiri`  (
  `no_register` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `verifikasi` int(11) NULL DEFAULT NULL,
  `keterangan_verifikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no_register`) USING BTREE,
  CONSTRAINT `afs_pendiri_no_register_foreign` FOREIGN KEY (`no_register`) REFERENCES `users` (`no_register`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_pendiri
-- ----------------------------
INSERT INTO `afs_pendiri` VALUES ('14000120220811ABC', 'u', 'u', 0, NULL, '2022-08-20 10:26:05', '2022-08-20 10:26:05');

-- ----------------------------
-- Table structure for afs_permohonan
-- ----------------------------
DROP TABLE IF EXISTS `afs_permohonan`;
CREATE TABLE `afs_permohonan`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_permohonan
-- ----------------------------
INSERT INTO `afs_permohonan` VALUES (1, 'Daftar Akun', '2022-08-15 09:05:34', '2022-08-15 09:05:34');
INSERT INTO `afs_permohonan` VALUES (2, 'Verifikasi Data', '2022-08-15 09:05:34', '2022-08-15 09:05:34');
INSERT INTO `afs_permohonan` VALUES (3, 'Verfikasi Lapangan', '2022-08-15 09:05:34', '2022-08-15 09:05:34');
INSERT INTO `afs_permohonan` VALUES (4, 'Surat Keberadaan', '2022-08-15 09:05:34', '2022-08-15 09:05:34');
INSERT INTO `afs_permohonan` VALUES (5, 'Selesai', '2022-08-15 09:05:34', '2022-08-15 09:05:34');

-- ----------------------------
-- Table structure for afs_persyaratan
-- ----------------------------
DROP TABLE IF EXISTS `afs_persyaratan`;
CREATE TABLE `afs_persyaratan`  (
  `nama_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `akta_id_ormas` int(11) NOT NULL,
  `nama_notaris_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_akta_notaris_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_akta_notaris_ormaspol` date NOT NULL,
  `no_surat_permohonan_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat_permohonan_ormaspol` date NOT NULL,
  `bidang_id_ormas` int(11) NOT NULL,
  `subbidang_id_ormas` int(11) NOT NULL,
  `alamat_kantor_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_pendirian_ormas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_pendirian_ormas` date NOT NULL,
  `no_sk_kepengurusan_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan_ormas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_kerja_ormas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keputusan_tinggi_ormas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kepengurusan_id_ormas` int(11) NOT NULL,
  `npwp_ormaspol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_sk_ahu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_ahu` date NOT NULL,
  `tahun_ahu` year NOT NULL,
  `no_register` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verifikasi` int(11) NOT NULL,
  `keterangan_verifikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no_register`) USING BTREE,
  CONSTRAINT `afs_persyaratan_no_register_foreign` FOREIGN KEY (`no_register`) REFERENCES `users` (`no_register`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_persyaratan
-- ----------------------------
INSERT INTO `afs_persyaratan` VALUES ('jkjk', 'kjkjk', 1, 'kjjk', 'jkjkj', '2022-08-20', 'jkjk', '2022-08-20', 2, 3, 'gyhgh', 'ghghjhk', '2022-08-20', 'hjhj', '<p>dftgdf<br></p>', '<p>jkjk<br></p>', 'hjhj', 1, 'fgf', 'fgfg', 'dfdf', '2022-08-20', 2001, '06244920220819NUTJ', 0, NULL, '2022-08-20 16:25:53', '2022-08-20 16:25:53');
INSERT INTO `afs_persyaratan` VALUES ('Test Nama Ormas', 'SIngkatan ORMAS', 1, 'dites', 'dites', '2022-08-20', 'gjgj', '2022-08-27', 1, 1, 'cxbb', 'tyty', '2022-08-20', 'etet', '<p>YES<br></p>', '<p>OK<br></p>', 'Ketua', 1, 'fd', 'ok', 'fgfg', '2022-08-31', 2022, '14000120220811ABC', 0, NULL, '2022-08-20 07:11:38', '2022-08-21 16:15:08');

-- ----------------------------
-- Table structure for afs_role
-- ----------------------------
DROP TABLE IF EXISTS `afs_role`;
CREATE TABLE `afs_role`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_role
-- ----------------------------
INSERT INTO `afs_role` VALUES (1, 'Administrator', '2022-08-15 09:05:34', '2022-08-15 09:05:34');
INSERT INTO `afs_role` VALUES (2, 'Verifikator', '2022-08-15 09:05:34', '2022-08-15 09:05:34');
INSERT INTO `afs_role` VALUES (3, 'User', '2022-08-15 09:05:34', '2022-08-15 09:05:34');

-- ----------------------------
-- Table structure for afs_sekretaris
-- ----------------------------
DROP TABLE IF EXISTS `afs_sekretaris`;
CREATE TABLE `afs_sekretaris`  (
  `no_register` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `masa_bakti_awal` date NULL DEFAULT NULL,
  `masa_bakti_akhir` date NULL DEFAULT NULL,
  `verifikasi` int(11) NULL DEFAULT NULL,
  `keterangan_verifikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file_ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_ktp_v` int(11) NULL DEFAULT NULL,
  `file_foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_foto_v` int(11) NULL DEFAULT NULL,
  `file_cv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_cv_v` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no_register`) USING BTREE,
  CONSTRAINT `afs_sekretaris_no_register_foreign` FOREIGN KEY (`no_register`) REFERENCES `users` (`no_register`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_sekretaris
-- ----------------------------
INSERT INTO `afs_sekretaris` VALUES ('14000120220811ABC', 'teds', '444', '2022-08-20', '2022-08-31', 0, NULL, 'ktp_pengurus/Z8Ev4Ikxy9xjnlpKa0RE84iXrqk3msQfpMMB6vtn.pdf', 0, 'foto_pengurus/JJJattodFdIDQHO8FFKQCoiTCtcO3tIoKE9tnXJV.pdf', 0, 'cv_pengurus/OPu4h4lxZZLTPpEuc2391L6JsUr20fBsNCPqEkN1.pdf', 0, '2022-08-20 17:23:32', '2022-08-20 17:23:32');

-- ----------------------------
-- Table structure for afs_subbidang
-- ----------------------------
DROP TABLE IF EXISTS `afs_subbidang`;
CREATE TABLE `afs_subbidang`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bidang_id` bigint(20) UNSIGNED NOT NULL,
  `subbidang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `afs_subbidang_bidang_id_foreign`(`bidang_id`) USING BTREE,
  CONSTRAINT `afs_subbidang_bidang_id_foreign` FOREIGN KEY (`bidang_id`) REFERENCES `afs_bidang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afs_subbidang
-- ----------------------------
INSERT INTO `afs_subbidang` VALUES (1, 1, 'Islam', '2022-08-19 09:50:31', '2022-08-19 09:50:31');
INSERT INTO `afs_subbidang` VALUES (2, 1, 'Test', '2022-08-19 09:52:33', '2022-08-19 09:52:33');
INSERT INTO `afs_subbidang` VALUES (3, 2, 'OK1', '2022-08-19 09:56:44', '2022-08-19 09:56:44');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2013_05_07_083139_create_afs_role_table', 1);
INSERT INTO `migrations` VALUES (2, '2013_07_30_091652_create_afs_permohonan_table', 1);
INSERT INTO `migrations` VALUES (3, '2013_07_30_092010_create_afs_kategori_table', 1);
INSERT INTO `migrations` VALUES (4, '2014_10_07_095812_create_afs_akta_notaris_table', 1);
INSERT INTO `migrations` VALUES (5, '2014_10_08_102027_create_afs_kepengurusan_table', 1);
INSERT INTO `migrations` VALUES (6, '2014_10_09_103336_create_afs_bidang_table', 1);
INSERT INTO `migrations` VALUES (7, '2014_10_10_105403_create_afs_subbidang_table', 1);
INSERT INTO `migrations` VALUES (8, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (9, '2014_10_12_000001_create_afs_ketua_table', 1);
INSERT INTO `migrations` VALUES (10, '2014_10_12_000002_create_afs_sekretaris_table', 1);
INSERT INTO `migrations` VALUES (11, '2014_10_12_000003_create_afs_dokumen_table', 1);
INSERT INTO `migrations` VALUES (12, '2014_10_12_000003_create_afs_persyaratan_table', 1);
INSERT INTO `migrations` VALUES (13, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (14, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1);
INSERT INTO `migrations` VALUES (15, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (16, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (17, '2014_10_12_000003_create_afs_bendahara_table', 2);
INSERT INTO `migrations` VALUES (21, '2014_10_12_000004_create_afs_pendiri_table', 6);
INSERT INTO `migrations` VALUES (22, '2014_10_12_000005_create_afs_pembina_table', 7);
INSERT INTO `migrations` VALUES (23, '2014_10_12_000006_create_afs_penasihat_table', 8);
INSERT INTO `migrations` VALUES (24, '2014_10_12_000007_create_afs_dokumen_table', 9);
INSERT INTO `migrations` VALUES (26, '2014_10_12_000009_create_afs_status_permohonan_table', 10);
INSERT INTO `migrations` VALUES (31, '2014_10_12_000008_create_afs_persyaratan_table', 11);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `nik` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `jenis_kelamin` tinyint(4) NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `rt` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rw` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `no_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scan_ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `roles` tinyint(4) NOT NULL,
  `no_register` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permohonan_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `kategori_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  INDEX `users_kategori_id_foreign`(`kategori_id`) USING BTREE,
  INDEX `users_permohonan_id_foreign`(`permohonan_id`) USING BTREE,
  INDEX `users_no_register_index`(`no_register`) USING BTREE,
  CONSTRAINT `users_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `afs_kategori` (`id`) ON DELETE NO ACTION ON UPDATE RESTRICT,
  CONSTRAINT `users_permohonan_id_foreign` FOREIGN KEY (`permohonan_id`) REFERENCES `afs_permohonan` (`id`) ON DELETE NO ACTION ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Super Administrator', 'super@admin.dev', '2022-08-15 09:08:34', '$2y$10$29.gVIWYJElcByh.h6ZWlOliG3WN4DEM90yssQ0D1p5iA6sK/m9Du', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-08-15 09:05:34', '2022-08-20 16:21:21');
INSERT INTO `users` VALUES (2, 'User Pendaftar', 'user@admin.dev', '2022-08-15 09:08:35', '$2y$10$FK4afpm5AEqzS5xgop1plOhPYMRPSjksK89hHHf3Z7I.rLGrj2mbC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '14000120220811ABC', NULL, 2, 1, '2022-08-15 09:05:35', '2022-08-20 17:50:03');
INSERT INTO `users` VALUES (3, 'Ardika', 'afsutisna@gmail.com', '2022-08-19 18:25:28', '$2y$10$upaI1XJ6A31yC9NARLmzMOk/ruLZeWgmpjIXG1iCEKhGn.oLszESi', NULL, NULL, '222', 'sdsf', '2022-08-19', 2, 'sfsf', '8', '8', '4545', 'ktp_pendaftar/wXV0s90BqmIq4FKD7OB2QIwEH9vL1Toyb9OoVNOq.jpg', 3, '06244920220819NUTJ', NULL, 1, 2, '2022-08-19 18:24:49', '2022-08-19 18:25:28');

SET FOREIGN_KEY_CHECKS = 1;
