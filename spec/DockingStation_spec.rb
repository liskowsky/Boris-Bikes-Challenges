#DockingStation_spec.rb
require "docking_station" 
require "spec_helper.rb"
describe DockingStation do
  it "Docking station responds to release bike" do
    expect(DockingStation.respond_to release_bike)
  end

end
