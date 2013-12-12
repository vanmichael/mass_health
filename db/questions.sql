#Sequal Queries:
#----------------

#Question 1: What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography, age_65_over_year_2005 FROM town_health_records WHERE geography IS NOT NULL ORDER BY age_65_over_year_2005 DESC LIMIT 3; 
#Answer 1: Boston, Worcester, Springfield

#Question 2: What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography, age_0_19_year_2005 FROM town_health_records WHERE geography IS NOT NULL ORDER BY age_0_19_year_2005 DESC LIMIT 3;
#Answer 2: Boston, Worcester, Springfield

#Question 3: What 5 towns have the lowest per capita income?
SELECT geography, per_capita_income_year_2000 FROM town_health_records WHERE geography IS NOT NULL ORDER BY per_capita_income_year_2000 LIMIT 5;
#Answer 3: Monroe, Lawrence, Chelsea, Springfield, Gosnold

#Question 3: Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography, per_teen_births_2005_2008 FROM town_health_records WHERE geography != 'Boston' AND geography != 'Becket' AND geography != 'Beverly' ORDER BY per_teen_births_2005_2008 DESC LIMIT 1;
#Answer 3: Holyoke

#Question 4: Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography, infant_mortality_rate_deaths_per_1000_live_births_2005_2008 FROM town_health_records WHERE geography != 'Boston' ORDER BY infant_mortality_rate_deaths_per_1000_live_births_2005_2008 DESC LIMIT 1;
#Answer 4: Gardner