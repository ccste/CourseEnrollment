/* 
DML INSERT script 

PURPOSE: 
Creating testing sample data for application development.

CREATED:       Zihan zhang & Haocheng Li 
CREATED ON:    24 March 2023
*/

USE CourseEnrollment;

/* Insert data into tables */

/* Insert table data - Programme */
INSERT INTO Programme (ProgrammeCode, ProgrammeName)
VALUES ('P100', 'Bachelor of Science in Computer Science');
INSERT INTO Programme (ProgrammeCode, ProgrammeName)
VALUES ('P101', 'Bachelor of Arts in Psychology');
INSERT INTO Programme (ProgrammeCode, ProgrammeName)
VALUES ('P102', 'Master of Business Administration');
INSERT INTO Programme (ProgrammeCode, ProgrammeName)
VALUES ('P103', 'Doctor of Medicine');
INSERT INTO Programme (ProgrammeCode, ProgrammeName)
VALUES ('P104', 'Bachelor of Education in Mathematics');
INSERT INTO Programme (ProgrammeCode, ProgrammeName)
VALUES ('P105', 'Bachelor of Fine Arts in Acting');
INSERT INTO Programme (ProgrammeCode, ProgrammeName)
VALUES ('P106', 'Master of Science in Environmental Science');
INSERT INTO Programme (ProgrammeCode, ProgrammeName)
VALUES ('P107', 'Bachelor of Science in Nursing');
INSERT INTO Programme (ProgrammeCode, ProgrammeName)
VALUES ('P108', 'Bachelor of Arts in English Literature');
INSERT INTO Programme (ProgrammeCode, ProgrammeName)
VALUES ('P109', 'Master of Engineering in Electrical Engineering');



/* Insert table data - Student */
INSERT INTO Student (StudentFName, StudentLName, Gender, Email, PhoneNumber, DateOfBirth, ProgrammeCode)
VALUES ('John', 'Doe', 'M', 'johndoe@gmail.com', '0210291520', '21-Apr-1998', 'P100');
INSERT INTO Student (StudentFName, StudentLName, Gender, Email, PhoneNumber, DateOfBirth, ProgrammeCode)
VALUES ('Jane', 'Doe', 'F', 'janedoe@gmail.com', '0210298463', '27-Apr-1998', 'P101');
INSERT INTO Student (StudentFName, StudentLName, Gender, Email, PhoneNumber, DateOfBirth, ProgrammeCode)
VALUES ('Bob', 'Smith', 'M', 'bobsmith@gmail.com', '0210298430', '23-Mar-1999', 'P100');
INSERT INTO Student (StudentFName, StudentLName, Gender, Email, PhoneNumber, DateOfBirth, ProgrammeCode)
VALUES ('Alice', 'Johnson', 'F', 'alicejohnson@gmail.com', '0210224863', '24-Mar-1999', 'P105');
INSERT INTO Student (StudentFName, StudentLName, Gender, Email, PhoneNumber, DateOfBirth, ProgrammeCode)
VALUES ('David', 'Lee', 'M', 'davidlee@gmail.com', '0210224867', '18-Oct-2000', 'P102');
INSERT INTO Student (StudentFName, StudentLName, Gender, Email, PhoneNumber, DateOfBirth, ProgrammeCode)
VALUES ('Sarah', 'Wilson', 'F', 'sarahwilson@gmail.com', '0210224861', '19-Oct-2000', 'P108');
INSERT INTO Student (StudentFName, StudentLName, Gender, Email, PhoneNumber, DateOfBirth, ProgrammeCode)
VALUES ('Michael', 'Chen', 'M', 'michaelchen@gmail.com', '0210278433', '20-Oct-2000', 'P106');
INSERT INTO Student (StudentFName, StudentLName, Gender, Email, PhoneNumber, DateOfBirth, ProgrammeCode)
VALUES ('Emily', 'Garcia', 'F', 'emilygarcia@gmail.com', '0210274561', '04-Dec-2001', 'P103');
INSERT INTO Student (StudentFName, StudentLName, Gender, Email, PhoneNumber, DateOfBirth, ProgrammeCode)
VALUES ('William', 'Kim', 'M', 'williamkim@gmail.com', '0210274562', '09-Dec-2001', 'P109');
INSERT INTO Student (StudentFName, StudentLName, Gender, Email, PhoneNumber, DateOfBirth, ProgrammeCode)
VALUES ('Olivia', 'Taylor', 'F', 'oliviataylor@gmail.com', '0210274563', '12-Aug-2001', 'P107');


/* Insert table data - Course */
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES ('CSCI101', 'Introduction to Computer Science', 15);
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES ('PSYC101', 'Introduction to Psychology', 15);
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES ('MATH201', 'Calculus I', 15);
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES ('ENG101', 'Composition I', 15);
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES ('CHEM101', 'General Chemistry I', 15);
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES ('PHYS101', 'Introduction to Physics', 15);
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES ('HIST101', 'Introduction to World History', 15);
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES ('BIOL101', 'Introduction to Biology', 15);
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES ('ART101', 'Art Appreciation', 15);
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES ('COMM101', 'Public Speaking', 15);



/* Insert table data - Department */
INSERT INTO Department (DepartName, PhoneNum, Location)
VALUES ('Computer Science', '0800501400', 'Building A, Room 101');
INSERT INTO Department (DepartName, PhoneNum, Location)
VALUES ('Mathematics', '0800501401', 'Building B, Room 201');
INSERT INTO Department (DepartName, PhoneNum, Location)
VALUES ('Engineering', '0800501402', 'Building C, Room 301');
INSERT INTO Department (DepartName, PhoneNum, Location)
VALUES ('Business', '0800501403', 'Building D, Room 401');
INSERT INTO Department (DepartName, PhoneNum, Location)
VALUES ('History', '0800501404', 'Building E, Room 501');
INSERT INTO Department (DepartName, PhoneNum, Location)
VALUES ('English', '0800501405', 'Building F, Room 601');
INSERT INTO Department (DepartName, PhoneNum, Location)
VALUES ('Psychology', '0800501406', 'Building G, Room 701');
INSERT INTO Department (DepartName, PhoneNum, Location)
VALUES ('Biology', '0800501407', 'Building H, Room 801');
INSERT INTO Department (DepartName, PhoneNum, Location)
VALUES ('Chemistry', '0800501408', 'Building I, Room 901');
INSERT INTO Department (DepartName, PhoneNum, Location)
VALUES ('Physics', '0800501409', 'Building J, Room 1001');



/* Insert table data - Tutor */
INSERT INTO Tutor (TutorFName, TutorLName, Gender, Email, DepartmentID)
VALUES ('John', 'Smith', 'M', 'john.smith@gmail.com', 1);
INSERT INTO Tutor (TutorFName, TutorLName, Gender, Email, DepartmentID)
VALUES ('Jane', 'Dickson', 'F', 'jane.dickson@gmail.com', 2);
INSERT INTO Tutor (TutorFName, TutorLName, Gender, Email, DepartmentID)
VALUES ('Bob', 'Johnson', 'M', 'bob.johnson@gmail.com', 1);
INSERT INTO Tutor (TutorFName, TutorLName, Gender, Email, DepartmentID)
VALUES ('Samantha', 'Green', 'F', 'samantha.green@gmail.com', 3);
INSERT INTO Tutor (TutorFName, TutorLName, Gender, Email, DepartmentID)
VALUES ('David', 'Nguyen', 'M', 'david.nguyen@gmail.com', 2);
INSERT INTO Tutor (TutorFName, TutorLName, Gender, Email, DepartmentID)
VALUES ('Linda', 'Garcia', 'F', 'linda.garcia@gmail.com', 3);
INSERT INTO Tutor (TutorFName, TutorLName, Gender, Email, DepartmentID)
VALUES ('Michael', 'Rodriguez', 'M', 'michael.rodriguez@gmail.com', 1);
INSERT INTO Tutor (TutorFName, TutorLName, Gender, Email, DepartmentID)
VALUES ('Emily', 'Kim', 'F', 'emily.kim@gmail.com', 2);
INSERT INTO Tutor (TutorFName, TutorLName, Gender, Email, DepartmentID)
VALUES ('Steven', 'Chen', 'M', 'steven.chen@gmail.com', 3);
INSERT INTO Tutor (TutorFName, TutorLName, Gender, Email, DepartmentID)
VALUES ('Catherine', 'Wang', 'F', 'catherine.wang@gmail.com', 1);


/* 
Insert table data - CourseEnrollment 
Note: In CourseEnrollment table, each student can select different courses and each tutor can teach different courses
*/
INSERT INTO CourseEnrollment (Year, Semester, StudentID, CourseID, TutorID)
VALUES (2022, 'S1', 1, 'CSCI101', 2);
INSERT INTO CourseEnrollment (Year, Semester, StudentID, CourseID, TutorID)
VALUES (2022, 'S1', 1, 'PSYC101', 2);
INSERT INTO CourseEnrollment (Year, Semester, StudentID, CourseID, TutorID)
VALUES (2022, 'S1', 2, 'MATH201', 2);
INSERT INTO CourseEnrollment (Year, Semester, StudentID, CourseID, TutorID)
VALUES (2022, 'S1', 2, 'ENG101', 8);
INSERT INTO CourseEnrollment (Year, Semester, StudentID, CourseID, TutorID)
VALUES (2022, 'S1', 2, 'CHEM101', 10);
INSERT INTO CourseEnrollment (Year, Semester, StudentID, CourseID, TutorID)
VALUES (2022, 'S2', 6, 'PHYS101', 1);
INSERT INTO CourseEnrollment (Year, Semester, StudentID, CourseID, TutorID)
VALUES (2022, 'S2', 7, 'HIST101', 3);
INSERT INTO CourseEnrollment (Year, Semester, StudentID, CourseID, TutorID)
VALUES (2022, 'S2', 8, 'BIOL101', 5);
INSERT INTO CourseEnrollment (Year, Semester, StudentID, CourseID, TutorID)
VALUES (2022, 'S2', 9, 'ART101', 7);
INSERT INTO CourseEnrollment (Year, Semester, StudentID, CourseID, TutorID)
VALUES (2022, 'S2', 10, 'COMM101', 9);



/* Insert table data - CourseTimetable */
INSERT INTO CourseTimetable (Weekday, StartTime, EndTime, Classroom, CourseID)
VALUES ('Monday', '09:00:00', '10:30:00', 'Room A', 'CSCI101');
INSERT INTO CourseTimetable (Weekday, StartTime, EndTime, Classroom, CourseID)
VALUES ('Tuesday', '13:00:00', '14:30:00', 'Room B', 'PSYC101');
INSERT INTO CourseTimetable (Weekday, StartTime, EndTime, Classroom, CourseID)
VALUES ('Wednesday', '10:00:00', '11:30:00', 'Room C', 'MATH201');
INSERT INTO CourseTimetable (Weekday, StartTime, EndTime, Classroom, CourseID)
VALUES ('Thursday', '11:00:00', '12:30:00', 'Room D', 'ENG101');
INSERT INTO CourseTimetable (Weekday, StartTime, EndTime, Classroom, CourseID)
VALUES ('Friday', '14:00:00', '15:30:00', 'Room E', 'CHEM101');
INSERT INTO CourseTimetable (Weekday, StartTime, EndTime, Classroom, CourseID)
VALUES ('Monday', '13:00:00', '14:30:00', 'Room F', 'PHYS101');
INSERT INTO CourseTimetable (Weekday, StartTime, EndTime, Classroom, CourseID)
VALUES ('Wednesday', '09:00:00', '10:30:00', 'Room G', 'HIST101');
INSERT INTO CourseTimetable (Weekday, StartTime, EndTime, Classroom, CourseID)
VALUES ('Thursday', '09:00:00', '10:30:00', 'Room H', 'BIOL101');
INSERT INTO CourseTimetable (Weekday, StartTime, EndTime, Classroom, CourseID)
VALUES ('Tuesday', '10:00:00', '11:30:00', 'Room I', 'ART101');
INSERT INTO CourseTimetable (Weekday, StartTime, EndTime, Classroom, CourseID)
VALUES ('Friday', '11:00:00', '12:30:00', 'Room J', 'COMM101');