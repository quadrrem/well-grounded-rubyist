ticket = Object.new

def ticket.date
  "01/02/03"
end

def ticket.venue
  "Town Hall"
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  "Mark Twain"
end

def ticket.seat
  "Second Balcony, row J, seat 12"
end

def ticket.price
  5.50
end

def ticket.available?
  true
end

def ticket.details(*x)
  x.each { |detail| puts "The ticket is #{detail}." }
end

if ticket.available?
  puts "This ticket is for: #{ticket.event}, at #{ticket.venue}, on #{ticket.date}."
  puts "The performer is #{ticket.performer}."
  puts "The seat is #{ticket.seat}, and it costs $#{"%.2f." % ticket.price}"
  ticket.details("non-refundable", "non-transferable", "in a non-smoking section")
else
  puts "Tickets for: #{ticket.event}, at #{ticket.venue}, on #{ticket.date} are sold out!"
end

print "Information desired: "
request =  gets.chomp

if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts "No such information available"
end
