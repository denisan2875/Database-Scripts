
conn sysman@prodsede;
create table tabs (col1 num,col2 varchar2(3));
disconnect;
conn sysman@prodsede;
alter table tabs (col1 num,col2 varchar2(4));
disconnect;
conn sysman@prodsede;
alter table tabs add constraint tabs_PK primary key (col1);
disconnect;
conn sysman@prodsede;
insert into tabs values (1,'abcd');
commit;
disconnect;
conn sysman@prodsede;
update tabs set col2='dcba';
commit;
disconnect;
conn sysman@prodsede;
delete from tabs;
commit;
disconnect;
conn sysman@prodsede;
insert into tabs values (2,'abcd');
commit;
disconnect;
conn sysman@prodsede;
truncate table tabs;
disconnect;
conn sysman@prodsede;
grant select on tabs to sys;
disconnect;
conn sysman@prodsede;

disconnect;
conn sysman@prodsede;
create table tabs (col1 num,col2 varchar2(3));
disconnect;
conn sysman@prodsede;
create table tabs (col1 num,col2 varchar2(3));
disconnect;
conn sysman@prodsede;
create table tabs (col1 num,col2 varchar2(3));
disconnect;
conn sysman@prodsede;
create table tabs (col1 num,col2 varchar2(3));
disconnect;
conn sysman@prodsede;
create table tabs (col1 num,col2 varchar2(3));
disconnect;
conn sysman@prodsede;
create table tabs (col1 num,col2 varchar2(3));
disconnect;
conn sysman@prodsede;
create table tabs (col1 num,col2 varchar2(3));
disconnect;
conn sysman@prodsede;
create table tabs (col1 num,col2 varchar2(3));
disconnect;