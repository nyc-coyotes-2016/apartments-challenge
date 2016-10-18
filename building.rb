class Building
  attr_reader :address, :apartments

  def initialize(args = {})
    @address = args.fetch(:address, '')
    @apartments = args.fetch(:apartments, Hash.new)
  end

  def total_room_count
    apartments.inject(0){|sum, apartment| sum + apartment.room_count}
  end

  def total_monthly_revenue
    apartments.inject(0){|sum, apartment| sum + apartment.monthly_rent}
  end

  def apartments_by_rent
    apartments.sort {|x,y|y.monthly_rent<=>x.monthly_rent}
  end

  def find_apartments_by_bedroom_count(number_of_apartments)
    apartments.find{|apartment|apartment.bedroom_count == number_of_apartments}
  end

  def total_sqft
    apartments.inject(0){|sum, apartment| sum + apartment.total_sqft}
  end
end
