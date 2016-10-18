require 'pry'

class Building
  attr_accessor :address, :apartments
  def initialize(args = {})
    @address = args.fetch(:address, "")
    @apartments = args.fetch(:apartments, Array.new)
  end

  def total_room_count
    apartments.inject(0) { |sum, apt| sum + apt.room_count}
  end

  def total_monthly_revenue
    apartments.inject(0) { |sum, rent| sum + rent.monthly_rent}
  end

  def apartments_by_rent
    apartments.sort { |a, b| b.monthly_rent <=> a.monthly_rent }
  end

  def find_apartments_by_bedroom_count(num)
    apartments.find { |apt| apt.bedroom_count == num}
  end

  def total_sqft
    apartments.inject(0) { |sum, apt| sum + apt.total_sqft}
  end

end
