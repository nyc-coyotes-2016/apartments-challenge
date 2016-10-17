class Apartment
  attr_reader :number, :rooms, :monthly_rent

  def initialize(args = {})
    @number = args.fetch(:number, '')
    @rooms = args.fetch(:rooms, [])
    @monthly_rent = args.fetch(:monthly_rent, 1000)
  end

  def total_sqft ####NOT WORKING
    # rooms.each do |room|
    #   room.sqft.inject(0) { |sum, n| sum + n }
    #   # How do I inject on a related method's  class?
    #   # I want to add each room's sqft together
    # end
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
    bedrooms = rooms.select { |room| room.name == 'bedroom'}
    bedrooms.length
    # rooms.count { |room| room.name == 'bedroom'} Better enumerable #
  end

end
