/* 
What are the skills with highest demand for data analysts?
- Top 5 in frequency
- All data analyst jobs, also regardless of pay
*/

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

[
  {
    "skills": "sql",
    "skill_count": "92628"
  },
  {
    "skills": "excel",
    "skill_count": "67031"
  },
  {
    "skills": "python",
    "skill_count": "57326"
  },
  {
    "skills": "tableau",
    "skill_count": "46554"
  },
  {
    "skills": "power bi",
    "skill_count": "39468"
  }
];