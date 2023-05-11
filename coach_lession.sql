-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2023 at 10:01 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coach_lession_backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `c_l_blogs`
--

CREATE TABLE `c_l_blogs` (
  `sid` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `browse_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_blog_comments`
--

CREATE TABLE `c_l_blog_comments` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `blog_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_blog_likes`
--

CREATE TABLE `c_l_blog_likes` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `blog_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_certification`
--

CREATE TABLE `c_l_certification` (
  `sid` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_certification`
--

INSERT INTO `c_l_certification` (`sid`, `name`) VALUES
(17, 'ACE-CPT 私人教練證照'),
(18, 'ACE-GFI 團課教練證照'),
(19, 'ACE-HC 健康教練證照'),
(20, 'ACE-MES 醫學運動專家'),
(4, 'ACSM-CEP 醫療運動生理師'),
(1, 'ACSM-CPT 私人教練證照'),
(3, 'ACSM-EPC 運動生理學家證照'),
(2, 'ACSM-GEI 團課教練證照'),
(5, 'ACSM-RCEP 註冊醫療運動生理師'),
(23, 'AFAA-FDI國際體適能有氧舞蹈指導員'),
(26, 'AFAA-KB拳擊體適能'),
(24, 'AFAA-MAT墊上核心訓練'),
(21, 'AFAA-PFT個人體適能顧問'),
(25, 'AFAA-STEP階梯有氧'),
(22, 'AFAA-WT重量訓練'),
(45, 'FTC功能訓練師'),
(48, 'GTC團體訓練師'),
(13, 'NASM-CES 矯正運動專家'),
(16, 'NASM-CNC 營養教練認證'),
(11, 'NASM-CPT 私人教練證照'),
(12, 'NASM-PES 表現提升專家'),
(15, 'NASM-SFS 銀髮族訓練專家'),
(14, 'NASM-YES 青少年體能訓練專家'),
(41, 'NCSF-CPT 私人教練認證'),
(42, 'NCSF-CSC 肌力教練証認'),
(43, 'NCSF-SNS 運動營養專家'),
(10, 'NSCA-CPSS 運動表現科學家'),
(6, 'NSCA-CPT 私人教練證照'),
(7, 'NSCA-CSCS 肌力與體能訓練專家'),
(8, 'NSCA-CSPS 特殊族群訓練專家'),
(9, 'NSCA-TSAC 戰術肌力與體能訓練師'),
(37, 'PTAG-CPT 私人教練認證'),
(39, 'PTAG-ESM Lv1 情緒與壓力管理Lv1'),
(36, 'PTAG-Foundation 基礎課程'),
(38, 'PTAG-Mentorship Lv1 引導力Lv1'),
(40, 'PTAG-Mentorship Lv2 引導力Lv2'),
(46, 'RTC彈力棍訓練師'),
(49, 'SMSTC運動醫學懸吊訓練師'),
(44, 'STC懸吊訓練師'),
(47, 'YOGA瑜珈'),
(30, 'Zumba-AQUA'),
(27, 'Zumba-Basic1&2'),
(28, 'Zumba-Gold'),
(34, 'Zumba-JamSession'),
(29, 'Zumba-Kids+Kids Jr.'),
(33, 'Zumba-Pro Skills'),
(31, 'Zumba-Step'),
(35, 'Zumba-Strong'),
(32, 'Zumba-TONING');

-- --------------------------------------------------------

--
-- Table structure for table `c_l_classroom`
--

CREATE TABLE `c_l_classroom` (
  `sid` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `max_capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_classroom`
--

INSERT INTO `c_l_classroom` (`sid`, `name`, `max_capacity`) VALUES
(1, '202', 20),
(2, '203', 40),
(3, '204', 40);

-- --------------------------------------------------------

--
-- Table structure for table `c_l_coach`
--

CREATE TABLE `c_l_coach` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `experience` varchar(512) DEFAULT NULL,
  `introduction` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_coach_comments`
--

CREATE TABLE `c_l_coach_comments` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_coach_likes`
--

CREATE TABLE `c_l_coach_likes` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_expertise`
--

CREATE TABLE `c_l_expertise` (
  `sid` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_expertise`
--

INSERT INTO `c_l_expertise` (`sid`, `name`) VALUES
(2, 'TRX課程訓練'),
(61, '代謝調節和體脂控制'),
(73, '休閒運動和健身活動策劃'),
(41, '伸展與放鬆訓練'),
(71, '健身比賽和競技活動的預備訓練'),
(48, '前後推進訓練'),
(33, '力量訓練'),
(16, '動態伸展訓練'),
(44, '協調性訓練'),
(65, '團體運動和團隊建設'),
(3, '增肌減脂訓練'),
(9, '壺鈴課程訓練'),
(52, '女性健康體適能訓練'),
(15, '平衡訓練'),
(34, '循環訓練'),
(72, '心肺復健和運動治療'),
(12, '心肺訓練'),
(26, '忍耐力訓練'),
(47, '手臂訓練'),
(49, '手部訓練'),
(36, '持久力訓練'),
(19, '敏捷性訓練'),
(50, '整體身體訓練'),
(56, '有氧訓練'),
(8, '有氧間歇訓練'),
(10, '柔軟度訓練'),
(18, '核心力量訓練'),
(57, '核心訓練'),
(40, '格鬥技訓練'),
(14, '槓鈴訓練'),
(39, '機能性訓練'),
(22, '游泳訓練'),
(45, '爆發力訓練'),
(25, '瑜伽訓練'),
(51, '產後婦女指導訓練'),
(68, '產後復健和健身'),
(67, '老年人健身和功能訓練'),
(11, '耐力訓練'),
(53, '肌力與體能訓練'),
(37, '肌耐力訓練'),
(1, '肌肥大訓練'),
(31, '肩膀訓練'),
(30, '背部訓練'),
(29, '胸肌訓練'),
(46, '腳踝訓練'),
(13, '腹肌訓練'),
(28, '腹部訓練'),
(27, '腿部訓練'),
(32, '臂部訓練'),
(43, '舉重訓練'),
(21, '舞蹈訓練'),
(38, '跑步訓練'),
(17, '跳繩訓練'),
(42, '跳躍力訓練'),
(20, '運動傷害預防'),
(60, '運動傷害預防和康復'),
(5, '運動功能性檢測'),
(4, '運動員體能訓練'),
(23, '運動康復訓練'),
(63, '運動心理學和動力學'),
(69, '運動特殊群體（如孕婦、兒童、殘障人士）的訓練'),
(64, '運動生理學和解剖學'),
(70, '運動補充品和營養補助品指導'),
(66, '運動訓練計劃和目標設定'),
(55, '重量訓練'),
(24, '長跑訓練'),
(58, '靈活性訓練'),
(62, '飲食指導和營養計劃'),
(59, '體態矯正'),
(7, '體態評估及雕塑'),
(54, '體能訓練'),
(6, '體適能指導訓練'),
(35, '高強度間歇訓練（HIIT）');

-- --------------------------------------------------------

--
-- Table structure for table `c_l_lession`
--

CREATE TABLE `c_l_lession` (
  `sid` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `classroom_sid` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `photo` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `max_capacity` int(11) NOT NULL,
  `enrollment_quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_lession_comments`
--

CREATE TABLE `c_l_lession_comments` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `lession_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_lession_likes`
--

CREATE TABLE `c_l_lession_likes` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `lession_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_rela_blog_tag`
--

CREATE TABLE `c_l_rela_blog_tag` (
  `sid` int(11) NOT NULL,
  `blog_sid` int(11) NOT NULL,
  `tag_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_rela_coach_certification`
--

CREATE TABLE `c_l_rela_coach_certification` (
  `sid` int(11) NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `certification_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_rela_coach_expertise`
--

CREATE TABLE `c_l_rela_coach_expertise` (
  `sid` int(11) NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `expertise_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_rela_lession_tag`
--

CREATE TABLE `c_l_rela_lession_tag` (
  `sid` int(11) NOT NULL,
  `lession_sid` int(11) NOT NULL,
  `tag_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_tag`
--

CREATE TABLE `c_l_tag` (
  `sid` int(11) NOT NULL,
  `name` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_l_blogs`
--
ALTER TABLE `c_l_blogs`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_blog_comments`
--
ALTER TABLE `c_l_blog_comments`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_blog_likes`
--
ALTER TABLE `c_l_blog_likes`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_certification`
--
ALTER TABLE `c_l_certification`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `c_l_classroom`
--
ALTER TABLE `c_l_classroom`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_coach`
--
ALTER TABLE `c_l_coach`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `member_sid` (`member_sid`);

--
-- Indexes for table `c_l_coach_comments`
--
ALTER TABLE `c_l_coach_comments`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_coach_likes`
--
ALTER TABLE `c_l_coach_likes`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_expertise`
--
ALTER TABLE `c_l_expertise`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `c_l_lession`
--
ALTER TABLE `c_l_lession`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_lession_comments`
--
ALTER TABLE `c_l_lession_comments`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_lession_likes`
--
ALTER TABLE `c_l_lession_likes`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_rela_blog_tag`
--
ALTER TABLE `c_l_rela_blog_tag`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_rela_coach_certification`
--
ALTER TABLE `c_l_rela_coach_certification`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_rela_coach_expertise`
--
ALTER TABLE `c_l_rela_coach_expertise`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_rela_lession_tag`
--
ALTER TABLE `c_l_rela_lession_tag`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_tag`
--
ALTER TABLE `c_l_tag`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_l_blogs`
--
ALTER TABLE `c_l_blogs`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_blog_comments`
--
ALTER TABLE `c_l_blog_comments`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_blog_likes`
--
ALTER TABLE `c_l_blog_likes`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_certification`
--
ALTER TABLE `c_l_certification`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `c_l_classroom`
--
ALTER TABLE `c_l_classroom`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `c_l_coach`
--
ALTER TABLE `c_l_coach`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_coach_comments`
--
ALTER TABLE `c_l_coach_comments`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_coach_likes`
--
ALTER TABLE `c_l_coach_likes`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_expertise`
--
ALTER TABLE `c_l_expertise`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `c_l_lession`
--
ALTER TABLE `c_l_lession`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_lession_comments`
--
ALTER TABLE `c_l_lession_comments`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_lession_likes`
--
ALTER TABLE `c_l_lession_likes`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_rela_blog_tag`
--
ALTER TABLE `c_l_rela_blog_tag`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_rela_coach_certification`
--
ALTER TABLE `c_l_rela_coach_certification`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_rela_coach_expertise`
--
ALTER TABLE `c_l_rela_coach_expertise`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_rela_lession_tag`
--
ALTER TABLE `c_l_rela_lession_tag`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_tag`
--
ALTER TABLE `c_l_tag`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
