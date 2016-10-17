class Building

  attr_reader :address, :apartments

  def initialize(args={})
    @address = args.fetch(:address, '')
    @apartments = args.fetch(:apartments, Array.new)
  end

  def total_room_count
    apartments.inject(0) do |sum, apt|
      sum + apt.room_count
    end
  end

  def total_monthly_revenue
    apartments.inject(0) do |sum, rent|
      sum + rent.monthly_rent
    end
  end

  def apartments_by_rent
    apartments.sort do |apt_a, apt_b|
      apt_b.monthly_rent <=> apt_a.monthly_rent
    end
  end

  def find_apartments_by_bedroom_count(num)
    apartments.find do |apt|
      apt.bedroom_count == num
    end
  end

  def total_sqft
    apartments.inject(0) do |sum, apt|
      sum + apt.total_sqft
    end
  end

end
