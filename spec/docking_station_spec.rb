require 'docking_station'
#require 'bike'


describe Docking_station do

#it 'station release_bike' do
#   expect(Docking_station).to respond_to(:release_bike)
  it {is_expected.to respond_to :release_bike}
#it 'station release_bike' do
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  #expect(Docking_station).to :release_bike to (Bike)
  end
end
