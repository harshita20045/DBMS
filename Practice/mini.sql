show databases;

 CREATE DATABASE visaaa;


 show databases;


use visaaa;

CREATE TABLE user
     (user_name VARCHAR(50) NOT NULL,
   user_contact INT  NOT NULL,
    user_address VARCHAR(100) NOT NULL,
    user_id INT NOT NULL,
   PRIMARY KEY (user_id)
    );

 desc user;

 CREATE TABLE admin
   (admin_name VARCHAR(20) NOT NULL,
     contact_no INT NOT NULL,
     user_id INT NOT NULL,
   FOREIGN KEY (user_id) REFERENCES user(user_id)
    );


 desc admin;

CREATE TABLE executive
     (exe_id INT NOT NULL,
    exe_name VARCHAR(30) NOT NULL,
     exe_address VARCHAR(100) NOT NULL,
     exe_contact_no INT NOT NULL,
     PRIMARY KEY(exe_id)
     );


desc executive;


CREATE TABLE visa_renewal_application
     (appl_ref_no INT NOT NULL,
     renewal_date_from DATE NOT NULL,
     renewal_date_to DATE NOT NULL,
     PRIMARY KEY (appl_ref_no)
     );


 desc visa_renewal_application;

CREATE TABLE visa_application
    (appl_id VARCHAR(20) NOT NULL,
     visa_country VARCHAR(50) NOT NULL,
     visa_type VARCHAR(30) NOT NULL,
     user_passport_no VARCHAR(20) NOT NULL,
     PRIMARY KEY(appl_id)
     );


 desc visa_application;


 CREATE TABLE visa_web_portal
   (no_of_registered_user INT NOT NULL,
     web_address VARCHAR(50) NOT NULL
    );


 desc visa_web_portal;



INSERT INTO user(user_name, user_contact,user_address,user_id)
     VALUES('JAY', '1234567890', '121 main street', 101);alter
     
SELECT * FROM user;
    
