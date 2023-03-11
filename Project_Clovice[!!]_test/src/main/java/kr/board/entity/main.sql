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

