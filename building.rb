class Building

attr_reader :apartments
  def initialize(args = {})
    @apartments = args.fetch(:apartments, [])
  end

  def total_room_count
    apartments.inject(0) do |sum, apartment|
      sum + apartment.rooms.length
    end
  end

  def total_monthly_revenue
    apartments.inject(0) do |sum, apartment|
      sum + apartment.monthly_rent
    end
  end

  def apartments_by_rent
    apartments.sort do |apartment1, apartment2|
      apartment2.monthly_rent <=> apartment1.monthly_rent
    end
  end

  def find_apartments_by_bedroom_count(num)
    apartments.find { |apartment| num == apartment.bedroom_count}
  end

  def total_sqft
    apartments.inject(0) do |sum, apartment|
      sum + apartment.total_sqft
    end
  end
end
