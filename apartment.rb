require_relative 'room'

class Apartment
  attr_reader :number, :monthly_rent, :rooms
  def initialize(args={})
    @number = args.fetch(:number, '0000')
    @monthly_rent = args.fetch(:monthly_rent, 1000)
    @rooms = args.fetch(:rooms, [])
  end

  def total_sqft
    rooms.map {|room| room.sqft}.reduce(:+)
  end

  def price_per_sqft
    monthly_rent/(self.total_sqft.to_f)
  end

  def room_count
    rooms.count
  end

  def bedroom_count
    rooms.find_all {|room| room.name == 'bedroom'}.count
  end
end
