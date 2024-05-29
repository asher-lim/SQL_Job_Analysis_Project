/*
What are the required skills for the top-paying data analyst jobs, working remotely?
- Remote DA jobs only
- Specific skills required for the roles
- Skills ordered by top salaries
*/

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

-- Most common required skills by top-10-paying DA jobs, working remotely
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
ORDER BY skill_count DESC;

[
  {
    "skills": "sql",
    "skill_count": "8",
    "avg_total_salary": "207320.187500000000"
  },
  {
    "skills": "python",
    "skill_count": "7",
    "avg_total_salary": "205937.357142857143"
  },
  {
    "skills": "tableau",
    "skill_count": "6",
    "avg_total_salary": "214260.250000000000"
  },
  {
    "skills": "r",
    "skill_count": "4",
    "avg_total_salary": "215313.125000000000"
  },
  {
    "skills": "snowflake",
    "skill_count": "3",
    "avg_total_salary": "193436.333333333333"
  },
  {
    "skills": "pandas",
    "skill_count": "3",
    "avg_total_salary": "215609.833333333333"
  },
  {
    "skills": "excel",
    "skill_count": "3",
    "avg_total_salary": "215609.833333333333"
  },
  {
    "skills": "atlassian",
    "skill_count": "2",
    "avg_total_salary": "189154.500000000000"
  },
  {
    "skills": "jira",
    "skill_count": "2",
    "avg_total_salary": "189154.500000000000"
  },
  {
    "skills": "aws",
    "skill_count": "2",
    "avg_total_salary": "222569.250000000000"
  },
  {
    "skills": "azure",
    "skill_count": "2",
    "avg_total_salary": "222569.250000000000"
  },
  {
    "skills": "bitbucket",
    "skill_count": "2",
    "avg_total_salary": "189154.500000000000"
  },
  {
    "skills": "confluence",
    "skill_count": "2",
    "avg_total_salary": "189154.500000000000"
  },
  {
    "skills": "gitlab",
    "skill_count": "2",
    "avg_total_salary": "195500.000000000000"
  },
  {
    "skills": "go",
    "skill_count": "2",
    "avg_total_salary": "195500.000000000000"
  },
  {
    "skills": "numpy",
    "skill_count": "2",
    "avg_total_salary": "195500.000000000000"
  },
  {
    "skills": "oracle",
    "skill_count": "2",
    "avg_total_salary": "203154.500000000000"
  },
  {
    "skills": "power bi",
    "skill_count": "2",
    "avg_total_salary": "222569.250000000000"
  },
  {
    "skills": "jenkins",
    "skill_count": "1",
    "avg_total_salary": "189309.000000000000"
  },
  {
    "skills": "crystal",
    "skill_count": "1",
    "avg_total_salary": "217000.000000000000"
  },
  {
    "skills": "powerpoint",
    "skill_count": "1",
    "avg_total_salary": "255829.500000000000"
  },
  {
    "skills": "pyspark",
    "skill_count": "1",
    "avg_total_salary": "255829.500000000000"
  },
  {
    "skills": "hadoop",
    "skill_count": "1",
    "avg_total_salary": "232423.000000000000"
  },
  {
    "skills": "git",
    "skill_count": "1",
    "avg_total_salary": "189000.000000000000"
  },
  {
    "skills": "sap",
    "skill_count": "1",
    "avg_total_salary": "189309.000000000000"
  },
  {
    "skills": "jupyter",
    "skill_count": "1",
    "avg_total_salary": "255829.500000000000"
  },
  {
    "skills": "flow",
    "skill_count": "1",
    "avg_total_salary": "217000.000000000000"
  },
  {
    "skills": "databricks",
    "skill_count": "1",
    "avg_total_salary": "255829.500000000000"
  }
];