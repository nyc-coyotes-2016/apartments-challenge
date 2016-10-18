
class Building
  attr_reader :apartments

  def initialize(args = {})
    @apartments = args.fetch(:apartments, "default")
  end

  def total_room_count
    apartments.reduce(0) { |sum, apartment| sum + apartment.room_count }
  end

  def total_monthly_revenue
    apartments.reduce(0) { |sum, apartment| sum + apartment.monthly_rent }
  end

  def apartments_by_rent
    apartments.sort  { |apt1, apt2| apt2.monthly_rent <=> apt1.monthly_rent }
  end

  def find_apartments_by_bedroom_count(n)
    found = apartments.select { |apartment| apartment.bedroom_count == n }
    return found[0] if found.length == 1
  end

  def total_sqft
    apartments.reduce(0) { |sum, apartment| sum + apartment.total_sqft }
  end

end
