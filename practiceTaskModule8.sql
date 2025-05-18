-- Active: 1747486928827@@127.0.0.1@5432@ph


DROP TABLE students;



-- create a new table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    roll INT UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INT,
    department CHAR(3) NOT NULL,
    score INT NOT NULL,
    status VARCHAR(20) NOT NULL,
    last_login DATE NOT NULL
)


SELECT * FROM students;



-- ====================== add a new column
ALTER TABLE students
    ADD COLUMN email VARCHAR(100);


-- ================ reneme email to student_email
ALTER TABLE students
    RENAME COLUMN email to student_email;

-- ================== make unique student_email
ALTER TABLE students
    ADD constraint unique_student_email UNIQUE(student_email);


-- ================= create a new table
CREATE TABLE course(
    id SERIAL,
    courseName VARCHAR(50)
)


-- =============== add primary key
ALTER TABLE course
    ADD constraint pk_course_id PRIMARY KEY(id);


-- =============== deleting a column from existing table
ALTER TABLE course
    DROP COLUMN courseName





-- ========================= Inserting 50 Students data
INSERT INTO students (roll, name, age, department, score, status, last_login, student_email) VALUES
(1001, 'Alice Johnson', 20, 'CSE', 85, 'active', '2025-05-10', 'alice.johnson@example.com'),
(1002, 'Bob Smith', 22, 'EEE', 78, 'active', '2025-05-11', 'bob.smith@example.com'),
(1003, 'Charlie Brown', 21, 'BBA', 65, 'inactive', '2025-04-28', 'charlie.brown@example.com'),
(1004, 'David Wilson', 23, 'CSE', 90, 'active', '2025-05-16', 'david.wilson@example.com'),
(1005, 'Ella James', 19, 'ECE', 74, 'suspended', '2025-03-15', 'ella.james@example.com'),
(1006, 'Frank Miller', 22, 'CSE', 82, 'active', '2025-05-10', 'frank.miller@example.com'),
(1007, 'Grace Lee', 20, 'BBA', 88, 'active', '2025-05-09', 'grace.lee@example.com'),
(1008, 'Henry Adams', 21, 'EEE', 77, 'active', '2025-04-30', 'henry.adams@example.com'),
(1009, 'Isla Harris', 22, 'CSE', 93, 'active', '2025-05-11', 'isla.harris@example.com'),
(1010, 'Jack White', 23, 'ECE', 68, 'inactive', '2025-04-12', 'jack.white@example.com'),
(1011, 'Kara Scott', 20, 'BBA', 72, 'active', '2025-05-13', 'kara.scott@example.com'),
(1012, 'Liam Turner', 19, 'CSE', 85, 'active', '2025-05-14', 'liam.turner@example.com'),
(1013, 'Mia Cooper', 21, 'EEE', 66, 'inactive', '2025-05-01', 'mia.cooper@example.com'),
(1014, 'Noah Bailey', 24, 'CSE', 91, 'active', '2025-05-11', 'noah.bailey@example.com'),
(1015, 'Olivia Cox', 20, 'ECE', 87, 'active', '2025-05-08', 'olivia.cox@example.com'),
(1016, 'Paul Ward', 22, 'BBA', 60, 'suspended', '2025-03-20', 'paul.ward@example.com'),
(1017, 'Quinn Diaz', 23, 'EEE', 80, 'active', '2025-04-29', 'quinn.diaz@example.com'),
(1018, 'Ruby Evans', 21, 'CSE', 86, 'active', '2025-05-17', 'ruby.evans@example.com'),
(1019, 'Sam Brooks', 20, 'ECE', 70, 'active', '2025-04-25', 'sam.brooks@example.com'),
(1020, 'Tina Foster', 19, 'BBA', 73, 'active', '2025-05-05', 'tina.foster@example.com'),
(1021, 'Umar Hayes', 24, 'CSE', 89, 'active', '2025-05-12', 'umar.hayes@example.com'),
(1022, 'Vera Powell', 21, 'EEE', 75, 'inactive', '2025-04-18', 'vera.powell@example.com'),
(1023, 'Will Reed', 23, 'ECE', 62, 'active', '2025-05-10', 'will.reed@example.com'),
(1024, 'Xena Simmons', 22, 'CSE', 95, 'active', '2025-05-14', 'xena.simmons@example.com'),
(1025, 'Yara Price', 20, 'BBA', 71, 'suspended', '2025-02-14', 'yara.price@example.com'),
(1026, 'Zane Ross', 21, 'EEE', 69, 'active', '2025-04-27', 'zane.ross@example.com'),
(1027, 'Ava Watson', 22, 'CSE', 92, 'active', '2025-05-16', 'ava.watson@example.com'),
(1028, 'Ben Wood', 23, 'ECE', 65, 'inactive', '2025-03-09', 'ben.wood@example.com'),
(1029, 'Cleo Young', 20, 'BBA', 84, 'active', '2025-05-02', 'cleo.young@example.com'),
(1030, 'Dean Bell', 21, 'EEE', 78, 'active', '2025-05-15', 'dean.bell@example.com'),
(1031, 'Eva Carter', 19, 'CSE', 79, 'active', '2025-05-12', 'eva.carter@example.com'),
(1032, 'Finn Morgan', 20, 'ECE', 67, 'active', '2025-04-22', 'finn.morgan@example.com'),
(1033, 'Gina Perez', 23, 'BBA', 83, 'active', '2025-05-10', 'gina.perez@example.com'),
(1034, 'Hugo Kelly', 21, 'EEE', 76, 'active', '2025-04-28', 'hugo.kelly@example.com'),
(1035, 'Ivy Richardson', 20, 'CSE', 88, 'active', '2025-05-13', 'ivy.richardson@example.com'),
(1036, 'Jake Martinez', 22, 'ECE', 69, 'inactive', '2025-03-25', 'jake.martinez@example.com'),
(1037, 'Kim Nguyen', 24, 'BBA', 82, 'active', '2025-05-03', 'kim.nguyen@example.com'),
(1038, 'Leo Rivera', 21, 'EEE', 90, 'active', '2025-05-06', 'leo.rivera@example.com'),
(1039, 'Maya Gray', 20, 'CSE', 86, 'active', '2025-05-09', 'maya.gray@example.com'),
(1040, 'Nate Bennett', 23, 'ECE', 61, 'suspended', '2025-02-18', 'nate.bennett@example.com'),
(1041, 'Opal Patterson', 22, 'BBA', 77, 'active', '2025-04-26', 'opal.patterson@example.com'),
(1042, 'Perry Hughes', 21, 'EEE', 68, 'inactive', '2025-04-10', 'perry.hughes@example.com'),
(1043, 'Queenie Foster', 19, 'CSE', 84, 'active', '2025-05-11', 'queenie.foster@example.com'),
(1044, 'Ralph Holland', 20, 'ECE', 75, 'active', '2025-04-21', 'ralph.holland@example.com'),
(1045, 'Sophie Barrett', 22, 'BBA', 89, 'active', '2025-05-04', 'sophie.barrett@example.com'),
(1046, 'Tony Stone', 23, 'EEE', 80, 'active', '2025-05-10', 'tony.stone@example.com'),
(1047, 'Uma Gibson', 21, 'CSE', 90, 'active', '2025-05-15', 'uma.gibson@example.com'),
(1048, 'Vince Nash', 22, 'ECE', 64, 'inactive', '2025-03-29', 'vince.nash@example.com'),
(1049, 'Wendy Marsh', 20, 'BBA', 71, 'active', '2025-04-30', 'wendy.marsh@example.com'),
(1050, 'Xander Craig', 21, 'EEE', 85, 'active', '2025-05-12', 'xander.craig@example.com');


-- Write a query to find all students who have a score greater than 80 and not null.
SELECT * FROM students 
    WHERE score > 80 AND score IS NOT NULL



-- Use the NOT operator to exclude students from a specific department.
SELECT * FROM students
    WHERE department <> 'ECE'

-- Fetch students whose names start with ‘A’ using LIKE and ILIKE.
SELECT * FROM students
    WHERE name LIKE('A%');

SELECT * FROM students
    WHERE name ILIKE('a%')


-- Select all students whose age is between 18 and 25.
SELECT * FROM students
    WHERE age BETWEEN 18 and 25;




-- Retrieve rows using IN for a specific set of roll numbers.
SELECT * FROM students
    WHERE roll IN(1001, 1011, 1015, 1020, 1035, 1040, 1050);




-- Count how many students exist in the students table.
SELECT COUNT(roll) FROM students;

-- Find the average score of students in a specific department.
SELECT AVG(score) FROM students
    WHERE department = 'CSE';



-- Get the maximum and minimum age of all students.
SELECT MIN(age) FROM students;


SELECT MAX(age) FROM students;



-- Update the status of students who scored less than 50 to 'failed'.
UPDATE students
    set last_login = '2023-12-12'
    WHERE id = 50;


SELECT * FROM students;


-- Delete students who have not logged in since last year.
DELETE FROM students
    WHERE last_login < CURRENT_DATE - INTERVAL '1 year';




-- Use LIMIT and OFFSET to fetch the second page of results (5 per page).
SELECT * FROM students LIMIT 5 OFFSET 5 * 1;