require 'csv'
CSV.open("archivo.csv", "w") do |csv|
    csv << ["Juan", 80, 21, 55]
end