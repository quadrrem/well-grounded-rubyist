$global = 'global'
x = "main"

p "Main-Self:  #{self}"
puts x
puts $global

class Class
  
  x = 'class'
  $global = 'class global'
  p self
  puts x
  puts $global
  
  def method
    x = 'method'
    $global = 'method global'
    p self
    puts x
    puts $global
  end

  p self
  puts x
  puts $global

end

Class.new.method()

puts self
puts x
puts $global
