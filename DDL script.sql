/* 
DDL script 

PURPOSE: 
Create the database for education organizations to manage their students, tutors and courses. This will allow 
reporting options in the future.

CREATED:       Zihan zhang & Haocheng Li 
CREATED ON:    24 March 2023
*/


/* Drop the databse will delete everything */
DROP DATABASE CourseEnrollment;


/* Create the database for the case study, course selection system */
CREATE DATABASE CourseEnrollment;


USE CourseEnrollment;


/*
DROP TABLE Programme;
DROP TABLE Student;
DROP TABLE Course;
DROP TABLE Department;
DROP TABLE Tutor;
DROP TABLE CourseEnrollment;
DROP TABLE CourseTimetable;
*/
DROP TABLE Programme;
DROP TABLE Student;
DROP TABLE Course;
DROP TABLE Department;
DROP TABLE Tutor;
DROP TABLE CourseEnrollment;
DROP TABLE CourseTimetable;


/* Create tables */


/* Create table - Programme */
CREATE TABLE Programme (
	ProgrammeCode VARCHAR(10) PRIMARY KEY,
	ProgrammeName VARCHAR(65) NOT NULL
);
/* To view the columns in the table */
EXEC sp_columns Programme;


/* Create table - Student */
CREATE TABLE Student (
	StudentID INT IDENTITY(1,1) PRIMARY KEY,
	StudentFName VARCHAR(50) NOT NULL,
	StudentLName VARCHAR(50) NOT NULL,
	Gender CHAR(1) CHECK(Gender IN ('M','F','O')),
	Email VARCHAR(50) NOT NULL,
	PhoneNumber VARCHAR(20) NOT NULL,
	DateOfBirth Date,
	ProgrammeCode VARCHAR(10) FOREIGN KEY REFERENCES Programme(ProgrammeCode) NOT NULL
);
/* To view the columns in the table */
EXEC sp_columns Student;


/* Create table - Course */
CREATE TABLE Course(
	CourseID VARCHAR(10) PRIMARY KEY,
	CourseName VARCHAR(65) NOT NULL,
	Credits INT NOT NULL
);
/* To view the columns in the table */
EXEC sp_columns Course;


/* Create table - Department */
Create TABLE Department(
	DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
	DepartName VARCHAR(65) NOT NULL,
	PhoneNum VARCHAR(20) NOT NULL,
	Location VARCHAR(65) NOT NULL
);
/* To view the columns in the table */
EXEC sp_columns Department;


/* Create table - Tutor */
CREATE TABLE Tutor(
	TutorID INT IDENTITY(1,1) PRIMARY KEY,
	TutorFName VARCHAR(50) NOT NULL,
	TutorLName VARCHAR(50) NOT NULL, 
	Gender CHAR(1) CHECK(Gender IN ('M','F','O')),
	Email VARCHAR(50) NOT NULL, 
	DepartmentID INT FOREIGN KEY REFERENCES Department(DepartmentID) NOT NULL
);
/* To view the columns in the table */
EXEC sp_columns Tutor;


/* Create table - Course Enrollment */
CREATE TABLE CourseEnrollment(
	CourseEnrollmentID INT IDENTITY(1,1) PRIMARY KEY,
	Year INT NOT NULL,
	Semester CHAR(2) NOT NULL CHECK(Semester IN ('S1','S2')),
	StudentID INT FOREIGN KEY REFERENCES Student(StudentID) NOT NULL,
	CourseID VARCHAR(10) FOREIGN KEY REFERENCES Course(CourseID) NOT NULL,
	TutorID INT FOREIGN KEY REFERENCES Tutor(TutorID) NOT NULL
);
/* To view the columns in the table */
EXEC sp_columns CourseEnrollment;


/* Create table - Course Timetable */
CREATE TABLE CourseTimetable(
	CourseTimetableID INT IDENTITY(1,1) PRIMARY KEY,
	Weekday VARCHAR(10) NOT NULL,
	StartTime Time NOT NULL,
	EndTime Time NOT NULL,
	Classroom VARCHAR(10) NOT NULL,
	CourseID VARCHAR(10) FOREIGN KEY REFERENCES Course(CourseID) NOT NULL
);
/* To view the columns in the table */
EXEC sp_columns CourseTimetable;