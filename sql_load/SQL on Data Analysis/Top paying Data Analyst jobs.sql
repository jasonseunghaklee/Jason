SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact
WHERE
    job_title = 'Data Analyst' 
    AND
    salary_year_avg IS NOT NULL -- does not include unknown salaries (Not including Australia)
ORDER BY
    salary_year_avg DESC
LIMIT
    20;  -- only showing the top 20

