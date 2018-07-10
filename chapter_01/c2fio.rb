puts "Reading Celsius temaprature value from data file..."
celsius = File.read("temp.dat").to_i

fahrenheit = (celsius * 9 / 5) + 32

puts "Saving result to ouput file 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close

