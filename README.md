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
# Tools I used
- __SQL:__ Querying language
- __PostgreSQL:__ Chosen DBMS
- __VS Code:__ Code editor
- __Excel:__ For visualisations
# The Analysis
Each query identifies different aspects of the job market.

## 1. Top 10 Companies offering the most competitive salaries for Data Analyst jobs
To identify the top-paying Data Analyst roles, Data Analyst positions with posts that states salaries were filtered out. 
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

- Mantys takes the high lead for $650,000
- The rest varies between $184,000 to $336,500


# What I learnt