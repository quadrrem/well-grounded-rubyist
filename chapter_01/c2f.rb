print "Hello. Please enter a Celsius value: "
celsius = gets.to_i

# puts "Reading Celsius temparature value form data file..."
# num = File.read("temp.dat")
#celsius = num.to_i

fahrenheit = (celsius * 9 / 5) + 32
# puts "The number is " + num
print "The result is " 
puts fahrenheit

puts "Saving result to output file 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close
