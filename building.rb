require_relative 'apartment'
require_relative 'room'

class Building
  attr_reader :apartments
  def initialize(args = {})
    @apartments = args.fetch(:apartments, [])
  end

  def total_room_count
    apartments.map{|apt|apt.room_count}.reduce(:+)
  end

  def total_monthly_revenue
    apartments.map{|apt|apt.monthly_rent}.reduce(:+)
  end

  def apartments_by_rent
    apartments.sort_by {|apartment| apartment.monthly_rent}.reverse
  end

  def find_apartments_by_bedroom_count(bedroom_kount)
    apartments.detect {|apartment| apartment.bedroom_count == bedroom_kount}
  end

  def total_sqft
    apartments.map{|apt|apt.total_sqft}.reduce(:+)
    # Below is more readable... but above is shorter:
    # total = 0
    # apartments.each_entry {|apartment| total += apartment.total_sqft}
    # total
  end
end
