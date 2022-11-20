-- PROJECT 2 - Covid_education

-- checking full dataset
SELECT * FROM covid19Database.covid19_education;

-- Counting the number of students in the dataset  
SELECT COUNT(ID) AS 'Number of Students'
FROM covid19Database.covid19_education;


-- 1) HOW DOES THE DEVICE USED EFFECT THE TIME SPENT ON SELF STUDY AND ONLINE CLASSES? 
SELECT OnlineClassDevice AS 'Device Used During Class', 
COUNT(OnlineClassDevice) AS 'Count of Devices',
AVG(TimeOnlineClass) AS 'Time Spent on Online Class',
AVG(SelfStudyTime) AS 'Time spent on Self Study'
FROM covid19Database.covid19_education
GROUP BY OnlineClassDevice
ORDER BY 2 DESC;


-- 2) HOW DOES THE TIME SPENT ON SOCIAL MEDIA IMPACT THE ONLINE CLASS EXPERIENCE RATING. 
SELECT RatingOnlineExperience AS 'Rating Online Experience',
COUNT(RatingOnlineExperience) AS 'Count of Experience Rating',
AVG(SocialMediaTime) AS 'Average Time Spent on Social Media'
FROM covid19Database.covid19_education
GROUP BY RatingOnlineExperience
ORDER BY 3 DESC;


-- 3) DOES AGE IMPACT THE AMOUNT OF SLEEP STUDENTS GET? 
SELECT CASE 
WHEN Age BETWEEN 7 AND 16 THEN '7-16'
WHEN Age BETWEEN 16 AND 25 THEN '16-25'
WHEN Age BETWEEN 26 AND 35 THEN '26-35'
WHEN Age BETWEEN 36 AND 45 THEN '36-45'
WHEN Age BETWEEN 46 AND 55 THEN '46-55'
WHEN Age BETWEEN 56 AND 65 THEN '56-65'
END AS 'Age',
AVG(SleepTime) AS 'Time Spent On Sleep'
FROM covid19Database.covid19_education
GROUP BY 1 
ORDER BY 2 DESC;


-- 4) DOES THE TIME UTILIZED REFLECT THE TIME USED TO STUDY ALONE? 
SELECT TimeUtilized AS 'Time Utilized',
AVG(SelfStudyTime) AS 'Average Time Spent on Self Study'
FROM covid19Database.covid19_education
GROUP BY TimeUtilized
ORDER BY 2 DESC;


-- 5) DID LOCKDOWN HAVE A POSITIVE IMPACT ON RELATIONSHIPS DEPENDING ON AGE?
SELECT CASE 
WHEN Age BETWEEN 7 AND 16 THEN '7-16'
WHEN Age BETWEEN 16 AND 25 THEN '16-25'
WHEN Age BETWEEN 26 AND 35 THEN '26-35'
WHEN Age BETWEEN 36 AND 45 THEN '36-45'
WHEN Age BETWEEN 46 AND 55 THEN '46-55'
WHEN Age BETWEEN 56 AND 65 THEN '56-65'
END AS 'Age brackets',
COUNT(ImprovedRelationships) AS 'Improved relationships with friends and Family'
FROM covid19Database.covid19_education
GROUP BY 1 
ORDER BY 2 DESC;

-- 6) HOW DOES AGE AND DEVICE USED IMPACT THE TIME STUDYING. 
SELECT CASE 
WHEN Age BETWEEN 7 AND 16 THEN '7-16'
WHEN Age BETWEEN 16 AND 25 THEN '16-25'
WHEN Age BETWEEN 26 AND 35 THEN '26-35'
WHEN Age BETWEEN 36 AND 45 THEN '36-45'
WHEN Age BETWEEN 46 AND 55 THEN '46-55'
WHEN Age BETWEEN 56 AND 65 THEN '56-65'
END AS 'Age ',
OnlineClassDevice AS 'Device used to study',
AVG(TimeOnlineClass) AS 'Time spent online class', 
AVG(SelfStudyTime) AS 'Time spent on self study'
FROM covid19Database.covid19_education
GROUP BY 1, 2
ORDER BY 3,4 DESC;

-- 7) COUNT OF RATING RESPONSES.  
SELECT RatingOnlineExperience, COUNT(RatingOnlineExperience)
FROM covid19Database.covid19_education
GROUP BY RatingOnlineExperience
ORDER BY 2 DESC;


-- 8) AGE GROUPS CATEGORISED BY TIME SPENT IN ONLINE CLASS.
SELECT CASE 
WHEN Age BETWEEN 7 AND 16 THEN '7-16'
WHEN Age BETWEEN 16 AND 25 THEN '16-25'
WHEN Age BETWEEN 26 AND 35 THEN '26-35'
WHEN Age BETWEEN 36 AND 45 THEN '36-45'
WHEN Age BETWEEN 46 AND 55 THEN '46-55'
WHEN Age BETWEEN 56 AND 65 THEN '56-65'
END AS 'Age brackets',
AVG(TimeOnlineClass) AS 'Time spent in online class'
FROM covid19Database.covid19_education
GROUP BY 1 
ORDER BY 1 DESC;


-- Amount of Smartphones in dataset
SELECT OnlineClassDevice, COUNT(OnlineClassDevice)
FROM covid19Database.covid19_education
GROUP BY OnlineClassDevice;




