require 'pry'

class Apartment
  attr_reader :rooms, :monthly_rent

  def initialize(args = {})
    @rooms = args.fetch(:rooms, [])
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft
    rooms.reduce(0) { |sum, room| sum + room.sqft }
  end

  def price_per_sqft
    monthly_rent.to_f/total_sqft.to_f
  end

  def room_count
    rooms.length
  end

  def bedroom_count
    bedrooms = rooms.select { |room| "bedroom".include? room.name }
    bedrooms.length
  end

end
