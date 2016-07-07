require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail "Sorry, there are no bikes" unless @bike
    @bike
  end

  def dock_bike(bike)
    fail "Sorry, another bike already docked" if @bike
    @bike = bike
  end

end
