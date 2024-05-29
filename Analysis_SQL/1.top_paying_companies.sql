/*
What are the companies paying the top 10 highest salaries for data analyst roles in Singapore?
- Focuses on job postings with specified salaries (nulls are removed).
*/

SELECT
    job_title,
    name AS company_name,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact AS postings
LEFT JOIN company_dim AS companies ON postings.company_id = companies.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_location = 'Singapore' AND
    salary_year_avg IS NOT NULL AND
    job_title NOT LIKE '%Research Scientist%' -- % is treated as literal character(%) if != is used
ORDER BY salary_year_avg DESC 
LIMIT 10;
[
  {
    "job_title": "Fraud Data Analyst",
    "company_name": "Adyen",
    "job_location": "Singapore",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-04-26 18:12:32"
  },
  {
    "job_title": "Data Analyst",
    "company_name": "ADDX",
    "job_location": "Singapore",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-23 11:29:14"
  },
  {
    "job_title": "Carbon Data Analyst, FiscalNote ESG Solutions",
    "company_name": "FiscalNote",
    "job_location": "Singapore",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-01-23 22:22:16"
  },
  {
    "job_title": "Data Analyst, Mobile (12 months Fixed Term contract)",
    "company_name": "2K",
    "job_location": "Singapore",
    "job_schedule_type": "Contractor",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-01-31 03:25:08"
  },
  {
    "job_title": "Data Analyst, Mobile",
    "company_name": "2K",
    "job_location": "Singapore",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-08-25 05:39:34"
  },
  {
    "job_title": "Market Data Specialist, Feeds",
    "company_name": "Jane Street",
    "job_location": "Singapore",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "109500.0",
    "job_posted_date": "2023-01-17 23:25:30"
  },
  {
    "job_title": "Data Analyst",
    "company_name": "ADDX",
    "job_location": "Singapore",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-08-29 18:43:45"
  },
  {
    "job_title": "Business Operations, Data Analyst (Container Shipping)",
    "company_name": "Triton AI Pte Ltd",
    "job_location": "Singapore",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "100500.0",
    "job_posted_date": "2023-08-15 02:42:30"
  },
  {
    "job_title": "Session Lead (External Contractor) - Data Analyst Nanodegree...",
    "company_name": "Udacity, Inc.",
    "job_location": "Singapore",
    "job_schedule_type": "Part-time",
    "salary_year_avg": "100500.0",
    "job_posted_date": "2023-08-08 13:28:55"
  },
  {
    "job_title": "Data Analyst (QlikView / QlikSense)",
    "company_name": "Triton AI Pte Ltd",
    "job_location": "Singapore",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "100500.0",
    "job_posted_date": "2023-07-27 10:43:42"
  }
];


-- For remote data analyst jobs
SELECT
    job_title,
    name AS company_name,
    job_work_from_home AS remote_job,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact AS postings
LEFT JOIN company_dim AS companies ON postings.company_id = companies.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_work_from_home = true AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC 
LIMIT 10;

[
  {
    "job_title": "Data Analyst",
    "company_name": "Mantys",
    "remote_job": true,
    "job_schedule_type": "Full-time",
    "salary_year_avg": "650000.0",
    "job_posted_date": "2023-02-20 15:13:33"
  },
  {
    "job_title": "Director of Analytics",
    "company_name": "Meta",
    "remote_job": true,
    "job_schedule_type": "Full-time",
    "salary_year_avg": "336500.0",
    "job_posted_date": "2023-08-23 12:04:42"
  },
  {
    "job_title": "Associate Director- Data Insights",
    "company_name": "AT&T",
    "remote_job": true,
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18 16:03:12"
  },
  {
    "job_title": "Data Analyst, Marketing",
    "company_name": "Pinterest Job Advertisements",
    "remote_job": true,
    "job_schedule_type": "Full-time",
    "salary_year_avg": "232423.0",
    "job_posted_date": "2023-12-05 20:00:40"
  },
  {
    "job_title": "Data Analyst (Hybrid/Remote)",
    "company_name": "Uclahealthcareers",
    "remote_job": true,
    "job_schedule_type": "Full-time",
    "salary_year_avg": "217000.0",
    "job_posted_date": "2023-01-17 00:17:23"
  },
  {
    "job_title": "Principal Data Analyst (Remote)",
    "company_name": "SmartAsset",
    "remote_job": true,
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09 11:00:01"
  },
  {
    "job_title": "Director, Data Analyst - HYBRID",
    "company_name": "Inclusively",
    "remote_job": true,
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07 15:00:13"
  },
  {
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "company_name": "Motional",
    "remote_job": true,
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05 00:00:25"
  },
  {
    "job_title": "Principal Data Analyst",
    "company_name": "SmartAsset",
    "remote_job": true,
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11 16:00:05"
  },
  {
    "job_title": "ERM Data Analyst",
    "company_name": "Get It Recruit - Information Technology",
    "remote_job": true,
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184000.0",
    "job_posted_date": "2023-06-09 08:01:04"
  }
];