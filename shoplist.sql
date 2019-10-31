--创建用户
CREATE USER stu_user IDENTIFIED BY orcl
--授予connect/resource和dba角色
GRANT connect,RESOURCE TO stu_user
--创建表空间
CREATE TABLESPACE stu_db
DATAFILE 'D:\oracledb\studb.dbf'
SIZE 50M

alter user stu_user default tablespace stu_db
CREATE TABLE user1(
   userid NUMBER(5,0) PRIMARY KEY,
   username VARCHAR2(20) NOT NULL
);
INSERT INTO user1 VALUES(1,'小许');
SELECT * FROM user1; 

CREATE TABLE goods(
  goodsid NUMBER(5,0) PRIMARY KEY,
  title VARCHAR2(20) NOT NULL,
  img VARCHAR2(50),
  price NUMBER(8,2) NOT NULL,
  sold NUMBER(5,0) NOT NULL,
  describe VARCHAR2(80),
  business VARCHAR2(20) NOT NULL,
  province VARCHAR2(20) NOT NULL,
  city VARCHAR2(20) NOT NULL
);

CREATE TABLE goods1(
  goodsid NUMBER(5,0) PRIMARY KEY,
  img VARCHAR2(50),
  price NUMBER(8,2) NOT NULL,
  sold NUMBER(5,0) NOT NULL,
  describe VARCHAR2(80),
  business VARCHAR2(20) NOT NULL
);
INSERT INTO goods1 VALUES(goodsid_seq.nextval,'img/good1.png',199.00,111,'花花公子西服男士套装秋季韩版潮','服装店');
INSERT INTO goods1 VALUES(goodsid_seq.nextval,'img/good2.png',199.50,121,'花花公子2019男士夹克衫中','花花公子');
INSERT INTO goods1 VALUES(goodsid_seq.nextval,'img/good1.png',129.50,180,'花花公子西服套装男士修身','花花公子');
INSERT INTO goods1 VALUES(goodsid_seq.nextval,'img/good2.png',202.10,11,'花花公子男士休闲西服修身','花花公子');
INSERT INTO goods1 VALUES(goodsid_seq.nextval,'img/good1.png',111.11,331,'2019年男士最新款','服装店');

ALTER TABLE goods MODIFY province NULL;
CREATE SEQUENCE goodsid_seq
START WITH 1
INCREMENT BY 1
maxvalue 999
NOCYCLE
CACHE 10

INSERT INTO goods VALUES(goodsid_seq.nextval,'11','img/good1.png',199.00,23,'花花公子西服男士套装秋','卖家','广东','广州');
INSERT INTO goods VALUES(goodsid_seq.nextval,'11','img/good2.png',199.50,2,'花花公子2019男士夹克衫','卖家1','广东','深圳');
INSERT INTO goods VALUES(goodsid_seq.nextval,'11','img/good1.png',122.50,159,'花花公子西服套装男士修','卖家2','广东','深圳');

SELECT * FROM goods
commit
DELETE FROM goods;

INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子1','img/good1.png',199.00,111,'花花公子西服男士套装秋季韩版潮流修身新郎结婚小','服装店','广东','广州');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子2','img/good2.png',199.50,121,'花花公子2019男士夹克衫中年爸爸装秋装中老年立领','花花公子','广东','深圳');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子3','img/good1.png',129.50,180,'花花公子西服套装男士修身帅气结婚新郎礼服新款春','花花公子','广东','梅州');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子4','img/good2.png',202.10,11,'花花公子男士休闲西服修身韩版潮流小西装男春秋季','花花公子','广东','惠州');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子5','img/good1.png',111.11,331,'2019年男士最新款','服装店','广东','广州');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子6','img/good1.png',99.00,1,'花花公子西服男士套装秋季韩版潮流修身新郎结婚小','阿迪达斯','广东','广州');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子7','img/good2.png',149.00,2,'花花公子西服男士套装秋季韩版潮流修身新郎结婚小','服装店','','上海');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子8','img/good2.png',12.30,3,'花花公子西服男士套装秋季韩版潮流修身新郎结婚小','服装店','','重庆');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子9','img/good1.png',1119.00,5,'花花公子西服男士套装秋季韩版潮流修身新郎结婚小','服装店','','北京');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子10','img/good2.png',19.00,6,'花花公子西服男士套装秋季韩版潮流修身新郎结婚小','服装店','','天津');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子11','img/good2.png',499.50,11,'花花公子西服男士套装秋季韩版潮流修身新郎结婚小','服装店','广东','广州');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子12','img/good1.png',39.00,11,'花花公子西服男士套装秋季韩版潮流修身新郎结婚小','服装店','广东','广州');
INSERT INTO goods VALUES(goodsid_seq.nextval,'花花公子13','img/good1.png',89.00,111,'花花公子西服男士套装秋季韩版潮流修身新郎结婚小','服装店','广东','广州');

