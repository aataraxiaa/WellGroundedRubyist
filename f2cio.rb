puts "Reading Fahrenheit temperature value from data file..."
fahrenheit = File.read("temp.dat").to_i
celcius = (fahrenheit - 32) * 5 / 9
puts "Saving result to output file 'temp.out'"
file = File.new("temp.out", "w")
file.puts celcius
file.close
