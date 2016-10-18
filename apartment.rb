class Apartment
  attr_reader :rooms, :monthly_rent, :number
  def initialize(args={})
    @number = args.fetch(:number, "10A")
    @monthly_rent = args.fetch(:monthly_rent, 1000)
    @rooms = args.fetch(:rooms, 1)
  end

  def total_sqft
    rooms.map{|room| room.sqft}.inject(:+)
  end

  def room_count
    rooms.length
  end

  def price_per_sqft
    monthly_rent.to_f/total_sqft
  end

  def bedroom_count
    rooms.select{|room| room.name == "bedroom"}.length
  end
end
