---DAY 1 ASSIGNMENT----

CREATE TABLE Member_1 (
    Member_Id NUMBER(5),
    Member_Name VARCHAR2(30),
    Member_address VARCHAR2(50),
    Acc_Open_Date DATE,
    Membership_type VARCHAR2(20),
    Fees_paid NUMBER(4),
    Max_Books_Allowed NUMBER(2),
    Penalty_Amount NUMBER(7,2)
);

-- Create the 'Books' table
CREATE TABLE Books_1(
    Book_No NUMBER(6),
    Book_Name VARCHAR2(30),
    Author_name VARCHAR2(30),
    Cost NUMBER(7,2),
    Category CHAR(10)
);

-- Create the 'Issue' table
CREATE TABLE Issue_1 (
    Lib_Issue_Id NUMBER(10),
    Book_No NUMBER(6),
    Member_Id NUMBER(5),
    Issue_Date DATE,
    Return_Date DATE
);

--- 2)	View the structure of the tables.---
DESC Books_1;
DESC Member_1;
DESC Issue_1;

---3)Drop the Member table---
DROP TABLE Member_1;

---4)	Create the table Member again as per the schema description with the following constraints. 
--- a.	Member_Id – Primary Key
--- b.	Membership_type - ‘Lifetime’,’ Annual’, ‘Half Yearly’,’ Quarterly’
CREATE TABLE Member_1 (
    Member_Id NUMBER(5) PRIMARY KEY,
    Member_Name VARCHAR2(30),
    Member_address VARCHAR2(50),
    Acc_Open_Date DATE,
    Membership_Type VARCHAR2(20)
        CHECK (Membership_Type IN ('Lifetime','Annual','Half Yearly','Quarterly')),
    Fees_paid NUMBER(4),
    Max_Books_Allowed NUMBER(2),
    Penalty_Amount NUMBER(7,2)
);

---5) Modify the table Member increase the width of the member name to 35 characters. ---
ALTER TABLE Member_1
MODIFY MEMBER_NAME VARCHAR2(35);
DESC MEMBER_1;

---6)	Add a column named as Reference of Char(30) to Issue table.
ALTER TABLE MEMBER_1
ADD REFERNCE CHAR(30);

---7)	Delete/Drop the column Reference from Issue.---
ALTER TABLE MEMBER_1
DROP COLUMN REFERNCE;

---8)	Rename the table Issue to Lib_Issue.---
RENAME ISSUE TO LIB_ISSUE;

---9) INSERTING THE DATA---
ALTER TABLE MEMBER_1
MODIFY Fees_paid NUMBER(10);
SELECT * FROM MEMBER_1;

-- 10) INSERTING THE VALUES IN MEMBER TABLE---

INSERT INTO MEMBER_1 VALUES(1,'RICHA SHARMA', 'PUNE', TO_DATE('DEC-10-2025','MM-DD-YYYY'),'Lifetime',25000,5,50 );
INSERT INTO MEMBER_1 VALUES(2,'GARIMA SHARMA', 'PUNE',SYSDATE,'Annual',1000,3,NULL);

INSERT INTO MEMBER_1 (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_Type, Fees_paid, Max_Books_Allowed, Penalty_Amount)
VALUES (3, 'Amit Kumar', 'Mumbai', TO_DATE('2024-07-01', 'YYYY-MM-DD'), 'Half Yearly', 5000, 4, 20);

INSERT INTO MEMBER_1 (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_Type, Fees_paid, Max_Books_Allowed, Penalty_Amount)
VALUES (4, 'Sonia Gupta', 'Delhi', TO_DATE('2023-05-12', 'YYYY-MM-DD'), 'Quarterly', 1500, 2, 10);

INSERT INTO MEMBER_1 (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_Type, Fees_paid, Max_Books_Allowed, Penalty_Amount)
VALUES (5, 'Rajesh Kumar', 'Chennai', TO_DATE('2025-01-25', 'YYYY-MM-DD'), 'Annual', 3000, 6, 15);

INSERT INTO MEMBER_1 (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_Type, Fees_paid, Max_Books_Allowed, Penalty_Amount)
VALUES (6, 'Neha Verma', 'Kolkata', TO_DATE('2023-11-05', 'YYYY-MM-DD'), 'Lifetime', 25000, 5, 25);

INSERT INTO MEMBER_1 (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_Type, Fees_paid, Max_Books_Allowed, Penalty_Amount)
VALUES (7, 'Vikas Jain', 'Bangalore', TO_DATE('2024-09-15', 'YYYY-MM-DD'), 'Half Yearly', 3500, 3, 30);

SELECT * FROM MEMBER_1;

--INSERTING THE VALUES IN BOOKS TABLE---
INSERT INTO BOOKS_1 (Book_No, Book_Name, Author_name, Cost, Category)
VALUES (101, 'The Alchemist', 'Paulo Coelho', 399.99, 'Fiction');

INSERT INTO BOOKS_1 (Book_No, Book_Name, Author_name, Cost, Category)
VALUES (102, 'The Da Vinci Code', 'Dan Brown', 499.50, 'Mystery');

INSERT INTO BOOKS_1 (Book_No, Book_Name, Author_name, Cost, Category)
VALUES (103, 'Atomic Habits', 'James Clear', 299.75, 'Self-Help');

INSERT INTO BOOKS_1 (Book_No, Book_Name, Author_name, Cost, Category)
VALUES (104, 'The Power of Now', 'Eckhart Tolle', 450.00, 'Spirituality');

INSERT INTO BOOKS_1 (Book_No, Book_Name, Author_name, Cost, Category)
VALUES (105, 'The Silent Patient', 'Alex Michaelides', 399.00, 'Thriller');

--INSERTING THE VALUES IN ISUE TABLE---
INSERT INTO LIB_ISSUE (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (1, 101, 1, TO_DATE('2025-12-10', 'YYYY-MM-DD'), TO_DATE('2025-12-24', 'YYYY-MM-DD'));

INSERT INTO LIB_ISSUE (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (2, 102, 2, SYSDATE, TO_DATE('2025-01-15', 'YYYY-MM-DD'));

INSERT INTO LIB_ISSUE (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (3, 103, 3, TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-07-14', 'YYYY-MM-DD'));

INSERT INTO LIB_ISSUE (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (4, 104, 4, TO_DATE('2023-05-12', 'YYYY-MM-DD'), TO_DATE('2023-05-26', 'YYYY-MM-DD'));

INSERT INTO LIB_ISSUE (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (5, 105, 5, TO_DATE('2025-01-25', 'YYYY-MM-DD'), TO_DATE('2025-02-08', 'YYYY-MM-DD'));

TRUNCATE TABLE LIB_ISSUE;
SELECT * FROM LIB_ISSUE;

--- 11)Modify the column Member_name. Decrease the width of the member  name to 20 characters.
--- (If it does not allow state the reason for that)
ALTER TABLE MEMBER_1
MODIFY MEMBER_NAME VARCHAR2(20);

--- 12)	Try to insert a record with Max_Books_Allowed = 110, Observe the error that comes. 
--- Report the reason for this error.

SELECT * FROM MEMBER_1;
DESC MEMBER_1;
INSERT INTO MEMBER_1 (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_Type, Fees_paid, Max_Books_Allowed, Penalty_Amount)
VALUES (8, 'Priya', 'Tuti', TO_DATE('2005-09-16', 'YYYY-MM-DD'), 'Half Yearly', 4500, 110, 130);
---ERROR OBSERVED ORA-01438: value 110 greater than specified precision (2, 0) for column---

--- 13)	Generate another table named Member101 using a Create command along with a simple SQL query on member table.---
CREATE TABLE MEMBER101 AS SELECT * FROM MEMBER_1;

--- 14)	Add the constraints on columns max_books_allowed  and penalty_amt as follows
--- a.	max_books_allowed  < 100
--- b.	penalty_amt maximum 1000
--- Also give names to the constraints.
SELECT * FROM MEMBER_1;
ALTER TABLE MEMBER_1
ADD CONSTRAINT max_books_check CHECK (Max_Books_Allowed < 100);

ALTER TABLE MEMBER_1
ADD CONSTRAINT max_penalty_check CHECK (Penalty_Amount < 100);

---15)	Drop the table books.---
DROP TABLE BOOKS_1;

---16)Create table Books again as per the schema description with the following constraints.
--- a.	Book_No – Primary Key
--- b.	Book_Name – Not Null
--- c.	Category – Science, Fiction, Database, RDBMS, Others.
-- Create the 'Books' table
CREATE TABLE Books_1(
    Book_No NUMBER(6) PRIMARY KEY,
    Book_Name VARCHAR2(30) NOT NULL,
    Author_name VARCHAR2(30),
    Cost NUMBER(7,2),
    Category CHAR(10) CHECK (CATEGORY IN ('Science','Fiction','Databse','RDBMS','Others'))
);

---17)	Insert data in Book table as follows---

INSERT INTO Books_1 (Book_No, Book_Name, Author_name, Cost, Category)
VALUES (101, 'Let us C', 'Denis Ritchie', 450, 'System');

INSERT INTO Books_1 (Book_No, Book_Name, Author_name, Cost, Category)
VALUES (102, 'Oracle - Complete Ref', 'Loni', 550, 'Databse');

INSERT INTO Books_1 (Book_No, Book_Name, Author_name, Cost, Category)
VALUES (103, 'Mastering SQL', 'Loni', 250, 'Databse');

INSERT INTO Books_1 (Book_No, Book_Name, Author_name, Cost, Category)
VALUES (104, 'PL SQL-Ref', 'Scott Urman', 750, 'Databse');

--SQL> INSERT INTO Books_1 (Book_No, Book_Name, Author_name, Cost, Category)
    --- VALUES (101, 'Let us C', 'Denis Ritchie', 450, 'System')
---ORA-02290: check constraint (SQL_JI2B5URU85IQON4AM3KEGFJOM4.SYS_C003227987) violated

--- 18)	Insert more records in Book table using & operator in the insert statement. ---
INSERT INTO BOOKS_1 VALUES(&BOOK_NO,'&BOOK_NAME','&AUTHOR_NAME',&COST,'&CATEGORY');
SELECT * FROM BOOKS_1;

--- 19)Create table Book101 similar to Book in structure with no data in it. ---
CREATE TABLE BOOK101 AS SELECT * FROM BOOKS_1 WHERE 1 = 0;
DESC BOOK101;

--- 20)	Insert into Book101 all the data in Book table using Select Statement.---
INSERT INTO BOOK101
SELECT * FROM BOOKS_1;
SELECT * FROM BOOK101;

--- 21)	Save all the data so far inserted in the tables.---
COMMIT;

---22)	View the data in the tables using simple SQL query.---
SELECT * FROM BOOKS_1;
SELECT * FROM BOOK101;
SELECT * FROM MEMBER_1;

---23)	Insert into Book following data 105,  National Geographic, Adis Scott, 1000,  Science--
DELETE FROM BOOKS_1 WHERE BOOK_NO=105;
INSERT INTO BOOKS_1 (Book_No, Book_Name, Author_name, Cost, Category)
VALUES (105, 'National Geographic', 'Adis Scott', 1000, 'Science');

---24) Undo the last changes---
ROLLBACK;
SELECT * FROM BOOKS_1;

---25)Modify the price of book with id 103 to Rs 300 and category to RDBMS.---
UPDATE BOOKS_1
SET COST=300 AND CATEGORY='RDBMS' WHERE BOOK_NO=103;

---26)Rename the table Lib_Issue to Issue.---
RENAME Lib_Issue TO ISSUE_1;

---27)Drop table Issue.---
DROP TABLE ISSUE_1;

---28)CREATING THE TABLE---
CREATE TABLE Issue (
    Lib_Issue_Id NUMBER(10) PRIMARY KEY,              
    Book_No NUMBER(6),                                
    Member_Id NUMBER(5),                              
    Issue_Date DATE,                                  
    Return_Date DATE,                                 
    CONSTRAINT fk_book FOREIGN KEY (Book_No) REFERENCES BOOKS_1(Book_No),  
    CONSTRAINT fk_member FOREIGN KEY (Member_Id) REFERENCES MEMBER_1(Member_Id),
    CONSTRAINT chk_dates CHECK (Issue_Date < Return_Date) 
);

---29) INSERTING THE VALUES IN ISSUE TABLE---
INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7001, 105, 1, TO_DATE('10-Dec-06', 'DD-Mon-YY'), NULL);

INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7002, 102, 2, TO_DATE('25-Dec-06', 'DD-Mon-YY'), NULL);

INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7003, 104, 1, TO_DATE('15-Jan-06', 'DD-Mon-YY'), NULL);

INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7004, 103, 1, TO_DATE('04-Jul-06', 'DD-Mon-YY'), NULL);

INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7005, 104, 2, TO_DATE('15-Nov-06', 'DD-Mon-YY'), NULL);

INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7006, 102, 3, TO_DATE('18-Feb-06', 'DD-Mon-YY'), NULL);
SELECT * FROM ISSUE;

---30)Save the data.---
COMMIT;

---31)	Disable the constraints on Issue table---
DESC ISSUE;
ALTER TABLE Issue DISABLE CONSTRAINT PK_Issue;
ALTER TABLE Issue DISABLE CONSTRAINT fk_book;
ALTER TABLE Issue DISABLE CONSTRAINT fk_member;
ALTER TABLE Issue DISABLE CONSTRAINT chk_dates;
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, STATUS
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'ISSUE';

---32)	Insert a record in Issue table. The member_id should not exist in member table.---
INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date)
VALUES (7007, 103, 999, TO_DATE('15-Oct-06', 'DD-Mon-YY'), NULL);

---33)	Now enable the constraints of Issue table. Observe the error---
ALTER TABLE Issue ENABLE CONSTRAINT PK_Issue;
ALTER TABLE Issue ENABLE CONSTRAINT fk_book;
ALTER TABLE Issue ENABLE CONSTRAINT fk_member;
ALTER TABLE Issue ENABLE CONSTRAINT chk_dates;
---ORA-00001: unique constraint (SQL_JI2B5URU85IQON4AM3KEGFJOM4.SYS_C003248455) violated on table SQL_JI2B5URU85IQON4AM3KEGFJOM4.ISSUE columns (LIB_ISSUE_ID)
---ORA-03301: (ORA-00001 details) row with column values (LIB_ISSUE_ID:7007) already exists

---34)	Delete the record inserted at Q-32) and enable the constraints.---
DELETE FROM Issue
WHERE Lib_Issue_Id = 7007;

---35)	Try to delete the record of member id 1 from member table and observe the error.---
DELETE FROM MEMBER_1
WHERE Member_Id = 1;

---36)	Modify the Return_Date of 7004,7005 to 15 days after the Issue_date.---
UPDATE Issue
SET Return_Date = Issue_Date + 15
WHERE Lib_Issue_Id IN (7004, 7005);

---37)	Modify the Penalty_Amount for Garima Sen to Rs 100.---
SELECT * FROM MEMBER_1;
UPDATE MEMBER_1
SET PENALTY_AMOUNT=100 WHERE MEMBER_NAME='GARIMA SHARMA';
---ORA-02290: check constraint (SQL_JI2B5URU85IQON4AM3KEGFJOM4.MAX_PENALTY_CHECK) violated---

---38)	Perform a save point X here---
SAVEPOINT X;

---39)	Remove all the records from Issue table where member_ID is 1 and Issue date in before 10-Dec-06.
DELETE FROM Issue
WHERE Member_Id = 1
  AND Issue_Date < TO_DATE('10-Dec-06', 'DD-Mon-YY');

---40)Remove all the records from Book table with category other than RDBMS and Database.
DELETE FROM BOOKS_1
WHERE CATEGORY NOT IN('RDBMS','DATABSE');
---ORA-02292: integrity constraint (SQL_JI2B5URU85IQON4AM3KEGFJOM4.FK_BOOK) violated - child record found

---41) Undo the changes done after savepoint X.
ROLLBACK TO X;

---42)	Save all the changes done before X.
COMMIT;

---43)	Remove the table Member101.
DROP TABLE MEMBER101;

---44)	Remove the table Book101.
DROP TABLE Book101;

---45)	View the data and structure of all the three tables Member, Issue, Book.
SELECT * FROM MEMBER_1;
SELECT * FROM BOOKS_1;
SELECT * FROM ISSUE;

---46)	Create a sequence no_seq of even numbers starting with 100 and ending with 200.
CREATE SEQUENCE no_seq
START WITH 100
INCREMENT BY 2
MAXVALUE 200
NOCYCLE;

---47)	Drop the above created sequence.
DROP SEQUENCE no_seq;

---48)	Create a sequence book_seq starting with 101 and ending with 1000 And increamented by 1 without cycle.
CREATE SEQUENCE book_seq
START WITH 101
INCREMENT BY 1
MAXVALUE 1000
NOCYCLE;

---49)	Create a sequence member_seq starting with 1 and ending with 100 And increamented by 1 without cycle.
CREATE SEQUENCE member_seq
START WITH 1
INCREMENT BY 1
MAXVALUE 100
NOCYCLE;

---50) Drop the above created sequences.
DROP SEQUENCE member_seq;
DROP SEQUENCE book_seq;