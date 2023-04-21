-- 01_DDL.sql

CREATE TABLE `scott`.`booklist` (
  `booknum` INT NOT NULL AUTO_INCREMENT,
  `subject` VARCHAR(45) NOT NULL,
  `makeyear` INT NULL,
  `inprice` INT NULL,
  `rentprice` INT NULL,
  `grade` VARCHAR(5) NULL DEFAULT 'all',
  `booklistcol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`booknum`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '도 서 목 록';

select * from booklist;

-- 연습 문제.
-- 아래의 필드명을 담은 memberlist 테이블을 생성하세요
-- 필드명 : membernum(int, 자동 증가, not null, 기본키), name(varchar(30), not null),
--			phone( varchar(30), not null ), Birth(datetime, not null), bpoint(int, default 100), 
-- 			joindate(datetime, 기본값 now()), age(int), gender(varchar(3))
-- 테이블 comment : 회원 목록
-- 기본 문자 set : utf-8mb4
-- 워크 벤치에서 테이블 생성하는 명령을 복사해오셔도 됩니다.

CREATE TABLE `scott`.`memberlist` (
  `membernum` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  `phone` VARCHAR(30) NOT NULL,
  `Birth` DATETIME NOT NULL,
  `bpoint` INT NULL DEFAULT 100,
  `joindate` DATETIME NULL DEFAULT now(),
  `age` INT NULL DEFAULT NULL,
  `gender` VARCHAR(3) NULL DEFAULT NULL,
  PRIMARY KEY (`membernum`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '회원 목록';


select * from scott.memberlist


-- 자주 쓰는 자료형
-- INT : 정수 자료형(FLOAT, DOUBLE은 실수)
-- VARCHAR : 문자열 자료형, 가변 길이(CHAR은 고정 길이)
-- TEXT : 긴 문자열은 TEXT로 별도 저장
-- DATETIME : 날짜 자료형 저장
-- TINYINT : -128에서 127까지 저장하지만 여기서는 1 또는 0만 저장해 Boolean 값 표현

-- 자주쓰는 제약 조건
-- NOT NULL : 빈 값은 받지 않는다는 뜻(NULL은 빈 값 허용)
-- AUTO_INCREMENT : 숫자 자료형인 경우 다음 로우가 저장될 때 자동으로 1 증가
-- UNSIGNED : 0과 양수만 허용
-- ZEROFILL : 숫자의 자리 수가 고정된 경우 빈 자리에 0을 넣음
-- DEFAULT now() : 날짜 컬럼의 기본값을 현재 시간으로. DATETIME 자료형에 적용 가능

-- 테이블-필드의 수정
ALTER TABLE `scott`.`memberlist` 
CHANGE COLUMN `Birth` `Birthday` DATE NOT NULL ;

ALTER TABLE `scott`.`memberlist` 
DROP COLUMN `gender`,
CHANGE COLUMN `Birth` `Birthday` DATE NOT NULL ;

ALTER TABLE `scott`.`memberlist` 
DROP COLUMN `gender`;

ALTER TABLE `scott`.`memberlist` 
ADD COLUMN `gender` VARCHAR(3) NULL AFTER `age`;



-- 연습문제2
-- 테이블 이름 : rentlist
-- 필드 : rentdate(datetime, default now()), numseq(int, AI), bnum(int), mnum(int), discount(int)
-- 워크벤치에서 테이블 생성 화면을 구성한 후 실행하지 말고 기다립니다

CREATE TABLE `scott`.`rentlist` (
  `rentdate` DATETIME NULL DEFAULT now(),
  `numseq` INT NOT NULL AUTO_INCREMENT,
  `bnum` INT NOT NULL,
  `mnum` INT NOT NULL,
  `discount` INT NULL DEFAULT 100,
  PRIMARY KEY(numseq)
);
  -- INDEX `fk1_idx` (`bnum` ASC) VISIBLE,
  -- INDEX `fk2_idx` (`mnum` ASC) VISIBLE,
  -- CONSTRAINT `fk1` FOREIGN KEY (`bnum`) REFERENCES `scott`.`booklist` (`booknum`) ON DELETE CASCADE ON UPDATE CASCADE,
  -- CONSTRAINT `fk2` FOREIGN KEY (`mnum`) REFERENCES `scott`.`memberlist` (`membernum`) ON DELETE CASCADE ON UPDATE CASCADE
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- 외래키 제약 조건 추가
ALTER TABLE `scott`.`rentlist` 
ADD INDEX `fk1_idx` (`bnum` ASC) VISIBLE,
ADD INDEX `fk2_idx` (`mnum` ASC) VISIBLE;
;
ALTER TABLE `scott`.`rentlist` 
ADD CONSTRAINT `fk1`
  FOREIGN KEY (`bnum`)
  REFERENCES `scott`.`booklist` (`booknum`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk2`
  FOREIGN KEY (`mnum`)
  REFERENCES `scott`.`memberlist` (`membernum`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

























