class Building
  attr_reader :apartments

  def initialize(args={})
    @apartments=args.fetch(:apartments, [])

  end

  def total_room_count
    apartments.reduce(0) {|sum, apartment| sum + apartment.room_count}
  end

  def total_monthly_revenue
    apartments.reduce(0) {|sum, apartment| sum + apartment.monthly_rent}
  end

  def apartments_by_rent
    apartments.sort {|apt_a, apt_b| apt_b.monthly_rent <=> apt_a.monthly_rent}
  end

  def find_apartments_by_bedroom_count(num_bedrooms)
    apartments.find {|apartment| apartment.bedroom_count == num_bedrooms } 
  end

  def total_sqft
    apartments.reduce(0) {|sum, apartment| sum + apartment.total_sqft}
  end
end
