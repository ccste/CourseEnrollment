/* 
DML SELECT script 

PURPOSE: 
Testing the sample data for application development.

CREATED:       Zihan zhang & Haocheng Li 
CREATED ON:    24 March 2023
*/


USE CourseEnrollment;


/* Select table data - Programme */
SELECT * 
FROM Programme;


/* Select table data - Student */
SELECT * 
FROM Student;


/* Select table data - Course */
SELECT * 
FROM Course;


/* Select table data - Department */
SELECT * 
FROM Department;


/* Select table data - Tutor */
SELECT * 
FROM Tutor;


/* Select table data - CourseEnrollment */
SELECT * 
FROM CourseEnrollment;


/* Select table data - CourseTimetable */
SELECT * 
FROM CourseTimetable;



/* Display the overall course enrollment information */
SELECT CE.CourseEnrollmentID, CE.Year, CE.Semester, CE.StudentID, S.StudentFName +' '+ S.StudentLName AS 'Student Full Name', CE.CourseID, C.CourseName, C.Credits, CE.TutorID, T.TutorFName +' '+ T.TutorLName AS 'Tutor Full Name'
FROM Course C, Student S, Tutor T, CourseEnrollment CE
WHERE CE.StudentID = S.StudentID AND CE.CourseID = C.CourseID AND CE.TutorID = T.TutorID
ORDER BY CE.StudentID ASC;