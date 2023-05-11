# Course Enrollment Database

The course enrollment system is designed to help organizations manage the course enrollment process each semester. The system allows students to browse and select courses, tutors to view which courses they would teach, and administrators to manage course information, student information, and tutor information.

### Minimum Viable Product
The minimum viable product (MVP) for the course enrollment system includes the following features:

1. Sign up and log in system
2. Student information management
3. Tutor information management
4. Course enrollment for students every semester
5. The view of timetable
6. Course information management - Assign tutors for different courses

### Table Structure
The database includes seven tables with the following structure:

Student table
| Column name | Data type |
|------|-----|
| StudentID (PK) | INT |
| StudentFName | VARCHAR(50) |
| StudentLName | VARCHAR(50) |
	
	
	
Gender	CHAR(1)
Email	VARCHAR(50)
PhoneNumber	VARCHAR(20)
DateOfBirth	DATE
ProgrammeCode (FK)	VARCHAR(10)
