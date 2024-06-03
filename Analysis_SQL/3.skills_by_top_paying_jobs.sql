/*
What are the required skills for the top-paying data analyst jobs, working remotely?
- Remote DA jobs only
- Specific skills required for the roles
- Skills ordered by top salaries
*/

-- Required skills by top-10-paying DA jobs, in Singapore
WITH top_paying_companies AS ( --see top_paying_companies.sql
    SELECT
        job_id,
        job_title,
        name AS company_name,
        job_location,
        salary_year_avg
    FROM
        job_postings_fact AS postings
    LEFT JOIN company_dim AS companies ON postings.company_id = companies.company_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        job_location = 'Singapore' AND
        salary_year_avg IS NOT NULL AND
        job_title NOT LIKE '%Research Scientist%'
    ORDER BY salary_year_avg DESC 
    LIMIT 10
)
SELECT 
    TP.*,
    skills.skills
FROM top_paying_companies AS TP
INNER JOIN skills_job_dim AS SJ ON TP.job_id = SJ.job_id
INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
ORDER BY salary_year_avg DESC;

-- Top 10 most common required skills by top-10-paying DA jobs, in Singapore
WITH top_paying_companies AS (
    SELECT
        job_id,
        job_title,
        name AS company_name,
        job_location,
        salary_year_avg
    FROM
        job_postings_fact AS postings
    LEFT JOIN company_dim AS companies ON postings.company_id = companies.company_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        job_location = 'Singapore' AND
        salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC 
    LIMIT 10
)
SELECT 
    skills.skills,
    COUNT(skills.skills) AS skill_count,
    AVG (salary_year_avg) AS avg_total_salary
FROM top_paying_companies AS TP
INNER JOIN skills_job_dim AS SJ ON TP.job_id = SJ.job_id
INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
GROUP BY skills.skills
ORDER BY skill_count DESC
LIMIT 10;

-- Required skills by top-10-paying DA jobs, working remotely
WITH top_paying_companies AS ( --see top_paying_companies.sql
    SELECT
        job_id,
        job_title,
        name AS company_name,
        job_location,
        salary_year_avg
    FROM
        job_postings_fact AS postings
    LEFT JOIN company_dim AS companies ON postings.company_id = companies.company_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC 
    LIMIT 10
)
SELECT 
    TP.*,
    skills.skills
FROM top_paying_companies AS TP
INNER JOIN skills_job_dim AS SJ ON TP.job_id = SJ.job_id
INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
ORDER BY salary_year_avg DESC;

-- Top 10 most common required skills by top-10-paying DA jobs, working remotely
WITH top_paying_companies AS (
    SELECT
        job_id,
        job_title,
        name AS company_name,
        job_location,
        salary_year_avg
    FROM
        job_postings_fact AS postings
    LEFT JOIN company_dim AS companies ON postings.company_id = companies.company_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC 
    LIMIT 10
)
SELECT 
    skills.skills,
    COUNT(skills.skills) AS skill_count,
    AVG (salary_year_avg) AS avg_total_salary
FROM top_paying_companies AS TP
INNER JOIN skills_job_dim AS SJ ON TP.job_id = SJ.job_id
INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
GROUP BY skills.skills
ORDER BY skill_count DESC
LIMIT 10;

