SQL> CREATE SEQUENCE student65_seq START WITH 1 INCREMENT BY 1;

Sequence created.

SQL> CREATE TABLE student65(student_id INT PRIMARY KEY,student99_name VARCHAR(100),student65_email VARCHAR(100));

Table created.

SQL> INSERT INTO student65(student_id,student99_name,student65_email)VALUES(student65_seq.NEXTVAL,'Alice JOHNSON','alice@example.com');

1 row created.

SQL> INSERT INTO student65(student_id,student99_name,student65_email)VALUES(student65_seq.NEXTVAL,'Bob Smith','bob@example.com');

1 row created.

SQL> INSERT INTO student65(student_id,student99_name,student65_email)VALUES(student65_seq.NEXTVAL,'Charlie Brown','charlie@example.com');

1 row created.

SQL> CREATE VIEW student65_view AS SELECT student_id,student99_name,student65_email From student65;

View created.

SQL> INSERT INTO student65(student_id,student99_name,student65_email)VALUES(student65_seq.NEXTVAL,'Diana Prince','diana@example.com');

1 row created.

SQL> UPDATE student65 SET student65_email='new_bob@example.com'WHERE student99_name='Bob Smith';

1 row updated.

SQL> DELETE FROM student65 WHERE student99_name='Charlie Brown';

1 row deleted.

SQL> SELECT*FROM student_view;

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------
         1
bob smith
new_bob@example,com

         3
diana prince
diana@example.com

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------


SQL> CREATE INDEX idx_student65_email ON student65(student65_email);

Index created.

