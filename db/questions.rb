#Active Record Queries:
#----------------

#Question 1: What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order('age_65_over_year_2005 desc limit 3')
#Answer 1: Boston, Worcester, Springfield

#Question 2: What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order('age_0_19_year_2005 desc limit 3')
#Answer 2: Boston, Worcester, Springfield

#Question 3: What 5 towns have the lowest per capita income?
TownHealthRecord.order('per_capita_income_year_2000 limit 3')
#Answer 3: Monroe, Lawrence, Chelsea, Springfield, Gosnold

#Question 3: Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.order('per_teen_births_2005_2008 desc limit 1')
#Answer 3: Holyoke

#Question 4: Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.order('infant_mortality_rate_deaths_per_1000_live_births_2005_2008 desc limit 1')
#Answer 4: Gardner