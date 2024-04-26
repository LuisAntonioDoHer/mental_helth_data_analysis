-- 1 Average Obsessions score by Gender --


select 
Gender,
count(`Patient ID`) as Patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as avg_obs_score
from
ocd_data.health_db
group by 1
order by 2
;


-- 2 Count of Patients  by their respective  Avarege Obsession Score--

SELECT
Ethnicity,
count(`Patient ID`) AS Patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as Obs_score
From ocd_data.health_db
Group by 1
Order by 2;

-- 3 Number of People diagnosed with OCD Month --

SELECT
date_format(`OCD Diagnosis Date`, '%Y-%m 00:00:00') as Month,
-- `OCD Diagnosis Date`
count(`Patient ID`) AS Patient_count
From  ocd_data.health_db
group by Month
Order by 1;

-- 4 What is the most common Obsession type (Count) and its respective Avarage Obsession --

Select 
`Obsession Type` ,
count(`Patient ID`) as Patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as Obs_score
from ocd_data.health_db
group by 1
Order by 2;

-- 5 What is the most common Compulsion type (Count) and its respective Avarage Obsession --

select
`Compulsion Type`,
count(`Patient ID`) as Patient_count,
round((avg(`Y-BOCS Score (Compulsions)`)),2) as Obs_score
from ocd_data.health_db
group by 1
Order by 1;
