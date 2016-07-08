require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "Sorry, there are no bikes" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Sorry, Docking station full" if full?
    @bikes << bike
    bike
  end

private
  def empty?
    @bikes.empty?
  end

private
  def full?
    @bikes.count >= 20
  end

end #end class
