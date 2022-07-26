SELECT users.id, users.name, cities.name AS city FROM users 
JOIN cities ON users."cityId" = cities.id
WHERE cities.name = 'Rio de Janeiro';

SELECT testimonials.id, writer.name as writer, recipient.name as recipient, testimonials.message FROM testimonials
JOIN users as writer ON testimonials."writerId" = writer.id
JOIN users as recipient ON testimonials."recipientId" = recipient.id;

SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate" 
FROM educations
JOIN users ON educations."userId" = users.id
JOIN courses ON educations."courseId" = courses.id
JOIN schools ON educations."schoolId" = schools.id
WHERE educations."userId" = 30;

SELECT users.id, users.name, roles.name as "role", companies.name as company, experiences."startDate"
FROM experiences
JOIN users on experiences."userId" = users.id
JOIN roles on experiences."roleId" = roles.id
JOIN companies on experiences."companyId" = companies.id
WHERE experiences."userId" = 50 AND experiences."endDate" IS NULL;







