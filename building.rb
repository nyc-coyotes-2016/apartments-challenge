class Building
  attr_reader :address, :apartments

  def initialize(args = {})
    @address = args.fetch(:address, '')
    @apartments = args.fetch(:apartments, [])
  end

  def total_room_count
    apartments.inject(0) do |sum, apartment|
      sum + apartment.room_count
    end
  end

  def total_monthly_revenue
    apartments.inject(0) do |sum, apartment|
      sum + apartment.monthly_rent
    end
  end

  def apartments_by_rent
    apartments.sort do |apt_a, apt_b|
      apt_b.monthly_rent <=> apt_a.monthly_rent
    end
    # apartments.sort_by do |apartment|
    #   apartment.monthly_rent
    # end.reverse ## ORIGINAL LOGIC
  end

  def find_apartments_by_bedroom_count(num_of_bedrooms)
    found_apartment = apartments.find do |apartment|
      apartment.bedroom_count == num_of_bedrooms
    end
  end

  def total_sqft
    apartments.inject(0) do |sum, apartment|
      sum + apartment.total_sqft
    end
  end



end
