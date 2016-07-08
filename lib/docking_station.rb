require_relative 'bike'

class DockingStation

  attr_reader :bikes
  private :full?, :empty?

  def initialize
    @bikes = []
  end

  def release_bike
    fail "Sorry, there are no bikes" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Sorry, Docking station full" if @bikes.full?
    @bikes << bike
    bike
  end

  def full?
    true if @bikes.count >= 20
  end

  def empty?


  end




end
