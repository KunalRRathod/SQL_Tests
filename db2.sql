create database db2;
use db2;
CREATE TABLE Student(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
          
   PRIMARY KEY (ID)
);
insert into student values ("7","Natasha", "20", "Budapest"); 
select * from Student;
commit;
start transaction;
savepoint a;
rollback;
savepoint b;
rollback to a;