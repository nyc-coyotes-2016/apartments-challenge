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
  end

end
