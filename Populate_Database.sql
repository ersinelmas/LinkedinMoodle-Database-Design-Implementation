INSERT INTO EDUCATION(CollageId, CollageName, Department) VALUES(1,'Ege University','Bilgisayar
Muhendisligi');
INSERT INTO EDUCATION(CollageId, CollageName, Department) VALUES(2,'Bogazici
University','Endustri Muhendisligi');
INSERT INTO EDUCATION(CollageId, CollageName, Department) VALUES(3,'Hacettepe
University','Elektrik-Elektronik Muhendisligi');
INSERT INTO EDUCATION(CollageId, CollageName, Department) VALUES(4,'Marmara
University','Isletme');
INSERT INTO EDUCATION(CollageId, CollageName, Department) VALUES(5,'Istanbul Technical
University','Mimarlik');

INSERT INTO COURSE(CourseId, CourseName, Instructor) VALUES(1,'Database Management','Murat
Osman Unalir');
INSERT INTO COURSE(CourseId, CourseName, Instructor) VALUES(2,'Algoritma ve
Programlama','Ozgur Gumus');
INSERT INTO COURSE(CourseId, CourseName, Instructor) VALUES(3,'Matematik','Vecdi Aytac');
INSERT INTO COURSE(CourseId, CourseName, Instructor) VALUES(4,'Nesneye Dayali
Programlama','Riza Cenk Erdur');
INSERT INTO COURSE(CourseId, CourseName, Instructor) VALUES(5,'Yapay Zeka Yontemleri','Aybars
Ugur');
INSERT INTO COURSE(CourseId, CourseName, Instructor) VALUES(6,'Fizik','Ibrahim Avgin');
INSERT INTO COURSE(CourseId, CourseName, Instructor) VALUES(7,'Elektrik Devreleri','Emine Sezer');
INSERT INTO COURSE(CourseId, CourseName, Instructor) VALUES(8,'Isletim Sistemleri','Aylin
Kantarci');

INSERT INTO COURSE_PROJECT (CourseId, CProjectNo, CProjectName)
VALUES(1,1,'LinkedinMoodle');
INSERT INTO COURSE_PROJECT (CourseId, CProjectNo, CProjectName) VALUES(4,2,'Text Editor');
INSERT INTO COURSE_PROJECT (CourseId, CProjectNo, CProjectName) VALUES(1,3,'Airline
Database');
INSERT INTO COURSE_PROJECT (CourseId, CProjectNo, CProjectName) VALUES(2,4,'Kare
Tamamlamaca');
INSERT INTO COURSE_PROJECT (CourseId, CProjectNo, CProjectName) VALUES(5,5,'Eight Queens');
INSERT INTO COURSE_PROJECT (CourseId, CProjectNo, CProjectName) VALUES(3,6,'Matematik');

INSERT INTO NOTIFICATION(NotificationID) VALUES(1);
INSERT INTO NOTIFICATION(NotificationID) VALUES(2);
INSERT INTO NOTIFICATION(NotificationID) VALUES(3);
INSERT INTO NOTIFICATION(NotificationID) VALUES(4);
INSERT INTO NOTIFICATION(NotificationID) VALUES(5);
INSERT INTO NOTIFICATION(NotificationID) VALUES(6);

INSERT INTO MESSAGE(NotificationID, MessageTitle) VALUES(1,'Merhaba');
INSERT INTO MESSAGE(NotificationID, MessageTitle) VALUES(2,'Vize Tarihi');
INSERT INTO MESSAGE(NotificationID, MessageTitle) VALUES(3,'Proje Sunumu');
INSERT INTO MESSAGE(NotificationID, MessageTitle) VALUES(4,'Devamsizlik');
INSERT INTO MESSAGE(NotificationID, MessageTitle) VALUES(5,'PCR Testi');
INSERT INTO MESSAGE(NotificationID, MessageTitle) VALUES(6,'Proje Sonuclari');

INSERT INTO PROFILE_VIEWS (NotificationID, ViewCount) VALUES(1,42);
INSERT INTO PROFILE_VIEWS (NotificationID, ViewCount) VALUES(2,169);
INSERT INTO PROFILE_VIEWS (NotificationID, ViewCount) VALUES(3,13);
INSERT INTO PROFILE_VIEWS (NotificationID, ViewCount) VALUES(4,54);
INSERT INTO PROFILE_VIEWS (NotificationID, ViewCount) VALUES(5,1002);
INSERT INTO PROFILE_VIEWS (NotificationID, ViewCount) VALUES(6,658);

INSERT INTO JOB_POST(NotificationID, JobID, JobTitle, Location, PostDate, Company_ID)
VALUES(1,1,'Yazilim Muhendisi','Istanbul','2022-01-12',1);
INSERT INTO JOB_POST(NotificationID, JobID, JobTitle, Location, PostDate, Company_ID)
VALUES(2,2,'Arge Muhendisi','Manisa','2021-12-26',2);
INSERT INTO JOB_POST(NotificationID, JobID, JobTitle, Location, PostDate, Company_ID)
VALUES(3,3,'Database Analyst','Ankara','2022-01-03',3);
INSERT INTO JOB_POST(NotificationID, JobID, JobTitle, Location, PostDate, Company_ID)
VALUES(4,4,'Siber Guvenlik Uzmani','ABD','2021-11-28',4);
INSERT INTO JOB_POST(NotificationID, JobID, JobTitle, Location, PostDate, Company_ID)
VALUES(5,5,'Yazilim Muhendisi','Istanbul','2021-12-04',5);
INSERT INTO JOB_POST(NotificationID, JobID, JobTitle, Location, PostDate, Company_ID)
VALUES(6,6,'Proje Yoneticisi','Izmir','2022-01-24',1);
INSERT INTO JOB_POST(NotificationID, JobID, JobTitle, Location, PostDate, Company_ID)
VALUES(7,7,'Nesne Tabanli Yazilim Muhendisi','ABD','2021-12-20',2);
INSERT INTO JOB_POST(NotificationID, JobID, JobTitle, Location, PostDate, Company_ID)
VALUES(8,8,'Gomulu Sistem Uzmani','Ankara','2021-12-12',3);

INSERT INTO SKILLS (SkillID, PFlag, CProject_no, ProjectName, LFlag, LanguageName, CFlag,
CertificateName) VALUES(1,1,1,'Robot Sistemi',1,'Ingilizce',0,NULL);
INSERT INTO SKILLS (SkillID, PFlag, CProject_no, ProjectName, LFlag, LanguageName, CFlag,
CertificateName) VALUES(2,2,0,NULL,1,'Almanca',0,NULL);
INSERT INTO SKILLS (SkillID, PFlag, CProject_no, ProjectName, LFlag, LanguageName, CFlag,
CertificateName) VALUES(3,3,0,NULL,1,'Ispanyolca',0,NULL);

INSERT INTO USER_ (Ssn, FName, LName, UC_id) VALUES(487965234,'Mehmet','Cinar',1);
INSERT INTO USER_ (Ssn, FName, LName, UC_id) VALUES(112547865,'Melis','Dost',2);
INSERT INTO USER_ (Ssn, FName, LName, UC_id) VALUES(328547669,'Aleyna','Onal',3);
INSERT INTO USER_ (Ssn, FName, LName, UC_id) VALUES(102687459,'Onur','Yilmaz',4);
INSERT INTO USER_ (Ssn, FName, LName, UC_id) VALUES(174810589,'Hazal','Kaya',5);
INSERT INTO USER_ (Ssn, FName, LName, UC_id) VALUES(305601896,'Ahmet','Tartar',6);
INSERT INTO USER_ (Ssn, FName, LName, UC_id) VALUES(240102369,'Demet','Sahin',7);
INSERT INTO USER_ (Ssn, FName, LName, UC_id) VALUES(320654702,'Ersin','Elmas',8);
INSERT INTO USER_ (Ssn, FName, LName, UC_id) VALUES(602304785,'Mutlu','Cengiz',9);
INSERT INTO USER_ (Ssn, FName, LName, UC_id) VALUES(990201459,'Irem','Koc',10);

INSERT INTO USER_COMP(UC_id) VALUES(1);
INSERT INTO USER_COMP(UC_id) VALUES(2);
INSERT INTO USER_COMP(UC_id) VALUES(3);
INSERT INTO USER_COMP(UC_id) VALUES(4);
INSERT INTO USER_COMP(UC_id) VALUES(5);
INSERT INTO USER_COMP(UC_id) VALUES(6);
INSERT INTO USER_COMP(UC_id) VALUES(7);
INSERT INTO USER_COMP(UC_id) VALUES(8);
INSERT INTO USER_COMP(UC_id) VALUES(9);
INSERT INTO USER_COMP(UC_id) VALUES(10);

INSERT INTO PROFILE(UC_id, ProfileID, Username, Mail, PLanguage, Website)
VALUES(1,1,'mehmetcinar','mehmetcinar@gmail.com','Ingilizce',NULL);
INSERT INTO PROFILE(UC_id, ProfileID, Username, Mail, PLanguage, Website)
VALUES(2,2,'melis1','melisdost@gmail.com','Ingilizce',NULL);
INSERT INTO PROFILE(UC_id, ProfileID, Username, Mail, PLanguage, Website)
VALUES(3,3,'aonal','aleynaonal@gmail.com','Almanca',NULL);
INSERT INTO PROFILE(UC_id, ProfileID, Username, Mail, PLanguage, Website)
VALUES(4,4,'yilmazonur','onuryilmaz@gmail.com','Ingilizce',NULL);
INSERT INTO PROFILE(UC_id, ProfileID, Username, Mail, PLanguage, Website)
VALUES(5,5,'hazal35','hazalkaya@gmail.com','Almanca','www.hazalkaya.com');
INSERT INTO PROFILE(UC_id, ProfileID, Username, Mail, PLanguage, Website)
VALUES(6,6,'tartar','ahmettartar@gmail.com','Ispanyolca',NULL);
INSERT INTO PROFILE(UC_id, ProfileID, Username, Mail, PLanguage, Website)
VALUES(7,7,'demetsahin','demetsahin@gmail.com','Ingilizce',NULL);
INSERT INTO PROFILE(UC_id, ProfileID, Username, Mail, PLanguage, Website)
VALUES(8,8,'eelmas','ersinelmas@gmail.com','Fransizca','www.ersinelmas.com');
INSERT INTO PROFILE(UC_id, ProfileID, Username, Mail, PLanguage, Website)
VALUES(9,9,'mutlu01','mutlucengizz@gmail.com','Rusca',NULL);
INSERT INTO PROFILE(UC_id, ProfileID, Username, Mail, PLanguage, Website)
VALUES(10,10,'irem2','iremkoc@gmail.com','Ingilizce',NULL);

INSERT INTO COMPANY(CompanyID, CompanyName, Location, Founder, UC_id, Mgr_Ssn,
Mgr_SDate) VALUES(1,'IBM','Istanbul','Charles Ranlett Flint'
,1,112547865,NULL);
INSERT INTO COMPANY(CompanyID, CompanyName, Location, Founder, UC_id, Mgr_Ssn,
Mgr_SDate) VALUES(2,'Vestel','Manisa','Asil Nadir',2,487965234,NULL);
INSERT INTO COMPANY(CompanyID, CompanyName, Location, Founder, UC_id, Mgr_Ssn,
Mgr_SDate) VALUES(3,'Aselsan','Ankara','TSK',3,174810589,NULL);
INSERT INTO COMPANY(CompanyID, CompanyName, Location, Founder, UC_id, Mgr_Ssn,
Mgr_SDate) VALUES(4,'Twitter','Irlanda','Jack Dorsey',4,320654702,NULL);
INSERT INTO COMPANY(CompanyID, CompanyName, Location, Founder, UC_id, Mgr_Ssn,
Mgr_SDate) VALUES(5,'Havelsan','Ankara','Mehmet Akif Nacar',5,990201459,NULL);

INSERT INTO POST(PostID, PostType, ArticleName, EventName, ImageName, VideoTitle,UserSsn)
VALUES(1,'video',NULL,NULL,NULL,'Yapay Zeka',487965234);
INSERT INTO POST(PostID, PostType, ArticleName, EventName, ImageName, VideoTitle,UserSsn)
VALUES(2,'image',NULL,NULL,'Hava savunma',NULL,102687459);
INSERT INTO POST(PostID, PostType, ArticleName, EventName, ImageName, VideoTitle,UserSsn)
VALUES(3,'video',NULL,NULL,NULL,'Robot',990201459);
INSERT INTO POST(PostID, PostType, ArticleName, EventName, ImageName, VideoTitle,UserSsn)
VALUES(4,'article','Deep Learning',NULL,NULL,NULL,320654702);
INSERT INTO POST(PostID, PostType, ArticleName, EventName, ImageName, VideoTitle,UserSsn)
VALUES(5,'event',NULL,'Teknofest',NULL,NULL,174810589);

INSERT INTO US_ED(CollageID, USsn, Degree, GPA, StartDate, EndDate)
VALUES(1,990201459,'Lisans',3.00,'2016-10-24','2021-06-18');
INSERT INTO US_ED(CollageID, USsn, Degree, GPA, StartDate, EndDate)
VALUES(2,240102369,'Lisans',2.73,'2017-10-24','2021-06-18');
INSERT INTO US_ED(CollageID, USsn, Degree, GPA, StartDate, EndDate)
VALUES(3,112547865,'Lisans',3.54,'2016-10-24','2020-07-01');
INSERT INTO US_ED(CollageID, USsn, Degree, GPA, StartDate, EndDate)
VALUES(4,487965234,'Lisans',2.84,'2015-10-24','2020-06-28');
INSERT INTO US_ED(CollageID, USsn, Degree, GPA, StartDate, EndDate)
VALUES(5,305601896,'Lisans',2.42,'2014-10-24','2021-08-24');
INSERT INTO US_ED(CollageID, USsn, Degree, GPA, StartDate, EndDate)
VALUES(6,328547669,'Lisans',3.08,'2017-10-24','2022-01-18');

INSERT INTO ENROLL(CourseID, USsn, Grade) VALUES(1,990201459,70);
INSERT INTO ENROLL(CourseID, USsn, Grade) VALUES(2,240102369,82);
INSERT INTO ENROLL(CourseID, USsn, Grade) VALUES(3,112547865,65);
INSERT INTO ENROLL(CourseID, USsn, Grade) VALUES(4,487965234,64);
INSERT INTO ENROLL(CourseID, USsn, Grade) VALUES(5,328547669,88);

INSERT INTO HAS_SK(SkillID, USsn) VALUES(1,990201459);
INSERT INTO HAS_SK(SkillID, USsn) VALUES(2,240102369);
INSERT INTO HAS_SK(SkillID, USsn) VALUES(3,112547865);
INSERT INTO HAS_SK(SkillID, USsn) VALUES(4,487965234);
INSERT INTO HAS_SK(SkillID, USsn) VALUES(5,328547669);

INSERT INTO RECEIVES(NotificationID, USsn) VALUES(1,990201459);
INSERT INTO RECEIVES(NotificationID, USsn) VALUES(2,240102369);
INSERT INTO RECEIVES(NotificationID, USsn) VALUES(3,487965234);
INSERT INTO RECEIVES(NotificationID, USsn) VALUES(4,328547669);
INSERT INTO RECEIVES(NotificationID, USsn) VALUES(5,112547865);

INSERT INTO WORKS_FOR(USsn, CompanyID, SDate, EDate) VALUES(990201459,1,'2017-10-
24',NULL);
INSERT INTO WORKS_FOR(USsn, CompanyID, SDate, EDate) VALUES(240102369,2,'2020-10-
24',NULL);
INSERT INTO WORKS_FOR(USsn, CompanyID, SDate, EDate) VALUES(487965234,3,'2021-10-
24','2021-12-28');
INSERT INTO WORKS_FOR(USsn, CompanyID, SDate, EDate) VALUES(328547669,4,'2019-10-
24',NULL);
INSERT INTO WORKS_FOR(USsn, CompanyID, SDate, EDate) VALUES(112547865,5,'2021-01-
24','2022-01-28');

INSERT INTO REFERENCE (Referer_Ssn, Referenced_Ssn) VALUES(990201459,602304785);
INSERT INTO REFERENCE (Referer_Ssn, Referenced_Ssn) VALUES(602304785,112547865);
INSERT INTO REFERENCE (Referer_Ssn, Referenced_Ssn) VALUES(487965234,174810589);
INSERT INTO REFERENCE (Referer_Ssn, Referenced_Ssn) VALUES(174810589,240102369);
INSERT INTO REFERENCE (Referer_Ssn, Referenced_Ssn) VALUES(102687459,328547669);

INSERT INTO US_MESSAGE (Messager_Ssn, Messaged_Ssn) VALUES(990201459,602304785);
INSERT INTO US_MESSAGE (Messager_Ssn, Messaged_Ssn) VALUES(602304785,112547865);
INSERT INTO US_MESSAGE (Messager_Ssn, Messaged_Ssn) VALUES(102687459,328547669);
INSERT INTO US_MESSAGE (Messager_Ssn, Messaged_Ssn) VALUES(240102369,174810589);
INSERT INTO US_MESSAGE (Messager_Ssn, Messaged_Ssn) VALUES(487965234,174810589);

INSERT INTO PROFILE_PHONE(UC_ID, ProfileID, Phone) VALUES(1,1,45652367);
INSERT INTO PROFILE_PHONE(UC_ID, ProfileID, Phone) VALUES(2,2,12458799);
INSERT INTO PROFILE_PHONE(UC_ID, ProfileID, Phone) VALUES(3,3,55488021);
INSERT INTO PROFILE_PHONE(UC_ID, ProfileID, Phone) VALUES(4,4,20354218);
INSERT INTO PROFILE_PHONE(UC_ID, ProfileID, Phone) VALUES(5,5,14032578);