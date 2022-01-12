puts "Reading Celcius temperature value from data file..."
celcius = File.read("temp.dat").to_i
fahrenheit = (celcius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'"
file = File.new("temp.out", "w")
file.puts fahrenheit
file.close
