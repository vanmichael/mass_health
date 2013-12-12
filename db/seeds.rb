# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

def format(string)
	string.gsub(',',"").gsub(/\$/,"") if string != nil
end

datafile = Rails.root+"db/data/mass_health_data.csv"

CSV.foreach(datafile, headers: true) do |row|
	TownHealthRecord.find_or_initialize_by({geography: row['Geography']}) do |hr|
		hr.geography = row['Geography']
		hr.total_pop_year_2005 = format(row['total pop, year 2005'])
		hr.age_0_19_year_2005 = format(row['age 0-19, year 2005'])
		hr.age_65_over_year_2005 = format(row['age 65+, year 2005'])
		hr.per_capita_income_year_2000 = format(row['Per Capita Income, year 2000'])
		hr.persons_living_below_200_per_poverty_year_2000 = format(row['Persons Living Below 200% Poverty, year 2000'])
		hr.per_all_persons_living_below_200_per_pov_level_year_2000 = format(row['% all Persons Living Below 200% Poverty Level, year 2000'])
		hr.per_adequacy_prenatal_care_kotelchuck = format(row['% adequacy prenatal care (kotelchuck)'])
		hr.per_C_section_deliveries_2005_2008 = format(row['% C-section deliveries, 2005-2008'])
		hr.number_of_infant_deaths_2005_2008 = format(row['Number of infant deaths, 2005-2008'])
		hr.infant_mortality_rate_deaths_per_1000_live_births_2005_2008 = format(row['Infant mortality rate (deaths per 1000 live births), 2005-2008'])
		hr.per_low_birthweight_2005_2008 = format(row['% low birthweight 2005-2008'])
		hr.per_multiple_births_2005_2008 = format(row['% multiple births, 2005-2008'])
		hr.per_publicly_financed_prenatal_care_2005_2008 = format(row['% publicly financed prenatal care, 2005-2008'])
		hr.per_teen_births_2005_2008 = format(row['% teen births, 2005-2008'])
		hr.save!
	end
end

