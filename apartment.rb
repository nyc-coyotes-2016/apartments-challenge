class Apartment
  attr_reader :number, :rooms, :monthly_rent

  def initialize(args = {})
    @number = args.fetch(:number, '')
    @rooms = args.fetch(:rooms, [])
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft ####NOT WORKING
    rooms.each do |room|
      room.sqft.inject(0) { |sum, n| sum + n }
    end
  end

  def price_per_sqft
    total_sqft / monthly_rent
  end

  def room_count
    rooms.length
  end

  def bedroom_count
    bedrooms = rooms.select { |room| room == 'bedroom'}
    bedrooms.length
  end

end
