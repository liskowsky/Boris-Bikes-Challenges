require_relative 'bike'

class DockingStation
<<<<<<< HEAD
=======
  DEFAULT_CAPACITY = 20
>>>>>>> fd78a984ae73b8aa5642baa39c0552dc19d7169a

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
    @bikes.count >= DEFAULT_CAPACITY
  end

end #end class
