CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Gender VARCHAR(10),
    Branch VARCHAR(50),
    CGPA DECIMAL(3,2),
    GraduationYear INT
);

INSERT INTO Students VALUES
(1,'Radha','Female','CSBS',8.90,2027),
(2,'Aman','Male','CSE',9.10,2027),
(3,'Priya','Female','IT',8.20,2027),
(4,'Rahul','Male','AIDS',8.80,2027),
(5,'Neha','Female','CSBS',9.30,2027);

CREATE TABLE Certifications (
    CertID INT PRIMARY KEY,
    StudentID INT,
    CertificationName VARCHAR(100),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Certifications VALUES
(101,1,'Python'),
(102,1,'SQL'),
(103,2,'AWS'),
(104,3,'Power BI'),
(105,4,'Machine Learning'),
(106,5,'Data Analytics');

CREATE TABLE Companies (
    CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(100),
    Industry VARCHAR(50)
);

INSERT INTO Companies VALUES
(201,'TCS','IT'),
(202,'Infosys','IT'),
(203,'Accenture','Consulting'),
(204,'Deloitte','Consulting');

CREATE TABLE Placements (
    PlacementID INT PRIMARY KEY,
    StudentID INT,
    CompanyID INT,
    PackageLPA DECIMAL(5,2),
    PlacementDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID)
);

INSERT INTO Placements VALUES
(301,1,204,8.50,'2027-03-10'),
(302,2,203,10.20,'2027-03-12'),
(303,3,201,5.00,'2027-03-15'),
(304,4,202,6.50,'2027-03-20'),
(305,5,204,12.00,'2027-03-22');