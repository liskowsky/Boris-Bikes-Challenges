require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

#  it "expects the bike to be working" do
#    bike = Bike.new
#    expect(bike).to be_working
#  end

  it "expects to dock a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "expects to return docked bikes" do
    bike = Bike.new
    expect(subject.bike).to eq [bike]
  end

  it "raises an error when there are no bikes to release" do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end

  it "raises an error when docking station is full" do
    bike = Bike.new
    DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike) }
    expect { subject.dock(bike) }.to raise_error("Docking station full")
  end

  it "sets capacity of docking station to 11" do
    station = DockingStation.new(11)
    expect(station.instance_variable_get(:@capacity)).to eq 11
  end

  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  #it "does not release broken bikes" do
  #  bike = Bike.new
  #  bike.report_broken
  #  subject.dock(bike)

#  end



end
