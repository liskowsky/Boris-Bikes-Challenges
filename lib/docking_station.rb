require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity, :working_bikes, :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "Sorry, there are no bikes" if empty?
    find_working_bike
  end

  def dock(bike)
    fail "Sorry, Docking station full" if full?
    bikes << bike
#    if !bike.broken?
#      working_bikes << bike
#    end
    bike
  end

private

  def empty?
    bikes.empty?
  end

  def full?
    bikes.count >= capacity
  end

  def find_working_bike
    @bikes.each_with_index do |bike, slot|
      if !bike.broken?
        return @bikes.slice!(slot)
      end
    end
    raise "Sorry, there are no working bikes"
  end

end #end class
