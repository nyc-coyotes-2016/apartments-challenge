require 'pry'
require_relative 'apartment'
require_relative 'room'

class Building
  attr_accessor :address, :apartments
  def initialize(args = {})
    @address = args.fetch(:address, "")
    @apartments = args.fetch(:apartments, "")
  end

  def apartments

  end

end
