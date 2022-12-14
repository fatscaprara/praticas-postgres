SELECT
users.id, users.name AS name, roles.name AS role, companies.name AS company, experiences."startDate"
FROM companies 
JOIN experiences 
ON companies.id = experiences."companyId" 
JOIN users 
ON experiences."userId" = users.id 
JOIN roles 
ON experiences."roleId" = roles.id
WHERE users.id = 50 AND experiences."endDate" = IS NULL;