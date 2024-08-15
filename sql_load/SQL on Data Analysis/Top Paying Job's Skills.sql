WITH top_paying_jobs AS(
SELECT  
    job_id,
    job_title,
    salary_year_avg
FROM
    job_postings_fact
WHERE
    job_title = 'Data Analyst'
    AND
    salary_year_avg IS NOT NULL
ORDER BY   
     salary_year_avg DESC
LIMIT
    10
)

SELECT
    top_paying_jobs.job_id,
    job_title,
    salary_year_avg,
    skills
FROM
    top_paying_jobs
	INNER JOIN
    skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
	INNER JOIN
    skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC