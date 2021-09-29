drop table RESULT;
drop table STD;
drop table COURSE;


CREATE TABLE STD
  (
   STD_NO  NUMBER(7) not null,
   NAME          VARCHAR(25) not null,
   DEPT VARCHAR(3) check( DEPT='EEE' or DEPT='CSE' ),
   PRIMARY KEY (STD_NO)
) ;


CREATE TABLE COURSE
  (COURSE_NO  VARCHAR(6) not null,
NAME   VARCHAR(20) UNIQUE,
DEPT  VARCHAR(3) check(DEPT='EEE' or DEPT='CSE'),
CREDIT_HOUR NUMBER check ( CREDIT_HOUR>0  and  CREDIT_HOUR<5 ),
   PRIMARY KEY ( COURSE_NO )
   ) ;



CREATE TABLE RESULT
( STD_NO                  NUMBER(7) not null,
 C_NO          VARCHAR(6) not null,
 GRADE     NUMBER(3,2),
 PRIMARY KEY (STD_NO , C_NO),
FOREIGN KEY (STD_NO) REFERENCES  STD(STD_NO) ON DELETE CASCADE,
FOREIGN KEY (C_NO) REFERENCES  COURSE(COURSE_NO) ON DELETE CASCADE
) ; 

insert into STD values(1234567, 'Rafi', 'CSE'); 
insert into STD values(7654321, 'Jim', 'CSE');
insert into STD values(7654322, 'Jim', 'CSE');
insert into STD values(7654323, 'Jim', 'CSE');
insert into STD values(7654324, 'Jim', 'CSE');
 


insert into COURSE values('CSE123','Database','CSE',2);
insert into COURSE values('CSE124','Opp','CSE',2);
insert into COURSE values('CSE125','Opp','CSE',2);
insert into COURSE values('CSE126','Opp','CSE',2);
insert into COURSE values('CSE127','Opp','CSE',2);


insert into RESULT values(1234567,'CSE123',3.00);
insert into RESULT values(7654321,'CSE123',3.00);
insert into RESULT values(7654322,'CSE123',4.00);
insert into RESULT values(7654323,'CSE123',4.00);
insert into RESULT values(7654324,'CSE123',4.00);


SELECT * from STD;
SELECT * from COURSE;
SELECT * from RESULT;

commit;


