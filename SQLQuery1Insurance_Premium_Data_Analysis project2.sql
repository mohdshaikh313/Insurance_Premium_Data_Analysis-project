create database  Insurance_Premium_Data_Analysis
  use Insurance_Premium_Data_Analysis 
select * from [Insurance Premium]

  --Objective: Analyze the effect of age on insurance premiums.

  select Age , AVG(Premium) AS Avg_Premium
  from [Insurance Premium]
  group by Age
  order by Age

  --Objective: Determine if gender impacts premium cost.
  select * from [Insurance Premium]

   select Gender , AVG(Premium) AS Avg_Premium, count(*) as count
  from [Insurance Premium]
  group by Gender
  order by Gender

  --Objective: Analyze the correlation between BMI and premium.

   select BMI , AVG(Premium) AS Avg_Premium
  from [Insurance Premium]
  group by BMI
  order by BMI

    select * from [Insurance Premium]


  --Objective: Evaluate how the number of children influences premium pricing.

  select * from [Insurance Premium]

  select children ,Gender, AVG(Premium) AS Avg_Premium , count(*) as count
  from [Insurance Premium]
  group by Children ,Gender
  order by Children 
 
 select * from [Insurance Premium]


  --Objective: Assess the impact of smoking status on premium cost.

  select Smoker ,Gender, AVG(Premium) AS Avg_Premium , count(*) as count
  from [Insurance Premium]
  group by Smoker,Gender 
  order by Smoker,Gender

  select * from [Insurance Premium]


  --Objective: Identify regional variations in premium costs.

  select  Region , AVG(Premium) as AVG_Premium , count (*) as count
  from [Insurance Premium]
  group by Region
  order by Region
  
  select * from [Insurance Premium]


  --Objective: Generate a dataset for visualizations to show each factor’s impact on premiums.  
  --Query 1: Correlation Data Preparation
	SELECT Age, BMI, Children, Premium
	FROM [Insurance Premium];
	select * from [Insurance Premium]

  --Query 2: Aggregated Data for Gender and Smoking Impact
- --To prepare for a combined view of gender and smoking status on premium:
	SELECT Gender, Smoker, AVG(Premium) AS Avg_Premium, COUNT(*) AS Count
	FROM [Insurance Premium]
	GROUP BY Gender, Smoker;


	--Objective: Generate a report summary dataset with high-level insights on key variables.	SELECT 
 'Age' AS Category, MIN(Age) AS Min_Value, MAX(Age) AS Max_Value, 
AVG(Premium) AS Avg_Premium
FROM [Insurance Premium]
UNION ALL
SELECT 
 'BMI', MIN(BMI), MAX(BMI), AVG(Premium)
FROM [Insurance Premium]
UNION ALL
SELECT 
 'Children', MIN(Children), MAX(Children), AVG(Premium)
FROM [Insurance Premium]
/*UNION ALL
 SELECT 
 'Premium', MIN (Premium) , MAX (Premium) , AVG (Premium)
 from [Insurance Premium]*/

select * from [Insurance Premium]