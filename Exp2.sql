SQL> Create table Student99(StudentID int,Name varchar(30),Age int);

Table created.

SQL> Insert into Student99 values(1,'Alice',20);

1 row created.

SQL> Insert into Student99 values(2,'bob',22);

1 row created.

SQL> Insert into Student99 values(3,'charlie',21);

1 row created.

SQL> Create table Courses99(CourseID int,CourseName varchar(20));

Table created.

SQL> Insert into Courses99 values(101,'math');

1 row created.

SQL> Insert into Courses99 values(102,'english');

1 row created.

SQL> Insert into Courses99 values(103,'history');

1 row created.

SQL> Create table Enrollments99(EnrollmentID int,StudentID int,CourseID int,Grade varchar(5));

Table created.

SQL> Insert into Enrollments99 values(1,1,101,'A');

1 row created.

SQL> Insert into Enrollments99 values(1,1,102,'B');

1 row created.

SQL> Insert into Enrollments99 values(2,1,102,'B');

1 row created.

SQL> Insert into Enrollments99 values(3,2,102,'A-');

1 row created.

SQL> Insert into Enrollments99 values(4,3,103,'B+');

1 row created.

SQL> Insert into Enrollments99 values(5,3,102,'A');

1 row created.

SQL> SELECT Student99.StudentID,Student99.Name,Student99.Age,Courses99.CourseID,Courses99.CourseName,Enrollments99.Grade FROM Student99 INNER JOIN Enrollments99 ON Student99.StudentID=Enrollments99.StudentID INNER JOIN Courses99 ON Enrollments99.CourseID=Courses99.CourseID;

 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         1 Alice                                  20        101
math                 A

         3 charlie                                21        102
english              A

         2 bob                                    22        102
english              A-


 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         1 Alice                                  20        102
english              B

         3 charlie                                21        103
history              B+


SQL> SELECT Student99.StudentID,Student99.Name,Student99.Age,Courses99.CourseID,Courses99.CourseName,Enrollments99.Grade FROM Student99 LEFT JOIN Enrollments99 ON Student99.StudentID=Enrollments99.StudentID LEFT JOIN Courses99 ON Enrollments99.CourseID=Courses99.CourseID;

 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         1 Alice                                  20        101
math                 A

         3 charlie                                21        102
english              A

         2 bob                                    22        102
english              A-


 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         1 Alice                                  20        102
english              B

         3 charlie                                21        103
history              B+


SQL> SELECT Student99.StudentID,Student99.Name,Student99.Age,Courses99.CourseID,Courses99.CourseName,Enrollments99.Grade FROM Courses99 RIGHT JOIN Enrollments99 ON Courses99.CourseID=Enrollments99.CourseID RIGHT JOIN Student99 ON Enrollments99.StudentID=Student99.StudentID;

 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         1 Alice                                  20        101
math                 A

         3 charlie                                21        102
english              A

         2 bob                                    22        102
english              A-


 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         1 Alice                                  20        102
english              B

         3 charlie                                21        103
history              B+


