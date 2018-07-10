class Ticket

  VENUES = ["ConvetionCenter", "Fairgrounds", "Town Hall"]

  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    if VENUES.include? venue
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end

#  def price=(x)
#    @price = x
#  end

end

th = Ticket.new("Town Hall", "11/12/13")
th.price = 72.00
puts "The price is now $#{"%.2f" % th.price}"

puts Ticket::VENUES
