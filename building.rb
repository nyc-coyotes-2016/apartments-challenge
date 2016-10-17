class Building

  attr_reader :address, :apartments

  def initialize(args={})
    @address = args.fetch(:address, '')
    @apartments = args.fetch(:apartments, Array.new)
  end

  def total_room_count
    room_count = 0
    apartments.each do |apt|
      room_count += apt.room_count
    end
    room_count
  end

  def total_monthly_revenue
    revenue = 0
    apartments.each do |apt|
      revenue += apt.monthly_rent
    end
    revenue
    # apartments.reduce do |apt, n|
    #   apt.monthly_rent + n
    # end
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
    sqft = 0
    apartments.each do |apt|
      sqft += apt.total_sqft
    end
    sqft
  end

end
