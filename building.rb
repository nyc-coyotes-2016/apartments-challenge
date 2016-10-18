require_relative 'apartment'
require_relative 'room'

class Building
attr_reader :apartments


  def initialize(args = {})
    @address = args.fetch(:address, '')
    @apartments = args.fetch(:apartments, [])
  end

  def total_room_count
    self.apartments.inject(0) {|sum, apt| sum + apt.rooms.length}
  end

  def total_monthly_revenue
    self.apartments.inject(0) {|sum, apt| sum + apt.monthly_rent}
  end

  def apartments_by_rent
    self.apartments.sort { |apt1, apt2| apt2.monthly_rent <=> apt1.monthly_rent}
  end

  def find_apartments_by_bedroom_count(int)
    self.apartments.find {|apt, room| apt.bedroom_count == int }
  end

  def total_sqft
    self.apartments.inject(0) {|sum, apt| sum + apt.total_sqft}
  end

end

# room1 = Room.new(name: 'kitchen')
# room2 = Room.new(name: 'lounge')
# rooms = [room1, room2]
# ap1 = Apartment.new(rooms: rooms)
# ap2 = Apartment.new(rooms: rooms)
# apts = [ap1, ap2]
#
# b = Building.new(address: '8 mill lane', apartments: apts)
# b.total_room_count
# p b.apartments_by_rent
