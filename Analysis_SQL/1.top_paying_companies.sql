/*
What are the companies paying the top 10 highest salaries for data analyst roles in Singapore?
- Focuses on job postings with specified salaries (nulls are removed).
*/

-- For Data Analyst jobs in Singapore
SELECT
    job_title,
    name AS company_name,
    job_location,
    job_schedule_type,
    salary_year_avg
FROM
    job_postings_fact AS postings
LEFT JOIN company_dim AS companies ON postings.company_id = companies.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_location = 'Singapore' AND
    job_title NOT LIKE '%Research Scientist%' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC 
LIMIT 10;

-- For remote data analyst jobs
SELECT
    job_title,
    name AS company_name,
    job_work_from_home AS remote_job,
    job_schedule_type,
    salary_year_avg
FROM
    job_postings_fact AS postings
LEFT JOIN company_dim AS companies ON postings.company_id = companies.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_work_from_home = true AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC 
LIMIT 10;