------------------------------------ 

SELECT * 
FROM COMPANY 
WHERE Location = 'Istanbul';

SELECT * 
FROM USER_
WHERE FName LIKE 'M%';

SELECT CollageName, COUNT(*) 
FROM EDUCATION
WHERE CollageName = 'Ege University'
GROUP BY CollageName;

------------------------------------ 

SELECT Ssn, COUNT(*)
FROM USER_, POST                   
WHERE USER_.Ssn = POST.UserSsn
GROUP BY Ssn
ORDER BY COUNT(*) DESC     


SELECT PROFILE.UC_id, UserName, Mail, Website, Planguage
FROM USER_COMP, PROFILE
WHERE USER_COMP.UC_id = PROFILE.UC_id AND
	  PROFILE.Planguage = 'Ingilizce';  
	   

SELECT U.FName, U.LName
FROM USER_ AS U, COMPANY AS C
WHERE U.Ssn = C.Mgr_Ssn;  


SELECT U.FName, U.LName, E.CourseID, E.Grade
FROM USER_ AS U, ENROLL AS E
WHERE U.Ssn = E.USsn AND
	  E.Grade IN ('A','B') ; 

------------------------------------ 

SELECT U.FName, U.LName, C.CourseName, E.Grade
FROM USER_ AS U, ENROLL AS E, COURSE AS C
WHERE U.Ssn = E.USsn AND E.CourseID = C.CourseId
	  AND E.Grade IN ('A','B','C') ;  


SELECT *
FROM USER_ AS U, COMPANY AS C, WORKS_FOR AS W
WHERE U.Ssn = W.USsn AND C.CompanyID = W.CompanyId
	  AND W.SDate LIKE '2020%';  


SELECT U.FName AS RefererFirstName, U.LName AS RefererLastName, 
	   US.FName AS RefereeFirstName, US.LName AS RefereeLastName
FROM USER_ AS U, USER_ AS US, REFERENCE AS R, COMPANY AS C
WHERE U.Ssn = R.Referer_Ssn AND US.Ssn = R.Referenced_Ssn
	  AND U.Ssn = C.Mgr_Ssn
	  AND C.CompanyName = 'Vestel'; 

------------------------------------

SELECT Fname, Lname
FROM USER_ 
WHERE NOT EXISTS(SELECT *
				 FROM REFERENCE            
				 WHERE Ssn = Referer_Ssn );


SELECT Fname, Lname
FROM USER_
WHERE EXISTS (SELECT *
			  FROM REFERENCE
			  WHERE Ssn = Referer_Ssn) 
	  AND
	  EXISTS (SELECT *
			  FROM COMPANY
			  WHERE Ssn = Mgr_Ssn);


SELECT U.FName, U.LName, E.Grade
FROM COURSE AS C, ENROLL AS E, USER_ AS U, WORKS_FOR AS W, COMPANY AS CM
WHERE C.CourseId = E.CourseID AND
      E.USsn = U.Ssn AND	
      U.Ssn = W.USsn AND
      W.CompanyId = CM.CompanyID AND
      CM.CompanyName = 'Vestel' AND 
      C.Instructor = 'Murat Osman Unalir';


--SELECT UserSsn, COUNT(*)
--FROM POST				
--WHERE ArticleName IS NOT NULL			
--	  AND UserSsn IN (SELECT UserSsn
--					  FROM POST
--					  GROUP BY UserSsn						
--				      HAVING COUNT(*)>3)
--GROUP BY UserSsn;



SELECT U.Ssn , COUNT(*) AS CProjectCount
FROM HAS_SK AS HS, USER_ AS U, SKILLS AS S, COURSE AS C, COURSE_PROJECT AS CP, ENROLL AS E
WHERE CP.CourseId = C.CourseId AND
	  C.CourseId = E.CourseID AND
	  E.USsn = U.Ssn AND
	  U.Ssn = HS.USsn AND
	  HS.SkillID = S.SkillID AND
	  S.CProject_no = CP.CProjectNo	
GROUP BY Ssn;