INSERT INTO COURSE (CourseId, CourseName, Instructor) values(50204, 'Data Structures', 'Aybars
Uğur');
UPDATE COURSE SET Instructor = 'Vecdi Aytac' WHERE CourseName = 'Algoritma ve Programlama';
DELETE FROM COURSE WHERE CourseName = 'Matematik';
INSERT INTO COMPANY(CompanyID, CompanyName, Location, Founder, UC_id, Mgr_Ssn,
Mgr_SDate) VALUES(7,'Facebook','Istanbul',Mark Zuckerberg,7,102687459,'2020-07-12');
UPDATE COMPANY SET CompanyName = 'Meta' WHERE CompanyName = 'Facebook';
DELETE FROM COMPANY WHERE Location = 'Manisa';
INSERT INTO MESSAGE(NotificationID, MessageTitle) VALUES(8,'Data Proje Sonuçları');
UPDATE MESSAGE SET MessageTitle = 'Final Tarihi' WHERE MessageTitle = 'Vize Tarihi';
DELETE FROM MESSAGE WHERE MessageTitle = 'Merhaba';