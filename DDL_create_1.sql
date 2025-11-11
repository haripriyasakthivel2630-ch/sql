create database Student;
use student;
show databases;
create table Students(
studentID int primary key,
first_name varchar(50),
last_name varchar(50),
dob date,
email varchar(100),
address varchar(100)
);
desc Students;

create table Courses(
course_id int primary key,
course_name varchar(100),
course_code varchar(50),
credits int -- hours
);
desc Courses;

create table Enrollments(
enrollment_id int primary key,
studentID int,
course_id int,
enrollment_date date,
foreign key(studentID) references Students(studentID),
foreign key(course_id) references Courses(course_id)
);
desc Enrollments;

