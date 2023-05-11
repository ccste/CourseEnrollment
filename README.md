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
| Gender | CHAR(1) |
| Email | VARCHAR(50) |
| PhoneNumber | VARCHAR(20) |
| DateOfBirth | DATE |
| ProgrammeCode (FK) | VARCHAR(10) |

CourseEnrollment table
| Column name | Data type |
|------|-----|
| CourseEnrollmentID (PK) | INT |
| Year | INT |
| Semester | CHAR(2) |
| StudentID (FK) | INT |
| CourseID (FK) | VARCHAR(10) |
| TutorID (FK) | INT |

Course table
| Column name | Data type |
|------|-----|
| CourseID (PK) | VARCHAR(10) |
| CourseName | VARCHAR(65) |
| Credits | INT |

Tutor table
| Column name | Data type |
|------|-----|
| TutorID (PK) | INT |
| TutorFName | VARCHAR(50) |
| TutorLName | VARCHAR(50) |
| Gender | CHAR(1) |
| Email | VARCHAR(50) |
| DepartmentID (FK) | INT |

Programme table
| Column name | Data type |
|------|-----|
| ProgrammeCode (PK) | VARCHAR(10) |
| ProgrammeName | VARCHAR(65) |

CourseTimetable table
| Column name | Data type |
|------|-----|
| CourseTimetableID (PK) | INT |
| Weekday | VARCHAR(10) |
| StartTime | TIME |
| EndTime | TIME |
| Classroom | VARCHAR(10) |
| CourseID (FK) | VARCHAR(10) |

Department table
| Column name | Data type |
|------|-----|
| DepartmentID (PK) | INT |
| DepartmentName | VARCHAR(65) |
| PhoneNum | VARCHAR(20) |
| Location | VARCHAR(65) |

### Installation
1. Clone the repository
2. Set up a local SQL Server instance
3. Open the project in SQL Server Management Studio (SSMS)
4. Run the scripts in the scripts folder to create the database and tables
5. Use the SSMS GUI or run SQL queries to interact with the database

### Usage
The course enrollment system allows students to enroll in courses, tutors to view their assigned courses, and administrators to manage course, student, and tutor information. Use the SSMS GUI or run SQL queries to interact with the database.



	
	
	
	


	
	
