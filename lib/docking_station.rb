require_relative 'bike'

class DockingStation

  attr_reader :bikes
  private :full?, :empty?

  def initialize
    @bikes = []
  end

  def release_bike
    fail "Sorry, there are no bikes" if empty?
    @bikes.pop
  end

  def dock(bike)
<<<<<<< HEAD
    fail "Sorry, Docking station full" if @bikes.full?
=======
    fail "Sorry, Docking station full" if full?
>>>>>>> 122e18cbd2857ebbae72eb4e466ace5903bdbcad
    @bikes << bike
    bike
  end

<<<<<<< HEAD
  def full?
    true if @bikes.count >= 20
  end

  def empty?


  end




end
=======
private
  def empty?
    @bikes.empty?
  end

private
  def full?
    @bikes.count >= 20
  end

end #end class
>>>>>>> 122e18cbd2857ebbae72eb4e466ace5903bdbcad
