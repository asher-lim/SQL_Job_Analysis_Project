# Introduction
### This project focuses on analysis of __Data Analyst__ roles in the current hiring market of __2024__.
We will be looking at:
- Top 10 Companies offering the most competitive salaries for Data Analyst jobs
    - Singapore
    - Remote jobs
- Which skills has the highest demand as a Data Analyst.
    - All Data Analyst jobs, regardless of pay
    - Top 5 in frequency
- Which skills are required by above top 10 companies, then grouped and ordered by highest demand.
    - Singapore (Skills required, and what is the most common)
    - Remote (Skills required, and what is the most common)
- What are the 10 skills that are paid the highest for Data Analysts.
- What are the most optimal skills to learn
    - "Optimal" combines demand of skill(Job security) and average pay of each(Financial motivation)

SQL Queries here: [Analysis_SQL](/Analysis_SQL/).
# Background
As an aspiring data analyst, I strive to obtain relevant skills in a technical role to increase my value for companies that hire me. These SQL queries on sourced data set allows me to gain insights on what skills i should pursue on the side during free time off school.
# Tools used
- __PostgreSQL:__ Chosen DBMS, data uploaded from Excel (see Database_Load_SQL.sql)
- __Excel:__ For Visualisations
- __Visual Studio Code__
# The Analysis
Each query identifies different aspects of the job market.

## 1. Top 10 Companies offering the most competitive salaries for Data Analyst jobs
To identify the companies offering top-paying Data Analyst roles, Data Analyst positions with posts that states salaries were filtered out. 
- Location is narrowed down to Singapore or Anywhere(Meaning remote work) in 2 different queries. 
- Finally, results are ordered by salary in descending order.

### Singapore
| Job Title                                                    | Company Name      | Job Location | Job Schedule Type | Salary Year Avg |
|--------------------------------------------------------------|-------------------|--------------|-------------------|-----------------|
| Fraud Data Analyst                                           | Adyen             | Singapore    | Full-time         | 111,175.0       |
| Carbon Data Analyst, FiscalNote ESG Solutions                | FiscalNote        | Singapore    | Full-time         | 111,175.0       |
| Data Analyst, Mobile (12 months Fixed Term contract)         | 2K                | Singapore    | Contractor        | 111,175.0       |
| Data Analyst, Mobile                                         | 2K                | Singapore    | Full-time         | 111,175.0       |
| Data Analyst                                                 | ADDX              | Singapore    | Full-time         | 111,175.0       |
| Market Data Specialist, Feeds                                | Jane Street       | Singapore    | Full-time         | 109,500.0       |
| Data Analyst                                                 | ADDX              | Singapore    | Full-time         | 105,000.0       |
| Session Lead (External Contractor) - Data Analyst Nanodegree | Udacity, Inc.     | Singapore    | Part-time         | 100,500.0       |
| Business Operations, Data Analyst (Container Shipping)       | Triton AI Pte Ltd | Singapore    | Full-time         | 100,500.0       |
| Data Analyst (Risk)                                          | Shield            | Singapore    | Full-time         | 100,500.0       |

![top_paying_singapore_companies_barchart](/Results&Visualisations/1.%20Singapore_barchart.png)
#### Analysis
- Adyen, FiscalNote, 2K, and ADDX are on par with salaries of $111,175
- High diversity of job titles related to data analysts.

### Remote
| Job Title                                        | Company Name                          | Remote Job | Job Schedule Type | Salary Year Avg |
|--------------------------------------------------|---------------------------------------|------------|-------------------|-----------------|
| Data Analyst                                     | Mantys                                | True       | Full-time         | 650,000.0       |
| Director of Analytics                            | Meta                                  | True       | Full-time         | 336,500.0       |
| Associate Director- Data Insights                | AT&T                                  | True       | Full-time         | 255,829.5       |
| Data Analyst, Marketing                          | Pinterest Job Advertisements          | True       | Full-time         | 232,423.0       |
| Data Analyst (Hybrid/Remote)                     | Uclahealthcareers                     | True       | Full-time         | 217,000.0       |
| Principal Data Analyst (Remote)                  | SmartAsset                            | True       | Full-time         | 205,000.0       |
| Director, Data Analyst - HYBRID                  | Inclusively                           | True       | Full-time         | 189,309.0       |
| Principal Data Analyst, AV Performance Analysis  | Motional                              | True       | Full-time         | 189,000.0       |
| Principal Data Analyst                           | SmartAsset                            | True       | Full-time         | 186,000.0       |
| ERM Data Analyst                                 | Get It Recruit - Information Technology| True      | Full-time         | 184,000.0       |

![top_paying_remote_companies_barchart](/Results&Visualisations/1.%20Remote_bar_chart.png)
#### Analysis
- Mantys takes the high lead for $650,000
- The rest varies between $184,000 to $336,500
## 2. Highest demanded skills by frequency
To find out what are the skills for Data Analyst roles that are highly demanded by companies, required skills for all DA jobs are counted and narrowed down to the top 5 most frequently required skills.

| Skills   | Skill Count |
|----------|-------------|
| sql      | 92,628      |
| excel    | 67,031      |
| python   | 57,326      |
| tableau  | 46,554      |
| power bi | 39,468      |

![Highest_demanded_skills](/Results&Visualisations/2.%20top_skills.png)
#### Analysis
As expected, the standard bread and butter data wrangling tools as well as visualisation tools.
## 3. Skills required by Data Analyst roles that pay the highest
 To understand why companies pay these roles the highest, I want to identify the skills that have to be possessed in order to be hired.
- All required skills of the top-10 paying roles are first identified, for both Singapore and Remote work. 
See SQL file for queries.
- All skills are then counted and ranked for each.
### Singapore
| Skills   | Skill Count | Average Total Salary |
|----------|-------------|----------------------|
| __python__   | 6           | 122,971.83           |
| __sql__      | 4           | 109,631.25           |
| __tableau__  | 4           | 111,175.00           |
| spark    | 4           | 140,033.50           |
| excel    | 3           | 109,116.67           |
| aws      | 2           | 108,087.50           |
| r        | 2           | 111,175.00           |
| power bi | 2           | 108,087.50           |
| flow     | 2           | 108,087.50           |
| word     | 1           | 111,175.00           |
### Remote Work
| Skills     | Skill Count | Average Total Salary |
|------------|-------------|----------------------|
| __sql__        | 8           | 207,320.19           |
| __python__     | 7           | 205,937.36           |
| __tableau__    | 6           | 214,260.25           |
| r          | 4           | 215,313.13           |
| snowflake  | 3           | 193,436.33           |
| pandas     | 3           | 215,609.83           |
| excel      | 3           | 215,609.83           |
| atlassian  | 2           | 189,154.50           |
| azure      | 2           | 222,569.25           |
| jira       | 2           | 189,154.50           |
#### Analysis
- Python, SQL, and Tableau are in top demand for both Singapore and Remote work. Highlighting the core and basic requirements of a Data Analyst.
## 4. Top-10-paying skills
Looking directly from skills to identify which skills pay the highest, to investigate the add-on skills that will bring me to the next level after being experts in the basics.
| Skills    | Average Salary |
|-----------|----------------|
| svn       | 400,000        |
| solidity  | 179,000        |
| couchbase | 160,515        |
| datarobot | 155,486        |
| golang    | 155,000        |
| mxnet     | 149,000        |
| dplyr     | 147,633        |
| vmware    | 147,500        |
| terraform | 146,734        |
| twilio    | 138,500        |

![top_paying_skills](/Results&Visualisations/4.%20top_paying_skills.png)
#### Analysis
With SVN in a large lead, it shows that large enterprises favor SVN as a version control system over git. 

The rest are negligibly different, indicating that supplementary skills should be learnt depending on companies' work-style.
## 5. Optimal skills to be learnt by any Data Analysts
2 variables are used to define "optimal", job security(Demand of skills) and financial motivation(top-paying-skills).

Queries from 2. and 3. are combined using CTE, then ordered by salary first, followed by skill-count.
| Skill ID | Skills     | Skill Count | Average Salary |
|----------|------------|-------------|----------------|
| 98       | kafka      | 40          | 129,999        |
| 101      | pytorch    | 20          | 125,226        |
| 31       | perl       | 20          | 124,686        |
| 99       | tensorflow | 24          | 120,647        |
| 63       | cassandra  | 11          | 118,407        |
| 219      | atlassian  | 15          | 117,966        |

![Optimal_skills](/Results&Visualisations/5.%20optimal_skills.png)
#### Analysis
Scatter chart is used to compare results with 2 variables.

Kafka takes the lead, highlighting the importance of streaming data pipelines for interactive dashboards in a rapid-changing globalisation era.
# Conclusion
1. Knowing the companies that pays the highest may serve as a direction, but apart from the basic skillsets, different companies work differently and use different tools. Thus it is best not to fixate on specific supplementary skills.
2. Companies do not only want people that can wrangle or visualise data, but to also be able to create pipelines for new data to constantly update visualisations to identify patterns and new insights.
3. Core skills such as SQL, Python, Excel, and Tableau must be perfected to the best of our abilities to thrive in most Data Analyst roles.