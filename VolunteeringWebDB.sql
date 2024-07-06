CREATE DATABASE VolunteeringWebDB;
USE VolunteeringWebDB;

/*------------   Create tables   --------------*/

CREATE TABLE users(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    user_name varchar(255) NOT NULL,
    pasword varchar(255) NOT NULL,
);

CREATE TABLE applicants (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    second_name varchar(255) NOT NULL,
    city varchar(255),
    phoneNo varchar(255) NOT NULL,
    age int NOT NULL,
    userId int NOT NULL FOREIGN KEY REFERENCES users(id),
);

DROP TABLE applicants;

CREATE TABLE applicantion (
    applicantion_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    applicationDate DATETIME NOT NULL DEFAULT GETDATE(),
    applicantId int NOT NULL FOREIGN KEY REFERENCES applicants(id),
);

DROP TABLE applicantion;

CREATE TABLE volunteering_places_list (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    place_name varchar(255)
);

DROP TABLE volunteering_places_list;

CREATE TABLE places_applied_for_volunteering (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    placeId int NOT NULL FOREIGN KEY REFERENCES volunteering_places_list(id),
    applicantId int NOT NULL FOREIGN KEY REFERENCES applicants(id),
);

DROP TABLE places_applied_for_volunteering;



/* ------------------------ Insert Data into Tables -------------------- */

INSERT INTO volunteering_places_list VALUES ('Flowers Kinderganrten');
INSERT INTO volunteering_places_list VALUES ('Rambam Hospital');
INSERT INTO volunteering_places_list VALUES ('Women Empowermen Center');
INSERT INTO volunteering_places_list VALUES ('Elders Center 1');
INSERT INTO volunteering_places_list VALUES ('Elders Center 2');
INSERT INTO volunteering_places_list VALUES ('Haifa Mental Health Center');
INSERT INTO volunteering_places_list VALUES ('Children with Special Needs');
GO

INSERT INTO users VALUES ('kyleqwd','password213');
INSERT INTO users VALUES ('Sasha123','jiji21');
INSERT INTO users VALUES ('Joe11','cayk12');
INSERT INTO users VALUES ('Kyle23','yjr231');
INSERT INTO users VALUES ('Chloe9','afhuykt');
INSERT INTO users VALUES ('Britney00','34321ds');
GO

DELETE FROM applicants;

INSERT INTO applicants VALUES ('kyle','Fam','Haifa','052-5432323',26,1);
INSERT INTO applicants VALUES ('Sasha','Jim','Akko','054-2430002',24,2);
INSERT INTO applicants VALUES ('Joe','Cary','Kiryat Atta','052-5432699',20,3);
INSERT INTO applicants VALUES ('Kyle','Doe','Haifa','052-5432603',21,4);
INSERT INTO applicants VALUES ('Chloe','Loe','Haifa','052-5432623',19,5);
INSERT INTO applicants VALUES ('Britney','Spears','Haifa','050-4432623',21,6);
GO

DELETE FROM applicantion;

INSERT INTO applicantion(applicantId) VALUES (1);
INSERT INTO applicantion(applicantId) VALUES (2);
INSERT INTO applicantion(applicantId) VALUES (3);
INSERT INTO applicantion(applicantId) VALUES (4);
INSERT INTO applicantion(applicantId) VALUES (5);
INSERT INTO applicantion(applicantId) VALUES (6);
GO


INSERT INTO places_applied_for_volunteering VALUES (1,1);
INSERT INTO places_applied_for_volunteering VALUES (1,2);
INSERT INTO places_applied_for_volunteering VALUES (1,3);
INSERT INTO places_applied_for_volunteering VALUES (1,4);
INSERT INTO places_applied_for_volunteering VALUES (1,5);
INSERT INTO places_applied_for_volunteering VALUES (1,6);
GO


