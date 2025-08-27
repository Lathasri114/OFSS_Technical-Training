-- Create the 'Member' table
CREATE TABLE Member (
    Member_Id NUMBER(5) PRIMARY KEY,
    Member_Name VARCHAR2(30) NOT NULL,
    Member_address VARCHAR2(50),
    Acc_Open_Date DATE,
    Membership_type VARCHAR2(20),
    Fees_paid NUMBER(4),
    Max_Books_Allowed NUMBER(2),
    Penalty_Amount NUMBER(7,2)
);

-- Create the 'Books' table
CREATE TABLE Books (
    Book_No NUMBER(6) PRIMARY KEY,
    Book_Name VARCHAR2(30) NOT NULL,
    Author_name VARCHAR2(30),
    Cost NUMBER(7,2),
    Category CHAR(10)
);

-- Create the 'Issue' table
CREATE TABLE Issue (
    Lib_Issue_Id NUMBER(10) PRIMARY KEY,
    Book_No NUMBER(6),
    Member_Id NUMBER(5),
    Issue_Date DATE,
    Return_Date DATE
);

-- Inserting values into 'Member' table

INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date) 
VALUES (7001, 1001, 101, TO_DATE('2005-01-15', 'YYYY-MM-DD'), TO_DATE('2005-02-15', 'YYYY-MM-DD'));  -- Fixed to 2005
INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date) 
VALUES (7002, 1002, 102, TO_DATE('2006-02-10', 'YYYY-MM-DD'), TO_DATE('2006-03-10', 'YYYY-MM-DD'));  -- Fixed to 2006
INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date) 
VALUES (7003, 1003, 103, TO_DATE('2005-01-10', 'YYYY-MM-DD'), TO_DATE('2005-02-10', 'YYYY-MM-DD'));  -- Fixed to 2005
INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date) 
VALUES (7004, 1004, 104, TO_DATE('2006-03-01', 'YYYY-MM-DD'), TO_DATE('2006-04-01', 'YYYY-MM-DD'));  -- Fixed to 2006
INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date) 
VALUES (7005, 1005, 105, TO_DATE('2006-03-15', 'YYYY-MM-DD'), TO_DATE('2006-04-15', 'YYYY-MM-DD'));  -- Fixed to 2006
INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date) 
VALUES (7006, 1001, 101, TO_DATE('2005-05-15', 'YYYY-MM-DD'), TO_DATE('2005-06-15', 'YYYY-MM-DD'));  -- Fixed to 2005
INSERT INTO Issue (Lib_Issue_Id, Book_No, Member_Id, Issue_Date, Return_Date) 
VALUES (7007, 1002, 102, TO_DATE('2006-05-20', 'YYYY-MM-DD'), TO_DATE('2006-05-22', 'YYYY-MM-DD'));  -- Fixed to 2006

-- Inserting values into 'Books' table
INSERT INTO Books (Book_No, Book_Name, Author_name, Cost, Category) 
VALUES (1001, 'Learn SQL', 'Loni', 450.00, 'Database');
INSERT INTO Books (Book_No, Book_Name, Author_name, Cost, Category) 
VALUES (1002, 'Advanced SQL', 'Loni', 550.00, 'Database');
INSERT INTO Books (Book_No, Book_Name, Author_name, Cost, Category) 
VALUES (1003, 'Database Systems', 'John Doe', 650.00, 'Database');
INSERT INTO Books (Book_No, Book_Name, Author_name, Cost, Category) 
VALUES (1004, 'The Science of Everything', 'Alice White', 300.00, 'Science');
INSERT INTO Books (Book_No, Book_Name, Author_name, Cost, Category) 
VALUES (1005, 'Fictional Tales', 'Emily Blake', 200.00, 'Fiction');
INSERT INTO Books (Book_No, Book_Name, Author_name, Cost, Category) 
VALUES (1006, 'Introduction to Management', 'David Clark', 350.00, 'Management');
INSERT INTO Books (Book_No, Book_Name, Author_name, Cost, Category) 
VALUES (1007, 'Data Structures in C', 'Mark Green', 550.00, 'Database');
INSERT INTO Books (Book_No, Book_Name, Author_name, Cost, Category) 
VALUES (1008, 'Python Programming', 'William Stone', 450.00, 'Technology');
INSERT INTO Books (Book_No, Book_Name, Author_name, Cost, Category) 
VALUES (1009, 'The Quantum World', 'David Copperfield', 700.00, 'Science');
INSERT INTO Books (Book_No, Book_Name, Author_name, Cost, Category) 
VALUES (1010, 'RDBMS Concepts', 'James White', 600.00, 'RDBMS');

-- Inserting values into 'Issue' table

INSERT INTO Member (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_type, Fees_paid, Max_Books_Allowed, Penalty_Amount) 
VALUES (101, 'Ramesh Kumar', 'Delhi', TO_DATE('2005-06-01', 'YYYY-MM-DD'), 'Lifetime', 1000, 5, 200.00);
INSERT INTO Member (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_type, Fees_paid, Max_Books_Allowed, Penalty_Amount) 
VALUES (102, 'Geeta Sharma', 'Mumbai', TO_DATE('2006-07-15', 'YYYY-MM-DD'), 'Annual', 500, 4, 50.00);
INSERT INTO Member (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_type, Fees_paid, Max_Books_Allowed, Penalty_Amount) 
VALUES (103, 'Loni Smith', 'Bangalore', TO_DATE('2005-08-20', 'YYYY-MM-DD'), 'Half Yearly', 400, 6, 100.00);
INSERT INTO Member (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_type, Fees_paid, Max_Books_Allowed, Penalty_Amount) 
VALUES (104, 'Ravi Gupta', 'Chennai', TO_DATE('2006-03-05', 'YYYY-MM-DD'), 'Quarterly', 250, 3, 150.00);
INSERT INTO Member (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_type, Fees_paid, Max_Books_Allowed, Penalty_Amount) 
VALUES (105, 'Gaurav Yadav', 'Hyderabad', TO_DATE('2006-09-10', 'YYYY-MM-DD'), 'Annual', 450, 4, 75.00);
INSERT INTO Member (Member_Id, Member_Name, Member_address, Acc_Open_Date, Membership_type, Fees_paid, Max_Books_Allowed, Penalty_Amount) 
VALUES (106, 'LATHA SRI', 'CHENNAI', TO_DATE('2006-01-01', 'YYYY-MM-DD'), 'Annual', 650, 5, 100.00);

SELECT * FROM BOOKS;
SELECT * FROM MEMBER;
SELECT * FROM ISSUE;

--- (1) List all the books that are written by Author Loni and has price less then 600 ---
SELECT * FROM BOOKS WHERE AUTHOR_NAME='Loni' AND COST <600;

--- 2)	List the Issue details for the books that are not returned yet. ---
SELECT * FROM ISSUE WHERE RETURN_DATE IS NULL;

--- 3)	Update all the blank return_date with 31-Dec-06 excluding 7005 and 7006. ---
UPDATE ISSUE
SET RETURN_DATE=TO_DATE('DEC-31-2006', 'MM-DD-YYYY')
WHERE RETURN_DATE IS NULL AND LIB_ISSUE_ID NOT IN (7005,7006);
SELECT * FROM ISSUE;

---4)	List all the Issue details that have books issued for more then 30 days. ---
SELECT * FROM ISSUE
WHERE RETURN_DATE - ISSUE_DATE > 30;

--- 5)	List all the books that have price in range of 500 to 750 and has category as Database. ---
SELECT * FROM BOOKS WHERE COST BETWEEN 500 AND 750 AND CATEGORY='Database';

--- 6)	List all the books that belong to any one of the following categories Science, Database, Fiction, Management. ---
SELECT * FROM BOOKS WHERE CATEGORY IN ('Database', 'Science', 'Management', 'Fiction');

--- 7)	List all the members in the descending order of Penalty due on them. ---
SELECT * FROM MEMBER ORDER BY PENALTY_AMOUNT DESC;

--- 8)	List all the books in ascending order of category and descending order of price. ---
SELECT * FROM BOOKS ORDER BY CATEGORY ASC,COST DESC;

--- 9)	List all the books that contain word SQL in the name of the book. ---
SELECT * FROM BOOKS WHERE BOOK_NAME LIKE '%SQL%';

--- 10)	List all the members whose name starts with R or G and contains letter I in it. ---
SELECT * FROM MEMBER WHERE (MEMBER_NAME LIKE 'R%' OR MEMBER_NAME LIKE 'G%') AND MEMBER_NAME LIKE '%i%';
SELECT * FROM MEMBER WHERE (UPPER(MEMBER_NAME) LIKE 'R%' OR UPPER(MEMBER_NAME) LIKE 'G%') AND UPPER(MEMBER_NAME) LIKE '%I%';

--- 11)	List the entire book name in Init cap and author in upper case in the descending order of the book name. ---
SELECT INITCAP(BOOK_NAME), UPPER(AUTHOR_NAME) FROM BOOKS ORDER BY AUTHOR_NAME DESC;

--- 12)	List the Issue Details for all the books issue by member 101  with Issue_date and Return Date in following format. ‘Monday, July, 10, 2006’. ---
SELECT * FROM ISSUE;
SELECT Lib_Issue_Id,
    TO_CHAR(Issue_Date,'Day, Month - DD - YYYY') AS "Issue Date",
    TO_CHAR(Return_Date,'Day, Month - DD - YYYY') AS "Return Date"
FROM Issue WHERE Member_Id=101;

--- 13)	List the data in the book table with category data displayed as  D for Database, S for Science, R for RDBMS and O for all the others.---
SELECT 
    Book_No,
    Book_Name,
    Author_name,
    Cost,
    Category,
    CASE 
        WHEN Category = 'Database' THEN 'D'
        WHEN Category = 'Science' THEN 'S'
        WHEN Category = 'RDBMS' THEN 'R'
        ELSE 'O'
    END AS "Category Name"
FROM Books;

--- 14) List all the members that became the member in the year 2006. ---
SELECT * FROM MEMBER;
SELECT * FROM MEMBER WHERE TO_CHAR(ACC_OPEN_DATE,'YYYY') = '2006';

--- 15)	List the Lib_Issue_Id, Issue_Date, Return_Date and No of days Book was issued. ---
SELECT * FROM ISSUE;
SELECT LIB_ISSUE_ID, ISSUE_DATE, RETURN_DATE, RETURN_DATE-ISSUE_DATE AS "NO OF DAYS" FROM ISSUE;

--- 16)Find the details of the member of the Library in the order of their joining the library. ---
SELECT *FROM MEMBER;
SELECT * FROM MEMBER ORDER BY ACC_OPEN_DATE ASC;

--- 17) Display the count of total no of books issued to Member 101. ---
SELECT * FROM ISSUE;
SELECT COUNT(BOOK_NO)FROM ISSUE WHERE MEMBER_ID=101;

--- 18) Display the total penalty due for all the members. ---
SELECT * FROM MEMBER;
SELECT SUM(PENALTY_AMOUNT) FROM MEMBER;

--- 19)	Display the total no of members ---
SELECT * FROM MEMBER;
SELECT COUNT(MEMBER_ID) AS "TOTAL NO OF MEMBERS REGISTERED" FROM MEMBER;

--- 20) Display the total no of books issued ---
SELECT * FROM BOOKS;
SELECT COUNT(*) FROM BOOKS;

--- 21) Display the average membership fees paid by all the members ---
SELECT * FROM MEMBER;
SELECT AVG(FEES_PAID) AS "AVERAGE FEES PAID" FROM MEMBER;

--- 22) Display no of months between issue date and return date for all issue ---
SELECT * FROM ISSUE;
SELECT 
    Lib_Issue_Id,
    Book_No,
    Member_Id,
    Issue_Date,
    Return_Date,
    TRUNC(MONTHS_BETWEEN(Return_Date, Issue_Date)) AS "Months Between"
FROM Issue
WHERE Return_Date IS NOT NULL;

--- 23)	Display the length of member’s name ---
SELECT MEMBER_NAME, (LENGTH(REPLACE(MEMBER_NAME, ' ',''))) FROM MEMBER;

--- 24)	Display the first 5 characters of  membership_type for all members ---
SELECT * FROM MEMBER;
SELECT MEMBER_NAME,SUBSTR(REPLACE(MEMBERSHIP_TYPE,' ',''),0,5) FROM MEMBER;

--- 25)	Display the last day of the month of issue date ---
SELECT * FROM ISSUE;
SELECT Lib_Issue_Id, LAST_DAY(Issue_Date) AS Last_Day
FROM Issue;
