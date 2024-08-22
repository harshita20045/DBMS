show databases;

CREATE DATABASE visamini;

show databases;

 USE visamini;
CREATE TABLE user
   (user_name VARCHAR(50) NOT NULL,
    user_contact VARCHAR(20)  NOT NULL,
    user_address VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    PassportNumber VARCHAR(20),
	Nationality VARCHAR(50),
	DateOfBirth DATE,
	Gender VARCHAR(10),
	Email VARCHAR(100),
	PRIMARY KEY (user_id));
    
    desc user;
    
     INSERT INTO user(user_name, user_contact, user_address, user_id, PassportNumber, Nationality, DateOfBirth, Gender, Email)
     VALUES('JAY', '1234567890', '121 main street', 101, 'SJU427', 'India', '2003-11-11', 'Male', 'jay@example.com'), 
           ('MOHAN', '1122334455', 'scheme no. 78', 102, 'LRV396', 'India', '1990-09-16', 'Male', 'mohan@example.com'), 
           ('RADHA', '9988776655', '11 bhawarkua', 103, 'KGF684', 'India', '2004-04-07', 'Female', 'radha@example.com'), 
           ('JOHN', '2314356588', ' 25 skyheights', 104, 'JFK320', 'UK', '2002-05-17', 'Male', 'john@example.com'),
           ('SHIVI', '5564738285', 'Navlakha', 105, 'BVC154', 'India', '2002-07-07', 'Female', 'shivi@example.com'), 
           ('RAY', '7486256600', 'scheme 141', 106, 'NPM884', 'India', '2001-06-09', 'Male', 'ray@example.com'), 
           ('ROZY', '3354253435', 'lotus valley', 107, 'DAF768', 'Canada', '1996-10-20', 'Female', 'rozy@example.com'), 
           ('ZOEY', '9102837465', 'Raj palace', 108, 'RSE956', 'USA', '1998-08-18', 'Female', 'zoey@example.com'), 
           ('Pritam Lodhi', '2200110044', 'Chawani main street', 109, 'KGH432', 'INDIA', '2003-06-15', 'Male', 'pritam@example.com'), 
           ('Sunil Solanki', '9109100000', '5 GPO main street', 110, 'UNP141', 'UK', '1995-04-3', 'Male', 'sunil@example.com'),
           ('John Doe', '1234567894','123 Main St', 111, 'ABC123', 'USA', '1990-05-15', 'Male', 'john@example.com'),
           ('Jane Smith', '9876543210','456 Oak St', 112, ' XYZ456', 'Canada', '1985-10-20', 'Female', 'jane@example.com'),
           ('Alice Johnson', '4567890123', '789 Elm St', 113,'DEF789', 'UK', '1995-03-08', 'Female',  'alice@example.com'),
		   ('Ray Willson', '7634567890','22 main st.', 114, 'PQR121', 'USA', '1992-03-25', 'Male','ray25@example.com'),
           ('Reena Mourya', '9826612345','13B GPO Main Road', 115, 'TUV112', 'India', '2000-04-16', 'Female',  'reena16@example.com'),
           ('Jane Loui', '1724666385', '11A A.B Road',116, 'BCD221', 'Canada', '2000-02-12', 'Male', 'Jane12@example.com'),
           ('Priyank Sharma', '3465772298','Block 14 Meera Road', 117, 'JKL312', 'India', '1990-12-12', 'Male',  'priyank@example.com'),
		   ('James James', '9876512345', '22 Skyheights', 118, 'GHI432', 'UK', '1987-10-18','Male', 'james@example.com'),
		   ('Daisy Merchant', '0453278611', 'Angels Colony', 119, 'RST001', 'UK', '2001-04-20', 'Female',  'daisy@example.com'),
           ('Henry Gill', '8856934245', '56 Main Road', 120,'FDC453', 'USA', '1999-08-06', 'Male',  'henry6@example.com');
          
          SELECT * FROM user;
          
CREATE TABLE visa_application
     (user_id INT NOT NULL,
     appl_id VARCHAR(20) NOT NULL,
     visa_country VARCHAR(50) NOT NULL,
     visa_type VARCHAR(30) NOT NULL,
     user_passport_no VARCHAR(20) NOT NULL,
     status VARCHAR(20), -- Pending, Approved, Rejected, etc. 
     PRIMARY KEY(appl_id),
     FOREIGN KEY (user_id) REFERENCES user(user_id)
     );
          
	INSERT INTO visa_application(user_id, appl_id, visa_country, visa_type, user_passport_no, status)
	VALUES(101,'PR100101', 'INDIA', 'Education', 'SJU427','Approved'),
          (102, 'PR100102', 'INDIA', 'work', 'LRV396','Pending'),
          (103,'PR100103', 'INDIA', 'Education', 'KGF684', 'Approved'), 
          (104, 'PR100104', 'UK', 'Work', 'JFK320', 'Approved'), 
          (105, 'PR100105', 'India', 'Tourist', 'BVC154', 'Rejected'), 
          (106,'PR100106', 'INDIA', 'Work', 'NPM884', 'Pending'),
          (107,'PR100107', 'Canada', 'Tourist', 'DAF768', 'Pending'), 
          (108,'PR100108', 'USA', 'Education', 'RSE956', 'Approved'), 
          (109,'PR100109', 'INDIA', 'Tourist', 'KGH432', 'Approved'),
          (110,'PR100110', 'UK', 'Work', 'UNP141','Rejected'),
          (111,'PR100111', 'USA', 'Tourist', 'ABC123', 'Pending'),
          (112,'PR100112', 'Canada', 'Tourist', 'XYZ456','Pending'),
          (113,'PR100113', 'UK', 'Tourist', 'DEF789', 'Approved'),
          (114,'PR100114', 'USA', 'Work', 'PQR121', 'Pending'),
          (115,'PR100115', 'India', 'Tourist', 'TUV112', 'Approved'),
          (116,'PR100116', 'Canada', 'Tourist', 'BCD221', 'Approved'),
          (117,'PR100117', 'India', 'Work', 'JKL312', 'Approved'),
          (118,'PR100118', 'UK', 'Work', 'GHI432', 'Pending'),
          (119,'PR100119', 'UK', 'Education', 'RST001','Pending'),
          (120,'PR100120', 'USA', 'Education', 'FDC453', 'Approved');
          
          SELECT * FROM visa_application;
          
 CREATE TABLE ProcessingStages (
       StageID INT PRIMARY KEY,
       StageName VARCHAR(100));

 desc ProcessingStages;
 
  INSERT INTO ProcessingStages (StageID, StageName)
   VALUES
     (1, 'Document Verification'),
     (2, 'Interview'),
     (3, 'Background Check');
     
     SELECT * FROM ProcessingStages;
          
CREATE TABLE ProcessingHistory 
     (HistoryID INT PRIMARY KEY,
     appl_id VARCHAR(20) NOT NULL,
     StageID INT,
     StartDate DATE,
     EndDate DATE,
     Notes TEXT,
     FOREIGN KEY (appl_id) REFERENCES  visa_application(appl_id),
     FOREIGN KEY (StageID) REFERENCES ProcessingStages(StageID));
     
     INSERT INTO ProcessingHistory (HistoryID, appl_id, StageID, StartDate, EndDate, Notes)
     VALUES
     (1, 'PR100101', 1, '2024-04-01', '2024-04-05', 'Documents verified successfully'),
	 (2, 'PR100102', 2, '2024-04-06', '2024-04-08', 'Interview conducted'),
     (3, 'PR100103', 3, '2024-04-09', '2024-04-10', 'Background check initiated'),
     (4, 'PR100104', 1, '2024-04-15', '2024-04-17', 'Documents verified successfully'),
	 (5, 'PR100105', 2, '2024-04-18', '2024-04-20', 'Interview conducted'),
     (6, 'PR100106', 1, '2024-04-20', NULL, 'Documents verification in progress'),
     (7, 'PR100107', 1, '2024-04-02', '2024-04-05', 'Documents verified successfully'),
	 (8, 'PR100108', 2, '2024-04-03', '2024-04-08', 'Interview conducted'),
     (9, 'PR100109', 3, '2024-04-09', '2024-04-10', 'Background check initiated'),
     (10, 'PR100110', 1, '2024-04-15', '2024-04-17', 'Documents verified successfully'),
	 (11, 'PR100111', 2, '2024-04-18', '2024-04-20', 'Interview conducted'),
     (12, 'PR100112', 1, '2024-04-21', NULL, 'Documents verification in progress'),
     (13, 'PR100113', 1, '2024-04-01', '2024-04-05', 'Documents verified successfully'),
	 (14, 'PR100114', 2, '2024-04-06', '2024-04-08', 'Interview conducted'),
     (15, 'PR100115', 3, '2024-04-09', '2024-04-10', 'Background check initiated'),
     (16, 'PR100116', 1, '2024-04-18', '2024-04-17', 'Documents verified successfully'),
	 (17, 'PR100117', 2, '2024-04-13', '2024-04-20', 'Interview conducted'),
     (18, 'PR100118', 1, '2024-04-20', NULL, 'Documents verification in progress'),
     (19, 'PR100119', 1, '2024-04-03', '2024-04-05', 'Documents verified successfully'),
     (20, 'PR100120', 1, '2024-04-20', NULL, 'Documents verification in progress');
     
     SELECT * FROM ProcessingHistory;
     
CREATE TABLE admin
   (admin_name VARCHAR(20) NOT NULL,
     contact_no Varchar(20) NOT NULL,
     user_id INT NOT NULL,
   FOREIGN KEY (user_id) REFERENCES user(user_id));

 desc admin;
 
   INSERT INTO admin(admin_name,contact_no,user_id)
    VALUES('Admin1', '123-456-7890', 101),
    ('Admin2', '987-654-3210', 102),
    ('Admin3', '555-123-4567', 103),
    ('Admin4', '999-888-7777', 104),
    ('Admin5', '444-333-2222', 105),
    ('Admin6', '111-222-3333', 106),
    ('Admin7', '666-777-8888', 107),
    ('Admin8', '888-999-0000', 108),
    ('Admin9', '333-444-5555', 109),
    ('Admin10', '555-666-7777', 110);
    
SELECT * FROM admin;
 
 CREATE TABLE executive
     (exe_id INT NOT NULL,
    exe_name VARCHAR(30) NOT NULL,
     exe_address VARCHAR(100) NOT NULL,
     exe_contact_no VARCHAR(20) NOT NULL,
     PRIMARY KEY(exe_id)
     );

desc executive;

INSERT INTO executive(exe_id,exe_name,exe_address,exe_contact_no)
	VALUEs(1, 'John Doe', '123 Executive Street', '123-456-7890'),
          (2, 'Jane Smith', '456 Leadership Avenue', '987-654-3210'),
          (3, 'Michael Johnson', '789 Management Road', '555-123-4567'),
          (4, 'Emily Brown', '321 Director Lane', '888-999-0000'),
          (5, 'David Wilson', '555 Executive Court', '777-888-9999');
          
SELECT*FROM executive;

CREATE TABLE visa_renewal_application
     (appl_ref_no INT NOT NULL,
      user_id INT NOT NULL,
     renewal_date_from DATE NOT NULL,
     renewal_date_to DATE NOT NULL,
     PRIMARY KEY (appl_ref_no),
     FOREIGN KEY (user_id) REFERENCES user(user_id)
     );
	desc visa_renewal_application;
     
INSERT INTO visa_renewal_application(appl_ref_no,user_id,renewal_date_from,renewal_date_to)
    VALUES(1, 101,'2024-05-10', '2024-06-10'),
          (2, 102,'2024-06-15', '2024-07-15'),
          (3, 103,'2024-07-01', '2024-08-01'), 
          (4, 104,'2024-08-15', '2024-09-15'),
          (5, 105,'2024-09-20', '2024-10-20'),
          (6, 106,'2024-10-25', '2024-11-25'), 
          (7, 107,'2025-01-15', '2025-02-15'),
          (8, 108,'2025-02-20', '2025-03-20'),
          (9, 109,'2025-03-25', '2025-04-25'),
          (10, 110,'2025-04-30', '2025-05-30');

 SELECT*FROM visa_renewal_application;
 
  CREATE TABLE visa_web_portal
   (no_of_registered_user INT NOT NULL,
     web_address VARCHAR(50) NOT NULL
    );

 desc visa_web_portal;
    
INSERT INTO visa_web_portal (no_of_registered_user, web_address)
VALUES (1000, 'https://www.examplevisaportal.com'),
       (1500, 'https://www.anotherexampleportal.com');
    
          