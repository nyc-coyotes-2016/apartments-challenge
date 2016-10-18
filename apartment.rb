class Apartment

  attr_reader :rooms, :monthly_rent

  def initialize(args = {})
    @rooms = args.fetch(:rooms, [])
    @monthly_rent = args.fetch(:monthly_rent, 1000)
    @number = args.fetch(:number, '')
  end

  def total_sqft
    rooms.reduce(0) { |sum, room| sum + room.sqft }
  end

  def price_per_sqft
    monthly_rent.to_f / total_sqft
  end

  def room_count
    rooms.length
  end

  def bedroom_count
    rooms.count {|room| room.name == 'bedroom'}
  end

end
