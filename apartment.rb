class Apartment
  attr_reader :monthly_rent, :rooms
  def initialize(args ={})
    @monthly_rent = args.fetch(:monthly_rent, 1000)
    @rooms = args.fetch(:rooms, [ ])
  end

  def total_sqft
    rooms.inject(0) do |sum, room|
      sum + room.sqft
    end

  end

  def price_per_sqft
    monthly_rent / total_sqft.to_f
  end

  def room_count
    rooms.length
  end

  def bedroom_count
    bedrooms = rooms.select do |room|
      room.name == "bedroom"
    end
    bedrooms.length
  end
end
