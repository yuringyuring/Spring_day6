
drop table tuser;
drop table tcomment;
drop sequence SEQ_COMMENT;

CREATE TABLE tuser (
  user_id varchar2(20) primary key,
  pass varchar2(20) not null
);

CREATE TABLE tcomment (
  comment_no number primary key,
  user_id varchar2(20) not null,
  content varchar2(500)
);

alter table tcomment add constraint tcomment_tuser_fk foreign key(user_id) references tuser(user_id);

create sequence SEQ_COMMENT;




