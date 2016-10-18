class Building

  attr_reader :apartments

  def initialize(args = {})
    @address = args[:apartments]
    @apartments = args.fetch(:apartments, [])
  end

  def total_room_count
    apartments.reduce(0) {|sum, apartment| sum + apartment.rooms.length}
  end

  def total_monthly_revenue
    apartments.reduce(0) {|sum, apartment| sum + apartment.monthly_rent}
  end

  def apartments_by_rent
    apartments.sort {|a,b| b.monthly_rent <=> a.monthly_rent}
  end

  def find_apartments_by_bedroom_count(number)
    apartments.find { |apartment| apartment.bedroom_count == number }
  end

  def total_sqft
    apartments.reduce(0) {|sum, apartment| sum + apartment.total_sqft}
  end



end
