require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity, :broken_bikes, :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @broken_bikes = []

  end

  def release_bike
    raise "Sorry, there are no bikes" if empty?
    bikes.pop
  end

  def dock(bike)
    fail "Sorry, Docking station full" if full?
    accept_bike(bike)
  end

private

  def empty?
    bikes.empty?
  end

  def full?
    bikes.count + broken_bikes.count >= capacity
  end

  def accept_bike(bike)
    bike.broken? ? broken_bikes << bike : bikes << bike
  end

  def release_broken_bike
    broken_bikes.pop.flatten
  end

end #end class
