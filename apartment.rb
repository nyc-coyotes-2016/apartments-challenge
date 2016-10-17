class Apartment

  attr_reader :number, :rooms, :monthly_rent

  def initialize(args = {})
    @name = args.fetch(:name, '')
    @rooms = args.fetch(:rooms, '')
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft
    sqft = 0
    rooms.each do |room|
      sqft += room.sqft
    end
    sqft
  end

  def price_per_sqft
    monthly_rent / (self.total_sqft).to_f
  end

  def room_count
    rooms.length
  end

  def bedroom_count
    rooms.count do |room|
      room.name.include?('bedroom')
    end
  end

end
