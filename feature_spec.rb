require './lib/docking_station'
station = DockingStation.new
bike = Bike.new
station.dock_bike(bike) # should be ok
station.dock_bike(bike) # should return an error
