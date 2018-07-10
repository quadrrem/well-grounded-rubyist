obj = Object.new

def obj.talk
  puts "I am an object."
  puts "(Do you object?)"
end

obj.talk

def obj.c2f(c)
  c * 9.0 / 5 + 32
end

puts obj.c2f(100)

# object_id
puts "The id of obj is #{obj.object_id}"
str = "String are objects too, and this is as string!"
stri = "String are objects too, and this is as string!"
puts "The id of the string object str is #{str.object_id}."
puts "The id of the string object str is #{stri.object_id}."
puts "And the id of the integer 100 is #{100.object_id}."
puts "And the id of the integer 100 is #{100.object_id}."

# respond_to?
if obj.respond_to?("talk")
  obj.talk
else
  puts "Sorry, the object doesn't understand the 'talkt' message."
end

if obj.respond_to?("talk2")
  obj.talk2
else
  puts "Sorry, the object doesn't understand the 'talk2' message."
end
