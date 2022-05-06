require 'csv'
data = CSV.open('data.csv', converters: :numeric).readlines
data.reject!{|e| e.empty?}

print "#{data} \n" 

lines = data.length
lines.times do |i|
    data[i][2] = data[i][2].to_i + 15
    data[i] << 100
    # data[i][2].to_i += 15
    # data[i][2].to_i = data[i][2].to_i + 15

end

print "#{data} \n" 

CSV.open("programa_output.csv", "w") do |csv|
    data.each do |estudiste|
        csv << estudiste
    end
end



# [
# [Camilo, 90, 50 80, 90],
# [Francisca 100, 40, 100, 100],
# [Verónica 60, 70, 80, 100]
# []
# ]