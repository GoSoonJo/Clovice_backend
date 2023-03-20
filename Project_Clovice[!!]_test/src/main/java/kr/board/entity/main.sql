create table myboards(
idx int not null auto_increment,
title varchar(100) not null,
content varchar(2000) not null,
writer varchar(30) not null,
indate datetime default now(),
count int default 0,
primary key(idx)
);

insert into myboards(title,content,writer)
values('게시판 연습','게시판 연습','관리자');
insert into myboards(title,content,writer)
values('게시판 연습','게시판 연습','박매일');
insert into myboards(title,content,writer)
values('게시판 연습','게시판 연습','선생님');

select * from myboards order by idx desc;

create table member_info(
	mem_id varchar(20),
	mem_pw varchar(20) not null,
	mem_name varchar(20) not null,
	mem_birth int not null,
	mem_gender varchar(20) not null,
	mem_email varchar(50) not null,
	mem_phone varchar(50) not null,
	constraint mem_if_pk primary key(mem_id)
);

select * from member_info;

create table cordi(
	cordi_num number(18,0) not null,
	cordi_url varchar2(300) not null,
	cordi_item1 number(18,0) not null,
	cordi_item2 number(18,0),
	cordi_item3 number(18,0)
);

select * from cordi;

insert into cordi values(1,'https://image.msscdn.net/images/codimap/detail/1/detail_1_1_500.jpg',538899,0,102621);
insert into cordi values(6,'https://image.msscdn.net/images/codimap/detail/6/detail_6_1_500.jpg',1430736,983196,1200555);
insert into cordi values(7,'https://image.msscdn.net/images/codimap/detail/7/detail_7_1_500.jpg',1051377,1466353,1118416);
insert into cordi values(14,'https://image.msscdn.net/images/codimap/detail/14/detail_14_1_500.jpg',1021729,1485630,810035);
insert into cordi values(24,'https://image.msscdn.net/images/codimap/detail/24/detail_24_1_500.jpg',996249,1224849,1452096);
insert into cordi values(25,'https://image.msscdn.net/images/codimap/detail/25/detail_25_1_500.jpg',1421982,1464195,1042577);


CREATE TABLE PRODUCT
   (	PROD_NUM NUMBER(18,0) NOT NULL ENABLE, 
	PROD_MAIN_CAT NUMBER(18,0) NOT NULL ENABLE, 
	PROD_SUB_CAT NUMBER(18,0) NOT NULL ENABLE, 
	PROD_NAME VARCHAR2(300 BYTE) NOT NULL ENABLE, 
	PROD_BRAND VARCHAR2(300 BYTE) NOT NULL ENABLE, 
	PROD_URL VARCHAR2(4000 BYTE) NOT NULL ENABLE, 
	PROD_IMG_URL VARCHAR2(4000 BYTE) NOT NULL ENABLE, 
	 PRIMARY KEY (PROD_NUM)
);

select * from product;

CREATE TABLE member_cart (
    cartId NUMBER PRIMARY KEY,
    mem_Id VARCHAR2(20),
    prod_num NUMBER,
    CONSTRAINT fk_memid FOREIGN KEY (mem_Id) REFERENCES member_info(mem_Id),
    CONSTRAINT fk_prodnum FOREIGN KEY (prod_num) REFERENCES product(prod_num)
);

CREATE SEQUENCE member_cart_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER member_cart_trg
BEFORE INSERT ON member_cart
referencing new as new FOR EACH ROW
BEGIN
    SELECT member_cart_seq.NEXTVAL
    INTO :NEW.cartId
    FROM DUAL;
END;
/

insert into member_cart(mem_id,prod_num) values('smhrd7',100344);

select * from product;

insert into product values(100344,018,002,'뭐게','컨버스','??','??');

select * from member_cart

INSERT INTO product VALUES(1000344,018,002,'cloth','컨버스','https://www.musinsa.com/app/goods/1000344','url');
INSERT INTO product VALUES(1000696,001,010,'cloth','어커버','https://www.musinsa.com/app/goods/1000696','url');
INSERT INTO product VALUES(1001514,018,002,'cloth','제이다울','https://www.musinsa.com/app/goods/1001514','url');
INSERT INTO product VALUES(1001541,018,002,'cloth','제이다울','https://www.musinsa.com/app/goods/1001541','url');
INSERT INTO product VALUES(1003930,005,012,'cloth','어썸듀','https://www.musinsa.com/app/goods/1003930','url');


