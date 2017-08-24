class Location

  attr_reader :name

  def initialize(name)
    @name = name
  end

end

class Trip

  @@stops = []

  def self.add(location)
    @@stops << location
  end

  def self.list_iterate
    puts "Began trip."
    @@stops.each_with_index do |city, index|
      next_city = @@stops[index+1]

      puts "Travelled from #{city.name} to #{next_city.name}." unless next_city.nil?

    end
  end

end

Trip.add(Location.new("Toronto"))
Trip.add(Location.new("Hamilton"))
Trip.add(Location.new("Ottawa"))
Trip.add(Location.new("Montreal"))
Trip.add(Location.new("Calgary"))
Trip.add(Location.new("Paris"))
Trip.add(Location.new("Ho Chi Minh City"))

Trip.list_iterate
