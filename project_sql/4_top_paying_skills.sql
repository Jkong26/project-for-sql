/*
Question: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions.
- Focuses on roles with specified salaries, regardless of locaiton.
- Why? It reveals how different skills impact salary levels for data analysts and
    helps identify the most financially rewarding skills to acquire or improve
*/


SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS average_salary
FROM job_postings_fact 

INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id

WHERE
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True

GROUP BY
    skills

ORDER BY
    average_salary DESC

LIMIT 25


/*
Big Data & ML platforms dominate the top tier
Skills like PySpark, Databricks, DataRobot, Couchbase, and Elasticsearch suggest the highest pay is tied to working with large-scale data, distributed systems, and applied machine learning, not just traditional analytics.

Strong overlap with Data Engineering & DevOps
High salaries for Kubernetes, Airflow, Jenkins, GitLab, Bitbucket, Linux, and GCP indicate that analysts who can build, deploy, and maintain data pipelines earn significantly more than those focused only on analysis.

Python ecosystem remains a core value driver
Tools like Pandas, NumPy, Scikit-learn, Jupyter, and PySpark reinforce that advanced Python proficiency, especially when paired with production and cloud skills, is a key differentiator for top-paying roles.
*/