-- Active: 1747424605971@@127.0.0.1@5432@ph
CREATE TABLE students (
    std_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100) NOT NULL,
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);


-- insert multiple data
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Alice', 'Smith', 20, 'A+', 'Computer Science', 'alice.smith@example.com', '2004-03-15', 'O+', 'USA'),
('Bob', 'Johnson', 22, 'B', 'Mathematics', 'bob.johnson@example.com', '2002-07-09', 'A-', 'Canada'),
('Charlie', 'Brown', 19, 'A', 'Physics', 'charlie.brown@example.com', '2005-01-25', 'B+', 'UK'),
('Diana', 'Clark', 21, 'B+', 'Chemistry', 'diana.clark@example.com', '2003-11-10', 'AB-', 'Australia'),
('Ethan', 'Miller', 23, 'A', 'Economics', 'ethan.miller@example.com', '2001-05-05', 'O-', 'Germany'),
('Fiona', 'Garcia', 20, 'C', 'Literature', 'fiona.garcia@example.com', '2004-08-19', 'B-', 'France'),
('George', 'Martinez', 24, 'B-', 'Philosophy', 'george.martinez@example.com', '2000-12-01', 'A+', 'Mexico'),
('Hannah', 'Lee', 21, 'A', 'Biology', 'hannah.lee@example.com', '2003-04-30', 'O+', 'South Korea'),
('Ian', 'Walker', 22, 'C+', 'History', 'ian.walker@example.com', '2002-06-15', 'AB+', 'New Zealand'),
('Julia', 'Hall', 20, 'B', 'Art', 'julia.hall@example.com', '2004-09-11', 'B+', 'Italy'),
('Kevin', 'Allen', 25, 'A-', 'Sociology', 'kevin.allen@example.com', '1999-10-03', 'O-', 'USA'),
('Laura', 'Young', 19, 'B+', 'Engineering', 'laura.young@example.com', '2005-02-27', 'A-', 'India'),
('Michael', 'King', 23, 'A+', 'Statistics', 'michael.king@example.com', '2001-07-13', 'AB+', 'Ireland'),
('Nina', 'Wright', 21, 'C', 'Law', 'nina.wright@example.com', '2003-03-09', 'B-', 'South Africa'),
('Oscar', 'Lopez', 20, 'A-', 'Architecture', 'oscar.lopez@example.com', '2004-10-23', 'A+', 'Spain'),
('Paula', 'Scott', 22, 'B+', 'Political Science', 'paula.scott@example.com', '2002-05-01', 'O+', 'Brazil'),
('Quincy', 'Adams', 24, 'A', 'Astronomy', 'quincy.adams@example.com', '2000-08-16', 'AB-', 'USA'),
('Rachel', 'Baker', 20, 'B', 'Journalism', 'rachel.baker@example.com', '2004-01-29', 'B+', 'UK'),
('Steven', 'Nelson', 21, 'C+', 'Music', 'steven.nelson@example.com', '2003-06-17', 'O-', 'Sweden'),
('Tina', 'Perez', 23, 'A', 'Theatre', 'tina.perez@example.com', '2001-11-22', 'A-', 'Argentina');



SELECT * FROM students ORDER BY dob ASC; 