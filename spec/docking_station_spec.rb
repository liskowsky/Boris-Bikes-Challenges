require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it "expects the bike to be working" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it "expects to dock a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "raises an error when there are no bikes to release" do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end

  it "raises an error when docking station is full" do
    bike = Bike.new
    20.times { subject.dock(bike) }
    expect { subject.dock(bike) }.to raise_error("Docking station full")
  end



end
