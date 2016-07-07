require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "Sorry, there are no bikes" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Sorry, Docking station full" if @bikes.count >= 20
    @bikes << bike
    bike
  end

end
