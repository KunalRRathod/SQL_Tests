create database db2;
use db2;
CREATE TABLE Student(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
          
   PRIMARY KEY (ID)
);
insert into student values ("9","Bucky", "1", "Vienna"); 
select * from Student;
commit;
start transaction;
savepoint a;
rollback;
savepoint b;
rollback to a;
ALTER TABLE STUDENT ADD Foreign key  (AGE) references student(ID);
delimiter //
CREATE TRIGGER nameadd BEFORE INSERT ON Student FOR EACH ROW IF NEW.age < 0 THEN SET NEW.age = 0; END IF;
