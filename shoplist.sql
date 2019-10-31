--�����û�
CREATE USER stu_user IDENTIFIED BY orcl
--����connect/resource��dba��ɫ
GRANT connect,RESOURCE TO stu_user
--������ռ�
CREATE TABLESPACE stu_db
DATAFILE 'D:\oracledb\studb.dbf'
SIZE 50M

alter user stu_user default tablespace stu_db
CREATE TABLE user1(
   userid NUMBER(5,0) PRIMARY KEY,
   username VARCHAR2(20) NOT NULL
);
INSERT INTO user1 VALUES(1,'С��');
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
INSERT INTO goods1 VALUES(goodsid_seq.nextval,'img/good1.png',199.00,111,'��������������ʿ��װ�＾���泱','��װ��');
INSERT INTO goods1 VALUES(goodsid_seq.nextval,'img/good2.png',199.50,121,'��������2019��ʿ�п�����','��������');
INSERT INTO goods1 VALUES(goodsid_seq.nextval,'img/good1.png',129.50,180,'��������������װ��ʿ����','��������');
INSERT INTO goods1 VALUES(goodsid_seq.nextval,'img/good2.png',202.10,11,'����������ʿ������������','��������');
INSERT INTO goods1 VALUES(goodsid_seq.nextval,'img/good1.png',111.11,331,'2019����ʿ���¿�','��װ��');

ALTER TABLE goods MODIFY province NULL;
CREATE SEQUENCE goodsid_seq
START WITH 1
INCREMENT BY 1
maxvalue 999
NOCYCLE
CACHE 10

INSERT INTO goods VALUES(goodsid_seq.nextval,'11','img/good1.png',199.00,23,'��������������ʿ��װ��','����','�㶫','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'11','img/good2.png',199.50,2,'��������2019��ʿ�п���','����1','�㶫','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'11','img/good1.png',122.50,159,'��������������װ��ʿ��','����2','�㶫','����');

SELECT * FROM goods
commit
DELETE FROM goods;

INSERT INTO goods VALUES(goodsid_seq.nextval,'��������1','img/good1.png',199.00,111,'��������������ʿ��װ�＾���泱���������ɽ��С','��װ��','�㶫','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������2','img/good2.png',199.50,121,'��������2019��ʿ�п�������ְ�װ��װ����������','��������','�㶫','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������3','img/good1.png',129.50,180,'��������������װ��ʿ����˧�������������¿','��������','�㶫','÷��');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������4','img/good2.png',202.10,11,'����������ʿ�������������泱��С��װ�д��＾','��������','�㶫','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������5','img/good1.png',111.11,331,'2019����ʿ���¿�','��װ��','�㶫','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������6','img/good1.png',99.00,1,'��������������ʿ��װ�＾���泱���������ɽ��С','���ϴ�˹','�㶫','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������7','img/good2.png',149.00,2,'��������������ʿ��װ�＾���泱���������ɽ��С','��װ��','','�Ϻ�');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������8','img/good2.png',12.30,3,'��������������ʿ��װ�＾���泱���������ɽ��С','��װ��','','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������9','img/good1.png',1119.00,5,'��������������ʿ��װ�＾���泱���������ɽ��С','��װ��','','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������10','img/good2.png',19.00,6,'��������������ʿ��װ�＾���泱���������ɽ��С','��װ��','','���');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������11','img/good2.png',499.50,11,'��������������ʿ��װ�＾���泱���������ɽ��С','��װ��','�㶫','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������12','img/good1.png',39.00,11,'��������������ʿ��װ�＾���泱���������ɽ��С','��װ��','�㶫','����');
INSERT INTO goods VALUES(goodsid_seq.nextval,'��������13','img/good1.png',89.00,111,'��������������ʿ��װ�＾���泱���������ɽ��С','��װ��','�㶫','����');

