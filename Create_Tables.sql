DROP TABLE IF EXISTS EDUCATION;
CREATE TABLE EDUCATION(
CollageId int NOT NULL,
CollageName varchar(40),
Department varchar(40),
Primary Key(CollageId));

DROP TABLE IF EXISTS COURSE;
CREATE TABLE COURSE(
CourseId int NOT NULL,
CourseName varchar(40),
Instructor varchar(40),
Primary Key(CourseId));

DROP TABLE IF EXISTS COURSE_PROJECT;
CREATE TABLE COURSE_PROJECT(
CourseId int NOT NULL,
CProjectNo int NOT NULL,
CProjectName varchar(40),
Primary Key(CourseId,CProjectNo),
Foreign Key(CourseId) references COURSE(CourseId));

DROP TABLE IF EXISTS NOTIFICATION;
CREATE TABLE NOTIFICATION(
NotificationID int NOT NULL,
Primary Key(NotificationID));

DROP TABLE IF EXISTS MESSAGE;
CREATE TABLE MESSAGE(
NotificationID int NOT NULL,
MessageTitle varchar(40),
Primary Key(NotificationID),
Foreign Key(NotificationID) references NOTIFICATION(NotificationID));

DROP TABLE IF EXISTS PROFILE_VIEWS;
CREATE TABLE PROFILE_VIEWS(
NotificationID int NOT NULL,
ViewCount int,
Primary Key(NotificationID),
Foreign Key(NotificationID) references NOTIFICATION(NotificationID));

DROP TABLE IF EXISTS SKILLS;
CREATE TABLE SKILLS(
SkillID int NOT NULL,
PFlag int NOT NULL,
CProject_no int,
ProjectName varchar(40),
LFlag int,
LanguageName varchar(40),
CFlag int,
CertificateName varchar(40),
Primary Key(SkillID));

DROP TABLE IF EXISTS USER_COMP;
CREATE TABLE USER_COMP(
UC_id int NOT NULL,
Primary Key(UC_id));

DROP TABLE IF EXISTS USER_;
CREATE TABLE USER_(
Ssn int NOT NULL,
FName varchar(40),
LName varchar(40),
UC_id int NOT NULL,
Primary Key(Ssn),
Foreign Key(UC_id) references USER_COMP(UC_id));

DROP TABLE IF EXISTS POST;
CREATE TABLE POST(
PostID int NOT NULL,
PostType varchar(40) NOT NULL,
ArticleName varchar(40),
EventName varchar(40),
ImageName varchar(40),
VideoTitle varchar(40),
UserSsn int NOT NULL,
Primary Key(PostID),
Foreign Key(UserSsn) references USER_(Ssn));

DROP TABLE IF EXISTS PROFILE;
CREATE TABLE PROFILE(
UC_id int NOT NULL,
ProfileID int NOT NULL,
UserName varchar(40),
Mail varchar(40),
Planguage varchar(40),
Website varchar (40),
Primary Key (UC_id,ProfileID),
Foreign Key(UC_id) references USER_COMP(UC_id));

DROP TABLE IF EXISTS COMPANY;
CREATE TABLE COMPANY(
CompanyID int NOT NULL,
CompanyName varchar(40),
Location varchar(40),
Founder varchar(40),
UC_id int NOT NULL,
Mgr_Ssn int NOT NULL,
Mgr_SDate date,
Primary Key(CompanyID),
Foreign Key(Mgr_Ssn) references USER_(Ssn));

DROP TABLE IF EXISTS JOB_POST;
CREATE TABLE JOB_POST(
NotificationID int NOT NULL,
JobID int NOT NULL,
JobTitle varchar(40),
Location varchar(40),
PostDate date,
Company_ID int,
Primary Key(NotificationID),
Foreign Key(Company_ID) references COMPANY(CompanyID),
Foreign Key(NotificationID) references NOTIFICATION(NotificationID));

DROP TABLE IF EXISTS US_ED;
CREATE TABLE US_ED(
CollageID int NOT NULL,
USsn int NOT NULL,
Degree varchar(40),
GPA float NOT NULL,
StartDate date,
EndDate date,
Primary Key(CollageID,USsn),
Foreign Key(USsn) references USER_(Ssn));

DROP TABLE IF EXISTS ENROLL;
CREATE TABLE ENROLL(
CourseID int NOT NULL,
USsn int NOT NULL,
Grade varchar(40) NOT NULL,
Primary Key(CourseID,USsn),
Foreign Key(USsn) references USER_(Ssn));

DROP TABLE IF EXISTS HAS_SK;
CREATE TABLE HAS_SK(
SkillID int NOT NULL,
USsn int NOT NULL,
Primary Key(SkillID,USsn),
Foreign Key(SkillID) references SKILLS(SkillID),
Foreign Key(USsn) references USER_(Ssn));

DROP TABLE IF EXISTS RECEIVES;
CREATE TABLE RECEIVES(
NotificationID int NOT NULL,
USsn int NOT NULL,
Primary Key(NotificationID,USsn),
Foreign Key(USsn) references USER_(Ssn));

DROP TABLE IF EXISTS WORKS_FOR;
CREATE TABLE WORKS_FOR(
USsn int NOT NULL,
CompanyId int NOT NULL,
SDate date,
EDate date,
Primary Key(CompanyID,USsn),
Foreign Key(CompanyID) references COMPANY(CompanyID),
Foreign Key(USsn) references USER_(Ssn));

DROP TABLE IF EXISTS REFERENCE;
CREATE TABLE REFERENCE(
Referer_Ssn int NOT NULL,
Referenced_Ssn int NOT NULL,
Primary Key(Referer_Ssn,Referenced_Ssn),
Foreign Key(Referer_Ssn) references USER_(Ssn),
Foreign Key(Referenced_Ssn) references USER_(Ssn));

DROP TABLE IF EXISTS US_MESSAGE;
CREATE TABLE US_MESSAGE(
Messager_Ssn int NOT NULL,
Messaged_Ssn int NOT NULL,
Primary Key(Messager_Ssn,Messaged_Ssn),
Foreign Key(Messager_Ssn) references USER_(Ssn),
Foreign Key(Messaged_Ssn) references USER_(Ssn));

DROP TABLE IF EXISTS PROFILE_PHONE;
CREATE TABLE PROFILE_PHONE(
UC_ID int NOT NULL,
ProfileID int NOT NULL,
Phone int NOT NULL,
Primary Key(UC_ID, ProfileID, Phone));