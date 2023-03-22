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
values('게시판 연습','게시판 연습','홍길동');
insert into myboards(title,content,writer)
values('게시판 연습','게시판 연습','고순조');

select * from myboards order by idx desc;

create table mem_tbl(
	memIdx int auto_increment,
	memID varchar(20) not null,
	memPassword varchar(20) not null,
	memName varchar(20) not null,
	memAge int,
	memGender varchar(20),
	memEmail varchar(50),
	memProfile varchar(50),
	primary key(memIdx)
);

select * from mem_tbl;

CREATE TABLE myboards (
  idx NUMBER(10) NOT NULL PRIMARY KEY,
  title VARCHAR2(100) NOT NULL,
  content VARCHAR2(2000) NOT NULL,
  writer VARCHAR2(30) NOT NULL,
  indate DATE DEFAULT SYSDATE,
  count NUMBER(10) DEFAULT 0
);


CREATE SEQUENCE myBoard_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER myBoard_trg
BEFORE INSERT ON myBoard
referencing new as new FOR EACH ROW
BEGIN
    SELECT myBoard_seq.NEXTVAL
    INTO :NEW.idx
    FROM DUAL;
END;
/

