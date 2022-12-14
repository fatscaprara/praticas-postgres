SELECT users.id, users.name, courses.name AS courses, schools.name AS school, educations."endDate" 
FROM courses 
JOIN educations 
ON courses.id = educations."courseId" 
JOIN users 
ON educations."userId" = users.id 
JOIN schools 
ON educations."schoolId" = schools.id 
WHERE users.id = 30 AND educations.status = 'finished';