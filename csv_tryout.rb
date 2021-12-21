require 'csv'

CSV.read("app/assets/csv/abbreviations.csv")
CSV.read("app/assets/csv/state_data.csv")

table = CSV.parse(File.read("app/assets/csv/abbreviations.csv"), headers: true)

corresponding_data = CSV.parse(File.read("app/assets/csv/state_data.csv"), headers: true)

# p table[0]["Code"]

# p table.map {|k,v| [k,v]}

# p corresponding_data.map {|k,v| [k,v]}


# p table.first["State"]
# p corresponding_data.first

csv_text = File.read("app/assets/csv/abbreviations.csv")
csv_text2 = File.read("app/assets/csv/state_data.csv")
csv = CSV.parse(csv_text, :headers => true)
csv2 = CSV.parse(csv_text2, :headers => true)

state_data = {}


csv2.each do |row|
     
         
          
  p state_data[row] = 
        [
          state: row["state"], 
          median_household_income: row["median_household_income"],
          share_unemployed_seasonal: row["share_unemployed_seasonal"], 
          share_population_in_metro_areas: row["share_population_in_metro_areas"], 
          share_population_with_high_school_degree: row["share_population_with_high_school_degree"] 
        ]

 
  
  
       
end
  


# csv.each do |row|
#   csv2.each do |row2|
#     if  row["State"] == row2["state"]
       
        
#       # p state_data[row["Code"]] = 
#       # {
#       #   state: row2[:state], 
#       #   median_household_income: row2[:median_household_income],
#       #   share_unemployed_seasonal: row2[:share_unemployed_seasonal], 
#       #   share_population_in_metro_areas: row2[:share_population_in_metro_areas], 
#       #   share_population_with_high_school_degree: row2[:share_population_with_high_school_degree] 
#       # }

#       p { state[row2["state"]]}
     
#     end

#     #  p row["State"]
#     #  p row2["state"]
#   end
  
# end


#<CSV::Row "state":"Nevada" "median_household_income":"49875" "share_unemployed_seasonal":"0.067" "share_population_in_metro_areas":"0.87" "share_population_with_high_school_degree":"0.839">

# csv2.each do |row|
#   p row
# end











