/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg, Yoder - DBC (9th Edition) 						*/
/*																				*/
/*	Art-Course-Database Create Tables											*/
/*																				*/
/*	These are the MySQL 8.0						 SQL code solutions				*/
/*																				*/
/********************************************************************************/

USE art_course_database;


CREATE  TABLE CUSTOMER(
	CustomerNumber		Int				NOT NULL auto_increment,
	CustomerLastName	Char(25)		NOT NULL,
	CustomerFirstName	Char(25)		NOT NULL,
	Phone				Char(12)		NOT NULL,
	CONSTRAINT 			CUSTOMER_PK 	PRIMARY KEY(CustomerNumber)
	);

CREATE  TABLE COURSE(
	CourseNumber		Int				NOT NULL auto_increment,
	Course				Char(50) 		NOT NULL,
	CourseDate			Date	 		NOT NULL,
	Fee					Numeric(8,2)	NOT NULL,
	CONSTRAINT 			COURSE_PK 		PRIMARY KEY(CourseNumber)
	);

CREATE  TABLE ENROLLMENT(
	CustomerNumber		Int				NOT NULL,
	CourseNumber		Int				NOT NULL,
	AmountPaid			Numeric(8,2)	NULL,
    CONSTRAINT 			ENROLLMENT_PK 	PRIMARY KEY (CustomerNumber, CourseNumber),
    CONSTRAINT 			ENROLL_CUST_FK  FOREIGN KEY (CustomerNumber)
							REFERENCES CUSTOMER(CustomerNumber)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION,
    CONSTRAINT 			ENROLL_COURSE_FK FOREIGN KEY (CourseNumber)
							REFERENCES COURSE(CourseNumber)
								ON UPDATE NO ACTION
								ON DELETE CASCADE
 	);

/********************************************************************************/