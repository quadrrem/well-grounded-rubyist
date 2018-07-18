class Car
  
 attr_reader :make

  def self.makes
    @makes ||= []
  end

  def self.add_make(make)
    unless makes.include? make
      makes << make
      cars[make] = 0
    end
  end

  def self.cars 
    @cars ||= {}
  end

  def self.total_count
    @total_count ||= 0
  end

  def self.total_count=(count)
    @total_count = count
  end

  def initialize(make)
    if self.class.makes.include? make
      @make = make
      self.class.cars[make] += 1
      self.class.total_count += 1
    else
      raise "No such make: #{make}"
    end
  end

  def make_mates
    self.class.cars[@make]
  end

end

class Hybrid < Car
end


Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

puts "Counting cars of same make as h2..."
puts "There are #{h2.make_mates}."

puts "Counting total cars..."
puts "There are #{Car.total_count}"

Hybrid.add_make("Honda")
hy = Hybrid.new("Honda")
puts "There are #{Hybrid.total_count} hybrids in existence!"
puts "There are #{hy.make_mates} hybrid honda mates"
