-- 02_DML.sql

-- 세 개의 테이블에 각 필드의 자료형과 제약사항에 맞게 각 10개의 레코드를 insert 해주세요
-- booklist
INSERT INTO `scott`.`booklist` (`subject`, `makeyear`, `inprice`, `rentprice`, `grade`) 
VALUES ('일곱해의 마지막', '2020', '12150', '2000', 'all');
INSERT INTO `scott`.`booklist` (`subject`, `makeyear`, `inprice`, `rentprice`, `grade`) 
VALUES ('봉제인형 살인사건', '2020', '12000', '2500', '12');
INSERT INTO `scott`.`booklist` (`subject`, `makeyear`, `inprice`, `rentprice`, `grade`) 
VALUES ('쇼코의 미소', '2019', '10800', '2500', '18');
INSERT INTO `scott`.`booklist` (`subject`, `makeyear`, `inprice`, `rentprice`, `grade`) 
VALUES ('가면산장 살인사건', '2018', '13320', '1500', '12');
INSERT INTO `scott`.`booklist` (`subject`, `makeyear`, `inprice`, `rentprice`, `grade`) 
VALUES ('나미야 잡화점의 기적', '2017', '13320', '2000', '18');
INSERT INTO `scott`.`booklist` (`subject`, `makeyear`, `inprice`, `rentprice`, `grade`) 
VALUES ('유튜브영상편집', '2020', '20700', '2500', 'all');
INSERT INTO `scott`.`booklist` (`subject`, `makeyear`, `inprice`, `rentprice`, `grade`) 
VALUES ('이것이 자바다', '2017', '30000', '3000', '18');
INSERT INTO `scott`.`booklist` (`subject`, `makeyear`, `inprice`, `rentprice`, `grade`) 
VALUES ('JSP웹프로그래밍', '2016', '25000', '2500', '12');
INSERT INTO `scott`.`booklist` (`subject`, `makeyear`, `inprice`, `rentprice`, `grade`) 
VALUES ('오라클데이터베이스', '2020', '30000', '3000', 'all');

-- memberlist
INSERT INTO `scott`.`memberlist` (`name`, `phone`, `Birth`, `bpoint`, `age`, `gender`) 
VALUES ('이상훈', '010-4428-8487', '1998-05-01', '200', '26', 'M');
INSERT INTO `scott`.`memberlist` (`name`, `phone`, `Birth`, `bpoint`, `age`, `gender`) 
VALUES ('문동은', '010-4865-1123', '1985-03-09', '1500', '39', 'F');
INSERT INTO `scott`.`memberlist` (`name`, `phone`, `Birth`, `bpoint`, `age`, `gender`) 
VALUES ('박연진', '010-7753-4578', '1982-10-26', '5600', '39', 'F');
INSERT INTO `scott`.`memberlist` (`name`, `phone`, `Birth`, `bpoint`, `age`, `gender`) 
VALUES ('하예솔', '010-1256-7534', '2015-05-24', '150', '9', 'F');
INSERT INTO `scott`.`memberlist` (`name`, `phone`, `Birth`, `bpoint`, `age`, `gender`) 
VALUES ('박지성', '010-1111-2222', '1981/04/04', '140', '43', 'F');
INSERT INTO `scott`.`memberlist` (`name`, `phone`, `Birth`, `bpoint`, `age`, `gender`) 
VALUES ('구자철', '010-1111-2222', '82/05/05', '380', '42', 'M');
INSERT INTO `scott`.`memberlist` (`name`, `phone`, `Birth`, `bpoint`, `age`, `gender`) 
VALUES ('지동원', '010-1111-2222', '83/06/06', '150', '35', 'M');
INSERT INTO `scott`.`memberlist` (`name`, `phone`, `Birth`, `bpoint`, `age`, `gender`) 
VALUES ('추신수', '010-1111-2222', '81/06/14', '440', '36', 'F');
INSERT INTO `scott`.`memberlist` (`name`, `phone`, `Birth`, `bpoint`, `age`, `gender`) 
VALUES ('최지만', '010-1111-2222', '83/04/14', '340', '29', 'F');
INSERT INTO `scott`.`memberlist` (`name`, `phone`, `Birth`, `bpoint`, `age`, `gender`) 
VALUES ('홍길동', '010-1111-2222', '80/06/05', '240', '30', 'M');

-- rentlist
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('1', '1', '100');
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('1', '10', '100');
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('2', '9', '100');
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('3', '8', '100');
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('4', '7', '100');
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('5', '6', '100');
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('6', '5', '100');
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('7', '4', '100');
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('8', '3', '100');
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('9', '2', '100');
INSERT INTO `scott`.`rentlist` (`bnum`, `mnum`, `discount`) VALUES ('10', '1', '100');

select * from scott.booklist;
select * from scott.memberlist;
select * from scott.rentlist;

ALTER TABLE `scott`.`memberlist` 
CHANGE COLUMN `Birth` `Birthday` DATETIME NOT NULL ;
