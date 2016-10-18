class Building
  attr_reader :apartments
  def initialize(args={})
    @apartments = args.fetch(:apartments, [])
    @address = args.fetch(:address, "")
  end

  def total_room_count
    apartments.map{|apartment| apartment.room_count}.inject(:+)
  end

  def total_monthly_revenue
    apartments.map{|apartment| apartment.monthly_rent}.inject(:+)
  end
  def apartments_by_rent
    apartments.sort_by{|apartment| apartment.monthly_rent}.reverse
  end

  def find_apartments_by_bedroom_count(count)
    apartments.find_all{|apartment| apartment.bedroom_count == count}[0]
  end

  def total_sqft
    apartments.map{|apartment| apartment.total_sqft}.inject(:+)
  end
end
