require_relative 'room'


class Apartment 
  attr_reader :rooms, :number, :monthly_rent 
  def initialize(args = {})
    @number = args.fetch(:number, "")
    @rooms = args.fetch(:rooms, [])
    @monthly_rent = args.fetch(:monthly_rent, 1000)
   
  end

  def total_sqft
     rooms.reduce(0) do |total, room|
      total + room.sqft
    end
  end

  def price_per_sqft
    price = monthly_rent/total_sqft.to_f
  end

  def room_count
    rooms.length
  end

  def bedroom_count
    rooms.count{|room| room == 'bedroom'}
  end
end

