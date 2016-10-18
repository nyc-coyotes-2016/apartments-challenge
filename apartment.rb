require_relative 'room'

class Apartment
attr_reader :rooms, :monthly_rent

  def initialize(args = {})
    @rooms = args.fetch(:rooms, [])
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft
    rooms_sqft = self.rooms.map do |room|
      room.sqft
    end
    rooms_sqft.reduce { |sum, n| sum + n }
  end

  def price_per_sqft
    self.monthly_rent.to_f / total_sqft.to_f
  end

  def room_count
    self.rooms.length
  end

  def bedroom_count
    bedrooms = self.rooms.select { |room| room.name == 'bedroom'}
    bedrooms.length
  end


end
