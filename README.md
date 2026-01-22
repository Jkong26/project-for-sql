# Introduction
This is my first SQL project as part of becoming a Data Analyst! This project explores many factors such as top-paying jobs, in-demand skills for data analyst role and where high demand meets high salary in data analytics.

Want to see specific queries? Check them out here: [project_sql folder](/project_sql/). 
# Background
This project was created from a desire to pinpoint top-paid and in-demand skills, streamlining others work to find optimal jobs. Since I'm studying computer science at Griffith University....coding isn't fitting my personal so working as a data analyst would be better since it required less coding and more focusing on sql, excel, tableau and etc. I started learning SQL from [SQL Course](https://lukebarousse.com/sql). Since it's packed with insights on job titles, salaries, locations and essential skills which based on real-world scenario.
### The questions I wanted to answer through my SQL queries were:
1. Whatare the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?
# Tools I Used
For deep dive into the data analyst job market, the tools I used were:
- SQL: The backbone of my analysis which allowing me to query the database.
- PostgreSQL: PostgreSQL helps management system, ideal for handling the job posting data.
- Visual Studio Code: My favourite coding tool especially for management and executing SQL queries.
- Git & Github: Essential for sharing SQL scripts and analysis to ensure the collaboration and project tracking.
# The Analysis
Each query for this project aimed at investigating specific aspects of the data analyst job market. Here's how I approached each question... for example:
### 1. Top Paying Data Analyst Jobs
To identify the highest-paying roles, I filtered data analyst positions by average yearly salary and location, focusing on remote jobs (anywhere). This query highlights the high salary opportunities in the field.

```
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL 
ORDER BY
    salary_year_avg DESC
LIMIT 10
```

# What I Learned
During this learning journey, I've really strenghened my SQL skills. I learned how to write more advanced queries, join tables and use WITH clauses to create temporary tables when needed. I also learned about GROUP BY and using functions like COUNT() and AVG() to summarise data. Most importantly, I improved my ability to think through real-world problems and turn questions into clear and useful SQL queries.
# Conclusions
In conclusion, this project helped me improve my SQL skills and gave me a better understanding of the data analyst job market. The insights from the analysis make it easier to decide which skills to focus on and how to approach a job reach. By concentrating on skills that are in high demand and offer higher salaries. Overall, this project shows how important it is to keep learning and adapting as the field of data analytics continues to evolve.