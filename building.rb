class Building
  attr_reader :address, :apartments

  def initialize(args = {})
    @address = args.fetch(:address, '')
    @apartments = args.fetch(:apartments, [])
  end

  def total_room_count

  end

  def total_monthly_revenue

  end

  def apartments_by_rent

  end

  def find_apartments_by_bedroom_count(num_of_bedrooms)
    found_apartment = apartments.select do |apartment|
      apartment.bedroom_count == num_of_bedrooms
    end
  end

  def total_sqft

  end



end
