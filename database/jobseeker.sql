/*
 Navicat Premium Data Transfer

 Source Server         : local root
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : jobseeker

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 24/11/2023 15:01:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_11_24_023444_create_candidates_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for t_candidate
-- ----------------------------
DROP TABLE IF EXISTS `t_candidate`;
CREATE TABLE `t_candidate`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `full_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_exp` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `t_candidate_email_unique`(`email` ASC) USING BTREE,
  UNIQUE INDEX `t_candidate_phone_number_unique`(`phone_number` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_candidate
-- ----------------------------
INSERT INTO `t_candidate` VALUES (1, 'umi.oktaviani@example.org', '088192286615', 'Eli Paris Fujiati', '1979-12-09', 'Tual', 'm', '20', '23900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (2, 'ozulaika@example.com', '088152918198', 'Salimah Oni Astuti', '2022-03-01', 'Binjai', 'f', '10', '13000000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (3, 'palastri.kasiyah@example.com', '087403077265', 'Zelda Ellis Wastuti S.E.', '1974-11-01', 'Cilegon', 'm', '2', '23700000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (4, 'cemplunk.purnawati@example.com', '083771296333', 'Titin Fujiati', '2023-05-25', 'Bandung', 'f', '9', '21100000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (5, 'elailasari@example.com', '087801033942', 'Kania Mandasari S.Pt', '2019-10-17', 'Tangerang Selatan', 'm', '10', '16300000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (6, 'eva59@example.org', '081522410162', 'Tasnim Marwata Zulkarnain M.Ak', '1983-02-11', 'Mojokerto', 'm', '3', '20600000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (7, 'azalea32@example.org', '084634740528', 'Hari Kurniawan S.E.', '2013-11-20', 'Lhokseumawe', 'f', '6', '14300000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (8, 'darman20@example.net', '086492838890', 'Okta Narpati', '1985-11-16', 'Magelang', 'f', '3', '22900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (9, 'januar.hilda@example.com', '089029951847', 'Belinda Suryatmi M.Pd', '1988-08-01', 'Batu', 'f', '0', '8000000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (11, 'xsalahudin@example.net', '082954516413', 'Ciaobella Mila Rahimah', '1978-06-28', 'Tangerang Selatan', 'f', '13', '21300000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (12, 'wibowo.jagaraga@example.org', '080390954026', 'Zelaya Puspasari', '2018-09-25', 'Bontang', 'm', '19', '18500000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (13, 'laswi12@example.com', '080495628347', 'Cinthia Lestari S.Ked', '1976-03-10', 'Ternate', 'm', '18', '13900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (14, 'usuryatmi@example.com', '086039045457', 'Umar Asman Putra', '1976-07-28', 'Probolinggo', 'f', '20', '23600000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (15, 'uyainah.kurnia@example.com', '084299677687', 'Atma Sihombing', '1976-09-21', 'Banjarbaru', 'm', '11', '14300000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (16, 'rahayu98@example.net', '084445906798', 'Jaeman Budiman', '1980-06-17', 'Tangerang Selatan', 'f', '19', '16500000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (17, 'lgunarto@example.com', '081427214831', 'Cakrajiya Gangsar Kurniawan', '1989-04-29', 'Administrasi Jakarta Barat', 'f', '3', '24600000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (18, 'laksita.ilsa@example.com', '088489527557', 'Kasiran Prasetya', '2008-09-05', 'Probolinggo', 'm', '19', '17300000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (19, 'hrahmawati@example.net', '086702642471', 'Agus Pangestu', '2016-03-15', 'Lhokseumawe', 'm', '1', '16800000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (20, 'briyanti@example.org', '088601759004', 'Mahdi Limar Winarno M.M.', '1980-02-03', 'Balikpapan', 'm', '18', '10900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (21, 'simbolon.raina@example.org', '081249936087', 'Latika Puspasari', '2011-07-01', 'Tangerang', 'm', '20', '21600000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (22, 'cakrabirawa.saptono@example.org', '087093369839', 'Sari Handayani', '1998-02-27', 'Jambi', 'm', '13', '21700000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (23, 'vicky85@example.com', '080414843820', 'Tami Hesti Wulandari', '1979-09-29', 'Surabaya', 'm', '7', '14300000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (24, 'wahyudin.puspa@example.net', '081423740266', 'Karsa Estiawan Waluyo S.E.', '2001-06-13', 'Lubuklinggau', 'm', '12', '17000000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (25, 'cahyadi.gunarto@example.org', '089057179750', 'Ciaobella Usamah S.I.Kom', '2021-06-23', 'Yogyakarta', 'm', '18', '16100000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (26, 'gunawan.lega@example.com', '083311858267', 'Fathonah Dian Haryanti', '2008-06-28', 'Bau-Bau', 'f', '14', '24400000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (27, 'cmaulana@example.org', '085334167579', 'Nilam Pudjiastuti S.E.I', '1990-11-17', 'Tasikmalaya', 'm', '20', '20400000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (28, 'wulandari.cahya@example.net', '081792086879', 'Muni Lazuardi', '2022-07-01', 'Subulussalam', 'm', '1', '17500000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (29, 'hpuspasari@example.org', '088203583255', 'Ciaobella Namaga M.TI.', '1991-04-09', 'Banjar', 'm', '13', '17600000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (30, 'epalastri@example.org', '084778537706', 'Sabrina Usada S.Ked', '1991-09-26', 'Kotamobagu', 'f', '7', '18500000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (31, 'kardi91@example.net', '081032718027', 'Olivia Lailasari', '1996-05-12', 'Lhokseumawe', 'f', '0', '9700000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (32, 'nasyidah.luwar@example.org', '086557676771', 'Cemplunk Siregar', '1971-04-07', 'Pekalongan', 'f', '12', '12900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (33, 'qutama@example.com', '081728377856', 'Elon Pradana', '2013-06-09', 'Surakarta', 'f', '6', '17000000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (34, 'zaenab.wulandari@example.net', '086934021818', 'Sabar Mansur', '1978-05-02', 'Sorong', 'm', '9', '8700000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (35, 'shakila.riyanti@example.com', '086578159710', 'Ana Iriana Rahmawati S.Kom', '2008-11-23', 'Bandung', 'm', '9', '19700000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (36, 'opung.maryadi@example.net', '080692174650', 'Rachel Nurdiyanti', '2021-07-31', 'Serang', 'm', '10', '22500000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (37, 'qpertiwi@example.com', '084910895093', 'Salsabila Uyainah', '2009-04-23', 'Tomohon', 'm', '18', '22100000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (38, 'pratiwi.dodo@example.com', '081753801807', 'Gatot Sitorus', '2022-11-27', 'Sawahlunto', 'm', '20', '11200000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (39, 'siregar.nardi@example.org', '084595502124', 'Rendy Mansur', '1984-02-21', 'Parepare', 'f', '16', '15000000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (40, 'septi27@example.com', '088822960281', 'Setya Adriansyah', '1972-02-12', 'Parepare', 'f', '9', '13400000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (41, 'ikhsan.utama@example.org', '086271382501', 'Jati Marpaung', '2023-08-14', 'Malang', 'm', '10', '16600000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (42, 'hafshah29@example.com', '082199547326', 'Lili Susanti', '2017-06-04', 'Pasuruan', 'm', '7', '18800000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (43, 'natalia93@example.com', '087983544740', 'Bakianto Gunarto', '1973-11-22', 'Pontianak', 'f', '2', '20000000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (44, 'lintang22@example.com', '086107770797', 'Cengkir Mandala S.Sos', '1992-05-07', 'Tangerang', 'm', '0', '18200000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (45, 'cindy.permadi@example.com', '086902293541', 'Sabrina Uyainah', '1971-11-21', 'Metro', 'm', '5', '13900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (46, 'tprakasa@example.com', '083644333937', 'Kawaca Prasetya', '1977-06-09', 'Administrasi Jakarta Pusat', 'f', '3', '20200000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (47, 'winarsih.gaduh@example.net', '080005551172', 'Banara Situmorang', '2006-09-10', 'Jayapura', 'm', '12', '14900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (48, 'jais.mulyani@example.com', '089755379942', 'Michelle Hassanah', '2008-07-12', 'Ternate', 'm', '18', '22300000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (49, 'tania56@example.org', '088886375334', 'Simon Prayoga', '1988-01-15', 'Binjai', 'm', '2', '18500000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (50, 'genta.halimah@example.org', '084087004872', 'Dadi Permadi', '1983-09-21', 'Sorong', 'f', '4', '9400000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (51, 'aryani.sadina@example.com', '088314096126', 'Jessica Febi Riyanti S.E.', '2022-06-07', 'Bau-Bau', 'f', '13', '20700000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (52, 'vanggriawan@example.org', '086918103541', 'Clara Laksmiwati M.Kom.', '1993-12-16', 'Bengkulu', 'f', '5', '24000000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (53, 'dariati76@example.org', '088332423416', 'Lalita Laras Namaga', '2004-10-03', 'Blitar', 'f', '14', '23500000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (54, 'twulandari@example.com', '089319778856', 'Hartana Sihotang', '2015-04-01', 'Subulussalam', 'f', '5', '13200000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (55, 'sirait.uli@example.net', '084697465766', 'Zelda Wirda Maryati S.E.', '1992-05-04', 'Mataram', 'm', '10', '16200000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (56, 'tirtayasa97@example.com', '085007508967', 'Nurul Permata', '1971-04-29', 'Pekalongan', 'f', '5', '12900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (57, 'mulya35@example.com', '081570105556', 'Radit Saragih', '1979-10-16', 'Binjai', 'f', '3', '18800000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (58, 'amalia.novitasari@example.net', '085146441171', 'Heru Situmorang', '2013-08-03', 'Denpasar', 'm', '2', '17100000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (59, 'prasetya.digdaya@example.com', '084992764239', 'Victoria Oktaviani', '1977-10-13', 'Probolinggo', 'f', '16', '8900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (60, 'zusada@example.org', '083135903225', 'Tira Jamalia Andriani', '2018-09-09', 'Gorontalo', 'f', '20', '8400000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (61, 'maheswara.gaiman@example.org', '081459736934', 'Liman Widodo', '2005-03-18', 'Palembang', 'm', '12', '8000000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (62, 'ilaksmiwati@example.net', '083155708127', 'Hendra Latif Ramadan M.Farm', '2018-07-11', 'Yogyakarta', 'm', '18', '20400000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (63, 'yance.kusmawati@example.com', '086661553045', 'Siti Fujiati', '1991-12-11', 'Solok', 'm', '13', '22200000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (64, 'mandasari.shania@example.net', '081130484905', 'Lasmono Najam Megantara', '2010-08-29', 'Banjar', 'f', '7', '13900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (65, 'namaga.gilda@example.org', '080002680439', 'Dartono Gading Siregar', '1973-03-01', 'Denpasar', 'f', '20', '12300000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (66, 'laras53@example.com', '082796101932', 'Niyaga Firmansyah S.IP', '2009-08-31', 'Mojokerto', 'm', '4', '22000000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (67, 'awijayanti@example.net', '083991840452', 'Hilda Puspita', '1990-05-01', 'Semarang', 'f', '16', '12900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (68, 'csafitri@example.net', '080768602188', 'Heryanto Maryadi Januar S.IP', '2014-05-16', 'Tarakan', 'f', '2', '14700000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (69, 'lailasari.mahfud@example.com', '082783485878', 'Oni Pertiwi M.Kom.', '1973-05-19', 'Bogor', 'm', '9', '16300000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (70, 'balidin.hardiansyah@example.com', '086284257837', 'Gangsa Dwi Napitupulu', '1998-06-08', 'Pontianak', 'm', '6', '20200000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (71, 'ika.suwarno@example.net', '088694408424', 'Emin Thamrin M.Farm', '1997-04-21', 'Mojokerto', 'm', '8', '13900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (72, 'oni84@example.com', '084662773423', 'Balidin Santoso', '2023-03-01', 'Pagar Alam', 'f', '10', '18500000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (73, 'yuliarti.ulya@example.com', '083171672642', 'Wadi Lantar Sinaga', '2009-07-18', 'Metro', 'm', '7', '10600000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (74, 'chutasoit@example.org', '086740846682', 'Sakti Vino Adriansyah', '2023-10-28', 'Yogyakarta', 'm', '11', '11300000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (75, 'adikara.wibisono@example.org', '085769692056', 'Ajimin Firmansyah', '1971-04-23', 'Kotamobagu', 'm', '19', '15400000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (76, 'mwaluyo@example.org', '082514164577', 'Dian Fujiati', '1992-05-07', 'Dumai', 'f', '13', '12600000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (77, 'nilam71@example.org', '082087848256', 'Taufan Ozy Rajasa', '2000-02-26', 'Tanjung Pinang', 'm', '7', '24900000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (78, 'puspasari.karsa@example.net', '089633074645', 'Endah Mulyani M.M.', '1994-05-25', 'Pematangsiantar', 'f', '5', '12700000', '2023-11-24 10:20:39', '2023-11-24 10:20:39');
INSERT INTO `t_candidate` VALUES (79, 'hardiansyah.gawati@example.org', '081750925430', 'Puput Kusmawati M.Pd', '2006-03-01', 'Banjar', 'f', '7', '23000000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (80, 'jkurniawan@example.org', '082670153484', 'Julia Susanti', '2017-08-26', 'Sibolga', 'f', '17', '8100000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (81, 'yolanda.ami@example.net', '083190756965', 'Betania Nasyidah S.IP', '1994-07-09', 'Manado', 'f', '19', '13900000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (82, 'dasa.wulandari@example.org', '084379709465', 'Radika Jaeman Saptono S.Pt', '1993-04-10', 'Administrasi Jakarta Utara', 'f', '11', '15600000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (83, 'santoso.ana@example.org', '088298220471', 'Jessica Yance Yuniar S.Psi', '2000-10-24', 'Samarinda', 'f', '2', '11700000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (84, 'saptono.yance@example.com', '087070549377', 'Balamantri Mangunsong', '1971-01-13', 'Surakarta', 'f', '16', '23100000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (85, 'septi06@example.org', '083004489841', 'Lukita Mansur', '1975-03-08', 'Denpasar', 'm', '16', '24800000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (86, 'qlaksmiwati@example.net', '083613976926', 'Darmana Daruna Prasasta', '2023-02-08', 'Batu', 'f', '14', '23000000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (87, 'astuti.jarwi@example.org', '081550509781', 'Ikin Zulkarnain S.I.Kom', '2003-10-27', 'Bekasi', 'm', '7', '17800000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (88, 'intan80@example.net', '080324363173', 'Hesti Palastri', '2011-09-22', 'Malang', 'm', '5', '24200000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (89, 'edison.wibowo@example.org', '082757544807', 'Kamal Samosir', '2005-04-12', 'Jambi', 'm', '8', '23000000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (90, 'sihombing.sakti@example.com', '082542593892', 'Cakrawala Setiawan', '1997-12-05', 'Denpasar', 'f', '19', '19700000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (91, 'purnawati.wardaya@example.com', '086624182033', 'Bajragin Simbolon', '2015-01-19', 'Bukittinggi', 'f', '5', '8600000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (92, 'azalea.yuliarti@example.net', '084801469292', 'Ajeng Hasanah', '1981-10-22', 'Tomohon', 'f', '1', '22500000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (93, 'wahyudin.prabu@example.org', '082484242019', 'Okta Martaka Pratama M.M.', '2022-05-14', 'Banjar', 'm', '17', '16500000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (94, 'arta.damanik@example.com', '082478970553', 'Eka Putra', '2009-08-19', 'Magelang', 'f', '14', '12000000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (95, 'tari.nuraini@example.net', '087975232386', 'Gawati Rini Oktaviani S.Kom', '2020-01-08', 'Banjarmasin', 'm', '7', '9400000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (96, 'natalia66@example.org', '088208035636', 'Radika Adika Permadi M.Pd', '1993-08-27', 'Madiun', 'f', '3', '12800000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (97, 'imam.megantara@example.com', '081948838154', 'Hamima Purwanti S.Pt', '2001-03-08', 'Bima', 'f', '16', '10000000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (98, 'yulianti.belinda@example.org', '081044041876', 'Gada Wahyudin', '2000-04-08', 'Jambi', 'f', '10', '8500000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (99, 'calista70@example.org', '085709644616', 'Jaeman Napitupulu', '1998-10-01', 'Ternate', 'm', '5', '15200000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (100, 'handayani.warsita@example.org', '089713741721', 'Sarah Kuswandari M.M.', '2011-11-11', 'Palangka Raya', 'm', '0', '16000000', '2023-11-24 10:20:40', '2023-11-24 10:20:40');
INSERT INTO `t_candidate` VALUES (104, 'bagdoraemon1@gmail.com', '0897137417212', 'Jordy lite version', '2002-12-29', 'Jakarta', 'm', '2', '5000000', '2023-11-24 14:40:22', '2023-11-24 14:59:06');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
