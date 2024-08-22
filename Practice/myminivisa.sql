-- Visa Application Processing System --
CREATE DATABASE  IF NOT EXISTS Visa;
show databases;
use visa;
-- User's Table --
CREATE TABLE User (
    User_id INT NOT NULL unique PRIMARY KEY,
    User_name VARCHAR(50) NOT NULL,
    User_address VARCHAR(200) NOT NULL,
    User_contact_no VARCHAR(10) NOT NULL,
    user_email_Id VARCHAR(30) NOT NULL UNIQUE,
    user_city VARCHAR(30) NOT NULL 
);
desc user;

INSERT INTO User (User_id,User_name, User_address, User_contact_no, User_email_Id, User_city)
VALUES
    (1,'Ravi Kumar', '123 Main St, Bangalore', '9876543210', 'ravi@example.com', 'Bangalore'),
    (2,'Priya Sharma', '456 Park Ave, Mumbai', '8765432109', 'priya@example.com', 'Mumbai'),
    (3,'Amit Singh', '789 Oak Rd, Delhi', '7654321098', 'amit@example.com', 'Delhi'),
    (4,'Anjali Gupta', '321 Pine Lane, Chennai', '6543210987', 'anjali@example.com', 'Chennai'),
    (5,'Rahul Verma', '456 Elm St, Kolkata', '5432109876', 'rahul@example.com', 'Kolkata'),
    (6,'Neha Patel', '789 Maple Ave, Hyderabad', '4321098765', 'neha@example.com', 'Hyderabad'),
    (7,'Arun Khanna', '234 Birch Rd, Pune', '3210987654', 'arun@example.com', 'Pune'),
    (8,'Pooja Reddy', '567 Cedar Lane, Jaipur', '2109876543', 'pooja@example.com', 'Jaipur'),
    (9,'Suresh Sharma', '890 Willow St, Lucknow', '1098765432', 'suresh@example.com', 'Lucknow'),
    (10,'Kavita Jain', '123 Pine Rd, Ahmedabad', '9876543210', 'kavita@example.com', 'Ahmedabad'),
    (11,'Deepak Malhotra', '456 Oak Lane, Indore', '8765432109', 'deepak@example.com', 'Indore'),
    (12,'Nisha Gupta', '789 Cedar Ave, Surat', '7654321098', 'nisha@example.com', 'Surat'),
    (13,'Amita Singh', '321 Elm St, Indore', '6543210987', 'amita@example.com', 'Indore'),
    (14,'Vivek Kumar', '456 Birch Rd, Nagpur', '5432109876', 'vivek@example.com', 'Nagpur'),
    (15,'Sunita Sharma', '789 Pine Lane, Ahmedabad', '4321098765', 'sunita@example.com', 'Ahmedabad'),
    (16,'Sanjay Patel', '234 Maple Ave, Varanasi', '3210987654', 'sanjay@example.com', 'Varanasi'),
    (17,'Preeti Gupta', '567 Willow St, Bhopal', '2109876543', 'preeti@example.com', 'Bhopal'),
    (18,'Rajendra Yadav', '890 Cedar Lane, Ahmedabad', '1098765432', 'rajendra@example.com', 'Ahmedabad'),
    (19,'Anjali Verma', '123 Oak Rd, Patna', '9876543210', 'anjaliverma@example.com', 'Patna'),
    (20,'Alok Singh', '456 Elm St, Patna', '8765432109', 'alok@example.com', 'Patna');

select * from user;

--  Visa Application Table --
CREATE TABLE Visa_Application (
    Appl_id INT AUTO_INCREMENT PRIMARY KEY,
    Visa_country VARCHAR(100) NOT NULL,
    User_passport_no VARCHAR(20) NOT NULL,
    Visa_duration INT NOT NULL,
    Visa_type VARCHAR(50) NOT NULL,
    User_id INT NOT NULL,
    FOREIGN KEY (User_id) REFERENCES User(User_id)
);
INSERT INTO Visa_Application (Visa_country, User_passport_no, Visa_duration, Visa_type, User_id)
VALUES
    ('United States', 'US123456', 90, 'Work', 5),
    ( 'United States', 'US234567', 60, 'Tourist', 8),
    ( 'India', 'IN345678', 30, 'Tourist', 12),
    ( 'United States', 'US456789', 180, 'Student', 15),
    ( 'Germany', 'DE567890', 90, 'Work', 19),
    ( 'United States', 'US678901', 60, 'Tourist', 2),
    ( 'Australia', 'AU789012', 30, 'Tourist', 4),
    ( 'United States', 'US890123', 180, 'Student', 7),
    ( 'Canada', 'CA901234', 90, 'Work', 10),
    ( 'United States', 'US012345', 60, 'Tourist', 13),
    ( 'Japan', 'JP123456', 30, 'Tourist', 16),
    ( 'United Kingdom', 'UK234567', 180, 'Student', 1),
    ( 'United States', 'US345678', 90, 'Work', 3),
    ( 'France', 'FR456789', 60, 'Tourist', 6),
    ( 'United States', 'US567890', 30, 'Tourist', 9),
    ( 'Italy', 'IT678901', 180, 'Student', 11),
    ( 'United States', 'US789012', 90, 'Work', 14),
    ( 'Spain', 'ES901234', 60, 'Tourist', 17),
    ( 'Thailand', 'TH012345', 30, 'Tourist', 20),
    ( 'United States', 'US123456', 180, 'Student', 18);
select * from Visa_Application;
-- Visa Renewal Application Table --
CREATE TABLE Visa_Renewal_Application (
    Appl_ref_no INT AUTO_INCREMENT PRIMARY KEY,
    Renewal_date_from DATE NOT NULL,
    Renewal_date_to DATE NOT NULL,
    Appl_id INT NOT NULL,
    FOREIGN KEY (Appl_id) REFERENCES Visa_Application(Appl_id)
);
desc Visa_Renewal_Application;
select * from Visa_Renewal_Application;
INSERT INTO Visa_Renewal_Application (Renewal_date_from, Renewal_date_to, Appl_id)
VALUES
    ('2024-07-01', '2024-12-31', 1),  
    ('2024-08-15', '2025-02-14', 4),   
    ('2024-09-30', '2025-03-30', 7),   
    ('2024-10-10', '2025-04-09', 10), 
    ('2024-11-20', '2025-05-19', 13), 
    ('2024-12-01', '2025-05-31', 16), 
    ('2025-01-15', '2025-07-14', 19), 
    ('2025-02-28', '2025-08-28', 2),   
    ('2025-03-10', '2025-09-09', 5),  
    ('2025-04-20', '2025-10-19', 8),   
    ('2025-05-01', '2025-10-31', 11), 
    ('2025-06-15', '2025-12-14', 14),  
    ('2025-07-01', '2025-12-31', 17), 
    ('2025-08-10', '2026-02-09', 3),  
    ('2025-09-20', '2026-03-19', 6),   
    ('2025-10-05', '2026-04-04', 9),   
    ('2025-11-15', '2026-05-14', 12), 
    ('2025-12-01', '2026-05-31', 15), 
    ('2026-01-10', '2026-07-09', 18);  

-- Admin table --
CREATE TABLE Admin (
    Admin_id INT AUTO_INCREMENT PRIMARY KEY,
    User_id INT NOT NULL,
    Admin_name VARCHAR(255) NOT NULL,
    Contact_no VARCHAR(20) NOT NULL,
    FOREIGN KEY (User_id) REFERENCES User(User_id)
);
desc Admin;

INSERT INTO Admin (User_id, Admin_name, Contact_no)
VALUES
    (1, 'John Doe', '9876543210'),           -- Admin for User_id 1 (Ravi Kumar)
    (4, 'Jane Smith', '6543210987'),         -- Admin for User_id 4 (Anjali Gupta)
    (7, 'David Johnson', '2109876543'),      -- Admin for User_id 7 (Pooja Reddy)
    (10, 'Emily Brown', '9876543210'),       -- Admin for User_id 10 (Kavita Jain)
    (13, 'Michael Clark', '6543210987'),     -- Admin for User_id 13 (Amita Singh)
    (16, 'Sarah Wilson', '5432109876'),      -- Admin for User_id 16 (Vivek Kumar)
    (2, 'Chris Anderson', '8765432109'),     -- Admin for User_id 2 (Priya Sharma)
    (5, 'Jessica Lee', '5432109876'),        -- Admin for User_id 5 (Rahul Verma)
    (8, 'Matthew Davis', '1098765432'),      -- Admin for User_id 8 (Suresh Sharma)
    (11, 'Sophia Martin', '8765432109'),     -- Admin for User_id 11 (Deepak Malhotra)
    (14, 'Ryan White', '4321098765'),        -- Admin for User_id 14 (Sunita Sharma)
    (17, 'Olivia Robinson', '1098765432'),   -- Admin for User_id 17 (Rajendra Yadav)
    (3, 'Daniel Harris', '7654321098'),      -- Admin for User_id 3 (Amit Singh)
    (6, 'Laura Thompson', '4321098765'),     -- Admin for User_id 6 (Neha Patel)
    (9, 'Kevin Miller', '3210987654'),       -- Admin for User_id 9 (Arun Khanna)
    (12, 'Rachel Garcia', '7654321098'),     -- Admin for User_id 12 (Nisha Gupta)
    (15, 'Justin Wilson', '3210987654'),     -- Admin for User_id 15 (Sanjay Patel)
    (18, 'Hannah Brown', '9876543210'),      -- Admin for User_id 18 (Anjali Verma)
    (20, 'Brandon Clark', '8765432109');     -- Admin for User_id 20 (Alok Singh)
select * from Admin;
-- Executive table --
CREATE TABLE Executive (
    Exe_id INT AUTO_INCREMENT PRIMARY KEY,
    Exe_name VARCHAR(255) NOT NULL,
    Exe_address VARCHAR(255) NOT NULL,
    Exe_contact_no VARCHAR(20) NOT NULL
);
desc Executive;
INSERT INTO Executive (Exe_id, Exe_name, Exe_address, Exe_contact_no)
VALUES
    (1, 'John Smith', '123 Main St, Bangalore', '9876543210'),
    (2, 'Emily Johnson', '456 Park Ave, Mumbai', '8765432109'),
    (3, 'Michael Brown', '789 Oak Rd, Delhi', '7654321098'),
    (4, 'Emma Davis', '321 Pine Lane, Chennai', '6543210987'),
    (5, 'William Wilson', '456 Elm St, Kolkata', '5432109876'),
    (6, 'Sophia Miller', '789 Maple Ave, Hyderabad', '4321098765'),
    (7, 'Matthew Jones', '234 Birch Rd, Pune', '3210987654'),
    (8, 'Olivia Taylor', '567 Cedar Lane, Jaipur', '2109876543'),
    (9, 'David Martinez', '890 Willow St, Lucknow', '1098765432'),
    (10, 'Isabella Anderson', '123 Pine Rd, Ahmedabad', '9876543210'),
    (11, 'Ethan Thomas', '456 Oak Lane, Indore', '8765432109'),
    (12, 'Ava Garcia', '789 Cedar Ave, Surat', '7654321098'),
    (13, 'James Hernandez', '321 Elm St, Indore', '6543210987'),
    (14, 'Charlotte Lopez', '456 Birch Rd, Nagpur', '5432109876'),
    (15, 'Mia Martinez', '789 Pine Lane, Ahmedabad', '4321098765'),
    (16, 'Benjamin Gonzalez', '234 Maple Ave, Varanasi', '3210987654'),
    (17, 'Amelia Perez', '567 Willow St, Bhopal', '2109876543'),
    (18, 'Daniel Nelson', '890 Cedar Lane, Ahmedabad', '1098765432'),
    (19, 'Harper Moore', '123 Oak Rd, Patna', '9876543210'),
    (20, 'Alexander Hill', '456 Elm St, Patna', '8765432109');
select * from Executive;
-- Create Visa Application Assignment table
CREATE TABLE Visa_Application_Assignment (
    Appl_id INT NOT NULL,
    Exe_id INT NOT NULL,
    PRIMARY KEY (Appl_id, Exe_id),
    FOREIGN KEY (Appl_id) REFERENCES Visa_Application(Appl_id),
    FOREIGN KEY (Exe_id) REFERENCES Executive(Exe_id)
);
desc Visa_Application_Assignment;
INSERT INTO Visa_Application_Assignment (Appl_id, Exe_id)
VALUES
    (1, 1),   -- Assign Visa Application Appl_id 1 to Executive Exe_id 1
    (2, 2),   -- Assign Visa Application Appl_id 2 to Executive Exe_id 2
    (3, 3),   -- Assign Visa Application Appl_id 3 to Executive Exe_id 3
    (4, 4),   -- Assign Visa Application Appl_id 4 to Executive Exe_id 4
    (5, 5),   -- Assign Visa Application Appl_id 5 to Executive Exe_id 5
    (6, 6),   -- Assign Visa Application Appl_id 6 to Executive Exe_id 6
    (7, 7),   -- Assign Visa Application Appl_id 7 to Executive Exe_id 7
    (8, 8),   -- Assign Visa Application Appl_id 8 to Executive Exe_id 8
    (9, 9),   -- Assign Visa Application Appl_id 9 to Executive Exe_id 9
    (10, 10), -- Assign Visa Application Appl_id 10 to Executive Exe_id 10
    (11, 11), -- Assign Visa Application Appl_id 11 to Executive Exe_id 11
    (12, 12), -- Assign Visa Application Appl_id 12 to Executive Exe_id 12
    (13, 13), -- Assign Visa Application Appl_id 13 to Executive Exe_id 13
    (14, 14), -- Assign Visa Application Appl_id 14 to Executive Exe_id 14
    (15, 15), -- Assign Visa Application Appl_id 15 to Executive Exe_id 15
    (16, 16), -- Assign Visa Application Appl_id 16 to Executive Exe_id 16
    (17, 17), -- Assign Visa Application Appl_id 17 to Executive Exe_id 17
    (18, 18), -- Assign Visa Application Appl_id 18 to Executive Exe_id 18
    (19, 19), -- Assign Visa Application Appl_id 19 to Executive Exe_id 19
    (20, 20); -- Assign Visa Application Appl_id 20 to Executive Exe_id 20
select * from Visa_Application_Assignment;
