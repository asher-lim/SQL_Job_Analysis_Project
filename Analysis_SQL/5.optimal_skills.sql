/*
What are the most optimal skills to learn?
- Optimal = Skills with highest demand(job security) + Skills that pays the highest(financial motivation)
- Only on jobs with stated salaries
*/

-- See 3.highest_demanded_skills
SELECT 
    skills,
    COUNT(SJ.job_id) AS skill_count
FROM job_postings_fact AS postings
INNER JOIN skills_job_dim AS SJ ON postings.job_id = SJ.job_id
INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
WHERE job_title_short = 'Data Analyst'
GROUP BY skills.skills
ORDER BY skill_count DESC
LIMIT 5;

-- See 4.top_paying_skills
SELECT
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact AS postings
INNER JOIN skills_job_dim AS SJ ON postings.job_id = SJ.job_id
INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY avg_salary DESC
LIMIT 10;

-- Combined, where demand is ordered first, followed by average salary
WITH 
    demand AS (
        SELECT 
            skills.skill_id,
            skills.skills,
            COUNT(SJ.job_id) AS skill_count
        FROM job_postings_fact AS postings
        INNER JOIN skills_job_dim AS SJ ON postings.job_id = SJ.job_id
        INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
        WHERE 
            job_title_short = 'Data Analyst' AND
            salary_year_avg IS NOT NULL
        GROUP BY skills.skill_id
    )
    ,
    highest_paid AS (
        SELECT
            skills.skill_id,
            skills.skills,
            ROUND(AVG(salary_year_avg),0) AS avg_salary
        FROM job_postings_fact AS postings
        INNER JOIN skills_job_dim AS SJ ON postings.job_id = SJ.job_id
        INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
        WHERE
            job_title_short = 'Data Analyst' AND
            salary_year_avg IS NOT NULL
        GROUP BY skills.skill_id
)

SELECT
    demand.skill_id,
    demand.skills,
    skill_count,
    avg_salary
FROM demand
INNER JOIN highest_paid ON demand.skill_id = highest_paid.skill_id
ORDER BY
    skill_count DESC,
    avg_salary DESC
LIMIT 6;

[
  {
    "skill_id": 0,
    "skills": "sql",
    "skill_count": "3083",
    "avg_salary": "96435"
  },
  {
    "skill_id": 181,
    "skills": "excel",
    "skill_count": "2143",
    "avg_salary": "86419"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "skill_count": "1840",
    "avg_salary": "101512"
  },
  {
    "skill_id": 182,
    "skills": "tableau",
    "skill_count": "1659",
    "avg_salary": "97978"
  },
  {
    "skill_id": 5,
    "skills": "r",
    "skill_count": "1073",
    "avg_salary": "98708"
  },
  {
    "skill_id": 183,
    "skills": "power bi",
    "skill_count": "1044",
    "avg_salary": "92324"
  }
]


-- Now, salary is ordered first folowed by demand, with demand at least 10
WITH 
    demand AS (
        SELECT 
            skills.skill_id,
            skills.skills,
            COUNT(SJ.job_id) AS skill_count
        FROM job_postings_fact AS postings
        INNER JOIN skills_job_dim AS SJ ON postings.job_id = SJ.job_id
        INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
        WHERE 
            job_title_short = 'Data Analyst' AND
            salary_year_avg IS NOT NULL
        GROUP BY skills.skill_id
    )
    ,
    highest_paid AS (
        SELECT
            skills.skill_id,
            skills.skills,
            ROUND(AVG(salary_year_avg),0) AS avg_salary
        FROM job_postings_fact AS postings
        INNER JOIN skills_job_dim AS SJ ON postings.job_id = SJ.job_id
        INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
        WHERE
            job_title_short = 'Data Analyst' AND
            salary_year_avg IS NOT NULL
        GROUP BY skills.skill_id
)

SELECT
    demand.skill_id,
    demand.skills,
    skill_count,
    avg_salary
FROM demand
INNER JOIN highest_paid ON demand.skill_id = highest_paid.skill_id
WHERE skill_count > 10
ORDER BY
    avg_salary DESC,
    skill_count DESC
LIMIT 6;

[
  {
    "skill_id": 98,
    "skills": "kafka",
    "skill_count": "40",
    "avg_salary": "129999"
  },
  {
    "skill_id": 101,
    "skills": "pytorch",
    "skill_count": "20",
    "avg_salary": "125226"
  },
  {
    "skill_id": 31,
    "skills": "perl",
    "skill_count": "20",
    "avg_salary": "124686"
  },
  {
    "skill_id": 99,
    "skills": "tensorflow",
    "skill_count": "24",
    "avg_salary": "120647"
  },
  {
    "skill_id": 63,
    "skills": "cassandra",
    "skill_count": "11",
    "avg_salary": "118407"
  },
  {
    "skill_id": 219,
    "skills": "atlassian",
    "skill_count": "15",
    "avg_salary": "117966"
  }
]

-- Rewrite code to be concise
SELECT
    skills.skill_id,
    skills.skills,
    COUNT(SJ.job_id) AS skill_count,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact AS postings
INNER JOIN skills_job_dim AS SJ ON postings.job_id = SJ.job_id
INNER JOIN skills_dim AS skills ON SJ.skill_id = skills.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY skills.skill_id
HAVING COUNT(SJ.job_id) > 10
ORDER BY 
    avg_salary DESC,
    skill_count DESC
LIMIT 6;

[
  {
    "skill_id": 98,
    "skills": "kafka",
    "skill_count": "40",
    "avg_salary": "129999"
  },
  {
    "skill_id": 101,
    "skills": "pytorch",
    "skill_count": "20",
    "avg_salary": "125226"
  },
  {
    "skill_id": 31,
    "skills": "perl",
    "skill_count": "20",
    "avg_salary": "124686"
  },
  {
    "skill_id": 99,
    "skills": "tensorflow",
    "skill_count": "24",
    "avg_salary": "120647"
  },
  {
    "skill_id": 63,
    "skills": "cassandra",
    "skill_count": "11",
    "avg_salary": "118407"
  },
  {
    "skill_id": 219,
    "skills": "atlassian",
    "skill_count": "15",
    "avg_salary": "117966"
  }
]