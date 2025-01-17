
-- 테이블 드롭
DROP TABLE IF EXISTS bh_member;
DROP TABLE IF EXISTS bh_member_point;
DROP TABLE IF EXISTS bh_book;
DROP TABLE IF EXISTS bh_user_point;
DROP TABLE IF EXISTS bh_product_cart;
DROP TABLE IF EXISTS bh_book_borrow;
DROP TABLE IF EXISTS bh_cs_qna;
DROP TABLE IF EXISTS bh_cs_qna_reply;
DROP TABLE IF EXISTS bh_cs_file;
DROP TABLE IF EXISTS bh_cs_faq;
DROP TABLE IF EXISTS bh_cs_notice;
DROP TABLE IF EXISTS bh_banner;
DROP TABLE IF EXISTS bh_payment;
DROP TABLE IF EXISTS bh_club;
DROP TABLE IF EXISTS bh_point_computer;
DROP TABLE IF EXISTS bh_point_order;
DROP TABLE IF EXISTS bh_point_product;
DROP TABLE IF EXISTS bh_point_shop;
DROP TABLE IF EXISTS bh_attendance;
DROP TABLE IF EXISTS bh_club_wish_list;
DROP TABLE IF EXISTS bh_club_application;
DROP TABLE IF EXISTS bh_club_cate;
DROP TABLE IF EXISTS bh_book_share;
DROP TABLE IF EXISTS bh_book_share_borrow;

DROP TABLE IF EXISTS bh_cs_cate1;
DROP TABLE IF EXISTS bh_cs_cate2;





CREATE TABLE bh_member (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  userName varchar(20) NOT NULL,
  password varchar(255) NOT NULL,
  name varchar(20) DEFAULT NULL,
  gender tinyint NULL,
  phone char(13) NULL,
  email varchar(100) NOT NULL,
  role varchar(20) DEFAULT 'USER',
  point int DEFAULT '0',
  zip varchar(10) DEFAULT NULL,
  addr1 varchar(255) DEFAULT NULL,
  addr2 varchar(255) DEFAULT NULL,
  status int NOT NULL DEFAULT '0',
  wdate datetime DEFAULT NULL,
  rdate datetime NOT NULL
);


-- 회원포인트
CREATE TABLE bh_member_point (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(20) NOT NULL,
    pId INT NOT NULL,
    point INT NOT NULL,
    ptDate DATETIME NOT NULL
);



-- 도서 대출 장바구니
CREATE TABLE bh_product_cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(20) NOT NULL,
    bId INT NOT NULL,
    rdate DATETIME NOT NULL
);


-- cs qna
CREATE TABLE `bh_cs_qna` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cate1` int DEFAULT NULL,
  `cate2` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writer` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answerComplete` tinyint DEFAULT NULL,
  `rdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
);

-- cs file
CREATE TABLE `bh_cs_file` (
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_file_name` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_data` mediumblob
);

-- cs qna reply
CREATE TABLE `bh_cs_qna_reply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rdate` datetime NOT NULL,
  `writer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qnaId` int NOT NULL,
  PRIMARY KEY (`id`)
);


-- cs faq
CREATE TABLE `bh_cs_faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cate1` int DEFAULT NULL,
  `cate2` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
);

-- cs notice
CREATE TABLE `bh_cs_notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cate1` int DEFAULT NULL,
  `cate2` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
);



-- 광고
CREATE TABLE bh_banner (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    content VARCHAR(255),
    writer VARCHAR(20),
    origin_file_name VARCHAR(255) NOT NULL,
    upload_file_name VARCHAR(255) NOT NULL,
    post_yn VARCHAR(2) DEFAULT 'N',
    clicks INT DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- 결제
CREATE TABLE bh_payment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(20),
    price INT,
    period INT,
    scProduct INT,
    ptProduct INT,
    rdate DATETIME NOT NULL
);


-- 포인트 상품
CREATE TABLE bh_point_product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prodName VARCHAR(100) NOT NULL,
    point INT NOT NULL,
    originFileName VARCHAR(255),
    uploadFileName VARCHAR(255),
    post_yn VARCHAR(2) DEFAULT 'Y',
    createdAt DATETIME NOT NULL
);





CREATE TABLE bh_point_shop (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prodName VARCHAR(30) NOT NULL,
    point INT NOT NULL,
    price INT NOT NULL
);


CREATE TABLE bh_user_point (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id VARCHAR(255) NOT NULL,
    point_name VARCHAR(100) NOT NULL,
    purchase_date DATETIME NOT NULL,
    point INT NOT NULL,
    price INT NOT NULL,
    refund_yn VARCHAR(10) DEFAULT '미환불',
	imp_uid VARCHAR(255) NOT NULL,
	merchant_uid VARCHAR(255) NOT NULL
	
);

-- 출석체크
CREATE TABLE bh_attendance (
	id INT AUTO_INCREMENT PRIMARY KEY,
	userId VARCHAR(30) NOT NULL,
    lastMonth INT DEFAULT 0,
    attendanceDays VARCHAR(30) DEFAULT NULL
);



-- 독서모임
CREATE TABLE `bh_club` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `userName` VARCHAR(20) NOT NULL,
  `clubCate` TINYINT NULL,
  `clubName` VARCHAR(100) NOT NULL,
  `descript` VARCHAR(100) NOT NULL,
  `detail` VARCHAR(1000) NULL,
  `cDate` DATETIME NOT NULL,
  `host` VARCHAR(20) NOT NULL,
  `headCount` INT NOT NULL,
  `hcApply` INT NULL DEFAULT 0,
  `status` VARCHAR(20) NULL DEFAULT '신청가능',
  `originFileName1` VARCHAR(255) NULL,
  `originFileName2` VARCHAR(255) NULL,
  `originFileName3` VARCHAR(255) NULL,
  `uploadFileName1` VARCHAR(255) NULL,
  `uploadFileName2` VARCHAR(255) NULL,
  `uploadFileName3` VARCHAR(255) NULL,
  `rdate` DATETIME NOT NULL,
  `wdate` DATETIME NULL
);

CREATE TABLE `bh_club_cate` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `cate` INT NULL,
  `cateName` VARCHAR(20) NULL
);

CREATE TABLE `bh_club_application` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `clubId` INT NOT NULL,
  `userName` VARCHAR(20) NOT NULL,
  `rdate` DATETIME NOT NULL,
  `wdate` DATETIME NULL
);

CREATE TABLE `bh_club_wish_list` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `clubId` INT NOT NULL,
  `userName` VARCHAR(20) NOT NULL,
  `rdate` DATETIME NOT NULL,
  `wdate` DATETIME NULL
);





CREATE TABLE `bh_book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookName` varchar(100) NOT NULL,
  `descript` varchar(1000) NOT NULL,
  `company` varchar(100) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `borrow` int DEFAULT '0',
  `img` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT '대출가능',
  `rdate` datetime NOT NULL,
  `wdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `bh_book_borrow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `brComplete` tinyint NOT NULL,
  `brDate` datetime NOT NULL,
  `returnDate` datetime DEFAULT NULL,
  `bookNo` int NOT NULL,
  `flag` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
);


CREATE TABLE `bh_book_share` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(100) NOT NULL,
  `company` varchar(45) NOT NULL,
  `writer` varchar(45) NOT NULL,
  `descript` varchar(450) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `file` varchar(100) NOT NULL,
  `rdate` datetime NOT NULL,
  `wdate` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `borrow` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `bh_book_share_borrow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) NOT NULL,
  `brComplete` int NOT NULL,
  `brDate` datetime NOT NULL,
  `returnDate` datetime DEFAULT NULL,
  `bookNo` int NOT NULL,
  `borrowDay` int DEFAULT NULL,
  `flag` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
);


CREATE TABLE `bh_point_computer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `com_number` int NOT NULL,
  `time` int DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`,`com_number`)
);


CREATE TABLE `bh_point_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `productName` varchar(45) NOT NULL,
  `productPrice` int NOT NULL,
  `productCount` int NOT NULL,
  `AllProductPrice` int NOT NULL,
  `userName` varchar(45) NOT NULL,
  `rdate` datetime NOT NULL,
  `refund_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);






CREATE TABLE `bh_cs_cate1` (
  `cate1` int NOT NULL,
  `c1Name` varchar(25) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
);


CREATE TABLE `bh_cs_cate2` (
  `cate1` int NOT NULL,
  `cate2` int NOT NULL,
  `c2Name` varchar(25) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
);

