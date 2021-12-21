# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.read("app/assets/csv/abbreviations.csv")
CSV.read("app/assets/csv/state_data.csv")

csv_text = File.read("app/assets/csv/abbreviations.csv")
csv_text2 = File.read("app/assets/csv/state_data.csv")
csv = CSV.parse(csv_text, :headers => true)
csv2 = CSV.parse(csv_text2, :headers => true)

csv2.each do |row|
  state = State.create({state: row["state"], median_household_income: row["median_household_income"], share_unemployed_seasonal: row["share_unemployed_seasonal"], share_population_in_metro_areas: row["share_population_in_metro_areas"], share_population_with_high_school_degree: row["share_population_with_high_school_degree"]})

  state.save 
end

csv.each do |row|
  state_code = Code.create({state: row["State"],
    abbrev: row["Abbrev"], code: row["Code"]
})
  state_code.save

end





