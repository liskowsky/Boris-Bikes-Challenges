require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def release_bike
    fail "Sorry, there are no bikes" unless @bikes
    @bikes
  end

  def dock(bike)
    fail "Sorry, another bike already docked" if @bikes
    @bikes = bike
  end

end
